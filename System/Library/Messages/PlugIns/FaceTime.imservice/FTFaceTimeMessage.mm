@interface FTFaceTimeMessage
- (BOOL)hasRequiredKeys:(id *)keys;
- (BOOL)isValidMessage;
- (FTFaceTimeMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (void)dealloc;
@end

@implementation FTFaceTimeMessage

- (FTFaceTimeMessage)init
{
  v10.receiver = self;
  v10.super_class = FTFaceTimeMessage;
  v2 = [(FTIDSMessage *)&v10 init];
  v8 = v2;
  if (v2)
  {
    v7.n128_u64[0] = 0x4044000000000000;
    objc_msgSend_setTimeout_(v2, v3, v4, v5, v7, v6);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = FTFaceTimeMessage;
  v4 = [(FTIDSMessage *)&v16 copyWithZone:zone];
  v10 = objc_msgSend_sessionToken(self, v5, v6, v7, v9, v8);
  objc_msgSend_setSessionToken_(v4, v11, v10, v12, v14, v13);
  return v4;
}

- (void)dealloc
{
  objc_msgSend_setSessionToken_(self, a2, 0, v2, v4, v3);
  v6.receiver = self;
  v6.super_class = FTFaceTimeMessage;
  [(FTIDSMessage *)&v6 dealloc];
}

- (BOOL)hasRequiredKeys:(id *)keys
{
  v7 = objc_msgSend_selfURI(self, a2, keys, v3, v5, v4);
  v13 = objc_msgSend_length(v7, v8, v9, v10, v12, v11);
  if (!v13)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23BCBF854(v14);
      if (!keys)
      {
        return v13 != 0;
      }

      goto LABEL_4;
    }

    if (keys)
    {
LABEL_4:
      *keys = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v15, @"self URI", v16, v18, v17);
    }
  }

  return v13 != 0;
}

- (BOOL)isValidMessage
{
  v11 = objc_msgSend_sessionToken(self, a2, v2, v3, v5, v4);
  if (!qword_27E1C36E0)
  {
    qword_27E1C36E0 = objc_msgSend__FTDataFromHexString(@"0c0c0e0ececece", v7, v8, v9, v12, v10);
  }

  v13 = objc_msgSend_length(v11, v7, v8, v9, v12, v10);
  if (v13 > objc_msgSend_length(qword_27E1C36E0, v14, v15, v16, v18, v17) && qword_27E1C36E0 != 0)
  {
    v25 = objc_msgSend_length(qword_27E1C36E0, v19, v20, v21, v23, v22);
    v29 = objc_msgSend_subdataWithRange_(v11, v26, 0, v25, v28, v27);
    if (objc_msgSend_isEqualToData_(v29, v30, qword_27E1C36E0, v31, v33, v32))
    {
      return 0;
    }
  }

  v35.receiver = self;
  v35.super_class = FTFaceTimeMessage;
  return [(IDSBaseMessage *)&v35 isValidMessage];
}

- (id)messageBody
{
  v17.receiver = self;
  v17.super_class = FTFaceTimeMessage;
  messageBody = [(IDSBaseMessage *)&v17 messageBody];
  v13 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v8, v7);
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v15 = objc_msgSend_sessionToken(self, v9, v10, v11, v14, v12);
  if (v15)
  {
    CFDictionarySetValue(v13, @"session-token", v15);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF898();
  }

  return v13;
}

@end