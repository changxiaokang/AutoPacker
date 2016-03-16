.class Landroid/support/v7/widget/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/br;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/br;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/br;Landroid/support/v7/widget/bs;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/cb;-><init>(Landroid/support/v7/widget/br;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/br;

    invoke-static {v0}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/br;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/br;

    invoke-static {v0}, Landroid/support/v7/widget/br;->d(Landroid/support/v7/widget/br;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/br;

    invoke-static {v1}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/br;)Landroid/support/v7/widget/cd;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/br;

    invoke-static {v0}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/br;)Landroid/support/v7/widget/cd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/cd;->run()V

    :cond_0
    return-void
.end method
