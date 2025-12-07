@interface CLFindMyAccessoryFragmentAccumulator
+ (id)convertDataStatusToString:(unint64_t)string;
- (BOOL)appendData:(id)data forUUID:(id)d;
- (BOOL)clearForUUID:(id)d;
- (CLFindMyAccessoryFragmentAccumulator)initWithMaxBytesPerUUID:(unint64_t)d;
- (unint64_t)getDataStatusForUUID:(id)d;
- (void)dealloc;
@end

@implementation CLFindMyAccessoryFragmentAccumulator

- (CLFindMyAccessoryFragmentAccumulator)initWithMaxBytesPerUUID:(unint64_t)d
{
  v6.receiver = self;
  v6.super_class = CLFindMyAccessoryFragmentAccumulator;
  v4 = [(CLFindMyAccessoryFragmentAccumulator *)&v6 init];
  if (v4)
  {
    v4->_uuidToData = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_maxBytesPerUUID = d;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryFragmentAccumulator;
  [(CLFindMyAccessoryFragmentAccumulator *)&v3 dealloc];
}

- (BOOL)clearForUUID:(id)d
{
  if (d)
  {
    objc_msgSend_removeObjectForKey_(self->_uuidToData, a2, d, v3);
  }

  return d != 0;
}

- (unint64_t)getDataStatusForUUID:(id)d
{
  if (!d)
  {
    return 0;
  }

  result = objc_msgSend_objectForKeyedSubscript_(self->_uuidToData, a2, d, v3);
  if (result)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(self->_uuidToData, v7, d, v8);
    if (objc_msgSend_length(v9, v10, v11, v12) < self->_maxBytesPerUUID)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (BOOL)appendData:(id)data forUUID:(id)d
{
  if (data)
  {
    v4 = d == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    dataCopy = data;
    if (!objc_msgSend_objectForKeyedSubscript_(self->_uuidToData, a2, d, d))
    {
      v12 = objc_msgSend_data(MEMORY[0x1E695DF88], v9, v10, v11);
      objc_msgSend_setObject_forKeyedSubscript_(self->_uuidToData, v13, v12, d);
    }

    if (objc_msgSend_length(dataCopy, v9, v10, v11) >= self->_maxBytesPerUUID)
    {
      v47 = objc_msgSend_length(dataCopy, v14, v15, v16);
      dataCopy = objc_msgSend_subdataWithRange_(dataCopy, v48, v47 - self->_maxBytesPerUUID, self->_maxBytesPerUUID);
      v45 = objc_msgSend_data(MEMORY[0x1E695DF88], v49, v50, v51);
    }

    else
    {
      v17 = objc_msgSend_objectForKeyedSubscript_(self->_uuidToData, v14, d, v16);
      v21 = objc_msgSend_length(v17, v18, v19, v20);
      v28 = objc_msgSend_length(dataCopy, v22, v23, v24) + v21;
      maxBytesPerUUID = self->_maxBytesPerUUID;
      if (v28 <= maxBytesPerUUID)
      {
LABEL_15:
        v52 = objc_msgSend_objectForKeyedSubscript_(self->_uuidToData, v25, d, v27);
        objc_msgSend_appendData_(v52, v53, dataCopy, v54);
        return v5;
      }

      v30 = maxBytesPerUUID - objc_msgSend_length(dataCopy, v25, v26, v27);
      v33 = objc_msgSend_objectForKeyedSubscript_(self->_uuidToData, v31, d, v32);
      v36 = objc_msgSend_objectForKeyedSubscript_(self->_uuidToData, v34, d, v35);
      v40 = objc_msgSend_length(v36, v37, v38, v39);
      v42 = objc_msgSend_subdataWithRange_(v33, v41, v40 - v30, v30);
      v45 = objc_msgSend_dataWithData_(MEMORY[0x1E695DF88], v43, v42, v44);
    }

    objc_msgSend_setObject_forKeyedSubscript_(self->_uuidToData, v46, v45, d);
    goto LABEL_15;
  }

  return v5;
}

+ (id)convertDataStatusToString:(unint64_t)string
{
  v3 = @"Data does not exist";
  if (string == 1)
  {
    v3 = @"Data is valid";
  }

  if (string == 2)
  {
    return @"Data exceeded maximum buffer size";
  }

  else
  {
    return v3;
  }
}

@end