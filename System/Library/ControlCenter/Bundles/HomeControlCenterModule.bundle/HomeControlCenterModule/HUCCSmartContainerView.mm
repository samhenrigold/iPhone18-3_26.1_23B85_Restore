@interface HUCCSmartContainerView
- (CGRect)compressedAnimationStartFrame;
- (HUCCSmartContainerView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)hideLockSecurity;
- (void)layoutSubviews;
- (void)resetToInitialState;
- (void)setCompressedView:(id)view;
- (void)setExpandedView:(id)view;
- (void)showLockSecurityWithFrameDelegate:(id)delegate;
- (void)willMoveToExpandedStateWithAnimationStartFrame:(CGRect)frame;
@end

@implementation HUCCSmartContainerView

- (HUCCSmartContainerView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = HUCCSmartContainerView;
  v5 = [(HUCCSmartContainerView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = objc_msgSend_clearColor(MEMORY[0x29EDC7A00], v3, v4);
    objc_msgSend_setBackgroundColor_(v5, v7, v6);

    objc_msgSend_setClipsToBounds_(v5, v8, 0);
    v11 = objc_msgSend_controlCenterModuleBackgroundMaterial(MEMORY[0x29EDC0CC8], v9, v10);
    objc_msgSend_setAnimationView_(v5, v12, v11);

    CCUICompactModuleContinuousCornerRadius();
    v14 = v13;
    v17 = objc_msgSend_animationView(v5, v15, v16);
    objc_msgSend__setContinuousCornerRadius_(v17, v18, v19, v14);

    objc_msgSend_setIsShowingLockSecurity_(v5, v20, 0);
  }

  return v5;
}

- (void)didMoveToSuperview
{
  v17 = *MEMORY[0x29EDCA608];
  v10.receiver = self;
  v10.super_class = HUCCSmartContainerView;
  [(HUCCSmartContainerView *)&v10 didMoveToSuperview];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = objc_msgSend_window(self, v6, v7);
    v9 = @"yes";
    if (!v8)
    {
      v9 = @"no";
    }

    *buf = 138412802;
    v12 = v5;
    v13 = 2080;
    v14 = "[HUCCSmartContainerView didMoveToSuperview]";
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s — has window: %@", buf, 0x20u);
  }
}

- (void)didMoveToWindow
{
  v17 = *MEMORY[0x29EDCA608];
  v10.receiver = self;
  v10.super_class = HUCCSmartContainerView;
  [(HUCCSmartContainerView *)&v10 didMoveToWindow];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = objc_msgSend_window(self, v6, v7);
    v9 = @"yes";
    if (!v8)
    {
      v9 = @"no";
    }

    *buf = 138412802;
    v12 = v5;
    v13 = 2080;
    v14 = "[HUCCSmartContainerView didMoveToWindow]";
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s — has window: %@", buf, 0x20u);
  }
}

- (void)setCompressedView:(id)view
{
  v47 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    compressedView = self->_compressedView;
    v39 = 138413058;
    v40 = v7;
    v41 = 2080;
    v42 = "[HUCCSmartContainerView setCompressedView:]";
    v43 = 2112;
    v44 = compressedView;
    v45 = 2112;
    v46 = viewCopy;
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s, was %@ is %@", &v39, 0x2Au);
  }

  v11 = self->_compressedView;
  if (v11)
  {
    objc_msgSend_removeFromSuperview(v11, v9, v10);
    v14 = objc_msgSend_animationView(self, v12, v13);
    objc_msgSend_removeFromSuperview(v14, v15, v16);
  }

  v17 = self->_compressedView;
  self->_compressedView = viewCopy;
  v18 = viewCopy;

  objc_msgSend_addSubview_(self, v19, self->_compressedView);
  objc_msgSend_bounds(self, v20, v21);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v32 = objc_msgSend_compressedView(self, v30, v31);
  objc_msgSend_setFrame_(v32, v33, v34, v23, v25, v27, v29);

  v37 = objc_msgSend_animationView(self, v35, v36);
  objc_msgSend_insertSubview_aboveSubview_(self, v38, v37, self->_compressedView);
}

- (void)setExpandedView:(id)view
{
  v30 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    expandedView = self->_expandedView;
    v22 = 138413058;
    v23 = v8;
    v24 = 2080;
    v25 = "[HUCCSmartContainerView setExpandedView:]";
    v26 = 2112;
    v27 = expandedView;
    v28 = 2112;
    v29 = viewCopy;
    _os_log_impl(&dword_29C992000, v6, OS_LOG_TYPE_DEFAULT, "%@:%s, was %@ is %@", &v22, 0x2Au);
  }

  v12 = self->_expandedView;
  if (v12)
  {
    objc_msgSend_removeFromSuperview(v12, v10, v11);
  }

  objc_storeStrong(&self->_expandedView, view);
  if (self->_expandedView)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      objc_msgSend_alpha(self->_expandedView, v16, v17);
      v22 = 138413058;
      v23 = v15;
      v24 = 2080;
      v25 = "[HUCCSmartContainerView setExpandedView:]";
      v26 = 2048;
      v27 = v18;
      v28 = 2048;
      v29 = 0;
      _os_log_impl(&dword_29C992000, v13, OS_LOG_TYPE_DEFAULT, "%@:%s, expandedView.alpha was %f is %f", &v22, 0x2Au);
    }

    objc_msgSend_setAlpha_(self->_expandedView, v19, v20, 0.0);
    objc_msgSend_addSubview_(self, v21, self->_expandedView);
  }
}

- (void)willMoveToExpandedStateWithAnimationStartFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v7 = objc_msgSend_expandedView(self, a2, v3);
  objc_msgSend_setFrame_(v7, v8, v9, 0.0, 0.0, width, height);

  v12 = objc_msgSend_animationView(self, v10, v11);
  objc_msgSend_setFrame_(v12, v13, v14, 0.0, 0.0, width, height);

  MEMORY[0x2A1C70FE8](self, sel_setCompressedAnimationStartFrame_, v15);
}

- (void)resetToInitialState
{
  v45 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_animationView(self, a2, v2);
  objc_msgSend_setHidden_(v4, v5, 1);

  isShowingLockSecurity = objc_msgSend_isShowingLockSecurity(self, v6, v7);
  v9 = HFLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (isShowingLockSecurity)
  {
    v11 = 0.0;
    if (v10)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = objc_msgSend_compressedView(self, v14, v15);
      objc_msgSend_alpha(v16, v17, v18);
      v37 = 138413058;
      v38 = v13;
      v39 = 2080;
      v40 = "[HUCCSmartContainerView resetToInitialState]";
      v41 = 2048;
      v42 = v19;
      v43 = 2048;
      v44 = 0;
LABEL_6:
      _os_log_impl(&dword_29C992000, v9, OS_LOG_TYPE_DEFAULT, "%@:%s, compressedView.alpha was %f is %f", &v37, 0x2Au);
    }
  }

  else
  {
    v11 = 1.0;
    if (v10)
    {
      v20 = objc_opt_class();
      v13 = NSStringFromClass(v20);
      v16 = objc_msgSend_compressedView(self, v21, v22);
      objc_msgSend_alpha(v16, v23, v24);
      v37 = 138413058;
      v38 = v13;
      v39 = 2080;
      v40 = "[HUCCSmartContainerView resetToInitialState]";
      v41 = 2048;
      v42 = v25;
      v43 = 2048;
      v44 = 0x3FF0000000000000;
      goto LABEL_6;
    }
  }

  v28 = objc_msgSend_compressedView(self, v26, v27);
  objc_msgSend_setAlpha_(v28, v29, v30, v11);

  v33 = objc_msgSend_expandedView(self, v31, v32);
  objc_msgSend_setAlpha_(v33, v34, v35, 0.0);

  objc_msgSend_setExpandedView_(self, v36, 0);
}

- (void)showLockSecurityWithFrameDelegate:(id)delegate
{
  v65 = *MEMORY[0x29EDCA608];
  delegateCopy = delegate;
  if ((objc_msgSend_isShowingLockSecurity(self, v5, v6) & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x29EDC5480]);
    v10 = objc_msgSend_initWithFrame_(v7, v8, v9, *MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24));
    objc_msgSend_setLockSecurityView_(self, v11, v10);

    v14 = objc_msgSend_lockSecurityView(self, v12, v13);
    objc_msgSend_setFrameDelegate_(v14, v15, delegateCopy);

    v18 = objc_msgSend_lockSecurityView(self, v16, v17);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v18, v19, 1);

    v20 = HULocalizedModelString();
    v23 = objc_msgSend_lockSecurityView(self, v21, v22);
    objc_msgSend_updateUIWithInfoText_andActionText_(v23, v24, v20, &stru_2A23EB000);

    objc_initWeak(&location, self);
    v25 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_29C99CCF4;
    block[3] = &unk_29F33A8A8;
    objc_copyWeak(&v55, &location);
    v26 = v20;
    v54 = v26;
    dispatch_async(v25, block);

    v29 = objc_msgSend_layoutGeometry(HUCCSmartGridLayout, v27, v28);
    v32 = objc_msgSend_lockSecurityView(self, v30, v31);
    objc_msgSend_setMosaicLayoutGeometry_(v32, v33, v29);

    v36 = objc_msgSend_lockSecurityView(self, v34, v35);
    objc_msgSend_addSubview_(self, v37, v36);

    v38 = HFLogForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v43 = objc_msgSend_compressedView(self, v41, v42);
      objc_msgSend_alpha(v43, v44, v45);
      *buf = 138413058;
      v58 = v40;
      v59 = 2080;
      v60 = "[HUCCSmartContainerView showLockSecurityWithFrameDelegate:]";
      v61 = 2048;
      v62 = v46;
      v63 = 2048;
      v64 = 0;
      _os_log_impl(&dword_29C992000, v38, OS_LOG_TYPE_DEFAULT, "%@:%s, compressedView.alpha was %f is %f", buf, 0x2Au);
    }

    v49 = objc_msgSend_compressedView(self, v47, v48);
    objc_msgSend_setAlpha_(v49, v50, v51, 0.0);

    objc_msgSend_setIsShowingLockSecurity_(self, v52, 1);
    objc_destroyWeak(&v55);
    objc_destroyWeak(&location);
  }
}

- (void)hideLockSecurity
{
  v33 = *MEMORY[0x29EDCA608];
  if (objc_msgSend_isShowingLockSecurity(self, a2, v2))
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v9 = objc_msgSend_compressedView(self, v7, v8);
      objc_msgSend_alpha(v9, v10, v11);
      v25 = 138413058;
      v26 = v6;
      v27 = 2080;
      v28 = "[HUCCSmartContainerView hideLockSecurity]";
      v29 = 2048;
      v30 = v12;
      v31 = 2048;
      v32 = 0x3FF0000000000000;
      _os_log_impl(&dword_29C992000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s, compressedView.alpha was %f is %f", &v25, 0x2Au);
    }

    v15 = objc_msgSend_compressedView(self, v13, v14);
    objc_msgSend_setAlpha_(v15, v16, v17, 1.0);

    v20 = objc_msgSend_lockSecurityView(self, v18, v19);
    objc_msgSend_removeFromSuperview(v20, v21, v22);

    objc_msgSend_setLockSecurityView_(self, v23, 0);
    objc_msgSend_setIsShowingLockSecurity_(self, v24, 0);
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUCCSmartContainerView;
  [(HUCCSmartContainerView *)&v18 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15 = objc_msgSend_lockSecurityView(self, v13, v14);
  objc_msgSend_setFrame_(v15, v16, v17, v6, v8, v10, v12);
}

- (CGRect)compressedAnimationStartFrame
{
  x = self->_compressedAnimationStartFrame.origin.x;
  y = self->_compressedAnimationStartFrame.origin.y;
  width = self->_compressedAnimationStartFrame.size.width;
  height = self->_compressedAnimationStartFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end