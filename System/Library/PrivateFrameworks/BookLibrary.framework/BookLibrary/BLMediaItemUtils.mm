@interface BLMediaItemUtils
+ (id)hlsOfflinePlaybackKeysForItem:(id)item;
+ (unint64_t)bitrateForItem:(id)item;
+ (void)addPersistHLSOfflinePlaybackKey:(id)key forUri:(id)uri toItem:(id)item;
+ (void)clearPersistHLSOfflinePlaybackKeysFromItem:(id)item;
+ (void)removePersistHLSOfflinePlaybackKeyForUri:(id)uri fromItem:(id)item;
+ (void)setBitrate:(unint64_t)bitrate forItem:(id)item;
@end

@implementation BLMediaItemUtils

+ (id)hlsOfflinePlaybackKeysForItem:(id)item
{
  v24[3] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  v4 = sub_241D11FB4();
  v6 = objc_msgSend_valueForProperty_(itemCopy, v5, v4);

  v7 = BUDynamicCast();

  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v24, 3);
  objc_opt_class();
  v10 = MEMORY[0x277CCAAC8];
  v12 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v11, v9);
  v21 = 0;
  v14 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v10, v13, v12, v7, &v21);
  v15 = v21;
  v16 = BUDynamicCast();

  if (objc_msgSend_length(v7, v17, v18) && v15)
  {
    v19 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_241D0D000, v19, OS_LOG_TYPE_ERROR, "Key Unarchive Error:  %@", buf, 0xCu);
    }
  }

  return v16;
}

+ (unint64_t)bitrateForItem:(id)item
{
  itemCopy = item;
  v4 = sub_241D11E44();
  v6 = objc_msgSend_valueForProperty_(itemCopy, v5, v4);

  v9 = objc_msgSend_unsignedIntegerValue(v6, v7, v8);
  return v9;
}

+ (void)setBitrate:(unint64_t)bitrate forItem:(id)item
{
  v5 = MEMORY[0x277CCABB0];
  itemCopy = item;
  v10 = objc_msgSend_numberWithUnsignedInteger_(v5, v7, bitrate);
  v8 = sub_241D11E44();
  objc_msgSend_setValue_forProperty_(itemCopy, v9, v10, v8);
}

+ (void)addPersistHLSOfflinePlaybackKey:(id)key forUri:(id)uri toItem:(id)item
{
  v38 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  uriCopy = uri;
  itemCopy = item;
  v12 = objc_msgSend_hlsOfflinePlaybackKeysForItem_(self, v11, itemCopy);
  v15 = objc_msgSend_mutableCopy(v12, v13, v14);

  if (!v15)
  {
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v16, v17);
  }

  objc_msgSend_setObject_forKey_(v15, v16, keyCopy, uriCopy);
  v33 = 0;
  v19 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v18, v15, 1, &v33);
  v20 = v33;
  v21 = BLHLSKeyFetchingLog();
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = sub_241D12404();
      v25 = objc_msgSend_valueForProperty_(itemCopy, v24, v23);
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = v20;
      v26 = "Failed to archive keys for %{public}@. Key Archive Error:  %@";
      v27 = v22;
      v28 = OS_LOG_TYPE_ERROR;
      v29 = 22;
LABEL_8:
      _os_log_impl(&dword_241D0D000, v27, v28, v26, buf, v29);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = sub_241D12404();
    v25 = objc_msgSend_valueForProperty_(itemCopy, v30, v23);
    *buf = 138543362;
    v35 = v25;
    v26 = "Archived keys for %{public}@";
    v27 = v22;
    v28 = OS_LOG_TYPE_DEFAULT;
    v29 = 12;
    goto LABEL_8;
  }

  v31 = sub_241D11FB4();
  objc_msgSend_setValue_forProperty_(itemCopy, v32, v19, v31);
}

+ (void)removePersistHLSOfflinePlaybackKeyForUri:(id)uri fromItem:(id)item
{
  v23 = *MEMORY[0x277D85DE8];
  uriCopy = uri;
  itemCopy = item;
  v9 = objc_msgSend_hlsOfflinePlaybackKeysForItem_(self, v8, itemCopy);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);

  if (v12)
  {
    objc_msgSend_removeObjectForKey_(v12, v13, uriCopy);
    v20 = 0;
    v15 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v14, v12, 1, &v20);
    v16 = v20;
    if (v16)
    {
      v17 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&dword_241D0D000, v17, OS_LOG_TYPE_ERROR, "Key Archive Error:  %@", buf, 0xCu);
      }
    }

    v18 = sub_241D11FB4();
    objc_msgSend_setValue_forProperty_(itemCopy, v19, v15, v18);
  }
}

+ (void)clearPersistHLSOfflinePlaybackKeysFromItem:(id)item
{
  itemCopy = item;
  v5 = sub_241D11FB4();
  objc_msgSend_setValue_forProperty_(itemCopy, v4, 0, v5);
}

@end