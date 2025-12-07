@interface APTargetingDimensions
- (APTargetingDimensions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APTargetingDimensions

- (APTargetingDimensions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = APTargetingDimensions;
  v5 = [(APTargetingDimensions *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v11, v10, @"inclusionCriteria");
    inclusionCriteria = v5->_inclusionCriteria;
    v5->_inclusionCriteria = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v18 = objc_msgSend_setWithObjects_(v14, v17, v15, v16, 0);
    v20 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v19, v18, @"exclusionCriteria");
    exclusionCriteria = v5->_exclusionCriteria;
    v5->_exclusionCriteria = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  inclusionCriteria = self->_inclusionCriteria;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, inclusionCriteria, @"inclusionCriteria");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_exclusionCriteria, @"exclusionCriteria");
}

@end