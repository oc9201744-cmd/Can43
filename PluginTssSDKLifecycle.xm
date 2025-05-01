// tweak.xm
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <UIKit/UIKit.h>
#include "dobby.h"

// MARK: - Fake Functions (Chính xác theo header)
// ==============================================

// applicationDidBecomeActive:
static void fake_applicationDidBecomeActive(id self, SEL _cmd, id application) {}

// applicationWillResignActive:
static void fake_applicationWillResignActive(id self, SEL _cmd, id application) {}

// application:didFinishLaunchingWithOptions:
static BOOL fake_didFinishLaunching(id self, SEL _cmd, id application, NSDictionary *launchOptions) {
    return YES; // Khớp với prototype (_Bool)
}

// application:didReceiveRemoteNotification:fetchCompletionHandler:
static void fake_didReceiveNotification(id self, SEL _cmd, id app, id notification, void (^completion)(UIBackgroundFetchResult)) {
    if (completion) completion(UIBackgroundFetchResultNoData); // Xử lý block đúng chuẩn
}

// MARK: - Setup Hooks
// ===================

extern "C" void SetupPluginTssSDKHooks() {
    @autoreleasepool {
        void *symbol = DobbySymbolResolver("anogs", "_OBJC_CLASS_$_PluginTssSDKLifecycle");
        if (!symbol) return;
        
        Class targetClass = (__bridge Class)symbol;
        
        // Hook tất cả phương thức theo header
        const struct {
            SEL selector;
            IMP replacement;
        } methods[] = {
            { @selector(applicationDidBecomeActive:), (IMP)fake_applicationDidBecomeActive },
            { @selector(applicationWillResignActive:), (IMP)fake_applicationWillResignActive },
            { @selector(application:didFinishLaunchingWithOptions:), (IMP)fake_didFinishLaunching },
            { @selector(application:didReceiveRemoteNotification:fetchCompletionHandler:), (IMP)fake_didReceiveNotification }
        };
        
        for (size_t i = 0; i < sizeof(methods)/sizeof(methods[0]); i++) {
    Method m = class_getInstanceMethod(targetClass, methods[i].selector);
    if (m) {
        void *original = (void *)method_getImplementation(m); // Ép kiểu rõ ràng
        void *replacement = (void *)methods[i].replacement;   // Ép kiểu rõ ràng
        DobbyHook(original, replacement, NULL);
    }}}}
