@interface IMDIndexingUtilities
+ (BOOL)canDonateItemDictionary:(id)dictionary;
+ (BOOL)isItemGroupPhoto:(id)photo;
+ (void)copyIndexableMessageDictionariesWithLimit:(int64_t)limit requireIndexableAttachments:(BOOL)attachments isIndexableBlock:(id)block completionHandler:(id)handler;
@end

@implementation IMDIndexingUtilities

+ (BOOL)isItemGroupPhoto:(id)photo
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_objectForKeyedSubscript_(photo, a2, @"attachments", v3);
  if (objc_msgSend_count(v4, v5, v6, v7) == 1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v24;
      v15 = *MEMORY[0x1E69A7018];
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v17 = objc_msgSend_objectForKeyedSubscript_(*(*(&v23 + 1) + 8 * i), v11, @"name", v12, v23);
          isEqualToString = objc_msgSend_isEqualToString_(v17, v18, v15, v19);

          if (isEqualToString)
          {
            v21 = 1;
            goto LABEL_13;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v23, v27, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_13:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (BOOL)canDonateItemDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = objc_msgSend_objectForKey_(dictionaryCopy, v4, @"associatedMessageType", v5);
  v10 = v6;
  if (v6)
  {
    v11 = objc_msgSend_integerValue(v6, v7, v8, v9);
    v12 = 1;
    if (v11)
    {
      v13 = v11;
      if ((v11 & 0xFFFFFFFFFFFFFFF8) != 0x7D0)
      {
        v14 = IMLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v17 = objc_msgSend_objectForKey_(dictionaryCopy, v15, @"guid", v16);
          v19 = 136315650;
          v20 = "+[IMDIndexingUtilities canDonateItemDictionary:]";
          v21 = 2112;
          v22 = v17;
          v23 = 2048;
          v24 = v13;
          _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "%s GUID %@ is of type %ld, not indexing", &v19, 0x20u);
        }

        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (void)copyIndexableMessageDictionariesWithLimit:(int64_t)limit requireIndexableAttachments:(BOOL)attachments isIndexableBlock:(id)block completionHandler:(id)handler
{
  attachmentsCopy = attachments;
  blockCopy = block;
  handlerCopy = handler;
  v11 = objc_alloc_init(IMDMessageRecordBatchFetcher);
  v12 = [IMDThreadSafeMessageDictionaryMapper alloc];
  v15 = objc_msgSend_initWithBatchFetcher_(v12, v13, v11, v14);
  objc_msgSend_setRequiresAttachments_(v15, v16, attachmentsCopy, v17);
  v20 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v18, limit, v19);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BCA494;
  aBlock[3] = &unk_1E7CBC360;
  v31 = attachmentsCopy;
  v21 = blockCopy;
  v30 = v21;
  v22 = v20;
  v29 = v22;
  v25 = _Block_copy(aBlock);
    ;
  }

  v27 = objc_msgSend_copy(v22, v23, v26, v24);
  handlerCopy[2](handlerCopy, v27);
}

@end