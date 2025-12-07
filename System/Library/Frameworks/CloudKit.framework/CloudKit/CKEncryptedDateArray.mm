@interface CKEncryptedDateArray
- (CKEncryptedDateArray)initWithDateArray:(id)array;
- (NSArray)dateArray;
@end

@implementation CKEncryptedDateArray

- (CKEncryptedDateArray)initWithDateArray:(id)array
{
  v31 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = objc_alloc_init(CKDPRecordFieldValueEncryptedValue);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = arrayCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = objc_alloc_init(CKDPDate);
        objc_msgSend_timeIntervalSinceReferenceDate(v12, v14, v15);
        objc_msgSend_setTime_(v13, v16, v17);
        objc_msgSend_addDateListValue_(v5, v18, v13);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v19, &v26, v30, 16);
    }

    while (v9);
  }

  v22 = objc_msgSend_data(v5, v20, v21);
  v25.receiver = self;
  v25.super_class = CKEncryptedDateArray;
  v23 = [(CKEncryptedData *)&v25 initWithData:v22];

  return v23;
}

- (NSArray)dateArray
{
  v3 = objc_msgSend_data(self, a2, v2);
  if (v3)
  {
    v4 = [CKDPRecordFieldValueEncryptedValue alloc];
    v6 = objc_msgSend_initWithData_(v4, v5, v3);
    v9 = objc_msgSend_dateListValues(v6, v7, v8);
    v11 = objc_msgSend_CKMap_(v9, v10, &unk_1EFA2EBA8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end