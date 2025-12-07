@interface ANSTActionDetectorResult
+ (id)new;
- (ANSTActionDetectorResult)init;
- (ANSTActionDetectorResult)initWithActions:(id)actions;
- (ANSTActionDetectorResult)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSTActionDetectorResult

- (ANSTActionDetectorResult)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTActionDetectorResult)initWithActions:(id)actions
{
  actionsCopy = actions;
  v11.receiver = self;
  v11.super_class = ANSTActionDetectorResult;
  _init = [(ANSTResult *)&v11 _init];
  if (_init)
  {
    v8 = objc_msgSend_copy(actionsCopy, v5, v6);
    actions = _init->_actions;
    _init->_actions = v8;
  }

  return _init;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqualToArray = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_actions(equalCopy, v5, v6);
      isEqualToArray = objc_msgSend_isEqualToArray_(v7, v8, self->_actions);
    }

    else
    {
      isEqualToArray = 0;
    }
  }

  return isEqualToArray;
}

- (unint64_t)hash
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_actions;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v4)
  {
    v7 = v4;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v8 = objc_msgSend_hash(*(*(&v12 + 1) + 8 * i), v5, v6, v12) - v8 + 32 * v8;
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v12, v16, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  actions = self->_actions;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_actions);
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, actions, v6);
}

- (ANSTActionDetectorResult)initWithCoder:(id)coder
{
  v23[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
  v10 = NSStringFromSelector(sel_actions);
  v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v11, v9, v10);

  if (v12)
  {
    self = objc_msgSend_initWithActions_(self, v13, v12);
    selfCopy = self;
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA050];
    v22 = *MEMORY[0x277CCA068];
    v23[0] = @"actions was not encoded.";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v23, &v22, 1);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, v16, 4865, v17);
    objc_msgSend_failWithError_(coderCopy, v20, v19);

    selfCopy = 0;
  }

  return selfCopy;
}

@end