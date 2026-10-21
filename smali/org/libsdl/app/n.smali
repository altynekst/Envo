.class public final Lorg/libsdl/app/n;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lorg/libsdl/app/SDLActivity;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/SDLActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/libsdl/app/n;->a:Lorg/libsdl/app/SDLActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/libsdl/app/n;->a:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/n;->a:Lorg/libsdl/app/SDLActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 11
    .line 12
    .line 13
    monitor-exit p1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v0
.end method
