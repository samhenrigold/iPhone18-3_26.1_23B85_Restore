@interface MCDNoContentView
- (MCDNoContentView)initWithFrame:(CGRect)frame;
- (MCDNoContentView)initWithTitle:(id)title subtitle:(id)subtitle buttonText:(id)text;
- (MCDNoContentViewDelegate)delegate;
- (void)buttonPressed:(id)pressed;
@end

@implementation MCDNoContentView

- (MCDNoContentView)initWithFrame:(CGRect)frame
{
  v4 = MCDCarDisplayBundle(self);
  v5 = [v4 localizedStringForKey:@"NO_CONTENT_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  v6 = MCDCarDisplayBundle(v5);
  v7 = [v6 localizedStringForKey:@"NO_CONTENT_SUBTITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  v8 = [(MCDNoContentView *)self initWithTitle:v5 subtitle:v7];

  return v8;
}

- (MCDNoContentView)initWithTitle:(id)title subtitle:(id)subtitle buttonText:(id)text
{
  v81[4] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  subtitleCopy = subtitle;
  textCopy = text;
  v79.receiver = self;
  v79.super_class = MCDNoContentView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(MCDNoContentView *)&v79 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  if (v12)
  {
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [(MCDNoContentView *)v12 setBackgroundColor:tableBackgroundColor];

    v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v8, v9, v10, v11}];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 setHidden:1];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setText:titleCopy];
    [v15 setText:titleCopy];
    [v15 setText:subtitleCopy];
    v71 = [MEMORY[0x277D74300] systemFontOfSize:28.0];
    [v14 setFont:?];
    v17 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
    [v15 setFont:v17];

    [v14 setTextAlignment:1];
    [v15 setTextAlignment:1];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v14 setTextColor:labelColor];

    _carSystemSecondaryColor = [MEMORY[0x277D75348] _carSystemSecondaryColor];
    [v15 setTextColor:_carSystemSecondaryColor];

    [v14 setNumberOfLines:0];
    [v15 setNumberOfLines:0];
    [(MCDNoContentView *)v12 addSubview:v14];
    [(MCDNoContentView *)v12 addSubview:v15];
    [(MCDNoContentView *)v12 addSubview:v16];
    v20 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:12 relatedBy:0 toItem:v14 attribute:11 multiplier:1.0 constant:28.0];
    LODWORD(v21) = 1148846080;
    v75 = v20;
    [v20 setPriority:v21];
    v74 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:2 relatedBy:0 toItem:v16 attribute:2 multiplier:1.0 constant:0.0];
    v70 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:1 relatedBy:0 toItem:v16 attribute:1 multiplier:1.0 constant:0.0];
    v69 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:2 relatedBy:0 toItem:v16 attribute:2 multiplier:1.0 constant:0.0];
    v68 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:1 relatedBy:0 toItem:v16 attribute:1 multiplier:1.0 constant:0.0];
    v66 = v14;
    v67 = [MEMORY[0x277CCAAD0] constraintWithItem:v16 attribute:3 relatedBy:0 toItem:v14 attribute:3 multiplier:1.0 constant:0.0];
    v64 = v15;
    v65 = [MEMORY[0x277CCAAD0] constraintWithItem:v16 attribute:4 relatedBy:0 toItem:v15 attribute:4 multiplier:1.0 constant:0.0];
    v22 = MEMORY[0x277CCAAD0];
    safeAreaLayoutGuide = [(MCDNoContentView *)v12 safeAreaLayoutGuide];
    v73 = [v22 constraintWithItem:v16 attribute:1 relatedBy:0 toItem:safeAreaLayoutGuide attribute:1 multiplier:1.0 constant:12.0];

    v24 = MEMORY[0x277CCAAD0];
    safeAreaLayoutGuide2 = [(MCDNoContentView *)v12 safeAreaLayoutGuide];
    v72 = [v24 constraintWithItem:v16 attribute:2 relatedBy:0 toItem:safeAreaLayoutGuide2 attribute:2 multiplier:1.0 constant:-12.0];

    v26 = MEMORY[0x277CCAAD0];
    safeAreaLayoutGuide3 = [(MCDNoContentView *)v12 safeAreaLayoutGuide];
    v28 = [v26 constraintWithItem:v16 attribute:10 relatedBy:0 toItem:safeAreaLayoutGuide3 attribute:10 multiplier:1.0 constant:-11.0];

    v29 = MEMORY[0x277CCAAD0];
    safeAreaLayoutGuide4 = [(MCDNoContentView *)v12 safeAreaLayoutGuide];
    v63 = [v29 constraintWithItem:v16 attribute:3 relatedBy:1 toItem:safeAreaLayoutGuide4 attribute:3 multiplier:1.0 constant:0.0];

    v31 = MEMORY[0x277CCAAD0];
    safeAreaLayoutGuide5 = [(MCDNoContentView *)v12 safeAreaLayoutGuide];
    v33 = [v31 constraintWithItem:v16 attribute:4 relatedBy:-1 toItem:safeAreaLayoutGuide5 attribute:4 multiplier:1.0 constant:0.0];

    v34 = 0x277CBE000uLL;
    if (textCopy)
    {
      v35 = objc_opt_new();
      titleLabel = [v35 titleLabel];
      v37 = _MCDNoContentFontWithTextStyle(*MEMORY[0x277D76920]);
      [titleLabel setFont:v37];

      [v35 setTitle:textCopy forState:0];
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v35 addTarget:v12 action:sel_buttonPressed_ forControlEvents:64];
      [v35 sizeToFit];
      [(MCDNoContentView *)v12 addSubview:v35];
      widthAnchor = [v35 widthAnchor];
      widthAnchor2 = [(MCDNoContentView *)v12 widthAnchor];
      v61 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.699999988 constant:0.0];

      heightAnchor = [v35 heightAnchor];
      v60 = [heightAnchor constraintEqualToConstant:40.0];

      centerXAnchor = [v35 centerXAnchor];
      [(MCDNoContentView *)v12 safeAreaLayoutGuide];
      v42 = v62 = v33;
      centerXAnchor2 = [v42 centerXAnchor];
      v44 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      bottomAnchor = [v35 bottomAnchor];
      safeAreaLayoutGuide6 = [(MCDNoContentView *)v12 safeAreaLayoutGuide];
      bottomAnchor2 = [safeAreaLayoutGuide6 bottomAnchor];
      v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-24.0];

      v81[0] = v61;
      v81[1] = v60;
      v81[2] = v44;
      v81[3] = v48;
      v49 = v44;
      v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:4];
      [(MCDNoContentView *)v12 addConstraints:v50];
      [v35 frame];
      v52 = v51;
      [v28 constant];
      v54 = v28;
      [v28 setConstant:v53 - v52];
      v55 = [MEMORY[0x277CCAAD0] constraintWithItem:v16 attribute:4 relatedBy:-1 toItem:v35 attribute:3 multiplier:1.0 constant:0.0];

      v34 = 0x277CBE000;
      v33 = v55;
    }

    else
    {
      v54 = v28;
    }

    v80[0] = v74;
    v80[1] = v70;
    v80[2] = v69;
    v80[3] = v68;
    v80[4] = v75;
    v80[5] = v33;
    v80[6] = v63;
    v80[7] = v73;
    v80[8] = v72;
    v80[9] = v54;
    v80[10] = v67;
    v80[11] = v65;
    [*(v34 + 2656) arrayWithObjects:v80 count:{12, v60}];
    v57 = v56 = v33;
    [(MCDNoContentView *)v12 addConstraints:v57];
    v58 = v12;
  }

  return v12;
}

- (void)buttonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 didTapButton:self];
  }
}

- (MCDNoContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end