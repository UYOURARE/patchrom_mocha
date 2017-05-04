.class Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarViewLegacyDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeeksAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private mFocusedMonth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mSelectedDate:Ljava/util/Calendar;

.field private mSelectedWeek:I

.field private mTotalWeekCount:I

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method static synthetic -get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    iput-object p2, p1, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p1, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;

    invoke-direct {v2, p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;-><init>(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get8(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get9(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get8(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onDateTapped(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap3(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    if-eqz p2, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :goto_0
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, "selectedWeekDay":I
    :goto_1
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {v2, p1, v1, v3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->init(III)V

    return-object v2

    .end local v1    # "selectedWeekDay":I
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_0
    new-instance v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v4, v4, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setClickable(Z)V

    invoke-virtual {v2, p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "selectedWeekDay":I
    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .local v0, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getDayFromLocation(FLjava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get9(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get8(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->onDateTapped(Ljava/util/Calendar;)V

    return v3

    .end local v0    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public setFocusMonth(I)V
    .locals 1
    .param p1, "month"    # I

    .prologue
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "selectedDay"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method
