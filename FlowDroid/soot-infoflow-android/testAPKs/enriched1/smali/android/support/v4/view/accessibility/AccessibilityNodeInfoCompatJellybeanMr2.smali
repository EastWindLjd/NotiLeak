.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellybeanMr2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 28
    move-object v1, p0

    .line 28
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 28
    move-object v0, v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 24
    move-object v1, p0

    .line 24
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 24
    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 25
    return-void
.end method
