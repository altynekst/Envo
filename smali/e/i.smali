.class public final Le/i;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# instance fields
.field public final a:Landroid/app/Notification$Builder;

.field public final b:Le/c;

.field public final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Le/c;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Le/i;->c:Landroid/os/Bundle;

    .line 4
    iput-object v2, v1, Le/i;->b:Le/c;

    .line 5
    iget-object v0, v2, Le/c;->a:Lorg/envy/client/ServerService;

    iget-object v3, v2, Le/c;->m:Ljava/util/ArrayList;

    iget-object v4, v2, Le/c;->c:Ljava/util/ArrayList;

    iget-object v5, v2, Le/c;->i:Ljava/lang/String;

    iget-object v6, v2, Le/c;->d:Ljava/util/ArrayList;

    .line 6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_0

    .line 7
    invoke-static {v0, v5}, Le/d;->a(Lorg/envy/client/ServerService;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, v1, Le/i;->a:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 9
    :goto_0
    iget-object v7, v2, Le/c;->l:Landroid/app/Notification;

    .line 10
    iget-object v0, v1, Le/i;->a:Landroid/app/Notification$Builder;

    iget-wide v9, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v9, v7, Landroid/app/Notification;->icon:I

    iget v10, v7, Landroid/app/Notification;->iconLevel:I

    .line 11
    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 12
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    .line 13
    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, v7, Landroid/app/Notification;->vibrate:[J

    .line 14
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v9, v7, Landroid/app/Notification;->ledARGB:I

    iget v11, v7, Landroid/app/Notification;->ledOnMS:I

    iget v12, v7, Landroid/app/Notification;->ledOffMS:I

    .line 15
    invoke-virtual {v0, v9, v11, v12}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v9, v7, Landroid/app/Notification;->flags:I

    const/4 v11, 0x2

    and-int/2addr v9, v11

    const/4 v13, 0x0

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    move v9, v13

    .line 16
    :goto_1
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v9, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    move v9, v13

    .line 17
    :goto_2
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v9, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    move v9, v13

    .line 18
    :goto_3
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v9, v7, Landroid/app/Notification;->defaults:I

    .line 19
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, v2, Le/c;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, v2, Le/c;->f:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 24
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v9, v7, Landroid/app/Notification;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    move v9, v13

    .line 25
    :goto_4
    invoke-virtual {v0, v10, v9}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v13, v13, v13}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 28
    iget-object v0, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 29
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 30
    iget-object v0, v1, Le/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 33
    iget-object v9, v2, Le/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v0, v13

    :goto_5
    const-string v15, "android.support.allowGeneratedReplies"

    move/from16 v16, v13

    const-string v13, "execute-command-reply"

    if-ge v0, v14, :cond_18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v18, v0, 0x1

    move-object/from16 v11, v17

    check-cast v11, Le/b;

    .line 34
    iget-object v0, v11, Le/b;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_5

    .line 35
    iget v0, v11, Le/b;->f:I

    if-eqz v0, :cond_5

    .line 36
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, v11, Le/b;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 37
    :cond_5
    iget-object v10, v11, Le/b;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 38
    iget-boolean v12, v11, Le/b;->d:Z

    iget-object v8, v11, Le/b;->a:Landroid/os/Bundle;

    if-eqz v10, :cond_e

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v20, v4

    .line 40
    const-string v4, "IconCompat"

    move-object/from16 v21, v5

    iget v5, v10, Landroidx/core/graphics/drawable/IconCompat;->a:I

    packed-switch v5, :pswitch_data_0

    .line 41
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown type"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v4, 0x1e

    if-lt v0, v4, :cond_6

    .line 42
    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lg/a;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_6
    move-object/from16 v27, v3

    move-object/from16 v25, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move/from16 v24, v14

    :goto_7
    const/4 v4, 0x2

    goto/16 :goto_f

    .line 43
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Context is required to resolve the file uri of the icon: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const/16 v4, 0x1a

    if-lt v0, v4, :cond_7

    .line 45
    iget-object v0, v10, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Le/d;->b(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_6

    .line 46
    :cond_7
    iget-object v0, v10, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 49
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f2aaaab

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 50
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v22, v9

    .line 51
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v23, v5

    .line 52
    new-instance v5, Landroid/graphics/Paint;

    move/from16 v24, v14

    const/4 v14, 0x3

    invoke-direct {v5, v14}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v14, v4

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v14, v14, v25

    const v25, 0x3f6aaaab

    move/from16 v26, v4

    mul-float v4, v14, v25

    move-object/from16 v25, v6

    const/high16 v6, -0x1000000

    .line 53
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    new-instance v6, Landroid/graphics/BitmapShader;

    move-object/from16 v27, v3

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 55
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move-object/from16 v29, v0

    sub-int v0, v28, v26

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v0, v0, v28

    .line 57
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move-object/from16 v30, v7

    sub-int v7, v29, v26

    neg-int v7, v7

    int-to-float v7, v7

    div-float v7, v7, v28

    .line 58
    invoke-virtual {v3, v0, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 59
    invoke-virtual {v6, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 60
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 61
    invoke-virtual {v9, v14, v14, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-static/range {v23 .. v23}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_3
    move-object/from16 v27, v3

    move-object/from16 v25, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move/from16 v24, v14

    .line 64
    iget-object v0, v10, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_4
    move-object/from16 v27, v3

    move-object/from16 v25, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move/from16 v24, v14

    .line 65
    iget-object v0, v10, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget v3, v10, Landroidx/core/graphics/drawable/IconCompat;->e:I

    iget v4, v10, Landroidx/core/graphics/drawable/IconCompat;->f:I

    invoke-static {v0, v3, v4}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_5
    move-object/from16 v27, v3

    move-object/from16 v25, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move/from16 v24, v14

    const/4 v3, -0x1

    if-ne v5, v3, :cond_9

    .line 66
    iget-object v3, v10, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 67
    const-string v5, "Unable to get icon package"

    const/16 v6, 0x1c

    if-lt v0, v6, :cond_8

    .line 68
    invoke-static {v3}, Le/e;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    const/4 v4, 0x2

    goto :goto_e

    .line 69
    :cond_8
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getResPackage"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_b

    .line 70
    :goto_9
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 71
    :goto_a
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 72
    :goto_b
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/4 v4, 0x2

    if-ne v5, v4, :cond_c

    .line 73
    iget-object v0, v10, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_d

    .line 74
    :cond_a
    iget-object v0, v10, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    goto :goto_e

    .line 75
    :cond_b
    :goto_d
    iget-object v0, v10, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v16

    .line 76
    :goto_e
    iget v3, v10, Landroidx/core/graphics/drawable/IconCompat;->e:I

    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_f

    .line 77
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called getResPackage() on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object/from16 v27, v3

    move-object/from16 v25, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move/from16 v24, v14

    const/4 v4, 0x2

    .line 78
    iget-object v0, v10, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 79
    :goto_f
    iget-object v3, v10, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_d

    .line 80
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    .line 81
    :cond_d
    iget-object v3, v10, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    sget-object v5, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v5, :cond_f

    .line 82
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    goto :goto_10

    :pswitch_7
    move-object/from16 v27, v3

    move-object/from16 v25, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move/from16 v24, v14

    const/4 v4, 0x2

    .line 83
    iget-object v0, v10, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    goto :goto_10

    :cond_e
    move-object/from16 v27, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move/from16 v24, v14

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 84
    :cond_f
    :goto_10
    iget-object v3, v11, Le/b;->g:Ljava/lang/CharSequence;

    .line 85
    iget-object v5, v11, Le/b;->h:Landroid/app/PendingIntent;

    .line 86
    new-instance v6, Landroid/app/Notification$Action$Builder;

    invoke-direct {v6, v0, v3, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 87
    iget-object v0, v11, Le/b;->c:[Le/j;

    if-eqz v0, :cond_13

    .line 88
    array-length v3, v0

    new-array v5, v3, [Landroid/app/RemoteInput;

    move/from16 v7, v16

    .line 89
    :goto_11
    array-length v9, v0

    if-ge v7, v9, :cond_12

    .line 90
    aget-object v9, v0, v7

    .line 91
    new-instance v10, Landroid/app/RemoteInput$Builder;

    .line 92
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-direct {v10, v13}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v14, v9, Le/j;->a:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {v10, v14}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v10

    const/4 v14, 0x0

    .line 96
    invoke-virtual {v10, v14}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v10

    const/4 v14, 0x1

    .line 97
    invoke-virtual {v10, v14}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v10

    .line 98
    iget-object v14, v9, Le/j;->b:Landroid/os/Bundle;

    .line 99
    invoke-virtual {v10, v14}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v10

    .line 100
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v14, v4, :cond_10

    .line 101
    iget-object v4, v9, Le/j;->c:Ljava/util/HashSet;

    .line 102
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 103
    invoke-static {v10, v9}, Le/d;->c(Landroid/app/RemoteInput$Builder;Ljava/lang/String;)V

    goto :goto_12

    .line 104
    :cond_10
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v4, v9, :cond_11

    .line 105
    invoke-static {v10}, Le/f;->d(Landroid/app/RemoteInput$Builder;)V

    .line 106
    :cond_11
    invoke-virtual {v10}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v4

    .line 107
    aput-object v4, v5, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    goto :goto_11

    :cond_12
    move/from16 v0, v16

    :goto_13
    if-ge v0, v3, :cond_13

    .line 108
    aget-object v4, v5, v0

    .line 109
    invoke-virtual {v6, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_13
    if-eqz v8, :cond_14

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_14

    .line 111
    :cond_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    :goto_14
    invoke-virtual {v0, v15, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    invoke-virtual {v6, v12}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 115
    const-string v4, "android.support.action.semanticAction"

    move/from16 v5, v16

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_15

    .line 116
    invoke-static {v6}, Le/e;->e(Landroid/app/Notification$Action$Builder;)V

    :cond_15
    const/16 v9, 0x1d

    if-lt v3, v9, :cond_16

    .line 117
    invoke-static {v6}, Le/f;->c(Landroid/app/Notification$Action$Builder;)V

    :cond_16
    const/16 v4, 0x1f

    if-lt v3, v4, :cond_17

    .line 118
    iget-boolean v3, v11, Le/b;->i:Z

    .line 119
    invoke-static {v6, v3}, Le/g;->a(Landroid/app/Notification$Action$Builder;Z)V

    .line 120
    :cond_17
    const-string v3, "android.support.action.showsUserInterface"

    .line 121
    iget-boolean v4, v11, Le/b;->e:Z

    .line 122
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    invoke-virtual {v6, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 124
    iget-object v0, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 125
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    .line 126
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move/from16 v0, v18

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v9, v22

    move/from16 v14, v24

    move-object/from16 v6, v25

    move-object/from16 v3, v27

    move-object/from16 v7, v30

    const/16 v8, 0x1a

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_18
    move-object/from16 v27, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v30, v7

    .line 127
    iget-object v0, v2, Le/c;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_19

    .line 128
    iget-object v3, v1, Le/i;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 129
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v4, v2, Le/c;->g:Z

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 131
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    const/4 v5, 0x0

    .line 132
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 133
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    .line 134
    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 135
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 136
    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 137
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 138
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 139
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 140
    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 141
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 142
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 143
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 144
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 145
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 146
    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 147
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    move-object/from16 v4, v30

    iget-object v5, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v4, v4, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 148
    invoke-virtual {v3, v5, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_1f

    if-nez v20, :cond_1a

    const/4 v0, 0x0

    goto :goto_15

    .line 149
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1e

    :goto_15
    if-nez v0, :cond_1b

    move-object/from16 v3, v27

    goto :goto_17

    :cond_1b
    if-nez v27, :cond_1c

    :goto_16
    move-object v3, v0

    goto :goto_17

    .line 151
    :cond_1c
    new-instance v3, Lb/g;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    .line 152
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 153
    sget-object v4, Lc/a;->a:[I

    iput-object v4, v3, Lb/g;->a:[I

    .line 154
    sget-object v4, Lc/a;->b:[Ljava/lang/Object;

    iput-object v4, v3, Lb/g;->b:[Ljava/lang/Object;

    if-lez v5, :cond_1d

    .line 155
    new-array v4, v5, [I

    .line 156
    iput-object v4, v3, Lb/g;->a:[I

    .line 157
    new-array v4, v5, [Ljava/lang/Object;

    .line 158
    iput-object v4, v3, Lb/g;->b:[Ljava/lang/Object;

    .line 159
    :cond_1d
    invoke-virtual {v3, v0}, Lb/g;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v4, v27

    .line 160
    invoke-virtual {v3, v4}, Lb/g;->addAll(Ljava/util/Collection;)Z

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_16

    .line 162
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_1f
    move-object/from16 v4, v27

    move-object v3, v4

    :goto_17
    if-eqz v3, :cond_20

    .line 165
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 166
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v0, :cond_20

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 167
    iget-object v6, v1, Le/i;->a:Landroid/app/Notification$Builder;

    .line 168
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_18

    .line 169
    :cond_20
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 170
    iget-object v0, v2, Le/c;->h:Landroid/os/Bundle;

    if-nez v0, :cond_21

    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v2, Le/c;->h:Landroid/os/Bundle;

    .line 172
    :cond_21
    iget-object v0, v2, Le/c;->h:Landroid/os/Bundle;

    .line 173
    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_22

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    :cond_22
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 176
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    .line 177
    :goto_19
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2a

    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v25

    .line 179
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/b;

    .line 180
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 181
    iget-object v11, v9, Le/b;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v11, :cond_23

    .line 182
    iget v11, v9, Le/b;->f:I

    if-eqz v11, :cond_23

    .line 183
    invoke-static {v11}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v11

    iput-object v11, v9, Le/b;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 184
    :cond_23
    iget-object v11, v9, Le/b;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 185
    iget-object v12, v9, Le/b;->a:Landroid/os/Bundle;

    if-eqz v11, :cond_24

    .line 186
    invoke-virtual {v11}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    move-result v11

    goto :goto_1a

    :cond_24
    const/4 v11, 0x0

    :goto_1a
    const-string v14, "icon"

    invoke-virtual {v10, v14, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v11, "title"

    .line 188
    iget-object v14, v9, Le/b;->g:Ljava/lang/CharSequence;

    .line 189
    invoke-virtual {v10, v11, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 190
    const-string v11, "actionIntent"

    .line 191
    iget-object v14, v9, Le/b;->h:Landroid/app/PendingIntent;

    .line 192
    invoke-virtual {v10, v11, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v12, :cond_25

    .line 193
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1b

    .line 194
    :cond_25
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 195
    :goto_1b
    iget-boolean v12, v9, Le/b;->d:Z

    .line 196
    invoke-virtual {v11, v15, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    const-string v12, "extras"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 198
    iget-object v11, v9, Le/b;->c:[Le/j;

    if-nez v11, :cond_27

    move/from16 v18, v6

    move-object/from16 v25, v8

    const/4 v14, 0x0

    :cond_26
    move-object/from16 v23, v13

    goto :goto_1e

    .line 199
    :cond_27
    array-length v14, v11

    new-array v14, v14, [Landroid/os/Bundle;

    move/from16 v18, v6

    move-object/from16 v25, v8

    const/4 v6, 0x0

    .line 200
    :goto_1c
    array-length v8, v11

    if-ge v6, v8, :cond_26

    .line 201
    aget-object v8, v11, v6

    move/from16 v19, v6

    .line 202
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 203
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v22, v11

    .line 204
    const-string v11, "resultKey"

    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v11, "label"

    move-object/from16 v23, v13

    .line 206
    iget-object v13, v8, Le/j;->a:Ljava/lang/CharSequence;

    .line 207
    invoke-virtual {v6, v11, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 208
    const-string v11, "choices"

    const/4 v13, 0x0

    invoke-virtual {v6, v11, v13}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 209
    const-string v11, "allowFreeFormInput"

    const/4 v13, 0x1

    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    iget-object v11, v8, Le/j;->b:Landroid/os/Bundle;

    .line 211
    invoke-virtual {v6, v12, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    iget-object v8, v8, Le/j;->c:Ljava/util/HashSet;

    .line 213
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_29

    .line 214
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 216
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 217
    :cond_28
    const-string v8, "allowedDataTypes"

    invoke-virtual {v6, v8, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    :cond_29
    aput-object v6, v14, v19

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v11, v22

    move-object/from16 v13, v23

    goto :goto_1c

    .line 219
    :goto_1e
    const-string v6, "remoteInputs"

    invoke-virtual {v10, v6, v14}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 220
    const-string v6, "showsUserInterface"

    .line 221
    iget-boolean v8, v9, Le/b;->e:Z

    .line 222
    invoke-virtual {v10, v6, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    const-string v6, "semanticAction"

    const/4 v8, 0x0

    invoke-virtual {v10, v6, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 224
    invoke-virtual {v5, v7, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v13, v23

    goto/16 :goto_19

    .line 225
    :cond_2a
    const-string v6, "invisible_actions"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 226
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    iget-object v5, v2, Le/c;->h:Landroid/os/Bundle;

    if-nez v5, :cond_2b

    .line 228
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v2, Le/c;->h:Landroid/os/Bundle;

    .line 229
    :cond_2b
    iget-object v5, v2, Le/c;->h:Landroid/os/Bundle;

    .line 230
    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    iget-object v0, v1, Le/i;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 232
    :cond_2c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 233
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    iget-object v4, v2, Le/c;->h:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 234
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    .line 235
    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_2d

    .line 236
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    invoke-static {v3}, Le/d;->d(Landroid/app/Notification$Builder;)V

    .line 237
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    invoke-static {v3}, Le/d;->f(Landroid/app/Notification$Builder;)V

    .line 238
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    invoke-static {v3}, Le/d;->g(Landroid/app/Notification$Builder;)V

    .line 239
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    invoke-static {v3}, Le/d;->h(Landroid/app/Notification$Builder;)V

    .line 240
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    invoke-static {v3}, Le/d;->e(Landroid/app/Notification$Builder;)V

    .line 241
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 242
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x0

    .line 243
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 245
    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_2d
    const/16 v4, 0x1c

    if-lt v0, v4, :cond_2e

    .line 246
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_2e
    const/16 v9, 0x1d

    goto :goto_1f

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :goto_1f
    if-lt v0, v9, :cond_30

    .line 249
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v4, v2, Le/c;->k:Z

    invoke-static {v3, v4}, Le/f;->a(Landroid/app/Notification$Builder;Z)V

    .line 250
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    invoke-static {v3}, Le/f;->b(Landroid/app/Notification$Builder;)V

    :cond_30
    const/16 v4, 0x1f

    if-lt v0, v4, :cond_31

    .line 251
    iget v2, v2, Le/c;->j:I

    if-eqz v2, :cond_31

    .line 252
    iget-object v3, v1, Le/i;->a:Landroid/app/Notification$Builder;

    invoke-static {v3, v2}, Le/g;->b(Landroid/app/Notification$Builder;I)V

    :cond_31
    const/16 v2, 0x24

    if-lt v0, v2, :cond_32

    .line 253
    iget-object v0, v1, Le/i;->a:Landroid/app/Notification$Builder;

    invoke-static {v0}, Le/h;->a(Landroid/app/Notification$Builder;)V

    :cond_32
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
