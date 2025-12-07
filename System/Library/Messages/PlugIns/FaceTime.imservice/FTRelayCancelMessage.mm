@interface FTRelayCancelMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
@end

@implementation FTRelayCancelMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTRelayCancelMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTRelayCancelMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v46.receiver = self;
  v46.super_class = FTRelayCancelMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v46 requiredKeys];
  v8 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v7, v6);
  objc_msgSend_addObject_(v8, v9, @"peer-id", v10, v12, v11);
  objc_msgSend_addObject_(v8, v13, @"peer-push-token", v14, v16, v15);
  objc_msgSend_addObject_(v8, v17, @"reason", v18, v20, v19);
  objc_msgSend_addObject_(v8, v21, @"relay-type", v22, v24, v23);
  objc_msgSend_addObject_(v8, v25, @"relay-connection-id", v26, v28, v27);
  objc_msgSend_addObject_(v8, v29, @"self-relay-ip", v30, v32, v31);
  objc_msgSend_addObject_(v8, v33, @"self-relay-port", v34, v36, v35);
  objc_msgSend_addObject_(v8, v37, @"peer-relay-ip", v38, v40, v39);
  objc_msgSend_addObject_(v8, v41, @"peer-relay-port", v42, v44, v43);
  return v8;
}

- (id)messageBody
{
  v119.receiver = self;
  v119.super_class = FTRelayCancelMessage;
  messageBody = [(FTFaceTimeMessage *)&v119 messageBody];
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

  v21 = objc_msgSend_peerPushToken(self, v16, v17, v18, v20, v19);
  if (v21)
  {
    CFDictionarySetValue(v9, @"peer-push-token", v21);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFBDC();
  }

  v27 = MEMORY[0x277CCABB0];
  v28 = objc_msgSend_reason(self, v22, v23, v24, v26, v25);
  v34 = objc_msgSend_intValue(v28, v29, v30, v31, v33, v32);
  v39 = objc_msgSend_numberWithInt_(v27, v35, v34, v36, v38, v37);
  if (v39)
  {
    CFDictionarySetValue(v9, @"reason", v39);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFFBC();
  }

  v45 = MEMORY[0x277CCABB0];
  v46 = objc_msgSend_relayType(self, v40, v41, v42, v44, v43);
  v52 = objc_msgSend_intValue(v46, v47, v48, v49, v51, v50);
  v57 = objc_msgSend_numberWithInt_(v45, v53, v52, v54, v56, v55);
  if (v57)
  {
    CFDictionarySetValue(v9, @"relay-type", v57);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0044();
  }

  v63 = objc_msgSend_relayConnectionID(self, v58, v59, v60, v62, v61);
  if (v63)
  {
    CFDictionarySetValue(v9, @"relay-connection-id", v63);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC00CC();
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

  v93 = objc_msgSend_peerRelayIP(self, v88, v89, v90, v92, v91);
  if (v93)
  {
    CFDictionarySetValue(v9, @"peer-relay-ip", v93);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC0264();
  }

  v99 = MEMORY[0x277CCABB0];
  v100 = objc_msgSend_peerRelayPort(self, v94, v95, v96, v98, v97);
  v106 = objc_msgSend_intValue(v100, v101, v102, v103, v105, v104);
  v111 = objc_msgSend_numberWithInt_(v99, v107, v106, v108, v110, v109);
  if (v111)
  {
    CFDictionarySetValue(v9, @"peer-relay-port", v111);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCC02EC();
  }

  v117 = objc_msgSend_relayCandidateID(self, v112, v113, v114, v116, v115);
  if (v117)
  {
    CFDictionarySetValue(v9, @"relay-candidate-id", v117);
  }

  return v9;
}

@end