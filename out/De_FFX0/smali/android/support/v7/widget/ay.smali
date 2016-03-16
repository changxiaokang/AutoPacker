.class public Landroid/support/v7/widget/ay;
.super Landroid/widget/SeekBar;


# instance fields
.field private a:Landroid/support/v7/widget/az;

.field private b:Landroid/support/v7/widget/cy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/b/b;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/support/v7/widget/cy;->a(Landroid/content/Context;)Landroid/support/v7/widget/cy;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/cy;

    new-instance v0, Landroid/support/v7/widget/az;

    iget-object v1, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/cy;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/az;-><init>(Landroid/widget/SeekBar;Landroid/support/v7/widget/cy;)V

    iput-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/support/v7/widget/az;

    iget-object v0, p0, Landroid/support/v7/widget/ay;->a:Landroid/support/v7/widget/az;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/az;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method
