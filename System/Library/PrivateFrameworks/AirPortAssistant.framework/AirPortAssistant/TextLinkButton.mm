@interface TextLinkButton
- (TextLinkButton)initWithCoder:(id)coder;
- (TextLinkButton)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)tapAction:(id)action;
@end

@implementation TextLinkButton

- (TextLinkButton)initWithFrame:(CGRect)frame
{
  v44.receiver = self;
  v44.super_class = TextLinkButton;
  v3 = [(TextLinkButton *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_addTarget_action_forControlEvents_(v3, v4, v3, sel_tapAction_, 64);
    v9 = objc_msgSend_systemBlueColor(MEMORY[0x277D75348], v6, v7, v8);
    objc_msgSend_setTitleColor_forState_(v5, v10, v9, 0);
    v14 = objc_msgSend_titleLabel(v5, v11, v12, v13);
    objc_msgSend_setTextAlignment_(v14, v15, 1, v16);
    v20 = objc_msgSend_titleLabel(v5, v17, v18, v19);
    v24 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], v21, v22, v23, 14.0);
    objc_msgSend_setFont_(v20, v25, v24, v26);
    v30 = objc_msgSend_titleLabel(v5, v27, v28, v29);
    objc_msgSend_setLineBreakMode_(v30, v31, 0, v32);
    v36 = objc_msgSend_titleLabel(v5, v33, v34, v35);
    v40 = objc_msgSend_clearColor(MEMORY[0x277D75348], v37, v38, v39);
    objc_msgSend_setBackgroundColor_(v36, v41, v40, v42);
  }

  return v5;
}

- (TextLinkButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TextLinkButton;
  v3 = [(TextLinkButton *)&v7 initWithCoder:coder];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_addTarget_action_forControlEvents_(v3, v4, v3, sel_tapAction_, 64);
  }

  return v5;
}

- (void)dealloc
{
  objc_msgSend_setUrlString_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = TextLinkButton;
  [(TextLinkButton *)&v4 dealloc];
}

- (void)tapAction:(id)action
{
  v5 = objc_msgSend_urlString(self, a2, action, v3);
  if (objc_msgSend_length(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v9, v10, v11);
    v13 = MEMORY[0x277CBEBC0];
    v17 = objc_msgSend_urlString(self, v14, v15, v16);
    v20 = objc_msgSend_URLWithString_(v13, v18, v17, v19);
    if (objc_msgSend_canOpenURL_(v12, v21, v20, v22))
    {
      v26 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v23, v24, v25);

      MEMORY[0x2821F9670](v12, sel_openURL_options_completionHandler_, v20, v26);
    }
  }

  else if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    MEMORY[0x2821F9670](delegate, sel_handleTextLinkTap, v27, v28);
  }
}

@end