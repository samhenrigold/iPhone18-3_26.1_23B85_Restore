@interface DOMHTMLInputElement(UITextInputAdditions)
- (id)textInputTraits;
- (uint64_t)isEditing;
- (uint64_t)isSecure;
- (uint64_t)isTextControl;
- (uint64_t)keyboardType;
- (uint64_t)setSelectionWithPoint:()UITextInputAdditions;
- (uint64_t)text;
@end

@implementation DOMHTMLInputElement(UITextInputAdditions)

- (id)textInputTraits
{
  v17.receiver = self;
  v17.super_class = &off_1F01259E0;
  v2 = objc_msgSendSuper2(&v17, sel_textInputTraits);
  form = [self form];
  type = [self type];
  if (!form)
  {
    goto LABEL_13;
  }

  if ([form action])
  {
    if ((objc_msgSend_isEqual_(type) & 1) == 0 && [objc_msgSend(self "name")] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(objc_msgSend(self, "idName"), "rangeOfString:options:", @"search", 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([objc_msgSend(self "title")] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 1;
      }

      else
      {
        v5 = 6;
      }
    }

    else
    {
      v5 = 6;
    }

    [v2 setReturnKeyType:v5];
  }

  if ([form action])
  {
    v6 = [objc_msgSend(form "action")] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

  if (objc_msgSend_isEqualToString_(type))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(type);
  }

  isSecure = [self isSecure];
  LODWORD(v9) = [self _autocapitalizeType] - 1;
  if (v9 >= 4)
  {
    v9 = 2;
  }

  else
  {
    v9 = v9;
  }

  v10 = isSecure | v6 | isEqualToString;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  [v2 setAutocapitalizationType:v11];
  v12 = [self autocorrect] & ~v10;
  v13 = 1;
  if (v12)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v2 setAutocorrectionType:v14];
  [v2 setTextSuggestionDelegate:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(self, "ownerDocument"), "webFrame"), "webView"), "_formDelegate")}];
  [v2 setTextContentType:{objc_msgSend(self, "getAttribute:", @"autocomplete"}];
  v15 = [self getAttribute:@"inputmode"];
  if (([v15 hasPrefix:@"latin"] & 1) == 0)
  {
    if ([v15 hasPrefix:@"full-width-latin"])
    {
      v13 = 2;
    }

    else if ([v15 hasPrefix:@"kana"])
    {
      v13 = 3;
    }

    else if ([v15 hasPrefix:@"katakana"])
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }
  }

  [v2 setTextScriptType:v13];
  return v2;
}

- (uint64_t)text
{
  WebThreadLock();

  return [self value];
}

- (uint64_t)isSecure
{
  WebThreadLock();
  type = [self type];

  return objc_msgSend_isEqual_(type);
}

- (uint64_t)isTextControl
{
  WebThreadLock();

  return [self _isTextField];
}

- (uint64_t)keyboardType
{
  WebThreadLock();
  type = [self type];
  v4 = [self getAttribute:@"pattern"];
  if (v4)
  {
    v5 = v4;
    if (objc_msgSend_isEqualToString_(v4) & 1) != 0 || (objc_msgSend_isEqualToString_(v5))
    {
      return 4;
    }
  }

  if (objc_msgSend_isEqualToString_(type))
  {
    return 7;
  }

  if (objc_msgSend_isEqualToString_(type))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(type))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(type))
  {
    return 3;
  }

  return 0;
}

- (uint64_t)setSelectionWithPoint:()UITextInputAdditions
{
  WebThreadLock();
  v7 = vcvtd_n_f64_s32([objc_msgSend(objc_msgSend(self "ownerDocument")], 1uLL);

  return [self setSelectionWithPoint:a3 inset:{a4, v7}];
}

- (uint64_t)isEditing
{
  WebThreadLock();

  return [self isFocused];
}

@end