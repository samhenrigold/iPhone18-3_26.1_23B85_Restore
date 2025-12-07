@interface RPPairingShowViewController
+ (id)instantiateViewController;
- (void)_updatePasswordUI;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RPPairingShowViewController

+ (id)instantiateViewController
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.RapportUI"];
  v3 = [MEMORY[0x277D75AC8] storyboardWithName:@"RPPairingShow_iOS" bundle:v2];
  v4 = [v3 instantiateViewControllerWithIdentifier:@"PINShow"];
  view = [v4 view];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RPPairingShowViewController;
  [(RPPairingShowViewController *)&v5 viewWillAppear:appear];
  navigationController = [(RPPairingShowViewController *)self navigationController];
  [(UIButton *)self->_cancelButton setHidden:navigationController != 0];

  [(RPPairingShowViewController *)self _updatePasswordUI];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = RPPairingShowViewController;
  [(RPPairingShowViewController *)&v6 viewDidDisappear:disappear];
  v4 = MEMORY[0x26670B920](self->_dismissHandler);
  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = 0;

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)_updatePasswordUI
{
  v9 = self->_password;
  if ([(NSString *)v9 length]== 4)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C %C %C %C", -[NSString characterAtIndex:](v9, "characterAtIndex:", 0), -[NSString characterAtIndex:](v9, "characterAtIndex:", 1), -[NSString characterAtIndex:](v9, "characterAtIndex:", 2), -[NSString characterAtIndex:](v9, "characterAtIndex:", 3), v5, v6, v7, v8];
LABEL_7:
    v4 = v3;
    [(UILabel *)self->_verificationCodeLabel setText:v3];

    goto LABEL_8;
  }

  if ([(NSString *)v9 length]== 6)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C %C %C   %C %C %C", -[NSString characterAtIndex:](v9, "characterAtIndex:", 0), -[NSString characterAtIndex:](v9, "characterAtIndex:", 1), -[NSString characterAtIndex:](v9, "characterAtIndex:", 2), -[NSString characterAtIndex:](v9, "characterAtIndex:", 3), -[NSString characterAtIndex:](v9, "characterAtIndex:", 4), -[NSString characterAtIndex:](v9, "characterAtIndex:", 5), v7, v8];
    goto LABEL_7;
  }

  if ([(NSString *)v9 length]== 8)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C%C%C-%C%C-%C%C%C", -[NSString characterAtIndex:](v9, "characterAtIndex:", 0), -[NSString characterAtIndex:](v9, "characterAtIndex:", 1), -[NSString characterAtIndex:](v9, "characterAtIndex:", 2), -[NSString characterAtIndex:](v9, "characterAtIndex:", 3), -[NSString characterAtIndex:](v9, "characterAtIndex:", 4), -[NSString characterAtIndex:](v9, "characterAtIndex:", 5), -[NSString characterAtIndex:](v9, "characterAtIndex:", 6), -[NSString characterAtIndex:](v9, "characterAtIndex:", 7)];
    goto LABEL_7;
  }

  [(UILabel *)self->_verificationCodeLabel setText:v9];
LABEL_8:
}

@end