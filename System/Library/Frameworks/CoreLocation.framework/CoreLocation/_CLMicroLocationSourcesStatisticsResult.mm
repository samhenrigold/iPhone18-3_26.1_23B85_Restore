@interface _CLMicroLocationSourcesStatisticsResult
- (_CLMicroLocationSourcesStatisticsResult)initWithCoder:(id)coder;
- (_CLMicroLocationSourcesStatisticsResult)initWithSourcesData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation _CLMicroLocationSourcesStatisticsResult

- (_CLMicroLocationSourcesStatisticsResult)initWithSourcesData:(id)data
{
  v9.receiver = self;
  v9.super_class = _CLMicroLocationSourcesStatisticsResult;
  v7 = [(_CLMicroLocationSourcesStatisticsResult *)&v9 init];
  if (v7)
  {
    v7->_sourcesData = objc_msgSend_copy(data, v4, v5, v6);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLMicroLocationSourcesStatisticsResult;
  [(_CLMicroLocationSourcesStatisticsResult *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_sourcesData(self, v9, v10, v11);
  v16 = objc_msgSend_copyWithZone_(v12, v13, zone, v14);

  return objc_msgSend_initWithSourcesData_(v8, v15, v16, v17);
}

- (_CLMicroLocationSourcesStatisticsResult)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = _CLMicroLocationSourcesStatisticsResult;
  v4 = [(_CLMicroLocationSourcesStatisticsResult *)&v13 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v5, v8, v6, v9, v7, 0);
    v4->_sourcesData = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v11, v10, @"sourcesData");
  }

  return v4;
}

- (id)description
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = objc_msgSend_sourcesData(self, v4, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v28, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = MEMORY[0x1E696AEC0];
        v17 = objc_msgSend_description(*(*(&v24 + 1) + 8 * v15), v10, v11, v12);
        v20 = objc_msgSend_stringWithFormat_(v16, v18, @"%@\n", v19, v17);
        objc_msgSend_appendString_(v3, v21, v20, v22);
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v24, v28, 16);
    }

    while (v13);
  }

  return v3;
}

@end