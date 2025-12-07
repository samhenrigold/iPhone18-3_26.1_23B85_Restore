@interface TSPComponentWriter
- (BOOL)canSkipArchivingStronglyReferencedObject:(id)object fromComponentRootObject:(id)rootObject;
- (BOOL)isObjectExternal:(id)external archiverOrNil:(id)nil parentObject:(id)object hasArchiverAccessLock:(BOOL)lock claimingComponent:(id *)component isOwnedByDifferentPackage:(BOOL *)package isAmbiguousOwnership:(BOOL *)ownership;
- (BOOL)isObjectExternalBecauseItAlreadyBelongsToAnotherComponent:(id)component parentObject:(id)object claimingComponent:(id *)claimingComponent claimingPackageIdentifier:(unsigned __int8 *)identifier claimingComponentWillBeCopied:(BOOL *)copied claimingComponentReadVersion:(unint64_t *)version;
- (BOOL)isObjectExternalBecauseOfExplicitComponentOwnership:(id)ownership archiverOrNil:(id)nil claimingComponentOrNil:(id)orNil hasArchiverAccessLock:(BOOL)lock explicitComponentRootObject:(id *)object claimingComponent:(id *)component isOwnedByDifferentPackage:(BOOL *)package;
- (BOOL)shouldDelayWritingObject:(id)object;
- (BOOL)shouldWriteObject:(id)object;
- (BOOL)validateObjectContextForObject:(id)object;
- (TSPComponentWriter)init;
- (TSPComponentWriter)initWithComponent:(id)component locator:(id)locator rootObject:(id)object delegate:(id)delegate mode:(int64_t)mode packageIdentifier:(unsigned __int8)identifier objectReferenceMapOrNil:(id)nil writeChannel:(id)self0 archiverManager:(id)self1;
- (id).cxx_construct;
- (void)acquireArchiverAccessLockAndWriteObjects:(id)objects parentObject:(id)object completion:(id)completion;
- (void)validateAmbiguousObjectOwnershipForObject:(id)object explicitComponentRootObject:(id)rootObject parentObject:(id)parentObject claimingComponent:(id)component claimingPackageIdentifier:(unsigned __int8)identifier claimingComponentWillBeCopied:(BOOL)copied claimingComponentReadVersion:(unint64_t)version isAmbiguousOwnership:(BOOL *)self0;
- (void)validateExplicitComponentOwnershipForObject:(id)object archiverOrNil:(id)nil parentObject:(id)parentObject hasArchiverAccessLock:(BOOL)lock;
- (void)writeArchiver:(id)archiver forObjectIdentifier:(int64_t)identifier;
- (void)writeObject:(id)object archiver:(id)archiver parentObject:(id)parentObject completion:(id)completion;
- (void)writeWithArchiverAccessLockForObjects:(id)objects parentObject:(id)object completion:(id)completion;
- (void)writeWithCompletionQueue:(id)queue completion:(id)completion;
@end

@implementation TSPComponentWriter

- (TSPComponentWriter)initWithComponent:(id)component locator:(id)locator rootObject:(id)object delegate:(id)delegate mode:(int64_t)mode packageIdentifier:(unsigned __int8)identifier objectReferenceMapOrNil:(id)nil writeChannel:(id)self0 archiverManager:(id)self1
{
  componentCopy = component;
  locatorCopy = locator;
  objectCopy = object;
  delegateCopy = delegate;
  nilCopy = nil;
  channelCopy = channel;
  managerCopy = manager;
  v80 = objectCopy;
  if (!objectCopy)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", "[TSPComponentWriter initWithComponent:locator:rootObject:delegate:mode:packageIdentifier:objectReferenceMapOrNil:writeChannel:archiverManager:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm", 110, "rootObject", managerCopy, channelCopy, nilCopy, 0);
    v71 = MEMORY[0x277D81150];
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "[TSPComponentWriter initWithComponent:locator:rootObject:delegate:mode:packageIdentifier:objectReferenceMapOrNil:writeChannel:archiverManager:]");
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v76, v73, v75, 110, 1, "invalid nil value for '%{public}s'", "rootObject");

    TSUCrashBreakpoint();
    abort();
  }

  v83.receiver = self;
  v83.super_class = TSPComponentWriter;
  v20 = [(TSPComponentWriter *)&v83 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_component, component);
    v24 = objc_msgSend_copy(locatorCopy, v22, v23);
    locator = v21->_locator;
    v21->_locator = v24;

    objc_storeStrong(&v21->_rootObject, object);
    objc_storeWeak(&v21->_delegate, delegateCopy);
    v21->_mode = mode;
    v21->_packageIdentifier = identifier;
    objc_storeStrong(&v21->_objectReferenceMap, nil);
    objc_storeStrong(&v21->_writeChannel, channel);
    objc_storeStrong(&v21->_archiverManager, manager);
    v26 = dispatch_semaphore_create(0);
    delegateSemaphore = v21->_delegateSemaphore;
    v21->_delegateSemaphore = v26;

    v28 = [TSPReferenceOrderedSet alloc];
    v30 = objc_msgSend_initWithCapacity_(v28, v29, 1);
    archivedObjects = v21->_archivedObjects;
    v21->_archivedObjects = v30;

    v34 = objc_msgSend_newTspWeakObjectsMapTable(MEMORY[0x277CCAB00], v32, v33);
    archivedObjectsDictionary = v21->_archivedObjectsDictionary;
    v21->_archivedObjectsDictionary = v34;

    v36 = dispatch_group_create();
    writeGroup = v21->_writeGroup;
    v21->_writeGroup = v36;

    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create("TSPComponentWriter.Write", v38);
    writeQueue = v21->_writeQueue;
    v21->_writeQueue = v39;

    *&v21->_flags |= 1u;
    v41 = [TSPReferenceOrderedSet alloc];
    v43 = objc_msgSend_initWithCapacity_(v41, v42, 0);
    weakReferences = v21->_weakReferences;
    v21->_weakReferences = v43;

    v45 = objc_alloc(MEMORY[0x277CCAA50]);
    v47 = objc_msgSend_initWithOptions_capacity_(v45, v46, 512, 0);
    lazyReferences = v21->_lazyReferences;
    v21->_lazyReferences = v47;

    v49 = objc_alloc(MEMORY[0x277CCAA50]);
    v51 = objc_msgSend_initWithOptions_capacity_(v49, v50, 512, 0);
    dataReferences = v21->_dataReferences;
    v21->_dataReferences = v51;

    v53 = objc_opt_new();
    featureInfos = v21->_featureInfos;
    v21->_featureInfos = v53;

    v55 = [TSPReferenceOrderedSet alloc];
    v57 = objc_msgSend_initWithCapacity_(v55, v56, 0);
    externalReferences = v21->_externalReferences;
    v21->_externalReferences = v57;

    v61 = objc_msgSend_ambiguousReferences(componentCopy, v59, v60);
    componentAmbiguousReferences = v21->_componentAmbiguousReferences;
    v21->_componentAmbiguousReferences = v61;

    v63 = objc_alloc_init(MEMORY[0x277CCAB58]);
    ambiguousReferences = v21->_ambiguousReferences;
    v21->_ambiguousReferences = v63;

    if (objc_opt_respondsToSelector())
    {
      v65 = 8;
    }

    else
    {
      v65 = 0;
    }

    *&v21->_flags = *&v21->_flags & 0xF7 | v65;
    if (objc_opt_respondsToSelector())
    {
      v66 = 16;
    }

    else
    {
      v66 = 0;
    }

    *&v21->_flags = *&v21->_flags & 0xEF | v66;
    if (objc_opt_respondsToSelector())
    {
      v67 = 32;
    }

    else
    {
      v67 = 0;
    }

    *&v21->_flags = *&v21->_flags & 0xDF | v67;
    if (objc_opt_respondsToSelector())
    {
      v68 = 64;
    }

    else
    {
      v68 = 0;
    }

    *&v21->_flags = *&v21->_flags & 0xBF | v68;
    if (objc_opt_respondsToSelector())
    {
      v69 = 0x80;
    }

    else
    {
      v69 = 0;
    }

    *&v21->_flags = v69 & 0x80 | *&v21->_flags & 0x7F;
  }

  return v21;
}

- (TSPComponentWriter)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentWriter init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 160, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPComponentWriter init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)writeWithCompletionQueue:(id)queue completion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  if (self->_rootObject)
  {
    v27[0] = self->_rootObject;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v27, 1);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_276A9D0C0;
    v22[3] = &unk_27A6E55B0;
    v22[4] = self;
    v23 = queueCopy;
    v24 = completionCopy;
    objc_msgSend_acquireArchiverAccessLockAndWriteObjects_parentObject_completion_(self, v10, v9, 0, v22);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPComponentWriter writeWithCompletionQueue:completion:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
    locator = self->_locator;
    v18 = objc_msgSend_identifier(self->_component, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v14, 167, 0, "Component [%{public}@-%llu] root object should not be nil. Make sure to have a strong reference to the root object before writing its component.", locator, v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A9D074;
    block[3] = &unk_27A6E3480;
    v26 = completionCopy;
    dispatch_async(queueCopy, block);
  }
}

- (BOOL)shouldWriteObject:(id)object
{
  if (objc_msgSend_containsItem_(self->_archivedObjects, a2, object))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_shouldDelayWritingObject_(self, v5, object) ^ 1;
  }
}

- (void)acquireArchiverAccessLockAndWriteObjects:(id)objects parentObject:(id)object completion:(id)completion
{
  objectsCopy = objects;
  objectCopy = object;
  completionCopy = completion;
  dispatch_group_enter(self->_writeGroup);
  archiverManager = self->_archiverManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276A9D374;
  v16[3] = &unk_27A6E39F8;
  v16[4] = self;
  v17 = objectsCopy;
  v18 = objectCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = objectCopy;
  v14 = objectsCopy;
  objc_msgSend_performAsynchronousArchiverAccessUsingBlock_(archiverManager, v15, v16);
}

- (void)writeWithArchiverAccessLockForObjects:(id)objects parentObject:(id)object completion:(id)completion
{
  objectsCopy = objects;
  objectCopy = object;
  block = completion;
  if (objc_msgSend_count(objectsCopy, v10, v11))
  {
    *&v106 = objectCopy;
    *(&v106 + 1) = objectsCopy;
    v107 = 0;
    sub_276A9DAC4(&self->_objectStack, &v106, v12, v13, v14, v15);
  }

  v99 = objectsCopy;
  for (i = self->_objectStack.__end_; i != self->_objectStack.__begin_; i = self->_objectStack.__end_)
  {
    v17 = objectCopy;
    v18 = *(i - 2);
    objectCopy = *(i - 3);

    v19 = *(i - 1);
    v23 = objc_msgSend_count(v18, v20, v21);
    if (v19 < v23)
    {
      do
      {
        v24 = objc_msgSend_objectAtIndexedSubscript_(v18, v22, v19);
        v27 = v24;
        LOBYTE(v106) = 0;
        if (self->_mode || v24 == self->_rootObject || (objc_msgSend_isComponentRoot(v24, v25, v26) & 1) == 0 && !objc_msgSend_isObjectExternal_archiverOrNil_parentObject_hasArchiverAccessLock_claimingComponent_isOwnedByDifferentPackage_isAmbiguousOwnership_(self, v25, v27, 0, objectCopy, 1, 0, 0, &v106))
        {
          if (objc_msgSend_shouldWriteObject_(self, v25, v27))
          {
            v34 = v19 + 1;
            *(i - 1) = v34;
            if (!v27)
            {
              break;
            }

            if (objc_msgSend_validateObjectContextForObject_(self, v40, v27))
            {
              v43 = objc_msgSend_allowedObjectTargetTypes(v27, v41, v42);
              v45 = v43;
              if (v43)
              {
                if (v43 == 31)
                {
                  goto LABEL_31;
                }

                if ((*&self->_flags & 4) == 0)
                {
                  WeakRetained = objc_loadWeakRetained(&self->_delegate);
                  self->_objectTargetType = objc_msgSend_objectTargetTypeForComponentWriter_(WeakRetained, v47, self);

                  *&self->_flags |= 4u;
                }

                if ((self->_objectTargetType & ~v45) == 0)
                {
LABEL_31:
                  v38 = v99;
                  if (!objectCopy)
                  {
                    rootObject = self->_rootObject;
                    if (v27 == rootObject)
                    {
                      objectCopy = 0;
                    }

                    else
                    {
                      objectCopy = rootObject;
                    }
                  }

                  dispatch_group_enter(self->_writeGroup);
                  if (v27 == self->_rootObject)
                  {
                    Version = objc_msgSend_componentReadVersion(v27, v78, v79);
                    if (objc_msgSend_componentRequiresCurrentVersion(v27, v81, v82))
                    {
                      v83 = UnsafePointer();
                    }

                    else
                    {
                      v83 = 0;
                    }

                    if (Version <= v83)
                    {
                      v84 = v83;
                    }

                    else
                    {
                      v84 = Version;
                    }

                    self->_componentReadVersion = v84;
                  }

                  v85 = objc_msgSend_archiverForObject_hasArchiverAccessLock_(self->_archiverManager, v78, v27, 1);
                  v88 = objc_msgSend_serializeGroup(v85, v86, v87);
                  writeQueue = self->_writeQueue;
                  v101[0] = MEMORY[0x277D85DD0];
                  v101[1] = 3221225472;
                  v101[2] = sub_276A9DB18;
                  v101[3] = &unk_27A6E5E98;
                  v101[4] = self;
                  v98 = v27;
                  v102 = v98;
                  v103 = v85;
                  v90 = objectCopy;
                  v104 = v90;
                  v105 = block;
                  dispatch_group_notify(v88, writeQueue, v101);

                  if (v18 == v99)
                  {
                    v94 = objc_msgSend_count(v99, v91, v92);
                    if (v34 < v94)
                    {
                      do
                      {
                        archiverManager = self->_archiverManager;
                        v96 = objc_msgSend_objectAtIndexedSubscript_(v99, v93, v34);
                        objc_msgSend_archiveObjectWithLowPriority_(archiverManager, v97, v96);

                        ++v34;
                      }

                      while (v94 != v34);
                    }
                  }

                  v27 = v98;
                  objectCopy = v90;
LABEL_19:
                  v39 = block;
                  goto LABEL_24;
                }

                v64 = MEMORY[0x277D81150];
                v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSPComponentWriter writeWithArchiverAccessLockForObjects:parentObject:completion:]");
                v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
                v66 = v64;
                v67 = objc_opt_class();
                v54 = NSStringFromClass(v67);
                v70 = objc_msgSend_tsp_identifier(self->_rootObject, v68, v69);
                v71 = objc_opt_class();
                v59 = NSStringFromClass(v71);
                v74 = objc_msgSend_tsp_identifier(v27, v72, v73);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v75, v50, v52, 296, 0, "Component root object [%{public}@-%llu] cannot have a reference to object [%{public}@-%llu] because it does not support to be archived to %tu target type (allowed target types = %tu).", v54, v70, v59, v74, self->_objectTargetType, v45);
              }

              else
              {
                v49 = MEMORY[0x277D81150];
                v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSPComponentWriter writeWithArchiverAccessLockForObjects:parentObject:completion:]");
                v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
                v53 = objc_opt_class();
                v54 = NSStringFromClass(v53);
                v57 = objc_msgSend_tsp_identifier(self->_rootObject, v55, v56);
                v58 = objc_opt_class();
                v59 = NSStringFromClass(v58);
                v62 = objc_msgSend_tsp_identifier(v27, v60, v61);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v63, v50, v52, 288, 0, "Component root object [%{public}@-%llu] cannot have a reference to object [%{public}@-%llu] because it does not support to be archived to any target.", v54, v57, v59, v62);
              }

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77);
            }

            *&self->_flags &= ~1u;
            v39 = block;
            dispatch_group_notify(self->_writeGroup, self->_writeQueue, block);
            goto LABEL_21;
          }
        }

        else
        {
          if (!objc_msgSend_validateObjectContextForObject_(self, v25, v27))
          {
            *&self->_flags &= ~1u;
            v39 = block;
            dispatch_group_notify(self->_writeGroup, self->_writeQueue, block);

            v27 = v18;
LABEL_21:
            v38 = v99;
            goto LABEL_24;
          }

          objc_msgSend_addItem_(self->_externalReferences, v28, v27);
          if (v106 == 1)
          {
            ambiguousReferences = self->_ambiguousReferences;
            v32 = objc_msgSend_tsp_identifier(v27, v29, v30);
            objc_msgSend_addIndex_(ambiguousReferences, v33, v32);
          }
        }

        ++v19;
      }

      while (v23 != v19);
    }

    sub_276AA0014(&self->_objectStack, self->_objectStack.__end_ - 24);
  }

  v35 = objc_loadWeakRetained(&self->_delegate);
  v27 = objc_msgSend_componentWriterWantsDelayedObjects_(v35, v36, self);

  v38 = v99;
  if (v27)
  {
    objc_msgSend_writeWithArchiverAccessLockForObjects_parentObject_completion_(self, v37, v27, 0, block);
    goto LABEL_19;
  }

  v39 = block;
  if (block)
  {
    dispatch_group_notify(self->_writeGroup, self->_writeQueue, block);
  }

LABEL_24:
}

- (void)writeObject:(id)object archiver:(id)archiver parentObject:(id)parentObject completion:(id)completion
{
  objectCopy = object;
  archiverCopy = archiver;
  parentObjectCopy = parentObject;
  completionCopy = completion;
  if (objc_msgSend_beginWrite(archiverCopy, v14, v15))
  {
    objc_msgSend_addItem_(self->_archivedObjects, v16, objectCopy);
    archivedObjectsDictionary = self->_archivedObjectsDictionary;
    v20 = objc_msgSend_tsp_identifier(objectCopy, v18, v19);
    objc_msgSend_tsp_setObject_forIdentifier_(archivedObjectsDictionary, v21, objectCopy, v20);
    mode = self->_mode;
    if (!mode)
    {
      objc_msgSend_validateExplicitComponentOwnershipForObject_archiverOrNil_parentObject_hasArchiverAccessLock_(self, v22, objectCopy, archiverCopy, parentObjectCopy, 0);
      mode = self->_mode;
    }

    if ((mode > 3 || mode == 1) && (objc_msgSend_aggregatedWeakReferences(archiverCopy, v22, v23), v48 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend_count(v48, v49, v50), v48, v51))
    {
      v52 = objc_msgSend_aggregatedStrongReferences(archiverCopy, v22, v23);
      v55 = objc_msgSend_count(v52, v53, v54);

      if (self->_mode == 1)
      {
        v58 = objc_msgSend_aggregatedWeakReferences(archiverCopy, v56, v57);
        v55 += objc_msgSend_count(v58, v59, v60);
      }

      v61 = [TSPReferenceOrderedSet alloc];
      v26 = objc_msgSend_initWithCapacity_(v61, v62, v55);
      v65 = objc_msgSend_aggregatedStrongReferences(archiverCopy, v63, v64);
      objc_msgSend_unionSet_(v26, v66, v65);

      if (self->_mode == 1)
      {
        v68 = objc_msgSend_aggregatedWeakReferences(archiverCopy, v25, v67);
        objc_msgSend_unionSet_(v26, v69, v68);
      }
    }

    else
    {
      v26 = objc_msgSend_aggregatedStrongReferences(archiverCopy, v22, v23);
    }

    objc_msgSend_addReferencesFromObject_archiver_(self->_objectReferenceMap, v25, objectCopy, archiverCopy);
    v29 = objc_msgSend_tsp_identifier(objectCopy, v27, v28);
    objc_msgSend_writeArchiver_forObjectIdentifier_(self, v30, archiverCopy, v29);
    objc_msgSend_cleanup(archiverCopy, v31, v32);
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = sub_276A9DFEC;
    v79 = sub_276A9DFFC;
    v80 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = objc_msgSend_count(v26, v33, v34);
    if (v72[3])
    {
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = sub_276A9E004;
      v70[3] = &unk_27A6E6458;
      v70[4] = self;
      v70[5] = &v75;
      v70[6] = &v71;
      objc_msgSend_enumerateItemsUsingBlock_(v26, v35, v70);
    }

    objc_msgSend_acquireArchiverAccessLockAndWriteObjects_parentObject_completion_(self, v35, v76[5], objectCopy, completionCopy);
    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v75, 8);
  }

  else
  {
    v75 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v26 = objc_msgSend_componentWriter_wantsComponentOfObject_componentReadVersion_(WeakRetained, v37, self, objectCopy, &v75);

    LOBYTE(v71) = 0;
    v40 = objc_msgSend_explicitComponentRootObject(archiverCopy, v38, v39);
    objc_msgSend_validateAmbiguousObjectOwnershipForObject_explicitComponentRootObject_parentObject_claimingComponent_claimingPackageIdentifier_claimingComponentWillBeCopied_claimingComponentReadVersion_isAmbiguousOwnership_(self, v41, objectCopy, v40, parentObjectCopy, v26, self->_packageIdentifier, 0, v75, &v71);

    if ((objc_msgSend_containsItem_(self->_archivedObjects, v42, objectCopy) & 1) == 0)
    {
      objc_msgSend_addItem_(self->_externalReferences, v43, objectCopy);
    }

    if (v71 == 1)
    {
      ambiguousReferences = self->_ambiguousReferences;
      v46 = objc_msgSend_tsp_identifier(objectCopy, v43, v44);
      objc_msgSend_addIndex_(ambiguousReferences, v47, v46);
    }

    objc_msgSend_acquireArchiverAccessLockAndWriteObjects_parentObject_completion_(self, v43, 0, 0, completionCopy);
  }
}

- (void)writeArchiver:(id)archiver forObjectIdentifier:(int64_t)identifier
{
  v89 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v9 = archiverCopy;
  if (*&self->_flags)
  {
    if (objc_msgSend_success(archiverCopy, v7, v8))
    {
      v12 = objc_msgSend_objectUUID(v9, v10, v11);
      v15 = v12 != 0;
      v81 = v12;
      if (v12)
      {
        componentObjectUUIDMap = self->_componentObjectUUIDMap;
        if (!componentObjectUUIDMap)
        {
          v17 = objc_alloc_init(TSPMutableComponentObjectUUIDMap);
          v18 = self->_componentObjectUUIDMap;
          self->_componentObjectUUIDMap = v17;

          componentObjectUUIDMap = self->_componentObjectUUIDMap;
        }

        v20 = objc_msgSend_setObjectUUID_forIdentifier_(componentObjectUUIDMap, v13, v81, identifier);
        if (v81 != v20 && (objc_msgSend_isEqual_(v81, v19, v20) & 1) == 0)
        {
          v68 = MEMORY[0x277D81150];
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPComponentWriter writeArchiver:forObjectIdentifier:]");
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
          v74 = objc_msgSend_locator(self->_component, v72, v73);
          v77 = objc_msgSend_identifier(self->_component, v75, v76);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v78, v69, v71, 521, 0, "Archived two objects with the same identifier %llu in component [%{public}@-%llu] with different UUIDs: %{public}@ and %{public}@", identifier, v74, v77, v20, v81);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80);
          *&self->_flags &= ~1u;

LABEL_25:
          goto LABEL_26;
        }
      }

      v22 = objc_msgSend_aggregatedCountedDataReferences(v9, v13, v14);
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = sub_276A9E83C;
      v86[3] = &unk_27A6E6480;
      v86[4] = self;
      v86[5] = identifier;
      v87 = v15;
      objc_msgSend_enumerateIdentifiersUsingBlock_(v22, v23, v86);
      objc_msgSend_aggregatedDataReferences(v9, v24, v25);
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v26 = v83 = 0u;
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v82, v88, 16);
      if (v30)
      {
        v31 = *v83;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v83 != v31)
            {
              objc_enumerationMutation(v26);
            }

            v33 = objc_msgSend_identifier(*(*(&v82 + 1) + 8 * i), v28, v29);
            v35 = objc_msgSend_countForIdentifier_default_(v22, v34, v33, 0);
            if (v35 <= 0)
            {
              v61 = MEMORY[0x277D81150];
              v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPComponentWriter writeArchiver:forObjectIdentifier:]");
              v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v65, v62, v64, 545, 0, "Counted data references didn't include reference for data identifier %llu. count=%td", v33, v35);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
              *&self->_flags &= ~1u;
              v51 = v26;
              goto LABEL_24;
            }
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v82, v88, 16);
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      objc_msgSend_unionHashTable_(self->_dataReferences, v36, v26);
      weakReferences = self->_weakReferences;
      v40 = objc_msgSend_aggregatedWeakReferences(v9, v38, v39);
      objc_msgSend_unionSet_(weakReferences, v41, v40);

      lazyReferences = self->_lazyReferences;
      v45 = objc_msgSend_aggregatedLazyReferences(v9, v43, v44);
      objc_msgSend_unionHashTable_(lazyReferences, v46, v45);

      v51 = objc_msgSend_featureInfos(v9, v47, v48);
      if (v51)
      {
        objc_msgSend_unionSet_(self->_featureInfos, v49, v51);
      }

      v53 = objc_msgSend_serializedData(v9, v49, v50);
      if (!v53)
      {
        v54 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSPComponentWriter writeArchiver:forObjectIdentifier:]");
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v55, v57, 561, 0, "Archiver hasn't been serialized");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
      }

      objc_msgSend_writeData_(self->_writeChannel, v52, v53);

LABEL_24:
      goto LABEL_25;
    }

    *&self->_flags &= ~1u;
  }

LABEL_26:
}

- (BOOL)canSkipArchivingStronglyReferencedObject:(id)object fromComponentRootObject:(id)rootObject
{
  selfCopy = self;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276A9EA60;
  v10[3] = &unk_27A6E64A8;
  v10[4] = selfCopy;
  v10[5] = &v11;
  objc_msgSend_componentWriter_canSkipArchivingStronglyReferencedObject_fromComponentRootObject_completion_(WeakRetained, v8, selfCopy, object, rootObject, v10);

  dispatch_semaphore_wait(selfCopy->_delegateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(selfCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return selfCopy;
}

- (BOOL)isObjectExternal:(id)external archiverOrNil:(id)nil parentObject:(id)object hasArchiverAccessLock:(BOOL)lock claimingComponent:(id *)component isOwnedByDifferentPackage:(BOOL *)package isAmbiguousOwnership:(BOOL *)ownership
{
  lockCopy = lock;
  externalCopy = external;
  nilCopy = nil;
  objectCopy = object;
  if (self->_mode || self->_rootObject == externalCopy)
  {
    isOwnedByDifferentPackage = 0;
    if (ownership)
    {
      *ownership = 0;
    }
  }

  else
  {
    v42 = 1;
    v41 = 0;
    v39 = 0;
    v40 = 0;
    isObjectExternalBecauseItAlreadyBelongsToAnotherComponent_parentObject_claimingComponent_claimingPackageIdentifier_claimingComponentWillBeCopied_claimingComponentReadVersion = objc_msgSend_isObjectExternalBecauseItAlreadyBelongsToAnotherComponent_parentObject_claimingComponent_claimingPackageIdentifier_claimingComponentWillBeCopied_claimingComponentReadVersion_(self, v17, externalCopy, objectCopy, &v39, &v42, &v41, &v40);
    v21 = v39;
    if (isObjectExternalBecauseItAlreadyBelongsToAnotherComponent_parentObject_claimingComponent_claimingPackageIdentifier_claimingComponentWillBeCopied_claimingComponentReadVersion)
    {
      v37 = v21;
      if (!v21)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPComponentWriter isObjectExternal:archiverOrNil:parentObject:hasArchiverAccessLock:claimingComponent:isOwnedByDifferentPackage:isAmbiguousOwnership:]");
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v25, v36, v24, 593, 0, "invalid nil value for '%{public}s'", "claimingComponent");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      }

      v38 = 0;
      v28 = v37;
      objc_msgSend_isObjectExternalBecauseOfExplicitComponentOwnership_archiverOrNil_claimingComponentOrNil_hasArchiverAccessLock_explicitComponentRootObject_claimingComponent_isOwnedByDifferentPackage_(self, v22, externalCopy, nilCopy, v37, lockCopy, &v38, 0, 0);
      v29 = v38;
      objc_msgSend_validateAmbiguousObjectOwnershipForObject_explicitComponentRootObject_parentObject_claimingComponent_claimingPackageIdentifier_claimingComponentWillBeCopied_claimingComponentReadVersion_isAmbiguousOwnership_(self, v30, externalCopy, v29, objectCopy, v37, v42, v41, v40, ownership);
      if (component)
      {
        v31 = v37;
        *component = v37;
      }

      if (package)
      {
        *package = v42 != self->_packageIdentifier;
      }

      isOwnedByDifferentPackage = 1;
    }

    else
    {
      if (ownership)
      {
        *ownership = 0;
      }

      packageCopy = package;
      v32 = v21;
      isOwnedByDifferentPackage = objc_msgSend_isObjectExternalBecauseOfExplicitComponentOwnership_archiverOrNil_claimingComponentOrNil_hasArchiverAccessLock_explicitComponentRootObject_claimingComponent_isOwnedByDifferentPackage_(self, v22, externalCopy, nilCopy, 0, lockCopy, 0, component, packageCopy);
      v28 = v32;
    }
  }

  return isOwnedByDifferentPackage;
}

- (BOOL)isObjectExternalBecauseOfExplicitComponentOwnership:(id)ownership archiverOrNil:(id)nil claimingComponentOrNil:(id)orNil hasArchiverAccessLock:(BOOL)lock explicitComponentRootObject:(id *)object claimingComponent:(id *)component isOwnedByDifferentPackage:(BOOL *)package
{
  lockCopy = lock;
  ownershipCopy = ownership;
  nilCopy = nil;
  orNilCopy = orNil;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v20 = objc_msgSend_componentWriter_wantsExplicitComponentRootObjectForObject_archiverOrNil_claimingComponent_hasArchiverAccessLock_(WeakRetained, v19, self, ownershipCopy, nilCopy, orNilCopy, lockCopy);

  if (object)
  {
    v23 = v20;
    *object = v20;
  }

  if (!v20 || v20 == self->_rootObject)
  {
    goto LABEL_15;
  }

  if (!objc_msgSend_isComponentRoot(v20, v21, v22) || (objc_msgSend_shouldDelayArchiving(v20, v24, v25) & 1) == 0)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPComponentWriter isObjectExternalBecauseOfExplicitComponentOwnership:archiverOrNil:claimingComponentOrNil:hasArchiverAccessLock:explicitComponentRootObject:claimingComponent:isOwnedByDifferentPackage:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 623, 0, "When an object explicitly defines its component root object, that object must be a component root and must have delayed archiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  }

  if (!objc_msgSend_canSkipArchivingStronglyReferencedObject_fromComponentRootObject_(self, v24, ownershipCopy, v20))
  {
    ambiguousReferences = self->_ambiguousReferences;
    v37 = objc_msgSend_tsp_identifier(ownershipCopy, v33, v34);
    objc_msgSend_addIndex_(ambiguousReferences, v38, v37);
LABEL_15:
    v35 = 0;
    goto LABEL_16;
  }

  if (component)
  {
    *component = 0;
  }

  if (package)
  {
    *package = 0;
  }

  v35 = 1;
LABEL_16:

  return v35;
}

- (BOOL)isObjectExternalBecauseItAlreadyBelongsToAnotherComponent:(id)component parentObject:(id)object claimingComponent:(id *)claimingComponent claimingPackageIdentifier:(unsigned __int8 *)identifier claimingComponentWillBeCopied:(BOOL *)copied claimingComponentReadVersion:(unint64_t *)version
{
  componentCopy = component;
  objectCopy = object;
  Version = 0;
  if (self->_packageIdentifier != 1 && (*&self->_flags & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v35 = 0;
    v34 = objc_msgSend_componentWriter_externalPackageDidWriteObject_claimingComponent_componentReadVersion_(WeakRetained, v33, self, componentCopy, &v35, &Version);
    v19 = v35;

    if (v34)
    {
      v28 = 0;
      v25 = 1;
      if (!claimingComponent)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v18 = v19;
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_msgSend_tsp_component(componentCopy, v15, v16);

  if (v19 == self->_component || (*&self->_flags & 0x20) == 0 || (v20 = objc_loadWeakRetained(&self->_delegate), v22 = objc_msgSend_componentWriter_object_belongsToCopiedComponent_(v20, v21, self, componentCopy, v19), v20, !v22))
  {
    v30 = 0;
    goto LABEL_17;
  }

  v25 = objc_msgSend_packageIdentifier(v19, v23, v24);
  Version = objc_msgSend_componentReadVersion(v19, v26, v27);
  v28 = 1;
  if (claimingComponent)
  {
LABEL_8:
    v29 = v19;
    *claimingComponent = v19;
  }

LABEL_9:
  if (identifier)
  {
    *identifier = v25;
  }

  if (copied)
  {
    *copied = v28;
  }

  if (version)
  {
    *version = Version;
  }

  v30 = 1;
LABEL_17:

  return v30;
}

- (BOOL)shouldDelayWritingObject:(id)object
{
  objectCopy = object;
  if ((*&self->_flags & 0x80000000) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    shouldDelayWritingObject = objc_msgSend_componentWriter_shouldDelayWritingObject_(WeakRetained, v7, self, objectCopy);
  }

  else
  {
    shouldDelayWritingObject = 0;
  }

  return shouldDelayWritingObject;
}

- (BOOL)validateObjectContextForObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_context(objectCopy, v5, v6);
  v10 = objc_msgSend_context(self->_rootObject, v8, v9);

  if (v7 != v10)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPComponentWriter validateObjectContextForObject:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v18 = objc_msgSend_tsp_identifier(self->_rootObject, v16, v17);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v23 = objc_msgSend_tsp_identifier(objectCopy, v21, v22);
    v26 = objc_msgSend_context(objectCopy, v24, v25);
    v29 = objc_msgSend_context(self->_rootObject, v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v30, v35, v13, 687, 0, "Component root object [%{public}@-%llu] cannot have a reference to object [%{public}@-%llu] because it belongs to a different object context %p (expected object context: %p).", v15, v18, v20, v23, v26, v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  }

  return v7 == v10;
}

- (void)validateAmbiguousObjectOwnershipForObject:(id)object explicitComponentRootObject:(id)rootObject parentObject:(id)parentObject claimingComponent:(id)component claimingPackageIdentifier:(unsigned __int8)identifier claimingComponentWillBeCopied:(BOOL)copied claimingComponentReadVersion:(unint64_t)version isAmbiguousOwnership:(BOOL *)self0
{
  identifierCopy = identifier;
  objectCopy = object;
  rootObjectCopy = rootObject;
  parentObjectCopy = parentObject;
  componentCopy = component;
  v21 = componentCopy;
  packageIdentifier = self->_packageIdentifier;
  v23 = packageIdentifier == 1 || packageIdentifier == identifierCopy;
  if (!v23 || (v24 = objc_msgSend_identifier(componentCopy, v19, v20), v24 == objc_msgSend_tsp_identifier(objectCopy, v25, v26)) || v24 == objc_msgSend_tsp_identifier(rootObjectCopy, v27, v28))
  {
    v31 = 0;
    if (!ownership)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (identifierCopy != 2 || self->_packageIdentifier != 2)
  {
    v32 = objc_msgSend_identifier(self->_component, v29, v30);
    if (v32 != objc_msgSend_objectIdentifierForPackageIdentifier_(TSPObjectContainer, v33, self->_packageIdentifier) && (self->_packageIdentifier == 1 || v24 != objc_msgSend_objectIdentifierForPackageIdentifier_(TSPObjectContainer, v34, 1)) && (!objc_msgSend_supportsAutomaticAmbiguousOwnershipResolutionWithComponentReadVersion_(self, v34, self->_componentReadVersion) || (objc_msgSend_supportsAutomaticAmbiguousOwnershipResolutionWithComponentReadVersion_(self, v35, version) & 1) == 0))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (copied || !objc_msgSend_allowsImplicitComponentOwnership(objectCopy, v36, v37))
      {
        flags = self->_flags;
        if ((flags & 8) != 0)
        {
          *&self->_flags = flags | 2;
          objc_msgSend_componentWriterNeedsDocumentRecovery_(WeakRetained, v36, self);
          v40 = self->_flags;
          v82 = @" We will attempt to recover this error on the next autosave operation.";
LABEL_27:
          if ((v40 & 0x10) == 0 || (v41 = objc_loadWeakRetained(&self->_delegate), objc_msgSend_componentWriter_locatorForClaimingComponent_(v41, v42, self, v21), v43 = objc_claimAutoreleasedReturnValue(), v41, (v87 = v43) == 0))
          {
            v87 = objc_msgSend_locator(v21, v36, v37);
          }

          v81 = MEMORY[0x277D81150];
          v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSPComponentWriter validateAmbiguousObjectOwnershipForObject:explicitComponentRootObject:parentObject:claimingComponent:claimingPackageIdentifier:claimingComponentWillBeCopied:claimingComponentReadVersion:isAmbiguousOwnership:]");
          v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
          locator = self->_locator;
          if (parentObjectCopy)
          {
            v79 = objc_msgSend_identifier(self->_component, v45, v46);
            v47 = objc_opt_class();
            v86 = NSStringFromClass(v47);
            v50 = objc_msgSend_tsp_identifier(parentObjectCopy, v48, v49);
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v55 = objc_msgSend_tsp_identifier(objectCopy, v53, v54);
            v57 = sub_276AC69B4(identifierCopy, v56);
            v60 = objc_msgSend_lowercaseString(v57, v58, v59);
            v78 = v24;
            v76 = v55;
            v62 = v83;
            v61 = v84;
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v63, v84, v83, 762, 0, "Ambiguous object ownership: component [%{public}@-%llu] object [%{public}@-%llu] should have a weak reference to object [%{public}@-%llu], because it was already written to component [%{public}@-%llu] in the %{public}@ package.%{public}@", locator, v79, v86, v50, v52, v76, v87, v78, v60, v82);
          }

          else
          {
            v64 = objc_msgSend_identifier(self->_component, v45, v46);
            v65 = objc_opt_class();
            v86 = NSStringFromClass(v65);
            v68 = objc_msgSend_tsp_identifier(objectCopy, v66, v67);
            v52 = sub_276AC69B4(identifierCopy, v69);
            v57 = objc_msgSend_lowercaseString(v52, v70, v71);
            v77 = v24;
            v75 = v64;
            v62 = v83;
            v61 = v84;
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v72, v84, v83, 764, 0, "Ambiguous object ownership: component [%{public}@-%llu] should have a weak reference to object [%{public}@-%llu], because it was already written to component [%{public}@-%llu] in the %{public}@ package.%{public}@", locator, v75, v86, v68, v87, v77, v57, v82);
          }

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
          goto LABEL_34;
        }

        v39 = @" We will attempt to recover this error on the next autosave operation.";
      }

      else
      {
        flags = self->_flags;
        v39 = &stru_2885C9BB8;
      }

      v82 = v39;
      v40 = flags & 0xFE;
      *&self->_flags = v40;
      goto LABEL_27;
    }
  }

LABEL_34:
  v31 = 1;
  if (ownership)
  {
LABEL_9:
    *ownership = v31;
  }

LABEL_10:
}

- (void)validateExplicitComponentOwnershipForObject:(id)object archiverOrNil:(id)nil parentObject:(id)parentObject hasArchiverAccessLock:(BOOL)lock
{
  lockCopy = lock;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v50 = objc_msgSend_componentWriter_wantsExplicitComponentRootObjectForObject_archiverOrNil_claimingComponent_hasArchiverAccessLock_(WeakRetained, v12, self, object, nil, 0, lockCopy);

  v15 = v50;
  if (v50)
  {
    if (v50 != self->_rootObject)
    {
      v16 = objc_msgSend_tsp_identifier(object, v13, v14);
      objc_msgSend_addIndex_(self->_ambiguousReferences, v17, v16);
      v19 = objc_msgSend_objectIdentifierForPackageIdentifier_(TSPObjectContainer, v18, self->_packageIdentifier);
      v22 = objc_msgSend_identifier(self->_component, v20, v21) == v19;
      v15 = v50;
      if (!v22)
      {
        if (self->_packageIdentifier == 1)
        {
          v24 = MEMORY[0x277D81150];
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSPComponentWriter validateExplicitComponentOwnershipForObject:archiverOrNil:parentObject:hasArchiverAccessLock:]");
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
          v48 = v46 = v24;
          v26 = objc_opt_class();
          v47 = NSStringFromClass(v26);
          locator = self->_locator;
          v29 = objc_msgSend_identifier(self->_component, v27, v28);
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v34 = objc_msgSend_tsp_identifier(parentObject, v32, v33);
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v39 = objc_msgSend_tsp_identifier(v50, v37, v38);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v40, v49, v48, 791, 0, "Invalid object ownership: object [%{public}@-%llu] is going to belong to component [%{public}@-%llu] object [%{public}@-%llu], even though it explicitly expected to belong to component root object [%{public}@-%llu]", v47, v16, locator, v29, v31, v34, v36, v39);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
          v22 = objc_msgSend_tsp_identifier(v50, v43, v44) == v19;
          v15 = v50;
          if (!v22)
          {
            *&self->_flags &= ~1u;
          }
        }

        else
        {
          if (UnsafePointer != -1)
          {
            sub_276BD6098();
          }

          v15 = v50;
        }
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  return self;
}

@end