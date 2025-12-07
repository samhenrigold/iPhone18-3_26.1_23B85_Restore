@interface APTargetingCriteria
- (APTargetingCriteria)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APTargetingCriteria

- (APTargetingCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = APTargetingCriteria;
  v7 = [(APTargetingCriteria *)&v21 init];
  if (v7)
  {
    v8 = objc_msgSend_classForCoder(MEMORY[0x1E696AEC0], v5, v6);
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"identifier");
    identifier = v7->_identifier;
    v7->_identifier = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v16 = objc_msgSend_setWithObjects_(v12, v15, v13, v14, 0);
    v18 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v17, v16, @"values");
    values = v7->_values;
    v7->_values = v18;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, identifier, @"identifier");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_values, @"values");
}

@end