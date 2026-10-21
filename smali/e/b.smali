.class public final Le/b;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:[Le/j;

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:Ljava/lang/CharSequence;

.field public final h:Landroid/app/PendingIntent;

.field public final i:Z


# direct methods
.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Le/j;[Le/j;ZZZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    .line 2
    iput-boolean p6, p0, Le/b;->e:Z

    .line 3
    iput-object p1, p0, Le/b;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_2

    .line 4
    iget p6, p1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v0, -0x1

    if-ne p6, v0, :cond_1

    sget p6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    iget-object v1, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 6
    const-string v2, "Unable to get icon type "

    const-string v3, "IconCompat"

    const/16 v4, 0x1c

    if-lt p6, v4, :cond_0

    .line 7
    invoke-static {v1}, Le/e;->c(Ljava/lang/Object;)I

    move-result p6

    goto :goto_4

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    const-string v4, "getType"

    const/4 v5, 0x0

    invoke-virtual {p6, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p6

    invoke-virtual {p6, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p6

    goto :goto_0

    :catch_1
    move-exception p6

    goto :goto_1

    :catch_2
    move-exception p6

    goto :goto_2

    .line 9
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 10
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 11
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    move p6, v0

    :cond_1
    :goto_4
    const/4 v0, 0x2

    if-ne p6, v0, :cond_2

    .line 12
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    move-result p1

    iput p1, p0, Le/b;->f:I

    .line 13
    :cond_2
    invoke-static {p2}, Le/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Le/b;->g:Ljava/lang/CharSequence;

    .line 14
    iput-object p3, p0, Le/b;->h:Landroid/app/PendingIntent;

    if-eqz p4, :cond_3

    goto :goto_5

    .line 15
    :cond_3
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_5
    iput-object p4, p0, Le/b;->a:Landroid/os/Bundle;

    .line 16
    iput-object p5, p0, Le/b;->c:[Le/j;

    .line 17
    iput-boolean p7, p0, Le/b;->d:Z

    .line 18
    iput-boolean p8, p0, Le/b;->e:Z

    .line 19
    iput-boolean p9, p0, Le/b;->i:Z

    return-void
.end method
