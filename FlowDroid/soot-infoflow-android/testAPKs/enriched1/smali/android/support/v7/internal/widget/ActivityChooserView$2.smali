.class Landroid/support/v7/internal/widget/ActivityChooserView$2;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserView$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "null"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->access$100(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ListPopupWindow;->dismiss()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->access$100(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v3, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v3, :cond_0

    .line 145
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$2;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v3, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    goto :goto_0
.end method
