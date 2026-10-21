.class public Lorg/envy/client/ServerService;
.super Landroid/app/Service;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# static fields
.field private static final INTENT_ACTION_EXECUTE:Ljava/lang/String; = "execute"

.field private static final INTENT_ACTION_START:Ljava/lang/String; = "start"

.field private static final INTENT_EXTRA_COMMANDS:Ljava/lang/String; = "commands"

.field private static final KEY_EXECUTE_TEXT_REPLY:Ljava/lang/String; = "execute-command-reply"

.field private static final MESSAGE_CODE_EXECUTE_COMMAND:I = 0x1

.field private static final MESSAGE_EXTRA_COMMAND:Ljava/lang/String; = "command"

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "LOCAL_SERVER_CHANNEL_ID"

.field private static final NOTIFICATION_ID:I = 0x1


# instance fields
.field private messenger:Landroid/os/Messenger;

.field private notificationManager:Landroid/app/NotificationManager;

.field private stopping:Z

.field private thread:Lorg/envy/client/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DDNet-Server"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/envy/client/ServerService;->stopping:Z

    .line 6
    .line 7
    return-void
.end method

.method public static bridge synthetic a(Lorg/envy/client/ServerService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/envy/client/ServerService;->executeCommand(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createExecuteCommandMessage(Ljava/lang/String;)Landroid/os/Message;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "command"

    .line 13
    .line 14
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method private createNotificationChannel()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ln/a;->c()V

    .line 9
    .line 10
    .line 11
    sget v0, Ln/e;->server_name:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ln/a;->a(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Ln/e;->server_notification_channel_description:I

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Ln/a;->d(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lorg/envy/client/ServerService;->notificationManager:Landroid/app/NotificationManager;

    .line 31
    .line 32
    invoke-static {v1, v0}, Ln/a;->e(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private createRunningNotification()Landroid/app/Notification;
    .locals 10

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lorg/envy/client/ClientActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/high16 v2, 0xc000000

    .line 10
    .line 11
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v3, Landroid/content/Intent;

    .line 16
    .line 17
    const-class v4, Lorg/envy/client/ServerService;

    .line 18
    .line 19
    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    const-string v5, "execute"

    .line 23
    .line 24
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string v6, "shutdown"

    .line 28
    .line 29
    filled-new-array {v6}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-string v7, "commands"

    .line 34
    .line 35
    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v1, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Le/a;

    .line 43
    .line 44
    sget v6, Ln/e;->server_notification_action_stop:I

    .line 45
    .line 46
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-direct {v3, v6, v2}, Le/a;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    iput-boolean v6, v3, Le/a;->h:Z

    .line 55
    .line 56
    invoke-virtual {v3}, Le/a;->a()Le/b;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    new-instance v7, Landroid/content/Intent;

    .line 61
    .line 62
    invoke-direct {v7, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const/high16 v4, 0xa000000

    .line 69
    .line 70
    invoke-static {p0, v1, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v5, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v7, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 82
    .line 83
    .line 84
    sget v8, Ln/e;->server_notification_action_run_command:I

    .line 85
    .line 86
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    new-instance v9, Le/j;

    .line 91
    .line 92
    invoke-direct {v9, v8, v7, v5}, Le/j;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/HashSet;)V

    .line 93
    .line 94
    .line 95
    new-instance v5, Le/a;

    .line 96
    .line 97
    sget v7, Ln/e;->server_notification_action_run_command:I

    .line 98
    .line 99
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-direct {v5, v7, v4}, Le/a;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 104
    .line 105
    .line 106
    iput-boolean v6, v5, Le/a;->h:Z

    .line 107
    .line 108
    new-instance v4, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v4, v5, Le/a;->f:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Le/a;->a()Le/b;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    new-instance v5, Le/c;

    .line 123
    .line 124
    invoke-direct {v5, p0}, Le/c;-><init>(Lorg/envy/client/ServerService;)V

    .line 125
    .line 126
    .line 127
    const/4 v7, 0x2

    .line 128
    invoke-virtual {v5, v7, v6}, Le/c;->b(IZ)V

    .line 129
    .line 130
    .line 131
    const/16 v7, 0x10

    .line 132
    .line 133
    invoke-virtual {v5, v7, v1}, Le/c;->b(IZ)V

    .line 134
    .line 135
    .line 136
    sget v7, Ln/e;->server_notification_description_default:I

    .line 137
    .line 138
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-static {v7}, Le/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    iput-object v7, v5, Le/c;->e:Ljava/lang/CharSequence;

    .line 147
    .line 148
    sget v7, Ln/d;->ic_launcher:I

    .line 149
    .line 150
    iget-object v8, v5, Le/c;->l:Landroid/app/Notification;

    .line 151
    .line 152
    iput v7, v8, Landroid/app/Notification;->icon:I

    .line 153
    .line 154
    iput-boolean v1, v5, Le/c;->k:Z

    .line 155
    .line 156
    iput v6, v5, Le/c;->j:I

    .line 157
    .line 158
    iput-object v0, v5, Le/c;->f:Landroid/app/PendingIntent;

    .line 159
    .line 160
    iput-object v2, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 161
    .line 162
    iget-object v0, v5, Le/c;->b:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    iget-object v0, v5, Le/c;->b:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    new-instance v0, Le/i;

    .line 173
    .line 174
    invoke-direct {v0, v5}, Le/i;-><init>(Le/c;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Le/i;->b:Le/c;

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 183
    .line 184
    const/16 v2, 0x1a

    .line 185
    .line 186
    iget-object v0, v0, Le/i;->a:Landroid/app/Notification$Builder;

    .line 187
    .line 188
    if-lt v1, v2, :cond_0

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    return-object v0

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0
.end method

.method public static createStartIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lorg/envy/client/ServerService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "start"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "commands"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private createStoppingNotification()Landroid/app/Notification;
    .locals 3

    .line 1
    new-instance v0, Le/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Le/c;-><init>(Lorg/envy/client/ServerService;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v2, v1}, Le/c;->b(IZ)V

    .line 9
    .line 10
    .line 11
    sget v1, Ln/e;->server_notification_description_stopping:I

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Le/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Le/c;->e:Ljava/lang/CharSequence;

    .line 22
    .line 23
    sget v1, Ln/d;->ic_launcher:I

    .line 24
    .line 25
    iget-object v2, v0, Le/c;->l:Landroid/app/Notification;

    .line 26
    .line 27
    iput v1, v2, Landroid/app/Notification;->icon:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, v0, Le/c;->k:Z

    .line 31
    .line 32
    new-instance v1, Le/i;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Le/i;-><init>(Le/c;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v1, Le/i;->b:Le/c;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 v2, 0x1a

    .line 45
    .line 46
    iget-object v1, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 47
    .line 48
    if-lt v0, v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :cond_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method private executeCommand(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/envy/client/ServerService;->thread:Lorg/envy/client/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "shutdown"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lorg/envy/client/ServerService;->stopping:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lorg/envy/client/ServerService;->stopping:Z

    .line 21
    .line 22
    iget-object v1, p0, Lorg/envy/client/ServerService;->notificationManager:Landroid/app/NotificationManager;

    .line 23
    .line 24
    invoke-direct {p0}, Lorg/envy/client/ServerService;->createStoppingNotification()Landroid/app/Notification;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-static {p1}, Lorg/envy/client/NativeServer;->executeCommand(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Messenger;

    .line 2
    .line 3
    new-instance v0, Ln/f;

    .line 4
    .line 5
    invoke-direct {v0, p0, p0}, Ln/f;-><init>(Lorg/envy/client/ServerService;Lorg/envy/client/ServerService;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/envy/client/ServerService;->messenger:Landroid/os/Messenger;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/app/NotificationManager;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/NotificationManager;

    .line 11
    .line 12
    iput-object v0, p0, Lorg/envy/client/ServerService;->notificationManager:Landroid/app/NotificationManager;

    .line 13
    .line 14
    invoke-direct {p0}, Lorg/envy/client/ServerService;->createNotificationChannel()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lorg/envy/client/ServerService;->createRunningNotification()Landroid/app/Notification;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x22

    .line 24
    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    invoke-static {p0, v0}, Le/f;->f(Lorg/envy/client/ServerService;Landroid/app/Notification;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const/16 v2, 0x1d

    .line 32
    .line 33
    if-lt v1, v2, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v0}, Le/f;->e(Lorg/envy/client/ServerService;Landroid/app/Notification;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 v1, 0x1

    .line 40
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "shutdown"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lorg/envy/client/ServerService;->executeCommand(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/envy/client/ServerService;->thread:Lorg/envy/client/a;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-wide/16 v2, 0x9c4

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/envy/client/ServerService;->thread:Lorg/envy/client/a;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lorg/envy/client/ServerService;->thread:Lorg/envy/client/a;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string p3, "start"

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const-string v0, "commands"

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    new-instance p2, Lorg/envy/client/a;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lorg/envy/client/a;-><init>(Lorg/envy/client/ServerService;[Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lorg/envy/client/ServerService;->thread:Lorg/envy/client/a;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string p3, "execute"

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    invoke-static {p1}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    const-string p1, "execute-command-reply"

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lorg/envy/client/ServerService;->executeCommand(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-boolean p1, p0, Lorg/envy/client/ServerService;->stopping:Z

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Lorg/envy/client/ServerService;->notificationManager:Landroid/app/NotificationManager;

    .line 68
    .line 69
    invoke-direct {p0}, Lorg/envy/client/ServerService;->createRunningNotification()Landroid/app/Notification;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const/4 p3, 0x1

    .line 74
    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    array-length p2, p1

    .line 85
    const/4 p3, 0x0

    .line 86
    :goto_0
    if-ge p3, p2, :cond_3

    .line 87
    .line 88
    aget-object v0, p1, p3

    .line 89
    .line 90
    invoke-direct {p0, v0}, Lorg/envy/client/ServerService;->executeCommand(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 p3, p3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/envy/client/ServerService;->thread:Lorg/envy/client/a;

    .line 97
    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 101
    .line 102
    .line 103
    :cond_4
    const/4 p1, 0x2

    .line 104
    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    const-string p1, "shutdown"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/envy/client/ServerService;->executeCommand(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method
