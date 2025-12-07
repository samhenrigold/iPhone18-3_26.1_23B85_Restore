@interface CPSVoiceView
- (CPSVoiceView)initWithFrame:(CGRect)frame;
- (id)_titleFont;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSVoiceView

- (CPSVoiceView)initWithFrame:(CGRect)frame
{
  v84[11] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v81 = a2;
  v82 = 0;
  v80.receiver = self;
  v80.super_class = CPSVoiceView;
  v78 = [(CPSVoiceView *)&v80 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v82 = v78;
  objc_storeStrong(&v82, v78);
  if (v78)
  {
    [(CPSVoiceView *)v82 setTranslatesAutoresizingMaskIntoConstraints:0];
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [(CPSVoiceView *)v82 setBackgroundColor:?];
    MEMORY[0x277D82BD8](tableBackgroundColor);
    v3 = [CPSAbridgableLabel alloc];
    v30 = MEMORY[0x277CBF3A0];
    v4 = [(CPSAbridgableLabel *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    titleLabel = v82->_titleLabel;
    v82->_titleLabel = v4;
    *&v6 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
    _titleFont = [(CPSVoiceView *)v82 _titleFont];
    titleLabel = [(CPSVoiceView *)v82 titleLabel];
    [(CPSAbridgableLabel *)titleLabel setFont:_titleFont];
    MEMORY[0x277D82BD8](titleLabel);
    clearColor = [MEMORY[0x277D75348] clearColor];
    titleLabel2 = [(CPSVoiceView *)v82 titleLabel];
    [(CPSAbridgableLabel *)titleLabel2 setBackgroundColor:clearColor];
    MEMORY[0x277D82BD8](titleLabel2);
    *&v7 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
    titleLabel3 = [(CPSVoiceView *)v82 titleLabel];
    [(CPSAbridgableLabel *)titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v8 = MEMORY[0x277D82BD8](titleLabel3).n128_u64[0];
    titleLabel4 = [(CPSVoiceView *)v82 titleLabel];
    [(CPSAbridgableLabel *)titleLabel4 setTextAlignment:?];
    *&v9 = MEMORY[0x277D82BD8](titleLabel4).n128_u64[0];
    titleLabel5 = [(CPSVoiceView *)v82 titleLabel];
    [(CPSAbridgableLabel *)titleLabel5 setNumberOfLines:2];
    labelColor = [MEMORY[0x277D75348] labelColor];
    titleLabel6 = [(CPSVoiceView *)v82 titleLabel];
    [(CPSAbridgableLabel *)titleLabel6 setTextColor:labelColor];
    MEMORY[0x277D82BD8](titleLabel6);
    *&v10 = MEMORY[0x277D82BD8](labelColor).n128_u64[0];
    v28 = v82;
    titleLabel7 = [(CPSVoiceView *)v82 titleLabel];
    [(CPSVoiceView *)v28 addSubview:?];
    MEMORY[0x277D82BD8](titleLabel7);
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{*v30, v30[1], v30[2], v30[3]}];
    imageView = v82->_imageView;
    v82->_imageView = v11;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    imageView = [(CPSVoiceView *)v82 imageView];
    [(UIImageView *)imageView setBackgroundColor:clearColor2];
    MEMORY[0x277D82BD8](imageView);
    *&v13 = MEMORY[0x277D82BD8](clearColor2).n128_u64[0];
    imageView2 = [(CPSVoiceView *)v82 imageView];
    [(UIImageView *)imageView2 setContentMode:1];
    *&v14 = MEMORY[0x277D82BD8](imageView2).n128_u64[0];
    imageView3 = [(CPSVoiceView *)v82 imageView];
    [(UIImageView *)imageView3 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v15 = MEMORY[0x277D82BD8](imageView3).n128_u64[0];
    v35 = v82;
    imageView4 = [(CPSVoiceView *)v82 imageView];
    [(CPSVoiceView *)v35 addSubview:?];
    MEMORY[0x277D82BD8](imageView4);
    v79 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPSVoiceView *)v82 addLayoutGuide:v79];
    v37 = MEMORY[0x277CCAAD0];
    titleLabel8 = [(CPSVoiceView *)v82 titleLabel];
    topAnchor = [(CPSAbridgableLabel *)titleLabel8 topAnchor];
    topAnchor2 = [(CPSVoiceView *)v82 topAnchor];
    v74 = [topAnchor constraintEqualToAnchor:10.0 constant:?];
    v84[0] = v74;
    titleLabel9 = [(CPSVoiceView *)v82 titleLabel];
    leadingAnchor = [(CPSAbridgableLabel *)titleLabel9 leadingAnchor];
    leadingAnchor2 = [(CPSVoiceView *)v82 leadingAnchor];
    v70 = [leadingAnchor constraintEqualToAnchor:12.0 constant:?];
    v84[1] = v70;
    titleLabel10 = [(CPSVoiceView *)v82 titleLabel];
    trailingAnchor = [(CPSAbridgableLabel *)titleLabel10 trailingAnchor];
    trailingAnchor2 = [(CPSVoiceView *)v82 trailingAnchor];
    v66 = [trailingAnchor constraintEqualToAnchor:-12.0 constant:?];
    v84[2] = v66;
    leadingAnchor3 = [v79 leadingAnchor];
    leadingAnchor4 = [(CPSVoiceView *)v82 leadingAnchor];
    v63 = [leadingAnchor3 constraintEqualToAnchor:?];
    v84[3] = v63;
    trailingAnchor3 = [v79 trailingAnchor];
    trailingAnchor4 = [(CPSVoiceView *)v82 trailingAnchor];
    v60 = [trailingAnchor3 constraintEqualToAnchor:?];
    v84[4] = v60;
    topAnchor3 = [v79 topAnchor];
    titleLabel11 = [(CPSVoiceView *)v82 titleLabel];
    bottomAnchor = [(CPSAbridgableLabel *)titleLabel11 bottomAnchor];
    v56 = [topAnchor3 constraintEqualToAnchor:?];
    v84[5] = v56;
    bottomAnchor2 = [v79 bottomAnchor];
    bottomAnchor3 = [(CPSVoiceView *)v82 bottomAnchor];
    v53 = [bottomAnchor2 constraintEqualToAnchor:?];
    v84[6] = v53;
    imageView5 = [(CPSVoiceView *)v82 imageView];
    widthAnchor = [(UIImageView *)imageView5 widthAnchor];
    v50 = [widthAnchor constraintLessThanOrEqualToConstant:?];
    v84[7] = v50;
    imageView6 = [(CPSVoiceView *)v82 imageView];
    heightAnchor = [(UIImageView *)imageView6 heightAnchor];
    v47 = [heightAnchor constraintLessThanOrEqualToConstant:150.0];
    v84[8] = v47;
    imageView7 = [(CPSVoiceView *)v82 imageView];
    centerXAnchor = [(UIImageView *)imageView7 centerXAnchor];
    centerXAnchor2 = [v79 centerXAnchor];
    v43 = [centerXAnchor constraintEqualToAnchor:?];
    v84[9] = v43;
    imageView8 = [(CPSVoiceView *)v82 imageView];
    centerYAnchor = [(UIImageView *)imageView8 centerYAnchor];
    centerYAnchor2 = [v79 centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:?];
    v84[10] = v39;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:11];
    [v37 activateConstraints:?];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](imageView8);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](centerXAnchor);
    MEMORY[0x277D82BD8](imageView7);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](imageView6);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](imageView5);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](titleLabel11);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](titleLabel10);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](titleLabel9);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](titleLabel8);
    objc_storeStrong(&v79, 0);
  }

  v17 = MEMORY[0x277D82BE0](v82);
  objc_storeStrong(&v82, 0);
  return v17;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v5.receiver = selfCopy;
  v5.super_class = CPSVoiceView;
  [(CPSVoiceView *)&v5 traitCollectionDidChange:location[0]];
  titleLabel = [(CPSVoiceView *)selfCopy titleLabel];
  _titleFont = [(CPSVoiceView *)selfCopy _titleFont];
  [(CPSAbridgableLabel *)titleLabel setFont:?];
  MEMORY[0x277D82BD8](_titleFont);
  MEMORY[0x277D82BD8](titleLabel);
  objc_storeStrong(location, 0);
}

- (id)_titleFont
{
  v18[1] = *MEMORY[0x277D85DE8];
  v14[2] = self;
  v14[1] = a2;
  v7 = MEMORY[0x277D74310];
  v6 = *MEMORY[0x277D76A20];
  traitCollection = [(CPSVoiceView *)self traitCollection];
  v14[0] = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](traitCollection);
  v17 = *MEMORY[0x277D74430];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v18[0] = v9;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = v14[0];
  v15 = *MEMORY[0x277D74380];
  v16 = v13;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:{1, v2}];
  v3 = [v10 fontDescriptorByAddingAttributes:?];
  v4 = v14[0];
  v14[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v11);
  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v14[0] size:0.0];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v12;
}

@end