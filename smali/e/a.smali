.class public final Le/a;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# instance fields
.field public final a:Landroidx/core/graphics/drawable/IconCompat;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Landroid/app/PendingIntent;

.field public final d:Z

.field public final e:Landroid/os/Bundle;

.field public f:Ljava/util/ArrayList;

.field public final g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3

    .line 1
    const v0, 0x1080057

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Le/a;->d:Z

    .line 18
    .line 19
    iput-boolean v2, p0, Le/a;->g:Z

    .line 20
    .line 21
    iput-object v0, p0, Le/a;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 22
    .line 23
    invoke-static {p1}, Le/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Le/a;->b:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iput-object p2, p0, Le/a;->c:Landroid/app/PendingIntent;

    .line 30
    .line 31
    iput-object v1, p0, Le/a;->e:Landroid/os/Bundle;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Le/a;->f:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput-boolean v2, p0, Le/a;->d:Z

    .line 37
    .line 38
    iput-boolean v2, p0, Le/a;->g:Z

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Le/a;->h:Z

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a()Le/b;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Le/a;->f:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    check-cast v5, Le/j;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    move-object v10, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    new-array v2, v2, [Le/j;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, [Le/j;

    .line 57
    .line 58
    move-object v10, v0

    .line 59
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    :goto_2
    move-object v9, v3

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    new-array v0, v0, [Le/j;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v3, v0

    .line 78
    check-cast v3, [Le/j;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :goto_3
    new-instance v4, Le/b;

    .line 82
    .line 83
    iget-boolean v12, p0, Le/a;->g:Z

    .line 84
    .line 85
    iget-boolean v13, p0, Le/a;->h:Z

    .line 86
    .line 87
    iget-object v5, p0, Le/a;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 88
    .line 89
    iget-object v6, p0, Le/a;->b:Ljava/lang/CharSequence;

    .line 90
    .line 91
    iget-object v7, p0, Le/a;->c:Landroid/app/PendingIntent;

    .line 92
    .line 93
    iget-object v8, p0, Le/a;->e:Landroid/os/Bundle;

    .line 94
    .line 95
    iget-boolean v11, p0, Le/a;->d:Z

    .line 96
    .line 97
    invoke-direct/range {v4 .. v13}, Le/b;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Le/j;[Le/j;ZZZ)V

    .line 98
    .line 99
    .line 100
    return-object v4
.end method
