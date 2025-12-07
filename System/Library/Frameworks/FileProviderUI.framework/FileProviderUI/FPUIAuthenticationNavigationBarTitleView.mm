@interface FPUIAuthenticationNavigationBarTitleView
- (FPUIAuthenticationNavigationBarTitleView)init;
- (NSString)title;
- (UIActivityIndicatorView)activityIndicator;
- (UILabel)label;
- (void)setActivityIndicatorHidden:(BOOL)hidden;
- (void)setTitle:(id)title;
- (void)updateForChangedTraitsAffectingFonts;
@end

@implementation FPUIAuthenticationNavigationBarTitleView

- (FPUIAuthenticationNavigationBarTitleView)init
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = FPUIAuthenticationNavigationBarTitleView;
  v2 = [(FPUIAuthenticationNavigationBarTitleView *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(FPUIAuthenticationNavigationBarTitleView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    objc_storeWeak(&v3->_activityIndicator, v4);
    v5 = objc_opt_new();
    v6 = objc_opt_self();
    v12[0] = v6;
    v7 = objc_opt_self();
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v9 = [(FPUIAuthenticationNavigationBarTitleView *)v3 registerForTraitChanges:v8 withHandler:&__block_literal_global_7];

    objc_storeWeak(&v3->_label, v5);
    [(FPUIAuthenticationNavigationBarTitleView *)v3 updateForChangedTraitsAffectingFonts];
    [(FPUIAuthenticationNavigationBarTitleView *)v3 setAxis:0];
    [(FPUIAuthenticationNavigationBarTitleView *)v3 setSpacing:5.0];
    [(FPUIAuthenticationNavigationBarTitleView *)v3 addArrangedSubview:v4];
    [(FPUIAuthenticationNavigationBarTitleView *)v3 addArrangedSubview:v5];
  }

  return v3;
}

- (void)updateForChangedTraitsAffectingFonts
{
  label = [(FPUIAuthenticationNavigationBarTitleView *)self label];
  [label setAdjustsFontForContentSizeCategory:1];
  v3 = objc_opt_new();
  traitCollection = [(FPUIAuthenticationNavigationBarTitleView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass != 1 || ([v3 compactAppearance], (standardAppearance = objc_claimAutoreleasedReturnValue()) == 0))
  {
    standardAppearance = [v3 standardAppearance];
  }

  titleTextAttributes = [standardAppearance titleTextAttributes];
  v8 = [titleTextAttributes objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  [label setFont:v8];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_label);
  [WeakRetained setText:titleCopy];
}

- (NSString)title
{
  WeakRetained = objc_loadWeakRetained(&self->_label);
  text = [WeakRetained text];

  return text;
}

- (void)setActivityIndicatorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  activityIndicator = [(FPUIAuthenticationNavigationBarTitleView *)self activityIndicator];
  [activityIndicator setHidden:hiddenCopy];

  activityIndicator2 = [(FPUIAuthenticationNavigationBarTitleView *)self activityIndicator];
  v7 = activityIndicator2;
  if (hiddenCopy)
  {
    [activityIndicator2 stopAnimating];
  }

  else
  {
    [activityIndicator2 startAnimating];
  }
}

- (UIActivityIndicatorView)activityIndicator
{
  WeakRetained = objc_loadWeakRetained(&self->_activityIndicator);

  return WeakRetained;
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end