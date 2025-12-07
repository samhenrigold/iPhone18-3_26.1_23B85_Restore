@interface WSNanoWebSheetDetailView
- (WSNanoWebSheetDetailView)initWithURL:(id)l ssid:(id)ssid isSecure:(BOOL)secure hasEVCert:(BOOL)cert;
- (id)_evCertColor;
- (void)updateURILabel;
@end

@implementation WSNanoWebSheetDetailView

- (WSNanoWebSheetDetailView)initWithURL:(id)l ssid:(id)ssid isSecure:(BOOL)secure hasEVCert:(BOOL)cert
{
  secureCopy = secure;
  v55[8] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = WSNanoWebSheetDetailView;
  ssidCopy = ssid;
  lCopy = l;
  v8 = [(WSNanoWebSheetDetailView *)&v54 init];
  v8->_hasEVCert = cert;
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(WSNanoWebSheetDetailView *)v8 setBackgroundColor:systemBackgroundColor];

  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  urlLabel = v8->_urlLabel;
  v8->_urlLabel = v10;

  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v8->_urlLabel setTintColor:labelColor];

  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  ssidLabel = v8->_ssidLabel;
  v8->_ssidLabel = v13;

  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v8->_ssidLabel setTintColor:labelColor2];

  v50 = [MEMORY[0x277D755D0] configurationWithScale:1];
  v49 = [MEMORY[0x277D755B8] systemImageNamed:@"lock.fill" withConfiguration:v50];
  v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v49];
  padlockImageView = v8->_padlockImageView;
  v8->_padlockImageView = v16;

  [(WSNanoWebSheetDetailView *)v8 updateURILabel];
  [(UILabel *)v8->_urlLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v8->_ssidLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)v8->_padlockImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WSNanoWebSheetDetailView *)v8 addSubview:v8->_urlLabel];
  [(WSNanoWebSheetDetailView *)v8 addSubview:v8->_ssidLabel];
  [(UILabel *)v8->_ssidLabel setTextAlignment:0];
  [(UILabel *)v8->_urlLabel setTextAlignment:0];
  [(WSNanoWebSheetDetailView *)v8 addSubview:v8->_padlockImageView];
  v37 = MEMORY[0x277CCAAD0];
  topAnchor = [(UILabel *)v8->_urlLabel topAnchor];
  layoutMarginsGuide = [(WSNanoWebSheetDetailView *)v8 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[0] = v45;
  widthAnchor = [(UILabel *)v8->_urlLabel widthAnchor];
  layoutMarginsGuide2 = [(WSNanoWebSheetDetailView *)v8 layoutMarginsGuide];
  widthAnchor2 = [layoutMarginsGuide2 widthAnchor];
  v41 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-10.0];
  v55[1] = v41;
  topAnchor3 = [(UILabel *)v8->_ssidLabel topAnchor];
  bottomAnchor = [(UILabel *)v8->_urlLabel bottomAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
  v55[2] = v38;
  leadingAnchor = [(UILabel *)v8->_ssidLabel leadingAnchor];
  leadingAnchor2 = [(UILabel *)v8->_urlLabel leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v55[3] = v34;
  widthAnchor3 = [(UILabel *)v8->_ssidLabel widthAnchor];
  layoutMarginsGuide3 = [(WSNanoWebSheetDetailView *)v8 layoutMarginsGuide];
  widthAnchor4 = [layoutMarginsGuide3 widthAnchor];
  v30 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 constant:-10.0];
  v55[4] = v30;
  firstBaselineAnchor = [(UIImageView *)v8->_padlockImageView firstBaselineAnchor];
  firstBaselineAnchor2 = [(UILabel *)v8->_urlLabel firstBaselineAnchor];
  v27 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v55[5] = v27;
  trailingAnchor = [(UIImageView *)v8->_padlockImageView trailingAnchor];
  leadingAnchor3 = [(UILabel *)v8->_urlLabel leadingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-2.0];
  v55[6] = v19;
  leadingAnchor4 = [(UIImageView *)v8->_padlockImageView leadingAnchor];
  layoutMarginsGuide4 = [(WSNanoWebSheetDetailView *)v8 layoutMarginsGuide];
  leadingAnchor5 = [layoutMarginsGuide4 leadingAnchor];
  v23 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:leadingAnchor5];
  v55[7] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:8];
  [v37 activateConstraints:v24];

  [(UIImageView *)v8->_padlockImageView setHidden:!secureCopy];
  [(UILabel *)v8->_urlLabel setNumberOfLines:0];
  [(UILabel *)v8->_urlLabel setLineBreakMode:0];
  [(UILabel *)v8->_urlLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v8->_urlLabel setText:lCopy];

  [(UILabel *)v8->_urlLabel sizeToFit];
  [(UILabel *)v8->_ssidLabel setNumberOfLines:0];
  [(UILabel *)v8->_ssidLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v8->_ssidLabel setText:ssidCopy];

  [(UILabel *)v8->_ssidLabel sizeToFit];
  return v8;
}

- (id)_evCertColor
{
  v2 = _evCertColor_color;
  if (!_evCertColor_color)
  {
    v3 = [objc_alloc(MEMORY[0x277D75348]) initWithRed:0.262745098 green:0.749019608 blue:0.345098039 alpha:1.0];
    v4 = _evCertColor_color;
    _evCertColor_color = v3;

    v2 = _evCertColor_color;
  }

  return v2;
}

- (void)updateURILabel
{
  if (self->_hasEVCert)
  {
    [(WSNanoWebSheetDetailView *)self _evCertColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v5 = ;
  [(UILabel *)self->_urlLabel setTextColor:v5];
  image = [(UIImageView *)self->_padlockImageView image];
  v4 = [image imageWithRenderingMode:2];
  [(UIImageView *)self->_padlockImageView setImage:v4];

  [(UIImageView *)self->_padlockImageView setTintColor:v5];
}

@end