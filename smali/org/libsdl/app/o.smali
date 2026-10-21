.class public final Lorg/libsdl/app/o;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/AlertDialog;

.field public final synthetic c:Lorg/libsdl/app/SDLActivity;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/libsdl/app/o;->c:Lorg/libsdl/app/SDLActivity;

    .line 5
    .line 6
    iput p2, p0, Lorg/libsdl/app/o;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/libsdl/app/o;->b:Landroid/app/AlertDialog;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/libsdl/app/o;->c:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget v1, p0, Lorg/libsdl/app/o;->a:I

    .line 7
    .line 8
    aput v1, p1, v0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/libsdl/app/o;->b:Landroid/app/AlertDialog;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
