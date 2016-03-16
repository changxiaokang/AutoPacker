.class public Landroid/support/v4/a/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/a/x;


# direct methods
.method private constructor <init>(Landroid/support/v4/a/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    return-void
.end method

.method public static final a(Landroid/support/v4/a/x;)Landroid/support/v4/a/w;
    .locals 1

    new-instance v0, Landroid/support/v4/a/w;

    invoke-direct {v0, p0}, Landroid/support/v4/a/w;-><init>(Landroid/support/v4/a/x;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/support/v4/a/y;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    invoke-virtual {v0}, Landroid/support/v4/a/x;->i()Landroid/support/v4/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/a/aa;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    iget-object v0, v0, Landroid/support/v4/a/aa;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v4/a/w;->b()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    iget-object v0, v0, Landroid/support/v4/a/aa;->f:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/aa;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/aa;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    return-void
.end method

.method public a(Landroid/support/v4/a/o;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    iget-object v1, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v2, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/a/aa;->a(Landroid/support/v4/a/x;Landroid/support/v4/a/v;Landroid/support/v4/a/o;)V

    return-void
.end method

.method public a(Landroid/support/v4/g/m;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/x;->a(Landroid/support/v4/g/m;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/a/x;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/x;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/aa;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/aa;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/aa;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    iget-object v0, v0, Landroid/support/v4/a/aa;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/aa;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/aa;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->h()V

    return-void
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->g()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->f()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->i()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->j()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->k()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->l()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->m()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->n()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->o()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->q()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->r()V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    iget-object v0, v0, Landroid/support/v4/a/x;->d:Landroid/support/v4/a/aa;

    invoke-virtual {v0}, Landroid/support/v4/a/aa;->d()Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    invoke-virtual {v0}, Landroid/support/v4/a/x;->k()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    invoke-virtual {v0}, Landroid/support/v4/a/x;->l()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    invoke-virtual {v0}, Landroid/support/v4/a/x;->m()V

    return-void
.end method

.method public s()Landroid/support/v4/g/m;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/w;->a:Landroid/support/v4/a/x;

    invoke-virtual {v0}, Landroid/support/v4/a/x;->n()Landroid/support/v4/g/m;

    move-result-object v0

    return-object v0
.end method
