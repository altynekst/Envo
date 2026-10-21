.class public Lorg/libsdl/app/g;
.super Ljava/lang/Thread;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/h;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/libsdl/app/g;->this$0:Lorg/libsdl/app/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/g;->this$0:Lorg/libsdl/app/h;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/libsdl/app/h;->g:Landroid/hardware/usb/UsbEndpoint;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/libsdl/app/g;->this$0:Lorg/libsdl/app/h;

    .line 12
    .line 13
    iget-boolean v3, v2, Lorg/libsdl/app/h;->j:Z

    .line 14
    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    :try_start_0
    iget-object v3, v2, Lorg/libsdl/app/h;->f:Landroid/hardware/usb/UsbDeviceConnection;

    .line 18
    .line 19
    iget-object v2, v2, Lorg/libsdl/app/h;->g:Landroid/hardware/usb/UsbEndpoint;

    .line 20
    .line 21
    const/16 v4, 0x3e8

    .line 22
    .line 23
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    if-ne v2, v0, :cond_1

    .line 30
    .line 31
    move-object v2, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_1
    iget-object v3, p0, Lorg/libsdl/app/g;->this$0:Lorg/libsdl/app/h;

    .line 39
    .line 40
    iget-boolean v4, v3, Lorg/libsdl/app/h;->k:Z

    .line 41
    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    iget-object v4, v3, Lorg/libsdl/app/h;->a:Lorg/libsdl/app/HIDDeviceManager;

    .line 45
    .line 46
    iget v3, v3, Lorg/libsdl/app/h;->e:I

    .line 47
    .line 48
    invoke-virtual {v4, v3, v2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceInputReport(I[B)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Exception in UsbDeviceConnection bulktransfer: "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "hidapi"

    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method
