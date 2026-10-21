.class public final Lorg/libsdl/app/d;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# instance fields
.field public a:I

.field public b:Ljava/util/UUID;

.field public c:[B

.field public d:Landroid/bluetooth/BluetoothGatt;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;ILjava/util/UUID;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/libsdl/app/d;->e:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/libsdl/app/d;->d:Landroid/bluetooth/BluetoothGatt;

    .line 8
    .line 9
    iput p2, p0, Lorg/libsdl/app/d;->a:I

    .line 10
    .line 11
    iput-object p3, p0, Lorg/libsdl/app/d;->b:Ljava/util/UUID;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/d;->d:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/libsdl/app/d;->b:Ljava/util/UUID;

    .line 4
    .line 5
    iget v2, p0, Lorg/libsdl/app/d;->a:I

    .line 6
    .line 7
    if-eqz v2, :cond_c

    .line 8
    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const-string v5, "hidapi"

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-eqz v2, :cond_9

    .line 17
    .line 18
    if-eq v2, v6, :cond_6

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq v2, v7, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    sget-object v2, Lorg/libsdl/app/e;->m:Ljava/util/UUID;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :goto_0
    if-eqz v3, :cond_5

    .line 38
    .line 39
    const-string v2, "00002902-0000-1000-8000-00805f9b34fb"

    .line 40
    .line 41
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    and-int/lit8 v8, v7, 0x10

    .line 56
    .line 57
    const/16 v9, 0x10

    .line 58
    .line 59
    if-ne v8, v9, :cond_2

    .line 60
    .line 61
    sget-object v7, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/16 v8, 0x20

    .line 65
    .line 66
    and-int/2addr v7, v8

    .line 67
    if-ne v7, v8, :cond_4

    .line 68
    .line 69
    sget-object v7, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 70
    .line 71
    :goto_1
    invoke-virtual {v0, v3, v6}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "Unable to write descriptor "

    .line 86
    .line 87
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iput-boolean v4, p0, Lorg/libsdl/app/d;->e:Z

    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    iput-boolean v6, p0, Lorg/libsdl/app/d;->e:Z

    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    const-string v0, "Unable to start notifications on input characteristic"

    .line 111
    .line 112
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iput-boolean v4, p0, Lorg/libsdl/app/d;->e:Z

    .line 116
    .line 117
    :cond_5
    :goto_2
    return-void

    .line 118
    :cond_6
    sget-object v2, Lorg/libsdl/app/e;->m:Ljava/util/UUID;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-nez v2, :cond_7

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    :goto_3
    iget-object v2, p0, Lorg/libsdl/app/d;->c:[B

    .line 132
    .line 133
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_8

    .line 141
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v2, "Unable to write characteristic "

    .line 145
    .line 146
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    iput-boolean v4, p0, Lorg/libsdl/app/d;->e:Z

    .line 164
    .line 165
    return-void

    .line 166
    :cond_8
    iput-boolean v6, p0, Lorg/libsdl/app/d;->e:Z

    .line 167
    .line 168
    return-void

    .line 169
    :cond_9
    sget-object v2, Lorg/libsdl/app/e;->m:Ljava/util/UUID;

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    if-nez v2, :cond_a

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_a
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    :goto_4
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-nez v0, :cond_b

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v2, "Unable to read characteristic "

    .line 191
    .line 192
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    iput-boolean v4, p0, Lorg/libsdl/app/d;->e:Z

    .line 210
    .line 211
    return-void

    .line 212
    :cond_b
    iput-boolean v6, p0, Lorg/libsdl/app/d;->e:Z

    .line 213
    .line 214
    return-void

    .line 215
    :cond_c
    const/4 v0, 0x0

    .line 216
    throw v0
.end method
