.class public Lorg/libsdl/app/i0;
.super Landroid/view/SurfaceView;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field protected mDisplay:Landroid/view/Display;

.field protected mHeight:F

.field public mIsSurfaceReady:Z

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "window"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/WindowManager;

    .line 34
    .line 35
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lorg/libsdl/app/i0;->mDisplay:Landroid/view/Display;

    .line 40
    .line 41
    const-string v0, "sensor"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/hardware/SensorManager;

    .line 48
    .line 49
    iput-object p1, p0, Lorg/libsdl/app/i0;->mSensorManager:Landroid/hardware/SensorManager;

    .line 50
    .line 51
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/x;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 56
    .line 57
    .line 58
    const/high16 p1, 0x3f800000    # 1.0f

    .line 59
    .line 60
    iput p1, p0, Lorg/libsdl/app/i0;->mWidth:F

    .line 61
    .line 62
    iput p1, p0, Lorg/libsdl/app/i0;->mHeight:F

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lorg/libsdl/app/i0;->mIsSurfaceReady:Z

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final enableSensor(IZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lorg/libsdl/app/i0;->mSensorManager:Landroid/hardware/SensorManager;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p2, p0, Lorg/libsdl/app/i0;->mSensorManager:Landroid/hardware/SensorManager;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final handlePause()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/i0;->enableSensor(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final handleResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v0}, Lorg/libsdl/app/i0;->enableSensor(IZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/16 v1, 0xb

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    if-eq v0, v4, :cond_0

    .line 24
    .line 25
    return v3

    .line 26
    :cond_0
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1, v0, v1, v3, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_2
    const/16 v1, 0xa

    .line 48
    .line 49
    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/16 v4, 0x9

    .line 54
    .line 55
    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {v3, v0, v1, p1, v3}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 60
    .line 61
    .line 62
    return v2

    .line 63
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-static {v3, v0, v1, p1, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 72
    .line 73
    .line 74
    return v2
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, p3, v0}, Lorg/libsdl/app/SDLActivity;->handleKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputConnection;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lorg/libsdl/app/i0;->mDisplay:Landroid/view/Display;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    if-eq v0, v4, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 26
    .line 27
    aget v3, v0, v3

    .line 28
    .line 29
    aget v0, v0, v1

    .line 30
    .line 31
    move v1, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 34
    .line 35
    aget v1, v0, v1

    .line 36
    .line 37
    aget v0, v0, v3

    .line 38
    .line 39
    neg-float v0, v0

    .line 40
    move v3, v1

    .line 41
    move v1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 44
    .line 45
    aget v3, v0, v3

    .line 46
    .line 47
    neg-float v3, v3

    .line 48
    aget v0, v0, v1

    .line 49
    .line 50
    neg-float v0, v0

    .line 51
    const/4 v1, 0x4

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 54
    .line 55
    aget v4, v0, v1

    .line 56
    .line 57
    neg-float v4, v4

    .line 58
    aget v0, v0, v3

    .line 59
    .line 60
    move v3, v4

    .line 61
    :goto_0
    sget v4, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 62
    .line 63
    if-eq v1, v4, :cond_3

    .line 64
    .line 65
    sput v1, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 66
    .line 67
    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    neg-float v1, v3

    .line 71
    const v3, 0x411ce80a

    .line 72
    .line 73
    .line 74
    div-float/2addr v1, v3

    .line 75
    div-float/2addr v0, v3

    .line 76
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 77
    .line 78
    aget p1, p1, v2

    .line 79
    .line 80
    div-float/2addr p1, v3

    .line 81
    invoke-static {v1, v0, p1}, Lorg/libsdl/app/SDLActivity;->onNativeAccel(FFF)V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    :cond_0
    move v1, p1

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 v2, 0x2002

    .line 23
    .line 24
    const/4 v10, 0x1

    .line 25
    if-eq p1, v2, :cond_b

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v2, 0x3002

    .line 32
    .line 33
    if-ne p1, v2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    const/high16 v11, 0x3f800000    # 1.0f

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    if-eqz v3, :cond_8

    .line 42
    .line 43
    if-eq v3, v10, :cond_8

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    if-eq v3, v4, :cond_5

    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    if-eq v3, v4, :cond_3

    .line 50
    .line 51
    const/4 p1, 0x5

    .line 52
    if-eq v3, p1, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x6

    .line 55
    if-eq v3, p1, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    move p1, v2

    .line 59
    goto :goto_4

    .line 60
    :cond_3
    :goto_0
    if-ge p1, v0, :cond_7

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget v3, p0, Lorg/libsdl/app/i0;->mWidth:F

    .line 71
    .line 72
    div-float v7, v2, v3

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iget v3, p0, Lorg/libsdl/app/i0;->mHeight:F

    .line 79
    .line 80
    div-float v8, v2, v3

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    cmpl-float v3, v2, v11

    .line 87
    .line 88
    if-lez v3, :cond_4

    .line 89
    .line 90
    move v9, v11

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    move v9, v2

    .line 93
    :goto_1
    const/4 v6, 0x1

    .line 94
    move v4, v1

    .line 95
    invoke-static/range {v4 .. v9}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 p1, p1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    :goto_2
    if-ge p1, v0, :cond_7

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    iget v5, p0, Lorg/libsdl/app/i0;->mWidth:F

    .line 112
    .line 113
    div-float/2addr v4, v5

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iget v6, p0, Lorg/libsdl/app/i0;->mHeight:F

    .line 119
    .line 120
    div-float/2addr v5, v6

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    cmpl-float v7, v6, v11

    .line 126
    .line 127
    if-lez v7, :cond_6

    .line 128
    .line 129
    move v6, v11

    .line 130
    :cond_6
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 p1, p1, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_7
    :goto_3
    return v10

    .line 137
    :cond_8
    :goto_4
    if-ne p1, v2, :cond_9

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    :cond_9
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget v4, p0, Lorg/libsdl/app/i0;->mWidth:F

    .line 152
    .line 153
    div-float v4, v0, v4

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iget v5, p0, Lorg/libsdl/app/i0;->mHeight:F

    .line 160
    .line 161
    div-float v5, v0, v5

    .line 162
    .line 163
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    cmpl-float p2, p1, v11

    .line 168
    .line 169
    if-lez p2, :cond_a

    .line 170
    .line 171
    move v6, v11

    .line 172
    goto :goto_5

    .line 173
    :cond_a
    move v6, p1

    .line 174
    :goto_5
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 175
    .line 176
    .line 177
    return v10

    .line 178
    :cond_b
    :goto_6
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string v0, "getButtonState"

    .line 183
    .line 184
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-eqz p1, :cond_c

    .line 194
    .line 195
    check-cast p1, Ljava/lang/Integer;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_7

    .line 202
    :catch_0
    :cond_c
    move p1, v10

    .line 203
    :goto_7
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/x;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0, p2}, Lorg/libsdl/app/x;->a(Landroid/view/MotionEvent;)F

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-virtual {v0, p2}, Lorg/libsdl/app/x;->b(Landroid/view/MotionEvent;)F

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    invoke-virtual {v0}, Lorg/libsdl/app/x;->c()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-static {p1, v3, v1, p2, v0}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 220
    .line 221
    .line 222
    return v10
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .line 1
    const-string p1, "SDL"

    .line 2
    .line 3
    const-string p2, "surfaceChanged()"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    int-to-float p1, p3

    .line 14
    iput p1, p0, Lorg/libsdl/app/i0;->mWidth:F

    .line 15
    .line 16
    int-to-float p1, p4

    .line 17
    iput p1, p0, Lorg/libsdl/app/i0;->mHeight:F

    .line 18
    .line 19
    :try_start_0
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lorg/libsdl/app/i0;->mDisplay:Landroid/view/Display;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 27
    .line 28
    .line 29
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    :try_start_1
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move p2, p3

    .line 35
    :catch_1
    move p1, p4

    .line 36
    :goto_0
    sget-object v0, Lorg/libsdl/app/i;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_2
    sget-object v1, Lorg/libsdl/app/i;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 42
    .line 43
    .line 44
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    const-string v0, "SDL"

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "Window size: "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, "x"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const-string v0, "SDL"

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "Device size: "

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, "x"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lorg/libsdl/app/i0;->mDisplay:Landroid/view/Display;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {p3, p4, p2, p1, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetScreenResolution(IIIIF)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeResize()V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/4 p2, 0x1

    .line 118
    const/4 p3, 0x0

    .line 119
    if-eq p1, p2, :cond_3

    .line 120
    .line 121
    const/4 p4, 0x7

    .line 122
    if-ne p1, p4, :cond_1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_1
    if-eqz p1, :cond_2

    .line 126
    .line 127
    const/4 p4, 0x6

    .line 128
    if-ne p1, p4, :cond_4

    .line 129
    .line 130
    :cond_2
    iget p1, p0, Lorg/libsdl/app/i0;->mWidth:F

    .line 131
    .line 132
    iget p4, p0, Lorg/libsdl/app/i0;->mHeight:F

    .line 133
    .line 134
    cmpg-float p1, p1, p4

    .line 135
    .line 136
    if-gez p1, :cond_4

    .line 137
    .line 138
    :goto_1
    move p1, p2

    .line 139
    goto :goto_3

    .line 140
    :cond_3
    :goto_2
    iget p1, p0, Lorg/libsdl/app/i0;->mWidth:F

    .line 141
    .line 142
    iget p4, p0, Lorg/libsdl/app/i0;->mHeight:F

    .line 143
    .line 144
    cmpl-float p1, p1, p4

    .line 145
    .line 146
    if-lez p1, :cond_4

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    move p1, p3

    .line 150
    :goto_3
    if-eqz p1, :cond_5

    .line 151
    .line 152
    iget p4, p0, Lorg/libsdl/app/i0;->mWidth:F

    .line 153
    .line 154
    iget v0, p0, Lorg/libsdl/app/i0;->mHeight:F

    .line 155
    .line 156
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    .line 157
    .line 158
    .line 159
    move-result p4

    .line 160
    float-to-double v0, p4

    .line 161
    iget p4, p0, Lorg/libsdl/app/i0;->mWidth:F

    .line 162
    .line 163
    iget v2, p0, Lorg/libsdl/app/i0;->mHeight:F

    .line 164
    .line 165
    invoke-static {p4, v2}, Ljava/lang/Math;->max(FF)F

    .line 166
    .line 167
    .line 168
    move-result p4

    .line 169
    float-to-double v2, p4

    .line 170
    div-double/2addr v2, v0

    .line 171
    const-wide v0, 0x3ff3333333333333L    # 1.2

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    cmpg-double p4, v2, v0

    .line 177
    .line 178
    if-gez p4, :cond_5

    .line 179
    .line 180
    const-string p1, "SDL"

    .line 181
    .line 182
    const-string p4, "Don\'t skip on such aspect-ratio. Could be a square resolution."

    .line 183
    .line 184
    invoke-static {p1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move p1, p3

    .line 188
    :cond_5
    if-eqz p1, :cond_6

    .line 189
    .line 190
    sget-object p4, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 191
    .line 192
    invoke-virtual {p4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 193
    .line 194
    .line 195
    move-result p4

    .line 196
    if-eqz p4, :cond_6

    .line 197
    .line 198
    const-string p1, "SDL"

    .line 199
    .line 200
    const-string p4, "Don\'t skip in Multi-Window"

    .line 201
    .line 202
    invoke-static {p1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move p1, p3

    .line 206
    :cond_6
    if-eqz p1, :cond_7

    .line 207
    .line 208
    const-string p1, "SDL"

    .line 209
    .line 210
    const-string p2, "Skip .. Surface is not ready."

    .line 211
    .line 212
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    iput-boolean p3, p0, Lorg/libsdl/app/i0;->mIsSurfaceReady:Z

    .line 216
    .line 217
    return-void

    .line 218
    :cond_7
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceChanged()V

    .line 219
    .line 220
    .line 221
    iput-boolean p2, p0, Lorg/libsdl/app/i0;->mIsSurfaceReady:Z

    .line 222
    .line 223
    sget-object p1, Lorg/libsdl/app/SDLActivity$a;->RESUMED:Lorg/libsdl/app/SDLActivity$a;

    .line 224
    .line 225
    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$a;

    .line 226
    .line 227
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :catchall_0
    move-exception p1

    .line 232
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    throw p1
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    const-string p1, "SDL"

    .line 2
    .line 3
    const-string v0, "surfaceCreated()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceCreated()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    const-string p1, "SDL"

    .line 2
    .line 3
    const-string v0, "surfaceDestroyed()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/libsdl/app/SDLActivity$a;->PAUSED:Lorg/libsdl/app/SDLActivity$a;

    .line 9
    .line 10
    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$a;

    .line 11
    .line 12
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lorg/libsdl/app/i0;->mIsSurfaceReady:Z

    .line 17
    .line 18
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceDestroyed()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
