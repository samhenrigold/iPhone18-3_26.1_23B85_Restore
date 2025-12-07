@interface FTRelayInitateMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTRelayInitateMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTRelayInitateMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTRelayInitateMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v38.receiver = self;
  v38.super_class = FTRelayInitateMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v38 requiredKeys];
  v8 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v7, v6);
  objc_msgSend_addObject_(v8, v9, @"self-push-token", v10, v12, v11);
  objc_msgSend_addObject_(v8, v13, @"self-nat-type", v14, v16, v15);
  objc_msgSend_addObject_(v8, v17, @"self-nat-ip", v18, v20, v19);
  objc_msgSend_addObject_(v8, v21, @"peer-id", v22, v24, v23);
  objc_msgSend_addObject_(v8, v25, @"peer-push-token", v26, v28, v27);
  objc_msgSend_addObject_(v8, v29, @"peer-nat-type", v30, v32, v31);
  objc_msgSend_addObject_(v8, v33, @"peer-nat-ip", v34, v36, v35);
  return v8;
}

- (id)messageBody
{
  v83.receiver = self;
  v83.super_class = FTRelayInitateMessage;
  messageBody = [(FTFaceTimeMessage *)&v83 messageBody];
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
  v22 = objc_msgSend_selfNatType(self, v16, v17, v18, v20, v19);
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

  v39 = objc_msgSend_selfNATIP(self, v34, v35, v36, v38, v37);
  if (v39)
  {
    CFDictionarySetValue(v9, @"self-nat-ip", v39);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFACC();
  }

  v45 = objc_msgSend_peerID(self, v40, v41, v42, v44, v43);
  if (v45)
  {
    CFDictionarySetValue(v9, @"peer-id", v45);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFB54();
  }

  v51 = objc_msgSend_peerPushToken(self, v46, v47, v48, v50, v49);
  if (v51)
  {
    CFDictionarySetValue(v9, @"peer-push-token", v51);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFBDC();
  }

  v57 = MEMORY[0x277CCABB0];
  v58 = objc_msgSend_peerNatType(self, v52, v53, v54, v56, v55);
  v64 = objc_msgSend_intValue(v58, v59, v60, v61, v63, v62);
  v69 = objc_msgSend_numberWithInt_(v57, v65, v64, v66, v68, v67);
  if (v69)
  {
    CFDictionarySetValue(v9, @"peer-nat-type", v69);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFC64();
  }

  v75 = objc_msgSend_peerNATIP(self, v70, v71, v72, v74, v73);
  if (v75)
  {
    CFDictionarySetValue(v9, @"peer-nat-ip", v75);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFD74();
  }

  v81 = objc_msgSend_relayCandidateID(self, v76, v77, v78, v80, v79);
  if (v81)
  {
    CFDictionarySetValue(v9, @"relay-candidate-id", v81);
  }

  return v9;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v8 = MEMORY[0x277CCABB0];
  v9 = objc_msgSend_objectForKey_(dictionary, a2, @"relay-type", v3, v5, v4);
  v15 = objc_msgSend_intValue(v9, v10, v11, v12, v14, v13);
  v20 = objc_msgSend_numberWithInt_(v8, v16, v15, v17, v19, v18);
  objc_msgSend_setRelayType_(self, v21, v20, v22, v24, v23);
  v29 = objc_msgSend_objectForKey_(dictionary, v25, @"relay-connection-id", v26, v28, v27);
  objc_msgSend_setRelayConnectionId_(self, v30, v29, v31, v33, v32);
  v38 = objc_msgSend_objectForKey_(dictionary, v34, @"relay-transaction-id-alloc", v35, v37, v36);
  objc_msgSend_setRelayTransactionIdAlloc_(self, v39, v38, v40, v42, v41);
  v47 = objc_msgSend_objectForKey_(dictionary, v43, @"relay-token-alloc-req", v44, v46, v45);
  objc_msgSend_setRelayTokenAllocReq_(self, v48, v47, v49, v51, v50);
  v56 = objc_msgSend_objectForKey_(dictionary, v52, @"self-relay-ip", v53, v55, v54);
  objc_msgSend_setSelfRelayIP_(self, v57, v56, v58, v60, v59);
  v61 = MEMORY[0x277CCABB0];
  v66 = objc_msgSend_objectForKey_(dictionary, v62, @"self-relay-port", v63, v65, v64);
  v72 = objc_msgSend_intValue(v66, v67, v68, v69, v71, v70);
  v77 = objc_msgSend_numberWithInt_(v61, v73, v72, v74, v76, v75);
  objc_msgSend_setSelfRelayPort_(self, v78, v77, v79, v81, v80);
  v86 = objc_msgSend_objectForKey_(dictionary, v82, @"peer-relay-ip", v83, v85, v84);
  objc_msgSend_setPeerRelayIP_(self, v87, v86, v88, v90, v89);
  v91 = MEMORY[0x277CCABB0];
  v96 = objc_msgSend_objectForKey_(dictionary, v92, @"peer-relay-port", v93, v95, v94);
  v102 = objc_msgSend_intValue(v96, v97, v98, v99, v101, v100);
  v108 = objc_msgSend_numberWithInt_(v91, v103, v102, v104, v106, v105);

  objc_msgSend_setPeerRelayPort_(self, v107, v108, v109, v111, v110);
}

@end