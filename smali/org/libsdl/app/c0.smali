.class public final Lorg/libsdl/app/c0;
.super Lorg/libsdl/app/b0;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# virtual methods
.method public final b(IFI)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/libsdl/app/b0;->a(I)Lorg/libsdl/app/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Rtest: Vibe with intensity "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " for "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "SDL"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    cmpl-float v1, p2, v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lorg/libsdl/app/b0;->a(I)Lorg/libsdl/app/a0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p1, Lorg/libsdl/app/a0;->c:Landroid/os/Vibrator;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    .line 52
    .line 53
    mul-float/2addr p2, v1

    .line 54
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    const/16 v1, 0xff

    .line 59
    .line 60
    if-le p2, v1, :cond_1

    .line 61
    .line 62
    move p2, v1

    .line 63
    :cond_1
    const/4 v1, 0x1

    .line 64
    if-ge p2, v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lorg/libsdl/app/b0;->a(I)Lorg/libsdl/app/a0;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p1, Lorg/libsdl/app/a0;->c:Landroid/os/Vibrator;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    :try_start_0
    iget-object p1, v0, Lorg/libsdl/app/a0;->c:Landroid/os/Vibrator;

    .line 79
    .line 80
    int-to-long v1, p3

    .line 81
    invoke-static {v1, v2, p2}, Ln/a;->b(JI)Landroid/os/VibrationEffect;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p1, p2}, Ln/a;->f(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catch_0
    iget-object p1, v0, Lorg/libsdl/app/a0;->c:Landroid/os/Vibrator;

    .line 90
    .line 91
    int-to-long p2, p3

    .line 92
    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method
