.class Landroid/support/v7/a/ba;
.super Landroid/support/v4/h/dt;


# instance fields
.field final synthetic a:Landroid/support/v7/a/az;


# direct methods
.method constructor <init>(Landroid/support/v7/a/az;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-direct {p0}, Landroid/support/v4/h/dt;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-static {v0}, Landroid/support/v7/a/az;->a(Landroid/support/v7/a/az;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-static {v0}, Landroid/support/v7/a/az;->b(Landroid/support/v7/a/az;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-static {v0}, Landroid/support/v7/a/az;->b(Landroid/support/v7/a/az;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/h/bo;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-static {v0}, Landroid/support/v7/a/az;->c(Landroid/support/v7/a/az;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/h/bo;->a(Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-static {v0}, Landroid/support/v7/a/az;->c(Landroid/support/v7/a/az;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-static {v0}, Landroid/support/v7/a/az;->c(Landroid/support/v7/a/az;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/a/az;->a(Landroid/support/v7/a/az;Landroid/support/v7/view/l;)Landroid/support/v7/view/l;

    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-virtual {v0}, Landroid/support/v7/a/az;->e()V

    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-static {v0}, Landroid/support/v7/a/az;->d(Landroid/support/v7/a/az;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/ba;->a:Landroid/support/v7/a/az;

    invoke-static {v0}, Landroid/support/v7/a/az;->d(Landroid/support/v7/a/az;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/h/bo;->j(Landroid/view/View;)V

    :cond_1
    return-void
.end method
