.class Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V
    .locals 0

    .line 658
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 660
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 663
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 664
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v2, v0, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 666
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v6, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-static {v0, v6}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->access$102(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 668
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 668
    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->access$302(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 669
    return-void
.end method
