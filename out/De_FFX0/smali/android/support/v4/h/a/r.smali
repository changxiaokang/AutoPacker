.class public Landroid/support/v4/h/a/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/h/a/s;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/h/a/v;

    invoke-direct {v0}, Landroid/support/v4/h/a/v;-><init>()V

    sput-object v0, Landroid/support/v4/h/a/r;->a:Landroid/support/v4/h/a/s;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/h/a/t;

    invoke-direct {v0}, Landroid/support/v4/h/a/t;-><init>()V

    sput-object v0, Landroid/support/v4/h/a/r;->a:Landroid/support/v4/h/a/s;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/h/a/x;

    invoke-direct {v0}, Landroid/support/v4/h/a/x;-><init>()V

    sput-object v0, Landroid/support/v4/h/a/r;->a:Landroid/support/v4/h/a/s;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/h/a/r;->a:Landroid/support/v4/h/a/s;

    invoke-interface {v0, p0}, Landroid/support/v4/h/a/s;->a(Landroid/support/v4/h/a/r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/h/a/r;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/h/a/r;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/h/a/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/a/r;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Landroid/support/v4/h/a/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
