@interface NTKParmesanImageEditorItem
+ (id)_newLocalIdentifier;
- (NTKParmesanImageEditorItem)initWithImage:(id)image layout:(id)layout;
- (id)description;
@end

@implementation NTKParmesanImageEditorItem

+ (id)_newLocalIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2);
  v7 = objc_msgSend_UUIDString(v4, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"TransientImage-%@", v7);

  return v9;
}

- (NTKParmesanImageEditorItem)initWithImage:(id)image layout:(id)layout
{
  imageCopy = image;
  layoutCopy = layout;
  v16.receiver = self;
  v16.super_class = NTKParmesanImageEditorItem;
  v9 = [(NTKParmesanImageEditorItem *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v13 = objc_msgSend__newLocalIdentifier(v10, v11, v12);
    identifier = v9->_identifier;
    v9->_identifier = v13;

    objc_storeStrong(&v9->_image, image);
    objc_storeStrong(&v9->_layout, layout);
    v9->_canRevert = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@:%p> image = %@, layout = %@, canRevert = %d", v5, self, self->_image, self->_layout, self->_canRevert);

  return v7;
}

@end