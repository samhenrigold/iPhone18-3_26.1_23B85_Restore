@interface VFXProgramSemanticInfo
+ (id)infoWithSemantic:(id)semantic options:(id)options;
- (VFXProgramSemanticInfo)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VFXProgramSemanticInfo

+ (id)infoWithSemantic:(id)semantic options:(id)options
{
  v6 = objc_alloc_init(self);
  objc_msgSend_setSemantic_(v6, v7, semantic);
  objc_msgSend_setOptions_(v6, v8, options);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_msgSend_semantic(self, a2, coder);
  objc_msgSend_encodeObject_forKey_(coder, v6, v5, @"semantic");
  v10 = objc_msgSend_options(self, v7, v8);

  objc_msgSend_encodeObject_forKey_(coder, v9, v10, @"options");
}

- (VFXProgramSemanticInfo)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = VFXProgramSemanticInfo;
  v4 = [(VFXProgramSemanticInfo *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"semantic");
    objc_msgSend_setSemantic_(v4, v8, v7);
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"options");
    objc_msgSend_setOptions_(v4, v12, v11);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXProgramSemanticInfo;
  [(VFXProgramSemanticInfo *)&v3 dealloc];
}

@end