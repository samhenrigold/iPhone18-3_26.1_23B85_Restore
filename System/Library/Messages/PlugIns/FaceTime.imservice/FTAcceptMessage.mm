@interface FTAcceptMessage
- (FTAcceptMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTAcceptMessage

- (FTAcceptMessage)init
{
  v10.receiver = self;
  v10.super_class = FTAcceptMessage;
  v2 = [(FTFaceTimeMessage *)&v10 init];
  v8 = v2;
  if (v2)
  {
    v7.n128_u64[0] = 0x404E000000000000;
    objc_msgSend_setTimeout_(v2, v3, v4, v5, v7, v6);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTAcceptMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTAcceptMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v46.receiver = self;
  v46.super_class = FTAcceptMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v46 requiredKeys];
  v11 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v7, v6);
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  objc_msgSend_addObject_(v11, v8, @"self-push-token", v9, v12, v10);
  objc_msgSend_addObject_(v11, v13, @"self-nat-type", v14, v16, v15);
  objc_msgSend_addObject_(v11, v17, @"self-blob", v18, v20, v19);
  objc_msgSend_addObject_(v11, v21, @"self-nat-ip", v22, v24, v23);
  objc_msgSend_addObject_(v11, v25, @"peer-id", v26, v28, v27);
  objc_msgSend_addObject_(v11, v29, @"peer-push-token", v30, v32, v31);
  objc_msgSend_addObject_(v11, v33, @"peer-nat-type", v34, v36, v35);
  objc_msgSend_addObject_(v11, v37, @"peer-blob", v38, v40, v39);
  objc_msgSend_addObject_(v11, v41, @"peer-nat-ip", v42, v44, v43);
  return v11;
}

- (id)messageBody
{
  v89.receiver = self;
  v89.super_class = FTAcceptMessage;
  messageBody = [(FTFaceTimeMessage *)&v89 messageBody];
  v9 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v8, v7);
  v15 = objc_msgSend_selfPushToken(self, v10, v11, v12, v14, v13);
  if (v15)
  {
    CFDictionarySetValue(v9, @"self-push-token", v15);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF934();
  }

  v21 = MEMORY[0x277CCABB0];
  v22 = objc_msgSend_selfNATType(self, v16, v17, v18, v20, v19);
  v28 = objc_msgSend_intValue(v22, v23, v24, v25, v27, v26);
  v33 = objc_msgSend_numberWithInt_(v21, v29, v28, v30, v32, v31);
  if (v33)
  {
    CFDictionarySetValue(v9, @"self-nat-type", v33);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF9BC();
  }

  v39 = objc_msgSend_selfBlob(self, v34, v35, v36, v38, v37);
  if (v39)
  {
    CFDictionarySetValue(v9, @"self-blob", v39);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFA44();
  }

  v45 = objc_msgSend_selfNATIP(self, v40, v41, v42, v44, v43);
  if (v45)
  {
    CFDictionarySetValue(v9, @"self-nat-ip", v45);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFACC();
  }

  v51 = objc_msgSend_peerID(self, v46, v47, v48, v50, v49);
  if (v51)
  {
    CFDictionarySetValue(v9, @"peer-id", v51);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFB54();
  }

  v57 = objc_msgSend_peerPushToken(self, v52, v53, v54, v56, v55);
  if (v57)
  {
    CFDictionarySetValue(v9, @"peer-push-token", v57);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFBDC();
  }

  v63 = MEMORY[0x277CCABB0];
  v64 = objc_msgSend_peerNATType(self, v58, v59, v60, v62, v61);
  v70 = objc_msgSend_intValue(v64, v65, v66, v67, v69, v68);
  v75 = objc_msgSend_numberWithInt_(v63, v71, v70, v72, v74, v73);
  if (v75)
  {
    CFDictionarySetValue(v9, @"peer-nat-type", v75);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFC64();
  }

  v81 = objc_msgSend_peerBlob(self, v76, v77, v78, v80, v79);
  if (v81)
  {
    CFDictionarySetValue(v9, @"peer-blob", v81);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFCEC();
  }

  v87 = objc_msgSend_peerNATIP(self, v82, v83, v84, v86, v85);
  if (v87)
  {
    CFDictionarySetValue(v9, @"peer-nat-ip", v87);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFD74();
  }

  return v9;
}

- (void)handleResponseDictionary:(id)dictionary
{
  if (objc_msgSend_objectForKey_(dictionary, a2, @"relay-type", v3, v5, v4))
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = objc_msgSend_objectForKey_(dictionary, v8, @"relay-type", v9, v11, v10);
    v19 = objc_msgSend_intValue(v13, v14, v15, v16, v18, v17);
    v24 = objc_msgSend_numberWithInt_(v12, v20, v19, v21, v23, v22);
    objc_msgSend_setRelayType_(self, v25, v24, v26, v28, v27);
    v33 = objc_msgSend_objectForKey_(dictionary, v29, @"relay-connection-id", v30, v32, v31);
    objc_msgSend_setRelayConnectionId_(self, v34, v33, v35, v37, v36);
    v42 = objc_msgSend_objectForKey_(dictionary, v38, @"relay-transaction-id-alloc", v39, v41, v40);
    objc_msgSend_setRelayTransactionIdAlloc_(self, v43, v42, v44, v46, v45);
    v51 = objc_msgSend_objectForKey_(dictionary, v47, @"relay-token-alloc-req", v48, v50, v49);
    objc_msgSend_setRelayTokenAllocReq_(self, v52, v51, v53, v55, v54);
    v60 = objc_msgSend_objectForKey_(dictionary, v56, @"self-relay-ip", v57, v59, v58);
    objc_msgSend_setSelfRelayIP_(self, v61, v60, v62, v64, v63);
    v65 = MEMORY[0x277CCABB0];
    v70 = objc_msgSend_objectForKey_(dictionary, v66, @"self-relay-port", v67, v69, v68);
    v76 = objc_msgSend_intValue(v70, v71, v72, v73, v75, v74);
    v81 = objc_msgSend_numberWithInt_(v65, v77, v76, v78, v80, v79);
    objc_msgSend_setSelfRelayPort_(self, v82, v81, v83, v85, v84);
    v90 = objc_msgSend_objectForKey_(dictionary, v86, @"peer-relay-ip", v87, v89, v88);
    objc_msgSend_setPeerRelayIP_(self, v91, v90, v92, v94, v93);
    v95 = MEMORY[0x277CCABB0];
    v100 = objc_msgSend_objectForKey_(dictionary, v96, @"peer-relay-port", v97, v99, v98);
    v106 = objc_msgSend_intValue(v100, v101, v102, v103, v105, v104);
    v112 = objc_msgSend_numberWithInt_(v95, v107, v106, v108, v110, v109);

    objc_msgSend_setPeerRelayPort_(self, v111, v112, v113, v115, v114);
  }
}

@end