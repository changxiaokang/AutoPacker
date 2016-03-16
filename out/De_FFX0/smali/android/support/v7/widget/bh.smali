.class Landroid/support/v7/widget/bh;
.super Ljava/lang/Object;


# static fields
.field private static final b:[I

.field private static final c:[I


# instance fields
.field final a:Landroid/widget/TextView;

.field private d:Landroid/support/v7/widget/cx;

.field private e:Landroid/support/v7/widget/cx;

.field private f:Landroid/support/v7/widget/cx;

.field private g:Landroid/support/v7/widget/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/bh;->b:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/b/b;->textAllCaps:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/bh;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010034
        0x101016f
        0x101016d
        0x1010170
        0x101016e
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/bh;->a:Landroid/widget/TextView;

    return-void
.end method

.method static a(Landroid/widget/TextView;)Landroid/support/v7/widget/bh;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bi;-><init>(Landroid/widget/TextView;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/bh;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bh;-><init>(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Landroid/support/v7/widget/cy;I)Landroid/support/v7/widget/cx;
    .locals 3

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/cy;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v7/widget/cx;

    invoke-direct {v1}, Landroid/support/v7/widget/cx;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/cx;->d:Z

    iput-object v0, v1, Landroid/support/v7/widget/cx;->a:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/bh;->d:Landroid/support/v7/widget/cx;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bh;->e:Landroid/support/v7/widget/cx;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bh;->f:Landroid/support/v7/widget/cx;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bh;->g:Landroid/support/v7/widget/cx;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/bh;->d:Landroid/support/v7/widget/cx;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bh;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/cx;)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/bh;->e:Landroid/support/v7/widget/cx;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bh;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/cx;)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/bh;->f:Landroid/support/v7/widget/cx;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bh;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/cx;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/bh;->g:Landroid/support/v7/widget/cx;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/bh;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/cx;)V

    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/support/v7/widget/bh;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->a(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/cx;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/cy;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/cx;[I)V

    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/cy;->a(Landroid/content/Context;)Landroid/support/v7/widget/cy;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/bh;->b:[I

    invoke-virtual {v0, p1, v2, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v0, v1, v4}, Landroid/support/v7/widget/bh;->a(Landroid/content/Context;Landroid/support/v7/widget/cy;I)Landroid/support/v7/widget/cx;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/bh;->d:Landroid/support/v7/widget/cx;

    :cond_0
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v0, v1, v4}, Landroid/support/v7/widget/bh;->a(Landroid/content/Context;Landroid/support/v7/widget/cy;I)Landroid/support/v7/widget/cx;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/bh;->e:Landroid/support/v7/widget/cx;

    :cond_1
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v0, v1, v4}, Landroid/support/v7/widget/bh;->a(Landroid/content/Context;Landroid/support/v7/widget/cy;I)Landroid/support/v7/widget/cx;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/bh;->f:Landroid/support/v7/widget/cx;

    :cond_2
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v0, v1, v4}, Landroid/support/v7/widget/bh;->a(Landroid/content/Context;Landroid/support/v7/widget/cy;I)Landroid/support/v7/widget/cx;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/bh;->g:Landroid/support/v7/widget/cx;

    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v3, v7, :cond_5

    sget-object v1, Landroid/support/v7/b/l;->TextAppearance:[I

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v7/b/l;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Landroid/support/v7/b/l;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/bh;->a(Z)V

    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    sget-object v1, Landroid/support/v7/widget/bh;->c:[I

    invoke-virtual {v0, p1, v1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/bh;->a(Z)V

    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method a(Z)V
    .locals 3

    iget-object v1, p0, Landroid/support/v7/widget/bh;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/d/a;

    iget-object v2, p0, Landroid/support/v7/widget/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/d/a;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
