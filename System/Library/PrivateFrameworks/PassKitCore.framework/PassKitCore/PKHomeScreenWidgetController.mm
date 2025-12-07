@interface PKHomeScreenWidgetController
+ (void)reloadWidget:(id)widget budgeted:(BOOL)budgeted reason:(id)reason;
@end

@implementation PKHomeScreenWidgetController

+ (void)reloadWidget:(id)widget budgeted:(BOOL)budgeted reason:(id)reason
{
  budgetedCopy = budgeted;
  v27 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  reasonCopy = reason;
  v9 = PKLogFacilityTypeGetObject(0x21uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "false";
    v19 = 136315906;
    v20 = "+[PKHomeScreenWidgetController reloadWidget:budgeted:reason:]";
    v21 = 2112;
    v22 = widgetCopy;
    if (budgetedCopy)
    {
      v10 = "true";
    }

    v23 = 2080;
    v24 = v10;
    v25 = 2112;
    v26 = reasonCopy;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%s, identifier: %@ budgeted: %s, reason: %@", &v19, 0x2Au);
  }

  v11 = PKIsPad();
  v12 = PKHomeScreenWidgetStubBundleIdentifier;
  if (!v11)
  {
    v12 = PKHomeScreenWidgetBundleIdentifier;
  }

  v13 = *v12;
  v16 = [objc_alloc(getCHSTimelineControllerClass(v13 v14];
  v17 = v16;
  if (budgetedCopy)
  {
    [v16 reloadTimelineBudgetedWithReason:reasonCopy];
  }

  else
  {
    [v16 reloadTimelineWithReason:reasonCopy];
  }
  v18 = ;
  if (v18)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v18;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Chrono failied to reload timeline with error: %@", &v19, 0xCu);
    }
  }
}

@end