@interface FTRejectMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
@end

@implementation FTRejectMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTRejectMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTRejectMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v26.receiver = self;
  v26.super_class = FTRejectMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v26 requiredKeys];
  v8 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v7, v6);
  objc_msgSend_addObject_(v8, v9, @"peer-id", v10, v12, v11);
  objc_msgSend_addObject_(v8, v13, @"self-push-token", v14, v16, v15);
  objc_msgSend_addObject_(v8, v17, @"peer-push-token", v18, v20, v19);
  objc_msgSend_addObject_(v8, v21, @"reason", v22, v24, v23);
  return v8;
}

- (id)messageBody
{
  v47.receiver = self;
  v47.super_class = FTRejectMessage;
  messageBody = [(FTFaceTimeMessage *)&v47 messageBody];
  v9 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v8, v7);
  v15 = objc_msgSend_peerID(self, v10, v11, v12, v14, v13);
  if (v15)
  {
    CFDictionarySetValue(v9, @"peer-id", v15);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFB54();
  }

  v21 = objc_msgSend_selfPushToken(self, v16, v17, v18, v20, v19);
  if (v21)
  {
    CFDictionarySetValue(v9, @"self-push-token", v21);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF934();
  }

  v27 = objc_msgSend_peerPushToken(self, v22, v23, v24, v26, v25);
  if (v27)
  {
    CFDictionarySetValue(v9, @"peer-push-token", v27);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFBDC();
  }

  v33 = MEMORY[0x277CCABB0];
  v34 = objc_msgSend_reason(self, v28, v29, v30, v32, v31);
  v40 = objc_msgSend_intValue(v34, v35, v36, v37, v39, v38);
  v45 = objc_msgSend_numberWithInt_(v33, v41, v40, v42, v44, v43);
  if (v45)
  {
    CFDictionarySetValue(v9, @"reason", v45);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFFBC();
  }

  return v9;
}

@end