@interface DenyList
- (BOOL)checkIfCaptionInDenylist:(id)denylist;
@end

@implementation DenyList

- (BOOL)checkIfCaptionInDenylist:(id)denylist
{
  v36 = *MEMORY[0x1E69E9840];
  denylistCopy = denylist;
  v9 = objc_msgSend_denyListRules(self, v5, v6, v7, v8);
  v14 = objc_msgSend_count(v9, v10, v11, v12, v13);

  if (v14)
  {
    v19 = objc_msgSend_length(denylistCopy, v15, v16, v17, v18);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = objc_msgSend_denyListRules(self, v20, v21, v22, v23, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v31, v35, 16);
    if (v27)
    {
      v28 = *v32;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v24);
          }

          if (objc_msgSend_rangeOfFirstMatchInString_options_range_(*(*(&v31 + 1) + 8 * i), v26, denylistCopy, 0, 0, v19) != 0x7FFFFFFFFFFFFFFFLL)
          {
            LOBYTE(v14) = 1;
            goto LABEL_12;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v31, v35, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v14) = 0;
LABEL_12:
  }

  return v14;
}

@end