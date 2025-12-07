@interface FTRelayUpdateMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
@end

@implementation FTRelayUpdateMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTRelayUpdateMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTRelayUpdateMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v62.receiver = self;
  v62.super_class = FTRelayUpdateMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v62 requiredKeys];
  v8 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v7, v6);
  objc_msgSend_addObject_(v8, v9, @"self-push-token", v10, v12, v11);
  objc_msgSend_addObject_(v8, v13, @"peer-id", v14, v16, v15);
  objc_msgSend_addObject_(v8, v17, @"peer-push-token", v18, v20, v19);
  objc_msgSend_addObject_(v8, v21, @"relay-type", v22, v24, v23);
  objc_msgSend_addObject_(v8, v25, @"relay-connection-id", v26, v28, v27);
  objc_msgSend_addObject_(v8, v29, @"relay-transaction-id-alloc", v30, v32, v31);
  objc_msgSend_addObject_(v8, v33, @"relay-token-alloc-res", v34, v36, v35);
  objc_msgSend_addObject_(v8, v37, @"self-relay-ip", v38, v40, v39);
  objc_msgSend_addObject_(v8, v41, @"self-relay-port", v42, v44, v43);
  objc_msgSend_addObject_(v8, v45, @"self-relay-nat-ip", v46, v48, v47);
  objc_msgSend_addObject_(v8, v49, @"self-relay-nat-port", v50, v52, v51);
  objc_msgSend_addObject_(v8, v53, @"peer-relay-ip", v54, v56, v55);
  objc_msgSend_addObject_(v8, v57, @"peer-relay-port", v58, v60, v59);
  return v8;
}

- (id)messageBody
{
  v149.receiver = self;
  v149.super_class = FTRelayUpdateMessage;
  messageBody = [(FTFaceTimeMessage *)&v149 messageBody];
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

  v21 = objc_msgSend_peerID(self, v16, v17, v18, v20, v19);
  if (v21)
  {
    CFDictionarySetValue(v9, @"peer-id", v21);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFB54();
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
  v34 = objc_msgSend_relayType(self, v28, v29, v30, v32, v31);
  v40 = objc_msgSend_intValue(v34, v35, v36, v37, v39, v38);
  v45 = objc_msgSend_numberWithInt_(v33, v41, v40, v42, v44, v43);
  if (v45)
  {
    CFDictionarySetValue(v9, @"relay-type", v45);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0044();
  }

  v51 = objc_msgSend_relayConnectionID(self, v46, v47, v48, v50, v49);
  if (v51)
  {
    CFDictionarySetValue(v9, @"relay-connection-id", v51);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC00CC();
  }

  v57 = objc_msgSend_relayTransactionIDAlloc(self, v52, v53, v54, v56, v55);
  if (v57)
  {
    CFDictionarySetValue(v9, @"relay-transaction-id-alloc", v57);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0374();
  }

  v63 = objc_msgSend_relayTokenAllocRes(self, v58, v59, v60, v62, v61);
  if (v63)
  {
    CFDictionarySetValue(v9, @"relay-token-alloc-res", v63);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC03FC();
  }

  v69 = objc_msgSend_selfRelayIP(self, v64, v65, v66, v68, v67);
  if (v69)
  {
    CFDictionarySetValue(v9, @"self-relay-ip", v69);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0154();
  }

  v75 = MEMORY[0x277CCABB0];
  v76 = objc_msgSend_selfRelayPort(self, v70, v71, v72, v74, v73);
  v82 = objc_msgSend_intValue(v76, v77, v78, v79, v81, v80);
  v87 = objc_msgSend_numberWithInt_(v75, v83, v82, v84, v86, v85);
  if (v87)
  {
    CFDictionarySetValue(v9, @"self-relay-port", v87);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC01DC();
  }

  v93 = objc_msgSend_selfRelayNATIP(self, v88, v89, v90, v92, v91);
  if (v93)
  {
    CFDictionarySetValue(v9, @"self-relay-nat-ip", v93);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0484();
  }

  v99 = MEMORY[0x277CCABB0];
  v100 = objc_msgSend_selfRelayNATPort(self, v94, v95, v96, v98, v97);
  v106 = objc_msgSend_intValue(v100, v101, v102, v103, v105, v104);
  v111 = objc_msgSend_numberWithInt_(v99, v107, v106, v108, v110, v109);
  if (v111)
  {
    CFDictionarySetValue(v9, @"self-relay-nat-port", v111);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC050C();
  }

  v117 = objc_msgSend_peerRelayIP(self, v112, v113, v114, v116, v115);
  if (v117)
  {
    CFDictionarySetValue(v9, @"peer-relay-ip", v117);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0264();
  }

  v123 = MEMORY[0x277CCABB0];
  v124 = objc_msgSend_peerRelayPort(self, v118, v119, v120, v122, v121);
  v130 = objc_msgSend_intValue(v124, v125, v126, v127, v129, v128);
  v135 = objc_msgSend_numberWithInt_(v123, v131, v130, v132, v134, v133);
  if (v135)
  {
    CFDictionarySetValue(v9, @"peer-relay-port", v135);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC02EC();
  }

  v141 = objc_msgSend_selfRelayBlob(self, v136, v137, v138, v140, v139);
  if (v141)
  {
    CFDictionarySetValue(v9, @"self-relay-blob", v141);
  }

  v147 = objc_msgSend_relayCandidateID(self, v142, v143, v144, v146, v145);
  if (v147)
  {
    CFDictionarySetValue(v9, @"relay-candidate-id", v147);
  }

  return v9;
}

@end