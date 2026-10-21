.class public final Lorg/libsdl/app/c;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/libsdl/app/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/libsdl/app/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/libsdl/app/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/libsdl/app/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/libsdl/app/HIDDeviceManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceManager;->chromebookConnectionHandler()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lorg/libsdl/app/c;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/libsdl/app/e;

    .line 17
    .line 18
    iget-object v0, v0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object v0, p0, Lorg/libsdl/app/c;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lorg/libsdl/app/e;

    .line 27
    .line 28
    iget-object v0, v0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/c;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lorg/libsdl/app/e;

    .line 34
    .line 35
    iget-object v1, v1, Lorg/libsdl/app/e;->k:Lorg/libsdl/app/d;

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    const-string v1, "hidapi"

    .line 40
    .line 41
    const-string v2, "Current operation null in executor?"

    .line 42
    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v1}, Lorg/libsdl/app/d;->a()V

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    :goto_0
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw v1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
