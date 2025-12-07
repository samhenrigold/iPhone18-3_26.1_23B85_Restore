@interface MCDErrorLoadingView
- (MCDErrorLoadingView)initWithTitle:(id)title buttonText:(id)text;
- (MCDErrorViewDelegate)delegate;
- (void)retryButtonPressed:(id)pressed;
@end

@implementation MCDErrorLoadingView

- (MCDErrorLoadingView)initWithTitle:(id)title buttonText:(id)text
{
  v62[8] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  textCopy = text;
  v61.receiver = self;
  v61.super_class = MCDErrorLoadingView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(MCDErrorLoadingView *)&v61 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  if (v12)
  {
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [(MCDErrorLoadingView *)v12 setBackgroundColor:tableBackgroundColor];

    v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    v15 = [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v60 = titleCopy;
    if (titleCopy)
    {
      [v14 setText:titleCopy];
    }

    else
    {
      v16 = MCDCarDisplayBundle(v15);
      v17 = [v16 localizedStringForKey:@"FUSE_TIMEOUT_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
      [v14 setText:v17];
    }

    v18 = _MCDNoContentFontWithTextStyle(*MEMORY[0x277D76A20]);
    [v14 setFont:v18];

    [v14 setTextAlignment:1];
    [v14 setNumberOfLines:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v14 setTextColor:labelColor];

    v20 = objc_opt_new();
    titleLabel = [v20 titleLabel];
    v22 = _MCDNoContentFontWithTextStyle(*MEMORY[0x277D76920]);
    [titleLabel setFont:v22];

    v59 = textCopy;
    if (textCopy)
    {
      [v20 setTitle:textCopy forState:0];
    }

    else
    {
      v24 = MCDCarDisplayBundle(v23);
      v25 = [v24 localizedStringForKey:@"Try Again" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
      [v20 setTitle:v25 forState:0];
    }

    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v20 addTarget:v12 action:sel_retryButtonPressed_ forControlEvents:64];
    [v20 sizeToFit];
    v26 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(MCDErrorLoadingView *)v12 addLayoutGuide:v26];
    [(MCDErrorLoadingView *)v12 addSubview:v14];
    [(MCDErrorLoadingView *)v12 addSubview:v20];
    v47 = MEMORY[0x277CCAAD0];
    v57 = v26;
    heightAnchor = [v26 heightAnchor];
    heightAnchor2 = [(MCDErrorLoadingView *)v12 heightAnchor];
    v55 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.15 constant:0.0];
    v62[0] = v55;
    topAnchor = [v14 topAnchor];
    bottomAnchor = [v26 bottomAnchor];
    v52 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v62[1] = v52;
    leadingAnchor = [v14 leadingAnchor];
    safeAreaLayoutGuide = [(MCDErrorLoadingView *)v12 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v62[2] = v48;
    trailingAnchor = [v14 trailingAnchor];
    safeAreaLayoutGuide2 = [(MCDErrorLoadingView *)v12 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v62[3] = v42;
    centerXAnchor = [v20 centerXAnchor];
    centerXAnchor2 = [(MCDErrorLoadingView *)v12 centerXAnchor];
    v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v62[4] = v39;
    widthAnchor = [v20 widthAnchor];
    widthAnchor2 = [(MCDErrorLoadingView *)v12 widthAnchor];
    [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.699999988 constant:0.0];
    v27 = v46 = v14;
    v62[5] = v27;
    heightAnchor3 = [v20 heightAnchor];
    v29 = [heightAnchor3 constraintEqualToConstant:40.0];
    v62[6] = v29;
    bottomAnchor2 = [v20 bottomAnchor];
    safeAreaLayoutGuide3 = [(MCDErrorLoadingView *)v12 safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide3 bottomAnchor];
    v33 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-24.0];
    v62[7] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:8];
    [v47 activateConstraints:v34];

    v35 = v12;
    textCopy = v59;
    titleCopy = v60;
  }

  return v12;
}

- (void)retryButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = MCDGeneralLogging(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "Retry button pressed", v9, 2u);
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 errorViewDidTapButton:self];
  }
}

- (MCDErrorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end