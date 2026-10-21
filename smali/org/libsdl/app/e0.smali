.class public final Lorg/libsdl/app/e0;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Landroid/view/InputDevice$MotionRange;

    .line 2
    .line 3
    check-cast p2, Landroid/view/InputDevice$MotionRange;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/16 v0, 0x17

    .line 14
    .line 15
    const/16 v1, 0x16

    .line 16
    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    move p1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    move p1, v1

    .line 24
    :cond_1
    :goto_0
    if-ne p2, v1, :cond_2

    .line 25
    .line 26
    move p2, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    if-ne p2, v0, :cond_3

    .line 29
    .line 30
    move p2, v1

    .line 31
    :cond_3
    :goto_1
    const/16 v0, 0xe

    .line 32
    .line 33
    const/16 v1, 0xd

    .line 34
    .line 35
    const/16 v2, 0xb

    .line 36
    .line 37
    if-ne p1, v2, :cond_4

    .line 38
    .line 39
    move p1, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_4
    if-le p1, v2, :cond_5

    .line 42
    .line 43
    if-ge p1, v0, :cond_5

    .line 44
    .line 45
    add-int/lit8 p1, p1, -0x1

    .line 46
    .line 47
    :cond_5
    :goto_2
    if-ne p2, v2, :cond_6

    .line 48
    .line 49
    move p2, v1

    .line 50
    goto :goto_3

    .line 51
    :cond_6
    if-le p2, v2, :cond_7

    .line 52
    .line 53
    if-ge p2, v0, :cond_7

    .line 54
    .line 55
    add-int/lit8 p2, p2, -0x1

    .line 56
    .line 57
    :cond_7
    :goto_3
    sub-int/2addr p1, p2

    .line 58
    return p1
.end method
