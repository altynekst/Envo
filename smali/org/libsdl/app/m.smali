.class public final Lorg/libsdl/app/m;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lorg/libsdl/app/SDLActivity;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/SDLActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/libsdl/app/m;->b:Lorg/libsdl/app/SDLActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/libsdl/app/m;->a:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/m;->b:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/libsdl/app/m;->a:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/libsdl/app/SDLActivity;->messageboxCreateAndShow(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
