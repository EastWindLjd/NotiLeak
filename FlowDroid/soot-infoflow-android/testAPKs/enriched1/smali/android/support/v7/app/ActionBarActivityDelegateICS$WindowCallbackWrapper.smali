.class Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateICS.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegateICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowCallbackWrapper"
.end annotation


# instance fields
.field final mWrapped:Landroid/view/Window$Callback;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegateICS;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateICS;Landroid/view/Window$Callback;)V
    .locals 0

    .line 252
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    .line 254
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 278
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 258
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 263
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 283
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 268
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 273
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2

    .line 364
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 365
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateICS;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBarActivityDelegateICS;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 366
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2

    .line 358
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 359
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateICS;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBarActivityDelegateICS;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 360
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 328
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 329
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 318
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 319
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    .line 293
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2

    .line 288
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 334
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .line 308
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 303
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 339
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .line 298
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onSearchRequested()Z
    .locals 2

    .line 343
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    return v1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 313
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 314
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 324
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 349
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1
.end method
