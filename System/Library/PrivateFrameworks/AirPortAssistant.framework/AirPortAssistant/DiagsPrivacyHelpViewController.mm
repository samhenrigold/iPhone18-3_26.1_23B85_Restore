@interface DiagsPrivacyHelpViewController
- (DiagsPrivacyHelpViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation DiagsPrivacyHelpViewController

- (DiagsPrivacyHelpViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = DiagsPrivacyHelpViewController;
  return [(DiagsPrivacyHelpViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)loadView
{
  v80.receiver = self;
  v80.super_class = DiagsPrivacyHelpViewController;
  [(DiagsPrivacyHelpViewController *)&v80 loadView];
  if (sub_23EC13460(self, v3, v4, v5) == 2)
  {
    v6 = @"DiagsAndUsageApplePrivacyHelpTitle";
  }

  else
  {
    v6 = @"DiagsAndUsageApplePrivacyHelpTitle.short";
  }

  v7 = sub_23EB6CD3C(v6, @"AirPortSettings");
  v11 = objc_msgSend_navigationItem(self, v8, v9, v10);
  objc_msgSend_setTitle_(v11, v12, v7, v13);
  v17 = objc_msgSend__systemBackgroundColor(MEMORY[0x277D75348], v14, v15, v16);
  v21 = objc_msgSend_view(self, v18, v19, v20);
  objc_msgSend_setBackgroundColor_(v21, v22, v17, v23);
  v27 = objc_msgSend_view(self, v24, v25, v26);
  objc_msgSend_bounds(v27, v28, v29, v30);
  if (v34 <= 400.0)
  {
    v35 = 5.0;
  }

  else
  {
    v35 = 10.0;
  }

  v36 = objc_msgSend_view(self, v31, v32, v33);
  objc_msgSend_bounds(v36, v37, v38, v39);
  v82 = CGRectInset(v81, v35, v35);
  x = v82.origin.x;
  y = v82.origin.y;
  width = v82.size.width;
  height = v82.size.height;
  v44 = objc_alloc(MEMORY[0x277D75C40]);
  v48 = objc_msgSend_initWithFrame_(v44, v45, v46, v47, x, y, width, height);
  objc_msgSend_setEditable_(v48, v49, 0, v50);
  v54 = objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v51, v52, v53, 14.0);
  objc_msgSend_setFont_(v48, v55, v54, v56);
  v60 = objc_msgSend__labelColor(MEMORY[0x277D75348], v57, v58, v59);
  objc_msgSend_setTextColor_(v48, v61, v60, v62);
  objc_msgSend_setAutoresizingMask_(v48, v63, 18, v64);
  v68 = objc_msgSend_clearColor(MEMORY[0x277D75348], v65, v66, v67);
  objc_msgSend_setBackgroundColor_(v48, v69, v68, v70);
  v71 = sub_23EB6CD3C(@"ABOUT_DIAGNOSTICS_INFO_TEXT_IOS", @"AirPortSettings");
  objc_msgSend_setText_(v48, v72, v71, v73);
  v77 = objc_msgSend_view(self, v74, v75, v76);
  objc_msgSend_addSubview_(v77, v78, v48, v79);
}

@end