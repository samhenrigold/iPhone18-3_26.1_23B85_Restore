@interface CurrencyUITextField
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC9PassKitUI19CurrencyUITextField)initWithCoder:(id)coder;
- (_TtC9PassKitUI19CurrencyUITextField)initWithFrame:(CGRect)frame;
- (void)deleteBackward;
- (void)editingChanged;
- (void)resetSelection;
@end

@implementation CurrencyUITextField

- (_TtC9PassKitUI19CurrencyUITextField)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)deleteBackward
{
  selfCopy = self;
  text = [(CurrencyUITextField *)selfCopy text];
  if (text)
  {
    v3 = text;
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = sub_1BD3EBC7C(v4, v6);
  v9 = v8;
  v6, v8, v10, v11, v12, v13, v14, v15;
  v16 = sub_1BD6447CC(1, v7, v9);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v9, v17, v19, v21, v23, v24, v25, v26;
  MEMORY[0x1BFB3F570](v16, v18, v20, v22);
  v28 = v27;
  v22, v27, v29, v30, v31, v32, v33, v34;
  v35 = sub_1BE052404();
  v28, v36, v37, v38, v39, v40, v41, v42;
  [(CurrencyUITextField *)selfCopy setText:v35];

  [(CurrencyUITextField *)selfCopy sendActionsForControlEvents:0x20000];
}

- (void)editingChanged
{
  selfCopy = self;
  sub_1BD643E74();
}

- (void)resetSelection
{
  selfCopy = self;
  endOfDocument = [(CurrencyUITextField *)selfCopy endOfDocument];
  endOfDocument2 = [(CurrencyUITextField *)selfCopy endOfDocument];
  v4 = [(CurrencyUITextField *)selfCopy textRangeFromPosition:endOfDocument toPosition:endOfDocument2];

  [(CurrencyUITextField *)selfCopy setSelectedTextRange:v4];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_1BE052434();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_1BD644240(fieldCopy, location, length, v9, v11);

  v11, v14, v15, v16, v17, v18, v19, v20;
  return length & 1;
}

- (_TtC9PassKitUI19CurrencyUITextField)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end