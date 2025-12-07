@interface CACBannerViewPresenter
- (CACBannerViewPresenter)initWithContainingView:(id)view;
- (void)_hideBannerView;
- (void)dismissBannerView;
- (void)presentBannerViewWithText:(id)text type:(int64_t)type avoidingSystemAperature:(CGRect)aperature;
- (void)presentBannerViewWithText:(id)text type:(int64_t)type avoidingSystemAperature:(CGRect)aperature duration:(double)duration;
@end

@implementation CACBannerViewPresenter

- (CACBannerViewPresenter)initWithContainingView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CACBannerViewPresenter;
  v6 = [(CACBannerViewPresenter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containingView, view);
  }

  return v7;
}

- (void)_hideBannerView
{
  bannerView = [(CACBannerViewPresenter *)self bannerView];
  [(CACBannerViewPresenter *)self setBannerView:0];
  if (bannerView)
  {
    v4 = MEMORY[0x277D75D18];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__CACBannerViewPresenter__hideBannerView__block_invoke;
    v7[3] = &unk_279CEB2D0;
    v8 = bannerView;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__CACBannerViewPresenter__hideBannerView__block_invoke_2;
    v5[3] = &unk_279CEB760;
    v6 = v8;
    [v4 animateWithDuration:v7 animations:v5 completion:0.3];
  }
}

- (void)presentBannerViewWithText:(id)text type:(int64_t)type avoidingSystemAperature:(CGRect)aperature
{
  height = aperature.size.height;
  width = aperature.size.width;
  y = aperature.origin.y;
  x = aperature.origin.x;
  textCopy = text;
  [objc_opt_class() durationToDisplayMessageString:textCopy];
  [(CACBannerViewPresenter *)self presentBannerViewWithText:textCopy type:type avoidingSystemAperature:x duration:y, width, height, v11];
}

- (void)presentBannerViewWithText:(id)text type:(int64_t)type avoidingSystemAperature:(CGRect)aperature duration:(double)duration
{
  height = aperature.size.height;
  width = aperature.size.width;
  y = aperature.origin.y;
  x = aperature.origin.x;
  v87[3] = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (type != 5)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideBannerView object:0];
    containingView = [(CACBannerViewPresenter *)self containingView];
    traitCollection = [containingView traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom != 3)
    {
      bannerView = [(CACBannerViewPresenter *)self bannerView];

      if (!bannerView)
      {
        v18 = objc_alloc_init(CACBannerView);
        [(CACBannerView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        containingView2 = [(CACBannerViewPresenter *)self containingView];
        [containingView2 addSubview:v18];

        v77 = v18;
        [(CACBannerViewPresenter *)self setBannerView:v18];
        v88.origin.x = x;
        v88.origin.y = y;
        v88.size.width = width;
        v88.size.height = height;
        v79 = textCopy;
        if (CGRectIsEmpty(v88))
        {
          containingView3 = [(CACBannerViewPresenter *)self containingView];
          [containingView3 safeAreaInsets];
          v22 = v21;

          if (v22 == 0.0 || ([MEMORY[0x277D75418] currentDevice], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "userInterfaceIdiom"), v23, v25 = 0.0, v24 == 1))
          {
            v25 = 10.0;
          }

          bannerView2 = [(CACBannerViewPresenter *)self bannerView];
          topAnchor = [bannerView2 topAnchor];
          containingView4 = [(CACBannerViewPresenter *)self containingView];
          safeAreaLayoutGuide = [containingView4 safeAreaLayoutGuide];
          topAnchor2 = [safeAreaLayoutGuide topAnchor];
          v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v25];
        }

        else
        {
          bannerView2 = [(CACBannerViewPresenter *)self bannerView];
          topAnchor = [bannerView2 topAnchor];
          containingView4 = [(CACBannerViewPresenter *)self containingView];
          safeAreaLayoutGuide = [containingView4 topAnchor];
          v89.origin.x = x;
          v89.origin.y = y;
          v89.size.width = width;
          v89.size.height = height;
          v31 = [topAnchor constraintEqualToAnchor:safeAreaLayoutGuide constant:CGRectGetMaxY(v89) + 10.0];
        }

        v70 = v31;

        v71 = MEMORY[0x277CCAAD0];
        v87[0] = v31;
        containingView5 = [(CACBannerViewPresenter *)self containingView];
        safeAreaLayoutGuide2 = [containingView5 safeAreaLayoutGuide];
        leadingAnchor = [safeAreaLayoutGuide2 leadingAnchor];
        bannerView3 = [(CACBannerViewPresenter *)self bannerView];
        leadingAnchor2 = [bannerView3 leadingAnchor];
        v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-10.0];
        v87[1] = v32;
        containingView6 = [(CACBannerViewPresenter *)self containingView];
        safeAreaLayoutGuide3 = [containingView6 safeAreaLayoutGuide];
        trailingAnchor = [safeAreaLayoutGuide3 trailingAnchor];
        bannerView4 = [(CACBannerViewPresenter *)self bannerView];
        trailingAnchor2 = [bannerView4 trailingAnchor];
        v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:10.0];
        v87[2] = v38;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:3];
        [v71 activateConstraints:v39];

        textCopy = v79;
        bannerView = 0;
      }

      v40 = +[CACPreferences sharedPreferences];
      additionalLoggingForCommands = [v40 additionalLoggingForCommands];

      if (type <= 1)
      {
        if (type)
        {
          if (type != 1)
          {
            goto LABEL_35;
          }

          bannerView5 = [(CACBannerViewPresenter *)self bannerView];
          [bannerView5 setText:textCopy];

          bannerView6 = [(CACBannerViewPresenter *)self bannerView];
          [bannerView6 setSymbolImage:@"exclamationmark.triangle.fill"];

          if (!additionalLoggingForCommands)
          {
            goto LABEL_35;
          }

          v45 = CACLogAdditionalLogging(v44);
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            goto LABEL_34;
          }

          *buf = 138543362;
          v86 = textCopy;
          v46 = "Banner - Error: %{public}@";
          goto LABEL_27;
        }
      }

      else
      {
        if (type == 2)
        {
          bannerView7 = [(CACBannerViewPresenter *)self bannerView];
          [bannerView7 setText:textCopy];

          bannerView8 = [(CACBannerViewPresenter *)self bannerView];
          [bannerView8 setSymbolImage:0];

          if (!additionalLoggingForCommands)
          {
            goto LABEL_35;
          }

          v45 = CACLogAdditionalLogging(v52);
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            goto LABEL_34;
          }

          *buf = 138543362;
          v86 = textCopy;
          v46 = "Banner - Command: %{public}@";
LABEL_27:
          _os_log_impl(&dword_26B354000, v45, OS_LOG_TYPE_INFO, v46, buf, 0xCu);
LABEL_34:

          goto LABEL_35;
        }

        if (type == 3)
        {
          bannerView9 = [(CACBannerViewPresenter *)self bannerView];
          [bannerView9 setText:textCopy];

          bannerView10 = [(CACBannerViewPresenter *)self bannerView];
          [bannerView10 setSymbolImage:0];

          if (additionalLoggingForCommands)
          {
            v56 = CACLogAdditionalLogging(v55);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v86 = textCopy;
              _os_log_impl(&dword_26B354000, v56, OS_LOG_TYPE_INFO, "Banner - Title: %{public}@", buf, 0xCu);
            }
          }

          v45 = [textCopy componentsSeparatedByString:@"\n"];
          if ([v45 count]>= 2)
          {
            v57 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:textCopy];
            firstObject = [v45 firstObject];
            v59 = [firstObject length];

            firstObject2 = [v45 firstObject];
            v78 = [firstObject2 length];
            v61 = [textCopy length];
            [v45 firstObject];
            v62 = v80 = bannerView;
            v63 = v61 - [v62 length];

            v64 = objc_alloc_init(MEMORY[0x277D74240]);
            [v64 setAlignment:1];
            defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
            [defaultMetrics scaledValueForValue:4.0];
            [v64 setLineSpacing:?];

            [v57 addAttribute:*MEMORY[0x277D74118] value:v64 range:{0, objc_msgSend(textCopy, "length")}];
            v83 = *MEMORY[0x277D74160];
            v84 = &unk_287BEFEE8;
            v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            [v57 addAttributes:v66 range:{0, v59}];

            v67 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
            [v57 addAttribute:*MEMORY[0x277D740A8] value:v67 range:{v78, v63}];
            bannerView11 = [(CACBannerViewPresenter *)self bannerView];
            [bannerView11 setAttributedText:v57];

            bannerView = v80;
          }

          goto LABEL_34;
        }

        if (type != 4)
        {
LABEL_35:
          if (bannerView)
          {
            [(CACBannerViewPresenter *)self performSelector:sel__hideBannerView withObject:0 afterDelay:duration];
          }

          else
          {
            bannerView12 = [(CACBannerViewPresenter *)self bannerView];
            [bannerView12 setAlpha:0.0];

            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __90__CACBannerViewPresenter_presentBannerViewWithText_type_avoidingSystemAperature_duration___block_invoke;
            v82[3] = &unk_279CEB2D0;
            v82[4] = self;
            v81[0] = MEMORY[0x277D85DD0];
            v81[1] = 3221225472;
            v81[2] = __90__CACBannerViewPresenter_presentBannerViewWithText_type_avoidingSystemAperature_duration___block_invoke_2;
            v81[3] = &unk_279CEB788;
            v81[4] = self;
            *&v81[5] = duration;
            [MEMORY[0x277D75D18] animateWithDuration:v82 animations:v81 completion:0.3];
          }

          goto LABEL_38;
        }
      }

      bannerView13 = [(CACBannerViewPresenter *)self bannerView];
      [bannerView13 setText:textCopy];

      bannerView14 = [(CACBannerViewPresenter *)self bannerView];
      [bannerView14 setSymbolImage:@"info.circle.fill"];

      if (!additionalLoggingForCommands)
      {
        goto LABEL_35;
      }

      v45 = CACLogAdditionalLogging(v49);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v86 = textCopy;
      v46 = "Banner - Hint: %{public}@";
      goto LABEL_27;
    }
  }

LABEL_38:
}

void __90__CACBannerViewPresenter_presentBannerViewWithText_type_avoidingSystemAperature_duration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) bannerView];
  [v1 setAlpha:1.0];
}

- (void)dismissBannerView
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideBannerView object:0];

  [(CACBannerViewPresenter *)self _hideBannerView];
}

@end