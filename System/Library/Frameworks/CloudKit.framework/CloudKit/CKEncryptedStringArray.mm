@interface CKEncryptedStringArray
- (CKEncryptedStringArray)initWithStringArray:(id)array;
- (NSArray)stringArray;
@end

@implementation CKEncryptedStringArray

- (NSArray)stringArray
{
  v3 = objc_msgSend_data(self, a2, v2);
  if (v3)
  {
    v4 = [CKDPRecordFieldValueEncryptedValue alloc];
    v6 = objc_msgSend_initWithData_(v4, v5, v3);
    v9 = objc_msgSend_stringListValues(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CKEncryptedStringArray)initWithStringArray:(id)array
{
  v29 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  objc_msgSend_setStringListValues_(v5, v7, v6);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = arrayCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_copy(*(*(&v24 + 1) + 8 * v15), v11, v12);
        objc_msgSend_addStringListValue_(v5, v17, v16);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v24, v28, 16);
    }

    while (v13);
  }

  v20 = objc_msgSend_data(v5, v18, v19);
  v23.receiver = self;
  v23.super_class = CKEncryptedStringArray;
  v21 = [(CKEncryptedData *)&v23 initWithData:v20];

  return v21;
}

@end