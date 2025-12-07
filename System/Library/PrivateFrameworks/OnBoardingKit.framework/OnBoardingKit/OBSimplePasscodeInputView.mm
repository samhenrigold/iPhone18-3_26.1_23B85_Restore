@interface OBSimplePasscodeInputView
- (OBSimplePasscodeInputView)initWithFrame:(CGRect)frame numberOfEntryFields:(unint64_t)fields;
- (id)passcode;
- (void)passcodeField:(id)field enteredPasscode:(id)passcode;
- (void)setPasscode:(id)passcode;
@end

@implementation OBSimplePasscodeInputView

- (OBSimplePasscodeInputView)initWithFrame:(CGRect)frame numberOfEntryFields:(unint64_t)fields
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = OBSimplePasscodeInputView;
  v5 = [(OBSimplePasscodeInputView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = [[OBPasscodeField alloc] initWithNumberOfEntryFields:fields];
    passcodeField = v5->_passcodeField;
    v5->_passcodeField = v6;

    [(OBPasscodeField *)v5->_passcodeField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(OBPasscodeField *)v5->_passcodeField setDelegate:v5];
    [(OBSimplePasscodeInputView *)v5 addSubview:v5->_passcodeField];
    v18 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(OBPasscodeField *)v5->_passcodeField leadingAnchor];
    leadingAnchor2 = [(OBSimplePasscodeInputView *)v5 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[0] = v20;
    trailingAnchor = [(OBPasscodeField *)v5->_passcodeField trailingAnchor];
    trailingAnchor2 = [(OBSimplePasscodeInputView *)v5 trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[1] = v9;
    topAnchor = [(OBPasscodeField *)v5->_passcodeField topAnchor];
    topAnchor2 = [(OBSimplePasscodeInputView *)v5 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[2] = v12;
    bottomAnchor = [(OBPasscodeField *)v5->_passcodeField bottomAnchor];
    bottomAnchor2 = [(OBSimplePasscodeInputView *)v5 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v16];
  }

  return v5;
}

- (void)setPasscode:(id)passcode
{
  passcodeCopy = passcode;
  passcodeField = [(OBSimplePasscodeInputView *)self passcodeField];
  [passcodeField setStringValue:passcodeCopy];
}

- (id)passcode
{
  passcodeField = [(OBSimplePasscodeInputView *)self passcodeField];
  stringValue = [passcodeField stringValue];

  return stringValue;
}

- (void)passcodeField:(id)field enteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  delegate = [(OBPasscodeInputView *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(OBPasscodeInputView *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(OBPasscodeInputView *)self delegate];
      [delegate3 passcodeInput:self enteredPasscode:passcodeCopy];
    }
  }
}

@end