.class public Lcom/android/OriginalSettings/motion/ShakeSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ShakeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static final mAnimationImage:[I


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mTutorial:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationImage:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfet 0x0t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
        0x0t 0x1t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
        0x2t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 46
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationIndex:I

    .line 49
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 55
    new-instance v0, Lcom/android/OriginalSettings/motion/ShakeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/ShakeSettings$1;-><init>(Lcom/android/OriginalSettings/motion/ShakeSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/motion/ShakeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/ShakeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/motion/ShakeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->startTryActually()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/motion/ShakeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/motion/ShakeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/motion/ShakeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/motion/ShakeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->stopAnimation()V

    return-void
.end method

.method private showMotionDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    iput-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 152
    iput-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07fd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07fc

    new-instance v3, Lcom/android/OriginalSettings/motion/ShakeSettings$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/motion/ShakeSettings$2;-><init>(Lcom/android/OriginalSettings/motion/ShakeSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0175

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 168
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/OriginalSettings/motion/ShakeSettings$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/ShakeSettings$3;-><init>(Lcom/android/OriginalSettings/motion/ShakeSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 174
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "ShakeSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationIndex:I

    .line 251
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->updateAnimation()V

    .line 253
    :cond_0
    return-void
.end method

.method private startTryActually()V
    .locals 7

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 219
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 220
    const-class v1, Lcom/android/OriginalSettings/motion/ShakeTutorial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b07f8

    const/4 v4, 0x0

    const/16 v6, 0xa

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 223
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "ShakeSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 227
    const-string v0, "ShakeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    iget v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationIndex:I

    .line 233
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationIndex:I

    .line 235
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->stopAnimation()V

    .line 237
    iget v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateCheckedUI()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_shake"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 132
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 80
    instance-of v3, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 81
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 82
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 85
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0b07d7

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 96
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->showGuideDialog()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 102
    const-string v0, "ShakeSettings"

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_shake"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mActivity:Landroid/app/Activity;

    .line 72
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mTutorial:Landroid/preference/Preference;

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 116
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->stopAnimation()V

    .line 117
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->showGuideDialog()V

    .line 141
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->updateCheckedUI()V

    .line 110
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->updateAnimation()V

    .line 111
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 181
    iput-object v6, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    iput-object v6, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 189
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040043

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 190
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f080027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 191
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f080095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 193
    const v4, 0x7f0b07f0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 194
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 195
    const v4, 0x7f0b07d7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 197
    const v4, 0x7f0b07f4

    new-instance v5, Lcom/android/OriginalSettings/motion/ShakeSettings$4;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/ShakeSettings$4;-><init>(Lcom/android/OriginalSettings/motion/ShakeSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0175

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 207
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 208
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/OriginalSettings/motion/ShakeSettings$5;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/ShakeSettings$5;-><init>(Lcom/android/OriginalSettings/motion/ShakeSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 213
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->startAnimation()V

    .line 214
    return-void
.end method
