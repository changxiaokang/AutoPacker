.class Landroid/support/v7/a/aa;
.super Landroid/support/v7/a/z;


# instance fields
.field private r:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/v;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/a/z;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/v;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/aa;->r:Z

    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Landroid/support/v7/a/ab;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/ab;-><init>(Landroid/support/v7/a/aa;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/a/aa;->r:Z

    return v0
.end method
