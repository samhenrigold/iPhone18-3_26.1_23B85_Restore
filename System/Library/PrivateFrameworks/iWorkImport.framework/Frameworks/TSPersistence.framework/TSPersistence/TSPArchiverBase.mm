@interface TSPArchiverBase
- (BOOL)isForCopy;
- (BOOL)isSavingCollaborativeDocument;
- (BOOL)isSavingDocumentAs;
- (Message)messageWithNewFunction:(void *)function descriptor:(const void *)descriptor;
- (TSPArchiverBase)init;
- (TSPArchiverBase)initWithObject:(id)object;
- (id)addAlternateArchiverForVersion:(unint64_t)version fieldPath:(const void *)path isDiffArchiver:(BOOL)archiver diffReadVersion:(unint64_t)readVersion message:(const Message *)message;
- (id)alternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion field:(int)field message:(const Message *)message;
- (id)alternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion fieldPath:(int *)path baseFieldPath:(const void *)fieldPath message:(const Message *)message;
- (unint64_t)minimumSupportedVersion;
- (unsigned)messageType;
- (void)addWeakReferenceToObjectUUID:(id)d;
- (void)cleanup;
- (void)dealloc;
- (void)enumerateFieldRulesUsingBlock:(id)block;
- (void)pushScopeForField:(int)field message:(const Message *)message usingBlock:(id)block;
- (void)releaseMessage;
- (void)setDataReference:(id)reference message:(void *)message;
- (void)setDataReferenceArray:(id)array message:(void *)message;
- (void)setDataReferenceOrderedSet:(id)set message:(void *)message;
- (void)setDataReferenceSet:(id)set message:(void *)message;
- (void)setIgnoreAndPreserveRuleForField:(int)field message:(const Message *)message;
- (void)setIgnoreAndPreserveUntilModifiedRuleForField:(int)field message:(const Message *)message;
- (void)setMustUnderstandRuleForField:(int)field message:(const Message *)message;
- (void)setRule:(int)rule forFieldPath:(int *)path fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message;
- (void)setSparseReferenceArray:(id)array isWeak:(BOOL)weak message:(void *)message;
- (void)setSparseWeakObjectUUIDPathReferenceArray:(id)array message:(void *)message;
- (void)setSparseWeakObjectUUIDReferenceArray:(id)array message:(void *)message;
- (void)setStrongLazyReference:(id)reference message:(void *)message;
- (void)setStrongLazyReferenceArray:(id)array message:(void *)message;
- (void)setStrongReference:(id)reference message:(void *)message;
- (void)setStrongReferenceArray:(id)array message:(void *)message;
- (void)setStrongReferenceOrderedSet:(id)set message:(void *)message;
- (void)setStrongReferenceSet:(id)set message:(void *)message;
- (void)setWeakLazyReference:(id)reference message:(void *)message;
- (void)setWeakReference:(id)reference message:(void *)message;
- (void)setWeakReferenceArray:(id)array message:(void *)message;
- (void)setWeakReferenceOrderedSet:(id)set message:(void *)message;
- (void)setWeakReferenceSet:(id)set message:(void *)message;
- (void)setWeakReferenceToObjectUUID:(id)d message:(void *)message;
- (void)setWeakReferenceToObjectUUIDArray:(id)array message:(void *)message;
- (void)setWeakReferenceToObjectUUIDData:(const void *)data message:(void *)message;
- (void)setWeakReferenceToObjectUUIDPath:(id)path message:(void *)message;
- (void)setWeakReferenceToObjectUUIDPathArray:(id)array message:(void *)message;
- (void)validateMessage:(const Message *)message;
@end

@implementation TSPArchiverBase

- (TSPArchiverBase)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPArchiverBase init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 48, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPArchiverBase init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPArchiverBase)initWithObject:(id)object
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = TSPArchiverBase;
  v6 = [(TSPArchiverBase *)&v15 init];
  v7 = v6;
  if (v6)
  {
    if (!objectCopy)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Cannot create archiver without object.", "[TSPArchiverBase initWithObject:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 54);
      v9 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPArchiverBase initWithObject:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 54, 1, "Cannot create archiver without object.");

      TSUCrashBreakpoint();
      abort();
    }

    objc_storeStrong(&v6->_object, object);
    v7->_messageVersion = 0x1000000000005;
  }

  return v7;
}

- (void)dealloc
{
  fieldRules = self->_fieldRules;
  if (fieldRules)
  {
    v4 = sub_2769B0AEC(fieldRules);
    MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);
  }

  currentFieldPath = self->_currentFieldPath;
  if (currentFieldPath)
  {
    v6 = sub_2769E22E8(currentFieldPath);
    MEMORY[0x277C9F670](v6, 0x1081C40B6D36AFBLL);
  }

  v7.receiver = self;
  v7.super_class = TSPArchiverBase;
  [(TSPArchiverBase *)&v7 dealloc];
}

- (void)cleanup
{
  strongReferences = self->_strongReferences;
  self->_strongReferences = 0;

  weakReferences = self->_weakReferences;
  self->_weakReferences = 0;

  lazyReferences = self->_lazyReferences;
  self->_lazyReferences = 0;

  dataReferences = self->_dataReferences;
  self->_dataReferences = 0;

  countedDataReferences = self->_countedDataReferences;
  self->_countedDataReferences = 0;

  alternates = self->_alternates;
  self->_alternates = 0;
}

- (Message)messageWithNewFunction:(void *)function descriptor:(const void *)descriptor
{
  ptr = self->_message.__ptr_;
  currentFieldPath = self->_currentFieldPath;
  if (currentFieldPath)
  {
    v8 = currentFieldPath[4];
    if (ptr)
    {
      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *(*(self->_currentFieldPath + 3) + 4 * v9);
          v11 = (*(ptr->var0 + 19))(ptr, a2, function);
          (*(ptr->var0 + 19))(ptr);
          v13 = v12;
          FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v11, v10);
          if (!FieldByNumber)
          {
            FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v13, v10);
            if (!FieldByNumber)
            {
              return 0;
            }
          }

          v15 = google::protobuf::Reflection::MutableMessage(v13, ptr, FieldByNumber, 0);
          ptr = v15;
          ++v9;
          if (v15)
          {
            v16 = v9 >= v8;
          }

          else
          {
            v16 = 1;
          }
        }

        while (!v16);
        if (!v15)
        {
          return ptr;
        }
      }

      goto LABEL_22;
    }

    if (v8)
    {
      v35 = objc_msgSend_object(self, a2, function);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v40 = objc_msgSend_object(self, v38, v39);
      v43 = objc_msgSend_tsp_identifier(v40, v41, v42);
      v45 = sub_2769ACC84(self->_currentFieldPath, v44);
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Cannot initialize the archiver's message for object [%{public}@-%llu] within a field scope. Field path is %{public}@.", "[TSPArchiverBase messageWithNewFunction:descriptor:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 88, v37, v43, v45);

      v46 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSPArchiverBase messageWithNewFunction:descriptor:]");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      v53 = objc_msgSend_object(self, v51, v52);
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v58 = objc_msgSend_object(self, v56, v57);
      v61 = objc_msgSend_tsp_identifier(v58, v59, v60);
      v63 = sub_2769ACC84(self->_currentFieldPath, v62);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v64, v48, v50, 88, 1, "Cannot initialize the archiver's message for object [%{public}@-%llu] within a field scope. Field path is %{public}@.", v55, v61, v63);

      goto LABEL_45;
    }
  }

  else if (ptr)
  {
    LODWORD(v8) = 0;
LABEL_22:
    if ((*(ptr->var0 + 19))(ptr) == descriptor)
    {
      return ptr;
    }

    v22 = objc_msgSend_object(self, v20, v21);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v27 = objc_msgSend_object(self, v25, v26);
    v30 = objc_msgSend_tsp_identifier(v27, v28, v29);
    v31 = *(descriptor + 1);
    if (*(v31 + 23) < 0)
    {
      v31 = *v31;
    }

    v33 = *((*(ptr->var0 + 19))(ptr) + 8);
    if (*(v33 + 23) < 0)
    {
      v33 = *v33;
    }

    if (v8 < 1)
    {
      v84 = @"empty";
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Wrong message type while archiving object [%{public}@-%llu]. Expected %{public}s, but is actually %{public}s. Field path is %{public}@.", "[TSPArchiverBase messageWithNewFunction:descriptor:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 112, v24, v30, v31, v33, @"empty");
    }

    else
    {
      v84 = sub_2769ACC84(self->_currentFieldPath, v32);
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Wrong message type while archiving object [%{public}@-%llu]. Expected %{public}s, but is actually %{public}s. Field path is %{public}@.", "[TSPArchiverBase messageWithNewFunction:descriptor:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 112, v24, v30, v31, v33, v84);
    }

    if (v8 >= 1)
    {
    }

    v65 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSPArchiverBase messageWithNewFunction:descriptor:]");
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    v72 = objc_msgSend_object(self, v70, v71);
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    v77 = objc_msgSend_object(self, v75, v76);
    v85 = objc_msgSend_tsp_identifier(v77, v78, v79);
    v80 = *(descriptor + 1);
    if (*(v80 + 23) < 0)
    {
      v80 = *v80;
    }

    v82 = *((*(ptr->var0 + 19))(ptr) + 8);
    if (*(v82 + 23) < 0)
    {
      v82 = *v82;
    }

    if (v8 < 1)
    {
      v83 = @"empty";
    }

    else
    {
      v83 = sub_2769ACC84(self->_currentFieldPath, v81);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v81, v67, v69, 112, 1, "Wrong message type while archiving object [%{public}@-%llu]. Expected %{public}s, but is actually %{public}s. Field path is %{public}@.", v74, v85, v80, v82, v83);
    if (v8 >= 1)
    {
    }

LABEL_45:
    TSUCrashBreakpoint();
    abort();
  }

  if (!function)
  {
    return 0;
  }

  (function)(&v86);
  v17 = v86;
  v86 = 0;
  v18 = self->_message.__ptr_;
  self->_message.__ptr_ = v17;
  if (v18)
  {
    (*(v18->var0 + 1))(v18);
    v19 = v86;
    v86 = 0;
    if (v19)
    {
      (*(v19->var0 + 1))(v19);
    }
  }

  LODWORD(v8) = 0;
  ptr = self->_message.__ptr_;
  if (ptr)
  {
    goto LABEL_22;
  }

  return ptr;
}

- (void)validateMessage:(const Message *)message
{
  ptr = self->_message.__ptr_;
  if (ptr)
  {
    v5 = (*(message->var0 + 19))(message, a2);
    if (!objc_msgSend_messageWithNewFunction_descriptor_(self, v6, 0, v5))
    {
      v7 = ptr;
      v9 = *((*(ptr->var0 + 19))(ptr) + 8);
      if (*(v9 + 23) < 0)
      {
        v9 = *v9;
      }

      v10 = sub_2769ACC84(self->_currentFieldPath, v8);
      v13 = objc_msgSend_object(self, v11, v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v18 = objc_msgSend_object(self, v16, v17);
      v21 = objc_msgSend_tsp_identifier(v18, v19, v20);
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Message type %{public}s could not be scoped to field path %{public}@ while archiving object [%{public}@-%llu].", "[TSPArchiverBase validateMessage:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 130, v9, v10, v15, v21);

      v22 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSPArchiverBase validateMessage:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      v28 = *((*(v7->var0 + 19))(v7) + 8);
      if (*(v28 + 23) < 0)
      {
        v28 = *v28;
      }

      v29 = sub_2769ACC84(self->_currentFieldPath, v27);
      v32 = objc_msgSend_object(self, v30, v31);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v37 = objc_msgSend_object(self, v35, v36);
      v40 = objc_msgSend_tsp_identifier(v37, v38, v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v41, v24, v26, 130, 1, "Message type %{public}s could not be scoped to field path %{public}@ while archiving object [%{public}@-%llu].", v28, v29, v34, v40);

      TSUCrashBreakpoint();
      abort();
    }
  }
}

- (unsigned)messageType
{
  ptr = self->_message.__ptr_;
  if (ptr)
  {
    v4 = objc_msgSend_context(self->_object, a2, v2);
    v7 = objc_msgSend_registry(v4, v5, v6);
    v8 = (*(ptr->var0 + 19))(ptr);
    LODWORD(ptr) = objc_msgSend_messageTypeForDescriptor_(v7, v9, v8);
  }

  return ptr;
}

- (void)releaseMessage
{
  ptr = self->_message.__ptr_;
  self->_message.__ptr_ = 0;
  if (ptr)
  {
    (*(ptr->var0 + 1))();
  }
}

- (BOOL)isForCopy
{
  v4 = objc_msgSend_targetType(self, a2, v2);
  if (v4 != 1)
  {
    LOBYTE(v4) = objc_msgSend_targetType(self, v5, v6) == 2;
  }

  return v4;
}

- (void)setStrongReference:(id)reference message:(void *)message
{
  referenceCopy = reference;
  v8 = objc_msgSend_tsp_identifier(referenceCopy, v6, v7);
  *(message + 4) |= 1u;
  *(message + 3) = v8;
  if (referenceCopy)
  {
    strongReferences = self->_strongReferences;
    if (!strongReferences)
    {
      v11 = [TSPReferenceOrderedSet alloc];
      v13 = objc_msgSend_initWithCapacity_(v11, v12, 1);
      v14 = self->_strongReferences;
      self->_strongReferences = v13;

      strongReferences = self->_strongReferences;
    }

    objc_msgSend_addItem_(strongReferences, v9, referenceCopy);
  }
}

- (void)setWeakReference:(id)reference message:(void *)message
{
  referenceCopy = reference;
  v8 = objc_msgSend_tsp_identifier(referenceCopy, v6, v7);
  *(message + 4) |= 1u;
  *(message + 3) = v8;
  if (referenceCopy)
  {
    weakReferences = self->_weakReferences;
    if (!weakReferences)
    {
      v11 = [TSPReferenceOrderedSet alloc];
      v13 = objc_msgSend_initWithCapacity_(v11, v12, 1);
      v14 = self->_weakReferences;
      self->_weakReferences = v13;

      weakReferences = self->_weakReferences;
    }

    objc_msgSend_addItem_(weakReferences, v9, referenceCopy);
  }
}

- (void)setStrongReferenceArray:(id)array message:(void *)message
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  arrayCopy = array;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v7, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = *(message + 2);
        if (!v13)
        {
          v15 = *(message + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v15 + 1);
          v13 = *(message + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(message + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(message + 2) = v14 + 1;
          objc_msgSend_setStrongReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v20);
          goto LABEL_13;
        }

        if (v15 == *(message + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*message);
        v17 = *(message + 2);
        v18 = *(message + 2) + 8 * v17;
        *(message + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setStrongReference_message_(self, v19, v12, v16, v20);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v8, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)setWeakReferenceArray:(id)array message:(void *)message
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  arrayCopy = array;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v7, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = *(message + 2);
        if (!v13)
        {
          v15 = *(message + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v15 + 1);
          v13 = *(message + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(message + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(message + 2) = v14 + 1;
          objc_msgSend_setWeakReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v20);
          goto LABEL_13;
        }

        if (v15 == *(message + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*message);
        v17 = *(message + 2);
        v18 = *(message + 2) + 8 * v17;
        *(message + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setWeakReference_message_(self, v19, v12, v16, v20);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v8, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)setStrongReferenceSet:(id)set message:(void *)message
{
  setCopy = set;
  v6 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_tsp_sortedObjectArray(setCopy, v7, v8);
  objc_msgSend_setStrongReferenceArray_message_(self, v10, v9, message);

  objc_autoreleasePoolPop(v6);
}

- (void)setWeakReferenceSet:(id)set message:(void *)message
{
  setCopy = set;
  v6 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_tsp_sortedObjectArray(setCopy, v7, v8);
  objc_msgSend_setWeakReferenceArray_message_(self, v10, v9, message);

  objc_autoreleasePoolPop(v6);
}

- (void)setStrongReferenceOrderedSet:(id)set message:(void *)message
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  setCopy = set;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v7, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(setCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = *(message + 2);
        if (!v13)
        {
          v15 = *(message + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v15 + 1);
          v13 = *(message + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(message + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(message + 2) = v14 + 1;
          objc_msgSend_setStrongReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v20);
          goto LABEL_13;
        }

        if (v15 == *(message + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*message);
        v17 = *(message + 2);
        v18 = *(message + 2) + 8 * v17;
        *(message + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setStrongReference_message_(self, v19, v12, v16, v20);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v8, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)setWeakReferenceOrderedSet:(id)set message:(void *)message
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  setCopy = set;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v7, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(setCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = *(message + 2);
        if (!v13)
        {
          v15 = *(message + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v15 + 1);
          v13 = *(message + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(message + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(message + 2) = v14 + 1;
          objc_msgSend_setWeakReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v20);
          goto LABEL_13;
        }

        if (v15 == *(message + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*message);
        v17 = *(message + 2);
        v18 = *(message + 2) + 8 * v17;
        *(message + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setWeakReference_message_(self, v19, v12, v16, v20);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v8, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)setStrongLazyReference:(id)reference message:(void *)message
{
  referenceCopy = reference;
  v8 = objc_msgSend_tsp_identifier(referenceCopy, v6, v7);
  *(message + 4) |= 1u;
  *(message + 3) = v8;
  v11 = referenceCopy;
  if (!referenceCopy)
  {
    goto LABEL_14;
  }

  if (objc_msgSend_ownershipMode(referenceCopy, v9, v10) && (objc_msgSend_isForCopy(self, v12, v13) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPArchiverBase setStrongLazyReference:message:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 225, 0, "Lazy reference should be strong.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v22 = objc_msgSend_objectIfLoaded(referenceCopy, v12, v13);
  strongReferences = self->_strongReferences;
  if (v22)
  {
    v24 = v22;
    if (!strongReferences)
    {
      v25 = [TSPReferenceOrderedSet alloc];
      v27 = objc_msgSend_initWithCapacity_(v25, v26, 1);
      v24 = v22;
LABEL_10:
      v30 = self->_strongReferences;
      self->_strongReferences = v27;

      strongReferences = self->_strongReferences;
    }
  }

  else
  {
    v24 = referenceCopy;
    if (!strongReferences)
    {
      v28 = [TSPReferenceOrderedSet alloc];
      v27 = objc_msgSend_initWithCapacity_(v28, v29, 1);
      v24 = referenceCopy;
      goto LABEL_10;
    }
  }

  objc_msgSend_addItem_(strongReferences, v21, v24);
  lazyReferences = self->_lazyReferences;
  if (!lazyReferences)
  {
    v33 = objc_alloc(MEMORY[0x277CCAA50]);
    v35 = objc_msgSend_initWithOptions_capacity_(v33, v34, 512, 1);
    v36 = self->_lazyReferences;
    self->_lazyReferences = v35;

    lazyReferences = self->_lazyReferences;
  }

  objc_msgSend_addObject_(lazyReferences, v31, referenceCopy);

  v11 = referenceCopy;
LABEL_14:
}

- (void)setStrongLazyReferenceArray:(id)array message:(void *)message
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objc_msgSend_references(array, a2, array, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = *(message + 2);
        if (!v13)
        {
          v15 = *(message + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v15 + 1);
          v13 = *(message + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(message + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(message + 2) = v14 + 1;
          objc_msgSend_setStrongLazyReference_message_(self, v8, v12, *&v13[2 * v14 + 2]);
          goto LABEL_13;
        }

        if (v15 == *(message + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*message);
        v17 = *(message + 2);
        v18 = *(message + 2) + 8 * v17;
        *(message + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setStrongLazyReference_message_(self, v19, v12, v16);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)setWeakLazyReference:(id)reference message:(void *)message
{
  referenceCopy = reference;
  v8 = objc_msgSend_tsp_identifier(referenceCopy, v6, v7);
  *(message + 4) |= 1u;
  *(message + 3) = v8;
  v11 = referenceCopy;
  if (referenceCopy)
  {
    if (!objc_msgSend_ownershipMode(referenceCopy, v9, v10))
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPArchiverBase setWeakLazyReference:message:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 262, 0, "Lazy reference should be weak.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    if (!self->_weakReferences)
    {
      v21 = [TSPReferenceOrderedSet alloc];
      v23 = objc_msgSend_initWithCapacity_(v21, v22, 1);
      weakReferences = self->_weakReferences;
      self->_weakReferences = v23;
    }

    v25 = objc_msgSend_objectIfLoaded(referenceCopy, v12, v13);
    v26 = self->_weakReferences;
    if (v25)
    {
      objc_msgSend_addItem_(v26, referenceCopy, v25);
    }

    else
    {
      objc_msgSend_addItem_(v26, referenceCopy, referenceCopy);
    }

    lazyReferences = self->_lazyReferences;
    if (!lazyReferences)
    {
      v29 = objc_alloc(MEMORY[0x277CCAA50]);
      v31 = objc_msgSend_initWithOptions_capacity_(v29, v30, 512, 1);
      v32 = self->_lazyReferences;
      self->_lazyReferences = v31;

      lazyReferences = self->_lazyReferences;
    }

    objc_msgSend_addObject_(lazyReferences, v27, referenceCopy);

    v11 = referenceCopy;
  }
}

- (void)setDataReference:(id)reference message:(void *)message
{
  referenceCopy = reference;
  v73 = referenceCopy;
  if (!referenceCopy)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPArchiverBase setDataReference:message:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 328, 0, "Cannot add reference to nil data.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    goto LABEL_23;
  }

  v11 = objc_msgSend_storage(referenceCopy, v7, v8);
  if (!v11)
  {
    v36 = objc_msgSend_null(TSPData, v9, v10);

    if (v36 != v73)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSPArchiverBase setDataReference:message:]");
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      v44 = objc_msgSend_filename(v73, v42, v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v39, v41, 291, 0, "Attempting to archive null data with filename: %@", v44);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
    }

    *(message + 4) |= 1u;
    *(message + 3) = 0;
    goto LABEL_22;
  }

  v12 = objc_msgSend_context(self->_object, v9, v10);
  v15 = objc_msgSend_context(v73, v13, v14);
  if (objc_msgSend_readOnly(v11, v16, v17))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPArchiverBase setDataReference:message:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v27 = objc_msgSend_tsp_identifier(self->_object, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v28, v20, v22, 298, 0, "Should not archive read-only data %@, referenced from [%{public}@-%llu]", v73, v24, v27);
  }

  else
  {
    if (v15 == v12)
    {
      goto LABEL_12;
    }

    v48 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPArchiverBase setDataReference:message:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    v50 = objc_opt_class();
    v24 = NSStringFromClass(v50);
    v53 = objc_msgSend_tsp_identifier(self->_object, v51, v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v20, v22, 300, 0, "Unexpected data context for data %@, referenced from [%{public}@-%llu] (expected %p, actual %p)", v73, v24, v53, v12, v15);
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
LABEL_12:
  if (v15 == v12)
  {
LABEL_16:
    v59 = v73;
    goto LABEL_17;
  }

  v59 = objc_msgSend_copyWithContext_(v73, v18, v12);
  if (!v59)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD11E0();
    }

    goto LABEL_16;
  }

LABEL_17:
  v61 = objc_msgSend_identifier(v59, v57, v58);
  *(message + 4) |= 1u;
  *(message + 3) = v61;
  dataReferences = self->_dataReferences;
  if (!dataReferences)
  {
    v63 = objc_alloc(MEMORY[0x277CCAA50]);
    v65 = objc_msgSend_initWithOptions_capacity_(v63, v64, 512, 1);
    v66 = self->_dataReferences;
    self->_dataReferences = v65;

    dataReferences = self->_dataReferences;
  }

  objc_msgSend_addObject_(dataReferences, v60, v59);
  countedDataReferences = self->_countedDataReferences;
  if (!countedDataReferences)
  {
    v69 = [_TtC13TSPersistence23TSPMutableIdentifierSet alloc];
    v71 = objc_msgSend_initWithCapacity_(v69, v70, 1);
    v72 = self->_countedDataReferences;
    self->_countedDataReferences = v71;

    countedDataReferences = self->_countedDataReferences;
  }

  objc_msgSend_incrementCountBy_forIdentifier_(countedDataReferences, v67, 1, v61);

LABEL_22:
LABEL_23:
}

- (void)setDataReferenceArray:(id)array message:(void *)message
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  arrayCopy = array;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v7, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = *(message + 2);
        if (!v13)
        {
          v15 = *(message + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v15 + 1);
          v13 = *(message + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(message + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(message + 2) = v14 + 1;
          objc_msgSend_setDataReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v20);
          goto LABEL_13;
        }

        if (v15 == *(message + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(*message);
        v17 = *(message + 2);
        v18 = *(message + 2) + 8 * v17;
        *(message + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setDataReference_message_(self, v19, v12, v16, v20);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v8, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)setDataReferenceSet:(id)set message:(void *)message
{
  setCopy = set;
  v6 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_tsp_sortedDataArray(setCopy, v7, v8);
  objc_msgSend_setDataReferenceArray_message_(self, v10, v9, message);

  objc_autoreleasePoolPop(v6);
}

- (void)setDataReferenceOrderedSet:(id)set message:(void *)message
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  setCopy = set;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v7, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(setCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = *(message + 2);
        if (!v13)
        {
          v15 = *(message + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v15 + 1);
          v13 = *(message + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(message + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(message + 2) = v14 + 1;
          objc_msgSend_setDataReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v20);
          goto LABEL_13;
        }

        if (v15 == *(message + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(*message);
        v17 = *(message + 2);
        v18 = *(message + 2) + 8 * v17;
        *(message + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setDataReference_message_(self, v19, v12, v16, v20);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(setCopy, v8, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)setMustUnderstandRuleForField:(int)field message:(const Message *)message
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = field;
  v4[1] = 0;
  objc_msgSend_setMustUnderstandRuleForFieldPath_message_(self, a2, v4, message);
}

- (void)setIgnoreAndPreserveRuleForField:(int)field message:(const Message *)message
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = field;
  v4[1] = 0;
  objc_msgSend_setIgnoreAndPreserveRuleForFieldPath_message_(self, a2, v4, message);
}

- (void)setIgnoreAndPreserveUntilModifiedRuleForField:(int)field message:(const Message *)message
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = field;
  v4[1] = 0;
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForFieldPath_message_(self, a2, v4, message);
}

- (void)setRule:(int)rule forFieldPath:(int *)path fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message
{
  identifierCopy = identifier;
  if (!path)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPArchiverBase setRule:forFieldPath:fileFormatVersion:featureIdentifier:message:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 382, 0, "invalid nil value for '%{public}s'", "inFieldPath", version);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  objc_msgSend_validateMessage_(self, v10, message);
  if (path && *path)
  {
    operator new();
  }

  v20 = MEMORY[0x277D81150];
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPArchiverBase setRule:forFieldPath:fileFormatVersion:featureIdentifier:message:]");
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 414, 0, "Field path must contain at least 1 field number. Field numbers must be greater than zero.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
}

- (void)pushScopeForField:(int)field message:(const Message *)message usingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPArchiverBase pushScopeForField:message:usingBlock:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 423, 0, "invalid nil value for '%{public}s'", "block");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_validateMessage_(self, v8, message);
  currentFieldPath = self->_currentFieldPath;
  if (!currentFieldPath)
  {
    operator new();
  }

  v17 = currentFieldPath[4];
  if (v17 == currentFieldPath[5])
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(*(currentFieldPath + 3) + 4 * v17) = field;
  currentFieldPath[4] = v17 + 1;
  blockCopy[2]();
  v19 = self->_currentFieldPath;
  v20 = v19[4];
  if (v20 == 1)
  {
    v21 = sub_2769E22E8(v19);
    MEMORY[0x277C9F670](v21, 0x1081C40B6D36AFBLL);
    self->_currentFieldPath = 0;
  }

  else
  {
    if (v20 <= 0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPArchiverBase pushScopeForField:message:usingBlock:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 440, 0, "Unbalanced push/pop operations on _currentFieldPath.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
      v19 = self->_currentFieldPath;
      v20 = v19[4];
    }

    v19[4] = v20 - 1;
  }
}

- (void)enumerateFieldRulesUsingBlock:(id)block
{
  blockCopy = block;
  fieldRules = self->_fieldRules;
  if (fieldRules)
  {
    v7 = 0;
    v6 = fieldRules + 16;
    do
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      blockCopy[2](blockCopy, (v6 + 2), (v6 + 7), &v7);
    }

    while ((v7 & 1) == 0);
  }
}

- (unint64_t)minimumSupportedVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  messageVersion = self->_messageVersion;
  alternates = self->_alternates;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769AF134;
  v5[3] = &unk_27A6E3030;
  v5[4] = &v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(alternates, a2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)addAlternateArchiverForVersion:(unint64_t)version fieldPath:(const void *)path isDiffArchiver:(BOOL)archiver diffReadVersion:(unint64_t)readVersion message:(const Message *)message
{
  archiverCopy = archiver;
  if (message)
  {
    objc_msgSend_validateMessage_(self, a2, message);
  }

  v12 = version - 1;
  if (archiverCopy)
  {
    versionCopy = version - 1;
  }

  else
  {
    versionCopy = version;
  }

  if (versionCopy < 0x1000000000005)
  {
    v48 = NSStringFromTSPVersion(versionCopy, a2);
    v51 = objc_msgSend_object(self, v49, v50);
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v56 = objc_msgSend_object(self, v54, v55);
    v59 = objc_msgSend_tsp_identifier(v56, v57, v58);
    v61 = NSStringFromTSPVersion(0x1000000000005uLL, v60);
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Version of alternate message (%{public}@) for object [%{public}@-%llu] should be greater than or equal to %{public}@.", "[TSPArchiverBase addAlternateArchiverForVersion:fieldPath:isDiffArchiver:diffReadVersion:message:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 492, v48, v53, v59, v61);

    v62 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSPArchiverBase addAlternateArchiverForVersion:fieldPath:isDiffArchiver:diffReadVersion:message:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    v68 = NSStringFromTSPVersion(versionCopy, v67);
    v71 = objc_msgSend_object(self, v69, v70);
    v72 = objc_opt_class();
    v73 = NSStringFromClass(v72);
    v76 = objc_msgSend_object(self, v74, v75);
    v79 = objc_msgSend_tsp_identifier(v76, v77, v78);
    v81 = NSStringFromTSPVersion(0x1000000000005uLL, v80);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v82, v64, v66, 492, 1, "Version of alternate message (%{public}@) for object [%{public}@-%llu] should be greater than or equal to %{public}@.", v68, v73, v79, v81);

    goto LABEL_21;
  }

  if (versionCopy > UnsafePointer())
  {
    v83 = NSStringFromTSPVersion(versionCopy, v14);
    v86 = objc_msgSend_object(self, v84, v85);
    v87 = objc_opt_class();
    v88 = NSStringFromClass(v87);
    v91 = objc_msgSend_object(self, v89, v90);
    v94 = objc_msgSend_tsp_identifier(v91, v92, v93);
    v95 = UnsafePointer();
    v97 = NSStringFromTSPVersion(v95, v96);
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Version of alternate message (%{public}@) for object [%{public}@-%llu] should be less than or equal to %{public}@.", "[TSPArchiverBase addAlternateArchiverForVersion:fieldPath:isDiffArchiver:diffReadVersion:message:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 493, v83, v88, v94, v97);

    v98 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "[TSPArchiverBase addAlternateArchiverForVersion:fieldPath:isDiffArchiver:diffReadVersion:message:]");
    v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    v103 = NSStringFromTSPVersion(versionCopy, v102);
    v106 = objc_msgSend_object(self, v104, v105);
    v107 = objc_opt_class();
    v108 = NSStringFromClass(v107);
    v111 = objc_msgSend_object(self, v109, v110);
    v114 = objc_msgSend_tsp_identifier(v111, v112, v113);
    v115 = UnsafePointer();
    v117 = NSStringFromTSPVersion(v115, v116);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v118, v64, v101, 493, 1, "Version of alternate message (%{public}@) for object [%{public}@-%llu] should be less than or equal to %{public}@.", v103, v108, v114, v117);

LABEL_21:
    TSUCrashBreakpoint();
    abort();
  }

  objc_opt_class();
  v15 = TSUDynamicCast();
  v18 = v15;
  if (archiverCopy && objc_msgSend_isDiff(v15, v16, v17))
  {
    v145 = NSStringFromTSPVersion(v12, v19);
    v148 = objc_msgSend_object(self, v146, v147);
    v149 = objc_opt_class();
    v150 = NSStringFromClass(v149);
    v153 = objc_msgSend_object(self, v151, v152);
    v156 = objc_msgSend_tsp_identifier(v153, v154, v155);
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Diff alternate message (%{public}@) for object [%{public}@-%llu] cannot be defined for another diff alternate archiver.", "[TSPArchiverBase addAlternateArchiverForVersion:fieldPath:isDiffArchiver:diffReadVersion:message:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 497, v145, v150, v156);

    v157 = MEMORY[0x277D81150];
    v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, "[TSPArchiverBase addAlternateArchiverForVersion:fieldPath:isDiffArchiver:diffReadVersion:message:]");
    v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    v163 = NSStringFromTSPVersion(v12, v162);
    v166 = objc_msgSend_object(self, v164, v165);
    v167 = objc_opt_class();
    v168 = NSStringFromClass(v167);
    v171 = objc_msgSend_object(self, v169, v170);
    v174 = objc_msgSend_tsp_identifier(v171, v172, v173);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v175, v159, v161, 497, 1, "Diff alternate message (%{public}@) for object [%{public}@-%llu] cannot be defined for another diff alternate archiver.", v163, v168, v174);

    TSUCrashBreakpoint();
    goto LABEL_28;
  }

  v20 = [TSPAlternateArchiverKey alloc];
  v22 = objc_msgSend_initWithVersion_fieldPath_(v20, v21, versionCopy, path);
  v24 = objc_msgSend_objectForKeyedSubscript_(self->_alternates, v23, v22);
  v27 = objc_msgSend_firstObject(v24, v25, v26);
  v30 = v27;
  if (v27 && objc_msgSend_isDiff(v27, v28, v29) != archiverCopy)
  {
    v119 = objc_msgSend_object(self, v31, v32);
    v120 = objc_opt_class();
    v121 = NSStringFromClass(v120);
    v124 = objc_msgSend_object(self, v122, v123);
    v179 = objc_msgSend_tsp_identifier(v124, v125, v126);
    v177 = NSStringFromTSPVersion(versionCopy, v127);
    if (archiverCopy)
    {
      v128 = @"YES";
    }

    else
    {
      v128 = @"NO";
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Alternate message for object [%{public}@-%llu] version %{public}@ is already defined with isDiff=%{public}@. You cannot define two alternate messages for the same version with different isDiff values.", "[TSPArchiverBase addAlternateArchiverForVersion:fieldPath:isDiffArchiver:diffReadVersion:message:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 503, v121, v179, v177, v128);

    v129 = MEMORY[0x277D81150];
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "[TSPArchiverBase addAlternateArchiverForVersion:fieldPath:isDiffArchiver:diffReadVersion:message:]");
    v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    v180 = objc_msgSend_object(self, v134, v135);
    v136 = objc_opt_class();
    v178 = NSStringFromClass(v136);
    v176 = objc_msgSend_object(self, v137, v138);
    v141 = objc_msgSend_tsp_identifier(v176, v139, v140);
    v143 = NSStringFromTSPVersion(versionCopy, v142);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v144, v131, v133, 503, 1, "Alternate message for object [%{public}@-%llu] version %{public}@ is already defined with isDiff=%{public}@. You cannot define two alternate messages for the same version with different isDiff values.", v178, v141, v143, v128);

    TSUCrashBreakpoint();
LABEL_28:
    abort();
  }

  v33 = [TSPAlternateArchiver alloc];
  Version_parentArchiver = objc_msgSend_initWithObject_version_fieldPath_isDiff_diffReadVersion_parentArchiver_(v33, v34, self->_object, versionCopy, path, archiverCopy, readVersion, self);
  if (self->_alternates)
  {
    if (v24)
    {
      objc_msgSend_addObject_(v24, v35, Version_parentArchiver);
    }

    else
    {
      v44 = objc_alloc(MEMORY[0x277CBEB18]);
      v24 = objc_msgSend_initWithObjects_(v44, v45, Version_parentArchiver, 0);
      objc_msgSend_setObject_forKeyedSubscript_(self->_alternates, v46, v24, v22);
    }
  }

  else
  {
    v37 = objc_alloc(MEMORY[0x277CBEB38]);
    v38 = objc_alloc(MEMORY[0x277CBEB18]);
    v40 = objc_msgSend_initWithObjects_(v38, v39, Version_parentArchiver, 0);
    v42 = objc_msgSend_initWithObjectsAndKeys_(v37, v41, v40, v22, 0);
    alternates = self->_alternates;
    self->_alternates = v42;
  }

  return Version_parentArchiver;
}

- (id)alternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion field:(int)field message:(const Message *)message
{
  v9 = *MEMORY[0x277D85DE8];
  v8[0] = field;
  v8[1] = 0;
  v6 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_fieldPath_message_(self, a2, version, formatVersion, v8, message);

  return v6;
}

- (id)alternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion fieldPath:(int *)path baseFieldPath:(const void *)fieldPath message:(const Message *)message
{
  if (path && *path)
  {
    operator new();
  }

  v7 = objc_msgSend_addAlternateArchiverForVersion_fieldPath_isDiffArchiver_diffReadVersion_message_(self, a2, version, fieldPath, 1, formatVersion, message);

  return v7;
}

- (BOOL)isSavingDocumentAs
{
  v3 = objc_msgSend_targetType(self, a2, v2);
  if (v3)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d targetType must be TSPArchiverTargetTypeDocument", "[TSPArchiverBase isSavingDocumentAs]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 559);
    v4 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPArchiverBase isSavingDocumentAs]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 559, 1, "targetType must be TSPArchiverTargetTypeDocument");

    TSUCrashBreakpoint();
    abort();
  }

  return v3;
}

- (BOOL)isSavingCollaborativeDocument
{
  v3 = objc_msgSend_targetType(self, a2, v2);
  if (v3)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d targetType must be TSPArchiverTargetTypeDocument", "[TSPArchiverBase isSavingCollaborativeDocument]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 564);
    v4 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPArchiverBase isSavingCollaborativeDocument]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 564, 1, "targetType must be TSPArchiverTargetTypeDocument");

    TSUCrashBreakpoint();
    abort();
  }

  return v3;
}

- (void)addWeakReferenceToObjectUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v7 = objc_msgSend_context(self->_object, v4, v5);
    v20 = 0;
    v10 = objc_msgSend_objectWithUUID_onlyIfLoaded_validateNewObjects_identifier_(v7, v8, dCopy, 1, 0, &v20);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v20 == 0;
    }

    if (!v11)
    {
      v12 = [TSPLazyReferenceInternal alloc];
      v10 = objc_msgSend_initWithDelegate_identifier_ownershipMode_allowUnknownObject_objectClass_objectProtocol_(v12, v13, v7, v20, 1, 0, 0, 0);
      objc_msgSend_setObjectUUID_(v10, v14, dCopy);
    }

    if (v10)
    {
      weakReferences = self->_weakReferences;
      if (!weakReferences)
      {
        v16 = [TSPReferenceOrderedSet alloc];
        v18 = objc_msgSend_initWithCapacity_(v16, v17, 1);
        v19 = self->_weakReferences;
        self->_weakReferences = v18;

        weakReferences = self->_weakReferences;
      }

      objc_msgSend_addItem_(weakReferences, v9, v10);
    }
  }
}

- (void)setWeakReferenceToObjectUUID:(id)d message:(void *)message
{
  dCopy = d;
  objc_msgSend_tsp_saveToMessage_(dCopy, v6, message);
  objc_msgSend_addWeakReferenceToObjectUUID_(self, v7, dCopy);
}

- (void)setWeakReferenceToObjectUUIDData:(const void *)data message:(void *)message
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = objc_msgSend_initWithUUIDBytes_(v7, v8, data);
  objc_msgSend_addWeakReferenceToObjectUUID_(self, v10, v9);

  objc_autoreleasePoolPop(v6);
}

- (void)setWeakReferenceToObjectUUIDPath:(id)path message:(void *)message
{
  pathCopy = path;
  objc_msgSend_saveToMessage_(pathCopy, v6, message);
  v9 = objc_msgSend_lastUUID(pathCopy, v7, v8);
  objc_msgSend_addWeakReferenceToObjectUUID_(self, v10, v9);
}

- (void)setWeakReferenceToObjectUUIDArray:(id)array message:(void *)message
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  arrayCopy = array;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v7, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = *(message + 2);
        if (!v13)
        {
          v15 = *(message + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v15 + 1);
          v13 = *(message + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(message + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(message + 2) = v14 + 1;
          objc_msgSend_setWeakReferenceToObjectUUID_message_(self, v8, v12, *&v13[2 * v14 + 2], v20);
          goto LABEL_13;
        }

        if (v15 == *(message + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*message);
        v17 = *(message + 2);
        v18 = *(message + 2) + 8 * v17;
        *(message + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setWeakReferenceToObjectUUID_message_(self, v19, v12, v16, v20);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v8, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)setWeakReferenceToObjectUUIDPathArray:(id)array message:(void *)message
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  arrayCopy = array;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v7, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = *(message + 2);
        if (!v13)
        {
          v15 = *(message + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v15 + 1);
          v13 = *(message + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(message + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(message + 2) = v14 + 1;
          objc_msgSend_setWeakReferenceToObjectUUIDPath_message_(self, v8, v12, *&v13[2 * v14 + 2], v20);
          goto LABEL_13;
        }

        if (v15 == *(message + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUIDPath>(*message);
        v17 = *(message + 2);
        v18 = *(message + 2) + 8 * v17;
        *(message + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setWeakReferenceToObjectUUIDPath_message_(self, v19, v12, v16, v20);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v8, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)setSparseReferenceArray:(id)array isWeak:(BOOL)weak message:(void *)message
{
  weakCopy = weak;
  arrayCopy = array;
  v9 = objc_msgSend_count(arrayCopy, v6, v7);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = -1;
    v12 = 0x277D81000uLL;
    while (1)
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v8, v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15);

        if (v13 != v20)
        {
          v22 = *(v12 + 336);
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPArchiverBase(SparseArray) setSparseReferenceArray:isWeak:message:]");
          v24 = v12;
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver_SparseArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 41, 0, "Invalid object in sparse object array: %@", v13);

          v12 = v24;
          objc_msgSend_logBacktraceThrottled(*(v24 + 336), v28, v29);
        }

        goto LABEL_26;
      }

      v16 = *(message + 5);
      if (!v16)
      {
        break;
      }

      v17 = *(message + 8);
      v18 = *v16;
      if (v17 >= *v16)
      {
        if (v18 == *(message + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 24), v18 + 1);
          v16 = *(message + 5);
          v18 = *v16;
        }

        *v16 = v18 + 1;
        v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseReferenceArray_Entry>(*(message + 3));
        v30 = *(message + 8);
        v31 = *(message + 5) + 8 * v30;
        *(message + 8) = v30 + 1;
        *(v31 + 8) = v19;
        goto LABEL_13;
      }

      *(message + 8) = v17 + 1;
      v19 = *&v16[2 * v17 + 2];
LABEL_13:
      v32 = *(v19 + 16);
      *(v19 + 32) = v10;
      *(v19 + 16) = v32 | 3;
      v33 = *(v19 + 24);
      if (weakCopy)
      {
        if (!v33)
        {
          v34 = *(v19 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v34);
          *(v19 + 24) = v33;
        }

        objc_msgSend_setWeakReference_message_(self, v14, v13, v33);
      }

      else
      {
        if (!v33)
        {
          v35 = *(v19 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v35);
          *(v19 + 24) = v33;
        }

        objc_msgSend_setStrongReference_message_(self, v14, v13, v33);
      }

      if (v11 <= v10)
      {
        v11 = v10;
      }

LABEL_26:

      if (v9 == ++v10)
      {
        v36 = v11 + 1;
        goto LABEL_29;
      }
    }

    v18 = *(message + 9);
    goto LABEL_11;
  }

  v36 = 0;
LABEL_29:
  *(message + 4) |= 1u;
  *(message + 12) = v36;
}

- (void)setSparseWeakObjectUUIDReferenceArray:(id)array message:(void *)message
{
  arrayCopy = array;
  v8 = objc_msgSend_count(arrayCopy, v5, v6);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = -1;
    while (1)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v7, v9);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);

        if (v11 != v18)
        {
          v20 = MEMORY[0x277D81150];
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPArchiverBase(SparseArray) setSparseWeakObjectUUIDReferenceArray:message:]");
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver_SparseArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 63, 0, "Invalid object in sparse UUID array: %@", v11);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        }

        goto LABEL_19;
      }

      v14 = *(message + 5);
      if (!v14)
      {
        break;
      }

      v15 = *(message + 8);
      v16 = *v14;
      if (v15 >= *v14)
      {
        if (v16 == *(message + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 24), v16 + 1);
          v14 = *(message + 5);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDArray_Entry>(*(message + 3));
        v27 = *(message + 8);
        v28 = *(message + 5) + 8 * v27;
        *(message + 8) = v27 + 1;
        *(v28 + 8) = v17;
        goto LABEL_13;
      }

      *(message + 8) = v15 + 1;
      v17 = *&v14[2 * v15 + 2];
LABEL_13:
      v29 = *(v17 + 16);
      *(v17 + 32) = v9;
      *(v17 + 16) = v29 | 3;
      v30 = *(v17 + 24);
      if (!v30)
      {
        v31 = *(v17 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v31);
        *(v17 + 24) = v30;
      }

      objc_msgSend_tsp_saveToMessage_(v11, v12, v30);
      if (v10 <= v9)
      {
        v10 = v9;
      }

LABEL_19:

      if (v8 == ++v9)
      {
        v32 = v10 + 1;
        goto LABEL_22;
      }
    }

    v16 = *(message + 9);
    goto LABEL_11;
  }

  v32 = 0;
LABEL_22:
  *(message + 4) |= 1u;
  *(message + 12) = v32;
}

- (void)setSparseWeakObjectUUIDPathReferenceArray:(id)array message:(void *)message
{
  arrayCopy = array;
  v8 = objc_msgSend_count(arrayCopy, v5, v6);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = -1;
    while (1)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v7, v9);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);

        if (v11 != v18)
        {
          v20 = MEMORY[0x277D81150];
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPArchiverBase(SparseArray) setSparseWeakObjectUUIDPathReferenceArray:message:]");
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver_SparseArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 85, 0, "Invalid object in sparse UUID path array: %@", v11);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        }

        goto LABEL_19;
      }

      v14 = *(message + 5);
      if (!v14)
      {
        break;
      }

      v15 = *(message + 8);
      v16 = *v14;
      if (v15 >= *v14)
      {
        if (v16 == *(message + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 24), v16 + 1);
          v14 = *(message + 5);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDPathArray_Entry>(*(message + 3));
        v27 = *(message + 8);
        v28 = *(message + 5) + 8 * v27;
        *(message + 8) = v27 + 1;
        *(v28 + 8) = v17;
        goto LABEL_13;
      }

      *(message + 8) = v15 + 1;
      v17 = *&v14[2 * v15 + 2];
LABEL_13:
      v29 = *(v17 + 16);
      *(v17 + 32) = v9;
      *(v17 + 16) = v29 | 3;
      v30 = *(v17 + 24);
      if (!v30)
      {
        v31 = *(v17 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUIDPath>(v31);
        *(v17 + 24) = v30;
      }

      objc_msgSend_saveToMessage_(v11, v12, v30);
      if (v10 <= v9)
      {
        v10 = v9;
      }

LABEL_19:

      if (v8 == ++v9)
      {
        v32 = v10 + 1;
        goto LABEL_22;
      }
    }

    v16 = *(message + 9);
    goto LABEL_11;
  }

  v32 = 0;
LABEL_22:
  *(message + 4) |= 1u;
  *(message + 12) = v32;
}

@end