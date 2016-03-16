.class Landroid/support/v7/a/ak;
.super Landroid/support/v4/h/dt;


# instance fields
.field final synthetic a:Landroid/support/v7/a/aj;


# direct methods
.method constructor <init>(Landroid/support/v7/a/aj;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/a/ak;->a:Landroid/support/v7/a/aj;

    invoke-direct {p0}, Landroid/support/v4/h/dt;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/a/ak;->a:Landroid/support/v7/a/aj;

    iget-object v0, v0, Landroid/support/v7/a/aj;->a:Landroid/support/v7/a/ae;

    iget-object v0, v0, Landroid/support/v7/a/ae;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/a/ak;->a:Landroid/support/v7/a/aj;

    iget-object v0, v0, Landroid/support/v7/a/aj;->a:Landroid/support/v7/a/ae;

    iget-object v0, v0, Landroid/support/v7/a/ae;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/h/bo;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/a/ak;->a:Landroid/support/v7/a/aj;

    iget-object v0, v0, Landroid/support/v7/a/aj;->a:Landroid/support/v7/a/ae;

    iget-object v0, v0, Landroid/support/v7/a/ae;->q:Landroid/support/v4/h/db;

    invoke-virtual {v0, v2}, Landroid/support/v4/h/db;->a(Landroid/support/v4/h/ds;)Landroid/support/v4/h/db;

    iget-object v0, p0, Landroid/support/v7/a/ak;->a:Landroid/support/v7/a/aj;

    iget-object v0, v0, Landroid/support/v7/a/aj;->a:Landroid/support/v7/a/ae;

    iput-object v2, v0, Landroid/support/v7/a/ae;->q:Landroid/support/v4/h/db;

    return-void
.end method
