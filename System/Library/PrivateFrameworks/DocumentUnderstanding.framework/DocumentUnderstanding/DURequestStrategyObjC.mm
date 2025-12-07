@interface DURequestStrategyObjC
- (DURequestStrategyObjC)initWithContentType:(id)type preferredModelIdentifier:(id)identifier preprocess:(BOOL)preprocess;
- (void)setContentType:(id)type;
- (void)setModelIdentifier:(id)identifier;
@end

@implementation DURequestStrategyObjC

- (void)setModelIdentifier:(id)identifier
{
  v9 = objc_msgSend_copy(identifier, a2, identifier, v3, v4);
  objc_msgSend_setModelIdentifier_(self->_underlyingStrategy, v6, v9, v7, v8);
}

- (void)setContentType:(id)type
{
  objc_storeStrong(&self->_objCContentType, type);
  typeCopy = type;
  v12 = objc_msgSend_typeForObjCType_(DUObjCCompatibilityUtils, v6, typeCopy, v7, v8);
  objc_msgSend_setContentType_(self->_underlyingStrategy, v9, v12, v10, v11);
}

- (DURequestStrategyObjC)initWithContentType:(id)type preferredModelIdentifier:(id)identifier preprocess:(BOOL)preprocess
{
  preprocessCopy = preprocess;
  typeCopy = type;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = DURequestStrategyObjC;
  v11 = [(DURequestStrategyObjC *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_objCContentType, type);
    v13 = [_TtC21DocumentUnderstanding17DURequestStrategy alloc];
    v17 = objc_msgSend_typeForObjCType_(DUObjCCompatibilityUtils, v14, typeCopy, v15, v16);
    v19 = objc_msgSend_initWithContentType_preferredModelIdentifier_preprocess_(v13, v18, v17, identifierCopy, preprocessCopy);
    underlyingStrategy = v12->_underlyingStrategy;
    v12->_underlyingStrategy = v19;

    v21 = v12;
  }

  return v12;
}

@end