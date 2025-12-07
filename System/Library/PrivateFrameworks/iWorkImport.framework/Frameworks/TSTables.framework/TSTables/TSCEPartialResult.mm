@interface TSCEPartialResult
- (TSCEPartialResult)initWithValue:(id)value childArgs:(const void *)args;
- (TSCEPartialResult)initWithValue:(id)value numArgs:(unsigned int)args offset:(unsigned int)offset;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCEPartialResult

- (TSCEPartialResult)initWithValue:(id)value numArgs:(unsigned int)args offset:(unsigned int)offset
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = TSCEPartialResult;
  v10 = [(TSCEPartialResult *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, value);
    v11->_numArgs = args;
    children = v11->_children;
    v11->_parent = 0;
    v11->_children = 0;

    v11->_wasModified = 0;
    v11->_offset = offset;
  }

  return v11;
}

- (TSCEPartialResult)initWithValue:(id)value childArgs:(const void *)args
{
  valueCopy = value;
  v8 = objc_msgSend_initWithValue_numArgs_(self, v7, valueCopy, (*(args + 1) - *args) >> 3);
  if (v8)
  {
    v9 = *args;
    v10 = *(args + 1);
    if (*args != v10)
    {
      v11 = objc_opt_new();
      children = v8->_children;
      v8->_children = v11;

      v9 = *args;
      v10 = *(args + 1);
    }

    for (; v9 != v10; ++v9)
    {
      v15 = *v9;
      if (!v15)
      {
        v16 = [TSCEPartialResult alloc];
        v20 = objc_msgSend_nilValue(TSCENilValue, v17, v18, v19);
        v15 = objc_msgSend_initWithValue_(v16, v21, v20, v22);
      }

      objc_msgSend_setParent_(v15, v13, v8, v14);
      objc_msgSend_addObject_(v8->_children, v23, v15, v24);
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [TSCEPartialResult alloc];
  v6 = objc_msgSend_initWithValue_numArgs_(v4, v5, self->_value, self->_numArgs);
  *(v6 + 40) = self->_wasModified;
  *(v6 + 8) = self->_parent;
  *(v6 + 36) = self->_offset;
  children = self->_children;
  if (children)
  {
    v8 = objc_opt_new();
    v9 = *(v6 + 16);
    *(v6 + 16) = v8;

    children = self->_children;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = children;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  if (v15)
  {
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_copy(*(*(&v24 + 1) + 8 * v17), v12, v13, v14, v24);
        objc_msgSend_setParent_(v18, v19, v6, v20);
        objc_msgSend_addObject_(*(v6 + 16), v21, v18, v22);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v24, v28, 16);
    }

    while (v15);
  }

  return v6;
}

@end