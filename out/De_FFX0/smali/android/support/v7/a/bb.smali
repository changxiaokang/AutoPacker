.class Landroid/support/v7/a/bb;
.super Landroid/support/v4/h/dt;


# instance fields
.field final synthetic a:Landroid/support/v7/a/az;


# direct methods
.method constructor <init>(Landroid/support/v7/a/az;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/a/bb;->a:Landroid/support/v7/a/az;

    invoke-direct {p0}, Landroid/support/v4/h/dt;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/a/bb;->a:Landroid/support/v7/a/az;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/a/az;->a(Landroid/support/v7/a/az;Landroid/support/v7/view/l;)Landroid/support/v7/view/l;

    iget-object v0, p0, Landroid/support/v7/a/bb;->a:Landroid/support/v7/a/az;

    invoke-static {v0}, Landroid/support/v7/a/az;->c(Landroid/support/v7/a/az;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
