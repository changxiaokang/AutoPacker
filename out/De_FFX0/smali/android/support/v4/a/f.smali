.class Landroid/support/v4/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/a/as;


# instance fields
.field final synthetic a:Landroid/support/v4/a/o;

.field final synthetic b:Landroid/support/v4/a/e;


# direct methods
.method constructor <init>(Landroid/support/v4/a/e;Landroid/support/v4/a/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/f;->b:Landroid/support/v4/a/e;

    iput-object p2, p0, Landroid/support/v4/a/f;->a:Landroid/support/v4/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/f;->a:Landroid/support/v4/a/o;

    invoke-virtual {v0}, Landroid/support/v4/a/o;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
