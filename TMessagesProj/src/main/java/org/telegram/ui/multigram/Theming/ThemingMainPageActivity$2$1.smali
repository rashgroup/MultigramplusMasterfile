.class Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2$1;
.super Ljava/lang/Object;
.source "ThemingMainPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2$1;->this$1:Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 257
    iget-object v1, p0, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2$1;->this$1:Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "theme_tabs_height"

    iget-object v2, p0, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2$1;->this$1:Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;->this$0:Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity;

    # getter for: Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity;->access$1000(Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2$1;->this$1:Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity$2;->this$0:Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity;

    # getter for: Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity;->access$1000(Lorg/telegram/ui/multigram/Theming/ThemingMainPageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 264
    :cond_0
    return-void
.end method
