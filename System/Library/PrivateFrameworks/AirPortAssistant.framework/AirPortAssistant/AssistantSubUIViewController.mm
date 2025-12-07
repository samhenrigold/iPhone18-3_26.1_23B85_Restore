@interface AssistantSubUIViewController
+ (id)containerViewWithWidth:(double)width;
+ (id)labelViewInContainer:(id *)container width:(double)width constrain:(BOOL)constrain;
+ (id)labelViewInContainer:(id *)container width:(double)width withSpinner:(id *)spinner above:(BOOL)above;
+ (id)tableViewWithWidth:(double)width height:(double)height;
+ (id)topoViewWithWidth:(double)width;
- (AssistantSubUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)getProductLocalizedStringWithFormat:(id)format;
- (void)dealloc;
- (void)setLeftNavigationButton:(id)button enable:(BOOL)enable hide:(BOOL)hide;
- (void)setRightNavigationButton:(id)button enable:(BOOL)enable hide:(BOOL)hide;
- (void)viewDidLoad;
@end

@implementation AssistantSubUIViewController

- (AssistantSubUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = AssistantSubUIViewController;
  v4 = [(AUUITableViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v4->_outResultsDict = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (dword_27E380FD8 <= 100 && (dword_27E380FD8 != -1 || sub_23EB74AC8(&dword_27E380FD8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380FD8, "[AssistantSubUIViewController initWithNibName:bundle:]", 100, "%@\n", v4);
  }

  return v4;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = AssistantSubUIViewController;
  [(AssistantSubUIViewController *)&v18 viewDidLoad];
  v5 = objc_msgSend_objectForKey_(self->_inParamDict, v3, @"kSBSKey_TargetNetwork", v4);
  v8 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v6, v5, v7);
  v9 = sub_23EB6D2F0(v8);
  v10 = sub_23EB6CD3C(v9, qword_27E383800);
  v14 = objc_msgSend_navigationItem(self, v11, v12, v13);
  objc_msgSend_setTitle_(v14, v15, v10, v16);
  objc_msgSend_setLeftNavigationButton_enable_hide_(self, v17, @"kBack", 1, 0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AssistantSubUIViewController;
  [(AUUITableViewController *)&v3 dealloc];
}

- (void)setLeftNavigationButton:(id)button enable:(BOOL)enable hide:(BOOL)hide
{
  if (objc_msgSend_isEqualToString_(button, a2, @"kBack", enable, hide))
  {
    v9 = objc_alloc(MEMORY[0x277D751E0]);
    v10 = sub_23EB6CD3C(@"kBack", qword_27E383800);
    v12 = objc_msgSend_initWithTitle_style_target_action_(v9, v11, v10, 0, 0, 0);
    v16 = objc_msgSend_navigationItem(self, v13, v14, v15);

    objc_msgSend_setBackBarButtonItem_(v16, v17, v12, v18);
  }

  else if (objc_msgSend_isEqualToString_(button, v7, @"kCancel", v8))
  {
    v19 = objc_alloc(MEMORY[0x277D751E0]);
    v20 = sub_23EB6CD3C(@"kCancel", qword_27E383800);
    v24 = objc_msgSend_parentController(self, v21, v22, v23);
    v26 = objc_msgSend_initWithTitle_style_target_action_(v19, v25, v20, 0, v24, sel_handleCancelButton_);
    v30 = objc_msgSend_navigationItem(self, v27, v28, v29);

    objc_msgSend_setLeftBarButtonItem_(v30, v31, v26, v32);
  }
}

- (void)setRightNavigationButton:(id)button enable:(BOOL)enable hide:(BOOL)hide
{
  enableCopy = enable;
  if (objc_msgSend_isEqualToString_(button, a2, @"kNext", enable))
  {
    if (hide)
    {
      v11 = 0;
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277D751E0]);
      v13 = sub_23EB6CD3C(@"kNext", qword_27E383800);
      v17 = objc_msgSend_parentController(self, v14, v15, v16);
      v11 = objc_msgSend_initWithTitle_style_target_action_(v12, v18, v13, 2, v17, sel_handleNextButton_);
      objc_msgSend_setEnabled_(v11, v19, enableCopy, v20);
    }

    v21 = objc_msgSend_navigationItem(self, v8, v9, v10);

    objc_msgSend_setRightBarButtonItem_(v21, v22, v11, v23);
  }
}

- (id)getProductLocalizedStringWithFormat:(id)format
{
  v6 = objc_msgSend_inParamDict(self, a2, format, v3);

  return objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v5, format, v6);
}

+ (id)labelViewInContainer:(id *)container width:(double)width constrain:(BOOL)constrain
{
  constrainCopy = constrain;
  v8 = objc_alloc(MEMORY[0x277D75D18]);
  v12 = objc_msgSend_initWithFrame_(v8, v9, v10, v11, 0.0, 0.0, width, 50.0);
  v13 = v12;
  if (container)
  {
    *container = v12;
  }

  v14 = objc_alloc(MEMORY[0x277D756B8]);
  v18 = objc_msgSend_initWithFrame_(v14, v15, v16, v17, 0.0, 0.0, width, 50.0);
  objc_msgSend_setText_(v18, v19, &stru_285145FE8, v20);
  v24 = objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v21, v22, v23, 15.0);
  objc_msgSend_setFont_(v18, v25, v24, v26);
  objc_msgSend_setAdjustsFontSizeToFitWidth_(v18, v27, 1, v28);
  objc_msgSend_setMinimumScaleFactor_(v18, v29, v30, v31, 0.866666667);
  v35 = objc_msgSend__secondaryLabelColor(MEMORY[0x277D75348], v32, v33, v34);
  objc_msgSend_setTextColor_(v18, v36, v35, v37);
  objc_msgSend_setTextAlignment_(v18, v38, 1, v39);
  objc_msgSend_setLineBreakMode_(v18, v40, 0, v41);
  objc_msgSend_setNumberOfLines_(v18, v42, 0, v43);
  objc_msgSend_addSubview_(v13, v44, v18, v45);
  if (constrainCopy)
  {
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v18, v46, 0, v47);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v13, v48, 0, v49);
    v50 = MEMORY[0x277CCAAD0];
    v51 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v18, 0);
    v53 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v50, v52, @"V:|-10-[label]-10-|", 0, 0, v51);
    objc_msgSend_addConstraints_(v13, v54, v53, v55);
    v56 = MEMORY[0x277CCAAD0];
    v57 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v18, 0);
    v59 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v56, v58, @"H:|-10-[label]-10-|", 0, 0, v57);
    objc_msgSend_addConstraints_(v13, v60, v59, v61);
  }

  return v18;
}

+ (id)labelViewInContainer:(id *)container width:(double)width withSpinner:(id *)spinner above:(BOOL)above
{
  aboveCopy = above;
  v60 = 0;
  v9 = objc_msgSend_labelViewInContainer_width_constrain_(AssistantSubUIViewController, a2, &v60, 0, width);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v9, v10, 0, v11);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v60, v12, 0, v13);
  if (container)
  {
    *container = v60;
  }

  v14 = objc_alloc(MEMORY[0x277D750E8]);
  v17 = objc_msgSend_initWithActivityIndicatorStyle_(v14, v15, 100, v16);
  v21 = objc_msgSend__labelColor(MEMORY[0x277D75348], v18, v19, v20);
  objc_msgSend_setColor_(v17, v22, v21, v23);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v17, v24, 0, v25);
  if (spinner)
  {
    *spinner = v17;
  }

  objc_msgSend_addSubview_(v60, v26, v17, v27);
  v28 = v60;
  v29 = MEMORY[0x277CCAAD0];
  if (aboveCopy)
  {
    v30 = _NSDictionaryOfVariableBindings(&cfstr_SpinnerLabel.isa, v17, v9, 0);
    v32 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v29, v31, @"V:|-4-[spinner]-4-[label]-4-|", 0, 0, v30);
    objc_msgSend_addConstraints_(v28, v33, v32, v34);
    v35 = v60;
    v37 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v36, v17, 9, 0, v60, 9, 1.0, 0.0);
    objc_msgSend_addConstraint_(v35, v38, v37, v39);
    v40 = v60;
    v41 = MEMORY[0x277CCAAD0];
    v42 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v9, 0);
    v44 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v41, v43, @"H:|-10-[label]-10-|", 0, 0, v42);
    objc_msgSend_addConstraints_(v40, v45, v44, v46);
  }

  else
  {
    v47 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v9, 0);
    v49 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v29, v48, @"V:|-10-[label]-10-|", 0, 0, v47);
    objc_msgSend_addConstraints_(v28, v50, v49, v51);
    v52 = v60;
    v53 = MEMORY[0x277CCAAD0];
    v54 = _NSDictionaryOfVariableBindings(&cfstr_SpinnerLabel.isa, v17, v9, 0);
    v56 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v53, v55, @"H:|-[spinner]-[label]-|", 1024, 0, v54);
    objc_msgSend_addConstraints_(v52, v57, v56, v58);
  }

  return v9;
}

+ (id)topoViewWithWidth:(double)width
{
  v4 = [UITopoView alloc];
  v8 = objc_msgSend_initWithFrame_(v4, v5, v6, v7, 0.0, 0.0, width, 140.0);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v8, v9, 0, v10);
  return v8;
}

+ (id)containerViewWithWidth:(double)width
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v8 = objc_msgSend_initWithFrame_(v4, v5, v6, v7, 0.0, 0.0, width, 20.0);

  return v8;
}

+ (id)tableViewWithWidth:(double)width height:(double)height
{
  v6 = objc_alloc(MEMORY[0x277D75B40]);
  v9 = objc_msgSend_initWithFrame_style_(v6, v7, 1, v8, 0.0, 0.0, width, height);

  return v9;
}

@end