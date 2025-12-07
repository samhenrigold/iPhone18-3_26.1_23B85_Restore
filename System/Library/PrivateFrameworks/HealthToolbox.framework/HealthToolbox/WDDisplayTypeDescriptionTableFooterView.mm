@interface WDDisplayTypeDescriptionTableFooterView
- (WDDisplayTypeDescriptionTableFooterView)initWithCoder:(id)coder;
- (WDDisplayTypeDescriptionTableFooterView)initWithDisplayType:(id)type;
- (WDDisplayTypeDescriptionTableFooterView)initWithFrame:(CGRect)frame;
@end

@implementation WDDisplayTypeDescriptionTableFooterView

- (WDDisplayTypeDescriptionTableFooterView)initWithDisplayType:(id)type
{
  v15[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = WDDisplayTypeDescriptionTableFooterView;
  v5 = [(WDDisplayTypeDescriptionTableFooterView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [[WDDisplayTypeDescriptionView alloc] initWithDisplayType:typeCopy showAttributionText:1 style:1];
    descriptionView = v5->_descriptionView;
    v5->_descriptionView = v6;

    [(WDDisplayTypeDescriptionView *)v5->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WDDisplayTypeDescriptionTableFooterView *)v5 addSubview:v5->_descriptionView];
    v14 = @"descriptionView";
    v15[0] = v5->_descriptionView;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|-M-[descriptionView]-M-|" options:0 metrics:&unk_28642E130 views:v8];
    [(WDDisplayTypeDescriptionTableFooterView *)v5 addConstraints:v9];

    v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[descriptionView]|" options:0 metrics:&unk_28642E130 views:v8];
    [(WDDisplayTypeDescriptionTableFooterView *)v5 addConstraints:v10];

    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(WDDisplayTypeDescriptionTableFooterView *)v5 setBackgroundColor:secondarySystemBackgroundColor];
  }

  return v5;
}

- (WDDisplayTypeDescriptionTableFooterView)initWithFrame:(CGRect)frame
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (WDDisplayTypeDescriptionTableFooterView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WDDisplayTypeDescriptionTableFooterView;
  return [(WDDisplayTypeDescriptionTableFooterView *)&v4 initWithCoder:coder];
}

@end