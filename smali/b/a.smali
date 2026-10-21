.class public final Lb/a;
.super Ljava/util/AbstractSet;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# instance fields
.field public final synthetic a:Lb/f;


# direct methods
.method public constructor <init>(Lb/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a;->a:Lb/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lb/d;

    .line 2
    .line 3
    iget-object v1, p0, Lb/a;->a:Lb/f;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb/d;-><init>(Lb/f;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a;->a:Lb/f;

    .line 2
    .line 3
    iget v0, v0, Lb/f;->c:I

    .line 4
    .line 5
    return v0
.end method
