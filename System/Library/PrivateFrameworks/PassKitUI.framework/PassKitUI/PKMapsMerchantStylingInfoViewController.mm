@interface PKMapsMerchantStylingInfoViewController
- (PKMapsMerchantStylingInfoViewController)initWithStylingInfo:(id)info;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKMapsMerchantStylingInfoViewController

- (PKMapsMerchantStylingInfoViewController)initWithStylingInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = PKMapsMerchantStylingInfoViewController;
  v6 = [(PKMapsMerchantStylingInfoViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stylingInfo, info);
  }

  return v7;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKMapsMerchantStylingInfoViewController;
  [(PKMapsMerchantStylingInfoViewController *)&v9 viewDidLoad];
  v3 = PKUIScreenScale();
  v4 = [(MKWalletMerchantStylingInfo *)self->_stylingInfo tintColorForScale:?];
  v5 = [(MKWalletMerchantStylingInfo *)self->_stylingInfo imageForSize:4 scale:v3];
  view = [(PKMapsMerchantStylingInfoViewController *)self view];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v7;

  [view addSubview:self->_iconImageView];
  [view setBackgroundColor:v4];
}

- (void)viewDidLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = PKMapsMerchantStylingInfoViewController;
  [(PKMapsMerchantStylingInfoViewController *)&v19 viewDidLayoutSubviews];
  iconImageView = self->_iconImageView;
  view = [(PKMapsMerchantStylingInfoViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10.n128_u64[0] = v9;
  v12 = v11;
  v13.n128_u64[0] = 0x4069000000000000;
  v14.n128_u64[0] = 0x4069000000000000;
  v15.n128_u64[0] = v6;
  v16.n128_u64[0] = v8;
  v17.n128_u64[0] = v10.n128_u64[0];
  v18.n128_u64[0] = v12;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v13, v14, v15, v16, v17, v18, v10);
  [(UIImageView *)iconImageView setFrame:?];
}

@end