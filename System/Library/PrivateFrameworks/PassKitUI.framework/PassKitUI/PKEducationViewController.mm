@interface PKEducationViewController
+ (BOOL)shouldPresentForPass:(id)pass inEducationContext:(unint64_t)context reason:(id *)reason;
- (PKEducationViewController)initWithPaymentPass:(id)pass setupContext:(int64_t)context educationContext:(unint64_t)educationContext;
- (id)_heroPadImage;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)invalidate;
- (void)loadView;
- (void)performContinue;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKEducationViewController

+ (BOOL)shouldPresentForPass:(id)pass inEducationContext:(unint64_t)context reason:(id *)reason
{
  passCopy = pass;
  v8 = PKForceCardEducation();
  v9 = 1;
  if (!context && (v8 & 1) == 0)
  {
    if (PKHasSeenApplePayEducation())
    {
      if (reason)
      {
        v9 = 0;
        v10 = @"user has already seen education";
LABEL_20:
        *reason = v10;
        goto LABEL_31;
      }
    }

    else
    {
      v11 = PKIsPhone();
      if (v11 & 1) != 0 || PKIsPad() && (PKPearlIsAvailable())
      {
        if ([passCopy isTransitPass])
        {
          if (reason)
          {
            v9 = 0;
            v10 = @"pass is transit pass";
            goto LABEL_20;
          }
        }

        else if ([passCopy isAccessPass])
        {
          if (reason)
          {
            v9 = 0;
            v10 = @"pass is access pass";
            goto LABEL_20;
          }
        }

        else
        {
          if (![passCopy isAppleBalancePass])
          {
            if (v11)
            {
              devicePrimaryContactlessPaymentApplication = [passCopy devicePrimaryContactlessPaymentApplication];

              if (!devicePrimaryContactlessPaymentApplication)
              {
                if (reason)
                {
                  v9 = 0;
                  v10 = @"pass doesn't support contactless transaction";
                  goto LABEL_20;
                }

                goto LABEL_30;
              }

              issuerCountryCode = [passCopy issuerCountryCode];
              v14 = [issuerCountryCode isEqualToString:@"JP"];

              if (reason && v14)
              {
                *reason = @"pass has Japan issuer";
              }

              if (v14)
              {
                goto LABEL_30;
              }
            }

            v9 = 1;
            goto LABEL_31;
          }

          if (reason)
          {
            v9 = 0;
            v10 = @"pass is apple balance";
            goto LABEL_20;
          }
        }
      }

      else if (reason)
      {
        v9 = 0;
        v10 = @"device does not have expected biometric authentication type";
        goto LABEL_20;
      }
    }

LABEL_30:
    v9 = 0;
  }

LABEL_31:

  return v9;
}

- (PKEducationViewController)initWithPaymentPass:(id)pass setupContext:(int64_t)context educationContext:(unint64_t)educationContext
{
  passCopy = pass;
  v17.receiver = self;
  v17.super_class = PKEducationViewController;
  v10 = [(PKExplanationViewController *)&v17 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_paymentPass, pass);
    v11->_educationContext = educationContext;
    IsAvailable = PKPearlIsAvailable();
    biometricAuthenticationType = v11->_biometricAuthenticationType;
    if (IsAvailable)
    {
      v14 = biometricAuthenticationType | 2;
    }

    else
    {
      if (biometricAuthenticationType)
      {
LABEL_7:
        navigationItem = [(PKEducationViewController *)v11 navigationItem];
        [navigationItem setHidesBackButton:1 animated:0];

        [(PKExplanationViewController *)v11 setShowDoneButton:0];
        [(PKExplanationViewController *)v11 setShowCancelButton:0];
        goto LABEL_8;
      }

      v14 = 1;
    }

    v11->_biometricAuthenticationType = v14;
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (void)dealloc
{
  [(PKEducationViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKEducationViewController;
  [(PKEducationViewController *)&v3 dealloc];
}

- (void)loadView
{
  v62[2] = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = PKEducationViewController;
  [(PKExplanationViewController *)&v58 loadView];
  pkui_userInterfaceIdiomSupportsLargeLayouts = [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
  if (pkui_userInterfaceIdiomSupportsLargeLayouts)
  {
    traitCollection = [(PKEducationViewController *)self traitCollection];
    v5 = [traitCollection userInterfaceIdiom] != 6;
  }

  else
  {
    v5 = 0;
  }

  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setDelegate:self];
  [explanationView setShowPrivacyView:0];
  v7 = objc_alloc_init(PKEducationPhone);
  educationBodyView = self->_educationBodyView;
  self->_educationBodyView = v7;

  if (self->_educationContext)
  {
    if (pkui_userInterfaceIdiomSupportsLargeLayouts)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  [explanationView setTopLogoPadding:25.0];
  v9 = PKLocalizedPaymentString(&cfstr_ApplePayEducat.isa);
  [explanationView setTitleText:v9];

  v10 = [explanationView setTitleImage:0];
  v55 = *MEMORY[0x1E69DB650];
  v61[0] = *MEMORY[0x1E69DB650];
  v11 = PKOBKBodyTextColor(v10);
  v62[0] = v11;
  v61[1] = *MEMORY[0x1E69DB648];
  v12 = PKOBKBodyFont(v11);
  v62[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];

  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"APPLE_PAY_EDUCATION"];
  v15 = v14;
  biometricAuthenticationType = self->_biometricAuthenticationType;
  if (biometricAuthenticationType)
  {
    [v14 appendString:@"_TOUCH_ID"];
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if ((biometricAuthenticationType & 2) == 0)
    {
      goto LABEL_13;
    }

    [v14 appendString:@"_FACE_ID"];
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  [v15 appendString:@"_PAD"];
LABEL_13:
  v17 = objc_alloc(MEMORY[0x1E696AD40]);
  v18 = PKLocalizedPaymentString(v15);
  v19 = [v17 initWithString:v18 attributes:v13];

  v20 = [(NSString *)self->_bodyAddition length];
  v21 = objc_alloc(MEMORY[0x1E696AAB0]);
  v22 = v21;
  if (v20)
  {
    v23 = [v21 initWithString:self->_bodyAddition attributes:v13];
  }

  else
  {
    v24 = PKLocalizedPaymentString(&cfstr_ApplePayEducat_1.isa);
    v23 = [v22 initWithString:v24 attributes:v13];
  }

  v25 = v13;
  [v19 appendAttributedString:v23];

  if (pkui_userInterfaceIdiomSupportsLargeLayouts)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
    largeLayoutHeroBackground = self->_largeLayoutHeroBackground;
    self->_largeLayoutHeroBackground = v26;

    v28 = self->_largeLayoutHeroBackground;
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UIView *)v28 setBackgroundColor:secondarySystemBackgroundColor];

    v30 = objc_alloc(MEMORY[0x1E69DCAE0]);
    _heroPadImage = [(PKEducationViewController *)self _heroPadImage];
    v32 = [v30 initWithImage:_heroPadImage];
    largeLayoutHeroImageView = self->_largeLayoutHeroImageView;
    self->_largeLayoutHeroImageView = v32;

    [(UIImageView *)self->_largeLayoutHeroImageView setContentMode:1];
    [(UIView *)self->_largeLayoutHeroBackground addSubview:self->_largeLayoutHeroImageView];
    secondarySystemBackgroundColor2 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [explanationView setTopBackgroundColor:secondarySystemBackgroundColor2];

    [explanationView setTopMargin:44.0];
    [explanationView setHeroView:self->_largeLayoutHeroBackground];
  }

  else
  {
    [explanationView setBodyView:self->_educationBodyView];
    [explanationView setHeroView:0];
    [explanationView setImage:0];
    [explanationView setBodyViewPadding:0.0];
    [(PKExplanationViewController *)self context];
    if ((PKPaymentSetupContextIsSetupAssistant() & 1) == 0)
    {
      v54 = objc_alloc(MEMORY[0x1E696AAB0]);
      v35 = PKLocalizedPaymentString(&cfstr_LearnMoreLink.isa);
      v59[0] = v55;
      linkColor = [MEMORY[0x1E69DC888] linkColor];
      v60[0] = linkColor;
      v59[1] = *MEMORY[0x1E69DB670];
      [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/HT201239"];
      v37 = v56 = v25;
      v60[1] = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
      v53 = [v54 initWithString:v35 attributes:v38];

      v25 = v56;
      v39 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v56];
      [v19 appendAttributedString:v39];

      [v19 appendAttributedString:v53];
    }
  }

  v40 = [v19 copy];
  [explanationView setAttributedBodyText:v40];

  if (!pkui_userInterfaceIdiomSupportsLargeLayouts)
  {
LABEL_21:
    paymentPass = self->_paymentPass;
    if (paymentPass)
    {
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __37__PKEducationViewController_loadView__block_invoke;
      v57[3] = &unk_1E8010970;
      v57[4] = self;
      [(PKSecureElementPass *)paymentPass loadContentAsyncWithCompletion:v57];
    }

    else
    {
      defaultImages = [MEMORY[0x1E69B8C10] defaultImages];
      pk_shuffledArray = [defaultImages pk_shuffledArray];
      firstObject = [pk_shuffledArray firstObject];

      v45 = self->_educationBodyView;
      v46 = MEMORY[0x1E69DCAB8];
      v47 = [firstObject imageWithScale:PKUIScreenScale()];
      v48 = [v46 imageWithData:v47];
      [(PKEducationPhone *)v45 setPassImage:v48];
    }
  }

LABEL_24:
  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  v51 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [primaryButton setTitle:v51 forState:0];

  footerView = [dockView footerView];
  [footerView setSetUpLaterButton:0];
}

uint64_t __37__PKEducationViewController_loadView__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1104);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__PKEducationViewController_loadView__block_invoke_2;
  v4[3] = &unk_1E8010970;
  v4[4] = v1;
  return [v2 loadImageSetAsync:0 preheat:1 withCompletion:v4];
}

void __37__PKEducationViewController_loadView__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PKEducationViewController_loadView__block_invoke_3;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __37__PKEducationViewController_loadView__block_invoke_3(uint64_t a1)
{
  v3 = [[PKPassView alloc] initWithPass:*(*(a1 + 32) + 1104) content:5 suppressedContent:887];
  v2 = [(PKPassView *)v3 snapshotOfFrontFaceWithRequestedSize:220.0, 134.0];
  if (v2)
  {
    [*(*(a1 + 32) + 1120) setPassImage:v2];
  }
}

- (void)viewWillLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = PKEducationViewController;
  [(PKExplanationViewController *)&v27 viewWillLayoutSubviews];
  if (self->_largeLayoutHeroBackground && self->_largeLayoutHeroImageView)
  {
    traitCollection = [(PKEducationViewController *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] != 6)
    {
      traitCollection2 = [(PKEducationViewController *)self traitCollection];
      [traitCollection2 verticalSizeClass];
    }

    view = [(PKEducationViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v28);

    [(UIImageView *)self->_largeLayoutHeroImageView frame];
    PKSizeAspectFit();
    v8 = v7;
    v10 = *&v9;
    [(UIView *)self->_largeLayoutHeroBackground setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), Width, v9];
    v11 = PKContentAlignmentMake();
    largeLayoutHeroImageView = self->_largeLayoutHeroImageView;
    [(UIView *)self->_largeLayoutHeroBackground bounds];
    v14 = v13;
    v16 = v15;
    v18.n128_u64[0] = v17;
    v20 = v19;
    v21.n128_u64[0] = v8;
    v22.n128_u64[0] = v10;
    v23.n128_u64[0] = v14;
    v24.n128_u64[0] = v16;
    v25.n128_u64[0] = v18.n128_u64[0];
    v26.n128_u64[0] = v20;
    PKSizeAlignedInRect(v11, v21, v22, v23, v24, v25, v26, v18);
    [(UIImageView *)largeLayoutHeroImageView setFrame:?];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKEducationViewController;
  [(PKEducationViewController *)&v6 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  v4 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKEducationViewController_viewDidAppear___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = PKEducationViewController;
  [(PKEducationViewController *)&v10 viewWillAppear:appear];
  navigationController = [(PKEducationViewController *)self navigationController];
  navigationItem = [(PKEducationViewController *)self navigationItem];
  v6 = 0.0;
  if (![(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    if (leftBarButtonItem)
    {
    }

    else
    {
      rightBarButtonItem = [navigationItem rightBarButtonItem];

      if (!rightBarButtonItem)
      {
        self->_wasNavigationBarHidden = [navigationController isNavigationBarHidden];
        [navigationController setNavigationBarHidden:1];
        v6 = 20.0;
      }
    }
  }

  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setTopMargin:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKEducationViewController;
  [(PKEducationViewController *)&v5 viewWillDisappear:disappear];
  if (![(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    navigationController = [(PKEducationViewController *)self navigationController];
    [navigationController setNavigationBarHidden:self->_wasNavigationBarHidden];
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v7[1] = *MEMORY[0x1E69E9840];
  reporter = self->_reporter;
  v6 = *MEMORY[0x1E69BB158];
  v7[0] = *MEMORY[0x1E69BB160];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:0 context:v5];

  [(PKEducationViewController *)self performContinue];
}

- (void)performContinue
{
  v3 = _Block_copy(self->_continueHandler);
  continueHandler = self->_continueHandler;
  self->_continueHandler = 0;

  if (v3)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PKEducationViewController_performContinue__block_invoke;
    v5[3] = &unk_1E8010998;
    objc_copyWeak(&v6, &location);
    v3[2](v3, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKEducationViewController *)self invalidate];
  }
}

void __44__PKEducationViewController_performContinue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invalidate];
    WeakRetained = v2;
  }
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134349056;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKFieldDetectEducationViewController (%{public}p): invalidated.", &v4, 0xCu);
    }

    self->_invalidated = 1;
  }
}

- (id)_heroPadImage
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"EducationPad"];
  v4 = v3;
  if ((self->_biometricAuthenticationType & 2) != 0)
  {
    [v3 appendString:@"-FaceID"];
  }

  v5 = [v4 stringByAppendingString:@"-Dark"];
  v6 = PKUIDynamicImageNamed(v4, v5);

  return v6;
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKEducationViewController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  [(PKExplanationViewController *)self showSpinner:iCopy];
}

@end