.class Landroid/support/v7/widget/cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/br;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/br;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/br;Landroid/support/v7/widget/bs;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/cd;-><init>(Landroid/support/v7/widget/br;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/br;

    invoke-static {v0}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)Landroid/support/v7/widget/bv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/br;

    invoke-static {v0}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)Landroid/support/v7/widget/bv;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/h/bo;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/br;

    invoke-static {v0}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)Landroid/support/v7/widget/bv;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bv;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/br;

    invoke-static {v1}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)Landroid/support/v7/widget/bv;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/bv;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/br;

    invoke-static {v0}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)Landroid/support/v7/widget/bv;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bv;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/br;

    iget v1, v1, Landroid/support/v7/widget/br;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/br;

    invoke-static {v0}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/br;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->c()V

    :cond_0
    return-void
.end method
