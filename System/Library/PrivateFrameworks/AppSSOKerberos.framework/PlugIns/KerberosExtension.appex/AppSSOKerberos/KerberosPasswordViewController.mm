@interface KerberosPasswordViewController
- (BOOL)_hasFilledRequiredFormFields;
- (BOOL)_hasVerifiedNewPassword;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)textFieldShouldReturn:(id)return;
- (KerberosPasswordChangeViewControllerDelegate)delegate;
- (KerberosPasswordViewController)initWithCoder:(id)coder;
- (KerberosPasswordViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSLayoutConstraint)bottomConstraint;
- (UIBarButtonItem)cancelButton;
- (UILabel)realmLabel;
- (UINavigationBar)navigationBar;
- (UINavigationItem)navigationItem;
- (UITextField)changedPasswordAgainTextField;
- (UITextField)changedPasswordTextField;
- (UITextField)passwordTextField;
- (UITextField)usernameTextField;
- (UIView)containerView;
- (UIView)separator1;
- (UIView)separator2;
- (void)_disableUI;
- (void)_enableUI;
- (void)_showMessage:(id)message completionHandler:(id)handler;
- (void)cancelClicked:(id)clicked;
- (void)cancelCurrentOperation;
- (void)changeADPassword;
- (void)changeFocusedElementForAccessibilityIfNeeded;
- (void)changePasswordClicked;
- (void)handleKerberosOperation:(id)operation withMessage:(id)message;
- (void)keyboardWillChangeFrame:(id)frame;
- (void)keyboardWillHide:(id)hide;
- (void)textFieldDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation KerberosPasswordViewController

- (KerberosPasswordViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = KerberosPasswordViewController;
  result = [(KerberosPasswordViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_shouldChangeFocusedElementForAccessibility = 1;
  }

  return result;
}

- (KerberosPasswordViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = KerberosPasswordViewController;
  result = [(KerberosPasswordViewController *)&v4 initWithCoder:coder];
  if (result)
  {
    result->_shouldChangeFocusedElementForAccessibility = 1;
  }

  return result;
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = KerberosPasswordViewController;
  viewDidLoad = [(KerberosPasswordViewController *)&v36 viewDidLoad];
  v4 = sub_100001624(viewDidLoad);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B170();
  }

  changePasswordButton = [(KerberosPasswordViewController *)self changePasswordButton];
  layer = [changePasswordButton layer];
  [layer setCornerRadius:10.0];

  userNamePasswordView = [(KerberosPasswordViewController *)self userNamePasswordView];
  layer2 = [userNamePasswordView layer];
  [layer2 setCornerRadius:10.0];

  v9 = +[UIColor secondarySystemBackgroundColor];
  WeakRetained = objc_loadWeakRetained(&self->_separator1);
  [WeakRetained setBackgroundColor:v9];

  v11 = +[UIColor secondarySystemBackgroundColor];
  v12 = objc_loadWeakRetained(&self->_separator2);
  [v12 setBackgroundColor:v11];

  v13 = objc_alloc_init(UILabel);
  [v13 setText:@"Change Password"];
  [v13 setTextAlignment:0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v13 setFont:v14];

  [v13 setAdjustsFontForContentSizeCategory:1];
  v15 = [[UIBarButtonItem alloc] initWithCustomView:v13];
  navigationItem = [(KerberosPasswordViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v15];

  v17 = objc_loadWeakRetained(&self->_usernameTextField);
  [v17 setDelegate:self];

  v18 = objc_loadWeakRetained(&self->_passwordTextField);
  [v18 setDelegate:self];

  v19 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  [v19 setDelegate:self];

  v20 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  [v20 setDelegate:self];

  v21 = objc_loadWeakRetained(&self->_usernameTextField);
  [v21 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v22 = objc_loadWeakRetained(&self->_passwordTextField);
  [v22 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v23 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  [v23 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v24 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  [v24 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v25 = objc_loadWeakRetained(&self->_usernameTextField);
  [v25 setTextContentType:UITextContentTypeUsername];

  v26 = objc_loadWeakRetained(&self->_passwordTextField);
  [v26 setTextContentType:UITextContentTypePassword];

  v27 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  [v27 setTextContentType:UITextContentTypeNewPassword];

  v28 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  [v28 setTextContentType:UITextContentTypeNewPassword];

  containerView = [(KerberosPasswordViewController *)self containerView];
  [containerView setClipsToBounds:1];

  containerView2 = [(KerberosPasswordViewController *)self containerView];
  layer3 = [containerView2 layer];
  [layer3 setCornerRadius:10.0];

  containerView3 = [(KerberosPasswordViewController *)self containerView];
  layer4 = [containerView3 layer];
  [layer4 setMaskedCorners:3];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 addObserver:self selector:"keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];

  v35 = +[NSNotificationCenter defaultCenter];
  [v35 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = KerberosPasswordViewController;
  [(KerberosPasswordViewController *)&v18 viewWillAppear:appear];
  currentUIContext = [(KerberosPasswordViewController *)self currentUIContext];
  realm = [currentUIContext realm];
  realmLabel = [(KerberosPasswordViewController *)self realmLabel];
  [realmLabel setText:realm];

  currentUIContext2 = [(KerberosPasswordViewController *)self currentUIContext];
  userName = [currentUIContext2 userName];
  usernameTextField = [(KerberosPasswordViewController *)self usernameTextField];
  [usernameTextField setText:userName];

  currentUIContext3 = [(KerberosPasswordViewController *)self currentUIContext];
  LODWORD(userName) = [currentUIContext3 userNameIsReadOnly];
  usernameTextField2 = [(KerberosPasswordViewController *)self usernameTextField];
  [usernameTextField2 setEnabled:userName ^ 1];

  passwordTextField = [(KerberosPasswordViewController *)self passwordTextField];
  [passwordTextField setText:&stru_100014860];

  [(KerberosPasswordViewController *)self _enableUI];
  p_usernameTextField = &self->_usernameTextField;
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  text = [WeakRetained text];
  v16 = [text length];

  if (v16)
  {
    p_usernameTextField = &self->_passwordTextField;
  }

  v17 = objc_loadWeakRetained(p_usernameTextField);
  [v17 becomeFirstResponder];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = KerberosPasswordViewController;
  [(KerberosPasswordViewController *)&v5 viewDidAppear:appear];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000018A8;
  v4[3] = &unk_100014358;
  v4[4] = self;
  [UIView animateWithDuration:1 delay:v4 options:&stru_100014398 animations:0.35 completion:0.35];
}

- (void)keyboardWillChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v5 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v14 doubleValue];
  v16 = v15;

  v17 = [userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  unsignedIntegerValue = [v17 unsignedIntegerValue];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001A74;
  v19[3] = &unk_1000143C0;
  v19[4] = self;
  v19[5] = v7;
  v19[6] = v9;
  v19[7] = v11;
  v19[8] = v13;
  [UIView animateWithDuration:unsignedIntegerValue delay:v19 options:&stru_1000143E0 animations:v16 completion:0.0];
}

- (void)keyboardWillHide:(id)hide
{
  userInfo = [hide userInfo];
  v5 = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v5 doubleValue];
  v7 = v6;

  v8 = [userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001BFC;
  v10[3] = &unk_100014358;
  v10[4] = self;
  [UIView animateWithDuration:unsignedIntegerValue delay:v10 options:&stru_100014400 animations:v7 completion:0.0];
}

- (void)changePasswordClicked
{
  v3 = sub_100001624(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B1B8();
  }

  _formIsValid = [(KerberosPasswordViewController *)self _formIsValid];
  if (_formIsValid)
  {
    v5 = sub_100001624(_formIsValid);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B220();
    }

    usernameTextField = [(KerberosPasswordViewController *)self usernameTextField];
    text = [usernameTextField text];
    currentUIContext = [(KerberosPasswordViewController *)self currentUIContext];
    [currentUIContext setUserName:text];

    passwordTextField = [(KerberosPasswordViewController *)self passwordTextField];
    text2 = [passwordTextField text];
    currentUIContext2 = [(KerberosPasswordViewController *)self currentUIContext];
    [currentUIContext2 setPassword:text2];

    changedPasswordTextField = [(KerberosPasswordViewController *)self changedPasswordTextField];
    text3 = [changedPasswordTextField text];
    currentUIContext3 = [(KerberosPasswordViewController *)self currentUIContext];
    [currentUIContext3 setChangedPassword:text3];

    [(KerberosPasswordViewController *)self changeADPassword];
  }

  else if (![(KerberosPasswordViewController *)self _hasVerifiedNewPassword])
  {
    [(KerberosPasswordViewController *)self _disableUI];
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"PASSWORD_CHANGE_PASSWORD_MATCH_ALERT_TEXT" value:&stru_100014860 table:0];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100001E98;
    v19[3] = &unk_100014358;
    v19[4] = self;
    [(KerberosPasswordViewController *)self _showMessage:v16 completionHandler:v19];

    v18 = sub_100001624(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B1EC();
    }
  }
}

- (void)cancelClicked:(id)clicked
{
  v4 = sub_100001624(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B254();
  }

  delegate = [(KerberosPasswordViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(KerberosPasswordViewController *)self delegate];
    [delegate2 didClose];
  }

  else
  {
    presentingViewController = [(KerberosPasswordViewController *)self presentingViewController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001FA4;
    v9[3] = &unk_100014358;
    v9[4] = self;
    [presentingViewController dismissViewControllerAnimated:1 completion:v9];
  }
}

- (void)_disableUI
{
  changePasswordButton = [(KerberosPasswordViewController *)self changePasswordButton];
  [changePasswordButton setEnabled:0];

  cancelButton = [(KerberosPasswordViewController *)self cancelButton];
  [cancelButton setEnabled:0];

  cancelButton2 = [(KerberosPasswordViewController *)self cancelButton];
  [cancelButton2 setIsAccessibilityElement:0];

  usernameTextField = [(KerberosPasswordViewController *)self usernameTextField];
  [usernameTextField setEnabled:0];

  passwordTextField = [(KerberosPasswordViewController *)self passwordTextField];
  [passwordTextField setEnabled:0];

  changedPasswordTextField = [(KerberosPasswordViewController *)self changedPasswordTextField];
  [changedPasswordTextField setEnabled:0];

  changedPasswordAgainTextField = [(KerberosPasswordViewController *)self changedPasswordAgainTextField];
  [changedPasswordAgainTextField setEnabled:0];

  spinner = [(KerberosPasswordViewController *)self spinner];
  [spinner startAnimating];

  [(KerberosPasswordViewController *)self changeFocusedElementForAccessibilityIfNeeded];
}

- (void)_enableUI
{
  _hasFilledRequiredFormFields = [(KerberosPasswordViewController *)self _hasFilledRequiredFormFields];
  changePasswordButton = [(KerberosPasswordViewController *)self changePasswordButton];
  [changePasswordButton setEnabled:_hasFilledRequiredFormFields];

  cancelButton = [(KerberosPasswordViewController *)self cancelButton];
  [cancelButton setEnabled:1];

  cancelButton2 = [(KerberosPasswordViewController *)self cancelButton];
  [cancelButton2 setIsAccessibilityElement:1];

  currentUIContext = [(KerberosPasswordViewController *)self currentUIContext];
  LODWORD(changePasswordButton) = [currentUIContext userNameIsReadOnly];
  usernameTextField = [(KerberosPasswordViewController *)self usernameTextField];
  [usernameTextField setEnabled:changePasswordButton ^ 1];

  passwordTextField = [(KerberosPasswordViewController *)self passwordTextField];
  [passwordTextField setEnabled:1];

  changedPasswordTextField = [(KerberosPasswordViewController *)self changedPasswordTextField];
  [changedPasswordTextField setEnabled:1];

  changedPasswordAgainTextField = [(KerberosPasswordViewController *)self changedPasswordAgainTextField];
  [changedPasswordAgainTextField setEnabled:1];

  spinner = [(KerberosPasswordViewController *)self spinner];
  [spinner stopAnimating];
}

- (void)cancelCurrentOperation
{
  currentUIContext = [(KerberosPasswordViewController *)self currentUIContext];
  [currentUIContext cancelRequest];
}

- (void)handleKerberosOperation:(id)operation withMessage:(id)message
{
  operationCopy = operation;
  messageCopy = message;
  v8 = sub_100001624(messageCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B288(operationCopy, messageCopy, v8);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002360;
  v10[3] = &unk_100014450;
  v10[4] = self;
  v11 = operationCopy;
  v9 = operationCopy;
  [v9 presentAuthorizationViewControllerWithCompletion:v10];
}

- (void)changeADPassword
{
  v3 = sub_100001624(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B310();
  }

  [(KerberosPasswordViewController *)self _disableUI];
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025C8;
  block[3] = &unk_100014358;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_showMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CHANGE_PASSWORD_ERROR" value:&stru_100014860 table:0];
  v10 = [UIAlertController alertControllerWithTitle:v9 message:messageCopy preferredStyle:1];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"OK_TEXT" value:&stru_100014860 table:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100002D24;
  v16[3] = &unk_100014478;
  v16[4] = self;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = [UIAlertAction actionWithTitle:v12 style:0 handler:v16];
  [v10 addAction:v14];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002D6C;
  v15[3] = &unk_100014358;
  v15[4] = self;
  [(KerberosPasswordViewController *)self presentViewController:v10 animated:1 completion:v15];
}

- (void)textFieldDidChange:(id)change
{
  _hasFilledRequiredFormFields = [(KerberosPasswordViewController *)self _hasFilledRequiredFormFields];
  changePasswordButton = self->_changePasswordButton;

  [(UIButton *)changePasswordButton setEnabled:_hasFilledRequiredFormFields];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);

  v6 = objc_loadWeakRetained(&self->_passwordTextField);
  v7 = v6;
  if (WeakRetained == returnCopy)
  {
    goto LABEL_7;
  }

  v8 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  v9 = v8;
  if (v7 == returnCopy)
  {
    [v8 becomeFirstResponder];

    goto LABEL_9;
  }

  v10 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  v7 = v10;
  if (v9 == returnCopy)
  {
LABEL_7:
    [v7 becomeFirstResponder];
  }

  else
  {

    if (v7 == returnCopy && [(KerberosPasswordViewController *)self _hasFilledRequiredFormFields])
    {
      [(KerberosPasswordViewController *)self changePasswordClicked];
    }
  }

LABEL_9:

  return 1;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = sub_100001624(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cancelled via accessibility gesture", v5, 2u);
  }

  [(KerberosPasswordViewController *)self cancelClicked:0];
  return 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  _hasFilledRequiredFormFields = [(KerberosPasswordViewController *)self _hasFilledRequiredFormFields];
  v4 = _hasFilledRequiredFormFields;
  if (_hasFilledRequiredFormFields)
  {
    v5 = sub_100001624(_hasFilledRequiredFormFields);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Submitted password change request via accessibility gesture", v7, 2u);
    }

    [(KerberosPasswordViewController *)self changePasswordClicked:0];
  }

  return v4;
}

- (void)changeFocusedElementForAccessibilityIfNeeded
{
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003040;
  block[3] = &unk_100014358;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)_hasFilledRequiredFormFields
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  text = [WeakRetained text];
  v5 = [text length];

  v6 = objc_loadWeakRetained(&self->_passwordTextField);
  text2 = [v6 text];
  v8 = [text2 length];

  v9 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  text3 = [v9 text];
  v11 = [text3 length];

  v12 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  text4 = [v12 text];
  v14 = [text4 length];

  result = 0;
  if (v5 && v8)
  {
    if (v11)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    return !v16;
  }

  return result;
}

- (BOOL)_hasVerifiedNewPassword
{
  changedPasswordTextField = [(KerberosPasswordViewController *)self changedPasswordTextField];
  text = [changedPasswordTextField text];
  changedPasswordAgainTextField = [(KerberosPasswordViewController *)self changedPasswordAgainTextField];
  text2 = [changedPasswordAgainTextField text];
  v7 = [text isEqualToString:text2];

  return v7;
}

- (KerberosPasswordChangeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (UILabel)realmLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_realmLabel);

  return WeakRetained;
}

- (UITextField)usernameTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);

  return WeakRetained;
}

- (UITextField)passwordTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_passwordTextField);

  return WeakRetained;
}

- (UITextField)changedPasswordTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_changedPasswordTextField);

  return WeakRetained;
}

- (UITextField)changedPasswordAgainTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);

  return WeakRetained;
}

- (UINavigationBar)navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (UIView)separator1
{
  WeakRetained = objc_loadWeakRetained(&self->_separator1);

  return WeakRetained;
}

- (UIView)separator2
{
  WeakRetained = objc_loadWeakRetained(&self->_separator2);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomConstraint);

  return WeakRetained;
}

- (UINavigationItem)navigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationItem);

  return WeakRetained;
}

- (UIBarButtonItem)cancelButton
{
  WeakRetained = objc_loadWeakRetained(&self->_cancelButton);

  return WeakRetained;
}

@end