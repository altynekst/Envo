.class public final synthetic Lh/a;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh/b;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lh/b;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh/a;->a:Lh/b;

    .line 5
    .line 6
    iput p2, p0, Lh/a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lh/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lh/a;->a:Lh/b;

    .line 4
    .line 5
    iget-object v1, v1, Lh/b;->b:Lh/h;

    .line 6
    .line 7
    iget v2, p0, Lh/a;->b:I

    .line 8
    .line 9
    invoke-interface {v1, v2, v0}, Lh/h;->b(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
