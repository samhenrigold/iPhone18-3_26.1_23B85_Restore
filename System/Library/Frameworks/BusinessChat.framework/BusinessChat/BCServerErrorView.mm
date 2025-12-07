@interface BCServerErrorView
- (BCServerErrorView)init;
@end

@implementation BCServerErrorView

- (BCServerErrorView)init
{
  v66[6] = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = BCServerErrorView;
  v2 = [(BCServerErrorView *)&v64 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x277D75348] colorNamed:@"ServerErrorMessageColor" inBundle:v3 compatibleWithTraitCollection:0];
    v5 = [MEMORY[0x277D75348] colorNamed:@"ServerErrorBackgroundColor" inBundle:v3 compatibleWithTraitCollection:0];
    [(BCServerErrorView *)v2 setBackgroundColor:v5];
    v6 = objc_opt_new();
    contentView = v2->_contentView;
    v2->_contentView = v6;

    v8 = objc_opt_new();
    messageLabel = v2->_messageLabel;
    v2->_messageLabel = v8;

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v2->_messageLabel setFont:v10];

    [(UILabel *)v2->_messageLabel setTextColor:v4];
    v11 = +[BCShared classBundle];
    v12 = [v11 localizedStringForKey:@"SERVER_ERROR_MESSAGE" value:&stru_2849DDCD8 table:0];
    [(UILabel *)v2->_messageLabel setText:v12];

    [(UILabel *)v2->_messageLabel setTextAlignment:1];
    [(UILabel *)v2->_messageLabel setNumberOfLines:0];
    v13 = v2->_messageLabel;
    v14 = v2->_contentView;
    [(UIView *)v14 addSubview:v13];

    [(BCServerErrorView *)v2 addSubview:v2->_contentView];
    [(UIView *)v2->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v2->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = MEMORY[0x277CCAAD0];
    v62 = v2->_contentView;
    topAnchor = [(UIView *)v62 topAnchor];
    topAnchor2 = [(BCServerErrorView *)v2 topAnchor];
    v56 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:20.0];
    v66[0] = v56;
    v54 = v2->_contentView;
    leftAnchor = [(UIView *)v54 leftAnchor];
    leftAnchor2 = [(BCServerErrorView *)v2 leftAnchor];
    v48 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:20.0];
    v66[1] = v48;
    v44 = v2->_contentView;
    rightAnchor = [(UIView *)v44 rightAnchor];
    rightAnchor2 = [(BCServerErrorView *)v2 rightAnchor];
    v38 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2 constant:-20.0];
    v66[2] = v38;
    v37 = v2->_contentView;
    bottomAnchor = [(UIView *)v37 bottomAnchor];
    bottomAnchor2 = [(BCServerErrorView *)v2 bottomAnchor];
    v34 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-20.0];
    v66[3] = v34;
    v15 = v2->_contentView;
    centerXAnchor = [(UIView *)v15 centerXAnchor];
    centerXAnchor2 = [(BCServerErrorView *)v2 centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v66[4] = v18;
    v19 = v2->_contentView;
    centerYAnchor = [(UIView *)v19 centerYAnchor];
    centerYAnchor2 = [(BCServerErrorView *)v2 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v66[5] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:6];
    [v46 activateConstraints:v23];

    v47 = MEMORY[0x277CCAAD0];
    v63 = v2->_messageLabel;
    topAnchor3 = [(UILabel *)v63 topAnchor];
    v59 = v2->_contentView;
    topAnchor4 = [(UIView *)v59 topAnchor];
    v55 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v65[0] = v55;
    v53 = v2->_messageLabel;
    leadingAnchor = [(UILabel *)v53 leadingAnchor];
    v49 = v2->_contentView;
    leadingAnchor2 = [(UIView *)v49 leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v65[1] = v43;
    v41 = v2->_messageLabel;
    trailingAnchor = [(UILabel *)v41 trailingAnchor];
    v24 = v2->_contentView;
    trailingAnchor2 = [(UIView *)v24 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v65[2] = v26;
    v27 = v2->_messageLabel;
    bottomAnchor3 = [(UILabel *)v27 bottomAnchor];
    v29 = v2->_contentView;
    bottomAnchor4 = [(UIView *)v29 bottomAnchor];
    v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v65[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:4];
    [v47 activateConstraints:v32];
  }

  return v2;
}

@end