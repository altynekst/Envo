.class public final Lorg/libsdl/app/a;
.super Landroid/view/View;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public a:Landroid/view/inputmethod/InputConnection;


# virtual methods
.method public final onCheckIsTextEditor()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 1
    new-instance v0, Lorg/libsdl/app/SDLInputConnection;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 5
    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, v0, Lorg/libsdl/app/SDLInputConnection;->b:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Landroid/widget/EditText;

    .line 12
    .line 13
    sget-object v2, Lorg/libsdl/app/i;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lorg/libsdl/app/SDLInputConnection;->a:Landroid/widget/EditText;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/libsdl/app/a;->a:Landroid/view/inputmethod/InputConnection;

    .line 21
    .line 22
    const v1, 0x20001

    .line 23
    .line 24
    .line 25
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 26
    .line 27
    const/high16 v1, 0x12000000

    .line 28
    .line 29
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 30
    .line 31
    return-object v0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/a;->a:Landroid/view/inputmethod/InputConnection;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, v0}, Lorg/libsdl/app/SDLActivity;->handleKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputConnection;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Lorg/libsdl/app/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeKeyboardFocusLost()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method
