.class public final Lorg/libsdl/app/e;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Lorg/libsdl/app/b;


# static fields
.field public static final m:Ljava/util/UUID;

.field public static final n:Ljava/util/UUID;

.field public static final o:Ljava/util/UUID;

.field public static final p:[B


# instance fields
.field public a:Lorg/libsdl/app/HIDDeviceManager;

.field public final b:Landroid/bluetooth/BluetoothDevice;

.field public final c:I

.field public d:Landroid/bluetooth/BluetoothGatt;

.field public e:Z

.field public f:Z

.field public final g:Z

.field public h:Z

.field public i:Z

.field public final j:Ljava/util/LinkedList;

.field public k:Lorg/libsdl/app/d;

.field public final l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "100F6C32-1735-4313-B402-38567131E5F3"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/libsdl/app/e;->m:Ljava/util/UUID;

    .line 8
    .line 9
    const-string v0, "100F6C33-1735-4313-B402-38567131E5F3"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/libsdl/app/e;->n:Ljava/util/UUID;

    .line 16
    .line 17
    const-string v0, "100F6C34-1735-4313-B402-38567131E5F3"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/libsdl/app/e;->o:Ljava/util/UUID;

    .line 24
    .line 25
    const/4 v0, 0x6

    .line 26
    new-array v0, v0, [B

    .line 27
    .line 28
    fill-array-data v0, :array_0

    .line 29
    .line 30
    .line 31
    sput-object v0, Lorg/libsdl/app/e;->p:[B

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 1
        -0x40t
        -0x79t
        0x3t
        0x8t
        0x7t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/libsdl/app/e;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/libsdl/app/e;->f:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lorg/libsdl/app/e;->g:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lorg/libsdl/app/e;->h:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lorg/libsdl/app/e;->i:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lorg/libsdl/app/e;->k:Lorg/libsdl/app/d;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/libsdl/app/e;->a:Lorg/libsdl/app/HIDDeviceManager;

    .line 19
    .line 20
    iput-object p2, p0, Lorg/libsdl/app/e;->b:Landroid/bluetooth/BluetoothDevice;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "SteamController."

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->getDeviceIDForIdentifier(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lorg/libsdl/app/e;->c:I

    .line 45
    .line 46
    iput-boolean v0, p0, Lorg/libsdl/app/e;->e:Z

    .line 47
    .line 48
    iget-object p1, p0, Lorg/libsdl/app/e;->a:Lorg/libsdl/app/HIDDeviceManager;

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "org.chromium.arc.device_management"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput-boolean p1, p0, Lorg/libsdl/app/e;->g:Z

    .line 65
    .line 66
    new-instance p1, Ljava/util/LinkedList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 72
    .line 73
    new-instance p1, Landroid/os/Handler;

    .line 74
    .line 75
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lorg/libsdl/app/e;->l:Landroid/os/Handler;

    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/libsdl/app/e;->h()Landroid/bluetooth/BluetoothGatt;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/libsdl/app/e;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public final b([B)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/libsdl/app/e;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string p1, "hidapi"

    .line 6
    .line 7
    const-string v0, "Attempted sendFeatureReport before Steam Controller is registered!"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p0, Lorg/libsdl/app/e;->f:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p0}, Lorg/libsdl/app/e;->k(Lorg/libsdl/app/e;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, -0x1

    .line 20
    return p1

    .line 21
    :cond_1
    array-length v0, p1

    .line 22
    const/4 v1, 0x1

    .line 23
    sub-int/2addr v0, v1

    .line 24
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 29
    .line 30
    new-instance v3, Lorg/libsdl/app/d;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-boolean v1, v3, Lorg/libsdl/app/d;->e:Z

    .line 36
    .line 37
    iput-object v2, v3, Lorg/libsdl/app/d;->d:Landroid/bluetooth/BluetoothGatt;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    iput v1, v3, Lorg/libsdl/app/d;->a:I

    .line 41
    .line 42
    sget-object v1, Lorg/libsdl/app/e;->o:Ljava/util/UUID;

    .line 43
    .line 44
    iput-object v1, v3, Lorg/libsdl/app/d;->b:Ljava/util/UUID;

    .line 45
    .line 46
    iput-object v0, v3, Lorg/libsdl/app/d;->c:[B

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lorg/libsdl/app/e;->l(Lorg/libsdl/app/d;)V

    .line 49
    .line 50
    .line 51
    array-length p1, p1

    .line 52
    return p1
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/libsdl/app/e;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d([B)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/libsdl/app/e;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string p1, "hidapi"

    .line 6
    .line 7
    const-string v0, "Attempted sendOutputReport before Steam Controller is registered!"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p0, Lorg/libsdl/app/e;->f:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p0}, Lorg/libsdl/app/e;->k(Lorg/libsdl/app/e;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, -0x1

    .line 20
    return p1

    .line 21
    :cond_1
    iget-object v0, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 22
    .line 23
    new-instance v1, Lorg/libsdl/app/d;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v1, Lorg/libsdl/app/d;->e:Z

    .line 30
    .line 31
    iput-object v0, v1, Lorg/libsdl/app/d;->d:Landroid/bluetooth/BluetoothGatt;

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    iput v0, v1, Lorg/libsdl/app/d;->a:I

    .line 35
    .line 36
    sget-object v0, Lorg/libsdl/app/e;->o:Ljava/util/UUID;

    .line 37
    .line 38
    iput-object v0, v1, Lorg/libsdl/app/d;->b:Ljava/util/UUID;

    .line 39
    .line 40
    iput-object p1, v1, Lorg/libsdl/app/d;->c:[B

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lorg/libsdl/app/e;->l(Lorg/libsdl/app/d;)V

    .line 43
    .line 44
    .line 45
    array-length p1, p1

    .line 46
    return p1
.end method

.method public final e([B)Z
    .locals 3

    .line 1
    iget-boolean p1, p0, Lorg/libsdl/app/e;->e:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    const-string p1, "hidapi"

    .line 6
    .line 7
    const-string v0, "Attempted getFeatureReport before Steam Controller is registered!"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p0, Lorg/libsdl/app/e;->f:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p0}, Lorg/libsdl/app/e;->k(Lorg/libsdl/app/e;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_1
    iget-object p1, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 22
    .line 23
    new-instance v0, Lorg/libsdl/app/d;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    sget-object v2, Lorg/libsdl/app/e;->o:Ljava/util/UUID;

    .line 27
    .line 28
    invoke-direct {v0, p1, v1, v2}, Lorg/libsdl/app/d;-><init>(Landroid/bluetooth/BluetoothGatt;ILjava/util/UUID;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lorg/libsdl/app/e;->l(Lorg/libsdl/app/d;)V

    .line 32
    .line 33
    .line 34
    return v1
.end method

.method public final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final g()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final h()Landroid/bluetooth/BluetoothGatt;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/e;->b:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lorg/libsdl/app/e;->a:Lorg/libsdl/app/HIDDeviceManager;

    .line 5
    .line 6
    invoke-virtual {v2}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object v0

    .line 16
    :catch_0
    iget-object v2, p0, Lorg/libsdl/app/e;->a:Lorg/libsdl/app/HIDDeviceManager;

    .line 17
    .line 18
    invoke-virtual {v2}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2, v1, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/e;->k:Lorg/libsdl/app/d;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/libsdl/app/d;

    .line 29
    .line 30
    iput-object v1, p0, Lorg/libsdl/app/e;->k:Lorg/libsdl/app/d;

    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v0, p0, Lorg/libsdl/app/e;->l:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v1, Lorg/libsdl/app/c;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, v2, p0}, Lorg/libsdl/app/c;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v1
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/e;->k:Lorg/libsdl/app/d;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput-object v2, p0, Lorg/libsdl/app/e;->k:Lorg/libsdl/app/d;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object v1, v2

    .line 15
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v0, v1, Lorg/libsdl/app/d;->e:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lorg/libsdl/app/e;->i()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v1
.end method

.method public final k(Lorg/libsdl/app/e;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/libsdl/app/e;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lorg/libsdl/app/e;->f:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "probeService controller="

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "hidapi"

    .line 28
    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lorg/libsdl/app/e;->m:Ljava/util/UUID;

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Found Valve steam controller service "

    .line 69
    .line 70
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    sget-object v3, Lorg/libsdl/app/e;->n:Ljava/util/UUID;

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    const-string v2, "Found input characteristic"

    .line 120
    .line 121
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    const-string v2, "00002902-0000-1000-8000-00805f9b34fb"

    .line 125
    .line 126
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_3

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v2, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 141
    .line 142
    new-instance v3, Lorg/libsdl/app/d;

    .line 143
    .line 144
    const/4 v4, 0x3

    .line 145
    invoke-direct {v3, v2, v4, v1}, Lorg/libsdl/app/d;-><init>(Landroid/bluetooth/BluetoothGatt;ILjava/util/UUID;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v3}, Lorg/libsdl/app/e;->l(Lorg/libsdl/app/d;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_4
    iget-object p1, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_5

    .line 163
    .line 164
    iget-boolean p1, p0, Lorg/libsdl/app/e;->g:Z

    .line 165
    .line 166
    if-eqz p1, :cond_5

    .line 167
    .line 168
    iget-boolean p1, p0, Lorg/libsdl/app/e;->h:Z

    .line 169
    .line 170
    if-nez p1, :cond_5

    .line 171
    .line 172
    const-string p1, "Chromebook: Discovered services were empty; this almost certainly means the BtGatt.ContextMap bug has bitten us."

    .line 173
    .line 174
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lorg/libsdl/app/e;->f:Z

    .line 179
    .line 180
    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lorg/libsdl/app/e;->h:Z

    .line 182
    .line 183
    iget-object p1, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lorg/libsdl/app/e;->h()Landroid/bluetooth/BluetoothGatt;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iput-object p1, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 193
    .line 194
    :cond_5
    :goto_1
    return-void
.end method

.method public final l(Lorg/libsdl/app/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lorg/libsdl/app/e;->i()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method

.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lorg/libsdl/app/e;->n:Ljava/util/UUID;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Lorg/libsdl/app/e;->i:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lorg/libsdl/app/e;->a:Lorg/libsdl/app/HIDDeviceManager;

    .line 18
    .line 19
    iget v0, p0, Lorg/libsdl/app/e;->c:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, v0, p2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceInputReport(I[B)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object p3, Lorg/libsdl/app/e;->o:Ljava/util/UUID;

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Lorg/libsdl/app/e;->i:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lorg/libsdl/app/e;->a:Lorg/libsdl/app/HIDDeviceManager;

    .line 18
    .line 19
    iget p3, p0, Lorg/libsdl/app/e;->c:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p3, p2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceFeatureReport(I[B)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lorg/libsdl/app/e;->j()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/libsdl/app/e;->o:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean v1, v0, Lorg/libsdl/app/e;->e:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Registering Steam Controller with ID: "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v2, v0, Lorg/libsdl/app/e;->c:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "hidapi"

    .line 36
    .line 37
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Lorg/libsdl/app/e;->a:Lorg/libsdl/app/HIDDeviceManager;

    .line 41
    .line 42
    iget-object v1, v0, Lorg/libsdl/app/e;->b:Landroid/bluetooth/BluetoothDevice;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "SteamController."

    .line 51
    .line 52
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/4 v14, 0x0

    .line 63
    const/4 v15, 0x0

    .line 64
    iget v4, v0, Lorg/libsdl/app/e;->c:I

    .line 65
    .line 66
    const/16 v6, 0x28de

    .line 67
    .line 68
    const/16 v7, 0x1106

    .line 69
    .line 70
    const-string v8, "12345"

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    const-string v10, "Valve Corporation"

    .line 74
    .line 75
    const-string v11, "Steam Controller"

    .line 76
    .line 77
    const/4 v12, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    invoke-virtual/range {v3 .. v15}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceConnected(ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    iput-boolean v1, v0, Lorg/libsdl/app/e;->e:Z

    .line 84
    .line 85
    :cond_0
    invoke-virtual {v0}, Lorg/libsdl/app/e;->j()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/libsdl/app/e;->h:Z

    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    if-ne p3, p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lorg/libsdl/app/e;->f:Z

    .line 9
    .line 10
    iget-boolean p1, p0, Lorg/libsdl/app/e;->e:Z

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    new-instance p1, Lorg/libsdl/app/c;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-direct {p1, p2, p0}, Lorg/libsdl/app/c;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lorg/libsdl/app/e;->l:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    if-nez p3, :cond_1

    .line 27
    .line 28
    iput-boolean p1, p0, Lorg/libsdl/app/e;->f:Z

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    sget-object v0, Lorg/libsdl/app/e;->n:Ljava/util/UUID;

    .line 10
    .line 11
    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    sget-object p3, Lorg/libsdl/app/e;->o:Ljava/util/UUID;

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    const-string p3, "hidapi"

    .line 30
    .line 31
    const-string v0, "Writing report characteristic to enter valve mode"

    .line 32
    .line 33
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    sget-object p3, Lorg/libsdl/app/e;->p:[B

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lorg/libsdl/app/e;->j()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const-string p2, "hidapi"

    .line 14
    .line 15
    const-string v0, "onServicesDiscovered returned zero services; something has gone horribly wrong down in Android\'s Bluetooth stack."

    .line 16
    .line 17
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lorg/libsdl/app/e;->h:Z

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lorg/libsdl/app/e;->f:Z

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/libsdl/app/e;->h()Landroid/bluetooth/BluetoothGatt;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0, p0}, Lorg/libsdl/app/e;->k(Lorg/libsdl/app/e;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final shutdown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lorg/libsdl/app/e;->d:Landroid/bluetooth/BluetoothGatt;

    .line 13
    .line 14
    :cond_0
    iput-object v1, p0, Lorg/libsdl/app/e;->a:Lorg/libsdl/app/HIDDeviceManager;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lorg/libsdl/app/e;->e:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lorg/libsdl/app/e;->f:Z

    .line 20
    .line 21
    iget-object v0, p0, Lorg/libsdl/app/e;->j:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
