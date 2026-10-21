.class public final synthetic Lorg/libsdl/app/t;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/libsdl/app/t;->a:I

    .line 2
    .line 3
    iput p1, p0, Lorg/libsdl/app/t;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/libsdl/app/t;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lorg/libsdl/app/t;->b:I

    .line 7
    .line 8
    check-cast p1, Landroid/media/AudioDeviceInfo;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lorg/libsdl/app/SDLAudioManager;->b(ILandroid/media/AudioDeviceInfo;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_0
    iget v0, p0, Lorg/libsdl/app/t;->b:I

    .line 16
    .line 17
    check-cast p1, Landroid/media/AudioDeviceInfo;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lorg/libsdl/app/SDLAudioManager;->a(ILandroid/media/AudioDeviceInfo;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
