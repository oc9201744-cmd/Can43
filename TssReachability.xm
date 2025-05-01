#include <stdbool.h>
#include <dobby.h>
#include <sys/socket.h>
#include <CoreFoundation/CoreFoundation.h>
#import <SystemConfiguration/SystemConfiguration.h>


// Khai báo các con trỏ hàm gốc
static SCNetworkReachabilityRef (*orig_SCNetworkReachabilityCreateWithAddress)(CFAllocatorRef, const struct sockaddr*);
static SCNetworkReachabilityRef (*orig_SCNetworkReachabilityCreateWithName)(CFAllocatorRef, const char*);
static Boolean (*orig_SCNetworkReachabilityGetFlags)(SCNetworkReachabilityRef, SCNetworkReachabilityFlags*);
static Boolean (*orig_SCNetworkReachabilitySetCallback)(SCNetworkReachabilityRef, SCNetworkReachabilityCallBack, SCNetworkReachabilityContext*);

// Fake implementations
SCNetworkReachabilityRef fake_SCNetworkReachabilityCreateWithAddress(
    CFAllocatorRef allocator, 
    const struct sockaddr *address
) {
    return orig_SCNetworkReachabilityCreateWithAddress(allocator, address);
}

SCNetworkReachabilityRef fake_SCNetworkReachabilityCreateWithName(
    CFAllocatorRef allocator,
    const char *hostname
) {
    return orig_SCNetworkReachabilityCreateWithName(allocator, hostname);
}

Boolean fake_SCNetworkReachabilityGetFlags(
    SCNetworkReachabilityRef target,
    SCNetworkReachabilityFlags *flags
) {
    if (flags) {
        // Set flags thành Reachable + WWAN
        *flags = kSCNetworkReachabilityFlagsReachable | kSCNetworkReachabilityFlagsIsWWAN;
    }
    return true;
}

Boolean fake_SCNetworkReachabilitySetCallback(
    SCNetworkReachabilityRef target,
    SCNetworkReachabilityCallBack callback,
    SCNetworkReachabilityContext *context
) {
    // Gọi callback ngay lập tức với trạng thái online
    if (callback) {
        SCNetworkReachabilityFlags fakeFlags = kSCNetworkReachabilityFlagsReachable;
        callback(target, fakeFlags, NULL);
    }
    return true;
}

__attribute__((constructor)) static void init() {
    // Hook tất cả các hàm cần thiết
    void *symbol;
    
    // Hook _SCNetworkReachabilityCreateWithAddress
    symbol = DobbySymbolResolver("anogs", "_SCNetworkReachabilityCreateWithAddress");
    DobbyHook(symbol, (void *)fake_SCNetworkReachabilityCreateWithAddress, (void **)&orig_SCNetworkReachabilityCreateWithAddress);

    // Hook _SCNetworkReachabilityCreateWithName
    symbol = DobbySymbolResolver("anogs", "_SCNetworkReachabilityCreateWithName");
    DobbyHook(symbol, (void *)fake_SCNetworkReachabilityCreateWithName, (void **)&orig_SCNetworkReachabilityCreateWithName);

    // Hook _SCNetworkReachabilityGetFlags
    symbol = DobbySymbolResolver("anogs", "_SCNetworkReachabilityGetFlags");
    DobbyHook(symbol, (void *)fake_SCNetworkReachabilityGetFlags, (void **)&orig_SCNetworkReachabilityGetFlags);

    // Hook _SCNetworkReachabilitySetCallback
    symbol = DobbySymbolResolver("anogs", "_SCNetworkReachabilitySetCallback");
    DobbyHook(symbol, (void *)fake_SCNetworkReachabilitySetCallback, (void **)&orig_SCNetworkReachabilitySetCallback);
}