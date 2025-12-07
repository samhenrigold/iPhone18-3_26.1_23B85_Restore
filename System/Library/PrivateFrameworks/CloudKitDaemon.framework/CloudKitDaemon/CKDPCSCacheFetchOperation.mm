@interface CKDPCSCacheFetchOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)canBeUsedForOperation:(id)operation withOptions:(unint64_t)options;
- (BOOL)hasAllPCSData;
- (BOOL)makeStateTransition;
- (CKDPCSCacheFetchOperation)initWithOperationInfo:(id)info container:(id)container;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_willRetryFetch;
- (void)main;
@end

@implementation CKDPCSCacheFetchOperation

- (BOOL)makeStateTransition
{
  v124 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_hasAllPCSData(self, a2, v2))
  {
    if (objc_msgSend_state(self, v4, v5) > 7)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v30 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v31 = v30;
        v34 = objc_msgSend_operationID(self, v32, v33);
        v37 = objc_msgSend_itemTypeName(self, v35, v36);
        v40 = objc_msgSend_itemID(self, v38, v39);
        v118 = 138543874;
        v119 = v34;
        v120 = 2114;
        v121 = v37;
        v122 = 2112;
        v123 = v40;
        _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has a decrypted PCS blob for %{public}@ %@.", &v118, 0x20u);
      }

LABEL_34:
      objc_msgSend_setState_(self, v7, 0xFFFFFFFFLL);
      v57 = objc_msgSend_error(self, v55, v56);
      objc_msgSend_finishWithError_(self, v58, v57);
      goto LABEL_35;
    }

    objc_msgSend_setState_(self, v6, 7);
  }

  v9 = objc_msgSend_state(self, v4, v5);
  LOBYTE(v10) = 1;
  if (v9 <= 4)
  {
    if (v9 <= 2)
    {
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          return v10;
        }

        v11 = objc_msgSend_pcsData(self, v7, v8);

        selfCopy2 = self;
        if (!v11)
        {
          if ((objc_msgSend_fetchOptions(self, v12, v13) & 2) == 0)
          {
            objc_msgSend_setState_(self, v15, 3);

            LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__fetchPCSDataFromServer, v16);
            return v10;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v93 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
          {
            v110 = v93;
            v113 = objc_msgSend_itemTypeName(self, v111, v112);
            v116 = objc_msgSend_itemID(self, v114, v115);
            v118 = 138543618;
            v119 = v113;
            v120 = 2112;
            v121 = v116;
            _os_log_debug_impl(&dword_22506F000, v110, OS_LOG_TYPE_DEBUG, "Not fetching PCS data for %{public}@ %@ from the network because a local only fetch was requested", &v118, 0x16u);
          }

          v96 = objc_msgSend_fetchError(self, v94, v95);
          v99 = objc_msgSend_domain(v96, v97, v98);
          v100 = *MEMORY[0x277CBC120];
          if (objc_msgSend_isEqualToString_(v99, v101, *MEMORY[0x277CBC120]))
          {
            v104 = objc_msgSend_fetchError(self, v102, v103);
            v107 = objc_msgSend_code(v104, v105, v106);

            if (v107 == 5010)
            {
              goto LABEL_79;
            }
          }

          else
          {
          }

          v44 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v108, v100, 5007, @"PCS fetch requested local cache only");
          objc_msgSend_setFetchError_(self, v109, v44);
LABEL_78:

LABEL_79:
          LOBYTE(v10) = 0;
          return v10;
        }

        goto LABEL_60;
      }

      goto LABEL_19;
    }

    if (v9 == 3)
    {
      v68 = objc_msgSend_fetchError(self, v7, v8);

      if (!v68)
      {
        selfCopy2 = self;
LABEL_60:
        objc_msgSend_setState_(selfCopy2, v12, 4);

        LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__createAdditionalPCS, v90);
        return v10;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v69 = *MEMORY[0x277CBC858];
      v10 = os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        v44 = v69;
        v47 = objc_msgSend_itemTypeName(self, v70, v71);
        v50 = objc_msgSend_itemID(self, v72, v73);
        v53 = objc_msgSend_fetchError(self, v74, v75);
        v118 = 138543874;
        v119 = v47;
        v120 = 2112;
        v121 = v50;
        v122 = 2112;
        v123 = v53;
        v54 = "Failed to fetch PCS data from the server for %{public}@ %@: %@";
        goto LABEL_48;
      }
    }

    else
    {
      v41 = objc_msgSend_fetchError(self, v7, v8);

      if (v41)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v43 = *MEMORY[0x277CBC858];
        v10 = os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG);
        if (v10)
        {
          v44 = v43;
          v47 = objc_msgSend_itemTypeName(self, v45, v46);
          v50 = objc_msgSend_itemID(self, v48, v49);
          v53 = objc_msgSend_fetchError(self, v51, v52);
          v118 = 138543874;
          v119 = v47;
          v120 = 2112;
          v121 = v50;
          v122 = 2112;
          v123 = v53;
          v54 = "Failed to save PCS data to the server for %{public}@ %@: %@";
LABEL_48:
          _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, v54, &v118, 0x20u);

          goto LABEL_78;
        }
      }

      else
      {
        objc_msgSend_setState_(self, v42, 5);

        LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__fetchDependentPCS, v92);
      }
    }

    return v10;
  }

  if (v9 > 6)
  {
    if (v9 == 7)
    {
      objc_msgSend_setState_(self, v7, 8);

      LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__savePCSDataToCache, v76);
      return v10;
    }

    if (v9 != 8)
    {
      return v10;
    }

    goto LABEL_34;
  }

  if (v9 != 5)
  {
    v17 = objc_msgSend_fetchError(self, v7, v8);

    if (!v17)
    {
      objc_msgSend_setState_(self, v18, 7);

      LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__saveUpdatedPCSToServer, v91);
      return v10;
    }

    if (objc_msgSend_shouldRetry(self, v18, v19))
    {
      v22 = objc_msgSend_numRetries(self, v20, v21);
      v25 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v23, v24);
      v28 = objc_msgSend_PCSRetryCount(v25, v26, v27);

      if (v22 < v28)
      {
        objc_msgSend__willRetryFetch(self, v20, v21);
LABEL_19:
        objc_msgSend_setState_(self, v7, 2);

        LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__fetchPCSDataFromDatabase, v29);
        return v10;
      }
    }

    v77 = objc_msgSend_fetchError(self, v20, v21);
    objc_msgSend_setError_(self, v78, v77);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v79 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
LABEL_36:
      LOBYTE(v10) = 1;
      return v10;
    }

    v57 = v79;
    v82 = objc_msgSend_itemTypeName(self, v80, v81);
    v85 = objc_msgSend_operationID(self, v83, v84);
    v88 = objc_msgSend_error(self, v86, v87);
    v118 = 138543874;
    v119 = v82;
    v120 = 2114;
    v121 = v85;
    v122 = 2112;
    v123 = v88;
    _os_log_debug_impl(&dword_22506F000, v57, OS_LOG_TYPE_DEBUG, "%{public}@ PCS fetch operation %{public}@ has failed too many times. Giving up with error %@", &v118, 0x20u);

LABEL_35:
    goto LABEL_36;
  }

  v59 = objc_msgSend_fetchError(self, v7, v8);

  if (v59)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v61 = *MEMORY[0x277CBC858];
    v10 = os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      v44 = v61;
      v47 = objc_msgSend_itemTypeName(self, v62, v63);
      v50 = objc_msgSend_itemID(self, v64, v65);
      v53 = objc_msgSend_fetchError(self, v66, v67);
      v118 = 138543874;
      v119 = v47;
      v120 = 2112;
      v121 = v50;
      v122 = 2112;
      v123 = v53;
      v54 = "Failed to fetch dependent PCS data from the server for %{public}@ %@: %@";
      goto LABEL_48;
    }
  }

  else
  {
    objc_msgSend_setState_(self, v60, 6);

    LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__decryptPCS, v89);
  }

  return v10;
}

- (void)main
{
  objc_msgSend_hash(self, a2, v2);
  kdebug_trace();

  objc_msgSend_makeStateTransition_(self, v4, 0);
}

- (CKDPCSCacheFetchOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = CKDPCSCacheFetchOperation;
  v9 = [(CKDDatabaseOperation *)&v21 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_itemID(infoCopy, v7, v8);
    v11 = *(v9 + 63);
    *(v9 + 63) = v10;

    v14 = objc_msgSend_cache(infoCopy, v12, v13);
    v15 = *(v9 + 62);
    *(v9 + 62) = v14;

    *(v9 + 64) = objc_msgSend_options(infoCopy, v16, v17);
    v18 = dispatch_group_create();
    v19 = *(v9 + 61);
    *(v9 + 61) = v18;

    dispatch_group_enter(*(v9 + 61));
  }

  return v9;
}

- (BOOL)canBeUsedForOperation:(id)operation withOptions:(unint64_t)options
{
  optionsCopy = options;
  v21 = objc_msgSend_isNetworkingBehaviorEquivalentForOperation_(self, v7, v6) && (v10 = objc_msgSend_databaseScope(v6, v8, v9), v10 == objc_msgSend_databaseScope(self, v11, v12)) && (objc_msgSend_container(v6, v13, v14), v15 = v6 = operation;

  return v21;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 7)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDPCSCacheFetchOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854B878[state - 2];
  }

  return v5;
}

- (BOOL)hasAllPCSData
{
  v3 = objc_msgSend_pcsData(self, a2, v2);
  v6 = objc_msgSend_pcs(v3, v4, v5) != 0;

  return v6;
}

- (void)_willRetryFetch
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numRetries(self, a2, v2);
  objc_msgSend_setNumRetries_(self, v5, (v4 + 1));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v13 = v6;
    v16 = objc_msgSend_operationID(self, v14, v15);
    v19 = objc_msgSend_numRetries(self, v17, v18);
    v22 = objc_msgSend_fetchError(self, v20, v21);
    v25 = objc_msgSend_dependentPCSFetchError(self, v23, v24);
    v26 = 138544130;
    v27 = v16;
    v28 = 1024;
    v29 = v19;
    v30 = 2112;
    v31 = v22;
    v32 = 2112;
    v33 = v25;
    _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Retrying PCS fetch operation %{public}@ after failure %d with error %@, dependent PCS fetch error %@", &v26, 0x26u);
  }

  objc_msgSend_setFetchError_(self, v7, 0);
  objc_msgSend_setDependentPCSFetchError_(self, v8, 0);
  objc_msgSend_setPcsData_(self, v9, 0);
  objc_msgSend_setDidFetchData_(self, v10, 0);
  objc_msgSend_setWasFetchedFromCache_(self, v11, 0);
  objc_msgSend_setShouldRetry_(self, v12, 0);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_hash(self, v5, v6);
  kdebug_trace();
  v9 = objc_msgSend_error(self, v7, v8);

  if (!v9)
  {
    v12 = objc_msgSend_fetchError(self, v10, v11);
    objc_msgSend_setError_(self, v13, v12);
  }

  v14 = objc_msgSend_error(self, v10, v11);

  if (v14)
  {
    objc_msgSend_setPcsData_(self, v15, 0);
  }

  v19.receiver = self;
  v19.super_class = CKDPCSCacheFetchOperation;
  [(CKDOperation *)&v19 _finishOnCallbackQueueWithError:errorCopy];
  v18 = objc_msgSend_fetchGroup(self, v16, v17);
  dispatch_group_leave(v18);
}

@end