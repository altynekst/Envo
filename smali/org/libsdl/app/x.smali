.class public abstract Lorg/libsdl/app/x;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# virtual methods
.method public abstract a(Landroid/view/MotionEvent;)F
.end method

.method public abstract b(Landroid/view/MotionEvent;)F
.end method

.method public abstract c()Z
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract e(Z)Z
.end method

.method public abstract f()Z
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x2002

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const v0, 0x1000010

    .line 12
    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x7

    .line 26
    if-eq p1, v0, :cond_3

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    :goto_0
    return v2

    .line 33
    :cond_2
    const/16 v0, 0xa

    .line 34
    .line 35
    invoke-virtual {p2, v0, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/16 v3, 0x9

    .line 40
    .line 41
    invoke-virtual {p2, v3, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {v2, p1, v0, p2, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-static {v2, p1, v0, p2, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 58
    .line 59
    .line 60
    return v1
.end method
