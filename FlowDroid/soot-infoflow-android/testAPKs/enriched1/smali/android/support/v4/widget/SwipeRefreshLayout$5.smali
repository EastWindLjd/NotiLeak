.class Landroid/support/v4/widget/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "null"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 130
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 134
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 134
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$902(Landroid/support/v4/widget/SwipeRefreshLayout;Z)Z

    .line 135
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$700(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    move-result v3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    add-int v4, v3, v4

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 137
    return-void
.end method
