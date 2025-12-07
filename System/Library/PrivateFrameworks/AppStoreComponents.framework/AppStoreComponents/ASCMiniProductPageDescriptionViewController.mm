@interface ASCMiniProductPageDescriptionViewController
- (ASCMiniProductPageDescriptionViewController)initWithText:(id)text;
- (void)loadView;
- (void)setText:(id)text;
@end

@implementation ASCMiniProductPageDescriptionViewController

- (ASCMiniProductPageDescriptionViewController)initWithText:(id)text
{
  textCopy = text;
  v6 = [(ASCMiniProductPageDescriptionViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, text);
    v8 = MEMORY[0x277D750C8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__ASCMiniProductPageDescriptionViewController_initWithText___block_invoke;
    v15[3] = &unk_2781CC7F0;
    v9 = v7;
    v16 = v9;
    v10 = [v8 actionWithHandler:v15];
    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 primaryAction:v10];
    navigationItem = [(ASCMiniProductPageDescriptionViewController *)v9 navigationItem];
    [navigationItem setRightBarButtonItem:v11];

    v13 = ASCLocalizedString(@"MINI_PRODUCT_PAGE_DESCRIPTION_SHEET_TITLE");
    [(ASCMiniProductPageDescriptionViewController *)v9 setTitle:v13];
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75C40]);
  v6 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  text = [(ASCMiniProductPageDescriptionViewController *)self text];
  [v6 setText:text];

  [v6 setEditable:0];
  [v6 setSelectable:0];
  [v6 setTextContainerInset:{8.0, 16.0, 0.0, 16.0}];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v6 setFont:v5];

  [(ASCMiniProductPageDescriptionViewController *)self setView:v6];
}

- (void)setText:(id)text
{
  textCopy = text;
  objc_storeStrong(&self->_text, text);
  viewIfLoaded = [(ASCMiniProductPageDescriptionViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    textView = [(ASCMiniProductPageDescriptionViewController *)self textView];
    [textView setText:textCopy];
  }
}

@end