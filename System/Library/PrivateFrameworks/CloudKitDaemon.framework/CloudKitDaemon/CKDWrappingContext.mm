@interface CKDWrappingContext
- (CKDWrappingContext)initWithRecordID:(id)d fieldName:(id)name mergeableDeltaID:(id)iD fileSignature:(id)signature referenceSignature:(id)referenceSignature;
- (id)assetContextString;
- (id)encryptedDataContextString;
@end

@implementation CKDWrappingContext

- (id)assetContextString
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_fileSignature(self, a2, v2);
  if (!v4 || (v7 = v4, objc_msgSend_referenceSignature(self, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_FAULT))
    {
      v60 = v11;
      v63 = objc_msgSend_fileSignature(self, v61, v62);
      v66 = objc_msgSend_referenceSignature(self, v64, v65);
      *buf = 138412546;
      v68 = v63;
      v69 = 2112;
      v70 = v66;
      _os_log_fault_impl(&dword_22506F000, v60, OS_LOG_TYPE_FAULT, "Invalid wrapping context for generating asset context string. File signature: %@. Reference signature: %@.", buf, 0x16u);
    }
  }

  v12 = MEMORY[0x277CCAB68];
  v13 = objc_msgSend_recordID(self, v9, v10);
  v16 = objc_msgSend_zoneID(v13, v14, v15);
  v19 = objc_msgSend_zoneName(v16, v17, v18);
  v22 = objc_msgSend_recordID(self, v20, v21);
  v25 = objc_msgSend_recordName(v22, v23, v24);
  v28 = objc_msgSend_fieldName(self, v26, v27);
  v30 = objc_msgSend_stringWithFormat_(v12, v29, @"%@-%@-%@", v19, v25, v28);

  v33 = objc_msgSend_mergeableDeltaID(self, v31, v32);

  if (v33)
  {
    v36 = objc_msgSend_mergeableDeltaID(self, v34, v35);
    v39 = objc_msgSend_valueID(v36, v37, v38);
    v42 = objc_msgSend_name(v39, v40, v41);
    v45 = objc_msgSend_mergeableDeltaID(self, v43, v44);
    v48 = objc_msgSend_deltaIdentifier(v45, v46, v47);
    objc_msgSend_appendFormat_(v30, v49, @"-%@-%@", v42, v48);
  }

  v50 = objc_msgSend_fileSignature(self, v34, v35);
  v52 = objc_msgSend_base64EncodedStringWithOptions_(v50, v51, 0);
  v55 = objc_msgSend_referenceSignature(self, v53, v54);
  v57 = objc_msgSend_base64EncodedStringWithOptions_(v55, v56, 0);
  objc_msgSend_appendFormat_(v30, v58, @"-%@-%@", v52, v57);

  return v30;
}

- (CKDWrappingContext)initWithRecordID:(id)d fieldName:(id)name mergeableDeltaID:(id)iD fileSignature:(id)signature referenceSignature:(id)referenceSignature
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  signatureCopy = signature;
  referenceSignatureCopy = referenceSignature;
  if (dCopy && nameCopy)
  {
    v28.receiver = self;
    v28.super_class = CKDWrappingContext;
    v17 = [(CKDWrappingContext *)&v28 init];
    if (v17)
    {
      v18 = CKProcessIndexedArrayKey();
      v19 = 0;
      v20 = v19;
      if (v19)
      {
        v26 = signatureCopy;
        v21 = iDCopy;
        v22 = v19;

        nameCopy = v22;
        iDCopy = v21;
        signatureCopy = v26;
      }

      objc_storeStrong(&v17->_recordID, d);
      objc_storeStrong(&v17->_fieldName, nameCopy);
      objc_storeStrong(&v17->_mergeableDeltaID, iD);
      objc_storeStrong(&v17->_fileSignature, signature);
      objc_storeStrong(&v17->_referenceSignature, referenceSignature);
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v30 = dCopy;
      v31 = 2114;
      v32 = nameCopy;
      _os_log_fault_impl(&dword_22506F000, v24, OS_LOG_TYPE_FAULT, "Wrapping context requires a non-nil recordID and field. RecordID: %@, field: %{public}@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encryptedDataContextString
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_recordID(self, a2, v2);
  v8 = objc_msgSend_zoneID(v5, v6, v7);
  v11 = objc_msgSend_zoneName(v8, v9, v10);
  v14 = objc_msgSend_recordID(self, v12, v13);
  v17 = objc_msgSend_recordName(v14, v15, v16);
  v20 = objc_msgSend_fieldName(self, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v4, v21, @"%@-%@-%@", v11, v17, v20);

  return v22;
}

@end