@interface CKDetailsAddGroupNameView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsAddGroupNameView)initWithFrame:(CGRect)frame;
- (CKDetailsAddGroupNameViewDelegate)delegate;
- (void)commitGroupName;
- (void)setEnabled:(BOOL)enabled;
- (void)setGroupName:(id)name;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation CKDetailsAddGroupNameView

- (CKDetailsAddGroupNameView)initWithFrame:(CGRect)frame
{
  v70[2] = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = CKDetailsAddGroupNameView;
  v3 = [(CKDetailsAddGroupNameView *)&v67 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_enabled = 1;
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    placeholderLabel = v4->_placeholderLabel;
    v4->_placeholderLabel = v10;

    v12 = v4->_placeholderLabel;
    v14 = CKFrameworkBundle(v13);
    v15 = [v14 localizedStringForKey:@"GROUP_NAME_LABEL" value:&stru_1F04268F8 table:@"ChatKit"];
    localizedUppercaseString = [v15 localizedUppercaseString];
    [(UILabel *)v12 setText:localizedUppercaseString];

    v17 = v4->_placeholderLabel;
    v18 = +[CKUIBehavior sharedBehaviors];
    theme = [v18 theme];
    primaryLabelColor = [theme primaryLabelColor];
    [(UILabel *)v17 setTextColor:primaryLabelColor];

    v21 = v4->_placeholderLabel;
    v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v21 setFont:v22];

    [(CKDetailsAddGroupNameView *)v4 addSubview:v4->_placeholderLabel];
    [(UILabel *)v4->_placeholderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [[CKDetailsViewAddGroupNameViewUITextField alloc] initWithFrame:v6, v7, v8, v9];
    inputField = v4->_inputField;
    v4->_inputField = v23;

    v25 = v4->_inputField;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CKDetailsViewAddGroupNameViewUITextField *)v25 setBackgroundColor:clearColor];

    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setReturnKeyType:9];
    v27 = v4->_inputField;
    v28 = *MEMORY[0x1E69DDCF8];
    v29 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(CKDetailsViewAddGroupNameViewUITextField *)v27 setFont:v29];

    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setClearButtonMode:1];
    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setDelegate:v4];
    v30 = v4->_inputField;
    v31 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v31 theme];
    primaryLabelColor2 = [theme2 primaryLabelColor];
    [(CKDetailsViewAddGroupNameViewUITextField *)v30 setTextColor:primaryLabelColor2];

    v34 = v4->_inputField;
    v35 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v35 theme];
    -[CKDetailsViewAddGroupNameViewUITextField setKeyboardAppearance:](v34, "setKeyboardAppearance:", [theme3 keyboardAppearance]);

    v37 = v4->_inputField;
    v38 = objc_alloc(MEMORY[0x1E696AAB0]);
    v39 = CKFrameworkBundle(v38);
    v40 = [v39 localizedStringForKey:@"GROUP_NAME_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit"];
    v69[0] = *MEMORY[0x1E69DB650];
    v41 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemBlueColor"];
    v70[0] = v41;
    v69[1] = *MEMORY[0x1E69DB648];
    v42 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v28];
    v70[1] = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v44 = [v38 initWithString:v40 attributes:v43];
    [(CKDetailsViewAddGroupNameViewUITextField *)v37 setAttributedPlaceholder:v44];

    [(CKDetailsAddGroupNameView *)v4 addSubview:v4->_inputField];
    [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v4->_placeholderLabel topAnchor];
    topAnchor2 = [(CKDetailsAddGroupNameView *)v4 topAnchor];
    v64 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    v68[0] = v64;
    leadingAnchor = [(UILabel *)v4->_placeholderLabel leadingAnchor];
    leadingAnchor2 = [(CKDetailsAddGroupNameView *)v4 leadingAnchor];
    v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v68[1] = v61;
    trailingAnchor = [(UILabel *)v4->_placeholderLabel trailingAnchor];
    trailingAnchor2 = [(CKDetailsAddGroupNameView *)v4 trailingAnchor];
    v57 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v68[2] = v57;
    topAnchor3 = [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField topAnchor];
    placeholderLabel = [(CKDetailsAddGroupNameView *)v4 placeholderLabel];
    bottomAnchor = [placeholderLabel bottomAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
    v68[3] = v46;
    leadingAnchor3 = [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField leadingAnchor];
    leadingAnchor4 = [(CKDetailsAddGroupNameView *)v4 leadingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v68[4] = v49;
    trailingAnchor3 = [(CKDetailsViewAddGroupNameViewUITextField *)v4->_inputField trailingAnchor];
    trailingAnchor4 = [(CKDetailsAddGroupNameView *)v4 trailingAnchor];
    v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v68[5] = v52;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:6];
    [v58 activateConstraints:v53];
  }

  return v4;
}

- (void)commitGroupName
{
  inputField = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField setCanResignFirstResponderInternal:1];

  inputField2 = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField2 resignFirstResponder];
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  if (self->_groupName != nameCopy)
  {
    v11 = nameCopy;
    objc_storeStrong(&self->_groupName, name);
    inputField = [(CKDetailsAddGroupNameView *)self inputField];
    [inputField setText:self->_groupName];

    inputField2 = [(CKDetailsAddGroupNameView *)self inputField];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    primaryLabelColor = [theme primaryLabelColor];
    [inputField2 setTextColor:primaryLabelColor];

    [(CKDetailsAddGroupNameView *)self setNeedsLayout];
    nameCopy = v11;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    inputField = [(CKDetailsAddGroupNameView *)self inputField];
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v6 = CKFrameworkBundle(v5);
    v7 = [v6 localizedStringForKey:@"GROUP_NAME_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = *MEMORY[0x1E69DB650];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v13[0] = systemGrayColor;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v5 initWithString:v7 attributes:v9];
    [inputField setAttributedPlaceholder:v10];

    inputField2 = [(CKDetailsAddGroupNameView *)self inputField];
    [inputField2 setEnabled:self->_enabled];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(CKDetailsViewAddGroupNameViewUITextField *)self->_inputField sizeThatFits:?];
  v7 = v6;
  [(UILabel *)self->_placeholderLabel sizeThatFits:width, height];
  v9 = v7 + v8 + 8.0;
  [(CKDetailsAddGroupNameView *)self layoutMargins];
  v11 = v10 + v9;
  [(CKDetailsAddGroupNameView *)self layoutMargins];
  v13 = v12 + v11;
  v14 = width;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  inputField = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField setCanResignFirstResponderInternal:0];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  inputField = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField setCanResignFirstResponderInternal:1];

  inputField2 = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField2 resignFirstResponder];

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  inputField = [(CKDetailsAddGroupNameView *)self inputField];
  [inputField setCanResignFirstResponderInternal:1];

  delegate = [(CKDetailsAddGroupNameView *)self delegate];
  text = [editingCopy text];

  [delegate detailsAddGroupNameView:self didCommitGroupName:text];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  stringCopy = string;
  text = [field text];
  v9 = [text length];
  v10 = [stringCopy length];

  return v9 - length + v10 <= *MEMORY[0x1E69A7030];
}

- (CKDetailsAddGroupNameViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end