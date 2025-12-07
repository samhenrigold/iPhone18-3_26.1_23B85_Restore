@interface APTapAction
- (APTapAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APTapAction

- (APTapAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = APTapAction;
  v6 = [(APTapAction *)&v30 init];
  if (v6)
  {
    v6->_actionType = objc_msgSend_decodeIntForKey_(coderCopy, v5, @"actionType");
    v9 = objc_msgSend_classForCoder(MEMORY[0x1E695DFF8], v7, v8);
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v10, v9, @"actionURL");
    actionURL = v6->_actionURL;
    v6->_actionURL = v11;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v13, @"confirmedClickInterval");
    v6->_confirmedClickInterval = v14;
    v6->_opensInstalledApp = objc_msgSend_decodeBoolForKey_(coderCopy, v15, @"kOpensInstalledAppKey");
    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"kAdamIdentifier");
    adamIdentifier = v6->_adamIdentifier;
    v6->_adamIdentifier = v18;

    v6->_templateType = objc_msgSend_decodeIntForKey_(coderCopy, v20, @"kTemplateTypeKey");
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v25 = objc_msgSend_setWithObjects_(v21, v24, v22, v23, 0);
    v27 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v26, v25, @"kiTunesMetadata");
    iTunesMetadata = v6->_iTunesMetadata;
    v6->_iTunesMetadata = v27;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeInt_forKey_(coderCopy, v4, LODWORD(self->_actionType), @"actionType");
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_actionURL, @"actionURL");
  objc_msgSend_encodeDouble_forKey_(coderCopy, v6, @"confirmedClickInterval", self->_confirmedClickInterval);
  objc_msgSend_encodeBool_forKey_(coderCopy, v7, self->_opensInstalledApp, @"kOpensInstalledAppKey");
  v10 = objc_msgSend_adamIdentifier(self, v8, v9);

  if (v10)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->_adamIdentifier, @"kAdamIdentifier");
  }

  objc_msgSend_encodeInt_forKey_(coderCopy, v11, LODWORD(self->_templateType), @"kTemplateTypeKey");
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, self->_iTunesMetadata, @"kiTunesMetadata");
}

@end