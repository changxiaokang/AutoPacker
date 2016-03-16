.class Landroid/support/v7/widget/bb;
.super Landroid/support/v7/widget/bw;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bd;

.field final synthetic b:Landroid/support/v7/widget/ba;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ba;Landroid/view/View;Landroid/support/v7/widget/bd;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/ba;

    iput-object p3, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bd;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/bw;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/br;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/bd;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/ba;

    invoke-static {v0}, Landroid/support/v7/widget/ba;->a(Landroid/support/v7/widget/ba;)Landroid/support/v7/widget/bd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bd;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/support/v7/widget/ba;

    invoke-static {v0}, Landroid/support/v7/widget/ba;->a(Landroid/support/v7/widget/ba;)Landroid/support/v7/widget/bd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bd;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
