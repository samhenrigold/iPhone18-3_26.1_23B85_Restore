@interface BKUIBundleEnrollViewController
- (id)bundleAlertView;
- (void)afterStatusMessage:(unsigned int)message;
- (void)bundleAlertView;
- (void)statusMessage:(unsigned int)message;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BKUIBundleEnrollViewController

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = BKUIBundleEnrollViewController;
  [(BKUIBundleEnrollViewController *)&v7 viewDidAppear:appear];
  self->_shortScanCount = 0;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  self->_maxShortScanCount = [standardUserDefaults integerForKey:@"maxShortScanCount"];

  if (!self->_maxShortScanCount)
  {
    self->_maxShortScanCount = 5;
  }

  v5 = os_log_create("com.apple.biometrickitui", "BundleEnrollViewController");
  bkui_bundle_enroll_view_controller_log = self->bkui_bundle_enroll_view_controller_log;
  self->bkui_bundle_enroll_view_controller_log = v5;

  +[BKUIBundleSettings synchronize];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = BKUIBundleEnrollViewController;
  [(BKUIBundleEnrollViewController *)&v6 viewWillDisappear:?];
  bundleAlertView = [(BKUIBundleEnrollViewController *)self bundleAlertView];
  [bundleAlertView hideAnimated:disappearCopy];
}

- (void)statusMessage:(unsigned int)message
{
  v3 = *&message;
  bkui_bundle_enroll_view_controller_log = self->bkui_bundle_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_bundle_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [(BKUIBundleEnrollViewController *)bkui_bundle_enroll_view_controller_log statusMessage:v3];
  }

  if (v3 == 78)
  {
    ++self->_shortScanCount;
  }
}

- (void)afterStatusMessage:(unsigned int)message
{
  v3 = *&message;
  bkui_bundle_enroll_view_controller_log = self->bkui_bundle_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_bundle_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [(BKUIBundleEnrollViewController *)bkui_bundle_enroll_view_controller_log afterStatusMessage:v3];
  }

  if (v3 == 64 && self->_shortScanCount == self->_maxShortScanCount)
  {
    self->_shortScanCount = 0;
    bundleAlertView = [(BKUIBundleEnrollViewController *)self bundleAlertView];
    isAlertHidden = [bundleAlertView isAlertHidden];

    if (isAlertHidden)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"KEEP_FINGER_TITLE" value:&stru_2853BB280 table:@"BiometricKitUI"];

      if (MGGetSInt32Answer() == 2)
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:@"KEEP_FINGER_TITLE_FOLLOW_UP" value:&stru_2853BB280 table:@"Mesa-j307"];

        v9 = v11;
      }

      bundleAlertView2 = [(BKUIBundleEnrollViewController *)self bundleAlertView];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"OK" value:&stru_2853BB280 table:@"BiometricKitUI"];
      [bundleAlertView2 show:v9 message:&stru_2853BB280 cancelButtonTitle:v14 viewController:self];
    }
  }
}

- (id)bundleAlertView
{
  bkui_bundle_enroll_view_controller_log = self->bkui_bundle_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_bundle_enroll_view_controller_log, OS_LOG_TYPE_ERROR))
  {
    [(BKUIBundleEnrollViewController *)bkui_bundle_enroll_view_controller_log bundleAlertView];
  }

  return 0;
}

- (void)statusMessage:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [BKUIUtils nameForMessage:a2];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_0(&dword_241B0A000, v5, v6, "statusMessage: status = %3d (%@)", v7, v8, v9, v10);
}

- (void)afterStatusMessage:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [BKUIUtils nameForMessage:a2];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_0(&dword_241B0A000, v5, v6, "afterStatusMessage: status = %3d (%@)", v7, v8, v9, v10);
}

- (void)bundleAlertView
{
  v6 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = [objc_opt_class() description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_241B0A000, selfCopy, OS_LOG_TYPE_ERROR, "BiometricKitUI: %@ does not override BKUIBundleEnrollViewController.bundleAlertView!", &v4, 0xCu);
}

@end