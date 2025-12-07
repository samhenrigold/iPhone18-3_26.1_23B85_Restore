@interface FTReInitiateMessage
- (FTReInitiateMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTReInitiateMessage

- (FTReInitiateMessage)init
{
  v10.receiver = self;
  v10.super_class = FTReInitiateMessage;
  v2 = [(FTFaceTimeMessage *)&v10 init];
  v8 = v2;
  if (v2)
  {
    v7.n128_u64[0] = 0x4041800000000000;
    objc_msgSend_setTimeout_(v2, v3, v4, v5, v7, v6);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTReInitiateMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTReInitiateMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v30.receiver = self;
  v30.super_class = FTReInitiateMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v30 requiredKeys];
  v8 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v7, v6);
  objc_msgSend_addObject_(v8, v9, @"self-push-token", v10, v12, v11);
  objc_msgSend_addObject_(v8, v13, @"self-blob", v14, v16, v15);
  objc_msgSend_addObject_(v8, v17, @"self-nat-ip", v18, v20, v19);
  objc_msgSend_addObject_(v8, v21, @"self-nat-type", v22, v24, v23);
  objc_msgSend_addObject_(v8, v25, @"peers", v26, v28, v27);
  return v8;
}

- (id)messageBody
{
  v65.receiver = self;
  v65.super_class = FTReInitiateMessage;
  messageBody = [(FTFaceTimeMessage *)&v65 messageBody];
  v9 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v8, v7);
  v15 = objc_msgSend_regionInformation(self, v10, v11, v12, v14, v13);
  if (v15)
  {
    CFDictionarySetValue(v9, @"service-data", v15);
  }

  v21 = objc_msgSend_clientInfo(self, v16, v17, v18, v20, v19);
  if (v21)
  {
    CFDictionarySetValue(v9, @"client-data", v21);
  }

  v27 = objc_msgSend_selfPushToken(self, v22, v23, v24, v26, v25);
  if (v27)
  {
    CFDictionarySetValue(v9, @"self-push-token", v27);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF934();
  }

  v33 = objc_msgSend_selfBlob(self, v28, v29, v30, v32, v31);
  if (v33)
  {
    CFDictionarySetValue(v9, @"self-blob", v33);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFA44();
  }

  v39 = objc_msgSend_selfNatIP(self, v34, v35, v36, v38, v37);
  if (v39)
  {
    CFDictionarySetValue(v9, @"self-nat-ip", v39);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFACC();
  }

  v45 = MEMORY[0x277CCABB0];
  v46 = objc_msgSend_selfNATType(self, v40, v41, v42, v44, v43);
  v52 = objc_msgSend_intValue(v46, v47, v48, v49, v51, v50);
  v57 = objc_msgSend_numberWithInt_(v45, v53, v52, v54, v56, v55);
  if (v57)
  {
    CFDictionarySetValue(v9, @"self-nat-type", v57);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF9BC();
  }

  v63 = objc_msgSend_peers(self, v58, v59, v60, v62, v61);
  if (v63)
  {
    CFDictionarySetValue(v9, @"peers", v63);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFF34();
  }

  return v9;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v8 = objc_msgSend_objectForKey_(dictionary, a2, @"session-token", v3, v5, v4);
  if (v8)
  {
    objc_msgSend_setSessionToken_(self, v9, v8, v10, v12, v11);
  }

  v13 = objc_msgSend_objectForKey_(dictionary, v9, @"peers", v10, v12, v11);
  if (v13)
  {
    objc_msgSend_setCanonicalizedPeers_(self, v14, v13, v15, v17, v16);
  }

  v18 = objc_msgSend_objectForKey_(dictionary, v14, @"alert", v15, v17, v16);

  MEMORY[0x2821F9670](self, sel_setResponseAlertInfo_, v18, v19, v20);
}

@end