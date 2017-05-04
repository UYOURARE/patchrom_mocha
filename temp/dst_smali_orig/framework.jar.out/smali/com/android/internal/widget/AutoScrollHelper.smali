.class public abstract Lcom/android/internal/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;,
        Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;,
        Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/AutoScrollHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/widget/AutoScrollHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/widget/AutoScrollHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(III)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/widget/AutoScrollHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->cancelTargetTouch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v3}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    new-array v3, v4, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    new-array v3, v4, [F

    fill-array-data v3, :array_4

    iput-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const v4, 0x44c4e000    # 1575.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v0, v3

    .local v0, "maxVelocity":I
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const v4, 0x439d8000    # 315.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v2, v3

    .local v2, "minVelocity":I
    int-to-float v3, v0

    int-to-float v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    int-to-float v3, v2

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;

    invoke-virtual {p0, v8, v8}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    invoke-virtual {p0, v5, v5}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    invoke-virtual {p0, v7, v7}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    sget v3, Lcom/android/internal/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;

    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private cancelTargetTouch()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "eventTime":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .local v8, "cancel":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 9
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    .prologue
    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v3, v7, p1

    .local v3, "relativeEdge":F
    iget-object v7, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v0, v7, p1

    .local v0, "maximumEdge":F
    invoke-direct {p0, v3, p3, v0, p2}, Lcom/android/internal/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v6

    .local v6, "value":F
    cmpl-float v7, v6, v8

    if-nez v7, :cond_0

    return v8

    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v4, v7, p1

    .local v4, "relativeVelocity":F
    iget-object v7, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v2, v7, p1

    .local v2, "minimumVelocity":F
    iget-object v7, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v1, v7, p1

    .local v1, "maximumVelocity":F
    mul-float v5, v4, p4

    .local v5, "targetVelocity":F
    cmpl-float v7, v6, v8

    if-lez v7, :cond_1

    mul-float v7, v6, v5

    invoke-static {v7, v2, v1}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    return v7

    :cond_1
    neg-float v7, v6

    mul-float/2addr v7, v5

    invoke-static {v7, v2, v1}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    neg-float v7, v7

    return v7
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private constrainEdgeValue(FF)F
    .locals 4
    .param p1, "current"    # F
    .param p2, "leading"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v0, p2, v2

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    return v2

    :pswitch_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_2

    div-float v0, p1, p2

    sub-float v0, v3, v0

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v3

    :pswitch_1
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    neg-float v0, p2

    div-float v0, p1, v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 7
    .param p1, "relativeValue"    # F
    .param p2, "size"    # F
    .param p3, "maxValue"    # F
    .param p4, "current"    # F

    .prologue
    const/4 v6, 0x0

    mul-float v5, p1, p2

    invoke-static {v5, v6, p3}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .local v0, "edgeSize":F
    invoke-direct {p0, p4, v0}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v3

    .local v3, "valueLeading":F
    sub-float v5, p2, p4

    invoke-direct {p0, v5, v0}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v4

    .local v4, "valueTrailing":F
    sub-float v2, v4, v3

    .local v2, "value":F
    cmpg-float v5, v2, v6

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v6, v2

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    neg-float v1, v5

    .local v1, "interpolated":F
    :goto_0
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v5

    return v5

    .end local v1    # "interpolated":F
    :cond_0
    cmpl-float v5, v2, v6

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1    # "interpolated":F
    goto :goto_0

    .end local v1    # "interpolated":F
    :cond_1
    return v6
.end method

.method private requestStop()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_0
.end method

.method private shouldAnimate()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    .local v1, "scroller":Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v2

    .local v2, "verticalDirection":I
    invoke-virtual {v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    .local v0, "horizontalDirection":I
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v3

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private startAnimating()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;)V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    iput-boolean v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v4, :cond_0

    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v4, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    :cond_2
    return v3

    :pswitch_0
    iput-boolean v7, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    iput-boolean v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v1

    .local v1, "xTargetVelocity":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0, v7, v4, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v2

    .local v2, "yTargetVelocity":F
    iget-object v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    iget-boolean v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_0

    .end local v1    # "xTargetVelocity":F
    .end local v2    # "yTargetVelocity":F
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    return-object p0
.end method

.method public setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    goto :goto_0
.end method

.method public setExclusive(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 0
    .param p1, "exclusive"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    return-object p0
.end method

.method public setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object p0
.end method

.method public setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    div-float v1, p1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    div-float v1, p2, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object p0
.end method

.method public setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMin"    # F
    .param p2, "verticalMin"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    div-float v1, p1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    div-float v1, p2, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object p0
.end method

.method public setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    return-object p0
.end method

.method public setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    return-object p0
.end method

.method public setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object p0
.end method

.method public setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    div-float v1, p1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    div-float v1, p2, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object p0
.end method
