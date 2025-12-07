@interface AUPasswordUIAlert
- (void)prepareToShow;
@end

@implementation AUPasswordUIAlert

- (void)prepareToShow
{
  v13.receiver = self;
  v13.super_class = AUPasswordUIAlert;
  [(AUTextFieldUIAlert *)&v13 prepareToShow];
  v6 = objc_msgSend_textField(self, v3, v4, v5);
  objc_msgSend_setAutocorrectionType_(v6, v7, 1, v8);
  objc_msgSend_setEnablesReturnKeyAutomatically_(v6, v9, 1, v10);
  objc_msgSend_setSecureTextEntry_(v6, v11, 1, v12);
}

@end