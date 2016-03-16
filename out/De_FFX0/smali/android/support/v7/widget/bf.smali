.class Landroid/support/v7/widget/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bd;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bd;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bf;->a:Landroid/support/v7/widget/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bf;->a:Landroid/support/v7/widget/bd;

    iget-object v1, p0, Landroid/support/v7/widget/bf;->a:Landroid/support/v7/widget/bd;

    iget-object v1, v1, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/ba;

    invoke-static {v0, v1}, Landroid/support/v7/widget/bd;->a(Landroid/support/v7/widget/bd;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bf;->a:Landroid/support/v7/widget/bd;

    invoke-virtual {v0}, Landroid/support/v7/widget/bd;->i()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bf;->a:Landroid/support/v7/widget/bd;

    invoke-virtual {v0}, Landroid/support/v7/widget/bd;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/bf;->a:Landroid/support/v7/widget/bd;

    invoke-static {v0}, Landroid/support/v7/widget/bd;->b(Landroid/support/v7/widget/bd;)V

    goto :goto_0
.end method
