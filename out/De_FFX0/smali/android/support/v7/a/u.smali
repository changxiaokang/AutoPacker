.class public Landroid/support/v7/a/u;
.super Landroid/support/v4/a/r;

# interfaces
.implements Landroid/support/v4/a/bg;
.implements Landroid/support/v7/a/v;


# instance fields
.field private i:Landroid/support/v7/a/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Landroid/support/v4/a/ax;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/view/c;)Landroid/support/v7/view/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/a/bf;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/support/v4/a/bf;->a(Landroid/app/Activity;)Landroid/support/v4/a/bf;

    return-void
.end method

.method public a(Landroid/support/v7/view/b;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/support/v4/a/ax;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/w;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/a/ax;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public b(Landroid/support/v4/a/bf;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/support/v7/view/b;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/w;->e()V

    return-void
.end method

.method public f()Landroid/support/v7/a/a;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/w;->a()Landroid/support/v7/a/a;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/a/u;->a()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/a/u;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/a/bf;->a(Landroid/content/Context;)Landroid/support/v4/a/bf;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/a/u;->a(Landroid/support/v4/a/bf;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/a/u;->b(Landroid/support/v4/a/bf;)V

    invoke-virtual {v0}, Landroid/support/v4/a/bf;->a()V

    :try_start_0
    invoke-static {p0}, Landroid/support/v4/a/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/a/u;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/a/u;->b(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/w;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public i()Landroid/support/v7/a/w;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/u;->i:Landroid/support/v7/a/w;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Landroid/support/v7/a/w;->a(Landroid/app/Activity;Landroid/support/v7/a/v;)Landroid/support/v7/a/w;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/u;->i:Landroid/support/v7/a/w;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/u;->i:Landroid/support/v7/a/w;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/w;->e()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/a/r;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/w;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/a/u;->h()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/w;->g()V

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/w;->a(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/support/v4/a/r;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/a/r;->onDestroy()V

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/w;->f()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/a/r;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/u;->f()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/a/a;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->g()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/a/r;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/a/r;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/a/r;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/w;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/a/r;->onPostResume()V

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/w;->d()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/a/r;->onStop()V

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/w;->c()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/a/r;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/w;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/w;->a(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/w;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/u;->i()Landroid/support/v7/a/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/w;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
