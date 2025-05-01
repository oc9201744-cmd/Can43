//
//  ITSPUBGMENUTests.m
//  ITSPUBGMENUTests
//
//  Created by Saudgl on 3/22/23.
//
#import "ITSVIEW.h"
#import "menuButtonConfig.h"
#import "SLConfig.h"
#include "obfuscate.h"
#define kWidth  [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height
@interface ITSVIEW()
@property (nonatomic,  weak) NSTimer *timer;
@end
extern bool isAimvisual;
extern bool AR_language;
extern bool DrawPlayerLine;
UIButton *closeButton;
UIView * MainMnue;
UIView* Espview;
UIView* NoScopView;
UIView* AimbotView;
UIView* MemoryView;
UIView* Settingview;
UIButton *Munu1;
UIButton *Munu2;
UIButton *Munu3;
UIButton *Munu4;
UIButton *Munu5;//item profile
UIButton *Munu6;//aimbot profile
UIButton *Munu7;//open setting in browser
UIButton *Munu8;// v downlaod settings
UIButton *back;
UIButton *Exet;
UIButton *FIRE;
// esp
UILabel *EspLabel[10];
UIButton *EspButton[10];
UISlider * EspSliders[8];
UILabel *EspLabelSlider[14];
UILabel *AimLabel[7];
UISlider *AimSlidr[4];
float FovRadousVal = AimSlidr[0].value;
UILabel *name;
UIButton *nameBTN;
UILabel *box;
UIButton *boxBTN;
UILabel *Bone;
UIButton *BoneBTN;
UILabel *Wepaon;
UIButton *WepaonBTN;
UILabel *dis;
UIButton *disBTN;
UILabel *health;
UIButton *healthBTN;
UILabel *Arrow;
UIButton *ArrowBTN;
extern bool IsAirDrop;
extern int iAwareTexSiz;
extern bool iAwareText;
extern int EspTextSiz;
extern float EspBoxThik;
extern float EspSktonThik;
//no scope aimbot
UILabel *AutFirBuSizLabel1;
UILabel *AutFirBuSizLabel2;
UISlider *AutFirBuSiz;
//matreal esp
UILabel *AR;//Not active for button
UIButton *ARBTN;//Not active for button
UILabel *SMG;//Not active for button
UIButton *SMGBTN;//Not active for button
UILabel *Sniper;
UIButton *SniperBTN;
UILabel *Ammo;//Not active for button
UIButton *AmmoBTN;//Not active for button
UILabel *Other;
UIButton *OtherBTN;
UILabel *Vheicle;
UIButton *VheicleBTN;
UILabel *Vheiclebox;
UIButton *VheicleboxBTN;
UILabel *DrawLinwLabel;
UIButton *DrawLineBTN;
UILabel *Lootbox;
UIButton *LootboxBTN;
UILabel *GrendeWarring;
UIButton *GrendeWarringBTN;
//No scope aimbot
UILabel *NoScoLable[8];
UIButton * NoScoButt[2];
UISlider *NoScopSlider[3];
float TurnRate = NoScopSlider[0].value;
extern int Interval;
//Aimbot
UILabel *AimAssis;
UIButton *AimAssisBTN;
UILabel *IgroneBot;
UIButton *IgroneBotBTN;
UILabel *IgorneKnock;
UIButton *IgorneKnockBTN;
UILabel *IgoroneVis;
UIButton *IgoroneVisBTN;
UILabel *Aimfov;
UIButton *AimfovBTN;
UILabel *HiddenAimfov;
UIButton *HiddenAimfovBTN;
UILabel *FOV;
UISlider *FOVSLIDER;
UILabel *foVLAB;
UILabel *HeadShootLab;
UIButton *Head;
UILabel *ChestShootLab;
UIButton *Chest;
UILabel *AutofireLab;
UIButton *AutofireBTN;
UILabel *RootShootLab;
UIButton *Root;
UILabel *AUTOFIRESLiderLab;
UILabel *AUTOFIRE_SLiderLabInterval;
UISlider *AUTOFIRESLider;
UILabel *AUTOLab;
UILabel *AUTOLabInterval;
UISlider *HiddenFOV;
UISlider *TurnRateSlider;
UILabel *AimLabl[4];
UILabel *TurnRat[2];
//UIButton *AimBtn[2];
float HiddenFOVSliderVal;
float AimTurnRateSlidVal =  TurnRateSlider.value;
float NoScopeAimDisSliderVal = NoScopSlider[1].value;
float NoScopeFOVSliderVal = NoScopSlider[2].value;
//settings "Other"
UIButton *ar;
UIButton *en;
UILabel *lang;
UILabel *ResetGusetLab;
UILabel *BunnyHup;
UIButton *ResetGuset;
UIButton *BunnyHupButton;
extern bool IsAutofire ;
extern bool  IsNorecoil ;
extern bool  IsHitXPL ;
extern bool  INTAHIT;
extern bool  IsNOcameras ;
extern bool IsFastBullet;
extern bool IsCrossHair;
extern bool  ipadview;
extern bool  Igronebot;
extern bool  IsbulletTrack;
extern bool  IsShoot;
extern bool  IsSCope;
extern bool  IsBothaim;
extern bool  IsAny;
extern bool  IsAimbot ;
extern bool  IsAimbotFov ;
extern bool  IsAimbotDis ;
extern bool  IsAimHead ;
extern bool  IsAimNeck ;
extern bool  IsAimRoot ;
extern bool  IsBone ;
extern bool  IsJump ;
extern bool  IsPlayerWEP ;
extern bool AUOTJUMPAN;
extern bool  IsFastshoot ;
extern bool  IsFastDrop ;
extern bool  IsNocamerashake ;
extern bool  IsVehcleEsp ;
extern bool  IsWarring ;
extern bool  Is3Dbox ;
extern bool  IsPLayerName ;
extern bool  IsPlayerHP ;
extern bool  IsFastKnock ;
extern bool  IsFastswim ;
extern bool  IsVehcle ;
extern bool  IsboxVechle ;
extern bool  IsCarHP ;
extern bool  IsCarFuel ;
extern bool  IsPostil ;
extern bool  IsSniper ;
extern bool  IsWeapon ;
extern bool  IsAmmo ;
extern bool  IsFov ;
extern bool IsSMG;
extern bool iSPLAYERDIS;
extern bool isAimKnocked;
extern bool IsAR;
extern bool IsShotgun;
extern bool IsGRWAR;
extern bool IsLootBox;
extern bool IsPlayerSP;
extern bool IsSilentAIM;
extern bool GODVIEWUUP;
extern bool GODVIEWFRONT;
extern bool GODVIEWLEFT;
extern bool ARWP ;
extern bool SMGWP ;
extern bool SNPWP ;
extern bool otherWP ;
extern bool AmmoWP ;
extern bool LIGHTMW ;
extern bool SHOTGUNWP ;
extern bool scopewp ;
extern bool POSTOLWP ;
extern bool ARMORWP ;
extern bool  AIMHEAD1 ;
extern bool  AIMNeck1 ;
extern bool  AIMcheat1 ;
extern bool  IsFastKnock ;//微加速

extern bool bonn;
extern UISlider * Auto1;//autofire
extern UISlider * Auto1Interval;//autofire
extern UISlider * sliderrr;//aimpos
extern UISlider * Aimbot1;//fov
extern UISlider * aimspeed;//aimbot
extern CGSize AutoFireCircelSize;// CGSizeMake(w, h);
static ITSVIEW *extraInfo;
int MenuLocation; // main = 1 / second 2 / ...etc
CGPoint exitButLocation;
int YPostions = 20; // for frame size between labels in menu
UIColor *Green = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
UIColor *Red = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
@implementation ITSVIEW
NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];//for save defaults setting
//-(void)loadDefaults{}
+ (void)load
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
     
            extraInfo =  [ITSVIEW new];
            [extraInfo menuITS];// 菜单
            [defaults synchronize];
            [extraInfo loadDefaults];
    });
}
UIWindow *mainWindow;
- (void)menuITS{//main menu load
    mainWindow = [UIApplication sharedApplication].keyWindow;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 2;//Tap times
    tap.numberOfTouchesRequired = 3;//touch times
    [[UIApplication sharedApplication].windows[0].rootViewController.view addGestureRecognizer:tap];
    [tap addTarget:self action:@selector(openMenu)];
    MenuLocation = 0; //main menu location
#pragma main menu
    MainMnue = [[UIView alloc ] initWithFrame:CGRectMake(0, 0, 350, 258)];
    MainMnue.center = mainWindow.center;
    MainMnue.backgroundColor = [UIColor colorWithRed: 0.00 green: 0.00 blue: 0.00 alpha: 0.80];// main menu box color
    MainMnue.hidden =YES;
    [mainWindow addSubview:MainMnue];
    //slider image resized to fit slider
    NSData *LineData_ = [[NSData alloc] initWithBase64EncodedString:Line options:0];
    NSString *SLBase64 = Line;
    NSData* SLdata = [[NSData alloc] initWithBase64EncodedString:SLBase64 options:0];
    UIImage* SLImage = [UIImage imageWithData:SLdata];
    CGSize s1 = CGSizeMake(10, 19);
    UIGraphicsBeginImageContextWithOptions(s1, NO, 0.0);
    [SLImage drawInRect:CGRectMake(0, 0, s1.width, s1.height)];
    UIImage *SliderImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    //-
#pragma ESP menu
    // Esp menu
    Munu1 = [[UIButton alloc]init];
    Munu1.frame = CGRectMake(0, 42, 200, 21);//0
    [Munu1 setTitle:@"Esp" forState:UIControlStateNormal];
    Munu1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    Munu1.hidden = NO;
    [Munu1 setTitleColor:[UIColor whiteColor]forState:UIControlStateNormal];
    [Munu1 addTarget:self action:@selector(Munu1:) forControlEvents:UIControlEventTouchUpInside];
    Munu1.titleLabel.font =  [UIFont fontWithName:@"" size:13];//Rockwell Bold
    [MainMnue addSubview:Munu1];
    Espview = [[UIView alloc ] initWithFrame:CGRectMake(0, 0, 350, 378)];
    Espview.backgroundColor = [UIColor clearColor];
    Espview.userInteractionEnabled = YES;
    Espview.clipsToBounds = YES;
    Espview.hidden = YES;
    Espview.layer.borderColor = [UIColor colorWithRed: 0.00 green: 0.00 blue: 0.00 alpha: 1].CGColor;
    [MainMnue addSubview:Espview];
    //for obj pos size
    /*
     int yPOS[19];
     int IncrementCounter = 0;
     for(int i =0 ; i< 19;i++){
     yPOS[i] = IncrementCounter;
     IncrementCounter +=19;
     }*/
    //Enemy Esp pos 0 /frist item on menu
    EspLabel[0] = [[UILabel alloc]init];
    //EspLabel[0].font =  [UIFont fontWithName:@"Rockwell Bold" size:5];
    EspLabel[0].frame = CGRectMake(5, 0, 350, 20);
    EspLabel[0].text = @"Enemy Esp";
    EspLabel[0].textColor = UIColor.whiteColor;
    EspLabel[0].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabel[0]];
    EspButton[0] = [[UIButton alloc]init];
    EspButton[0].frame = CGRectMake(315, 0, 35, 20);
    EspButton[0].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [EspButton[0] setTitle:@"OFF" forState:UIControlStateNormal];
    [EspButton[0] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [EspButton[0] addTarget:self action:@selector(EnemyEsp:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:EspButton[0]];
    //Enemy Esp Weapon pos 21 ------------------
    Wepaon = [[UILabel alloc]init];
    Wepaon.frame = CGRectMake(5, YPostions*1, 350, 20);
    Wepaon.text = [NSString stringWithCString:OBFUSCATE("Enemy Esp Weapon") encoding:[NSString defaultCStringEncoding]];
    //[NSString stringWithCString:OBFUSCATE("Enemy Esp Weapon") encoding:[NSString defaultCStringEncoding]]
    Wepaon.textColor = UIColor.whiteColor;
    Wepaon.textAlignment = NSTextAlignmentLeft;
    [Wepaon sizeToFit];
    [Espview addSubview:Wepaon];
    WepaonBTN = [[UIButton alloc]init];
    WepaonBTN.frame = CGRectMake(315, YPostions*1, 35, 20);
    WepaonBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [WepaonBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [WepaonBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [WepaonBTN addTarget:self action:@selector(WepaonBTN:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:WepaonBTN];
    //Weapon only if sniper pos 42
    Sniper = [[UILabel alloc]init];
    Sniper.frame = CGRectMake(5, YPostions*2, 350, 20);
    Sniper.text = @"Weapon only if sniper";
    Sniper.textColor = UIColor.whiteColor;
    Sniper.textAlignment = NSTextAlignmentLeft;
    [Sniper sizeToFit];
    [Espview addSubview:Sniper];
    SniperBTN = [[UIButton alloc]init];
    SniperBTN.frame = CGRectMake(315, YPostions*2, 35, 20);
    SniperBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [SniperBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [SniperBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [SniperBTN addTarget:self action:@selector(SniperBTN:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:SniperBTN];
    //iAwareness text pos 63---------------------
    EspLabel[1] = [[UILabel alloc]init];
    EspLabel[1].frame = CGRectMake(5, YPostions*3, 350, 20);
    EspLabel[1].text = @"Awareness text";
    EspLabel[1].textColor = UIColor.whiteColor;
    EspLabel[1].textAlignment = NSTextAlignmentLeft;
    [EspLabel[1] sizeToFit];
    [Espview addSubview:EspLabel[1]];
    EspButton[1] = [[UIButton alloc]init];
    EspButton[1].frame = CGRectMake(315, YPostions*3, 35, 20);
    EspButton[1].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [EspButton[1] setTitle:@"OFF" forState:UIControlStateNormal];
    [EspButton[1] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [EspButton[1] addTarget:self action:@selector(iAwareText:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:EspButton[1]];
    //iAwareness text size pos 84 // slider
    //EspLabelSlider[0] = [[UILabel alloc]init];
    //EspLabelSlider[0].frame = CGRectMake(5, YPostions*4, 350, 20);
    //EspLabelSlider[0].text = @"iAwareness text size ";
    //EspLabelSlider[0].textColor = UIColor.whiteColor;
    //EspLabelSlider[0].textAlignment = NSTextAlignmentLeft;
    //[Espview addSubview:EspLabelSlider[0]];
    EspLabelSlider[1] = [[UILabel alloc]init];
    EspLabelSlider[1].frame = CGRectMake(314, YPostions*4, 150, 20);
    EspLabelSlider[1].text = @"20.00";
    EspLabelSlider[1].textColor = UIColor.whiteColor;
    EspLabelSlider[1].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    EspLabelSlider[1].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabelSlider[1]];
    EspSliders[0] = [[UISlider alloc]init];
    EspSliders[0].frame = CGRectMake(5, YPostions*4, 350, 20);
    EspSliders[0].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    EspSliders[0].layer.borderWidth = 1;
    EspSliders[0].maximumTrackTintColor = [UIColor clearColor];
    [EspSliders[0] setThumbImage:SliderImage forState:UIControlStateNormal];
    EspSliders[0].minimumTrackTintColor = [UIColor clearColor];
    EspSliders[0].minimumValue = 1;
    EspSliders[0].maximumValue = 50;//10
    EspSliders[0].value = 20;
    EspSliders[0].continuous = YES;
    [EspSliders[0] addTarget:self action:@selector(iAwareTexSiz:) forControlEvents:UIControlEventValueChanged];
    [Espview addSubview:EspSliders[0]];
    //iAwareness arrows pos 105
    Arrow = [[UILabel alloc]init];
    Arrow.frame = CGRectMake(5, YPostions*5, 350, 20);
    Arrow.text = @"iAwareness arrows";
    Arrow.textColor = UIColor.whiteColor;
    Arrow.textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:Arrow];
    ArrowBTN = [[UIButton alloc]init];
    ArrowBTN.frame = CGRectMake(315, YPostions*5, 35, 20);
    ArrowBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [ArrowBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [ArrowBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ArrowBTN addTarget:self action:@selector(ArrowBTN:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:ArrowBTN];
    //iAwareness arrow scale // slider pos 126
    EspLabelSlider[2] = [[UILabel alloc]init];
    EspLabelSlider[2].frame = CGRectMake(5, YPostions*6, 350, 20);
    EspLabelSlider[2].text = @"iAwareness arrow scale";
    EspLabelSlider[2].textColor = UIColor.whiteColor;
    EspLabelSlider[2].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabelSlider[2]];
    EspLabelSlider[3] = [[UILabel alloc]init];
    EspLabelSlider[3].frame = CGRectMake(314, YPostions*6, 150, 20);
    EspLabelSlider[3].text = @"10.00";
    EspLabelSlider[3].textColor = UIColor.whiteColor;
    EspLabelSlider[3].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    EspLabelSlider[3].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabelSlider[3]];
    EspSliders[1] = [[UISlider alloc]init];
    EspSliders[1].frame = CGRectMake(5, YPostions*6, 350, 20);
    EspSliders[1].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    EspSliders[1].layer.borderWidth = 1;
    EspSliders[1].maximumTrackTintColor = [UIColor clearColor];
    [EspSliders[1] setThumbImage:SliderImage forState:UIControlStateNormal];
    EspSliders[1].minimumTrackTintColor = [UIColor clearColor];
    EspSliders[1].minimumValue = 1;
    EspSliders[1].maximumValue = 100;
    EspSliders[1].value = 10;
    EspSliders[1].continuous = YES;
    [EspSliders[1] addTarget:self action:@selector(iAwareArrScale:) forControlEvents:UIControlEventValueChanged];
    [Espview addSubview:EspSliders[1]];
    //iAwareness arrow margin //slider  pos 147
    EspLabelSlider[4] = [[UILabel alloc]init];
    EspLabelSlider[4].frame = CGRectMake(5, YPostions*7, 350, 20);
    EspLabelSlider[4].text = @"iAwareness arrow margin";
    EspLabelSlider[4].textColor = UIColor.whiteColor;
    EspLabelSlider[4].textAlignment = NSTextAlignmentLeft;
    [EspLabelSlider[4] sizeToFit];
    [Espview addSubview:EspLabelSlider[4]];
    EspLabelSlider[5] = [[UILabel alloc]init];
    EspLabelSlider[5].frame = CGRectMake(314, YPostions*7, 350, 20);
    EspLabelSlider[5].text = @"10.00";
    EspLabelSlider[5].textColor = UIColor.whiteColor;
    EspLabelSlider[5].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    EspLabelSlider[5].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabelSlider[5]];
    EspSliders[2] = [[UISlider alloc]init];
    EspSliders[2].frame = CGRectMake(5, YPostions*7, 350, 20);
    EspSliders[2].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    EspSliders[2].layer.borderWidth = 1;
    EspSliders[2].maximumTrackTintColor = [UIColor clearColor];
    [EspSliders[2] setThumbImage:SliderImage forState:UIControlStateNormal];
    EspSliders[2].minimumTrackTintColor = [UIColor clearColor];
    EspSliders[2].minimumValue = 1;
    EspSliders[2].maximumValue = 100;
    EspSliders[2].value = 10;
    EspSliders[2].continuous = YES;
    [EspSliders[2] addTarget:self action:@selector(iAwareArrMarg:) forControlEvents:UIControlEventValueChanged];
    [Espview addSubview:EspSliders[2]];
    //Item ESP 168
    EspLabel[2] = [[UILabel alloc]init];
    EspLabel[2].frame = CGRectMake(5, YPostions*8, 350, 20);
    EspLabel[2].text = @"Item ESP";
    EspLabel[2].textColor = UIColor.whiteColor;
    EspLabel[2].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabel[2]];
    EspButton[2] = [[UIButton alloc]init];
    EspButton[2].frame = CGRectMake(315, YPostions*8, 35, 20);
    EspButton[2].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [EspButton[2] setTitle:@"OFF" forState:UIControlStateNormal];
    [EspButton[2] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [EspButton[2] addTarget:self action:@selector(IteamESP:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:EspButton[2]];
    DrawLinwLabel = [[UILabel alloc]init];
    DrawLinwLabel.frame = CGRectMake(5, YPostions*9, 350, 20);
    DrawLinwLabel.text = @"Draw Lines";
    DrawLinwLabel.textColor = UIColor.whiteColor;
    DrawLinwLabel.textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:DrawLinwLabel];
    DrawLineBTN = [[UIButton alloc]init];
    DrawLineBTN.frame = CGRectMake(315, YPostions*9, 35, 20);
    DrawLineBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [DrawLineBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [DrawLineBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [DrawLineBTN addTarget:self action:@selector(DrawLineEspEevent:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:DrawLineBTN];
    //Vechcle ESP - show car and car boxs pos 210
    Vheiclebox = [[UILabel alloc]init];
    Vheiclebox.frame = CGRectMake(5, YPostions*10, 350, 20);
    Vheiclebox.text = @"Vechcle ESP";
    Vheiclebox.textColor = UIColor.whiteColor;
    Vheiclebox.textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:Vheiclebox];
    VheicleboxBTN = [[UIButton alloc]init];
    VheicleboxBTN.frame = CGRectMake(315, YPostions*10, 35, 20);
    VheicleboxBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [VheicleboxBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [VheicleboxBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [VheicleboxBTN addTarget:self action:@selector(VheicleboxBTN:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:VheicleboxBTN];
    //Airdrop ESP pos 231
    EspLabel[3] = [[UILabel alloc]init];
    EspLabel[3].frame = CGRectMake(5, YPostions*11, 350, 20);
    EspLabel[3].text = @"Airdrop ESP";
    EspLabel[3].textColor = UIColor.whiteColor;
    EspLabel[3].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabel[3]];
    EspButton[3] = [[UIButton alloc]init];
    EspButton[3].frame = CGRectMake(315, YPostions*11, 35, 20);
    EspButton[3].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [EspButton[3] setTitle:@"OFF" forState:UIControlStateNormal];
    [EspButton[3] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [EspButton[3] addTarget:self action:@selector(AirDroESP:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:EspButton[3]];
    //TombBox ESP pos 252
    Lootbox = [[UILabel alloc]init];
    Lootbox.frame = CGRectMake(5, YPostions*12, 350, 20);
    Lootbox.text = @"TombBox ESP";
    Lootbox.textColor = UIColor.whiteColor;
    Lootbox.textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:Lootbox];
    LootboxBTN = [[UIButton alloc]init];
    LootboxBTN.frame = CGRectMake(315, YPostions*12, 35, 20);
    LootboxBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [LootboxBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [LootboxBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [LootboxBTN addTarget:self action:@selector(LootboxBTN:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:LootboxBTN];
    //Grenade ESP pos 273
    GrendeWarring = [[UILabel alloc]init];
    GrendeWarring.frame = CGRectMake(5, YPostions*13, 350, 20);
    GrendeWarring.text = @"Grenade ESP";
    GrendeWarring.textColor = UIColor.whiteColor;
    GrendeWarring.textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:GrendeWarring];
    GrendeWarringBTN = [[UIButton alloc]init];
    GrendeWarringBTN.frame = CGRectMake(315, YPostions*13, 35, 20);
    GrendeWarringBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [GrendeWarringBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [GrendeWarringBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [GrendeWarringBTN addTarget:self action:@selector(GrendeWarringBTN:) forControlEvents:UIControlEventTouchUpInside];
    [Espview addSubview:GrendeWarringBTN];
    //ESP text size 294 - slider
    EspLabelSlider[8] = [[UILabel alloc]init];
    EspLabelSlider[8].frame = CGRectMake(5,YPostions*14, 350, 20);
    EspLabelSlider[8].text = @"ESP text size";
    EspLabelSlider[8].textColor = UIColor.whiteColor;
    EspLabelSlider[8].textAlignment = NSTextAlignmentLeft;
    //[EspLabelSlider[8] sizeToFit];
    [Espview addSubview:EspLabelSlider[8]];
    EspLabelSlider[9] = [[UILabel alloc]init];
    EspLabelSlider[9].frame = CGRectMake(314, YPostions*14, 150, 20);
    EspLabelSlider[9].text = @"5.00";
    EspLabelSlider[9].textColor = UIColor.whiteColor;
    EspLabelSlider[9].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    EspLabelSlider[9].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabelSlider[9]];
    EspSliders[4] = [[UISlider alloc]init];
    EspSliders[4].frame = CGRectMake(5, YPostions*14, 350, 20);
    EspSliders[4].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    EspSliders[4].layer.borderWidth = 1;
    EspSliders[4].maximumTrackTintColor = [UIColor clearColor];
    [EspSliders[4] setThumbImage:SliderImage forState:UIControlStateNormal];
    EspSliders[4].minimumTrackTintColor = [UIColor clearColor];
    EspSliders[4].minimumValue = 1;
    EspSliders[4].maximumValue = 30;
    EspSliders[4].value = 5;
    EspSliders[4].continuous = YES;
    [EspSliders[4] addTarget:self action:@selector(EspTextSiz:) forControlEvents:UIControlEventValueChanged];
    [Espview addSubview:EspSliders[4]];
    //ESP box thickness pos 315 - slider
    EspLabelSlider[10] = [[UILabel alloc]init];
    EspLabelSlider[10].frame = CGRectMake(5,YPostions*15, 350, 20);
    EspLabelSlider[10].text = @"ESP box thickness";
    EspLabelSlider[10].textColor = UIColor.whiteColor;
    EspLabelSlider[10].textAlignment = NSTextAlignmentLeft;
    //[EspLabelSlider[10] sizeToFit];
    [Espview addSubview:EspLabelSlider[10]];
    EspLabelSlider[11] = [[UILabel alloc]init];
    EspLabelSlider[11].frame = CGRectMake(314, YPostions*15, 150, 20);
    EspLabelSlider[11].text = @"1.5";
    EspLabelSlider[11].textColor = UIColor.whiteColor;
    EspLabelSlider[11].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    EspLabelSlider[11].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabelSlider[11]];
    EspSliders[5] = [[UISlider alloc]init];
    EspSliders[5].frame = CGRectMake(5, YPostions*15, 350, 20);
    EspSliders[5].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    EspSliders[5].layer.borderWidth = 1;
    EspSliders[5].maximumTrackTintColor = [UIColor clearColor];
    [EspSliders[5] setThumbImage:SliderImage forState:UIControlStateNormal];
    EspSliders[5].minimumTrackTintColor = [UIColor clearColor];
    EspSliders[5].minimumValue = 0.5f;
    EspSliders[5].maximumValue = 7.0f;
    EspSliders[5].value = 1.5f;
    EspSliders[5].continuous = YES;
    [EspSliders[5] addTarget:self action:@selector(EspBoxThik:) forControlEvents:UIControlEventValueChanged];
    [Espview addSubview:EspSliders[5]];
    //ESP skeleton thickness pos 336 - slider
    EspLabelSlider[12] = [[UILabel alloc]init];
    EspLabelSlider[12].frame = CGRectMake(5,YPostions*16, 350, 20);
    EspLabelSlider[12].text = @"ESP skeleton thickness";
    EspLabelSlider[12].textColor = UIColor.whiteColor;
    EspLabelSlider[12].textAlignment = NSTextAlignmentLeft;
    //[EspLabelSlider[12] sizeToFit];
    [Espview addSubview:EspLabelSlider[12]];
    EspLabelSlider[13] = [[UILabel alloc]init];
    EspLabelSlider[13].frame = CGRectMake(314, YPostions*16, 150, 20);
    EspLabelSlider[13].text = @"1.5";
    EspLabelSlider[13].textColor = UIColor.whiteColor;
    EspLabelSlider[13].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    EspLabelSlider[13].textAlignment = NSTextAlignmentLeft;
    [Espview addSubview:EspLabelSlider[13]];
    EspSliders[6] = [[UISlider alloc]init];
    EspSliders[6].frame = CGRectMake(5, YPostions*16, 350, 20);
    EspSliders[6].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    EspSliders[6].layer.borderWidth = 1;
    EspSliders[6].maximumTrackTintColor = [UIColor clearColor];
    [EspSliders[6] setThumbImage:SliderImage forState:UIControlStateNormal];
    EspSliders[6].minimumTrackTintColor = [UIColor clearColor];
    EspSliders[6].minimumValue = 0.5f;
    EspSliders[6].maximumValue = 7.0f;
    EspSliders[6].value = 1.5f;
    EspSliders[6].continuous = YES;
    [EspSliders[6] addTarget:self action:@selector(EspSktonThik:) forControlEvents:UIControlEventValueChanged];
    [Espview addSubview:EspSliders[6]];
#pragma Aimbot
    int Y_aim_pos = 0;
    Munu3 = [[UIButton alloc]init];
    Munu3.frame = CGRectMake(0, 0, 350, 21);//42
    [Munu3 setTitle:[NSString stringWithCString:OBFUSCATE("Aimbot") encoding:[NSString defaultCStringEncoding]] forState:UIControlStateNormal];
    //[NSString stringWithCString:OBFUSCATE("Aimbot") encoding:[NSString defaultCStringEncoding]]
    Munu3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    Munu3.hidden = NO;
    [Munu3 setTitleColor:[UIColor whiteColor]forState:UIControlStateNormal];
    [Munu3 addTarget:self action:@selector(Munu3:) forControlEvents:UIControlEventTouchUpInside];
    Munu3.titleLabel.font =  [UIFont fontWithName:@"" size:11];
    [MainMnue addSubview:Munu3];
    AimbotView = [[UIView alloc ] initWithFrame:CGRectMake(0, 3, 350, 272)];//x,y,w,h
    AimbotView.backgroundColor = [UIColor clearColor];
    AimbotView.userInteractionEnabled = YES;
    AimbotView.clipsToBounds = YES;
    AimbotView.hidden = YES;
    AimbotView.layer.borderColor = [UIColor colorWithRed: 0.00 green: 0.00 blue: 0.00 alpha: 1].CGColor;
    [MainMnue addSubview:AimbotView];
    // Aim assist work only when open scop , start aiming to enemy
    AimAssis = [[UILabel alloc]init];
    AimAssis.frame = CGRectMake(5, 0, 350, 20);
    AimAssis.text = @"Aim Assist";
    AimAssis.textColor = UIColor.whiteColor;
    AimAssis.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:AimAssis];
    AimAssisBTN = [[UIButton alloc]init];
    AimAssisBTN.frame = CGRectMake(315, 0, 35, 20);
    AimAssisBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [AimAssisBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [AimAssisBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [AimAssisBTN addTarget:self action:@selector(AimAssisBTN:) forControlEvents:UIControlEventTouchUpInside];
    [AimbotView addSubview:AimAssisBTN];
    IgroneBot = [[UILabel alloc]init];
    IgroneBot.frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);
    IgroneBot.text = @"Ignore bots";
    IgroneBot.textColor = UIColor.whiteColor;
    IgroneBot.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:IgroneBot];
    IgroneBotBTN = [[UIButton alloc]init];
    IgroneBotBTN.frame = CGRectMake(315, Y_aim_pos , 35, 20);
    IgroneBotBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [IgroneBotBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [IgroneBotBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [IgroneBotBTN addTarget:self action:@selector(IgroneBotBTN:) forControlEvents:UIControlEventTouchUpInside];
    [AimbotView addSubview:IgroneBotBTN];
    //----
    IgoroneVis = [[UILabel alloc]init];
    IgoroneVis.frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);//5, 42, 150, 20
    IgoroneVis.text = @"Traget non-visible";
    IgoroneVis.textColor = UIColor.whiteColor;
    IgoroneVis.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:IgoroneVis];
    IgoroneVisBTN = [[UIButton alloc]init];
    IgoroneVisBTN.frame = CGRectMake(315, Y_aim_pos , 35, 20);//315, 42, 35, 20
    IgoroneVisBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [IgoroneVisBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [IgoroneVisBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [IgoroneVisBTN addTarget:self action:@selector(IgoroneVisBTN:) forControlEvents:UIControlEventTouchUpInside];
    [AimbotView addSubview:IgoroneVisBTN];
    //----
    IgorneKnock = [[UILabel alloc]init];
    IgorneKnock.frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);//5, 63, 150, 20
    IgorneKnock.text = @"Target Knocked dwon";
    IgorneKnock.textColor = UIColor.whiteColor;
    IgorneKnock.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:IgorneKnock];
    IgorneKnockBTN = [[UIButton alloc]init];
    IgorneKnockBTN.frame = CGRectMake(315, Y_aim_pos, 35, 20);//315, 63, 35, 20
    IgorneKnockBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [IgorneKnockBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [IgorneKnockBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [IgorneKnockBTN addTarget:self action:@selector(IgorneKnockBTN:) forControlEvents:UIControlEventTouchUpInside];
    [AimbotView addSubview:IgorneKnockBTN];
    TurnRat[0] = [[UILabel alloc]init];
    TurnRat[0].frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);
    TurnRat[0].text = @"Turn rate";
    TurnRat[0].textColor = UIColor.whiteColor;
    TurnRat[0].textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:TurnRat[0]];
    TurnRat[1] = [[UILabel alloc]init];
    TurnRat[1].frame = CGRectMake(314, Y_aim_pos, 150, 20);
    TurnRat[1].text = @"230.00";
    TurnRat[1].textColor = UIColor.whiteColor;
    TurnRat[1].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    TurnRat[1].textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:TurnRat[1]];
    TurnRateSlider = [[UISlider alloc]init];
    TurnRateSlider.frame = CGRectMake(5, Y_aim_pos, 350, 20);
    TurnRateSlider.layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    TurnRateSlider.layer.borderWidth = 1;
    TurnRateSlider.maximumTrackTintColor = [UIColor clearColor];
    [TurnRateSlider setThumbImage:SliderImage forState:UIControlStateNormal];
    TurnRateSlider.minimumTrackTintColor = [UIColor clearColor];
    TurnRateSlider.minimumValue = 25;
    TurnRateSlider.maximumValue = 1000;//10
    TurnRateSlider.value = 230;
    TurnRateSlider.continuous = YES;
    [TurnRateSlider addTarget:self action:@selector(AimTurnRate:) forControlEvents:UIControlEventValueChanged];
    [AimbotView addSubview:TurnRateSlider];
    Aimfov = [[UILabel alloc]init];
    Aimfov.frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);
    Aimfov.text = @"Aimbot circle";
    Aimfov.textColor = UIColor.whiteColor;
    Aimfov.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:Aimfov];
    AimfovBTN = [[UIButton alloc]init];
    AimfovBTN.frame = CGRectMake(315, Y_aim_pos, 35, 20);
    AimfovBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [AimfovBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [AimfovBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [AimfovBTN addTarget:self action:@selector(AimfovNoDraw:) forControlEvents:UIControlEventTouchUpInside];
    [AimbotView addSubview:AimfovBTN];
    HiddenAimfov = [[UILabel alloc]init];
    HiddenAimfov.frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);
    HiddenAimfov.text = @"Draw aimbot circle";
    HiddenAimfov.textColor = UIColor.whiteColor;
    HiddenAimfov.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:HiddenAimfov];
    HiddenAimfovBTN = [[UIButton alloc]init];
    HiddenAimfovBTN.frame = CGRectMake(315, Y_aim_pos , 35, 20);
    HiddenAimfovBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [HiddenAimfovBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [HiddenAimfovBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [HiddenAimfovBTN addTarget:self action:@selector(AimfovWithDraw:) forControlEvents:UIControlEventTouchUpInside];// MUST Change selector distantion
    [AimbotView addSubview:HiddenAimfovBTN];
    //Aimbot circle radius slider
    AimLabel[0] = [[UILabel alloc]init];
    AimLabel[0].frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);
    AimLabel[0].text = @"Aimbot circle radius";
    AimLabel[0].textColor = UIColor.whiteColor;
    AimLabel[0].textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:AimLabel[0]];
    AimLabel[1] = [[UILabel alloc]init];
    AimLabel[1].frame = CGRectMake(314, Y_aim_pos , 150, 20);
    AimLabel[1].text = @"230.00";
    AimLabel[1].textColor = UIColor.whiteColor;
    AimLabel[1].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    AimLabel[1].textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:AimLabel[1]];
    AimSlidr[0] = [[UISlider alloc]init];
    AimSlidr[0].frame = CGRectMake(5, Y_aim_pos , 350, 20);
    AimSlidr[0].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    AimSlidr[0].layer.borderWidth = 1;
    AimSlidr[0].maximumTrackTintColor = [UIColor clearColor];
    [AimSlidr[0] setThumbImage:SliderImage forState:UIControlStateNormal];
    AimSlidr[0].minimumTrackTintColor = [UIColor clearColor];
    AimSlidr[0].minimumValue = 25;
    AimSlidr[0].maximumValue = 1000;//10
    AimSlidr[0].value = 230;
    AimSlidr[0].continuous = YES;
    [AimSlidr[0] addTarget:self action:@selector(InfoSizeValue:) forControlEvents:UIControlEventValueChanged];
    [AimbotView addSubview:AimSlidr[0]];
    // Head Shoot chance
    AimLabel[2] = [[UILabel alloc]init];
    AimLabel[2].frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);
    AimLabel[2].text = @" Head Shoot chance";
    AimLabel[2].textColor = UIColor.whiteColor;
    AimLabel[2].textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:AimLabel[2]];
    AimLabel[3] = [[UILabel alloc]init];
    AimLabel[3].frame = CGRectMake(314, Y_aim_pos , 150, 20);
    AimLabel[3].text = @"50";
    AimLabel[3].textColor = UIColor.whiteColor;
    AimLabel[3].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    AimLabel[3].textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:AimLabel[3]];
    AimSlidr[1] = [[UISlider alloc]init];
    AimSlidr[1].frame = CGRectMake(5, Y_aim_pos , 350, 20);
    AimSlidr[1].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    AimSlidr[1].layer.borderWidth = 1;
    AimSlidr[1].maximumTrackTintColor = [UIColor clearColor];
    [AimSlidr[1] setThumbImage:SliderImage forState:UIControlStateNormal];
    AimSlidr[1].minimumTrackTintColor = [UIColor clearColor];
    AimSlidr[1].minimumValue = 1;
    AimSlidr[1].maximumValue = 100;//10
    AimSlidr[1].value = 50;
    AimSlidr[1].continuous = YES;
    [AimSlidr[1] addTarget:self action:@selector(HeadShootChance:) forControlEvents:UIControlEventValueChanged];
    [AimbotView addSubview:AimSlidr[1]];
    //-- Autofire
    AutofireLab = [[UILabel alloc]init];
    AutofireLab.frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);
    AutofireLab.text = @"Autofire";
    AutofireLab.textColor = UIColor.whiteColor;
    AutofireLab.textAlignment = NSTextAlignmentLeft;
    [AutofireLab sizeToFit];
    [AimbotView addSubview:AutofireLab];
    AutofireBTN = [[UIButton alloc]init];
    AutofireBTN.frame = CGRectMake(315, Y_aim_pos , 35, 20);
    AutofireBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [AutofireBTN setTitle:@"OFF" forState:UIControlStateNormal];
    [AutofireBTN setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [AutofireBTN addTarget:self action:@selector(AutofireBTN:) forControlEvents:UIControlEventTouchUpInside];
    [AimbotView addSubview:AutofireBTN];
    // auto-fire circel button - red green
    FIRE = [[UIButton alloc]init];
    FIRE.frame = CGRectMake(100, 10, 50, 50);
    FIRE.backgroundColor = [UIColor redColor];
    FIRE.layer.cornerRadius = 50/2.0f;
    [FIRE bounds];
    [FIRE addTarget:self action:@selector(buttonDragged:withEvent:) forControlEvents:UIControlEventTouchDragInside];
    [FIRE setBounds:CGRectMake(100, 10, 50, 50)];
    FIRE.layer.cornerRadius = 50/2.0f;
    [FIRE setTitle:@"" forState:UIControlStateNormal];
    FIRE.hidden = YES;
    [FIRE setTitleColor:[UIColor systemRedColor] forState:UIControlStateNormal];
    [FIRE addTarget:self action:@selector(auttofireison) forControlEvents:UIControlEventTouchUpInside];
    [mainWindow addSubview:FIRE];
    // - autofire Interval
    AUTOFIRE_SLiderLabInterval = [[UILabel alloc]init];
    AUTOFIRE_SLiderLabInterval.frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);
    AUTOFIRE_SLiderLabInterval.text = @"Auto-Fire interval";
    AUTOFIRE_SLiderLabInterval.textColor = UIColor.whiteColor;
    AUTOFIRE_SLiderLabInterval.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:AUTOFIRE_SLiderLabInterval];
    AUTOLabInterval = [[UILabel alloc]init];
    AUTOLabInterval.frame = CGRectMake(314, Y_aim_pos, 150, 20);
    AUTOLabInterval.text = @"1.00";
    AUTOLabInterval.textColor = UIColor.whiteColor;
    AUTOLabInterval.font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    AUTOLabInterval.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:AUTOLabInterval];
    Auto1Interval = [[UISlider alloc]init];
    Auto1Interval.frame = CGRectMake(5, Y_aim_pos, 350, 20);
    Auto1Interval.layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    Auto1Interval.layer.borderWidth = 1;
    Auto1Interval.maximumTrackTintColor = [UIColor clearColor];
    //Auto1.thumbTintColor = UIColor.clearColor;
    [Auto1Interval setThumbImage:SliderImage forState:UIControlStateNormal];
    Auto1Interval.minimumTrackTintColor = [UIColor clearColor];
    Auto1Interval.minimumValue = 1;
    Auto1Interval.maximumValue = 500;//10
    Auto1Interval.value = 1;
    Auto1Interval.continuous = YES;
    [Auto1Interval addTarget:self action:@selector(autofireInterval:) forControlEvents:UIControlEventValueChanged];
    [AimbotView addSubview:Auto1Interval];
    //-- Autofire Distance
    AUTOFIRESLiderLab = [[UILabel alloc]init];
    AUTOFIRESLiderLab.frame = CGRectMake(5, Y_aim_pos += 21, 350, 20);
    AUTOFIRESLiderLab.text = @"Autofire Distance";
    AUTOFIRESLiderLab.textColor = UIColor.whiteColor;
    AUTOFIRESLiderLab.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:AUTOFIRESLiderLab];
    AUTOLab = [[UILabel alloc]init];
    AUTOLab.frame = CGRectMake(314, Y_aim_pos , 150, 20);
    AUTOLab.text = @"50.00";
    AUTOLab.textColor = UIColor.whiteColor;
    AUTOLab.font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    AUTOLab.textAlignment = NSTextAlignmentLeft;
    [AimbotView addSubview:AUTOLab];
    Auto1 = [[UISlider alloc]init];
    Auto1.frame = CGRectMake(5, Y_aim_pos , 349, 20);
    Auto1.layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    Auto1.layer.borderWidth = 1;
    Auto1.maximumTrackTintColor = [UIColor clearColor];
    //Auto1.thumbTintColor = UIColor.clearColor;
    [Auto1 setThumbImage:SliderImage forState:UIControlStateNormal];
    Auto1.minimumTrackTintColor = [UIColor clearColor];
    Auto1.minimumValue = 1;
    Auto1.maximumValue = 500;
    Auto1.value = 50;
    Auto1.continuous = YES;
    [Auto1 addTarget:self action:@selector(autofire:) forControlEvents:UIControlEventValueChanged];
    [AimbotView addSubview:Auto1];
    //------
    // No scope aimbot menu
#pragma No scope aimbot
    Munu2 = [[UIButton alloc]init];
    Munu2.frame = CGRectMake(0, 21, 350, 21);
    [Munu2 setTitle:@"NO scope Aimbot" forState:UIControlStateNormal];
    Munu2.hidden = NO;
    Munu2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [Munu2 setTitleColor:[UIColor whiteColor]forState:UIControlStateNormal];
    [Munu2 addTarget:self action:@selector(Munu2:) forControlEvents:UIControlEventTouchUpInside];
    Munu2.titleLabel.font =  [UIFont fontWithName:@"" size:13];
    [MainMnue addSubview:Munu2];
    NoScopView = [[UIView alloc ] initWithFrame:CGRectMake(0, 3, 350, 200)];
    NoScopView.backgroundColor = [UIColor clearColor];
    NoScopView.userInteractionEnabled = YES;
    NoScopView.clipsToBounds = YES;
    NoScopView.hidden = YES;
    NoScopView.layer.borderColor = [UIColor colorWithRed: 0.00 green: 0.00 blue: 0.00 alpha: 1].CGColor;
    [MainMnue addSubview:NoScopView];
    //no scope Enable Aimbot button
    NoScoLable[0] = [[UILabel alloc]init];
    NoScoLable[0].frame = CGRectMake(5, 0, 350, 20);
    NoScoLable[0].text = @"Enable Aimbot button";
    NoScoLable[0].textColor = UIColor.whiteColor;
    NoScoLable[0].textAlignment = NSTextAlignmentLeft;
    [NoScoLable[0] sizeToFit];
    [NoScopView addSubview:NoScoLable[0]];
    NoScoButt[0] = [[UIButton alloc]init];
    NoScoButt[0].frame = CGRectMake(315, 0, 35, 20);
    NoScoButt[0].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [NoScoButt[0] setTitle:@"OFF" forState:UIControlStateNormal];
    [NoScoButt[0] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [NoScoButt[0] addTarget:self action:@selector(AimButOn:) forControlEvents:UIControlEventTouchUpInside];
    [NoScopView addSubview:NoScoButt[0]];
    //no scope Aimbot button is toggle
    NoScoLable[1] = [[UILabel alloc]init];
    NoScoLable[1].frame = CGRectMake(5, 21, 350, 20);
    NoScoLable[1].text = @"Aimbot button is toggle";
    NoScoLable[1].textColor = UIColor.whiteColor;
    NoScoLable[1].textAlignment = NSTextAlignmentLeft;
    [NoScoLable[1] sizeToFit];
    [NoScopView addSubview:NoScoLable[1]];
    NoScoButt[1] = [[UIButton alloc]init];
    NoScoButt[1].frame = CGRectMake(315, 21, 35, 20);
    NoScoButt[1].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [NoScoButt[1] setTitle:@"OFF" forState:UIControlStateNormal];
    [NoScoButt[1] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [NoScoButt[1] addTarget:self action:@selector(AimButTogg:) forControlEvents:UIControlEventTouchUpInside];//empty event
    [NoScopView addSubview:NoScoButt[1]];
    //no scope slider aimbot button size
    /*
     AutoFiBuSiz = [[Slider_Sniper alloc] init];
     AutoFiBuSiz.frame = CGRectMake(5, 42, 350, 20);
     AutoFiBuSiz.maxValue = 200;
     [AutoFiBuSiz setValue:0.0 animated:YES];
     AutoFiBuSiz.thumbImageView.image = [UIImage imageWithData:LineData_];
     AutoFiBuSiz.name = @"Aimbot button size";
     [NoScopView addSubview:AutoFiBuSiz];
     */
    AutFirBuSizLabel1 = [[UILabel alloc]init];
    AutFirBuSizLabel1.frame = CGRectMake(5,42, 350, 20);
    AutFirBuSizLabel1.text = @"Aimbot button size";
    AutFirBuSizLabel1.textColor = UIColor.whiteColor;
    AutFirBuSizLabel1.textAlignment = NSTextAlignmentLeft;
    //[AutFirBuSizLabel1 sizeToFit];
    [NoScopView addSubview:AutFirBuSizLabel1];
    AutFirBuSizLabel2 = [[UILabel alloc]init];
    AutFirBuSizLabel2.frame = CGRectMake(314, 42, 150, 20);
    AutFirBuSizLabel2.text = @"20.00";
    AutFirBuSizLabel2.textColor = UIColor.whiteColor;
    AutFirBuSizLabel2.font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    AutFirBuSizLabel2.textAlignment = NSTextAlignmentLeft;
    [NoScopView addSubview:AutFirBuSizLabel2];
    AutFirBuSiz = [[UISlider alloc]init];
    AutFirBuSiz.frame = CGRectMake(5, 42, 350, 20);
    AutFirBuSiz.layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    AutFirBuSiz.layer.borderWidth = 1;
    AutFirBuSiz.maximumTrackTintColor = [UIColor clearColor];
    [AutFirBuSiz setThumbImage:SliderImage forState:UIControlStateNormal];
    AutFirBuSiz.minimumTrackTintColor = [UIColor clearColor];
    AutFirBuSiz.minimumValue = 1;
    AutFirBuSiz.maximumValue = 200;
    AutFirBuSiz.value = 20;
    AutFirBuSiz.continuous = YES;
    [AutFirBuSiz addTarget:self action:@selector(AutoFireButSizeEvent:) forControlEvents:UIControlEventValueChanged];
    [NoScopView addSubview:AutFirBuSiz];
    NoScoLable[4] = [[UILabel alloc]init];
    NoScoLable[4].frame = CGRectMake(5,63, 350, 20);
    NoScoLable[4].text = @"No scope Aimbot distance";
    NoScoLable[4].textColor = UIColor.whiteColor;
    NoScoLable[4].textAlignment = NSTextAlignmentLeft;
    //[NoScoLable[2] sizeToFit];
    [NoScopView addSubview:NoScoLable[4]];
    NoScoLable[5] = [[UILabel alloc]init];
    NoScoLable[5].frame = CGRectMake(314, 63, 150, 20);
    NoScoLable[5].text = @"20.00";
    NoScoLable[5].textColor = UIColor.whiteColor;
    NoScoLable[5].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    NoScoLable[5].textAlignment = NSTextAlignmentLeft;
    [NoScopView addSubview:NoScoLable[5]];
    NoScopSlider[1] = [[UISlider alloc]init];
    NoScopSlider[1].frame = CGRectMake(5, 63, 350, 20);
    NoScopSlider[1].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    NoScopSlider[1].layer.borderWidth = 1;
    NoScopSlider[1].maximumTrackTintColor = [UIColor clearColor];
    [NoScopSlider[1] setThumbImage:SliderImage forState:UIControlStateNormal];
    NoScopSlider[1].minimumTrackTintColor = [UIColor clearColor];
    NoScopSlider[1].minimumValue = 1;
    NoScopSlider[1].maximumValue = 400;
    NoScopSlider[1].value = 20;
    NoScopSlider[1].continuous = YES;
    [NoScopSlider[1] addTarget:self action:@selector(NoScopeAimDisSliderEvent:) forControlEvents:UIControlEventValueChanged];
    [NoScopView addSubview:NoScopSlider[1]];
    //--
    NoScoLable[2] = [[UILabel alloc]init];
    NoScoLable[2].frame = CGRectMake(5,84, 350, 20);
    NoScoLable[2].text = @"Turn rate";
    NoScoLable[2].textColor = UIColor.whiteColor;
    NoScoLable[2].textAlignment = NSTextAlignmentLeft;
    //[NoScoLable[2] sizeToFit];
    [NoScopView addSubview:NoScoLable[2]];
    NoScoLable[3] = [[UILabel alloc]init];
    NoScoLable[3].frame = CGRectMake(314, 84, 150, 20);
    NoScoLable[3].text = @"100.00";
    NoScoLable[3].textColor = UIColor.whiteColor;
    NoScoLable[3].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    NoScoLable[3].textAlignment = NSTextAlignmentLeft;
    [NoScopView addSubview:NoScoLable[3]];
    NoScopSlider[0] = [[UISlider alloc]init];
    NoScopSlider[0].frame = CGRectMake(5, 84, 350, 20);
    NoScopSlider[0].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    NoScopSlider[0].layer.borderWidth = 1;
    NoScopSlider[0].maximumTrackTintColor = [UIColor clearColor];
    [NoScopSlider[0] setThumbImage:SliderImage forState:UIControlStateNormal];
    NoScopSlider[0].minimumTrackTintColor = [UIColor clearColor];
    NoScopSlider[0].minimumValue = 1;
    NoScopSlider[0].maximumValue = 720;
    NoScopSlider[0].value = 100;
    NoScopSlider[0].continuous = YES;
    [NoScopSlider[0] addTarget:self action:@selector(NoScopeTurnRateSliderEvent:) forControlEvents:UIControlEventValueChanged];
    [NoScopView addSubview:NoScopSlider[0]];
    //
    NoScoLable[6] = [[UILabel alloc]init];
    NoScoLable[6].frame = CGRectMake(5,105, 350, 20);
    NoScoLable[6].text = @"Filed of view";
    NoScoLable[6].textColor = UIColor.whiteColor;
    NoScoLable[6].textAlignment = NSTextAlignmentLeft;
    [NoScopView addSubview:NoScoLable[6]];
    NoScoLable[7] = [[UILabel alloc]init];
    NoScoLable[7].frame = CGRectMake(314, 105, 150, 20);
    NoScoLable[7].text = @"100.00";
    NoScoLable[7].textColor = UIColor.whiteColor;
    NoScoLable[7].font = [UIFont fontWithName:@"Helvetica Neue Bold" size:10];
    NoScoLable[7].textAlignment = NSTextAlignmentLeft;
    [NoScopView addSubview:NoScoLable[7]];
    NoScopSlider[2] = [[UISlider alloc]init];
    NoScopSlider[2].frame = CGRectMake(5, 105, 350, 20);
    NoScopSlider[2].layer.borderColor = [[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]CGColor ];
    NoScopSlider[2].layer.borderWidth = 1;
    NoScopSlider[2].maximumTrackTintColor = [UIColor clearColor];
    [NoScopSlider[2] setThumbImage:SliderImage forState:UIControlStateNormal];
    NoScopSlider[2].minimumTrackTintColor = [UIColor clearColor];
    NoScopSlider[2].minimumValue = 1;
    NoScopSlider[2].maximumValue = 1000;//360
    NoScopSlider[2].value = 100;
    NoScopSlider[2].continuous = YES;
    [NoScopSlider[2] addTarget:self action:@selector(NoScopeFOVSliderEvent:) forControlEvents:UIControlEventValueChanged];
    [NoScopView addSubview:NoScopSlider[2]];
    // Other
#pragma Other
    Munu4 = [[UIButton alloc]init];
    Munu4.frame = CGRectMake(0, 63, 350, 21);
    [Munu4 setTitle:@"Other" forState:UIControlStateNormal];
    Munu4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    Munu4.hidden = NO;
    [Munu4 setTitleColor:[UIColor whiteColor]forState:UIControlStateNormal];
    [Munu4 addTarget:self action:@selector(Munu4:) forControlEvents:UIControlEventTouchUpInside];
    Munu4.titleLabel.font =  [UIFont fontWithName:@"" size:11];
    [MainMnue addSubview:Munu4];
    Settingview = [[UIView alloc ] initWithFrame:CGRectMake(0, 3, 350, 200)];
    Settingview.backgroundColor = [UIColor clearColor];
    Settingview.userInteractionEnabled = YES;
    Settingview.clipsToBounds = YES;
    Settingview.hidden = YES;
    Settingview.layer.borderColor = [UIColor colorWithRed: 0.00 green: 0.00 blue: 0.00 alpha: 1].CGColor;
    [MainMnue addSubview:Settingview];
    //-- Bunny hop
    BunnyHup = [[UILabel alloc]init];
    BunnyHup.frame = CGRectMake(5, 0, 350, 20);
    BunnyHup.text = @"FREE";
    BunnyHup.textColor = UIColor.grayColor;//if enalbed = whiteColor // or grayColor
    BunnyHup.textAlignment = NSTextAlignmentLeft;
    [BunnyHup sizeToFit];
    [Settingview addSubview:BunnyHup];
    BunnyHupButton = [[UIButton alloc]init];
    BunnyHupButton.frame = CGRectMake(315, 0, 35, 20);
    BunnyHupButton.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [BunnyHupButton setTitle:@"OFF" forState:UIControlStateNormal];
    [BunnyHupButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];//was enalbeld = whiteColor // diabled = grayColor
    //[BunnyHupButton addTarget:self action:@selector(BunnyHopAction:) forControlEvents:UIControlEventTouchUpInside];//disabled unless if its fixed
    [Settingview addSubview:BunnyHupButton];
    //--
    ar = [[UIButton alloc]init];
    ar.frame = CGRectMake(315, 23, 35, 20);
    ar.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [ar setTitle:@"؏" forState:UIControlStateNormal];
    [ar.titleLabel setFont:[UIFont fontWithName:@"" size:13.0]];
    [ar setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ar addTarget:self action:@selector(ar:) forControlEvents:UIControlEventTouchUpInside];
    [Settingview addSubview:ar];
    en = [[UIButton alloc]init];
    en.frame = CGRectMake(280, 23, 35, 20);
    en.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [en setTitle:@"En" forState:UIControlStateNormal];
    [en.titleLabel setFont:[UIFont fontWithName:@"" size:13.0]];
    [en setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [en addTarget:self action:@selector(en:) forControlEvents:UIControlEventTouchUpInside];
    [Settingview addSubview:en];
    lang = [[UILabel alloc]init];
    lang.frame = CGRectMake(5, 23, 350, 20);
    lang.text = @"Languages";
    lang.textColor = UIColor.whiteColor;
    lang.textAlignment = NSTextAlignmentLeft;
    [lang sizeToFit];
    [Settingview addSubview:lang];
    ResetGusetLab = [[UILabel alloc]init];
    ResetGusetLab.frame = CGRectMake(5, 46, 350, 20);
    ResetGusetLab.text = @"ResetGuset";
    ResetGusetLab.textColor = UIColor.whiteColor;
    ResetGusetLab.textAlignment = NSTextAlignmentLeft;
    [Settingview addSubview:ResetGusetLab];
    ResetGuset = [[UIButton alloc]init];
    ResetGuset.frame = CGRectMake(315, 46, 35, 20);
    ResetGuset.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [ResetGuset setTitle:@"OFF" forState:UIControlStateNormal];
    [ResetGuset setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ResetGuset addTarget:self action:@selector(ResetGuset:) forControlEvents:UIControlEventTouchUpInside];
    [Settingview addSubview:ResetGuset];
#pragma item profile
    Munu5 = [[UIButton alloc]init];
    Munu5.frame = CGRectMake(0, 126, 150, 21);
    [Munu5 setTitle:@"Item profile             None" forState:UIControlStateNormal];
    Munu5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    Munu5.hidden = NO;
    [Munu5 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
    [Munu5 addTarget:self action:@selector(Munu5:) forControlEvents:UIControlEventTouchUpInside];
    Munu5.titleLabel.font =  [UIFont fontWithName:@"" size:11];
    [Munu5 sizeToFit];
    [MainMnue addSubview:Munu5];
#pragma Aimbot profile
    Munu6 = [[UIButton alloc]init];
    Munu6.frame = CGRectMake(0, 147, 350, 21);
    [Munu6 setTitle:@"Aimbot profile           None" forState:UIControlStateNormal];
    Munu6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    Munu6.hidden = NO;
    [Munu6 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];// if Active must be whiteColor
    [Munu6 addTarget:self action:@selector(Munu6:) forControlEvents:UIControlEventTouchUpInside];
    Munu6.titleLabel.font =  [UIFont fontWithName:@"" size:11];
    [Munu6 sizeToFit];
    [MainMnue addSubview:Munu6];
#pragma open settings in browser
    Munu7 = [[UIButton alloc]init];
    Munu7.frame = CGRectMake(0, 168, 350, 21);
    [Munu7 setTitle:@"Open settings in browser" forState:UIControlStateNormal];
    Munu7.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    Munu7.hidden = NO;
    [Munu7 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
    [Munu7 addTarget:self action:@selector(Munu7:) forControlEvents:UIControlEventTouchUpInside];
    Munu7.titleLabel.font =  [UIFont fontWithName:@"" size:11];
    [Munu7 sizeToFit];
    [MainMnue addSubview:Munu7];
#pragma v download setting
    Munu8 = [[UIButton alloc]init];
    Munu8.frame = CGRectMake(0, 189, 350, 21);
    [Munu8 setTitle:@"v Downlaod settings" forState:UIControlStateNormal];
    Munu8.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    Munu8.hidden = NO;
    [Munu8 setTitleColor:[UIColor grayColor]forState:UIControlStateNormal];
    [Munu8 addTarget:self action:@selector(Munu8:) forControlEvents:UIControlEventTouchUpInside];
    Munu8.titleLabel.font =  [UIFont fontWithName:@"" size:11];
    [Munu8 sizeToFit];
    [MainMnue addSubview:Munu8];
    //210
#pragma  back
    back = [[UIButton alloc]init];
    back.frame = CGRectMake(5, 294, 350, 21);
    [back setTitle:@"<-Go Back" forState:UIControlStateNormal];
    back.hidden = YES;
    back.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [back setTitleColor:[UIColor whiteColor]forState:UIControlStateNormal];
    [back addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    back.titleLabel.font =  [UIFont fontWithName:@"" size:11];
    [MainMnue addSubview:back];
#pragma Exit
    exitButLocation = CGPointMake(5, 235);//231
    Exet = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Exet.backgroundColor = [UIColor clearColor];
    Exet.frame = CGRectMake(exitButLocation.x, exitButLocation.y, 350, 21);
    [Exet setTitle:@"[x]Close Menu" forState:UIControlStateNormal];
    Exet.hidden = NO;
    Exet.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [Exet setTitleColor:[ UIColor whiteColor] forState:UIControlStateNormal];
    [Exet addTarget:self action:@selector(closeMenu:) forControlEvents:UIControlEventTouchUpInside];
    Exet.titleLabel.font =  [UIFont fontWithName:@"" size:14];
    [MainMnue addSubview:Exet];
}
- (void)openMenu {
    MainMnue.hidden = NO;
    [UIView animateWithDuration:0.1 animations:^{
        MainMnue.transform = CGAffineTransformMakeScale(1, 1);
    }completion:^(BOOL finished) {
    }];
}
- (void)closeMenu:(id)sender {
    [UIView animateWithDuration:0.2 animations:^{
        MainMnue.transform = CGAffineTransformMakeScale(0.001, 0.001);
    }completion:^(BOOL finished) {
        MainMnue.hidden = YES;
    }];
}
- (void)closemenu2 {
    [UIView animateWithDuration:0.4 animations:^{
        MainMnue.transform = CGAffineTransformMakeScale(0.001, 0.001);
    }completion:^(BOOL finished) {
        MainMnue.hidden = YES;
    }];
}
// ESP
-(void)Munu1:(id)sender{
    Munu1 = (UIButton *)sender;
    if (!Munu1.selected) {
        Munu1.selected = YES;
        back.selected = NO;
        Munu1.hidden =YES;
        Munu2.hidden =YES;
        Munu3.hidden =YES;
        Munu4.hidden =YES;
        Munu5.hidden =YES;
        Munu6.hidden =YES;
        Munu7.hidden =YES;
        Munu8.hidden =YES;
        Espview.hidden =NO;
        back.hidden =false;
        closeButton.hidden =false;
        Settingview.hidden = YES;
        NoScopView.hidden =YES;
        AimbotView.hidden =YES;
        back.frame = CGRectMake(0, YPostions*17, 120, 21);
        //exitButLocation = CGPointMake(0, 378);
        Exet.frame = CGRectMake(0,YPostions*18, 150, 21);
        MainMnue.frame = CGRectMake(0, 0, 350, 378);//black box soze x,y,w,h
        MainMnue.center = mainWindow.center;
    }else {
        Munu1.selected = NO;
    }}
//Materal
-(void)Munu2:(id)sender{
    Munu2 = (UIButton *)sender;
    if (!Munu2.selected) {
        Munu2.selected = YES;
        back.selected = NO;
        Munu1.hidden =YES;
        Munu2.hidden =YES;
        Munu3.hidden =YES;
        Munu4.hidden =YES;
        Munu5.hidden =YES;
        Munu6.hidden =YES;
        Munu7.hidden =YES;
        Munu8.hidden =YES;
        Espview.hidden =YES;
        NoScopView.hidden =NO;
        Settingview.hidden = YES;
        AimbotView.hidden =YES;
        back.hidden =false;
        closeButton.hidden =false;
        back.frame = CGRectMake(0, 147, 120, 21);
        exitButLocation = CGPointMake(0, 168);
        Exet.frame = CGRectMake(exitButLocation.x, exitButLocation.y, 150, 21);
        MainMnue.frame = CGRectMake(MainMnue.frame.origin.x, MainMnue.frame.origin.y, 350, 189);//black box soze
        MainMnue.center = mainWindow.center;
    }else {
        Munu2.selected = NO;
    }}
//Aimbot
-(void)Munu3:(id)sender{
    Munu3 = (UIButton *)sender;
    if (!Munu3.selected) {
        Munu3.selected = YES;
        back.selected = NO;
        Munu1.hidden =YES;
        Munu2.hidden =YES;
        Munu3.hidden =YES;
        Munu4.hidden =YES;
        Munu5.hidden =YES;
        Munu6.hidden =YES;
        Munu7.hidden =YES;
        Munu8.hidden =YES;
        Espview.hidden =YES;
        NoScopView.hidden =YES;
        Settingview.hidden = YES;
        AimbotView.hidden = NO;
        back.hidden =false;
        closeButton.hidden =false;
        back.frame = CGRectMake(0, 294, 120, 21);
        exitButLocation = CGPointMake(0, 315);
        Exet.frame = CGRectMake(exitButLocation.x, exitButLocation.y, 150, 21);
        MainMnue.frame = CGRectMake(MainMnue.frame.origin.x, MainMnue.frame.origin.y, 350, 336);//black box soze
        MainMnue.center = mainWindow.center;
    }else {
        Munu3.selected = NO;
    }}
//Other
-(void)Munu4:(id)sender{
    Munu4 = (UIButton *)sender;
    if (!Munu4.selected) {
        Munu4.selected = YES;
        back.selected = NO;
        Munu1.hidden =YES;
        Munu2.hidden =YES;
        Munu3.hidden =YES;
        Munu4.hidden =YES;
        Munu5.hidden =YES;
        Munu6.hidden =YES;
        Munu7.hidden =YES;
        Munu8.hidden =YES;
        Espview.hidden =YES;
        NoScopView.hidden =YES;
        AimbotView.hidden =YES;
        Settingview.hidden = NO;
        back.hidden =false;
        closeButton.hidden =false;
        back.frame = CGRectMake(0, 88, 120, 21);//x,y,w,h
        exitButLocation = CGPointMake(0, 109);
        Exet.frame = CGRectMake(exitButLocation.x, exitButLocation.y, 150, 21);
        MainMnue.frame = CGRectMake(MainMnue.frame.origin.x, MainMnue.frame.origin.y, 350, 140);
        MainMnue.center = mainWindow.center;
    }else {
        Munu4.selected = NO;
    }}
//to do event later on//
//item profile:
-(void)Munu5:(id)sender{}
//Aimbot profile
-(void)Munu6:(id)sender{}
//open settings in browser
-(void)Munu7:(id)sender{}
// v download setting
-(void)Munu8:(id)sender{}
-(void)back:(id)sender{
    back = (UIButton *)sender;
    if (!back.selected) {
        back.selected = YES;
        Munu1.selected = NO;
        Munu2.selected = NO;
        Munu3.selected = NO;
        Munu4.selected = NO;
        Settingview.hidden = YES;
        Munu1.hidden =NO;
        Munu2.hidden =NO;
        Munu3.hidden =NO;
        Munu4.hidden =NO;
        Munu5.hidden =NO;
        Munu6.hidden =NO;
        Munu7.hidden =NO;
        Munu8.hidden =NO;
        Espview.hidden =YES;
        NoScopView.hidden =YES;
        AimbotView.hidden = YES;
        Settingview.hidden =YES;
        back.hidden =YES;
        closeButton.hidden =false;
        exitButLocation = CGPointMake(0, 231);
        Exet.frame = CGRectMake(exitButLocation.x, exitButLocation.y, 150, 21);
        MainMnue.frame = CGRectMake(MainMnue.frame.origin.x, MainMnue.frame.origin.y, 350, 258);//x,y,w,h
        MainMnue.center = mainWindow.center;
    }else {
        back.selected = NO;
    }}



//------------ start of ESP menu events
//Enemy Esp  - event
-(void)EnemyEsp:(id)sender {
    EspButton[0] = (UIButton *)sender;
    if (!EspButton[0].selected) {
        IsPLayerName =true;//show players name
        IsPlayerHP =true; // show players health
        Is3Dbox =true; // show players 3D box
        IsBone =true; // show players bon
        iSPLAYERDIS =true;//show players distance
        EspButton[0].selected = YES;
        EspButton[0].backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [EspButton[0] setTitle:@"ON" forState:UIControlStateNormal];
        [defaults setBool:TRUE forKey:@"EnemyEsp"];
    }else{
        IsPLayerName =false;
        IsPlayerHP = false;
        Is3Dbox = false;
        IsBone = false;
        iSPLAYERDIS = false;
        EspButton[0].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [EspButton[0] setTitle:@"OFF" forState:UIControlStateNormal];
        EspButton[0].selected = NO;
        [defaults setBool:FALSE forKey:@"EnemyEsp"];
    }
}
//Enemey ESP Weapon -event
-(void)WepaonBTN:(id)sender {
    WepaonBTN = (UIButton *)sender;
    if (!WepaonBTN.selected) {
        IsPlayerWEP =true;
        WepaonBTN.selected = YES;
        WepaonBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [WepaonBTN setTitle:@"ON" forState:UIControlStateNormal];
        [defaults setBool:TRUE forKey:@"WepaonBTN"];
    }else{
        IsPlayerWEP =false;
        WepaonBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [WepaonBTN setTitle:@"OFF" forState:UIControlStateNormal];
        WepaonBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"WepaonBTN"];
    }
}
//Weapon only if sniper -event
-(void)SniperBTN:(id)sender {
    SniperBTN = (UIButton *)sender;
    if (!SniperBTN.selected) {
        IsSniper =true;
        SniperBTN.selected = YES;
        SniperBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [SniperBTN setTitle:@"ON" forState:UIControlStateNormal];
        [defaults setBool:TRUE forKey:@"SniperBTN"];
    }else{
        IsSniper =false;
        SniperBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [SniperBTN setTitle:@"OFF" forState:UIControlStateNormal];
        SniperBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"SniperBTN"];
    }
}
// iAwareness text -event
-(void)iAwareText:(id)sender {
    EspButton[1] = (UIButton *)sender;
    if (!EspButton[1].selected) {
        // Add here event action
        EspButton[1].selected = YES;
        EspButton[1].backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [EspButton[1] setTitle:@"ON" forState:UIControlStateNormal];
        iAwareText = true;
        [defaults setBool:TRUE forKey:@"iAwareText"];
    }else{
        // Add here event action
        EspButton[1].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [EspButton[1] setTitle:@"OFF" forState:UIControlStateNormal];
        EspButton[1].selected = NO;
        iAwareText = false;
        [defaults setBool:FALSE forKey:@"iAwareText"];
    }
}
//iAwareness text size -event
-(void)iAwareTexSiz:(UISlider*)sender {
    float InfoValue = EspSliders[0].value; //slider current value
    EspLabelSlider[1].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    iAwareTexSiz = EspSliders[0].value;
    [defaults setFloat:InfoValue forKey:@"iAwareTexSiz"];
}
//iAwareness arrows -event
-(void)ArrowBTN:(id)sender {
    ArrowBTN = (UIButton *)sender;
    if (!ArrowBTN.selected) {
        IsWarring =true;
        ArrowBTN.selected = YES;
        ArrowBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [ArrowBTN setTitle:@"ON" forState:UIControlStateNormal];
        [defaults setBool:TRUE forKey:@"ArrowBTN"];
    }else{
        IsWarring =false;
        ArrowBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [ArrowBTN setTitle:@"OFF" forState:UIControlStateNormal];
        ArrowBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"ArrowBTN"];
    }
}
//iAwareness arrow scale -event // slider
-(void)iAwareArrScale:(UISlider*)sender {
    float InfoValue = EspSliders[1].value; //slider current value for iAwareness arrow scale
    EspLabelSlider[3].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    [defaults setFloat:InfoValue forKey:@"iAwareArrScale"];
}
//iAwareness arrow margin -event //slider
-(void)iAwareArrMarg:(UISlider*)sender {
    float InfoValue = EspSliders[2].value; //slider current value for iAwareness arrow margin
    EspLabelSlider[5].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    [defaults setFloat:InfoValue forKey:@"iAwareArrMarg"];
}
//Item ESP -event
-(void)IteamESP:(id)sender {
    EspButton[2] = (UIButton *)sender;
    if (!EspButton[2].selected) {
        //add event here for true
        IsAR =true;
        IsSMG =true;
        IsSniper =true;
        IsAmmo =true;
        IsShotgun =true;
        EspButton[2].selected = YES;
        EspButton[2].backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [EspButton[2] setTitle:@"ON" forState:UIControlStateNormal];
        [defaults setBool:TRUE forKey:@"IteamESP"];
    }else{
        IsAR =false;
        IsSMG =false;
        IsSniper =false;
        IsAmmo =false;
        IsShotgun =false;
        //add event here for false
        EspButton[2].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [EspButton[2] setTitle:@"OFF" forState:UIControlStateNormal];
        EspButton[2].selected = NO;
        [defaults setBool:FALSE forKey:@"IteamESP"];
    }
}
//Magazine count -event // NOT Active
-(void)MagzCount:(UISlider*)sender {
    float InfoValue = EspSliders[3].value; //slider current value for Magazine count
    EspLabelSlider[7].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    [defaults setFloat:InfoValue forKey:@"MagzCount"];
}
// draw esp line
-(void)DrawLineEspEevent:(id)sender {
    DrawLineBTN = (UIButton *)sender;
    if (!DrawLineBTN.selected) {
        DrawLineBTN.selected = YES;
        DrawLineBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [DrawLineBTN setTitle:@"ON" forState:UIControlStateNormal];
        DrawPlayerLine = true; //Activate it
        [defaults setBool:TRUE forKey:@"DrawLineEspEevent"];
    }else{
        DrawPlayerLine = false;
        DrawLineBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [DrawLineBTN setTitle:@"OFF" forState:UIControlStateNormal];
        DrawLineBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"DrawLineEspEevent"];
    }
}
//Vechicle esp -event
-(void)VheicleboxBTN:(id)sender {
    VheicleboxBTN = (UIButton *)sender;
    if (!VheicleboxBTN.selected) {
        VheicleboxBTN.selected = YES;
        VheicleboxBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [VheicleboxBTN setTitle:@"ON" forState:UIControlStateNormal];
        IsboxVechle =true;//for show car box
        IsVehcle =true;//for show car
        [defaults setBool:TRUE forKey:@"VheicleboxBTN"];
    }else{
        IsboxVechle =false;
        IsVehcle =false;
        VheicleboxBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [VheicleboxBTN setTitle:@"OFF" forState:UIControlStateNormal];
        VheicleboxBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"VheicleboxBTN"];
    }
}
//Airdrop ESP -event
-(void)AirDroESP:(id)sender {
    EspButton[3] = (UIButton *)sender;
    if (!EspButton[3].selected) {
        //add here event with true condtions
        EspButton[3].selected = YES;
        EspButton[3].backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [EspButton[3] setTitle:@"ON" forState:UIControlStateNormal];
        IsAirDrop = true;
        [defaults setBool:TRUE forKey:@"AirDroESP"];
    }else{
        //add here event with flase condtions
        EspButton[3].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [EspButton[3] setTitle:@"OFF" forState:UIControlStateNormal];
        EspButton[3].selected = NO;
        IsAirDrop = false;
        [defaults setBool:FALSE forKey:@"AirDroESP"];
    }
}
//TombBox ESP -event
-(void)LootboxBTN:(id)sender {
    LootboxBTN = (UIButton *)sender;
    if (!LootboxBTN.selected) {
        LootboxBTN.selected = YES;
        LootboxBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [LootboxBTN setTitle:@"ON" forState:UIControlStateNormal];
        IsLootBox =true;
        [defaults setBool:TRUE forKey:@"LootboxBTN"];
    }else{
        IsLootBox =false;
        LootboxBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [LootboxBTN setTitle:@"OFF" forState:UIControlStateNormal];
        LootboxBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"LootboxBTN"];
    }
}
//Grenade ESP -event
-(void)GrendeWarringBTN:(id)sender {
    GrendeWarringBTN = (UIButton *)sender;
    if (!GrendeWarringBTN.selected) {
        GrendeWarringBTN.selected = YES;
        GrendeWarringBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [GrendeWarringBTN setTitle:@"ON" forState:UIControlStateNormal];
        IsGRWAR =true;
        [defaults setBool:TRUE forKey:@"GrendeWarringBTN"];
    }else{
        IsGRWAR =false;
        GrendeWarringBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [GrendeWarringBTN setTitle:@"OFF" forState:UIControlStateNormal];
        GrendeWarringBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"GrendeWarringBTN"];
    }
}
//ESP text size -event
-(void)EspTextSiz:(UISlider*)sender {
    float InfoValue = EspSliders[4].value; //slider current value esp text size
    EspLabelSlider[9].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    EspTextSiz = EspSliders[4].value;
    [defaults setFloat:InfoValue forKey:@"EspTextSiz"];
}
//ESP box thickness -event
-(void)EspBoxThik:(UISlider*)sender {
    float InfoValue = EspSliders[5].value; //slider current value for ESP box thickness
    EspLabelSlider[11].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    EspBoxThik = EspSliders[5].value;
    [defaults setFloat:InfoValue forKey:@"EspBoxThik"];
}
//ESP skeleton thickness -event
-(void)EspSktonThik:(UISlider*)sender {
    float InfoValue = EspSliders[6].value; //slider current value for ESP skeleton thickness
    EspLabelSlider[13].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    EspSktonThik = EspSliders[6].value;
    [defaults setFloat:InfoValue forKey:@"EspSktonThik"];
}
//parking event
-(void)nameBTN:(id)sender {
    nameBTN = (UIButton *)sender;
    if (!nameBTN.selected) {
        IsPLayerName =true;
        nameBTN.selected = YES;
        nameBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [nameBTN setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        IsPLayerName =false;
        nameBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [nameBTN setTitle:@"OFF" forState:UIControlStateNormal];
        nameBTN.selected = NO;
    }
}
//parking event
-(void)healthBTN:(id)sender {
    healthBTN = (UIButton *)sender;
    if (!healthBTN.selected) {
        IsPlayerHP =true;
        healthBTN.selected = YES;
        healthBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [healthBTN setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        IsPlayerHP =false;
        healthBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [healthBTN setTitle:@"OFF" forState:UIControlStateNormal];
        healthBTN.selected = NO;
    }
}
//parking event
-(void)boxBTN:(id)sender {
    boxBTN = (UIButton *)sender;
    if (!boxBTN.selected) {
        Is3Dbox =true;
        boxBTN.selected = YES;
        boxBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [boxBTN setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        Is3Dbox =false;
        boxBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [boxBTN setTitle:@"OFF" forState:UIControlStateNormal];
        boxBTN.selected = NO;
    }
}
//parking event
-(void)BoneBTN:(id)sender {
    BoneBTN = (UIButton *)sender;
    if (!BoneBTN.selected) {
        IsBone =true;
        BoneBTN.selected = YES;
        BoneBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [BoneBTN setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        IsBone =false;
        BoneBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [BoneBTN setTitle:@"OFF" forState:UIControlStateNormal];
        BoneBTN.selected = NO;
    }
}
//parking event
-(void)disBTN:(id)sender {
    disBTN = (UIButton *)sender;
    if (!disBTN.selected) {
        iSPLAYERDIS =true;//show players distance
        disBTN.selected = YES;
        disBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [disBTN setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        iSPLAYERDIS =false;
        disBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [disBTN setTitle:@"OFF" forState:UIControlStateNormal];
        disBTN.selected = NO;
    }
}
//park
-(void)ARBTN:(id)sender {
    ARBTN = (UIButton *)sender;
    if (!ARBTN.selected) {
        IsAR =true;
        ARBTN.selected = YES;
        ARBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [ARBTN setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        IsAR =false;
        ARBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [ARBTN setTitle:@"OFF" forState:UIControlStateNormal];
        ARBTN.selected = NO;
    }
}
// aimbot with no scope
//Enable Aimbot button
-(void)AimButOn:(id)sender {
    NoScoButt[0] = (UIButton *)sender;
    if (!NoScoButt[0].selected) {
        IsShoot = true;
        IsAimbot = true;
        //IsAimbotDis = true;
        FIRE.hidden = NO;
        NoScoButt[0].selected = YES;
        NoScoButt[0].backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];//green
        [NoScoButt[0] setTitle:@"ON" forState:UIControlStateNormal];
        //this to adjustment or control autofire button if it out of screen view auto rest location to avoid to be hidden
        if(FIRE.frame.origin.x < 0 && FIRE.frame.origin.y < 0 ){// top left corner of screen
            FIRE.frame = CGRectMake(5,5, AutoFireCircelSize.width, AutoFireCircelSize.height);
            [FIRE setBounds:CGRectMake(5,5, AutoFireCircelSize.width, AutoFireCircelSize.height)];
            FIRE.layer.cornerRadius = AutoFireCircelSize.width/2.0f;
        }else if (FIRE.frame.origin.x < 0 ){//top
            FIRE.frame = CGRectMake(0,FIRE.frame.origin.y, AutoFireCircelSize.width, AutoFireCircelSize.height);
            [FIRE setBounds:CGRectMake(0,FIRE.frame.origin.y, AutoFireCircelSize.width, AutoFireCircelSize.height)];
            FIRE.layer.cornerRadius = AutoFireCircelSize.width/2.0f;
        }else if (FIRE.frame.origin.y < 0 ){//left
            FIRE.frame = CGRectMake(FIRE.frame.origin.x ,0, AutoFireCircelSize.width, AutoFireCircelSize.height);
            [FIRE setBounds:CGRectMake(FIRE.frame.origin.x ,0, AutoFireCircelSize.width, AutoFireCircelSize.height)];
            FIRE.layer.cornerRadius = AutoFireCircelSize.width/2.0f;
        }/*
          //this for right and bottom of screen
          }else if (FIRE.frame.origin.x > kWidth ){//right
          FIRE.frame = CGRectMake(kWidth - AutoFireCircelSize.width ,FIRE.frame.origin.y, AutoFireCircelSize.width, AutoFireCircelSize.height);
          [FIRE setBounds:CGRectMake(kWidth - AutoFireCircelSize.width ,FIRE.frame.origin.y, AutoFireCircelSize.width, AutoFireCircelSize.height)];
          FIRE.layer.cornerRadius = AutoFireCircelSize.width/2.0f;
          }else if (FIRE.frame.origin.y > kHeight ){//down
          FIRE.frame = CGRectMake(FIRE.frame.origin.x ,kHeight - AutoFireCircelSize.height , AutoFireCircelSize.width, AutoFireCircelSize.height);
          [FIRE setBounds:CGRectMake(FIRE.frame.origin.x ,kHeight - AutoFireCircelSize.height, AutoFireCircelSize.width, AutoFireCircelSize.height)];
          FIRE.layer.cornerRadius = AutoFireCircelSize.width/2.0f;
          }else if (FIRE.frame.origin.x > kWidth || FIRE.frame.origin.y > kHeight ){//down right corner
          FIRE.frame = CGRectMake(kWidth - AutoFireCircelSize.width ,kHeight - AutoFireCircelSize.height , AutoFireCircelSize.width, AutoFireCircelSize.height);
          [FIRE setBounds:CGRectMake(kWidth - AutoFireCircelSize.width ,kHeight - AutoFireCircelSize.height, AutoFireCircelSize.width, AutoFireCircelSize.height)];
          FIRE.layer.cornerRadius = AutoFireCircelSize.width/2.0f;
          }*/
        //-- end of autofire button adjustment
    }else{
        FIRE.hidden = YES;
        IsAutofire = false;
        //IsShoot = false;
        // if (!IsSCope){
        //     IsAimbot = false;
        //  }
        NoScoButt[0].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [NoScoButt[0] setTitle:@"OFF" forState:UIControlStateNormal];
        NoScoButt[0].selected = NO;
        IsShoot = false;// alwyas aim follwing head Aimlock

    }
}
//Aimbot button is toggle
-(void)AimButTogg:(id)sender {
    NoScoButt[1] = (UIButton *)sender;
    if (!NoScoButt[1].selected) {
        NoScoButt[1].selected = YES;
        NoScoButt[1].backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];//green
        [NoScoButt[1] setTitle:@"ON" forState:UIControlStateNormal];
        FIRE.backgroundColor = [UIColor redColor];
    }else{
        NoScoButt[1].backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];//red
        [NoScoButt[1] setTitle:@"OFF" forState:UIControlStateNormal];
        NoScoButt[1].selected = NO;
        FIRE.backgroundColor = [UIColor blackColor];
    }
}
//Aimbot button size
-(void)AutoFireButSizeEvent:(id)sender {
    float InfoValue1 = AutFirBuSiz.value;
    AutoFireCircelSize = CGSizeMake(30+AutFirBuSiz.value, 30+AutFirBuSiz.value);// w,h
    AutFirBuSizLabel2.text = [NSString stringWithFormat:@"%0.0f",InfoValue1];
    FIRE.frame = CGRectMake(FIRE.frame.origin.x, FIRE.frame.origin.y, AutoFireCircelSize.width, AutoFireCircelSize.height);
    [FIRE setBounds:CGRectMake(FIRE.frame.origin.x, FIRE.frame.origin.y, AutoFireCircelSize.width, AutoFireCircelSize.height)];
    FIRE.layer.cornerRadius = AutoFireCircelSize.width/2.0f;
    [defaults setFloat:InfoValue1 forKey:@"AutoFireButSizeEvent"];
}
//No scope Aimbot distance
-(void)NoScopeAimDisSliderEvent:(id)sender {
    float InfoValue = NoScopSlider[1].value; //slider current value for iAwareness arrow scale
    NoScoLable[5].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    NoScopeAimDisSliderVal = NoScopSlider[1].value;
    [defaults setFloat:InfoValue forKey:@"NoScopeAimDisSliderEvent"];
}
// Turn rate  (no scope)
-(void)NoScopeTurnRateSliderEvent:(id)sender {
    float InfoValue = NoScopSlider[0].value; //slider current value for iAwareness arrow scale
    NoScoLable[3].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    TurnRate = NoScopSlider[0].value;
    [defaults setFloat:InfoValue forKey:@"NoScopeTurnRateSliderEvent"];
}
//Filed of view ( no scope)
-(void)NoScopeFOVSliderEvent:(id)sender {
    float InfoValue = NoScopSlider[2].value; //slider current value for iAwareness arrow scale
    NoScoLable[7].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    NoScopeFOVSliderVal = NoScopSlider[2].value;
    [defaults setFloat:InfoValue forKey:@"NoScopeFOVSliderEvent"];
}
// end of No scope aimbot menu


-(void)SMGBTN:(id)sender {
    SMGBTN = (UIButton *)sender;
    if (!SMGBTN.selected) {
        SMGBTN.selected = YES;
        SMGBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [SMGBTN setTitle:@"ON" forState:UIControlStateNormal];
        IsSMG =true;
    }else{
        IsSMG =false;
        SMGBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [SMGBTN setTitle:@"OFF" forState:UIControlStateNormal];
        SMGBTN.selected = NO;
    }
}
-(void)AmmoBTN:(id)sender {
    AmmoBTN = (UIButton *)sender;
    if (!AmmoBTN.selected) {
        IsAmmo =true;
        AmmoBTN.selected = YES;
        AmmoBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [AmmoBTN setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        IsAmmo =false;
        AmmoBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [AmmoBTN setTitle:@"OFF" forState:UIControlStateNormal];
        AmmoBTN.selected = NO;
    }
}
-(void)VheicleBTN:(id)sender {
    VheicleBTN = (UIButton *)sender;
    if (!VheicleBTN.selected) {
        IsVehcle =true;
        VheicleBTN.selected = YES;
        VheicleBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [VheicleBTN setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        IsVehcle =false;
        VheicleBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [VheicleBTN setTitle:@"OFF" forState:UIControlStateNormal];
        VheicleBTN.selected = NO;
    }
}
-(void)OtherBTN:(id)sender {
    OtherBTN = (UIButton *)sender;
    if (!OtherBTN.selected) {
        IsShotgun =true;
        OtherBTN.selected = YES;
        OtherBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [OtherBTN setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        IsShotgun =false;
        OtherBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [OtherBTN setTitle:@"OFF" forState:UIControlStateNormal];
        OtherBTN.selected = NO;
    }
}

// start of Aimbot menu (aim with scope)
//Aim Assist
-(void)AimAssisBTN:(id)sender {
    AimAssisBTN = (UIButton *)sender;
    if (!AimAssisBTN.selected) {
        AimAssisBTN.selected = YES;
        AimAssisBTN.backgroundColor = Green;
        [AimAssisBTN setTitle:@"ON" forState:UIControlStateNormal];
        IsAimbot = true;
        IsSCope = true;
        IsAimbotDis =true;
        IsShoot = true; // aim go to head when firing;
        [defaults setBool:TRUE forKey:@"AimAssisBTN"];//set defaults value for selected button
        [ITSVIEW getHeadShootChancePlace];
    }else{
        IsShoot = false;
        IsAimbot = false;
        IsSCope = false;
        IsAimbotDis =false;
        //
        AimAssisBTN.backgroundColor = Red;
        [AimAssisBTN setTitle:@"OFF" forState:UIControlStateNormal];
        AimAssisBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"AimAssisBTN"];
    }
}
//Ignore bots
-(void)IgroneBotBTN:(id)sender {
    IgroneBotBTN = (UIButton *)sender;
    if (!IgroneBotBTN.selected) {
        Igronebot = true;
        IgroneBotBTN.selected = YES;
        IgroneBotBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [IgroneBotBTN setTitle:@"ON" forState:UIControlStateNormal];
        [defaults setBool:TRUE forKey:@"IgroneBotBTN"];
    }else{
        Igronebot = false;
        IgroneBotBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [IgroneBotBTN setTitle:@"OFF" forState:UIControlStateNormal];
        IgroneBotBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"IgroneBotBTN"];
    }
}

//Traget non-visible
-(void)IgoroneVisBTN:(id)sender {
    IgoroneVisBTN = (UIButton *)sender;
    if (!IgoroneVisBTN.selected) {
        IgoroneVisBTN.selected = YES;
        IgoroneVisBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [IgoroneVisBTN setTitle:@"ON" forState:UIControlStateNormal];
        isAimvisual = false;
        [defaults setBool:TRUE forKey:@"IgoroneVisBTN"];
    }else{
        isAimvisual = true;
        IgoroneVisBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [IgoroneVisBTN setTitle:@"OFF" forState:UIControlStateNormal];
        IgoroneVisBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"IgoroneVisBTN"];
    }
}

//Target Knocked dwon
-(void)IgorneKnockBTN:(id)sender {
    IgorneKnockBTN = (UIButton *)sender;
    if (!IgorneKnockBTN.selected) {
        IgorneKnockBTN.selected = YES;
        IgorneKnockBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [IgorneKnockBTN setTitle:@"ON" forState:UIControlStateNormal];
        isAimKnocked =true;
        [defaults setBool:TRUE forKey:@"IgorneKnockBTN"];
    }else{
        isAimKnocked =false;
        IgorneKnockBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [IgorneKnockBTN setTitle:@"OFF" forState:UIControlStateNormal];
        IgorneKnockBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"IgorneKnockBTN"];
    }
}
//Turn rate
-(void)AimTurnRate:(id)sender {
    float InfoValue = TurnRateSlider.value;
    TurnRat[1].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    AimTurnRateSlidVal = TurnRateSlider.value;
    [defaults setFloat:TurnRateSlider.value forKey:@"AimTurnRate"];
}
//Aimbot circle
-(void)AimfovNoDraw:(id)sender {
    AimfovBTN = (UIButton *)sender;
    if (!AimfovBTN.selected) {
        AimfovBTN.selected = YES;
        AimfovBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [AimfovBTN setTitle:@"ON" forState:UIControlStateNormal];
        //IsFov =true;
        IsAimbotFov = true;
        IsAimbotDis =false;
        IsShoot = false;// alwyas aim follwing head
        [defaults setBool:TRUE forKey:@"AimfovNoDraw"];
        FovRadousVal = AimSlidr[0].value;
    }else{
        IsAimbotFov = false;
        IsAimbotDis =true;
        IsShoot = true;
        //IsFov =false;
        AimfovBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [AimfovBTN setTitle:@"OFF" forState:UIControlStateNormal];
        AimfovBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"AimfovNoDraw"];
    }
}
/*
 -(void)HiddenFOVevent:(id)sender {
 float InfoValue = HiddenFOV.value;
 AimLabl[1].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
 HiddenFOVSliderVal = HiddenFOV.value;
 }
 */

//Draw aimbot circle
-(void)AimfovWithDraw:(id)sender {
    AimfovBTN = (UIButton *)sender;
    if (!AimfovBTN.selected) {
        HiddenAimfovBTN.selected = YES;
        HiddenAimfovBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [HiddenAimfovBTN setTitle:@"ON" forState:UIControlStateNormal];
        IsFov =true;
        IsAimbotFov = true;
        IsAimbotDis =false;
        [defaults setBool:TRUE forKey:@"AimfovWithDraw"];
        FovRadousVal = AimSlidr[0].value;
    }else{
        IsAimbotFov = false;
        IsAimbotDis =true;
        IsFov =false;
        AimfovBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [AimfovBTN setTitle:@"OFF" forState:UIControlStateNormal];
        AimfovBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"AimfovWithDraw"];
    }
}
//Aimbot circle radius
-(void)InfoSizeValue:(UISlider *)sender {
    float InfoValue = AimSlidr[0].value;
    AimLabel[1].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    FovRadousVal = AimSlidr[0].value;
    [defaults setFloat:AimSlidr[0].value forKey:@"InfoSizeValue"];
}
//HeadShootChance head shoot chance
-(void)HeadShootChance:(UISlider *)sender {
    float InfoValue = AimSlidr[1].value;
    AimLabel[3].text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    [defaults setFloat:InfoValue forKey:@"HeadShootChance"];
    //Root
    [ITSVIEW getHeadShootChancePlace];
    /*
    if(AimSlidr[1].value < 33){
        IsAimRoot =true;
        IsAimNeck =false;
        IsAimHead =false;
    }
    //chest
    if(AimSlidr[1].value >= 33 && AimSlidr[1].value < 66 ){
        IsAimRoot =false;
        IsAimNeck =true;
        IsAimHead =false;
    }
    //Head
    if(AimSlidr[1].value >= 66){
        IsAimRoot =false;
        IsAimNeck =false;
        IsAimHead =true;
    }
    */
}
+ (void)getHeadShootChancePlace{
    if(AimSlidr[1].value < 33){
        IsAimRoot =true;
        IsAimNeck =false;
        IsAimHead =false;
    }
    //chest
    if(AimSlidr[1].value >= 33 && AimSlidr[1].value < 66 ){
        IsAimRoot =false;
        IsAimNeck =true;
        IsAimHead =false;
    }
    //Head
    if(AimSlidr[1].value >= 66){
        IsAimRoot =false;
        IsAimNeck =false;
        IsAimHead =true;
    }
}
//Autofire
-(void)AutofireBTN:(id)sender {
    AutofireBTN = (UIButton *)sender;
    if (!AutofireBTN.selected) {
        FIRE.hidden = NO;
        AutofireBTN.selected = YES;
        AutofireBTN.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [AutofireBTN setTitle:@"ON" forState:UIControlStateNormal];
        [defaults setBool:TRUE forKey:@"AutofireBTN"];
    }else{
        FIRE.hidden = YES;
        IsAutofire = false;
        AutofireBTN.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [AutofireBTN setTitle:@"OFF" forState:UIControlStateNormal];
        AutofireBTN.selected = NO;
        [defaults setBool:FALSE forKey:@"AutofireBTN"];
    }
}
//autofireInterval:
-(void)autofireInterval:(UISlider*)sender {
    float InfoValue1 = Auto1Interval.value;
    AUTOLabInterval.text = [NSString stringWithFormat:@"%0.0f",InfoValue1];
    Interval = Auto1Interval.value;
    [defaults setFloat:Auto1Interval.value forKey:@"autofireInterval"];
}
//autofire distance
-(void)autofire:(id)sender {
    float InfoValue = Auto1.value;
    AUTOLab.text = [NSString stringWithFormat:@"%0.0f",InfoValue];
    [defaults setFloat:InfoValue forKey:@"autofire"];
}



- (void)Head {
    [self ChestFalse];
    [self RootFalse];
    IsAimHead =true;
    [Head setTitle:@"Head" forState:UIControlStateNormal];
    Head.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
    [Head addTarget:self action:@selector(HeadFalse) forControlEvents:UIControlEventTouchUpInside];
}
- (void)HeadFalse {
    IsAimHead =false;
    [Head setTitle:@"Head" forState:UIControlStateNormal];
    Head.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [Head addTarget:self action:@selector(Head) forControlEvents:UIControlEventTouchUpInside];
}
- (void)Chest {
    [self RootFalse];
    [self HeadFalse];
    IsAimNeck =true;
    [Chest setTitle:@"Chest" forState:UIControlStateNormal];
    Chest.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
    [Chest addTarget:self action:@selector(ChestFalse) forControlEvents:UIControlEventTouchUpInside];
}
- (void)ChestFalse {
    IsAimNeck =false;
    [Chest setTitle:@"Chest" forState:UIControlStateNormal];
    Chest.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [Chest addTarget:self action:@selector(Chest) forControlEvents:UIControlEventTouchUpInside];
}
- (void)Root {
    [self ChestFalse];
    [self HeadFalse];
    IsAimRoot =true;
    [Root setTitle:@"Root" forState:UIControlStateNormal];
    Root.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
    [Root addTarget:self action:@selector(RootFalse) forControlEvents:UIControlEventTouchUpInside];
}
- (void)RootFalse {
    IsAimRoot =false;
    [Root setTitle:@"Root" forState:UIControlStateNormal];
    Root.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
    [Root addTarget:self action:@selector(Root) forControlEvents:UIControlEventTouchUpInside];
}
//arabic ؏
-(void)ar:(id)sender {
    AR_language = true; // 设置语言标志为true
    ar = (UIButton *)sender; // 获取触发事件的按钮
    if (!ar.selected) { // 如果当前未选中
        ar.selected = YES; // 设置为选中状态
        en.selected = NO; // 取消另一个按钮的选中状态
        en.backgroundColor = Red; // 设置另一个按钮的背景颜色为红色
        ar.backgroundColor = Green; // 设置当前按钮的背景颜色为绿色
        [ar setTitle:@"Ch" forState:UIControlStateNormal]; // 更新当前按钮标题为中文
        [en setTitle:@"En" forState:UIControlStateNormal]; // 更新另一个按钮标题为英文

        // 更新各功能标题
        [Munu3 setTitle:@"自瞄设置" forState:UIControlStateNormal];
        AimAssis.text = @"自瞄";
        [AimAssis sizeToFit];
        IgroneBot.text = @"忽略人机";
        [IgroneBot sizeToFit];
        IgoroneVis.text = @"隔墙自瞄";
        [IgoroneVis sizeToFit];
        IgorneKnock.text = @"倒地自瞄";
        [IgorneKnock sizeToFit];
        TurnRat[0].text = @"预判强度"; // slider
        Aimfov.text = @"开镜自瞄";
        [Aimfov sizeToFit];
        HiddenAimfov.text = @"自瞄圆圈";
        [HiddenAimfov sizeToFit];
        AimLabel[0].text = @"自瞄圈大小"; // slider
        AimLabel[2].text = @"打击部位"; // slider
        AutofireLab.text = @"自动开火";
        [AutofireLab sizeToFit];
        AUTOFIRE_SLiderLabInterval.text = @"自动开火间隙"; // slider
        AUTOFIRESLiderLab.text = @"自动开火距离"; // slider

        [Munu2 setTitle:@"开火设置" forState:UIControlStateNormal];
        NoScoLable[0].text = @"开启按钮";
        [NoScoLable[0] sizeToFit];
        AutFirBuSizLabel1.text = @"按钮尺寸"; // slider
        NoScoLable[4].text = @"开火自瞄距离"; // slider
        NoScoLable[2].text = @"预判强度"; // slider

        [Munu1 setTitle:@"绘制设置" forState:UIControlStateNormal];
        EspLabel[0].text = @"人物信息";
        [EspLabel[0] sizeToFit];
        Wepaon.text = @"人物手持";
        [Wepaon sizeToFit];
        Sniper.text = @"全局加速";
        [Sniper sizeToFit];
        EspLabel[1].text = @"敌人总数";
        [EspLabel[1] sizeToFit];
        Arrow.text = @"背敌预警";
        [Arrow sizeToFit];
        EspLabel[2].text = @"物资绘制";
        [EspLabel[2] sizeToFit];
        DrawLinwLabel.text = @"人物射线";
        Vheiclebox.text = @"载具绘制";
        [Vheiclebox sizeToFit];
        EspLabel[3].text = @"空头透视";
        [EspLabel[3] sizeToFit];
        Lootbox.text = @"盒子透视";
        [Lootbox sizeToFit];
        GrendeWarring.text = @"手雷预警";
        [GrendeWarring sizeToFit];

        [Munu4 setTitle:@"其他功能" forState:UIControlStateNormal];
        BunnyHup.text = @"القفز المستمر";
        [BunnyHup sizeToFit];
        lang.text = @"语言";
        [lang sizeToFit];
        ResetGusetLab.text = @"重置游客";
        [ResetGusetLab sizeToFit];

        [Munu5 setTitle:@"项目概况" forState:UIControlStateNormal];
        [Munu5 sizeToFit];
        [Munu6 setTitle:@"自瞄简介" forState:UIControlStateNormal];
        [Munu6 sizeToFit];
        [Munu7 setTitle:@"在浏览器打开" forState:UIControlStateNormal];
        [Munu7 sizeToFit];
        [Munu8 setTitle:@"下载设置" forState:UIControlStateNormal];
        [Munu8 sizeToFit];
        [back setTitle:@"<-返回" forState:UIControlStateNormal];
        [Exet setTitle:@"[x]关闭菜单" forState:UIControlStateNormal];

        // 设置语言偏好
        [defaults setBool:FALSE forKey:@"en"];
        [defaults setBool:TRUE forKey:@"ar"];
    } else { // 如果已经选中
        ar.backgroundColor = Red; // 设置为红色
        [ar setTitle:@"Ch" forState:UIControlStateNormal]; // 恢复按钮标题
        ar.selected = NO; // 取消选中状态
        [defaults setBool:TRUE forKey:@"en"]; // 更新语言偏好
        [defaults setBool:FALSE forKey:@"ar"];
    }
}//English En
-(void)en:(id)sender {
    AR_language = false;
    en = (UIButton *)sender;
    if (!en.selected) {
        en.selected = YES;
        ar.selected = NO;
        en.backgroundColor = Green;
        ar.backgroundColor = Red;
        [en setTitle:@"En" forState:UIControlStateNormal];
        [Munu3 setTitle:@"Aimbot" forState:UIControlStateNormal];
        AimAssis.text = @"Aim Assist";
        [AimAssis sizeToFit];
        IgroneBot.text = @"Ignore bots";
        [IgroneBot sizeToFit];
        IgoroneVis.text = @"Traget non-visible";
        [IgoroneVis sizeToFit];
        IgorneKnock.text = @"Target Knocked dwon";
        [IgorneKnock sizeToFit];
        TurnRat[0].text = @"Turn rate";
        //HiddenFOV.name = @"Field Of View";
        Aimfov.text = @"Aimbot circle";
        [Aimfov sizeToFit];
        HiddenAimfov.text = @"Draw aimbot circle";
        [HiddenAimfov sizeToFit];
        AimLabel[0].text = @"Aimbot circle radius";
        AimLabel[2].text = @" Head Shoot chance";
        AutofireLab.text = @"Autofire";
        [AutofireLab sizeToFit];
        AUTOFIRE_SLiderLabInterval.text = @"Auto-Fire interval";
        AUTOFIRESLiderLab.text = @"Autofire Distance";
        [Munu2 setTitle:@"NO scope Aimbot" forState:UIControlStateNormal];
        NoScoLable[0].text = @"Enable Aimbot button";
        [NoScoLable[0] sizeToFit];
        NoScoLable[1].text = @"Aimbot button is toggle";
        [NoScoLable[1] sizeToFit];
        AutFirBuSizLabel1.text = @"Aimbot button size";
        NoScoLable[4].text = @"No scope Aimbot distance";
        NoScoLable[2].text = @"Turn rate";
        NoScoLable[6].text = @"Filed of view";
        [Munu1 setTitle:@"Esp" forState:UIControlStateNormal];
        EspLabel[0].text = @"Enemy Esp";
        [EspLabel[0] sizeToFit];
        Wepaon.text = @"Enemy Esp Weapon";
        [Wepaon sizeToFit];
        Sniper.text = @"Weapon only if sniper";
        [Sniper sizeToFit];
        EspLabel[1].text = @"Awareness text";
        [EspLabel[1] sizeToFit];
        //EspLabelSlider[0].text = @"iAwareness text size ";
        //[EspLabelSlider[0] sizeToFit];
        Arrow.text = @"iAwareness arrows";
        [Arrow sizeToFit];
        EspLabelSlider[2].text = @"iAwareness arrow scale";
        EspLabelSlider[4].text = @"iAwareness arrow margin";
        EspLabel[2].text = @"Item ESP";
        [EspLabel[2] sizeToFit];
        //EspLabelSlider[6].text = @"Magazine count";
        DrawLinwLabel.text = @"Enemy lines";
        Vheiclebox.text = @"Vechcle ESP";
        [Vheiclebox sizeToFit];
        EspLabel[3].text = @"Airdrop ESP";
        [EspLabel[3] sizeToFit];
        Lootbox.text = @"TombBox ESP";
        [Lootbox sizeToFit];
        GrendeWarring.text = @"Grenade ESP";
        [GrendeWarring sizeToFit];
        EspLabelSlider[8].text = @"ESP text size";
        EspLabelSlider[10].text = @"ESP box thickness";
        EspLabelSlider[12].text = @"ESP skeleton thickness";
        [Munu4 setTitle:@"Other" forState:UIControlStateNormal];
        BunnyHup.text = @"Bunny hop";
        [BunnyHup sizeToFit];
        lang.text = @"Languages";
        [lang sizeToFit];
        ResetGusetLab.text = @"Reset Guset";
        [Munu5 setTitle:@"Item profile             None" forState:UIControlStateNormal];
        [Munu5 sizeToFit];
        [Munu6 setTitle:@"Aimbot profile           None" forState:UIControlStateNormal];
        [Munu6 sizeToFit];
        [Munu7 setTitle:@"Open settings in browser" forState:UIControlStateNormal];
        [Munu7 sizeToFit];
        [Munu8 setTitle:@"v Downlaod settings" forState:UIControlStateNormal];
        [Munu8 sizeToFit];
        [back setTitle:@"<-Go Back" forState:UIControlStateNormal];
        [back sizeToFit];
        [Exet setTitle:@"[x]Close Menu" forState:UIControlStateNormal];
        [Exet sizeToFit];
        [defaults setBool:TRUE forKey:@"en"];
        [defaults setBool:FALSE forKey:@"ar"];
        /*
         [Munu4 setTitle:@"Other" forState:UIControlStateNormal];
         [en setTitle:@"En" forState:UIControlStateNormal];
         lang.text = @"Languages";
         ResetGusetLab.text = @"ResetGuset";
         [Exet setTitle:@"[x]Close Menu" forState:UIControlStateNormal];
         [back setTitle:@"<-Go Back" forState:UIControlStateNormal];
         AUTOLab.text = @"10.00";
         AUTOFIRESLiderLab.text = @"Autofire Distance";
         AutofireLab.text = @"Autofire";
         [Root setTitle:@"Root" forState:UIControlStateNormal];
         [Chest setTitle:@"Chest" forState:UIControlStateNormal];
         [Head setTitle:@"Head" forState:UIControlStateNormal];
         HeadShootLab.text = @"Aim Location";
         foVLAB.text = @"FOV:10.00";
         FOV.text = @"Aimbot circle radius";
         Aimfov.text = @"Draw AimbotFOV";
         IgoroneVis.text = @"Igrone Visible";
         IgorneKnock.text = @"Igrone Knock";
         IgroneBot.text = @"IgroneBot";
         AimAssis.text = @"Aim Assist";
         [Munu3 setTitle:@"Aimbot" forState:UIControlStateNormal];
         GrendeWarring.text = @"Grende Warring";
         Other.text = @"Other Attachment";
         Lootbox.text = @"Lootbox";
         Vheiclebox.text = @"Vehicle Box";
         Vheicle.text = @"Vehicle";
         Ammo.text = @"Ammo";
         Sniper.text = @"Sniper Weapon";
         SMG.text = @"SMG Weapon";
         AR.text = @"AR Weapon";
         [Munu2 setTitle:@"Matreal" forState:UIControlStateNormal];
         Arrow.text = @"Arrow";
         dis.text = @"Player Distance";
         Wepaon.text = @"Player Weapon";
         Bone.text = @"Player Bone";
         box.text = @"Player Box";
         health.text = @"Player Health";
         name.text = @"Player Name";
         [Munu1 setTitle:@"Esp" forState:UIControlStateNormal];
         */
        ar.backgroundColor = Red;
    }else{
        [defaults setBool:FALSE forKey:@"en"];
        [defaults setBool:TRUE forKey:@"ar"];
        en.backgroundColor = Red;
        [en setTitle:@"En" forState:UIControlStateNormal];
        en.selected = NO;
    }
}
//Reset Guset
-(void)ResetGuset:(id)sender {
    ResetGuset = (UIButton *)sender;
    if (!ResetGuset.selected) {
        ResetGuset.selected = YES;
        ResetGuset.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [ResetGuset setTitle:@"ON" forState:UIControlStateNormal];
    }else{
        ResetGuset.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [ResetGuset setTitle:@"OFF" forState:UIControlStateNormal];
        ResetGuset.selected = NO;
    }
}
//Bunny hop
-(void)BunnyHopAction:(id)sender {
    BunnyHupButton = (UIButton *)sender;
    if (!BunnyHupButton.selected) {
        IsJump = true;
        //AUOTJUMPAN = false;
        BunnyHupButton.selected = YES;
        BunnyHupButton.backgroundColor = [UIColor colorWithRed: 0.05 green: 0.70 blue: 0.03 alpha: 1.00];
        [BunnyHupButton setTitle:@"ON" forState:UIControlStateNormal];
        [defaults setBool:TRUE forKey:@"BunnyHopAction"];
    }else{
        //AUOTJUMPAN = true;
        IsJump = false;
        BunnyHupButton.backgroundColor = [UIColor colorWithRed: 0.67 green: 0.00 blue: 0.01 alpha: 1.00];
        [BunnyHupButton setTitle:@"OFF" forState:UIControlStateNormal];
        BunnyHupButton.selected = NO;
        [defaults setBool:FALSE forKey:@"BunnyHopAction"];
    }
}
- (void)buttonDragged:(UIButton *)button withEvent:(UIEvent *)event {
    UITouch *touch = [[event touchesForView:button] anyObject];
    CGPoint previousLocation = [touch previousLocationInView:button];
    CGPoint location = [touch locationInView:button];
    CGFloat delta_x = location.x - previousLocation.x;
    CGFloat delta_y = location.y - previousLocation.y;
    button.center = CGPointMake(button.center.x + delta_x, button.center.y + delta_y);
}
- (void)auttofireison {
    IsAutofire =true;
    IsAimbotDis =true;
    IsFov =false;
    IsAimbotFov =false;
    FIRE.backgroundColor = [UIColor greenColor];
    [FIRE addTarget:self action:@selector(auttofireisoff) forControlEvents:UIControlEventTouchUpInside];
}
- (void)auttofireisoff {
    IsAutofire =false;
    IsAimbotDis =false;
    FIRE.backgroundColor = [UIColor redColor];
    [FIRE addTarget:self action:@selector(auttofireison) forControlEvents:UIControlEventTouchUpInside];
}
static UILabel * _Nonnull nameLabel[60];//+
int enmCount;
- (void)playerName:(NSString*)PlayerName size:(float)fontSize color:(UIColor*)TextColor loc:(CGPoint)TextLocation
{
    enmCount++;
    //float width = 100;
    //float height = 14;
    CGFloat x = TextLocation.x;
    CGFloat y = TextLocation.y;
    if(x>0){// if player exist show players names
        nameLabel[enmCount].hidden = NO;
        nameLabel[enmCount].frame = CGRectMake(0, 0, kWidth, kHeight);
        nameLabel[enmCount].center  = CGPointMake(x, y);
        nameLabel[enmCount].text = PlayerName;
        nameLabel[enmCount].textAlignment = NSTextAlignmentCenter;
        nameLabel[enmCount].font = [UIFont fontWithName:@"Courier NewBold It alic" size:5];
        nameLabel[enmCount].textColor = [UIColor greenColor];
    }else{
        nameLabel[enmCount].hidden = YES;;
    }
}

//for load user defaluts setting
-(void)loadDefaults{
    //set   [defaults setBool:TRUE forKey:@"sw1"];
    //get   if ([defaults boolForKey:@"sw2"] == TRUE)
    
    //Aimbot menu ------------------------------------
    NSString *OnText = @"ON";
    //button
    if ([defaults boolForKey:@"AimAssisBTN"] == TRUE){
        AimAssisBTN.selected = YES;
        AimAssisBTN.backgroundColor = Green;
        [AimAssisBTN setTitle:OnText forState:UIControlStateNormal];
        [self AimAssisBTN:nil];
        
    }
    
    //button
    if ([defaults boolForKey:@"IgroneBotBTN"] == TRUE){
        IgroneBotBTN.selected = YES;
        IgroneBotBTN.backgroundColor = Green;
        [IgroneBotBTN setTitle:OnText forState:UIControlStateNormal];
        [self IgroneBotBTN:nil];
    }
    
    //button
    if ([defaults boolForKey:@"IgoroneVisBTN"] == TRUE){
        IgoroneVisBTN.selected = YES;
        IgoroneVisBTN.backgroundColor = Green;
        [IgoroneVisBTN setTitle:OnText forState:UIControlStateNormal];
        [self IgoroneVisBTN:nil];
    }
    
    //button
    if ([defaults boolForKey:@"IgorneKnockBTN"] == TRUE){
        IgorneKnockBTN.selected = YES;
        IgorneKnockBTN.backgroundColor = Green;
        [IgorneKnockBTN setTitle:OnText forState:UIControlStateNormal];
        [self IgorneKnockBTN:nil];
    }
    
    //slider
    float AimTR = [defaults floatForKey:@"AimTurnRate"];
    TurnRateSlider.value = AimTR;
    TurnRat[1].text = [NSString stringWithFormat:@"%0.0f",AimTR];
    AimTurnRateSlidVal = TurnRateSlider.value;
    
    
    //button
    if ([defaults boolForKey:@"AimfovNoDraw"] == TRUE){
        AimAssisBTN.selected = YES;
        AimfovBTN.backgroundColor = Green;
        [AimfovBTN setTitle:OnText forState:UIControlStateNormal];
        [self AimfovNoDraw:nil];
    }
   
    //button
    if ([defaults boolForKey:@"AimfovWithDraw"] == TRUE){
        AimAssisBTN.selected = YES;
        HiddenAimfovBTN.backgroundColor = Green;
        [HiddenAimfovBTN setTitle:OnText forState:UIControlStateNormal];
        [self AimfovWithDraw:nil];
    }
    
    
    //Slider Float
    float InfoSize = [defaults floatForKey:@"InfoSizeValue"];
    AimSlidr[0].value = InfoSize;
    AimLabel[1].text = [NSString stringWithFormat:@"%0.0f",InfoSize];
    FovRadousVal = InfoSize;
    
    
    //Slider
    float HeadShootCh = [defaults floatForKey:@"HeadShootChance"];
    AimSlidr[1].value = InfoSize;
    AimLabel[3].text = [NSString stringWithFormat:@"%0.0f",HeadShootCh];
    [ITSVIEW getHeadShootChancePlace];
    
    
    //button
    if ([defaults boolForKey:@"AutofireBTN"] == TRUE){
        AimAssisBTN.selected = YES;
        AutofireBTN.backgroundColor = Green;
        [AutofireBTN setTitle:OnText forState:UIControlStateNormal];
        [self AutofireBTN:nil];
    }
    
    
    //Slider
    float autofireInt = [defaults floatForKey:@"autofireInterval"];
    Auto1Interval.value = autofireInt;
    AUTOLabInterval.text = [NSString stringWithFormat:@"%0.0f",autofireInt];
    Interval = autofireInt;
    
    //Slider
    float autofire_f = [defaults floatForKey:@"autofire"];
    Auto1.value = autofire_f;
    AUTOLab.text = [NSString stringWithFormat:@"%0.0f",autofire_f];
    
    
    //No scope Aimbot menu -------------------------------------------
    
    //button
    if ([defaults boolForKey:@"AutofireBTN"] == TRUE){
        NoScoButt[0].selected = YES;
        NoScoButt[0].backgroundColor = Green;
        [NoScoButt[0] setTitle:OnText forState:UIControlStateNormal];
        [self AimButOn:nil];
    }
    //button
    if ([defaults boolForKey:@"AutofireBTN"] == TRUE){
        NoScoButt[1].selected = YES;
        NoScoButt[1].backgroundColor = Green;
        [NoScoButt[1] setTitle:OnText forState:UIControlStateNormal];
        [self AimButTogg:nil];
    }
    
    //AutoFireButSizeEvent -float
    AutFirBuSiz.value = [defaults floatForKey:@"AutoFireButSizeEvent"];
    [self AutoFireButSizeEvent:nil];
    /*
    float InfoValue1 = [defaults floatForKey:@"AutoFireButSizeEvent"];
    AutoFireCircelSize = CGSizeMake(30+AutFirBuSiz.value, 30+AutFirBuSiz.value);// w,h
    AutFirBuSizLabel2.text = [NSString stringWithFormat:@"%0.0f",InfoValue1];
    FIRE.frame = CGRectMake(FIRE.frame.origin.x, FIRE.frame.origin.y, AutoFireCircelSize.width, AutoFireCircelSize.height);
    [FIRE setBounds:CGRectMake(FIRE.frame.origin.x, FIRE.frame.origin.y, AutoFireCircelSize.width, AutoFireCircelSize.height)];
    FIRE.layer.cornerRadius = AutoFireCircelSize.width/2.0f;*/
    
    //NoScopeAimDisSliderEvent     -float
    NoScopSlider[1].value = [defaults floatForKey:@"NoScopeAimDisSliderEvent"];
    [self NoScopeAimDisSliderEvent:nil];
    /*
    float InfoValue2 = [defaults floatForKey:@"NoScopeAimDisSliderEvent"]; //slider current value for iAwareness arrow scale
    NoScoLable[5].text = [NSString stringWithFormat:@"%0.0f",InfoValue2];
    NoScopeAimDisSliderVal = InfoValue2;*/
    
    //NoScopeTurnRateSliderEvent     -float
    NoScopSlider[0].value = [defaults floatForKey:@"NoScopeTurnRateSliderEvent"];
    [self NoScopeTurnRateSliderEvent:nil];
    /*
    float InfoValue3 = [defaults floatForKey:@"NoScopeTurnRateSliderEvent"];
    NoScoLable[3].text = [NSString stringWithFormat:@"%0.0f",InfoValue3];
    TurnRate = InfoValue3;*/
    
    //NoScopeFOVSliderEvent     -float
    NoScopSlider[2].value = [defaults floatForKey:@"NoScopeFOVSliderEvent"];
    [self NoScopeFOVSliderEvent:nil];
    
    /*
    float InfoValue4 = [defaults floatForKey:@"NoScopeFOVSliderEvent"];
    NoScoLable[7].text = [NSString stringWithFormat:@"%0.0f",InfoValue4];
    NoScopeFOVSliderVal = InfoValue4;*/
    
    
    
    //ESP menu --------------------------------------------------------
    
    //button
    if ([defaults boolForKey:@"EnemyEsp"] == TRUE){
        EspButton[0].selected = YES;
        EspButton[0].backgroundColor = Green;
        [EspButton[0] setTitle:OnText forState:UIControlStateNormal];
        [self EnemyEsp:nil];
    }
    
    //button
    if ([defaults boolForKey:@"WepaonBTN"] == TRUE){
        WepaonBTN.selected = YES;
        WepaonBTN.backgroundColor = Green;
        [WepaonBTN setTitle:OnText forState:UIControlStateNormal];
        [self WepaonBTN:nil];
    }
    
    //SniperBTN    SniperBTN
    if ([defaults boolForKey:@"SniperBTN"] == TRUE){
        SniperBTN.selected = YES;
        SniperBTN.backgroundColor = Green;
        [SniperBTN setTitle:OnText forState:UIControlStateNormal];
        [self SniperBTN:nil];
    }
    
    //iAwareText    EspButton[1]
    if ([defaults boolForKey:@"iAwareText"] == TRUE){
        EspButton[1].selected = YES;
        EspButton[1].backgroundColor = Green;
        [EspButton[1] setTitle:OnText forState:UIControlStateNormal];
        [self iAwareText:nil];
    }
    
    //iAwareTexSiz    EspSliders[0].value    -float
    EspSliders[0].value = [defaults floatForKey:@"iAwareTexSiz"];
    [self iAwareTexSiz:nil];


    //ArrowBTN     ArrowBTN
    if ([defaults boolForKey:@"ArrowBTN"] == TRUE){
        ArrowBTN.selected = YES;
        ArrowBTN.backgroundColor = Green;
        [ArrowBTN setTitle:OnText forState:UIControlStateNormal];
        [self ArrowBTN:nil];
    }
    //iAwareArrScale    EspSliders[1].value    -float
    EspSliders[1].value = [defaults floatForKey:@"iAwareArrScale"];
    [self iAwareArrScale:nil];
    
    //iAwareArrMarg    EspSliders[2].value    -float
    EspSliders[2].value = [defaults floatForKey:@"iAwareArrMarg"];
    [self iAwareArrMarg:nil];
    
    //IteamESP    EspButton[2]
    if ([defaults boolForKey:@"IteamESP"] == TRUE){
        EspButton[2].selected = YES;
        EspButton[2].backgroundColor = Green;
        [EspButton[2] setTitle:OnText forState:UIControlStateNormal];
        [self IteamESP:nil];
    }
    //DrawLineEspEevent    DrawLineBTN
    if ([defaults boolForKey:@"DrawLineEspEevent"] == TRUE){
        DrawLineBTN.selected = YES;
        DrawLineBTN.backgroundColor = Green;
        [DrawLineBTN setTitle:OnText forState:UIControlStateNormal];
        [self DrawLineEspEevent:nil];
    }
    //VheicleboxBTN    VheicleboxBTN
    if ([defaults boolForKey:@"VheicleboxBTN"] == TRUE){
        VheicleboxBTN.selected = YES;
        VheicleboxBTN.backgroundColor = Green;
        [VheicleboxBTN setTitle:OnText forState:UIControlStateNormal];
        [self VheicleboxBTN:nil];
    }
    //AirDroESP    EspButton[3]
    if ([defaults boolForKey:@"AirDroESP"] == TRUE){
        EspButton[3].selected = YES;
        EspButton[3].backgroundColor = Green;
        [EspButton[3] setTitle:OnText forState:UIControlStateNormal];
        [self AirDroESP:nil];
    }
    //LootboxBTN    LootboxBTN
    if ([defaults boolForKey:@"LootboxBTN"] == TRUE){
        LootboxBTN.selected = YES;
        LootboxBTN.backgroundColor = Green;
        [LootboxBTN setTitle:OnText forState:UIControlStateNormal];
        [self LootboxBTN:nil];
    }
    //GrendeWarringBTN     GrendeWarringBTN
    if ([defaults boolForKey:@"GrendeWarringBTN"] == TRUE){
        GrendeWarringBTN.selected = YES;
        GrendeWarringBTN.backgroundColor = Green;
        [GrendeWarringBTN setTitle:OnText forState:UIControlStateNormal];
        [self GrendeWarringBTN:nil];
    }

    //EspTextSiz    EspSliders[4].value    -float
    EspSliders[4].value = [defaults floatForKey:@"EspTextSiz"];
    [self EspTextSiz:nil];
    
    //EspBoxThik    EspSliders[5].value    -float
    EspSliders[5].value = [defaults floatForKey:@"EspBoxThik"];
    [self EspBoxThik:nil];
    
    //EspSktonThik    EspSliders[6].value    -float
    EspSliders[6].value = [defaults floatForKey:@"EspSktonThik"];
    [self EspSktonThik:nil];

    
    
    
    
    
    
    //Other menu -------------------------------------------------------
    
    //BunnyHopAction
    if ([defaults boolForKey:@"BunnyHopAction"] == TRUE){
        BunnyHupButton.selected = YES;
        BunnyHupButton.backgroundColor = Green;
        [BunnyHupButton setTitle:OnText forState:UIControlStateNormal];
        [self BunnyHopAction:nil];
    }
    //ar:
    if ([defaults boolForKey:@"ar"] == TRUE){
        ar.selected = YES;
        ar.backgroundColor = Green;
        en.backgroundColor = Red;
        [ar setTitle:@"Ch" forState:UIControlStateNormal];
        [en setTitle:@"En" forState:UIControlStateNormal];
        [self ar:nil];
    }
    //en:
    if ([defaults boolForKey:@"en"] == TRUE){
        en.selected = YES;
        en.backgroundColor = Green;
        ar.backgroundColor = Red;
        [self en:nil];
    }
    //ResetGuset:      //will not setup with defaults
}
@end

