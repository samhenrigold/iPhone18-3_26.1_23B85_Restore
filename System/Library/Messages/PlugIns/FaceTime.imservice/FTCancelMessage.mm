@interface FTCancelMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
@end

@implementation FTCancelMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v26.receiver = self;
  v26.super_class = FTCancelMessage;
  v4 = [(FTFaceTimeMessage *)&v26 copyWithZone:zone];
  v10 = objc_msgSend_peers(self, v5, v6, v7, v9, v8);
  objc_msgSend_setPeers_(v4, v11, v10, v12, v14, v13);
  v20 = objc_msgSend_reason(self, v15, v16, v17, v19, v18);
  objc_msgSend_setReason_(v4, v21, v20, v22, v24, v23);
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTCancelMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v18.receiver = self;
  v18.super_class = FTCancelMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v18 requiredKeys];
  v11 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v7, v6);
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  objc_msgSend_addObject_(v11, v8, @"reason", v9, v12, v10);
  objc_msgSend_addObject_(v11, v13, @"peers", v14, v16, v15);
  return v11;
}

- (id)messageBody
{
  v35.receiver = self;
  v35.super_class = FTCancelMessage;
  messageBody = [(FTFaceTimeMessage *)&v35 messageBody];
  v9 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v8, v7);
  v10 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_reason(self, v11, v12, v13, v15, v14);
  v22 = objc_msgSend_intValue(v16, v17, v18, v19, v21, v20);
  v27 = objc_msgSend_numberWithInt_(v10, v23, v22, v24, v26, v25);
  if (v27)
  {
    CFDictionarySetValue(v9, @"reason", v27);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFDFC();
  }

  v33 = objc_msgSend_peers(self, v28, v29, v30, v32, v31);
  if (v33)
  {
    CFDictionarySetValue(v9, @"peers", v33);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFE98();
  }

  return v9;
}

@end