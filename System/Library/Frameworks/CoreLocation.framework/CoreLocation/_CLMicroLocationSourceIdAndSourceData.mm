@interface _CLMicroLocationSourceIdAndSourceData
- (_CLMicroLocationSourceIdAndSourceData)initWithCoder:(id)coder;
- (_CLMicroLocationSourceIdAndSourceData)initWithSourceIdsIdentifier:(id)identifier sourceData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLMicroLocationSourceIdAndSourceData

- (_CLMicroLocationSourceIdAndSourceData)initWithSourceIdsIdentifier:(id)identifier sourceData:(id)data
{
  v14.receiver = self;
  v14.super_class = _CLMicroLocationSourceIdAndSourceData;
  v9 = [(_CLMicroLocationSourceIdAndSourceData *)&v14 init];
  if (v9)
  {
    v9->_sourceIdsIdentifier = objc_msgSend_copy(identifier, v6, v7, v8);
    v9->_sourceData = objc_msgSend_copy(data, v10, v11, v12);
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLMicroLocationSourceIdAndSourceData;
  [(_CLMicroLocationSourceIdAndSourceData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_sourceIdsIdentifier(self, v9, v10, v11);
  v15 = objc_msgSend_copyWithZone_(v12, v13, zone, v14);
  v19 = objc_msgSend_sourceData(self, v16, v17, v18);
  v23 = objc_msgSend_copyWithZone_(v19, v20, zone, v21);

  return objc_msgSend_initWithSourceIdsIdentifier_sourceData_(v8, v22, v15, v23);
}

- (_CLMicroLocationSourceIdAndSourceData)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = _CLMicroLocationSourceIdAndSourceData;
  v4 = [(_CLMicroLocationSourceIdAndSourceData *)&v15 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_sourceIdsIdentifier = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"sourceId");
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v10, v8, v11, v9, 0);
    v4->_sourceData = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v13, v12, @"sourceData");
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_sourceIdsIdentifier, @"sourceId");
  sourceData = self->_sourceData;

  objc_msgSend_encodeObject_forKey_(coder, v5, sourceData, @"sourceData");
}

- (id)description
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"sourceIdentifier: %@\n", v2, self->_sourceIdsIdentifier);
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = objc_msgSend_sourceData(self, v6, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_msgSend_description(*(*(&v26 + 1) + 8 * v17), v12, v13, v14);
        v22 = objc_msgSend_stringWithFormat_(v18, v20, @"\t%@\n", v21, v19);
        objc_msgSend_appendString_(v5, v23, v22, v24);
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v26, v30, 16);
    }

    while (v15);
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"%@%@", v14, v4, v5);
}

@end