@interface TSTermsAndConditionsViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTermsAndConditionsViewController)initWithSourceIccid:(id)iccid mainText:(id)text;
- (void)_acceptClicked:(id)clicked;
- (void)_cancelTransfer:(id)transfer;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation TSTermsAndConditionsViewController

- (TSTermsAndConditionsViewController)initWithSourceIccid:(id)iccid mainText:(id)text
{
  iccidCopy = iccid;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = TSTermsAndConditionsViewController;
  v9 = [(TSTermsAndConditionsViewController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mainText, text);
    objc_storeStrong(&v10->_sourceIccid, iccid);
    v11 = objc_alloc(MEMORY[0x277CC37B0]);
    v12 = [v11 initWithQueue:MEMORY[0x277D85CD0]];
    client = v10->_client;
    v10->_client = v12;
  }

  return v10;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  textView = self->_textView;
  self->_textView = v3;

  v5 = self->_textView;

  [(TSTermsAndConditionsViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v25[3] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = TSTermsAndConditionsViewController;
  [(SSUIViewController *)&v22 viewDidLoad];
  [(TSTermsAndConditionsViewController *)self setModalInPresentation:1];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DISAGREE" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__cancelTransfer_];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v8 = objc_alloc(MEMORY[0x277D751E0]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"AGREE" value:&stru_28753DF48 table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:sel__acceptClicked_];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TERMS_AND_CONDITIONS_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSTermsAndConditionsViewController *)self setTitle:v13];

  v25[0] = v6;
  v25[1] = v7;
  v25[2] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  [(TSTermsAndConditionsViewController *)self setToolbarItems:v14];

  navigationController = [(TSTermsAndConditionsViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:0];

  [(UITextView *)self->_textView setEditable:0];
  v23 = *MEMORY[0x277D740C0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v24 = labelColor;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  textView = self->_textView;
  v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_mainText attributes:v17];
  [(UITextView *)textView setAttributedText:v19];

  v20 = self->_textView;
  v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UITextView *)v20 setFont:v21];
}

- (void)_acceptClicked:(id)clicked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startTimer:1];

  [(CoreTelephonyClient *)self->_client handleTermsAndConditionsCompleted:self->_sourceIccid consented:1 completion:&__block_literal_global];
  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 viewControllerDidComplete:self];
}

void __53__TSTermsAndConditionsViewController__acceptClicked___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _TSLogDomain(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__TSTermsAndConditionsViewController__acceptClicked___block_invoke_cold_1();
    }
  }
}

- (void)_cancelTransfer:(id)transfer
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TSLogDomain(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSTermsAndConditionsViewController _cancelTransfer:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "T&C cancelled @%s", &v7, 0xCu);
  }

  [(TSTermsAndConditionsViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(CoreTelephonyClient *)self->_client handleTermsAndConditionsCompleted:self->_sourceIccid consented:0 completion:&__block_literal_global_53];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"user.disagreed.terms.and.conditions" object:0 userInfo:0];
}

void __54__TSTermsAndConditionsViewController__cancelTransfer___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _TSLogDomain(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__TSTermsAndConditionsViewController__cancelTransfer___block_invoke_cold_1();
    }
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __53__TSTermsAndConditionsViewController__acceptClicked___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "[TSTermsAndConditionsViewController _acceptClicked:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]handleTermsAndConditionsCompleted failed : %@ @%s", v1, 0x16u);
}

void __54__TSTermsAndConditionsViewController__cancelTransfer___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "[TSTermsAndConditionsViewController _cancelTransfer:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]handleTermsAndConditionsCompleted failed : %@ @%s", v1, 0x16u);
}

@end