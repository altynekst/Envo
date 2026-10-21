.class public Lorg/libsdl/app/SDLControllerManager;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDLControllerManager"

.field protected static mHapticHandler:Lorg/libsdl/app/b0;

.field protected static mJoystickHandler:Lorg/libsdl/app/d0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/d0;

    .line 2
    .line 3
    check-cast v0, Lorg/libsdl/app/g0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x2

    .line 18
    if-ne v2, v4, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v0, v0, Lorg/libsdl/app/g0;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x0

    .line 31
    move v7, v6

    .line 32
    :cond_0
    if-ge v7, v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    add-int/lit8 v7, v7, 0x1

    .line 39
    .line 40
    check-cast v8, Lorg/libsdl/app/f0;

    .line 41
    .line 42
    iget v9, v8, Lorg/libsdl/app/f0;->a:I

    .line 43
    .line 44
    if-ne v9, v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v8, 0x0

    .line 48
    :goto_0
    if-eqz v8, :cond_3

    .line 49
    .line 50
    move v0, v6

    .line 51
    :goto_1
    iget-object v2, v8, Lorg/libsdl/app/f0;->d:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ge v0, v2, :cond_2

    .line 58
    .line 59
    iget-object v2, v8, Lorg/libsdl/app/f0;->d:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {p0, v5, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getMin()F

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    sub-float/2addr v5, v7

    .line 80
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getRange()F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    div-float/2addr v5, v2

    .line 85
    const/high16 v2, 0x40000000    # 2.0f

    .line 86
    .line 87
    mul-float/2addr v5, v2

    .line 88
    const/high16 v2, 0x3f800000    # 1.0f

    .line 89
    .line 90
    sub-float/2addr v5, v2

    .line 91
    iget v2, v8, Lorg/libsdl/app/f0;->a:I

    .line 92
    .line 93
    invoke-static {v2, v0, v5}, Lorg/libsdl/app/SDLControllerManager;->onNativeJoy(IIF)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    :goto_2
    iget-object v0, v8, Lorg/libsdl/app/f0;->e:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    div-int/2addr v0, v4

    .line 106
    if-ge v6, v0, :cond_3

    .line 107
    .line 108
    iget-object v0, v8, Lorg/libsdl/app/f0;->e:Ljava/util/ArrayList;

    .line 109
    .line 110
    mul-int/lit8 v2, v6, 0x2

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/view/InputDevice$MotionRange;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iget-object v5, v8, Lorg/libsdl/app/f0;->e:Ljava/util/ArrayList;

    .line 131
    .line 132
    add-int/2addr v2, v3

    .line 133
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {p0, v2, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iget v5, v8, Lorg/libsdl/app/f0;->a:I

    .line 152
    .line 153
    invoke-static {v5, v6, v0, v2}, Lorg/libsdl/app/SDLControllerManager;->onNativeHat(IIII)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v6, v6, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    return v3
.end method

.method public static hapticRun(IFI)V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/b0;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lorg/libsdl/app/b0;->b(IFI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static hapticStop(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/b0;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/libsdl/app/b0;->a(I)Lorg/libsdl/app/a0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lorg/libsdl/app/a0;->c:Landroid/os/Vibrator;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static initialize()V
    .locals 2

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/d0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/libsdl/app/g0;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/libsdl/app/g0;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/d0;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/b0;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x1a

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Lorg/libsdl/app/c0;

    .line 23
    .line 24
    invoke-direct {v0}, Lorg/libsdl/app/b0;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/b0;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Lorg/libsdl/app/b0;

    .line 31
    .line 32
    invoke-direct {v0}, Lorg/libsdl/app/b0;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/b0;

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public static isDeviceSDLJoystick(I)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-gez p0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    and-int/lit8 v0, p0, 0x10

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    and-int/lit16 v0, p0, 0x201

    .line 20
    .line 21
    const/16 v2, 0x201

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/16 v0, 0x401

    .line 26
    .line 27
    and-int/2addr p0, v0

    .line 28
    if-ne p0, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    return v1
.end method

.method public static native nativeAddHaptic(ILjava/lang/String;)I
.end method

.method public static native nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIIII)I
.end method

.method public static native nativeRemoveHaptic(I)I
.end method

.method public static native nativeRemoveJoystick(I)I
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeHat(IIII)V
.end method

.method public static native onNativeJoy(IIF)V
.end method

.method public static native onNativePadDown(II)I
.end method

.method public static native onNativePadUp(II)I
.end method

.method public static pollHapticDevices()V
    .locals 11

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/b0;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/libsdl/app/b0;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    array-length v3, v2

    .line 10
    add-int/lit8 v3, v3, -0x1

    .line 11
    .line 12
    :goto_0
    const/4 v4, -0x1

    .line 13
    if-le v3, v4, :cond_1

    .line 14
    .line 15
    aget v4, v2, v3

    .line 16
    .line 17
    invoke-virtual {v0, v4}, Lorg/libsdl/app/b0;->a(I)Lorg/libsdl/app/a0;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    aget v4, v2, v3

    .line 24
    .line 25
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    new-instance v6, Lorg/libsdl/app/a0;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    aget v7, v2, v3

    .line 47
    .line 48
    iput v7, v6, Lorg/libsdl/app/a0;->a:I

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iput-object v4, v6, Lorg/libsdl/app/a0;->b:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v5, v6, Lorg/libsdl/app/a0;->c:Landroid/os/Vibrator;

    .line 57
    .line 58
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget v4, v6, Lorg/libsdl/app/a0;->a:I

    .line 62
    .line 63
    iget-object v5, v6, Lorg/libsdl/app/a0;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v4, v5}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    sget-object v3, Lorg/libsdl/app/i;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    const-string v4, "vibrator"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Landroid/os/Vibrator;

    .line 80
    .line 81
    const v4, 0xf423f

    .line 82
    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Lorg/libsdl/app/b0;->a(I)Lorg/libsdl/app/a0;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    new-instance v0, Lorg/libsdl/app/a0;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    iput v4, v0, Lorg/libsdl/app/a0;->a:I

    .line 105
    .line 106
    const-string v7, "VIBRATOR_SERVICE"

    .line 107
    .line 108
    iput-object v7, v0, Lorg/libsdl/app/a0;->b:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v3, v0, Lorg/libsdl/app/a0;->c:Landroid/os/Vibrator;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iget v3, v0, Lorg/libsdl/app/a0;->a:I

    .line 116
    .line 117
    iget-object v0, v0, Lorg/libsdl/app/a0;->b:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v3, v0}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    move v6, v5

    .line 124
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const/4 v3, 0x0

    .line 129
    move v7, v5

    .line 130
    :cond_4
    :goto_2
    if-ge v7, v0, :cond_9

    .line 131
    .line 132
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    add-int/lit8 v7, v7, 0x1

    .line 137
    .line 138
    check-cast v8, Lorg/libsdl/app/a0;

    .line 139
    .line 140
    iget v8, v8, Lorg/libsdl/app/a0;->a:I

    .line 141
    .line 142
    move v9, v5

    .line 143
    :goto_3
    array-length v10, v2

    .line 144
    if-ge v9, v10, :cond_6

    .line 145
    .line 146
    aget v10, v2, v9

    .line 147
    .line 148
    if-ne v8, v10, :cond_5

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    :goto_4
    if-ne v8, v4, :cond_7

    .line 155
    .line 156
    if-nez v6, :cond_4

    .line 157
    .line 158
    :cond_7
    array-length v10, v2

    .line 159
    if-ne v9, v10, :cond_4

    .line 160
    .line 161
    if-nez v3, :cond_8

    .line 162
    .line 163
    new-instance v3, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_9
    if-eqz v3, :cond_c

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    move v2, v5

    .line 183
    :cond_a
    :goto_5
    if-ge v2, v0, :cond_c

    .line 184
    .line 185
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    add-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    check-cast v4, Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    invoke-static {v4}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveHaptic(I)I

    .line 198
    .line 199
    .line 200
    move v6, v5

    .line 201
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    if-ge v6, v7, :cond_a

    .line 206
    .line 207
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Lorg/libsdl/app/a0;

    .line 212
    .line 213
    iget v7, v7, Lorg/libsdl/app/a0;->a:I

    .line 214
    .line 215
    if-ne v7, v4, :cond_b

    .line 216
    .line 217
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_c
    return-void
.end method

.method public static pollInputDevices()V
    .locals 24

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/d0;

    .line 2
    .line 3
    check-cast v0, Lorg/libsdl/app/g0;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/libsdl/app/g0;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    array-length v3, v2

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    const/4 v6, 0x0

    .line 14
    if-ge v5, v3, :cond_11

    .line 15
    .line 16
    aget v7, v2, v5

    .line 17
    .line 18
    invoke-static {v7}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_10

    .line 23
    .line 24
    iget-object v8, v0, Lorg/libsdl/app/g0;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    const/4 v10, 0x0

    .line 31
    :cond_0
    if-ge v10, v9, :cond_1

    .line 32
    .line 33
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    add-int/lit8 v10, v10, 0x1

    .line 38
    .line 39
    check-cast v11, Lorg/libsdl/app/f0;

    .line 40
    .line 41
    iget v12, v11, Lorg/libsdl/app/f0;->a:I

    .line 42
    .line 43
    if-ne v12, v7, :cond_0

    .line 44
    .line 45
    move-object v6, v11

    .line 46
    :cond_1
    if-nez v6, :cond_10

    .line 47
    .line 48
    invoke-static {v7}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    new-instance v8, Lorg/libsdl/app/f0;

    .line 53
    .line 54
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput v7, v8, Lorg/libsdl/app/f0;->a:I

    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iput-object v7, v8, Lorg/libsdl/app/f0;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-eqz v7, :cond_2

    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-nez v9, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    :goto_1
    iput-object v7, v8, Lorg/libsdl/app/f0;->c:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v7, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v7, v8, Lorg/libsdl/app/f0;->d:Ljava/util/ArrayList;

    .line 90
    .line 91
    new-instance v7, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v7, v8, Lorg/libsdl/app/f0;->e:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v6}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    new-instance v9, Lorg/libsdl/app/e0;

    .line 103
    .line 104
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_6

    .line 119
    .line 120
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    check-cast v9, Landroid/view/InputDevice$MotionRange;

    .line 125
    .line 126
    invoke-virtual {v9}, Landroid/view/InputDevice$MotionRange;->getSource()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    const/16 v11, 0x10

    .line 131
    .line 132
    and-int/2addr v10, v11

    .line 133
    if-eqz v10, :cond_3

    .line 134
    .line 135
    invoke-virtual {v9}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    const/16 v12, 0xf

    .line 140
    .line 141
    if-eq v10, v12, :cond_5

    .line 142
    .line 143
    invoke-virtual {v9}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    if-ne v10, v11, :cond_4

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    iget-object v10, v8, Lorg/libsdl/app/f0;->d:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    :goto_3
    iget-object v10, v8, Lorg/libsdl/app/f0;->e:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    iget v11, v8, Lorg/libsdl/app/f0;->a:I

    .line 166
    .line 167
    iget-object v12, v8, Lorg/libsdl/app/f0;->b:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v13, v8, Lorg/libsdl/app/f0;->c:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Landroid/view/InputDevice;->getVendorId()I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    invoke-virtual {v6}, Landroid/view/InputDevice;->getProductId()I

    .line 179
    .line 180
    .line 181
    move-result v15

    .line 182
    const/16 v7, 0x26

    .line 183
    .line 184
    new-array v9, v7, [I

    .line 185
    .line 186
    fill-array-data v9, :array_0

    .line 187
    .line 188
    .line 189
    new-array v10, v7, [I

    .line 190
    .line 191
    fill-array-data v10, :array_1

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v9}, Landroid/view/InputDevice;->hasKeys([I)[Z

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    const/4 v9, 0x0

    .line 199
    const/16 v17, 0x0

    .line 200
    .line 201
    :goto_4
    if-ge v9, v7, :cond_8

    .line 202
    .line 203
    aget-boolean v16, v6, v9

    .line 204
    .line 205
    if-eqz v16, :cond_7

    .line 206
    .line 207
    aget v16, v10, v9

    .line 208
    .line 209
    or-int v17, v17, v16

    .line 210
    .line 211
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_8
    iget-object v6, v8, Lorg/libsdl/app/f0;->d:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 217
    .line 218
    .line 219
    move-result v18

    .line 220
    iget-object v6, v8, Lorg/libsdl/app/f0;->d:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    const/4 v9, 0x2

    .line 227
    if-lt v7, v9, :cond_9

    .line 228
    .line 229
    const/4 v7, 0x3

    .line 230
    goto :goto_5

    .line 231
    :cond_9
    const/4 v7, 0x0

    .line 232
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    const/4 v4, 0x4

    .line 237
    if-lt v10, v4, :cond_a

    .line 238
    .line 239
    or-int/lit8 v7, v7, 0xc

    .line 240
    .line 241
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    const/4 v10, 0x6

    .line 246
    if-lt v4, v10, :cond_b

    .line 247
    .line 248
    or-int/lit8 v7, v7, 0x30

    .line 249
    .line 250
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    move/from16 v19, v9

    .line 255
    .line 256
    const/4 v9, 0x0

    .line 257
    const/4 v10, 0x0

    .line 258
    const/16 v16, 0x0

    .line 259
    .line 260
    :goto_6
    if-ge v9, v4, :cond_e

    .line 261
    .line 262
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v20

    .line 266
    add-int/lit8 v9, v9, 0x1

    .line 267
    .line 268
    check-cast v20, Landroid/view/InputDevice$MotionRange;

    .line 269
    .line 270
    move-object/from16 v22, v0

    .line 271
    .line 272
    invoke-virtual/range {v20 .. v20}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    const/16 v20, 0x1

    .line 277
    .line 278
    move/from16 v23, v3

    .line 279
    .line 280
    const/16 v3, 0xb

    .line 281
    .line 282
    if-ne v0, v3, :cond_c

    .line 283
    .line 284
    move/from16 v10, v20

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_c
    if-le v0, v3, :cond_d

    .line 288
    .line 289
    const/16 v3, 0xe

    .line 290
    .line 291
    if-ge v0, v3, :cond_d

    .line 292
    .line 293
    move/from16 v16, v20

    .line 294
    .line 295
    :cond_d
    :goto_7
    move-object/from16 v0, v22

    .line 296
    .line 297
    move/from16 v3, v23

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_e
    move-object/from16 v22, v0

    .line 301
    .line 302
    move/from16 v23, v3

    .line 303
    .line 304
    if-eqz v10, :cond_f

    .line 305
    .line 306
    if-eqz v16, :cond_f

    .line 307
    .line 308
    const v0, 0x8000

    .line 309
    .line 310
    .line 311
    or-int/2addr v7, v0

    .line 312
    :cond_f
    iget-object v0, v8, Lorg/libsdl/app/f0;->e:Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    div-int/lit8 v20, v0, 0x2

    .line 319
    .line 320
    const/16 v21, 0x0

    .line 321
    .line 322
    const/16 v16, 0x0

    .line 323
    .line 324
    move/from16 v19, v7

    .line 325
    .line 326
    invoke-static/range {v11 .. v21}, Lorg/libsdl/app/SDLControllerManager;->nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIIII)I

    .line 327
    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_10
    move-object/from16 v22, v0

    .line 331
    .line 332
    move/from16 v23, v3

    .line 333
    .line 334
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 335
    .line 336
    move-object/from16 v0, v22

    .line 337
    .line 338
    move/from16 v3, v23

    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    const/4 v3, 0x0

    .line 347
    :cond_12
    :goto_9
    if-ge v3, v0, :cond_16

    .line 348
    .line 349
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    add-int/lit8 v3, v3, 0x1

    .line 354
    .line 355
    check-cast v4, Lorg/libsdl/app/f0;

    .line 356
    .line 357
    iget v4, v4, Lorg/libsdl/app/f0;->a:I

    .line 358
    .line 359
    const/4 v5, 0x0

    .line 360
    :goto_a
    array-length v7, v2

    .line 361
    if-ge v5, v7, :cond_14

    .line 362
    .line 363
    aget v7, v2, v5

    .line 364
    .line 365
    if-ne v4, v7, :cond_13

    .line 366
    .line 367
    goto :goto_b

    .line 368
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_14
    :goto_b
    array-length v7, v2

    .line 372
    if-ne v5, v7, :cond_12

    .line 373
    .line 374
    if-nez v6, :cond_15

    .line 375
    .line 376
    new-instance v6, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .line 380
    .line 381
    :cond_15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_16
    if-eqz v6, :cond_19

    .line 390
    .line 391
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    const/4 v2, 0x0

    .line 396
    :cond_17
    :goto_c
    if-ge v2, v0, :cond_19

    .line 397
    .line 398
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    add-int/lit8 v2, v2, 0x1

    .line 403
    .line 404
    check-cast v3, Ljava/lang/Integer;

    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    invoke-static {v3}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveJoystick(I)I

    .line 411
    .line 412
    .line 413
    const/4 v4, 0x0

    .line 414
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-ge v4, v5, :cond_17

    .line 419
    .line 420
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    check-cast v5, Lorg/libsdl/app/f0;

    .line 425
    .line 426
    iget v5, v5, Lorg/libsdl/app/f0;->a:I

    .line 427
    .line 428
    if-ne v5, v3, :cond_18

    .line 429
    .line 430
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    goto :goto_c

    .line 434
    :cond_18
    add-int/lit8 v4, v4, 0x1

    .line 435
    .line 436
    goto :goto_d

    .line 437
    :cond_19
    return-void

    .line 438
    nop

    :array_0
    .array-data 4
        0x60
        0x61
        0x63
        0x64
        0x4
        0x52
        0x6e
        0x6c
        0x6a
        0x6b
        0x66
        0x67
        0x13
        0x14
        0x15
        0x16
        0x6d
        0x17
        0x68
        0x69
        0x62
        0x65
        0xbc
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x40
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x10
        0x1
        0x8000
        0x10000
        0x20000
        0x40000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
