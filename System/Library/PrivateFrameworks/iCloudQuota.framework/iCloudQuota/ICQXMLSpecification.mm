@interface ICQXMLSpecification
@end

@implementation ICQXMLSpecification

void __62___ICQXMLSpecification_placeholderReplacementsWithDeviceInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(v6);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6);
  v9 = [v8 isEqualToString:@"com.apple.quota.photoLibrary"];

  if (v9)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v7);
    v12 = [ICQOfferManager stringWithPlaceholderFormat:v10 alternateString:v11];
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v5];

    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32));
      *buf = 138412546;
      v41 = v5;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "photos substitution used for placeholdeer string %@, replacement: %@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    goto LABEL_7;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(v6);
  if (v15)
  {
    v16 = v15;
    v13 = [_ICQDeviceInfo getInfoWithBundleId:v15];

LABEL_7:
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v13 key];
      v19 = [v13 wordsToReplace];
      *buf = 138412546;
      v41 = v18;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "key = %@  wordsToReplace = %@", buf, 0x16u);
    }

    v20 = [v13 key];
    v34 = v7;
    v21 = [_ICQHelperFunctions stringFromTemplates:v7 key:v20];

    v22 = [v13 wordsToReplace];
    v33 = v21;
    v23 = [_ICQHelperFunctions replaceWordsIn:v21 with:v22];
    [*(a1 + 32) setObject:v23 forKeyedSubscript:v5];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = [v13 wordsToReplace];
    v25 = [v24 allKeys];

    v26 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        v29 = 0;
        v30 = v5;
        do
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v5 = *(*(&v35 + 1) + 8 * v29);

          v31 = [v13 wordsToReplace];
          v32 = objc_msgSend_objectForKeyedSubscript_(v31);
          [*(a1 + 32) setObject:v32 forKeyedSubscript:v5];

          ++v29;
          v30 = v5;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v27);
    }

    v5 = 0;
    v7 = v34;
    goto LABEL_17;
  }

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "placeHolderDict is missing 'appID'", buf, 2u);
  }

LABEL_17:
}

@end