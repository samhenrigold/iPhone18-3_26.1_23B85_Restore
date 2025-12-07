@interface FUErrorView
- (FUErrorView)init;
@end

@implementation FUErrorView

- (FUErrorView)init
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = FUErrorView;
  v2 = [(FUErrorView *)&v13 init];
  if (v2)
  {
    v3 = +[(TLKLabel *)FULabel];
    [v3 setNumberOfLines:2];
    [v3 setTextAlignment:1];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FUErrorView *)v2 addSubview:v3];
    v4 = [MEMORY[0x277CCAAD0] constraintWithItem:v2 attribute:8 relatedBy:0 toItem:v3 attribute:8 multiplier:3.0 constant:0.0];
    LODWORD(v5) = 1128792064;
    [v4 setPriority:v5];
    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:v2 attribute:7 relatedBy:0 toItem:v3 attribute:7 multiplier:1.0 constant:0.0];
    v14[0] = v6;
    v7 = [MEMORY[0x277CCAAD0] constraintWithItem:v2 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    v14[1] = v7;
    v14[2] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    [(FUErrorView *)v2 addConstraints:v8];

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Flight information unavailable" value:@"Flight information unavailable" table:@"Localizable"];
    [v3 setText:v10];

    [(FUErrorView *)v2 setErrorLabel:v3];
    v11 = v2;
  }

  return v2;
}

@end