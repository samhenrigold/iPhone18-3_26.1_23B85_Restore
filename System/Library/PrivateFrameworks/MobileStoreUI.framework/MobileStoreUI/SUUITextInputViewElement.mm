@interface SUUITextInputViewElement
+ (BOOL)isTextInputType:(id)type;
+ (id)supportedFeatures;
- (SUUITextInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUITextInputViewElement

- (SUUITextInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SUUITextInputViewElement;
  v9 = [(SUUIInputViewElement *)&v18 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = [elementCopy getAttribute:@"type"];
  if (objc_msgSend_isEqualToString_(v10))
  {
    v11 = 7;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v10))
    {
      v9->_keyboardType = 0;
      goto LABEL_8;
    }

    v11 = 4;
  }

  v9->_keyboardType = v11;
LABEL_8:
  v12 = [elementCopy getAttribute:@"maxlength"];
  v13 = v12;
  if (v12)
  {
    v9->_maximumLength = [v12 integerValue];
  }

  v14 = [elementCopy getAttribute:@"secure"];
  v15 = v14;
  if (v14)
  {
    v9->_secure = [v14 BOOLValue];
  }

  else if (objc_msgSend_isEqualToString_(v10))
  {
    v9->_secure = 1;
  }

  v16 = [elementCopy getAttribute:@"placeholdertext"];
  if (v16)
  {
    objc_storeStrong(&v9->_placeholderText, v16);
  }

LABEL_17:
  return v9;
}

+ (BOOL)isTextInputType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(typeCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(typeCopy))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(typeCopy);
  }

  return isEqualToString;
}

+ (id)supportedFeatures
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x286AFD9C0;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUITextInputViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_keyboardType = [(SUUITextInputViewElement *)elementCopy keyboardType];
    self->_maximumLength = [(SUUITextInputViewElement *)elementCopy maximumLength];
  }

  return v6;
}

@end