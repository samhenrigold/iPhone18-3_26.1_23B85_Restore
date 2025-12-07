@interface CKMergeableRecordValue
- (BOOL)addDeltasToSaveFromMergeable:(id)mergeable error:(id *)error;
- (BOOL)hasAssetBackedDeltas;
- (BOOL)mergeIntoMergeable:(id)mergeable error:(id *)error;
- (BOOL)mergeRecordValue:(id)value error:(id *)error;
- (CKMergeableRecordValue)initWithCoder:(id)coder;
- (CKMergeableRecordValue)initWithValueID:(id)d;
- (CKMultiValueMergeableDeltaRegister)multiValueRegister;
- (id)CKShortDescriptionRedact:(BOOL)redact;
- (id)deliverableDeltasWithCurrentStateVector:(id)vector usingDeliveryRequirements:(unint64_t)requirements;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)addServerDeltaMetadatas:(id)metadatas;
- (void)addUnmergedDeltas:(id)deltas;
- (void)didMergeDeltas:(id)deltas;
- (void)didSaveDeltas:(id)deltas replacementRequests:(id)requests;
- (void)encodeWithCoder:(id)coder;
- (void)mergeLastKnownServerTimestampVector:(id)vector;
- (void)mergeLastKnownServerTimestampVectorFromDeltas:(id)deltas;
- (void)sanityCheckDeltas:(id)deltas;
- (void)setLastKnownServerTimestampVector:(id)vector;
@end

@implementation CKMergeableRecordValue

- (CKMergeableRecordValue)initWithValueID:(id)d
{
  dCopy = d;
  v25.receiver = self;
  v25.super_class = CKMergeableRecordValue;
  v6 = [(CKMergeableRecordValue *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_valueID, d);
    v10 = objc_msgSend_set(MEMORY[0x1E695DFD8], v8, v9);
    deltasToSave = v7->_deltasToSave;
    v7->_deltasToSave = v10;

    v14 = objc_msgSend_set(MEMORY[0x1E695DFD8], v12, v13);
    unmergedDeltas = v7->_unmergedDeltas;
    v7->_unmergedDeltas = v14;

    v7->_encryptMetadataTernary = -1;
    v18 = objc_msgSend_set(MEMORY[0x1E695DFD8], v16, v17);
    serverDeltaMetadatas = v7->_serverDeltaMetadatas;
    v7->_serverDeltaMetadatas = v18;

    v22 = objc_msgSend_array(MEMORY[0x1E695DEC8], v20, v21);
    pendingReplacementRequests = v7->_pendingReplacementRequests;
    v7->_pendingReplacementRequests = v22;

    *&v7->_isValueIDKnownToServer = 256;
  }

  return v7;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v5 = [CKMergeableRecordValueDescription alloc];
  v8 = objc_msgSend_initWithMergeableRecordValue_shortDescription_(v5, v6, self, 0);
  objc_msgSend_CKDescribePropertiesUsing_(v8, v7, usingCopy);
}

- (id)CKShortDescriptionRedact:(BOOL)redact
{
  redactCopy = redact;
  v5 = [CKMergeableRecordValueDescription alloc];
  v7 = objc_msgSend_initWithMergeableRecordValue_shortDescription_(v5, v6, self, 1);
  v10 = v7;
  if (redactCopy)
  {
    objc_msgSend_redactedDescription(v7, v8, v9);
  }

  else
  {
    objc_msgSend_description(v7, v8, v9);
  }
  v11 = ;

  return v11;
}

- (CKMergeableRecordValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_valueID);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v5, v6);
  valueID = self->_valueID;
  self->_valueID = v8;

  v11 = objc_msgSend_initWithValueID_(self, v10, self->_valueID);
  if (v11)
  {
    v12 = NSStringFromSelector(sel_isValueIDKnownToServer);
    v11->_isValueIDKnownToServer = objc_msgSend_decodeBoolForKey_(coderCopy, v13, v12);

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v18 = objc_msgSend_setWithObjects_(v14, v17, v15, v16, 0);
    v19 = NSStringFromSelector(sel_deltasToSave);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v20, v18, v19);
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = objc_opt_new();
    }

    deltasToSave = v11->_deltasToSave;
    v11->_deltasToSave = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v29 = objc_msgSend_setWithObjects_(v25, v28, v26, v27, 0);
    v30 = NSStringFromSelector(sel_pendingReplacementRequests);
    v32 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v31, v29, v30);
    v35 = v32;
    if (v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = objc_msgSend_array(MEMORY[0x1E695DEC8], v33, v34);
    }

    pendingReplacementRequests = v11->_pendingReplacementRequests;
    v11->_pendingReplacementRequests = v36;

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v42 = objc_msgSend_setWithObjects_(v38, v41, v39, v40, 0);
    v43 = NSStringFromSelector(sel_unmergedDeltas);
    v45 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v44, v42, v43);
    v46 = v45;
    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = objc_opt_new();
    }

    unmergedDeltas = v11->_unmergedDeltas;
    v11->_unmergedDeltas = v47;

    v49 = objc_opt_class();
    v50 = NSStringFromSelector(sel_lastKnownServerTimestampVector);
    v52 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v51, v49, v50);
    lastKnownServerTimestampVector = v11->_lastKnownServerTimestampVector;
    v11->_lastKnownServerTimestampVector = v52;

    v54 = NSStringFromSelector(sel_encryptMetadataTernary);
    v11->_encryptMetadataTernary = objc_msgSend_decodeIntegerForKey_(coderCopy, v55, v54);

    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = objc_opt_class();
    v60 = objc_msgSend_setWithObjects_(v56, v59, v57, v58, 0);
    v61 = NSStringFromSelector(sel_serverDeltaMetadatas);
    v63 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v62, v60, v61);
    serverDeltaMetadatas = v11->_serverDeltaMetadatas;
    v11->_serverDeltaMetadatas = v63;

    v65 = objc_opt_class();
    v66 = NSStringFromSelector(sel_multiValueRegisterState);
    v68 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v67, v65, v66);
    multiValueRegisterState = v11->_multiValueRegisterState;
    v11->_multiValueRegisterState = v68;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  valueID = self->_valueID;
  v5 = NSStringFromSelector(sel_valueID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, valueID, v5);

  isValueIDKnownToServer = self->_isValueIDKnownToServer;
  v8 = NSStringFromSelector(sel_isValueIDKnownToServer);
  objc_msgSend_encodeBool_forKey_(coderCopy, v9, isValueIDKnownToServer, v8);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (deltasToSave = self->_deltasToSave, NSStringFromSelector(sel_deltasToSave), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_encodeObject_forKey_(coderCopy, v12, deltasToSave, v11), v11, pendingReplacementRequests = self->_pendingReplacementRequests, NSStringFromSelector(sel_pendingReplacementRequests), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_encodeObject_forKey_(coderCopy, v15, pendingReplacementRequests, v14), v14, (byte_1EA90C538 & 1) == 0))
  {
    unmergedDeltas = self->_unmergedDeltas;
    v17 = NSStringFromSelector(sel_unmergedDeltas);
    objc_msgSend_encodeObject_forKey_(coderCopy, v18, unmergedDeltas, v17);
  }

  lastKnownServerTimestampVector = self->_lastKnownServerTimestampVector;
  v20 = NSStringFromSelector(sel_lastKnownServerTimestampVector);
  objc_msgSend_encodeObject_forKey_(coderCopy, v21, lastKnownServerTimestampVector, v20);

  encryptMetadataTernary = self->_encryptMetadataTernary;
  v23 = NSStringFromSelector(sel_encryptMetadataTernary);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v24, encryptMetadataTernary, v23);

  serverDeltaMetadatas = self->_serverDeltaMetadatas;
  v26 = NSStringFromSelector(sel_serverDeltaMetadatas);
  objc_msgSend_encodeObject_forKey_(coderCopy, v27, serverDeltaMetadatas, v26);

  multiValueRegisterState = self->_multiValueRegisterState;
  v29 = NSStringFromSelector(sel_multiValueRegisterState);
  objc_msgSend_encodeObject_forKey_(coderCopy, v30, multiValueRegisterState, v29);
}

- (CKMultiValueMergeableDeltaRegister)multiValueRegister
{
  v38 = *MEMORY[0x1E69E9840];
  if ((byte_1EA90C538 & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1883EA000, v4, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Multi-value register accessed outside the client process", buf, 2u);
    }
  }

  v5 = objc_msgSend_multiValueRegisterState(self, a2, v2);
  if (v5)
  {
    v6 = v5;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v11 = objc_msgSend_vector(v6, v9, v10);
      v14 = objc_msgSend_CKVeryShortDescription(self, v12, v13);
      *buf = 138412546;
      v35 = v11;
      v36 = 2112;
      v37 = v14;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "Loading multi-value register state with vector %@ for mergeable record value %@", buf, 0x16u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      v29 = v15;
      v32 = objc_msgSend_CKVeryShortDescription(self, v30, v31);
      *buf = 138412290;
      v35 = v32;
      _os_log_debug_impl(&dword_1883EA000, v29, OS_LOG_TYPE_DEBUG, "Creating multi-value register state for mergeable record value %@", buf, 0xCu);
    }

    v6 = objc_opt_new();
    objc_msgSend_setMultiValueRegisterState_(self, v16, v6);
  }

  v17 = [CKMultiValueMergeableDeltaRegister alloc];
  v33 = 0;
  v19 = objc_msgSend_initWithPersistedState_contents_error_(v17, v18, v6, 0, &v33);
  v20 = v33;
  v23 = v20;
  if (!v19)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = objc_msgSend_description(v20, v21, v22);
    objc_msgSend_raise_format_(v24, v27, v25, @"Failed to initialize CKMultiValueMergeableDeltaRegister: %@", v26);
  }

  return v19;
}

- (void)setLastKnownServerTimestampVector:(id)vector
{
  if (self->_lastKnownServerTimestampVector != vector)
  {
    v5 = objc_msgSend_mutableCopy(vector, a2, vector);
    lastKnownServerTimestampVector = self->_lastKnownServerTimestampVector;
    self->_lastKnownServerTimestampVector = v5;

    MEMORY[0x1EEE66BB8](v5, lastKnownServerTimestampVector);
  }
}

- (BOOL)mergeIntoMergeable:(id)mergeable error:(id *)error
{
  v73 = *MEMORY[0x1E69E9840];
  mergeableCopy = mergeable;
  if (!objc_msgSend_conformsToProtocol_(mergeableCopy, v7, &unk_1EFA8BBD8))
  {
    if (!objc_msgSend_conformsToProtocol_(mergeableCopy, v8, &unk_1EFA8BB38))
    {
      v32 = NSStringFromProtocol(&unk_1EFA8BB38);
      v33 = NSStringFromProtocol(&unk_1EFA8BBD8);
      v29 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v34, @"CKErrorDomain", 12, @"Mergeable should conform to either %@ or %@", v32, v33);

      v24 = 0;
      goto LABEL_55;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Merging record value into non-versioned mergeable %@", buf, 0xCu);
    }

    v15 = mergeableCopy;
    v18 = objc_msgSend_multiValueRegister(self, v16, v17);
    if (objc_opt_respondsToSelector())
    {
      v21 = objc_msgSend_deltaDeliveryRequirements(v18, v19, v20);
    }

    else
    {
      v21 = -1;
    }

    v35 = objc_msgSend_stateVector(v18, v19, v20);
    v24 = objc_msgSend_deliverableDeltasWithCurrentStateVector_usingDeliveryRequirements_(self, v36, v35, v21);

    if (objc_msgSend_count(v24, v37, v38))
    {
      v67 = 0;
      v40 = objc_msgSend_mergeDeltas_error_(v18, v39, v24, &v67);
      v41 = v67;
      if (v40)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v42 = ck_log_facility_distributed_sync;
        if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
        {
          v62 = v42;
          v65 = objc_msgSend_count(v24, v63, v64);
          *buf = 134218242;
          selfCopy4 = v65;
          v71 = 2112;
          v72 = v18;
          _os_log_debug_impl(&dword_1883EA000, v62, OS_LOG_TYPE_DEBUG, "Merged %lu deltas into multi-value register %@", buf, 0x16u);
        }

        v45 = objc_msgSend_contents(v18, v43, v44);
        v66 = v41;
        v46 = v15;
        v48 = objc_msgSend_mergeDeltas_error_(v15, v47, v45, &v66);
        v29 = v66;

        if (v48)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v49 = ck_log_facility_distributed_sync;
          if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1883EA000, v49, OS_LOG_TYPE_DEBUG, "Merged multi-value register changes into mergeable", buf, 2u);
          }

          v52 = objc_msgSend_persistedState(v18, v50, v51);
          objc_msgSend_setMultiValueRegisterState_(self, v53, v52);

          goto LABEL_35;
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v15 = v46;
        v58 = ck_log_facility_distributed_sync;
        if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy4 = v29;
          _os_log_error_impl(&dword_1883EA000, v58, OS_LOG_TYPE_ERROR, "Error merging multi-value register changes into mergeable: %@", buf, 0xCu);
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v57 = ck_log_facility_distributed_sync;
        if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          selfCopy4 = v18;
          v71 = 2112;
          v72 = v41;
          _os_log_error_impl(&dword_1883EA000, v57, OS_LOG_TYPE_ERROR, "Error merging deltas into multi-value register %@: %@", buf, 0x16u);
        }

        v29 = v41;
      }

      goto LABEL_55;
    }

    v29 = 0;
LABEL_35:

    goto LABEL_36;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v9 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "Merging record value into versioned mergeable %@", buf, 0xCu);
  }

  v10 = mergeableCopy;
  if (objc_opt_respondsToSelector())
  {
    v13 = objc_msgSend_deltaDeliveryRequirements(v10, v11, v12);
  }

  else
  {
    v13 = -1;
  }

  v22 = objc_msgSend_stateVector(v10, v11, v12);
  v24 = objc_msgSend_deliverableDeltasWithCurrentStateVector_usingDeliveryRequirements_(self, v23, v22, v13);

  if (!objc_msgSend_count(v24, v25, v26))
  {
    v29 = 0;
LABEL_36:

LABEL_37:
    if (objc_msgSend_count(v24, v30, v31))
    {
      objc_msgSend_didMergeDeltas_(self, v54, v24);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v55 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_debug_impl(&dword_1883EA000, v55, OS_LOG_TYPE_DEBUG, "Done merging record value %@", buf, 0xCu);
    }

    v56 = 1;
    if (error)
    {
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v68 = 0;
  v28 = objc_msgSend_mergeDeltas_error_(v10, v27, v24, &v68);
  v29 = v68;

  if (v28)
  {
    goto LABEL_37;
  }

LABEL_55:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v59 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy4 = self;
    v71 = 2112;
    v72 = v29;
    _os_log_error_impl(&dword_1883EA000, v59, OS_LOG_TYPE_ERROR, "Error merging record value %@: %@", buf, 0x16u);
  }

  v56 = 0;
  if (error)
  {
LABEL_60:
    v60 = v29;
    *error = v29;
  }

LABEL_61:

  return v56;
}

- (BOOL)mergeRecordValue:(id)value error:(id *)error
{
  v227 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (self != valueCopy)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = valueCopy;
      v219 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Merging record value %@ into %@", buf, 0x16u);
    }

    v10 = objc_msgSend_valueID(self, v8, v9);
    if (v10)
    {
      v13 = v10;
      v14 = objc_msgSend_valueID(self, v11, v12);
      v17 = objc_msgSend_valueID(valueCopy, v15, v16);
      isEqual = objc_msgSend_isEqual_(v14, v18, v17);

      if ((isEqual & 1) == 0)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v58 = ck_log_facility_distributed_sync;
        if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1883EA000, v58, OS_LOG_TYPE_ERROR, "Can't merge a mergeable with a different value ID.", buf, 2u);
        }

        v61 = objc_msgSend_valueID(valueCopy, v59, v60);

        if (v61)
        {
          v64 = objc_msgSend_valueID(self, v62, v63);
          v67 = objc_msgSend_valueID(valueCopy, v65, v66);
          v69 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v68, @"CKErrorDomain", 150, @"Other mergeable value ID doesn't match this value. self=%@ other=%@", v64, v67);

          if (!error)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v69 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v62, @"CKErrorDomain", 12, @"Tried to merge value without an ID into a value that has an ID. self=%@ other=%@", self, valueCopy);
          if (!error)
          {
            goto LABEL_89;
          }
        }

        goto LABEL_88;
      }
    }

    v20 = objc_msgSend_valueID(self, v11, v12);

    if (!v20)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v23 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
      {
        v198 = v23;
        v201 = objc_msgSend_valueID(valueCopy, v199, v200);
        *buf = 138412290;
        selfCopy2 = v201;
        _os_log_debug_impl(&dword_1883EA000, v198, OS_LOG_TYPE_DEBUG, "Assigning value ID from other value %@", buf, 0xCu);
      }

      v26 = objc_msgSend_valueID(valueCopy, v24, v25);
      objc_msgSend_setValueID_(self, v27, v26);
    }

    if ((objc_msgSend_isValueIDKnownToServer(self, v21, v22) & 1) == 0 && objc_msgSend_isValueIDKnownToServer(valueCopy, v28, v29))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v30 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1883EA000, v30, OS_LOG_TYPE_DEBUG, "Setting isValueIDKnownToServer during merge", buf, 2u);
      }

      objc_msgSend_setIsValueIDKnownToServer_(self, v31, 1);
    }

    v32 = objc_msgSend_unmergedDeltas(valueCopy, v28, v29);
    v35 = objc_msgSend_count(v32, v33, v34);

    if (v35)
    {
      v38 = objc_msgSend_unmergedDeltas(self, v36, v37);
      v41 = objc_msgSend_unmergedDeltas(valueCopy, v39, v40);
      v43 = objc_msgSend_setByAddingObjectsFromSet_(v38, v42, v41);
      objc_msgSend_setUnmergedDeltas_(self, v44, v43);
    }

    v45 = objc_msgSend_lastKnownServerTimestampVector(valueCopy, v36, v37);

    if (v45)
    {
      v48 = objc_msgSend_lastKnownServerTimestampVector(self, v46, v47);

      if (v48)
      {
        v51 = objc_msgSend_lastKnownServerTimestampVector(self, v49, v50);
        v54 = objc_msgSend_lastKnownServerTimestampVector(valueCopy, v52, v53);
        objc_msgSend_unionStateVector_(v51, v55, v54);
      }

      else
      {
        v51 = objc_msgSend_lastKnownServerTimestampVector(valueCopy, v49, v50);
        objc_msgSend_setLastKnownServerTimestampVector_(self, v70, v51);
      }
    }

    errorCopy = error;
    v71 = objc_msgSend_serverDeltaMetadatas(valueCopy, v46, v47);
    v74 = objc_msgSend_count(v71, v72, v73);

    if (v74)
    {
      v77 = objc_msgSend_serverDeltaMetadatas(self, v75, v76);
      v80 = objc_msgSend_serverDeltaMetadatas(valueCopy, v78, v79);
      v82 = objc_msgSend_setByAddingObjectsFromSet_(v77, v81, v80);
      objc_msgSend_setServerDeltaMetadatas_(self, v83, v82);
    }

    v208 = valueCopy;
    v84 = objc_opt_new();
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v87 = objc_msgSend_serverDeltaMetadatas(self, v85, v86);
    v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v88, &v213, v226, 16);
    if (v89)
    {
      v92 = v89;
      v93 = *v214;
      do
      {
        for (i = 0; i != v92; ++i)
        {
          if (*v214 != v93)
          {
            objc_enumerationMutation(v87);
          }

          v95 = objc_msgSend_replacedDeltaIdentifiers(*(*(&v213 + 1) + 8 * i), v90, v91);
          objc_msgSend_unionSet_(v84, v96, v95);
        }

        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v90, &v213, v226, 16);
      }

      while (v92);
    }

    if (objc_msgSend_count(v84, v97, v98))
    {
      v101 = objc_opt_new();
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      v104 = objc_msgSend_serverDeltaMetadatas(self, v102, v103);
      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, &v209, v225, 16);
      if (v106)
      {
        v109 = v106;
        v110 = *v210;
        do
        {
          for (j = 0; j != v109; ++j)
          {
            if (*v210 != v110)
            {
              objc_enumerationMutation(v104);
            }

            v112 = *(*(&v209 + 1) + 8 * j);
            v113 = objc_msgSend_identifier(v112, v107, v108);
            v115 = objc_msgSend_containsObject_(v84, v114, v113);

            if (v115)
            {
              objc_msgSend_addObject_(v101, v107, v112);
            }
          }

          v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v107, &v209, v225, 16);
        }

        while (v109);
      }

      if (objc_msgSend_count(v101, v116, v117))
      {
        v120 = objc_msgSend_serverDeltaMetadatas(self, v118, v119);
        v123 = objc_msgSend_mutableCopy(v120, v121, v122);

        objc_msgSend_minusSet_(v123, v124, v101);
        v127 = objc_msgSend_copy(v123, v125, v126);
        objc_msgSend_setServerDeltaMetadatas_(self, v128, v127);
      }
    }

    v129 = objc_msgSend_multiValueRegisterState(self, v99, v100);
    valueCopy = v208;
    if (v129)
    {
      v132 = v129;
      v133 = objc_msgSend_multiValueRegisterState(v208, v130, v131);
      if (v133)
      {
        v136 = v133;
        v137 = objc_msgSend_multiValueRegisterState(self, v134, v135);
        v140 = objc_msgSend_identifier(v137, v138, v139);
        v143 = objc_msgSend_multiValueRegisterState(v208, v141, v142);
        v146 = objc_msgSend_identifier(v143, v144, v145);
        v206 = objc_msgSend_isEqual_(v140, v147, v146);

        if ((v206 & 1) == 0)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v148 = ck_log_facility_distributed_sync;
          if (!os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
          {
LABEL_87:

            v69 = 0;
            error = errorCopy;
            if (!errorCopy)
            {
LABEL_89:
              v57 = v69 == 0;

              goto LABEL_90;
            }

LABEL_88:
            v186 = v69;
            *error = v69;
            goto LABEL_89;
          }

          v149 = v148;
          v150 = objc_opt_class();
          v151 = NSStringFromClass(v150);
          v152 = objc_opt_class();
          v153 = NSStringFromClass(v152);
          v154 = objc_opt_class();
          v155 = NSStringFromClass(v154);
          v156 = objc_opt_class();
          v157 = NSStringFromClass(v156);
          *buf = 138413058;
          selfCopy2 = v151;
          v219 = 2112;
          selfCopy = v153;
          v221 = 2112;
          v222 = v155;
          v223 = 2112;
          v224 = v157;
          _os_log_fault_impl(&dword_1883EA000, v149, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: Usage of %@ may be causing unbounded metadata growth on upload. When saving mergeable changes to CloudKit, you must set only your locally persisted %@ on a CKRecord. If a %@ is fetched from the server, it must be merged into your locally persisted %@ and not directly used for saving new mergeable changes, unless it's the initial fetch.", buf, 0x2Au);

LABEL_86:
          goto LABEL_87;
        }
      }

      else
      {
      }
    }

    v158 = objc_msgSend_multiValueRegisterState(v208, v130, v131);

    if (!v158)
    {
      goto LABEL_87;
    }

    v161 = objc_msgSend_multiValueRegisterState(self, v159, v160);
    if (v161)
    {
      v149 = v161;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v162 = ck_log_facility_distributed_sync;
      if (!os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_83;
      }

      v163 = v162;
      v166 = objc_msgSend_vector(v149, v164, v165);
      v169 = objc_msgSend_CKVeryShortDescription(self, v167, v168);
      *buf = 138412546;
      selfCopy2 = v166;
      v219 = 2112;
      selfCopy = v169;
      _os_log_debug_impl(&dword_1883EA000, v163, OS_LOG_TYPE_DEBUG, "Loading multi-value register state with vector %@ for mergeable record value %@", buf, 0x16u);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v170 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
      {
        v202 = v170;
        v205 = objc_msgSend_CKVeryShortDescription(self, v203, v204);
        *buf = 138412290;
        selfCopy2 = v205;
        _os_log_debug_impl(&dword_1883EA000, v202, OS_LOG_TYPE_DEBUG, "Creating multi-value register state for mergeable record value %@", buf, 0xCu);
      }

      v149 = objc_opt_new();
      objc_msgSend_setMultiValueRegisterState_(self, v171, v149);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

LABEL_83:
    v172 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      v188 = v172;
      v191 = objc_msgSend_multiValueRegisterState(v208, v189, v190);
      v194 = objc_msgSend_vector(v191, v192, v193);
      v197 = objc_msgSend_vector(v149, v195, v196);
      *buf = 138412546;
      selfCopy2 = v194;
      v219 = 2112;
      selfCopy = v197;
      _os_log_debug_impl(&dword_1883EA000, v188, OS_LOG_TYPE_DEBUG, "Merging remote multi-value register with vector %@ into local multi-value register with vector %@ during mergeable record value merge", buf, 0x16u);
    }

    v175 = objc_msgSend_multiValueRegisterState(self, v173, v174);
    v178 = objc_msgSend_vector(v175, v176, v177);
    v181 = objc_msgSend_multiValueRegisterState(v208, v179, v180);
    v184 = objc_msgSend_vector(v181, v182, v183);
    objc_msgSend_unionStateVector_(v178, v185, v184);

    goto LABEL_86;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v56 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_fault_impl(&dword_1883EA000, v56, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: Trying to merge CKMergeableRecordValue into itself: %@", buf, 0xCu);
  }

  v57 = 1;
LABEL_90:

  return v57;
}

- (id)deliverableDeltasWithCurrentStateVector:(id)vector usingDeliveryRequirements:(unint64_t)requirements
{
  v82 = *MEMORY[0x1E69E9840];
  vectorCopy = vector;
  v9 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v7, v8);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v12 = objc_msgSend_unmergedDeltas(self, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v69, v81, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v70;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v70 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v69 + 1) + 8 * i);
        v21 = objc_msgSend_metadata(v20, v15, v16);
        objc_msgSend_setObject_forKey_(v9, v22, v20, v21);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v69, v81, 16);
    }

    while (v17);
  }

  v23 = MEMORY[0x1E695DFD8];
  v24 = NSAllMapTableKeys(v9);
  v26 = objc_msgSend_setWithArray_(v23, v25, v24);
  v28 = objc_msgSend_deliverableDeltaMetadatasInDeltaSet_withMergeableValueCurrentStateVector_deliveryRequirements_(CKMergeableDeltaMetadata, v27, v26, vectorCopy, requirements);

  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = sub_188574758;
  v67[3] = &unk_1E70BDD70;
  v29 = v9;
  v68 = v29;
  v31 = objc_msgSend_CKMap_(v28, v30, v67);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v32 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
  {
    log = v32;
    v64 = objc_msgSend_count(v31, v44, v45);
    v65 = objc_msgSend_unmergedDeltas(self, v46, v47);
    v50 = objc_msgSend_count(v65, v48, v49);
    v53 = objc_msgSend_CKVeryShortDescription(self, v51, v52);
    *buf = 134218754;
    v74 = v64;
    v75 = 2048;
    v76 = v50;
    v77 = 2048;
    requirementsCopy = requirements;
    v79 = 2112;
    v80 = v53;
    v54 = v53;
    _os_log_debug_impl(&dword_1883EA000, log, OS_LOG_TYPE_DEBUG, "Found %ld deliverable deltas out of %ld unmerged deltas with delivery requirements %llu from %@", buf, 0x2Au);
  }

  v35 = objc_msgSend_count(v28, v33, v34);
  v38 = objc_msgSend_unmergedDeltas(self, v36, v37);
  v41 = objc_msgSend_count(v38, v39, v40);

  if (v35 != v41)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v42 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      v55 = v42;
      v56 = NSAllMapTableKeys(v29);
      v58 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v57, v56);
      v61 = objc_msgSend_allObjects(v28, v59, v60);
      v63 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v62, v61);
      *buf = 138412802;
      v74 = v58;
      v75 = 2112;
      v76 = v63;
      v77 = 2112;
      requirementsCopy = vectorCopy;
      _os_log_debug_impl(&dword_1883EA000, v55, OS_LOG_TYPE_DEBUG, "Combined delta directory: %@, combined deliverable deltas: %@, local state vector: %@", buf, 0x20u);
    }
  }

  return v31;
}

- (void)addUnmergedDeltas:(id)deltas
{
  v24 = *MEMORY[0x1E69E9840];
  deltasCopy = deltas;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
  {
    v17 = v5;
    v20 = 134218242;
    v21 = objc_msgSend_count(deltasCopy, v18, v19);
    v22 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Adding %ld unmerged deltas to %@", &v20, 0x16u);
  }

  v8 = objc_msgSend_unmergedDeltas(self, v6, v7);
  v11 = objc_msgSend_mutableCopy(v8, v9, v10);

  objc_msgSend_addObjectsFromArray_(v11, v12, deltasCopy);
  v15 = objc_msgSend_copy(v11, v13, v14);
  objc_msgSend_setUnmergedDeltas_(self, v16, v15);
}

- (void)didMergeDeltas:(id)deltas
{
  v54 = *MEMORY[0x1E69E9840];
  deltasCopy = deltas;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
  {
    v36 = v5;
    v39 = objc_msgSend_count(deltasCopy, v37, v38);
    v42 = objc_msgSend_CKVeryShortDescription(self, v40, v41);
    *buf = 134218242;
    v51 = v39;
    v52 = 2112;
    v53 = v42;
    _os_log_debug_impl(&dword_1883EA000, v36, OS_LOG_TYPE_DEBUG, "Did merge %ld deltas into %@", buf, 0x16u);
  }

  objc_msgSend_sanityCheckDeltas_(self, v6, deltasCopy);
  v9 = objc_msgSend_unmergedDeltas(self, v7, v8);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);

  v14 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v13, deltasCopy);
  objc_msgSend_minusSet_(v12, v15, v14);

  v43 = v12;
  v18 = objc_msgSend_copy(v12, v16, v17);
  objc_msgSend_setUnmergedDeltas_(self, v19, v18);

  v22 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v20, v21);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = deltasCopy;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v45, v49, 16);
  if (v25)
  {
    v28 = v25;
    v29 = *v46;
    do
    {
      v30 = 0;
      do
      {
        if (*v46 != v29)
        {
          objc_enumerationMutation(v23);
        }

        v32 = objc_msgSend_fileURL(*(*(&v45 + 1) + 8 * v30), v26, v27);
        if (v32)
        {
          v44 = 0;
          v33 = objc_msgSend_removeItemAtURL_error_(v22, v31, v32, &v44);
          v34 = v44;
          if ((v33 & 1) == 0)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v35 = ck_log_facility_distributed_sync;
            if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v51 = v34;
              _os_log_fault_impl(&dword_1883EA000, v35, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Failed to remove mergeable delta file after merging: %@", buf, 0xCu);
            }
          }
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v45, v49, 16);
    }

    while (v28);
  }
}

- (void)didSaveDeltas:(id)deltas replacementRequests:(id)requests
{
  v118 = *MEMORY[0x1E69E9840];
  deltasCopy = deltas;
  requestsCopy = requests;
  v8 = objc_opt_new();
  objc_msgSend_addObjectsFromArray_(v8, v9, deltasCopy);
  v11 = objc_msgSend_CKFlatMap_(requestsCopy, v10, &unk_1EFA2EC68);
  objc_msgSend_addObjectsFromArray_(v8, v12, v11);

  v13 = MEMORY[0x1E695DFA8];
  v15 = objc_msgSend_CKMap_(v8, v14, &unk_1EFA2EC88);
  v17 = objc_msgSend_setWithArray_(v13, v16, v15);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v18 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
  {
    v90 = v18;
    v93 = objc_msgSend_count(deltasCopy, v91, v92);
    v96 = objc_msgSend_count(v8, v94, v95);
    *buf = 134218240;
    v115 = v93;
    v116 = 2048;
    v117 = v96 - objc_msgSend_count(deltasCopy, v97, v98);
    _os_log_debug_impl(&dword_1883EA000, v90, OS_LOG_TYPE_DEBUG, "Did save %ld deltas and %ld replacement deltas to server", buf, 0x16u);
  }

  objc_msgSend_sanityCheckDeltas_(self, v19, v8);
  objc_msgSend_mergeLastKnownServerTimestampVectorFromDeltas_(self, v20, v8);
  v23 = objc_msgSend_serverDeltaMetadatas(self, v21, v22);
  v26 = objc_msgSend_mutableCopy(v23, v24, v25);

  objc_msgSend_unionSet_(v26, v27, v17);
  if (objc_msgSend_count(requestsCopy, v28, v29))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v101 = v8;
    v103 = deltasCopy;
    v32 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v115 = requestsCopy;
      _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "Will remove server metadatas for replacement requests: %@", buf, 0xCu);
    }

    v99 = v26;
    v33 = objc_opt_new();
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v102 = requestsCopy;
    v34 = requestsCopy;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v108, v113, 16);
    if (v36)
    {
      v39 = v36;
      v40 = *v109;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v109 != v40)
          {
            objc_enumerationMutation(v34);
          }

          v42 = objc_msgSend_deltaIdentifiersToReplace(*(*(&v108 + 1) + 8 * i), v37, v38);
          objc_msgSend_addObjectsFromArray_(v33, v43, v42);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v108, v113, 16);
      }

      while (v39);
    }

    v100 = v17;

    v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v47 = objc_msgSend_serverDeltaMetadatas(self, v45, v46);
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v104, v112, 16);
    if (v49)
    {
      v52 = v49;
      v53 = *v105;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v105 != v53)
          {
            objc_enumerationMutation(v47);
          }

          v55 = *(*(&v104 + 1) + 8 * j);
          v56 = objc_msgSend_identifier(v55, v50, v51);
          v58 = objc_msgSend_containsObject_(v33, v57, v56);

          if (v58)
          {
            objc_msgSend_addObject_(v44, v50, v55);
          }
        }

        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v104, v112, 16);
      }

      while (v52);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = v99;
    v17 = v100;
    v59 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v115 = v44;
      _os_log_debug_impl(&dword_1883EA000, v59, OS_LOG_TYPE_DEBUG, "Removing known server metadatas: %@", buf, 0xCu);
    }

    objc_msgSend_minusSet_(v99, v60, v44);

    requestsCopy = v102;
    deltasCopy = v103;
    v8 = v101;
  }

  v61 = objc_msgSend_copy(v26, v30, v31);
  objc_msgSend_setServerDeltaMetadatas_(self, v62, v61);

  v65 = objc_msgSend_deltasToSave(self, v63, v64);
  v68 = objc_msgSend_mutableCopy(v65, v66, v67);

  v70 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v69, deltasCopy);
  objc_msgSend_minusSet_(v68, v71, v70);

  v74 = objc_msgSend_copy(v68, v72, v73);
  objc_msgSend_setDeltasToSave_(self, v75, v74);

  v76 = MEMORY[0x1E695DFA8];
  v79 = objc_msgSend_pendingReplacementRequests(self, v77, v78);
  v81 = objc_msgSend_setWithArray_(v76, v80, v79);

  v83 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v82, requestsCopy);
  objc_msgSend_minusSet_(v81, v84, v83);

  v87 = objc_msgSend_allObjects(v81, v85, v86);
  objc_msgSend_setPendingReplacementRequests_(self, v88, v87);

  objc_msgSend_setSavedDeltaMetadatas_(self, v89, v17);
}

- (void)sanityCheckDeltas:(id)deltas
{
  v82 = *MEMORY[0x1E69E9840];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = deltas;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v77, v81, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v78;
    do
    {
      v8 = 0;
      do
      {
        if (*v78 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v77 + 1) + 8 * v8);
        v10 = objc_opt_new();
        v13 = objc_msgSend_metadata(v9, v11, v12);

        if (v13)
        {
          v16 = objc_msgSend_metadata(v9, v14, v15);
          v19 = objc_msgSend_vectors(v16, v17, v18);
          v22 = objc_msgSend_previous(v19, v20, v21);
          v25 = objc_msgSend_allSiteIdentifiers(v22, v23, v24);
          objc_msgSend_unionSet_(v10, v26, v25);

          v29 = objc_msgSend_metadata(v9, v27, v28);
          v32 = objc_msgSend_vectors(v29, v30, v31);
          v35 = objc_msgSend_contents(v32, v33, v34);
          v38 = objc_msgSend_allSiteIdentifiers(v35, v36, v37);
          objc_msgSend_unionSet_(v10, v39, v38);

          v42 = objc_msgSend_metadata(v9, v40, v41);
          v45 = objc_msgSend_vectors(v42, v43, v44);
          v48 = objc_msgSend_removals(v45, v46, v47);
          v51 = objc_msgSend_allSiteIdentifiers(v48, v49, v50);
          objc_msgSend_unionSet_(v10, v52, v51);

          v55 = objc_msgSend_metadata(v9, v53, v54);
          v58 = objc_msgSend_vectors(v55, v56, v57);
          v61 = objc_msgSend_dependencies(v58, v59, v60);
          v64 = objc_msgSend_allSiteIdentifiers(v61, v62, v63);
          objc_msgSend_unionSet_(v10, v65, v64);
        }

        if (objc_msgSend_count(v10, v14, v15) < 0x12D)
        {
          if (objc_msgSend_count(v10, v66, v67) < 0x65)
          {
            if (objc_msgSend_count(v10, v70, v71) < 0x33)
            {
              goto LABEL_15;
            }

            v74[0] = MEMORY[0x1E69E9820];
            v74[1] = 3221225472;
            v74[2] = sub_188575794;
            v74[3] = &unk_1E70BC388;
            v74[4] = self;
            v68 = v74;
            v69 = @"CKMergeableRecordValueSiteIdentifierLowLimitExceededFault";
          }

          else
          {
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = sub_188575688;
            v75[3] = &unk_1E70BC388;
            v75[4] = self;
            v68 = v75;
            v69 = @"CKMergeableRecordValueSiteIdentifierMediumLimitExceededFault";
          }
        }

        else
        {
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = sub_18857557C;
          v76[3] = &unk_1E70BC388;
          v76[4] = self;
          v68 = v76;
          v69 = @"CKMergeableRecordValueSiteIdentifierHighLimitExceededFault";
        }

        CKOncePerBoot(v69, v68);
LABEL_15:

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v72, &v77, v81, 16);
    }

    while (v6);
  }
}

- (void)addServerDeltaMetadatas:(id)metadatas
{
  metadatasCopy = metadatas;
  v10 = objc_msgSend_serverDeltaMetadatas(self, v5, v6);
  v8 = objc_msgSend_setByAddingObjectsFromArray_(v10, v7, metadatasCopy);

  objc_msgSend_setServerDeltaMetadatas_(self, v9, v8);
}

- (void)mergeLastKnownServerTimestampVector:(id)vector
{
  v24 = *MEMORY[0x1E69E9840];
  vectorCopy = vector;
  v7 = objc_msgSend_lastKnownServerTimestampVector(self, v5, v6);

  if (!v7)
  {
    v10 = objc_alloc_init(CKDistributedTimestampStateVector);
    objc_msgSend_setLastKnownServerTimestampVector_(self, v11, v10);
  }

  if (objc_msgSend_timestampCount(vectorCopy, v8, v9))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      v17 = v12;
      v19 = objc_msgSend_CKShortDescriptionRedact_(self, v18, 0);
      v20 = 138412546;
      v21 = vectorCopy;
      v22 = 2112;
      v23 = v19;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Merging last known timestamp %@ into %@", &v20, 0x16u);
    }

    v15 = objc_msgSend_lastKnownServerTimestampVector(self, v13, v14);
    objc_msgSend_unionStateVector_(v15, v16, vectorCopy);
  }
}

- (void)mergeLastKnownServerTimestampVectorFromDeltas:(id)deltas
{
  v45 = *MEMORY[0x1E69E9840];
  deltasCopy = deltas;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
  {
    v33 = v5;
    *buf = 134218242;
    v42 = objc_msgSend_count(deltasCopy, v34, v35);
    v43 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_1883EA000, v33, OS_LOG_TYPE_DEBUG, "Merging %lu deltas into %@", buf, 0x16u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = deltasCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v36, v40, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = objc_msgSend_metadata(v14, v9, v10, v36);
        v18 = objc_msgSend_vectors(v15, v16, v17);
        v21 = objc_msgSend_contents(v18, v19, v20);
        objc_msgSend_mergeLastKnownServerTimestampVector_(self, v22, v21);

        v25 = objc_msgSend_metadata(v14, v23, v24);
        v28 = objc_msgSend_vectors(v25, v26, v27);
        v31 = objc_msgSend_removals(v28, v29, v30);
        objc_msgSend_mergeLastKnownServerTimestampVector_(self, v32, v31);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v36, v40, 16);
    }

    while (v11);
  }
}

- (BOOL)addDeltasToSaveFromMergeable:(id)mergeable error:(id *)error
{
  v390 = *MEMORY[0x1E69E9840];
  v372 = 0;
  v373 = &v372;
  v374 = 0x3032000000;
  v375 = sub_1883ED8B0;
  v376 = sub_1883EF5AC;
  v377 = 0;
  v368 = 0;
  v369 = &v368;
  v370 = 0x2020000000;
  v371 = 1;
  mergeableCopy = mergeable;
  if (objc_msgSend_conformsToProtocol_(mergeableCopy, v6, &unk_1EFA8BBD8))
  {
    v9 = mergeableCopy;
    v11 = mergeableCopy;
  }

  else
  {
    v11 = objc_msgSend_multiValueRegister(self, v7, v8);
    v9 = mergeableCopy;
  }

  v12 = objc_msgSend_conformsToProtocol_(v9, v10, &unk_1EFA8BBD8);
  if (!v11)
  {
    if (error)
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *error = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v30, @"CKErrorDomain", 12, @"Tried to save a %@ without a mergeable: %@", v29, self);
    }

    goto LABEL_166;
  }

  v13 = v12;
  errorCopy = error;
  if ((v12 & 1) == 0)
  {
    v14 = v11;
    v15 = v11;
    v16 = v373 + 5;
    obj = v373[5];
    v18 = objc_msgSend_mergeableDeltasForMetadata_error_(mergeableCopy, v17, 0, &obj);
    objc_storeStrong(v16, obj);
    if (v18)
    {
      if (objc_msgSend_count(v18, v19, v20))
      {
        if (objc_msgSend_count(v18, v21, v22) < 2)
        {
          v365 = 0u;
          v366 = 0u;
          v363 = 0u;
          v364 = 0u;
          v24 = v18;
          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v34, &v363, v389, 16);
          if (v37)
          {
            v38 = *v364;
            while (2)
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v364 != v38)
                {
                  objc_enumerationMutation(v24);
                }

                v40 = objc_msgSend_metadata(*(*(&v363 + 1) + 8 * i), v35, v36);
                v41 = v40 == 0;

                if (!v41)
                {
                  v33 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v35, @"CKInternalErrorDomain", 1017, @"Delta for non-versioned mergeable has non-nil metadata");
                  v53 = objc_msgSend_CKClientSuitableError(v33, v51, v52);
                  v54 = v373[5];
                  v373[5] = v53;

                  goto LABEL_32;
                }
              }

              v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v35, &v363, v389, 16);
              if (v37)
              {
                continue;
              }

              break;
            }
          }

          *(v369 + 24) = 1;
          v42 = ck_log_initialization_block;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, v42);
          }

          v43 = ck_log_facility_distributed_sync;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            selfCopy4 = v15;
            _os_log_debug_impl(&dword_1883EA000, v43, OS_LOG_TYPE_DEBUG, "Generated mergeable deltas for multi-value register %@", buf, 0xCu);
          }

          objc_msgSend_setContents_(v15, v44, v24);
          v47 = objc_msgSend_persistedState(v15, v45, v46);
          objc_msgSend_setMultiValueRegisterState_(self, v48, v47);

          v49 = ck_log_initialization_block;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, v49);
          }

          v50 = ck_log_facility_distributed_sync;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            selfCopy4 = v15;
            _os_log_debug_impl(&dword_1883EA000, v50, OS_LOG_TYPE_DEBUG, "Populated multi-value register %@", buf, 0xCu);
          }

          goto LABEL_37;
        }

        v24 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v23, @"CKInternalErrorDomain", 1017, @"Non-versioned mergeable returned more than one delta");
        v27 = objc_msgSend_CKClientSuitableError(v24, v25, v26);
      }

      else
      {
        v24 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v21, @"CKInternalErrorDomain", 1017, @"Non-versioned mergeable did not return any deltas");
        v27 = objc_msgSend_CKClientSuitableError(v24, v31, v32);
      }

      v33 = v373[5];
      v373[5] = v27;
LABEL_32:
    }

    *(v369 + 24) = 0;
    v55 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v55);
    }

    v24 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v304 = v373[5];
      *buf = 138412546;
      selfCopy4 = v15;
      v384 = 2112;
      v385 = v304;
      _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "Failed to generate mergeable deltas for multi-value register %@: %@", buf, 0x16u);
    }

LABEL_37:

    v11 = v14;
    error = errorCopy;
  }

  if (v369[3])
  {
    v56 = ck_log_initialization_block;
    v326 = v11;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v56);
    }

    v57 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_debug_impl(&dword_1883EA000, v57, OS_LOG_TYPE_DEBUG, "Generating deltas for mergeable %@", buf, 0xCu);
    }

    v60 = objc_msgSend_lastKnownServerTimestampVector(self, v58, v59);
    v61 = v60;
    if (v60)
    {
      v329 = v60;
    }

    else
    {
      v329 = objc_opt_new();
    }

    v66 = objc_msgSend_stateVector(v11, v64, v65);
    v331 = objc_msgSend_copy(v66, v67, v68);

    v69 = objc_opt_new();
    v361 = 0u;
    v362 = 0u;
    v359 = 0u;
    v360 = 0u;
    v72 = objc_msgSend_unmergedDeltas(self, v70, v71);
    v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v359, v388, 16);
    if (v76)
    {
      v77 = *v360;
      do
      {
        for (j = 0; j != v76; ++j)
        {
          if (*v360 != v77)
          {
            objc_enumerationMutation(v72);
          }

          v79 = objc_msgSend_metadata(*(*(&v359 + 1) + 8 * j), v74, v75);
          v82 = objc_msgSend_vectors(v79, v80, v81);
          v85 = objc_msgSend_contents(v82, v83, v84);
          objc_msgSend_unionStateVector_(v69, v86, v85);
        }

        v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v74, &v359, v388, 16);
      }

      while (v76);
    }

    v89 = objc_msgSend_clockVector(v331, v87, v88);
    objc_msgSend_minusVector_(v69, v90, v89);

    v93 = objc_msgSend_clockVector(v329, v91, v92);
    v328 = objc_msgSend_mutableCopy(v93, v94, v95);

    v98 = objc_msgSend_clockVector(v69, v96, v97);
    objc_msgSend_minusVector_(v328, v99, v98);

    v102 = objc_msgSend_clockVector(v331, v100, v101);
    LOBYTE(v93) = objc_msgSend_isGreaterThanOrEqualToVector_(v102, v103, v328);

    if (v93)
    {
      goto LABEL_64;
    }

    v106 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v106);
    }

    v107 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
    {
      v314 = objc_msgSend_valueID(self, v108, v109);
      v317 = objc_msgSend_clockVector(v331, v315, v316);
      *buf = 138412802;
      selfCopy4 = v314;
      v384 = 2112;
      v385 = v317;
      v386 = 2112;
      v387 = v328;
      _os_log_fault_impl(&dword_1883EA000, v107, OS_LOG_TYPE_FAULT, "Mergeable %@ regressed with current vector %@, server vector %@", buf, 0x20u);
    }

    if (objc_msgSend_enabledFaultErrors(self, v110, v111))
    {
      if (!errorCopy)
      {
        v63 = 0;
LABEL_178:

        v11 = v326;
        goto LABEL_179;
      }

      v295 = objc_msgSend_valueID(self, v104, v105);
      v327 = objc_msgSend_clockVector(v331, v296, v297);
      v299 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v298, @"CKInternalErrorDomain", 1017, @"Mergeable %@ regressed with current vector %@, server vector %@", v295, v327, v328);
      objc_msgSend_CKClientSuitableError(v299, v300, v301);
      v324 = v299;
      v294 = v325 = v295;
    }

    else
    {
LABEL_64:
      if (v13)
      {
        v112 = v329;
      }

      else
      {
        v113 = objc_opt_new();

        v112 = v113;
      }

      v329 = v112;
      v114 = objc_msgSend_mutableCopy(v112, v104, v105);
      v117 = objc_msgSend_clockVector(v331, v115, v116);
      objc_msgSend_intersectVector_(v114, v118, v117);
      v325 = v114;

      v119 = [CKMergeableDeltaMetadata alloc];
      v120 = [CKMergeableDeltaVectors alloc];
      v123 = objc_msgSend_mutableCopy(v331, v121, v122);
      v125 = objc_msgSend_initWithPreviousStateVector_currentStateVector_(v120, v124, v114, v123);
      v327 = objc_msgSend_initWithVectors_(v119, v126, v125);

      v129 = objc_msgSend_vectors(v327, v127, v128);
      v132 = objc_msgSend_contents(v129, v130, v131);
      if (objc_msgSend_timestampCount(v132, v133, v134))
      {

LABEL_69:
        v324 = objc_opt_new();
        if (!objc_msgSend_inlineReplacementEnabled(self, v137, v138) || (objc_msgSend_serverDeltaMetadatas(self, v139, v140), v141 = objc_claimAutoreleasedReturnValue(), v144 = objc_msgSend_count(v141, v142, v143) == 0, v141, v144))
        {
          v332 = 0;
        }

        else
        {
          v145 = objc_msgSend_enabledFaultErrors(self, v139, v140);
          v148 = objc_msgSend_serverDeltaMetadatas(self, v146, v147);
          v152 = objc_msgSend_mutableCopy(v331, v149, v150);
          v153 = v373;
          if ((v145 & 2) != 0)
          {
            v358 = v373[5];
          }

          v332 = objc_msgSend_replacementDeltaMetadatasForDeltaDirectory_withNextDeltaMetadata_currentStateVector_deltaDirectoryDeliveryRequirements_error_(CKMergeableDeltaMetadata, v151, v148, v327, v152, -1, &v358 & (v145 << 62 >> 63));
          if ((v145 & 2) != 0)
          {
            objc_storeStrong(v153 + 5, v358);
          }

          if (v373[5])
          {
            v156 = ck_log_initialization_block;
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, v156);
            }

            v157 = ck_log_facility_distributed_sync;
            if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
            {
              v319 = objc_msgSend_valueID(self, v158, v159);
              v320 = v373[5];
              *buf = 138412546;
              selfCopy4 = v319;
              v384 = 2112;
              v385 = v320;
              _os_log_error_impl(&dword_1883EA000, v157, OS_LOG_TYPE_ERROR, "Error calculating replacement deltas for %@: %@", buf, 0x16u);
            }

            *(v369 + 24) = 0;
          }

          v160 = objc_msgSend_replacementDeltaMetadatas(v332, v154, v155);
          v163 = objc_msgSend_count(v160, v161, v162) == 0;

          if (!v163)
          {
            v166 = ck_log_initialization_block;
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, v166);
            }

            v167 = ck_log_facility_distributed_sync;
            if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              selfCopy4 = v332;
              _os_log_debug_impl(&dword_1883EA000, v167, OS_LOG_TYPE_DEBUG, "Found deltas to replace: %@", buf, 0xCu);
            }

            v170 = objc_msgSend_replacementDeltaMetadatas(v332, v168, v169);
            v351[0] = MEMORY[0x1E69E9820];
            v351[1] = 3221225472;
            v351[2] = sub_1885776D8;
            v351[3] = &unk_1E70BDDD8;
            v352 = v332;
            v353 = v326;
            selfCopy2 = self;
            v356 = &v372;
            v357 = &v368;
            v355 = v324;
            objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v170, v171, v351);
          }

          v172 = objc_msgSend_updatedNextDeltaMetadata(v332, v164, v165);

          if (v172)
          {
            v173 = ck_log_initialization_block;
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, v173);
            }

            v174 = ck_log_facility_distributed_sync;
            if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
            {
              v321 = objc_msgSend_updatedNextDeltaMetadata(v332, v175, v176);
              *buf = 138412290;
              selfCopy4 = v321;
              _os_log_debug_impl(&dword_1883EA000, v174, OS_LOG_TYPE_DEBUG, "Will use updated delta metadata: %@", buf, 0xCu);
            }

            v179 = objc_msgSend_updatedNextDeltaMetadata(v332, v177, v178);

            v327 = v179;
          }
        }

        if (v369[3])
        {
          v180 = objc_msgSend_vectors(v327, v139, v140);
          v183 = objc_msgSend_contents(v180, v181, v182);
          v186 = objc_msgSend_timestampCount(v183, v184, v185) == 0;

          if (v186)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v302 = ck_log_facility_distributed_sync;
            if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              selfCopy4 = self;
              _os_log_debug_impl(&dword_1883EA000, v302, OS_LOG_TYPE_DEBUG, "No new data to save for mergeable %@", buf, 0xCu);
            }

            goto LABEL_173;
          }

          v187 = ck_log_initialization_block;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, v187);
          }

          v188 = ck_log_facility_distributed_sync;
          if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            selfCopy4 = v327;
            _os_log_debug_impl(&dword_1883EA000, v188, OS_LOG_TYPE_DEBUG, "Will generate deltas for metadata: %@", buf, 0xCu);
          }

          v189 = v373 + 5;
          v350 = v373[5];
          v191 = objc_msgSend_mergeableDeltasForMetadata_error_(v326, v190, v327, &v350);
          objc_storeStrong(v189, v350);
          if (v191)
          {
            if (objc_msgSend_count(v191, v192, v193))
            {
              v348 = 0u;
              v349 = 0u;
              v346 = 0u;
              v347 = 0u;
              v323 = v191;
              v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(v323, v195, &v346, v381, 16);
              if (v198)
              {
                v199 = *v347;
                while (2)
                {
                  for (k = 0; k != v198; ++k)
                  {
                    if (*v347 != v199)
                    {
                      objc_enumerationMutation(v323);
                    }

                    v201 = objc_msgSend_metadata(*(*(&v346 + 1) + 8 * k), v196, v197);
                    v202 = v201 == 0;

                    if (v202)
                    {
                      v305 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v196, @"CKInternalErrorDomain", 1017, @"Delta for versioned mergeable has nil metadata");
                      v308 = objc_msgSend_CKClientSuitableError(v305, v306, v307);
                      v309 = v373[5];
                      v373[5] = v308;

                      goto LABEL_169;
                    }
                  }

                  v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(v323, v196, &v346, v381, 16);
                  if (v198)
                  {
                    continue;
                  }

                  break;
                }
              }

              *(v369 + 24) = 1;
              v205 = objc_msgSend_removableDeltaMetadatas(v332, v203, v204);
              v208 = objc_msgSend_count(v205, v206, v207) == 0;

              if (!v208)
              {
                v211 = ck_log_initialization_block;
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, v211);
                }

                v212 = ck_log_facility_distributed_sync;
                if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_1883EA000, v212, OS_LOG_TYPE_DEBUG, "Will fold empty deltas into new delta", buf, 2u);
                }

                v344 = 0u;
                v345 = 0u;
                v342 = 0u;
                v343 = 0u;
                v213 = v323;
                v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v214, &v342, v380, 16);
                if (v217)
                {
                  v218 = *v343;
                  do
                  {
                    for (m = 0; m != v217; ++m)
                    {
                      if (*v343 != v218)
                      {
                        objc_enumerationMutation(v213);
                      }

                      v220 = *(*(&v342 + 1) + 8 * m);
                      v221 = objc_msgSend_removableDeltaMetadatas(v332, v215, v216);
                      v224 = objc_msgSend_metadata(v220, v222, v223);
                      objc_msgSend_setReplacedDeltaIdentifiers_(v224, v225, v221);
                    }

                    v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v215, &v342, v380, 16);
                  }

                  while (v217);
                }

                v226 = [CKReplaceDeltasRequest alloc];
                v229 = objc_msgSend_valueID(self, v227, v228);
                v232 = objc_msgSend_removableDeltaMetadatas(v332, v230, v231);
                v235 = objc_msgSend_allObjects(v232, v233, v234);
                v237 = objc_msgSend_initWithValueID_deltaIdentifiersToReplace_replacementDeltas_replacementDeltasContainNewData_(v226, v236, v229, v235, v213, 1);

                objc_msgSend_insertObject_atIndex_(v324, v238, v237, 0);
                v323 = MEMORY[0x1E695E0F0];
              }

              v239 = objc_msgSend_maxInlineDeltaSize(CKMergeableDelta, v209, v210);
              v242 = objc_msgSend_mutableCopy(v323, v240, v241);
              v340 = 0u;
              v341 = 0u;
              v338 = 0u;
              v339 = 0u;
              v243 = v324;
              v247 = objc_msgSend_countByEnumeratingWithState_objects_count_(v243, v244, &v338, v379, 16);
              if (v247)
              {
                v248 = *v339;
                do
                {
                  for (n = 0; n != v247; ++n)
                  {
                    if (*v339 != v248)
                    {
                      objc_enumerationMutation(v243);
                    }

                    v250 = objc_msgSend_replacementDeltas(*(*(&v338 + 1) + 8 * n), v245, v246);
                    objc_msgSend_addObjectsFromArray_(v242, v251, v250);
                  }

                  v247 = objc_msgSend_countByEnumeratingWithState_objects_count_(v243, v245, &v338, v379, 16);
                }

                while (v247);
              }

              v336 = 0u;
              v337 = 0u;
              v334 = 0u;
              v335 = 0u;
              v252 = v242;
              v256 = objc_msgSend_countByEnumeratingWithState_objects_count_(v252, v253, &v334, v378, 16);
              if (v256)
              {
                v257 = *v335;
                do
                {
                  for (ii = 0; ii != v256; ++ii)
                  {
                    if (*v335 != v257)
                    {
                      objc_enumerationMutation(v252);
                    }

                    v259 = *(*(&v334 + 1) + 8 * ii);
                    v260 = objc_msgSend_valueID(self, v254, v255);
                    objc_msgSend_setValueID_(v259, v261, v260);

                    v264 = objc_msgSend_encryptMetadataTernary(self, v262, v263);
                    objc_msgSend_setEncryptMetadataTernary_(v259, v265, v264);
                    objc_msgSend_populateAssetIfNecessaryWithMaxInlineSize_(v259, v266, v239);
                  }

                  v256 = objc_msgSend_countByEnumeratingWithState_objects_count_(v252, v254, &v334, v378, 16);
                }

                while (v256);
              }

              v268 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v267, v323);
              objc_msgSend_setDeltasToSave_(self, v269, v268);

              v272 = objc_msgSend_copy(v243, v270, v271);
              v274 = v272;
              if (v272)
              {
                objc_msgSend_setPendingReplacementRequests_(self, v273, v272);
              }

              else
              {
                objc_msgSend_setPendingReplacementRequests_(self, v273, MEMORY[0x1E695E0F0]);
              }

              v275 = ck_log_initialization_block;
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, v275);
              }

              v276 = ck_log_facility_distributed_sync;
              if (os_log_type_enabled(v276, OS_LOG_TYPE_DEBUG))
              {
                v322 = objc_msgSend_deltasToSave(self, v277, v278);
                *buf = 138412546;
                selfCopy4 = self;
                v384 = 2112;
                v385 = v322;
                _os_log_debug_impl(&dword_1883EA000, v276, OS_LOG_TYPE_DEBUG, "Generated deltas for mergeable %@: %@", buf, 0x16u);
              }

              goto LABEL_173;
            }

            v323 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v194, @"CKInternalErrorDomain", 1017, @"Mergeable did not return any deltas");
            v312 = objc_msgSend_CKClientSuitableError(v323, v310, v311);
            v305 = v373[5];
            v373[5] = v312;
LABEL_169:
          }

          *(v369 + 24) = 0;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v279 = ck_log_facility_distributed_sync;
          if (!os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
          {
LABEL_173:
            if (errorCopy)
            {
              *errorCopy = v373[5];
            }

            v63 = *(v369 + 24);

            goto LABEL_176;
          }

          v318 = v373[5];
          *buf = 138412290;
          selfCopy4 = v318;
          v281 = "Error generating deltas: %@";
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v279 = ck_log_facility_distributed_sync;
          if (!os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_173;
          }

          v280 = v373[5];
          *buf = 138412290;
          selfCopy4 = v280;
          v281 = "Not generating deltas due to previous error: %@";
        }

        _os_log_error_impl(&dword_1883EA000, v279, OS_LOG_TYPE_ERROR, v281, buf, 0xCu);
        goto LABEL_173;
      }

      v282 = objc_msgSend_vectors(v327, v135, v136);
      v285 = objc_msgSend_removals(v282, v283, v284);
      v288 = objc_msgSend_timestampCount(v285, v286, v287) == 0;

      if (v288)
      {
        goto LABEL_69;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v289 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy4 = v331;
        v384 = 2112;
        v385 = v329;
        _os_log_error_impl(&dword_1883EA000, v289, OS_LOG_TYPE_ERROR, "Mergeable has a new removal without a corresponding change to the version vector, with current vector %@, server vector %@", buf, 0x16u);
      }

      if (!errorCopy)
      {
        v63 = 0;
LABEL_177:

        goto LABEL_178;
      }

      v291 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v290, @"CKInternalErrorDomain", 1017, @"Mergeable has a new removal without a corresponding change to the version vector, with current vector %@, server vector %@", v331, v329);
      objc_msgSend_CKClientSuitableError(v291, v292, v293);
      v294 = v324 = v291;
    }

    v63 = 0;
    *errorCopy = v294;
LABEL_176:

    goto LABEL_177;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v62 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    v303 = v373[5];
    *buf = 138412290;
    selfCopy4 = v303;
    _os_log_error_impl(&dword_1883EA000, v62, OS_LOG_TYPE_ERROR, "Error preparing mergeable for upload: %@", buf, 0xCu);
    if (error)
    {
      goto LABEL_49;
    }

LABEL_166:
    v63 = 0;
    goto LABEL_179;
  }

  if (!error)
  {
    goto LABEL_166;
  }

LABEL_49:
  v63 = 0;
  *error = v373[5];
LABEL_179:

  _Block_object_dispose(&v368, 8);
  _Block_object_dispose(&v372, 8);

  return v63 & 1;
}

- (BOOL)hasAssetBackedDeltas
{
  v65 = *MEMORY[0x1E69E9840];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = objc_msgSend_deltasToSave(self, a2, v2);
  v63[0] = v4;
  v7 = objc_msgSend_unmergedDeltas(self, v5, v6);
  v63[1] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v63, 2);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v56, v64, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v57;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v57 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v56 + 1) + 8 * i);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v16 = v15;
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v52, v62, 16);
        if (v18)
        {
          v21 = v18;
          v22 = *v53;
          while (2)
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v53 != v22)
              {
                objc_enumerationMutation(v16);
              }

              v24 = objc_msgSend_asset(*(*(&v52 + 1) + 8 * j), v19, v20);

              if (v24)
              {
LABEL_32:

                LOBYTE(v31) = 1;
                goto LABEL_33;
              }
            }

            v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v52, v62, 16);
            if (v21)
            {
              continue;
            }

            break;
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v25, &v56, v64, 16);
    }

    while (v12);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = objc_msgSend_pendingReplacementRequests(self, v26, v27);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v28, &v48, v61, 16);
  if (v31)
  {
    v32 = *v49;
    while (2)
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v49 != v32)
        {
          objc_enumerationMutation(v9);
        }

        v34 = *(*(&v48 + 1) + 8 * k);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v16 = objc_msgSend_replacementDeltas(v34, v29, v30, 0);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v35, &v44, v60, 16);
        if (v36)
        {
          v39 = v36;
          v40 = *v45;
LABEL_23:
          v41 = 0;
          while (1)
          {
            if (*v45 != v40)
            {
              objc_enumerationMutation(v16);
            }

            v42 = objc_msgSend_asset(*(*(&v44 + 1) + 8 * v41), v37, v38);

            if (v42)
            {
              goto LABEL_32;
            }

            if (v39 == ++v41)
            {
              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v37, &v44, v60, 16);
              if (v39)
              {
                goto LABEL_23;
              }

              break;
            }
          }
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v29, &v48, v61, 16);
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  return v31;
}

@end