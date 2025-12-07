@interface PKCredentialPairingExplanationHeaderView
- (CGSize)sizeThatFits:(CGSize)result;
- (PKCredentialPairingExplanationHeaderView)initWithConfiguration:(id)configuration;
- (id)_fallbackPairingImage;
- (void)_loadPairingImage;
- (void)_setPairingImage:(id)image;
- (void)_showLoadingContent;
- (void)layoutSubviews;
- (void)setUseCompactLayout:(BOOL)layout;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKCredentialPairingExplanationHeaderView

- (PKCredentialPairingExplanationHeaderView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = PKCredentialPairingExplanationHeaderView;
  v6 = [(PKCredentialPairingExplanationHeaderView *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v7->_imageView;
    v7->_imageView = v8;

    [(PKCredentialPairingExplanationHeaderView *)v7 addSubview:v7->_imageView];
    v10 = v7->_imageView;
    v11 = PKProvisioningBackgroundColor();
    [(UIImageView *)v10 setBackgroundColor:v11];

    v12 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    spinner = v7->_spinner;
    v7->_spinner = v12;

    v14 = objc_alloc(MEMORY[0x1E69DD298]);
    v15 = [MEMORY[0x1E69DC730] effectWithStyle:4];
    v16 = [v14 initWithEffect:v15];
    blurView = v7->_blurView;
    v7->_blurView = v16;

    [(PKCredentialPairingExplanationHeaderView *)v7 _showLoadingContent];
    [(PKCredentialPairingExplanationHeaderView *)v7 _loadPairingImage];
    systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
    [(PKCredentialPairingExplanationHeaderView *)v7 setBackgroundColor:systemLightGrayColor];

    [(PKCredentialPairingExplanationHeaderView *)v7 setClipsToBounds:1];
    [(PKCredentialPairingExplanationHeaderView *)v7 setUseCompactLayout:PKUIGetMinScreenType() < 4];
  }

  return v7;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = PKCredentialPairingExplanationHeaderView;
  [(PKCredentialPairingExplanationHeaderView *)&v38 layoutSubviews];
  image = [(UIImageView *)self->_imageView image];
  [(PKCredentialPairingExplanationHeaderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [image size];
  PKSizeAspectFill();
  v12 = *MEMORY[0x1E69BB7F8];
  v13.n128_f64[0] = v5;
  v14.n128_f64[0] = v7;
  v15.n128_f64[0] = v9;
  v16.n128_f64[0] = v11;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v17, v18, v13, v14, v15, v16, v19);
  v21 = *&v20;
  v23 = *&v22;
  v25 = *&v24;
  v27 = *&v26;
  [(UIImageView *)self->_imageView setFrame:v20 + 0.0, v22 + 1.0, v24, v26 + -2.0];
  [(UIActivityIndicatorView *)self->_spinner frame];
  v29.n128_u64[0] = v28;
  v31.n128_u64[0] = v30;
  spinner = self->_spinner;
  v33.n128_u64[0] = v21;
  v34.n128_u64[0] = v23;
  v35.n128_u64[0] = v25;
  v36.n128_u64[0] = v27;
  PKSizeAlignedInRect(v12, v29, v31, v33, v34, v35, v36, v37);
  [(UIActivityIndicatorView *)spinner setFrame:?];
  [(UIVisualEffectView *)self->_blurView setFrame:v5, v7, v9, v11];
}

- (void)_loadPairingImage
{
  if (([(PKAddCarKeyPassConfiguration *)self->_configuration supportedRadioTechnologies]& 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  traitCollection = [(PKCredentialPairingExplanationHeaderView *)self traitCollection];
  v5 = [traitCollection userInterfaceStyle] == 2;

  provisioningTemplateIdentifier = [(PKAddCarKeyPassConfiguration *)self->_configuration provisioningTemplateIdentifier];
  mEMORY[0x1E69B90D8] = [MEMORY[0x1E69B90D8] sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PKCredentialPairingExplanationHeaderView__loadPairingImage__block_invoke;
  v8[3] = &unk_1E801A860;
  v8[4] = self;
  [mEMORY[0x1E69B90D8] carPairingImageForRadioTechnology:v3 templateIdentifier:provisioningTemplateIdentifier darkMode:v5 completion:v8];
}

void __61__PKCredentialPairingExplanationHeaderView__loadPairingImage__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6];
    v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v3];
    [*(a1 + 32) _setPairingImage:v4];
  }

  else
  {
    v5 = *(a1 + 32);
    v3 = [v5 _fallbackPairingImage];
    [v5 _setPairingImage:v3];
  }
}

- (void)_showLoadingContent
{
  imageView = self->_imageView;
  _fallbackPairingImage = [(PKCredentialPairingExplanationHeaderView *)self _fallbackPairingImage];
  [(UIImageView *)imageView setImage:_fallbackPairingImage];

  [(UIVisualEffectView *)self->_blurView setAlpha:1.0];
  [(PKCredentialPairingExplanationHeaderView *)self addSubview:self->_blurView];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  spinner = self->_spinner;

  [(PKCredentialPairingExplanationHeaderView *)self addSubview:spinner];
}

- (void)_setPairingImage:(id)image
{
  imageCopy = image;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = imageCopy;
  v5 = imageCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) stopAnimating];
  [*(*(a1 + 32) + 424) removeFromSuperview];
  v2 = MEMORY[0x1E69DD250];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = v3;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke_3;
  v4[3] = &unk_1E8011D28;
  v4[4] = *(a1 + 32);
  [v2 transitionWithView:v3 duration:5242880 options:v5 animations:v4 completion:0.300000012];
}

uint64_t __61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setImage:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 432);

  return [v2 setAlpha:0.0];
}

void *__61__PKCredentialPairingExplanationHeaderView__setPairingImage___block_invoke_3(void *result, int a2)
{
  if (a2)
  {
    return [*(result[4] + 432) removeFromSuperview];
  }

  return result;
}

- (id)_fallbackPairingImage
{
  provisioningTemplateIdentifier = [(PKAddCarKeyPassConfiguration *)self->_configuration provisioningTemplateIdentifier];
  if ([provisioningTemplateIdentifier containsString:@"RHD"])
  {
    v3 = @"CarPairingLightRHD";
    v4 = @"CarPairingDarkRHD";
  }

  else
  {
    v3 = @"CarPairingLightLHD";
    v4 = @"CarPairingDarkLHD";
  }

  v5 = PKUIDynamicImageNamed(v3, v4);

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 268.0;
  if (self->_useCompactLayout)
  {
    v3 = 183.0;
  }

  result.height = v3;
  return result;
}

- (void)setUseCompactLayout:(BOOL)layout
{
  if (self->_useCompactLayout != layout)
  {
    self->_useCompactLayout = layout;
    [(PKCredentialPairingExplanationHeaderView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(PKCredentialPairingExplanationHeaderView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(PKCredentialPairingExplanationHeaderView *)self _loadPairingImage];
  }
}

@end