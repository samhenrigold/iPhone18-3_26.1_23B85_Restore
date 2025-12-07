@interface CKDCodeFunctionInvokeOperation
+ (id)URLFromEntitlementString:(id)string;
+ (id)entitlementURLForServiceName:(id)name container:(id)container;
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error;
- (CKDCodeFunctionInvokeOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (id)encryptData:(id)data;
- (void)_checkShouldSendRecordPCSKeys;
- (void)_getDeserializedRecords;
- (void)_getSerializedRequest;
- (void)_invokeFunction;
- (void)_invokeLocalFunction;
- (void)_postflightRecords;
- (void)_preflightRecords;
- (void)_prepareForProtectedCloudCompute;
- (void)_prepareForTrustedTargetEncryption;
- (void)main;
@end

@implementation CKDCodeFunctionInvokeOperation

- (CKDCodeFunctionInvokeOperation)initWithOperationInfo:(id)info container:(id)container
{
  v66 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  containerCopy = container;
  v63.receiver = self;
  v63.super_class = CKDCodeFunctionInvokeOperation;
  v10 = [(CKDDatabaseOperation *)&v63 initWithOperationInfo:infoCopy container:containerCopy];
  if (v10)
  {
    v11 = objc_msgSend_serviceName(infoCopy, v8, v9);
    serviceName = v10->_serviceName;
    v10->_serviceName = v11;

    v15 = objc_msgSend_functionName(infoCopy, v13, v14);
    functionName = v10->_functionName;
    v10->_functionName = v15;

    v19 = objc_msgSend_requestLocalSerializations(infoCopy, v17, v18);
    requestLocalSerializations = v10->_requestLocalSerializations;
    v10->_requestLocalSerializations = v19;

    v23 = objc_msgSend_requestLocalEnvelopes(infoCopy, v21, v22);
    requestLocalEnvelopes = v10->_requestLocalEnvelopes;
    v10->_requestLocalEnvelopes = v23;

    v10->_dataProtectionType = objc_msgSend_dataProtectionType(infoCopy, v25, v26);
    v29 = objc_msgSend_permittedRemoteMeasurement(infoCopy, v27, v28);
    permittedRemoteMeasurement = v10->_permittedRemoteMeasurement;
    v10->_permittedRemoteMeasurement = v29;

    v33 = objc_msgSend_trustedTargetDomain(infoCopy, v31, v32);
    trustedTargetDomain = v10->_trustedTargetDomain;
    v10->_trustedTargetDomain = v33;

    v37 = objc_msgSend_trustedTargetOID(infoCopy, v35, v36);
    trustedTargetOID = v10->_trustedTargetOID;
    v10->_trustedTargetOID = v37;

    shouldSendRecordPCSKeys = objc_msgSend_shouldSendRecordPCSKeys(infoCopy, v39, v40);
    v10->_shouldSendRecordPCSKeys = shouldSendRecordPCSKeys;
    if (shouldSendRecordPCSKeys)
    {
      v44 = objc_msgSend_deviceContext(v10, v42, v43);
      v47 = objc_msgSend_accountDataSecurityObserver(v44, v45, v46);
      v50 = objc_msgSend_account(containerCopy, v48, v49);
      v52 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v47, v51, v50, 1);

      if (v52)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v53 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v59 = v53;
          v62 = objc_msgSend_operationID(infoCopy, v60, v61);
          *buf = 138412290;
          v65 = v62;
          _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "Overriding shouldSendRecordPCSKeys to NO due to walrus enabled for operation %@", buf, 0xCu);
        }

        v10->_shouldSendRecordPCSKeys = 0;
      }
    }

    v10->_shouldFetchAssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(infoCopy, v42, v43);
    serializedResponse = v10->_serializedResponse;
    v10->_serializedResponse = 0;

    pccKey = v10->_pccKey;
    v10->_pccKey = 0;

    pccWrappedKeys = v10->_pccWrappedKeys;
    v10->_pccWrappedKeys = 0;

    attestationEntropy = v10->_attestationEntropy;
    v10->_attestationEntropy = 0;
  }

  return v10;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/ckcode-function-invoke", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:
        objc_msgSend_setState_(self, v5, 2);
        objc_msgSend__checkShouldSendRecordPCSKeys(self, v14, v15);
        break;
      case 2:
        objc_msgSend_setState_(self, v5, 3);
        objc_msgSend__preflightRecords(self, v23, v24);
        break;
      case 3:
        objc_msgSend_setState_(self, v5, 4);
        objc_msgSend__getSerializedRequest(self, v8, v9);
        break;
    }
  }

  else if (v4 > 5)
  {
    if (v4 == 6)
    {
      objc_msgSend_setState_(self, v5, 7);
      objc_msgSend__postflightRecords(self, v21, v22);
    }

    else if (v4 == 7)
    {
      objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
      v12 = objc_msgSend_error(self, v10, v11);
      objc_msgSend_finishWithError_(self, v13, v12);
    }
  }

  else if (v4 == 4)
  {
    objc_msgSend_setState_(self, v5, 5);
    v18 = objc_msgSend_resolvedBaseURL(self, v16, v17);

    if (v18)
    {
      objc_msgSend__invokeLocalFunction(self, v19, v20);
    }

    else
    {
      objc_msgSend__invokeFunction(self, v19, v20);
    }
  }

  else
  {
    objc_msgSend_setState_(self, v5, 6);
    objc_msgSend__getDeserializedRecords(self, v6, v7);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 6)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDCodeFunctionInvokeOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278549178[state - 2];
  }

  return v5;
}

- (id)encryptData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_dataProtectionType(self, v5, v6);
  if (v7 == 2)
  {
    v10 = objc_msgSend_trustedTargetKey(self, v8, v9);
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v10 = objc_msgSend_pccKey(self, v8, v9);
LABEL_5:
    v12 = v10;
    v13 = objc_msgSend_encrypt_(v10, v11, dataCopy);

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)_preflightRecords
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_requestLocalSerializations(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  if (!v6)
  {
    goto LABEL_19;
  }

  v103 = objc_opt_new();
  v104 = objc_opt_new();
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = objc_msgSend_requestLocalSerializations(self, v9, v10);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v108, v116, 16);
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = *v109;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v109 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v108 + 1) + 8 * i);
      v16 = objc_alloc(MEMORY[0x277CCAAC8]);
      v107 = 0;
      v18 = objc_msgSend_initForReadingFromData_error_(v16, v17, v15, &v107);
      v20 = v107;
      if (!v18 || (v21 = objc_alloc(MEMORY[0x277CBC5A0]), (v23 = objc_msgSend_initWithCoder_(v21, v22, v18)) == 0))
      {
        if (!v20)
        {
          v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1017, @"Invalid record archive: %@", v15);
        }

        objc_msgSend_setError_(self, v19, v20);
        goto LABEL_43;
      }

      objc_msgSend_addObject_(v103, v19, v23);
      v26 = objc_msgSend_recordID(v23, v24, v25);
      v28 = objc_msgSend_objectForKeyedSubscript_(v104, v27, v26);

      if (!v28)
      {
        v38 = objc_msgSend_recordID(v23, v29, v30);
        objc_msgSend_setObject_forKeyedSubscript_(v104, v39, v23, v38);

        goto LABEL_16;
      }

      v31 = objc_msgSend_values(v23, v29, v30);
      v34 = objc_msgSend_values(v28, v32, v33);
      isEqual = objc_msgSend_isEqual_(v31, v35, v34);

      if (!isEqual)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v85 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v113 = v28;
          v114 = 2112;
          v115 = v23;
          _os_log_error_impl(&dword_22506F000, v85, OS_LOG_TYPE_ERROR, "Trying to save two RecordTransports for the same record: recordA=%@ recordB=%@", buf, 0x16u);
        }

        v88 = MEMORY[0x277CBC560];
        v89 = objc_msgSend_recordID(v23, v86, v87);
        v91 = objc_msgSend_errorWithDomain_code_format_(v88, v90, *MEMORY[0x277CBC120], 1017, @"Cannot send two records for the same record ID in the same request: %@", v89);
        objc_msgSend_setError_(self, v92, v91);

LABEL_43:
        return;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v37 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v113 = v23;
        _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Coalescing identical request record: %@", buf, 0xCu);
      }

LABEL_16:
    }

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v108, v116, 16);
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_18:

  objc_msgSend_setRequestRecords_(self, v41, v103);
  v42 = objc_opt_new();
  v45 = objc_msgSend_allValues(v104, v43, v44);
  objc_msgSend_setRecordsToSave_(v42, v46, v45);

  objc_msgSend_setShouldModifyRecordsInDatabase_(v42, v47, 0);
  objc_msgSend_setAlwaysFetchPCSFromServer_(v42, v48, 1);
  objc_initWeak(buf, self);
  v49 = objc_opt_class();
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = sub_2251C52F4;
  v105[3] = &unk_278548FD0;
  objc_copyWeak(&v106, buf);
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v50, v49, v42, v105);
  objc_destroyWeak(&v106);
  objc_destroyWeak(buf);

LABEL_19:
  v51 = objc_msgSend_requestLocalEnvelopes(self, v7, v8);
  v54 = objc_msgSend_count(v51, v52, v53);

  if (!v54)
  {
    goto LABEL_31;
  }

  v57 = objc_msgSend_dataProtectionType(self, v55, v56);
  switch(v57)
  {
    case 2:
      v76 = objc_msgSend_trustedTargetDomain(self, v55, v56);
      if (v76)
      {
        v77 = objc_msgSend_trustedTargetOID(self, v55, v56);
        v78 = v77 == 0;

        if (!v78)
        {
          goto LABEL_31;
        }
      }

      v93 = MEMORY[0x277CBC560];
      v94 = objc_msgSend_serviceName(self, v55, v56);
      v97 = objc_msgSend_functionName(self, v95, v96);
      v99 = objc_msgSend_errorWithDomain_code_format_(v93, v98, *MEMORY[0x277CBC120], 1017, @"Request with protected envelopes and trusted target data protection type must have target domain and OID: %@.%@", v94, v97);
      objc_msgSend_setError_(self, v100, v99);

      break;
    case 1:
      v66 = objc_msgSend_permittedRemoteMeasurement(self, v55, v56);
      v67 = v66 == 0;

      if (!v67)
      {
        goto LABEL_31;
      }

      v68 = MEMORY[0x277CBC560];
      v69 = objc_msgSend_serviceName(self, v55, v56);
      v72 = objc_msgSend_functionName(self, v70, v71);
      v74 = objc_msgSend_errorWithDomain_code_format_(v68, v73, *MEMORY[0x277CBC120], 1017, @"Request with protected envelopes and SGX data protection type must have a permittedRemoteMeasurement: %@.%@", v69, v72);
      objc_msgSend_setError_(self, v75, v74);

      break;
    case 0:
      v58 = MEMORY[0x277CBC560];
      v59 = objc_msgSend_serviceName(self, v55, v56);
      v62 = objc_msgSend_functionName(self, v60, v61);
      v64 = objc_msgSend_errorWithDomain_code_format_(v58, v63, *MEMORY[0x277CBC120], 1017, @"Request has protected envelopes, but no data protection type: %@.%@", v59, v62);
      objc_msgSend_setError_(self, v65, v64);

      return;
    default:
LABEL_31:
      v79 = objc_msgSend_dataProtectionType(self, v55, v56);
      switch(v79)
      {
        case 2:
          objc_msgSend__prepareForTrustedTargetEncryption(self, v80, v81);
          break;
        case 1:
          objc_msgSend__prepareForProtectedCloudCompute(self, v80, v81);
          break;
        case 0:
          if (objc_msgSend_shouldSendRecordPCSKeys(self, v80, v81))
          {
            v83 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v82, *MEMORY[0x277CBC120], 1017, @"Cannot set shouldSendRecordPCSKeys without data protection. Please specify a dataProtectionType on your operation.");
            objc_msgSend_setError_(self, v84, v83);
          }

          break;
      }

      break;
  }
}

- (void)_prepareForProtectedCloudCompute
{
  v4 = objc_msgSend_resolvedBaseURL(self, a2, v2);

  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      v6 = "Not preparing for PCC because we have a base URL";
LABEL_6:
      _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, v6, buf, 2u);
    }
  }

  else
  {
    v7 = objc_alloc_init(PCCKey);
    objc_msgSend_setPccKey_(self, v8, v7);

    if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v11, v12, @"SkipAttestation"), v13 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend_BOOLValue(v13, v14, v15), v13, v11, v16))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v5 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        v6 = "Skipping PCC attestation because we were asked to";
        goto LABEL_6;
      }
    }

    else
    {
      v17 = objc_opt_new();
      v20 = objc_msgSend_serviceName(self, v18, v19);
      objc_msgSend_setServiceName_(v17, v21, v20);

      objc_msgSend_setFunctionName_(v17, v22, 0);
      objc_initWeak(buf, self);
      v23 = objc_opt_class();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_2251C57E4;
      v25[3] = &unk_278548FD0;
      objc_copyWeak(&v26, buf);
      objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v24, v23, v17, v25);
      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_prepareForTrustedTargetEncryption
{
  if (objc_msgSend_shouldSendRecordPCSKeys(self, a2, v2))
  {
    v6 = objc_msgSend_stateTransitionGroup(self, v4, v5);
    dispatch_group_enter(v6);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "About to fetch public key for trusted target encryption", location, 2u);
    }

    v8 = objc_alloc_init(CKDTrustedTargetKey);
    objc_msgSend_setTrustedTargetKey_(self, v9, v8);

    objc_initWeak(location, self);
    v10 = objc_opt_new();
    objc_msgSend_setType_(v10, v11, 1);
    v12 = objc_opt_class();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2251C608C;
    v14[3] = &unk_278549040;
    objc_copyWeak(&v15, location);
    v14[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v13, v12, v10, v14);
    objc_destroyWeak(&v15);

    objc_destroyWeak(location);
  }
}

- (void)_checkShouldSendRecordPCSKeys
{
  if (objc_msgSend_shouldSendRecordPCSKeys(self, a2, v2))
  {
    v4 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = MEMORY[0x277CBC830];
    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Adopter set shouldSendRecordPCSKeys. Checking if we should actually do that.", buf, 2u);
    }

    if (objc_msgSend_dataProtectionType(self, v7, v8) == 2)
    {
      if (*v4 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v9 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Will check server configuration to see if we should send the record keys", buf, 2u);
      }

      v12 = objc_msgSend_stateTransitionGroup(self, v10, v11);
      dispatch_group_enter(v12);

      v15 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v13, v14);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2251C6584;
      v17[3] = &unk_278548770;
      v17[4] = self;
      objc_msgSend_configurationForOperation_completionHandler_(v15, v16, self, v17);
    }
  }
}

- (void)_getSerializedRequest
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (objc_msgSend_shouldSendRecordPCSKeys(self, v4, v5))
  {
    v69 = objc_opt_new();
  }

  else
  {
    v69 = 0;
  }

  v8 = objc_msgSend_requestLocalEnvelopes(self, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_requestLocalEnvelopes(self, v12, v13);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_2251C6D40;
    v83[3] = &unk_278549068;
    v83[4] = self;
    v16 = objc_msgSend_CKMap_(v14, v15, v83);
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_msgSend_requestRecords(self, v12, v13);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (v20)
  {
    v68 = v16;
    v23 = [CKDProtocolTranslator alloc];
    v26 = objc_msgSend_container(self, v24, v25);
    v29 = objc_msgSend_databaseScope(self, v27, v28);
    v31 = objc_msgSend_initWithContainer_databaseScope_(v23, v30, v26, v29);

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v34 = objc_msgSend_requestRecords(self, v32, v33);
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v79, v84, 16);
    if (v36)
    {
      v38 = v36;
      v39 = *v80;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v80 != v39)
          {
            objc_enumerationMutation(v34);
          }

          v41 = objc_msgSend_pRecordFromRecord_(v31, v37, *(*(&v79 + 1) + 8 * i));
          v44 = objc_msgSend_data(v41, v42, v43);
          objc_msgSend_addObject_(v3, v45, v44);
          if (objc_msgSend_shouldSendRecordPCSKeys(self, v46, v47))
          {
            v50 = objc_msgSend_null(MEMORY[0x277CBEB68], v48, v49);
            objc_msgSend_addObject_(v69, v51, v50);
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v79, v84, 16);
      }

      while (v38);
    }

    v16 = v68;
  }

  v52 = objc_msgSend_stateTransitionGroup(self, v21, v22);
  dispatch_group_enter(v52);

  v53 = dispatch_group_create();
  if (objc_msgSend_shouldSendRecordPCSKeys(self, v54, v55))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v57 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v57, OS_LOG_TYPE_DEBUG, "About to fetch PCS data for secure compute operation", buf, 2u);
    }

    v60 = objc_msgSend_requestRecords(self, v58, v59);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_2251C6D4C;
    v74[3] = &unk_2785490B8;
    v75 = v53;
    selfCopy = self;
    v77 = v69;
    objc_msgSend_enumerateObjectsUsingBlock_(v60, v61, v74);
  }

  objc_msgSend_setRequestRecords_(self, v56, 0);
  v64 = objc_msgSend_callbackQueue(self, v62, v63);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251C7344;
  block[3] = &unk_2785463D0;
  block[4] = self;
  v71 = v3;
  v72 = v69;
  v73 = v16;
  v65 = v16;
  v66 = v69;
  v67 = v3;
  dispatch_group_notify(v53, v64, block);
}

- (void)_invokeFunction
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v5 = [CKDCodeFunctionInvokeURLRequest alloc];
  v8 = objc_msgSend_serviceName(self, v6, v7);
  v11 = objc_msgSend_functionName(self, v9, v10);
  v14 = objc_msgSend_serializedArguments(self, v12, v13);
  v17 = objc_msgSend_attestationEntropy(self, v15, v16);
  v20 = objc_msgSend_pccWrappedKeys(self, v18, v19);
  v23 = objc_msgSend_trustedTargetWrappedKey(self, v21, v22);
  v25 = objc_msgSend_initWithOperation_serviceName_functionName_serializedParameters_attestationEntropy_pccWrappedInvocationKeys_trustedTargetWrappedInvocationKey_(v5, v24, self, v8, v11, v14, v17, v20, v23);

  objc_initWeak(&location, self);
  objc_initWeak(&from, v25);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2251C778C;
  v38[3] = &unk_278549108;
  objc_copyWeak(&v39, &location);
  objc_copyWeak(&v40, &from);
  objc_msgSend_setSerializedResultsCallback_(v25, v26, v38);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2251C7ABC;
  v35[3] = &unk_278548748;
  objc_copyWeak(&v36, &location);
  objc_copyWeak(&v37, &from);
  objc_msgSend_setCompletionBlock_(v25, v27, v35);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v28 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Invoking CKCode function", buf, 2u);
  }

  objc_msgSend_setRequest_(self, v29, v25);
  v32 = objc_msgSend_container(self, v30, v31);
  objc_msgSend_performRequest_(v32, v33, v25);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_invokeLocalFunction
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v5 = [CKDCodeLocalFunctionInvokeURLRequest alloc];
  v8 = objc_msgSend_serviceName(self, v6, v7);
  v11 = objc_msgSend_functionName(self, v9, v10);
  v14 = objc_msgSend_serializedArguments(self, v12, v13);
  v17 = objc_msgSend_resolvedBaseURL(self, v15, v16);
  v19 = objc_msgSend_initWithOperation_serviceName_functionName_serializedParameters_resolvedBaseURL_(v5, v18, self, v8, v11, v14, v17);

  objc_initWeak(&location, self);
  objc_initWeak(&from, v19);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2251C7EF8;
  v32[3] = &unk_278549130;
  objc_copyWeak(&v33, &location);
  objc_copyWeak(&v34, &from);
  objc_msgSend_setSerializedResultsCallback_(v19, v20, v32);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2251C8514;
  v29[3] = &unk_278548748;
  objc_copyWeak(&v30, &location);
  objc_copyWeak(&v31, &from);
  objc_msgSend_setCompletionBlock_(v19, v21, v29);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v28 = 0;
    _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Invoking CKCode function", v28, 2u);
  }

  objc_msgSend_setRequest_(self, v23, v19);
  v26 = objc_msgSend_container(self, v24, v25);
  objc_msgSend_performRequest_(v26, v27, v19);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_getDeserializedRecords
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_stateTransitionGroup(self, v4, v5);
  dispatch_group_enter(v6);

  objc_initWeak(&location, self);
  v9 = objc_msgSend_initialResponseReceivedCallback(self, v7, v8);
  v12 = objc_msgSend_serializedResponse(self, v10, v11);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251C87D0;
  v14[3] = &unk_278549158;
  objc_copyWeak(&v16, &location);
  v14[4] = self;
  v13 = v3;
  v15 = v13;
  (v9)[2](v9, v12, v14);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_postflightRecords
{
  v4 = objc_msgSend_responseRecords(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
    dispatch_group_enter(v10);

    v11 = objc_opt_new();
    v12 = objc_opt_new();
    objc_msgSend_setShouldFetchAssetContent_(v12, v13, 1);
    AssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(self, v14, v15);
    objc_msgSend_setShouldFetchAssetContentInMemory_(v12, v17, AssetContentInMemory);
    v18 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2251C8B1C;
    v21[3] = &unk_278548C48;
    v21[4] = self;
    v22 = v11;
    v19 = v11;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v20, v18, v12, v21);
  }
}

- (void)main
{
  v26 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v8, 1, 0, 0);
    v12 = objc_msgSend_CKPropertiesStyleString(v9, v10, v11);
    v14 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v13, 0, 1, 0);
    v17 = objc_msgSend_CKPropertiesStyleString(v14, v15, v16);
    v18 = 138544130;
    v19 = v7;
    v20 = 2048;
    selfCopy = self;
    v22 = 2114;
    v23 = v12;
    v24 = 2112;
    v25 = v17;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Starting CKCode function invoke operation <%{public}@: %p; %{public}@, %@>", &v18, 0x2Au);
  }

  objc_msgSend_makeStateTransition_(self, v4, 0);
}

+ (id)URLFromEntitlementString:(id)string
{
  v16 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ((objc_msgSend_hasPrefix_(stringCopy, v4, @"http") & 1) == 0)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"http://%@", stringCopy);

    stringCopy = v6;
  }

  v7 = objc_msgSend_componentsWithString_(MEMORY[0x277CCACE0], v5, stringCopy);
  objc_msgSend_applyDefaultParametersToServiceURLComponents_(MEMORY[0x277CBC1F0], v8, v7);
  v11 = objc_msgSend_URL(v7, v9, v10);

  if (!v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = stringCopy;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Couldn't generate URL from entitlement string %{public}@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)entitlementURLForServiceName:(id)name container:(id)container
{
  nameCopy = name;
  containerCopy = container;
  v10 = objc_msgSend_entitlements(containerCopy, v8, v9);
  v13 = objc_msgSend_codeServiceURLByContainerAndServiceEntitlement(v10, v11, v12);
  v16 = objc_msgSend_containerID(containerCopy, v14, v15);
  v19 = objc_msgSend_containerIdentifier(v16, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(v13, v20, v19);
  v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, nameCopy);

  if (v23 || (objc_msgSend_entitlements(containerCopy, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_codeServiceURLByServiceEntitlement(v26, v27, v28), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v29, v30, nameCopy), v23 = objc_claimAutoreleasedReturnValue(), v29, v26, v23) || (objc_msgSend_entitlements(containerCopy, v24, v31), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_codeServiceURLEntitlement(v32, v33, v34), v23 = objc_claimAutoreleasedReturnValue(), v32, v23))
  {
    v35 = objc_msgSend_URLFromEntitlementString_(self, v24, v23);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v41.receiver = self;
  v41.super_class = CKDCodeFunctionInvokeOperation;
  if ([(CKDOperation *)&v41 validateAgainstLiveContainer:containerCopy error:error])
  {
    v9 = objc_msgSend_operationInfo(self, v7, v8);
    v12 = objc_msgSend_clientRuntimeProvidedServiceURL(v9, v10, v11);

    if (!v12)
    {
      IsLocalBit = objc_msgSend_legacyIsLocalBit(v9, v13, v14);
      v25 = objc_opt_class();
      v28 = v25;
      if (!IsLocalBit)
      {
        v32 = objc_msgSend_serviceName(self, v26, v27);
        v34 = objc_msgSend_entitlementURLForServiceName_container_(v28, v33, v32, containerCopy);
        objc_msgSend_setResolvedBaseURL_(self, v35, v34);

        goto LABEL_15;
      }

      v21 = objc_msgSend_URLFromEntitlementString_(v25, v26, @"http://127.0.0.1:31234");
LABEL_8:
      v29 = v21;
      objc_msgSend_setResolvedBaseURL_(self, v22, v21);

LABEL_15:
      v23 = 1;
      goto LABEL_16;
    }

    v15 = objc_msgSend_entitlements(containerCopy, v13, v14);
    hasExplicitCodeOperationURLEntitlement = objc_msgSend_hasExplicitCodeOperationURLEntitlement(v15, v16, v17);

    if (hasExplicitCodeOperationURLEntitlement)
    {
      v21 = objc_msgSend_clientRuntimeProvidedServiceURL(v9, v19, v20);
      goto LABEL_8;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v30 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v37 = v30;
      v40 = objc_msgSend_clientRuntimeProvidedServiceURL(v9, v38, v39);
      *buf = 138543362;
      v43 = v40;
      _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "Un-entitled client is not allowed to set explicit code operation url of %{public}@", buf, 0xCu);

      if (error)
      {
        goto LABEL_13;
      }
    }

    else if (error)
    {
LABEL_13:
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 1017, @"Process not entitled to set explicit code operation url");
      *error = v23 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v23 = 0;
    goto LABEL_16;
  }

  v23 = 0;
LABEL_17:

  return v23;
}

@end