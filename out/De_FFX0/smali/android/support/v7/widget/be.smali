.class Landroid/support/v7/widget/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ba;

.field final synthetic b:Landroid/support/v7/widget/bd;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bd;Landroid/support/v7/widget/ba;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/bd;

    iput-object p2, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/bd;

    iget-object v0, v0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/ba;->setSelection(I)V

    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/bd;

    iget-object v0, v0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/bd;

    iget-object v0, v0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/ba;

    iget-object v1, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/bd;

    invoke-static {v1}, Landroid/support/v7/widget/bd;->a(Landroid/support/v7/widget/bd;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/widget/ba;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/bd;

    invoke-virtual {v0}, Landroid/support/v7/widget/bd;->i()V

    return-void
.end method
