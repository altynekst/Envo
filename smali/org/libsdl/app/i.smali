.class public Lorg/libsdl/app/i;
.super Ljava/lang/Object;
.source "r8-map-id-8e043f88177683cc086984d1d094899a954d9280870a86715e15e0eaa8a8abf1"


# static fields
.field protected static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/i;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static initialize()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lorg/libsdl/app/i;->setContext(Landroid/content/Context;)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->initialize()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/libsdl/app/SDLAudioManager;->initialize()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/libsdl/app/SDLControllerManager;->initialize()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/i;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lorg/libsdl/app/i;->loadLibrary(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.getkeepsafe.relinker.ReLinker"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.getkeepsafe.relinker.ReLinker$LoadListener"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "android.content.Context"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "java.lang.String"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 6
    const-string v4, "force"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 9
    const-string v6, "loadLibrary"

    filled-new-array {v2, v3, v3, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 10
    filled-new-array {p1, p0, v5, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 11
    :catchall_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "No library name provided."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/libsdl/app/SDLAudioManager;->setContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lorg/libsdl/app/i;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static setupJNI()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->nativeSetupJNI()I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/libsdl/app/SDLAudioManager;->nativeSetupJNI()I

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/libsdl/app/SDLControllerManager;->nativeSetupJNI()I

    .line 8
    .line 9
    .line 10
    return-void
.end method
