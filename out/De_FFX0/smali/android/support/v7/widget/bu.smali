.class Landroid/support/v7/widget/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/br;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/br;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bu;->a:Landroid/support/v7/widget/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bu;->a:Landroid/support/v7/widget/br;

    invoke-static {v0}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)Landroid/support/v7/widget/bv;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/bv;Z)Z

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
