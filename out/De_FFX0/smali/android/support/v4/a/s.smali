.class Landroid/support/v4/a/s;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/support/v4/a/r;


# direct methods
.method constructor <init>(Landroid/support/v4/a/r;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/s;->a:Landroid/support/v4/a/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/a/s;->a:Landroid/support/v4/a/r;

    iget-boolean v0, v0, Landroid/support/v4/a/r;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/s;->a:Landroid/support/v4/a/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/r;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/a/s;->a:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->b()V

    iget-object v0, p0, Landroid/support/v4/a/s;->a:Landroid/support/v4/a/r;

    iget-object v0, v0, Landroid/support/v4/a/r;->b:Landroid/support/v4/a/w;

    invoke-virtual {v0}, Landroid/support/v4/a/w;->o()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method