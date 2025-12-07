@interface TSPPackageWriteCoordinator
- (BOOL)componentWriter:(id)writer object:(id)object belongsToCopiedComponent:(id)component;
- (BOOL)didWriteComponentWithIdentifier:(int64_t)identifier wasCopied:(BOOL *)copied componentReadVersion:(unint64_t *)version;
- (BOOL)didWriteObject:(id)object claimingComponent:(id *)component componentReadVersion:(unint64_t *)version;
- (BOOL)enqueueComponent:(id)component rootObjectOrNil:(id)nil forceArchive:(BOOL)archive isWastefullyEnqueueing:(BOOL)enqueueing isWeakReference:(BOOL)reference referencingComponent:(id)referencingComponent referencedObject:(id)object hasArchiverAccessLock:(BOOL)self0;
- (BOOL)isComponentPersisted:(id)persisted;
- (BOOL)shouldArchiveComponent:(id)component checkForceArchive:(BOOL)archive;
- (BOOL)shouldCopyComponentOfObject:(id)object;
- (BOOL)wasComponentCopied:(int64_t)copied;
- (BOOL)wasObjectPersistedWithIdentifier:(int64_t)identifier;
- (TSPObjectContainer)objectContainer;
- (TSPPackageWriteCoordinator)init;
- (TSPPackageWriteCoordinator)initWithContext:(id)context archiverClass:(Class)class archiverFlags:(char)flags documentRevision:(id)revision saveToken:(unint64_t)token packageIdentifier:(unsigned __int8)identifier fileFormatVersion:(unint64_t)version preferredPackageType:(int64_t)self0 metadataObject:(id)self1 packageWriteCoordinator:(id)self2 captureSnapshots:(BOOL)self3;
- (id).cxx_construct;
- (id)componentForObjectIdentifier:(int64_t)identifier objectOrNil:(id)nil componentReadVersion:(unint64_t *)version;
- (id)componentWriter:(id)writer locatorForClaimingComponent:(id)component;
- (id)componentWriter:(id)writer wantsComponentOfObject:(id)object componentReadVersion:(unint64_t *)version;
- (id)componentWriter:(id)writer wantsExplicitComponentRootObjectForObject:(id)object archiverOrNil:(id)nil claimingComponent:(id)component hasArchiverAccessLock:(BOOL)lock;
- (id)componentWriterWantsDelayedObjects:(id)objects;
- (id)createPackageMetadataWritingDatasWithPackageWriter:(id)writer saveOperationState:(id)state error:(id *)error;
- (id)explicitComponentRootObjectForObject:(id)object;
- (id)explicitComponentRootObjectForObject:(id)object archiverOrNil:(id)nil claimingComponent:(id)component newClaimingComponent:(id)claimingComponent newClaimingRootObject:(id)rootObject willEnqueueDelayedObject:(BOOL)delayedObject hasArchiverAccessLock:(BOOL)lock;
- (id)objectForIdentifier:(int64_t)identifier;
- (id)packageWriterError;
- (id)persistedObjectUUIDMap:(id)map needsDescriptionForComponentIdentifier:(int64_t)identifier objectIdentifier:(int64_t)objectIdentifier;
- (int64_t)componentIdentifierForObjectIdentifier:(int64_t)identifier objectOrNil:(id)nil objectUUIDOrNil:(id)orNil outComponentIsVersioned:(BOOL *)versioned;
- (int64_t)updateDelayedObjectsSetForWrittenComponentInfo:(WrittenComponentInfo *)info componentIdentifier:(int64_t)identifier withObject:(id)object canDelayObjects:(BOOL)objects;
- (unint64_t)writeRootObject:(id)object withPackageWriter:(id)writer saveOperationState:(id)state error:(id *)error;
- (void)addDataFinalizeHandlerForSuccessfulSave:(id)save;
- (void)addDelayedObject:(id)object forComponentRootObject:(id)rootObject claimingComponent:(id)component isDelayedObjectReferencedByObjectContainer:(BOOL)container completion:(id)completion;
- (void)addDelayedObjectToObjectContainer:(id)container referencingComponent:(id)component forWastefullyEnqueuedComponent:(id)enqueuedComponent componentRootObject:(id)object;
- (void)archiveComponent:(id)component locator:(id)locator compressionAlgorithm:(int64_t)algorithm storeOutsideObjectArchive:(BOOL)archive rootObject:(id)object withPackageWriter:(id)writer;
- (void)attemptDocumentRecovery;
- (void)calculateExternalReferences;
- (void)componentWriter:(id)writer canSkipArchivingStronglyReferencedObject:(id)object fromComponentRootObject:(id)rootObject completion:(id)completion;
- (void)copyComponent:(id)component locator:(id)locator preferredLocator:(id)preferredLocator rootObject:(id)object packageWriter:(id)writer;
- (void)dealloc;
- (void)didFinishWritingWithSupportPackageWriteCoordinator:(id)coordinator;
- (void)enqueueReferencedObject:(id)object referencingComponent:(id)component isWeakReference:(BOOL)reference forWastefullyEnqueuedComponent:(id)enqueuedComponent componentRootObject:(id)rootObject componentInfo:(WrittenComponentInfo *)info hasArchiverAccessLock:(BOOL)lock;
- (void)enqueueRootObject:(id)object forceArchive:(BOOL)archive isAddingDelayedObjectReferencedByObjectContainer:(BOOL)container completion:(id)completion;
- (void)enqueueRootObjectImpl:(id)impl forceArchive:(BOOL)archive isAddingDelayedObjectReferencedByObjectContainer:(BOOL)container completion:(id)completion;
- (void)enumerateWrittenObjectsWithBlock:(id)block;
- (void)forceArchivingComponentIdentifier:(int64_t)identifier;
- (void)nextComponentAndRootObjectForComponentWriteWithCompletion:(id)completion;
- (void)persistedObjectUUIDMap:(id)map foundDuplicateUUID:(id)d firstObjectLocation:(TSPObjectLocation)location secondObjectLocation:(TSPObjectLocation)objectLocation;
- (void)setArchivedObjects:(id)objects componentObjectUUIDMap:(id)map objectReferenceMap:(id)referenceMap externalStrongReferences:(id)references ambiguousReferences:(id)ambiguousReferences externalWeakReferences:(id)weakReferences featureInfos:(id)infos componentDataReferenceMap:(id)self0 forComponent:(id)self1;
- (void)setDataAttributesSnapshot:(id)snapshot;
- (void)setPackageWriterErrorIfNeeded:(id)needed;
- (void)setSupportPackageWriteCoordinator:(id)coordinator;
- (void)stopCapturingSnapshots;
- (void)updateExternalReferencesForCopiedComponent:(id)component;
- (void)updateObjectContextForSuccessfulSaveWithPackageWriter:(id)writer packageURL:(id)l allDataIdentifiers:(id)identifiers;
- (void)willModifyObject:(id)object options:(unint64_t)options;
- (void)writeComponent:(id)component rootObjectOrNil:(id)nil forceArchive:(BOOL)archive withPackageWriter:(id)writer;
- (void)writeExternalReferences:(id)references andUpdateLazyReferences:(id)lazyReferences withPackageWriter:(id)writer forComponent:(id)component locator:(id)locator;
- (void)writeRemainingComponentsWithPackageWriter:(id)writer completionQueue:(id)queue completion:(id)completion;
- (void)writeRemainingRootObjectsAndRelatedComponents:(id)components withPackageWriter:(id)writer completionQueue:(id)queue completion:(id)completion;
- (void)writeRootObject:(id)object withPackageWriter:(id)writer saveOperationState:(id)state completionQueue:(id)queue completion:(id)completion;
- (void)writeRootObjectAndRelatedComponents:(id)components withPackageWriter:(id)writer completionQueue:(id)queue completion:(id)completion;
@end

@implementation TSPPackageWriteCoordinator

- (TSPPackageWriteCoordinator)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageWriteCoordinator init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 321, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackageWriteCoordinator init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPPackageWriteCoordinator)initWithContext:(id)context archiverClass:(Class)class archiverFlags:(char)flags documentRevision:(id)revision saveToken:(unint64_t)token packageIdentifier:(unsigned __int8)identifier fileFormatVersion:(unint64_t)version preferredPackageType:(int64_t)self0 metadataObject:(id)self1 packageWriteCoordinator:(id)self2 captureSnapshots:(BOOL)self3
{
  identifierCopy = identifier;
  flagsCopy = flags;
  contextCopy = context;
  revisionCopy = revision;
  objectCopy = object;
  coordinatorCopy = coordinator;
  v96.receiver = self;
  v96.super_class = TSPPackageWriteCoordinator;
  v19 = [(TSPPackageWriteCoordinator *)&v96 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_context, contextCopy);
    v20->_packageIdentifier = identifierCopy;
    objc_storeStrong(&v20->_documentRevision, revision);
    v20->_fileFormatVersion = version;
    v20->_saveToken = token;
    v20->_preferredPackageType = type;
    objc_storeStrong(&v20->_metadataObject, object);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("TSPPackageWriteCoordinator.Completion", v21);
    completionQueue = v20->_completionQueue;
    v20->_completionQueue = v22;

    v24 = dispatch_group_create();
    completionGroup = v20->_completionGroup;
    v20->_completionGroup = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("TSPPackageWriteCoordinator.ComponentAndObjects", v26);
    accessQueue = v20->_accessQueue;
    v20->_accessQueue = v27;

    v29 = objc_opt_new();
    packageLocatorSet = v20->_packageLocatorSet;
    v20->_packageLocatorSet = v29;

    objc_msgSend_addObject_(v20->_packageLocatorSet, v31, @"Document");
    objc_msgSend_addObject_(v20->_packageLocatorSet, v32, @"Support");
    objc_msgSend_addObject_(v20->_packageLocatorSet, v33, @"Metadata");
    objc_msgSend_addObject_(v20->_packageLocatorSet, v34, @"ObjectContainer");
    objc_msgSend_addObject_(v20->_packageLocatorSet, v35, @"DocumentMetadata");
    objc_msgSend_addObject_(v20->_packageLocatorSet, v36, @"SupportMetadata");
    v37 = [TSPObjectContainer alloc];
    v39 = objc_msgSend_initWithContext_packageIdentifier_(v37, v38, contextCopy, identifierCopy);
    objectContainer = v20->_objectContainer;
    v20->_objectContainer = v39;

    v20->_objectContainerIdentifier = objc_msgSend_objectIdentifierForPackageIdentifier_(TSPObjectContainer, v41, identifierCopy);
    v42 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v43 = dispatch_queue_create("TSPPackageWriteCoordinator.ModifyObject", v42);
    modifyObjectQueue = v20->_modifyObjectQueue;
    v20->_modifyObjectQueue = v43;

    v45 = objc_alloc(MEMORY[0x277CCAA50]);
    v47 = objc_msgSend_initWithOptions_capacity_(v45, v46, 512, 0);
    modifiedObjectsDuringWrite = v20->_modifiedObjectsDuringWrite;
    v20->_modifiedObjectsDuringWrite = v47;

    v20->_captureSnapshots = snapshots;
    v49 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v50 = dispatch_queue_create("TSPPackageWriteCoordinator.ExternalLazyReferences", v49);
    externalLazyReferencesQueue = v20->_externalLazyReferencesQueue;
    v20->_externalLazyReferencesQueue = v50;

    v52 = objc_alloc_init(TSPComponentExternalReferenceMap);
    externalLazyReferencesMap = v20->_externalLazyReferencesMap;
    v20->_externalLazyReferencesMap = v52;

    v54 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v55 = dispatch_queue_create("TSPPackageWriteCoordinator.ExternalReferences", v54);
    externalReferenceQueue = v20->_externalReferenceQueue;
    v20->_externalReferenceQueue = v55;

    v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
    externalReferenceBlocks = v20->_externalReferenceBlocks;
    v20->_externalReferenceBlocks = v57;

    v59 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v60 = dispatch_queue_create("TSPPackageWriteCoordinator.Metadata", v59);
    metadataQueue = v20->_metadataQueue;
    v20->_metadataQueue = v60;

    v62 = objc_alloc(MEMORY[0x277CCAA50]);
    v64 = objc_msgSend_initWithOptions_capacity_(v62, v63, 512, 0);
    referencedDatas = v20->_referencedDatas;
    v20->_referencedDatas = v64;

    v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dataFinalizeHandlers = v20->_dataFinalizeHandlers;
    v20->_dataFinalizeHandlers = v66;

    v20->_packageWriterErrorLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    if (!coordinatorCopy)
    {
      v74 = [TSPObjectReferenceMap alloc];
      v76 = objc_msgSend_initWithContext_delegate_(v74, v75, contextCopy, v20);
      objectReferenceMap = v20->_objectReferenceMap;
      v20->_objectReferenceMap = v76;

      v78 = [TSPArchiverManager alloc];
      v80 = objc_msgSend_initWithDelegate_archiverClass_archiverFlags_(v78, v79, v20, class, flagsCopy);
      archiverManager = v20->_archiverManager;
      v20->_archiverManager = v80;

      v82 = objc_opt_new();
      objc_msgSend_addObject_(v82, v83, @"Document");
      objc_msgSend_addObject_(v82, v84, @"Support");
      objc_msgSend_addObject_(v82, v85, @"Metadata");
      objc_msgSend_addObject_(v82, v86, @"ObjectContainer");
      objc_msgSend_addObject_(v82, v87, @"DocumentMetadata");
      objc_msgSend_addObject_(v82, v88, @"SupportMetadata");
      v94 = 1;
      v95 = 1;
      sub_276A99A70(&v20->_componentPropertiesSnapshot, &qword_276C11CF0, &v94);
    }

    objc_storeStrong(&v20->_archiverManager, coordinatorCopy[11]);
    v70 = objc_msgSend_copy(coordinatorCopy[14], v68, v69);
    knownComponentLocators = v20->_knownComponentLocators;
    v20->_knownComponentLocators = v70;

    v72 = coordinatorCopy[17];
    if (v72)
    {
      v73 = *(v72 + 26);
      v94 = *(v72 + 12);
      v95 = v73;
      sub_276A99A70(&v20->_componentPropertiesSnapshot, v72 + 2, &v94);
    }
  }

  return v20;
}

- (void)dealloc
{
  objc_msgSend_stop(self->_archiverManager, a2, v2);
  v4.receiver = self;
  v4.super_class = TSPPackageWriteCoordinator;
  [(TSPPackageWriteCoordinator *)&v4 dealloc];
}

- (void)setPackageWriterErrorIfNeeded:(id)needed
{
  neededCopy = needed;
  os_unfair_lock_lock(&self->_packageWriterErrorLock);
  if (!self->_packageWriterError)
  {
    objc_storeStrong(&self->_packageWriterError, needed);
  }

  os_unfair_lock_unlock(&self->_packageWriterErrorLock);
}

- (id)packageWriterError
{
  os_unfair_lock_lock(&self->_packageWriterErrorLock);
  v3 = self->_packageWriterError;
  os_unfair_lock_unlock(&self->_packageWriterErrorLock);

  return v3;
}

- (void)setSupportPackageWriteCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (self->_packageIdentifier != 1)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Should not set support package write coordinator when not writing the document package.", "[TSPPackageWriteCoordinator setSupportPackageWriteCoordinator:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 480);
    v7 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPPackageWriteCoordinator setSupportPackageWriteCoordinator:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v9, v11, 480, 1, "Should not set support package write coordinator when not writing the document package.");

    TSUCrashBreakpoint();
    abort();
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A8AD0C;
  block[3] = &unk_27A6E2898;
  block[4] = self;
  v14 = coordinatorCopy;
  v6 = coordinatorCopy;
  dispatch_sync(accessQueue, block);
}

- (void)setDataAttributesSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (!snapshotCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPPackageWriteCoordinator setDataAttributesSnapshot:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 487, 0, "invalid nil value for '%{public}s'", "dataAttributesSnapshot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  metadataQueue = self->_metadataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A8AE5C;
  block[3] = &unk_27A6E2898;
  block[4] = self;
  v16 = snapshotCopy;
  v14 = snapshotCopy;
  dispatch_sync(metadataQueue, block);
}

- (void)willModifyObject:(id)object options:(unint64_t)options
{
  optionsCopy = options;
  modifyObjectQueue = self->_modifyObjectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A8AF20;
  block[3] = &unk_27A6E2F68;
  block[4] = self;
  block[5] = object;
  block[6] = options;
  dispatch_sync(modifyObjectQueue, block);
  if ((optionsCopy & 1) == 0 && self->_captureSnapshots)
  {
    objc_msgSend_archiveObjectWithHighPriority_(self->_archiverManager, v8, object);
  }
}

- (void)stopCapturingSnapshots
{
  self->_captureSnapshots = 0;
  objc_msgSend_stop(self->_archiverManager, a2, v2);
  archiverManager = self->_archiverManager;
  self->_archiverManager = 0;
}

- (unint64_t)writeRootObject:(id)object withPackageWriter:(id)writer saveOperationState:(id)state error:(id *)error
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_276A8B1F8;
  v27 = sub_276A8B208;
  v28 = 0;
  stateCopy = state;
  writerCopy = writer;
  objectCopy = object;
  v13 = dispatch_semaphore_create(0);
  completionQueue = self->_completionQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_276A8B210;
  v19[3] = &unk_27A6E5D80;
  v21 = &v29;
  v22 = &v23;
  v15 = v13;
  v20 = v15;
  objc_msgSend_writeRootObject_withPackageWriter_saveOperationState_completionQueue_completion_(self, v16, objectCopy, writerCopy, stateCopy, completionQueue, v19);

  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v24[5];
  }

  v17 = v30[3];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  return v17;
}

- (void)writeRootObject:(id)object withPackageWriter:(id)writer saveOperationState:(id)state completionQueue:(id)queue completion:(id)completion
{
  objectCopy = object;
  writerCopy = writer;
  stateCopy = state;
  queueCopy = queue;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A8B5CC;
  aBlock[3] = &unk_27A6E5DD0;
  aBlock[4] = self;
  v17 = queueCopy;
  v49 = v17;
  v18 = completionCopy;
  v50 = v18;
  v21 = _Block_copy(aBlock);
  if (objectCopy)
  {
    atomic_store(1u, &self->_writeSuccess);
    v22 = objc_msgSend_documentTargetURL(writerCopy, v19, v20);
    documentTargetURL = self->_documentTargetURL;
    self->_documentTargetURL = v22;

    v26 = objc_msgSend_relativeURLForExternalData(writerCopy, v24, v25);
    relativeURLForExternalData = self->_relativeURLForExternalData;
    self->_relativeURLForExternalData = v26;

    v28 = objc_alloc(MEMORY[0x277CBEB18]);
    v30 = objc_msgSend_initWithCapacity_(v28, v29, 2);
    objc_msgSend_addObject_(v30, v31, objectCopy);
    objc_msgSend_tsu_addNonNilObject_(v30, v32, self->_metadataObject);
    completionQueue = self->_completionQueue;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_276A8B864;
    v43[3] = &unk_27A6E5E20;
    v43[4] = self;
    v44 = writerCopy;
    v45 = stateCopy;
    v47 = v21;
    v46 = objectCopy;
    objc_msgSend_writeRemainingRootObjectsAndRelatedComponents_withPackageWriter_completionQueue_completion_(self, v34, v30, v44, completionQueue, v43);
  }

  else
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPPackageWriteCoordinator writeRootObject:withPackageWriter:saveOperationState:completionQueue:completion:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 585, 0, "Root object cannot be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
    v30 = objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v42, 0);
    (*(v21 + 2))(v21, 2, v30);
  }
}

- (TSPObjectContainer)objectContainer
{
  v2 = atomic_load(&self->_didWriteObjectContainer);
  if (v2)
  {
    return self->_objectContainer;
  }

  else
  {
    return 0;
  }
}

- (void)didFinishWritingWithSupportPackageWriteCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v7 = coordinatorCopy;
  if (self->_packageIdentifier != 1)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d This method should only be called for the document package write coordinator.", "[TSPPackageWriteCoordinator didFinishWritingWithSupportPackageWriteCoordinator:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 784);
    v20 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPPackageWriteCoordinator didFinishWritingWithSupportPackageWriteCoordinator:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v22, v24, 784, 1, "This method should only be called for the document package write coordinator.");

    TSUCrashBreakpoint();
    abort();
  }

  if (coordinatorCopy)
  {
    v8 = *(objc_msgSend_writtenComponents(coordinatorCopy, v5, v6) + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = [TSPWrittenComponentMetadataDictionary alloc];
  v11 = objc_msgSend_initWithCapacity_(v9, v10, self->_writtenComponents.__table_.__size_ + v8);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A8C4EC;
  aBlock[3] = &unk_27A6E5E48;
  aBlock[4] = v11;
  aBlock[5] = &v31;
  aBlock[6] = &v27;
  v12 = _Block_copy(aBlock);
  v12[2](v12, &self->_writtenComponents, 1);
  if (v7)
  {
    v15 = objc_msgSend_writtenComponents(v7, v13, v14);
    v12[2](v12, v15, 2);
  }

  v16 = [TSPPersistedDataReferenceMap alloc];
  v18 = objc_msgSend_initWithComponentDataReferenceInfoDictionary_dataCount_objectCount_(v16, v17, v11, v32[3], v28[3]);
  persistedDataReferenceMap = self->_persistedDataReferenceMap;
  self->_persistedDataReferenceMap = v18;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
}

- (void)updateObjectContextForSuccessfulSaveWithPackageWriter:(id)writer packageURL:(id)l allDataIdentifiers:(id)identifiers
{
  v48 = *MEMORY[0x277D85DE8];
  writerCopy = writer;
  lCopy = l;
  identifiersCopy = identifiers;
  if (!writerCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPPackageWriteCoordinator updateObjectContextForSuccessfulSaveWithPackageWriter:packageURL:allDataIdentifiers:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 818, 0, "invalid nil value for '%{public}s'", "packageWriter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  __dmb(0xBu);
  WeakRetained = objc_loadWeakRetained(&self->_context);
  for (i = &self->_writtenObjects.__table_.__first_node_; ; objc_msgSend_setTsp_component_(i[3].__next_, v18, i[4].__next_))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  modifyObjectQueue = self->_modifyObjectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A8C944;
  block[3] = &unk_27A6E5E70;
  block[4] = self;
  v22 = writerCopy;
  v43 = v22;
  v23 = lCopy;
  v44 = v23;
  v24 = WeakRetained;
  v45 = v24;
  v25 = identifiersCopy;
  v46 = v25;
  dispatch_sync(modifyObjectQueue, block);
  while (self->_writtenLazyReferences.c.__size_)
  {
    v26 = *(self->_writtenLazyReferences.c.__map_.__begin_ + ((self->_writtenLazyReferences.c.__start_ >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * self->_writtenLazyReferences.c.__start_;
    v27 = *v26;
    objc_msgSend_setComponent_(v27, v28, *(v26 + 1));
    objc_msgSend_releaseObjectIfPossible(v27, v29, v30);
    sub_276A99BB8(&self->_writtenLazyReferences);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = self->_dataFinalizeHandlers;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v38, v47, 16);
  if (v33)
  {
    v34 = *v39;
    do
    {
      v35 = 0;
      do
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(v31);
        }

        (*(*(*(&v38 + 1) + 8 * v35++) + 16))();
      }

      while (v33 != v35);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v36, &v38, v47, 16);
    }

    while (v33);
  }
}

- (void)enumerateWrittenObjectsWithBlock:(id)block
{
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A8D004;
  v7[3] = &unk_27A6E4C58;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)writeRemainingRootObjectsAndRelatedComponents:(id)components withPackageWriter:(id)writer completionQueue:(id)queue completion:(id)completion
{
  componentsCopy = components;
  writerCopy = writer;
  queueCopy = queue;
  completionCopy = completion;
  v17 = objc_msgSend_firstObject(componentsCopy, v14, v15);
  if (v17)
  {
    objc_msgSend_removeObjectAtIndex_(componentsCopy, v16, 0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_276A8D214;
    v19[3] = &unk_27A6E5E98;
    v19[4] = self;
    v20 = componentsCopy;
    v21 = writerCopy;
    v22 = queueCopy;
    v23 = completionCopy;
    objc_msgSend_writeRootObjectAndRelatedComponents_withPackageWriter_completionQueue_completion_(self, v18, v17, v21, v22, v19);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)writeRootObjectAndRelatedComponents:(id)components withPackageWriter:(id)writer completionQueue:(id)queue completion:(id)completion
{
  componentsCopy = components;
  writerCopy = writer;
  queueCopy = queue;
  completionCopy = completion;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_276A8D380;
  v19[3] = &unk_27A6E5EE8;
  v19[4] = self;
  v20 = writerCopy;
  v22 = componentsCopy;
  v23 = completionCopy;
  v21 = queueCopy;
  v14 = componentsCopy;
  v15 = completionCopy;
  v16 = queueCopy;
  v17 = writerCopy;
  objc_msgSend_enqueueRootObject_forceArchive_isAddingDelayedObjectReferencedByObjectContainer_completion_(self, v18, v14, 0, 0, v19);
}

- (void)enqueueRootObject:(id)object forceArchive:(BOOL)archive isAddingDelayedObjectReferencedByObjectContainer:(BOOL)container completion:(id)completion
{
  objectCopy = object;
  completionCopy = completion;
  if (!objectCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPPackageWriteCoordinator enqueueRootObject:forceArchive:isAddingDelayedObjectReferencedByObjectContainer:completion:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 967, 0, "invalid nil value for '%{public}s'", "rootObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  completionGroup = self->_completionGroup;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A8D784;
  block[3] = &unk_27A6E5F10;
  block[4] = self;
  v25 = objectCopy;
  archiveCopy = archive;
  containerCopy = container;
  v26 = completionCopy;
  v22 = completionCopy;
  v23 = objectCopy;
  dispatch_group_async(completionGroup, accessQueue, block);
}

- (void)forceArchivingComponentIdentifier:(int64_t)identifier
{
  identifierCopy = identifier;
  v4 = &identifierCopy;
  *(sub_276A99C8C(&self->_componentProperties.__table_.__bucket_list_.__ptr_, &identifierCopy, &unk_276C16A90, &v4) + 25) = 1;
}

- (void)enqueueRootObjectImpl:(id)impl forceArchive:(BOOL)archive isAddingDelayedObjectReferencedByObjectContainer:(BOOL)container completion:(id)completion
{
  containerCopy = container;
  archiveCopy = archive;
  implCopy = impl;
  completionCopy = completion;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v16 = atomic_load(&self->_didWriteRootObject);
    if ((v16 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v32 = objc_msgSend_tsp_identifier(implCopy, v12, v13);
  v17 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &v32);
  v18 = v17;
  if (!v17)
  {
    v33 = &v32;
    if (*(sub_276A99C8C(&self->_componentProperties.__table_.__bucket_list_.__ptr_, &v32, &unk_276C16A90, &v33) + 24) == 1)
    {
      if (!archiveCopy)
      {
        goto LABEL_23;
      }

      if (v32 == self->_objectContainerIdentifier)
      {
        goto LABEL_14;
      }

      if (UnsafePointer != -1)
      {
        sub_276BD5DB4();
        if (!completionCopy)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_23:
        if (!completionCopy)
        {
          goto LABEL_21;
        }
      }

      completionCopy[2](completionCopy, 0);
      goto LABEL_21;
    }

LABEL_14:
    dispatch_group_enter(self->_completionGroup);
    dispatch_suspend(self->_accessQueue);
    atomic_fetch_add(&self->_accessQueueSuspendCount, 1uLL);
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v24 = objc_msgSend_componentManager(WeakRetained, v22, v23);
    completionQueue = self->_completionQueue;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_276A8DB3C;
    v28[3] = &unk_27A6E5F38;
    v28[4] = self;
    v29 = implCopy;
    v31 = archiveCopy;
    v30 = completionCopy;
    objc_msgSend_retrieveOrCreateComponentForRootObject_queue_completion_(v24, v26, v29, completionQueue, v28);

    goto LABEL_21;
  }

  objc_storeStrong(v17 + 4, impl);
  v20 = 1;
  if (*(v18 + 57) == 1 && archiveCopy)
  {
    v20 = *(v18 + 58) ^ 1;
  }

  if ((v20 & 1) != 0 && archiveCopy)
  {
    objc_msgSend_forceArchivingComponentIdentifier_(self, v19, v32);
    goto LABEL_16;
  }

  if ((v20 | containerCopy))
  {
LABEL_16:
    v27 = 1;
    if (!completionCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (UnsafePointer != -1)
  {
    sub_276BD5D8C();
    v27 = 0;
    if (!completionCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v27 = 0;
  if (completionCopy)
  {
LABEL_20:
    completionCopy[2](completionCopy, v27);
  }

LABEL_21:
}

- (BOOL)enqueueComponent:(id)component rootObjectOrNil:(id)nil forceArchive:(BOOL)archive isWastefullyEnqueueing:(BOOL)enqueueing isWeakReference:(BOOL)reference referencingComponent:(id)referencingComponent referencedObject:(id)object hasArchiverAccessLock:(BOOL)self0
{
  referenceCopy = reference;
  enqueueingCopy = enqueueing;
  archiveCopy = archive;
  nilCopy = nil;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v19 = atomic_load(&self->_didWriteRootObject);
    if ((v19 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  if (!component)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPPackageWriteCoordinator enqueueComponent:rootObjectOrNil:forceArchive:isWastefullyEnqueueing:isWeakReference:referencingComponent:referencedObject:hasArchiverAccessLock:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 1051, 0, "invalid nil value for '%{public}s'", "component");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  if (nilCopy)
  {
    v47 = nilCopy;
  }

  else
  {
    v47 = objc_msgSend_rootObject(component, v16, v17);
    if (!v47)
    {
      if ((objc_msgSend_isComponentPersisted_(self, v27, component) & 1) == 0)
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPPackageWriteCoordinator enqueueComponent:rootObjectOrNil:forceArchive:isWastefullyEnqueueing:isWeakReference:referencingComponent:referencedObject:hasArchiverAccessLock:]");
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
        v38 = objc_msgSend_locator(component, v36, v37);
        v41 = objc_msgSend_identifier(component, v39, v40);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v42, v33, v35, 1057, 0, "Component root object should not be nil for component [%{public}@-%llu]. Make sure to have a strong reference to the root object before writing its component.", v38, v41);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
        atomic_store(0, &self->_writeSuccess);
        goto LABEL_22;
      }

      v47 = 0;
    }
  }

  v30 = objc_msgSend_identifier(component, v27, v28);
  v58 = v30;
  if (archiveCopy)
  {
    objc_msgSend_forceArchivingComponentIdentifier_(self, v29, v30);
  }

  if (objc_msgSend_shouldEnqueueComponent_(self, v29, component))
  {
LABEL_12:
    componentCopy = component;
    v47;
    v50 = enqueueingCopy;
    v51 = 1;
    v52[0] = 0;
    *(v52 + 7) = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0u;
    memset(v57, 0, 25);
    memset(&v57[32], 0, 64);
    sub_276A99EC0(&self->_writtenComponents);
  }

  if (archiveCopy)
  {
    if (v58 == self->_objectContainerIdentifier)
    {
      goto LABEL_12;
    }

    if (UnsafePointer != -1)
    {
      sub_276BD5DDC();
      if (!enqueueingCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  if (enqueueingCopy)
  {
LABEL_17:
    LOBYTE(v46) = lock;
    objc_msgSend_enqueueReferencedObject_referencingComponent_isWeakReference_forWastefullyEnqueuedComponent_componentRootObject_componentInfo_hasArchiverAccessLock_(self, v31, object, referencingComponent, referenceCopy, component, v47, 0, v46);
  }

LABEL_18:
  componentCopy = &v58;
  *(sub_276A99C8C(&self->_componentProperties.__table_.__bucket_list_.__ptr_, &v58, &unk_276C16A90, &componentCopy) + 24) = 1;

LABEL_22:
  return 0;
}

- (void)enqueueReferencedObject:(id)object referencingComponent:(id)component isWeakReference:(BOOL)reference forWastefullyEnqueuedComponent:(id)enqueuedComponent componentRootObject:(id)rootObject componentInfo:(WrittenComponentInfo *)info hasArchiverAccessLock:(BOOL)lock
{
  objectCopy = object;
  componentCopy = component;
  enqueuedComponentCopy = enqueuedComponent;
  rootObjectCopy = rootObject;
  if (!objc_msgSend_shouldArchiveComponent_checkForceArchive_(self, v19, enqueuedComponentCopy, 1))
  {
    goto LABEL_19;
  }

  v23 = objc_msgSend_identifier(enqueuedComponentCopy, v20, v21);
  if (!objectCopy)
  {
    if (!reference)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPPackageWriteCoordinator enqueueReferencedObject:referencingComponent:isWeakReference:forWastefullyEnqueuedComponent:componentRootObject:componentInfo:hasArchiverAccessLock:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      if (rootObjectCopy)
      {
        v39 = objc_opt_class();
        NSStringFromClass(v39);
      }

      else
      {
        objc_msgSend_locator(enqueuedComponentCopy, v36, v37);
      }
      v40 = ;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v41, v34, v38, 1216, 0, "Component root object [%{public}@-%llu] was wastefully enqueued while dirty, however the referenced object is not in-memory.", v40, v23);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
    }

    goto LABEL_19;
  }

  Version = objc_msgSend_isObjectInExternalPackage_claimingComponent_componentReadVersion_(self, v22, objectCopy, 0, 0);
  v44 = objc_msgSend_tsp_identifier(objectCopy, v25, v26);
  if ((Version & 1) != 0 || info && (objc_msgSend_containsItem_(info->var4, v27, objectCopy) & 1) != 0 || sub_2769ABC64(&self->_delayedObjects.__table_.__bucket_list_.__ptr_, &v44) || sub_2769ABC64(&self->_writtenObjects.__table_.__bucket_list_.__ptr_, &v44))
  {
    goto LABEL_19;
  }

  if (!info)
  {
LABEL_21:
    objc_msgSend_addDelayedObjectToObjectContainer_referencingComponent_forWastefullyEnqueuedComponent_componentRootObject_(self, v28, objectCopy, componentCopy, enqueuedComponentCopy, rootObjectCopy);
    goto LABEL_19;
  }

  v31 = objc_msgSend_explicitComponentRootObjectForObject_hasArchiverAccessLock_(self->_archiverManager, v28, objectCopy, lock);
  if ((v31 || (objc_msgSend_allowsImplicitComponentOwnership(objectCopy, v29, v30) & 1) == 0) && objc_msgSend_tsp_identifier(v31, v29, v30) != v23)
  {

    goto LABEL_21;
  }

  canDelayObjects = objc_msgSend_updateDelayedObjectsSetForWrittenComponentInfo_componentIdentifier_withObject_canDelayObjects_(self, v29, info, v23, objectCopy, 1);

  if (!canDelayObjects)
  {
    goto LABEL_21;
  }

LABEL_19:
}

- (void)addDelayedObjectToObjectContainer:(id)container referencingComponent:(id)component forWastefullyEnqueuedComponent:(id)enqueuedComponent componentRootObject:(id)object
{
  containerCopy = container;
  enqueuedComponentCopy = enqueuedComponent;
  objectCopy = object;
  completionGroup = self->_completionGroup;
  componentCopy = component;
  dispatch_group_enter(completionGroup);
  objectContainer = self->_objectContainer;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_276A8EBF0;
  v20[3] = &unk_27A6E5F60;
  v21 = containerCopy;
  v22 = objectCopy;
  v23 = enqueuedComponentCopy;
  selfCopy = self;
  v16 = enqueuedComponentCopy;
  v17 = objectCopy;
  v18 = containerCopy;
  objc_msgSend_addDelayedObject_forComponentRootObject_claimingComponent_isDelayedObjectReferencedByObjectContainer_completion_(self, v19, v18, objectContainer, componentCopy, 1, v20);
}

- (void)nextComponentAndRootObjectForComponentWriteWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_accessQueue);
  begin_node = self->_remainingComponentsQueue.__tree_.__begin_node_;
  if (begin_node == &self->_remainingComponentsQueue.__tree_.__end_node_)
  {
LABEL_9:
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    while (!begin_node[7].__left_)
    {
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v7 = left;
          left = left->super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v7 = begin_node[2].__left_;
          v8 = v7->super.isa == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      begin_node = v7;
      if (v7 == &self->_remainingComponentsQueue.__tree_.__end_node_)
      {
        goto LABEL_9;
      }
    }

    v12 = begin_node[5].__left_;
    v11 = v12[5];
    sub_276A9A35C(&begin_node[5], v12);
    if (v11)
    {
      v49 = objc_msgSend_identifier(v11, v13, v14);
      v15 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &v49);
      v17 = v15;
      if (!v15)
      {
        v30 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPPackageWriteCoordinator nextComponentAndRootObjectForComponentWriteWithCompletion:]");
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
        v36 = objc_msgSend_locator(v11, v34, v35);
        v39 = objc_msgSend_identifier(v11, v37, v38);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v40, v31, v33, 1291, 0, "We should have created an entry for component [%{public}@-%llu].", v36, v39);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
        v18 = 0;
        goto LABEL_19;
      }

      v18 = v15[4];
      v50 = &v49;
      v21 = sub_276A99C8C(&self->_componentProperties.__table_.__bucket_list_.__ptr_, &v49, &unk_276C16A90, &v50);
      v10 = *(v21 + 25);
      *(v17 + 41) = 0;
      if (v49 == self->_objectContainerIdentifier)
      {
        if (atomic_exchange(&self->_didWriteObjectContainer, 1u))
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPPackageWriteCoordinator nextComponentAndRootObjectForComponentWriteWithCompletion:]");
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 1285, 0, "Object container with identifier %llu was not enqueued, however we think it was written. Something really wrong has happened.", v49);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
LABEL_19:
          atomic_store(0, &self->_writeSuccess);
LABEL_20:
          v9 = v18;
          objc_msgSend_nextComponentAndRootObjectForComponentWriteWithCompletion_(self, v29, completionCopy);
          goto LABEL_11;
        }

        v43 = v17[6];
        v46 = objc_msgSend_count(v43, v44, v45);
        objectContainer = self->_objectContainer;
        if (!v46)
        {
          self->_objectContainer = 0;

          goto LABEL_20;
        }

        v9 = objectContainer;

        *(v21 + 25) = 1;
        objc_msgSend_prepareForComponentWriteWithDelayedObjects_(v9, v48, v43);

        v10 = 1;
        if (!v9)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v18)
        {
LABEL_25:
          v9 = objc_msgSend_rootObject(v11, v19, v20);
          goto LABEL_10;
        }

        v9 = v18;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

LABEL_10:
  completionCopy[2](completionCopy, v11, v9, v10);
LABEL_11:
}

- (void)writeRemainingComponentsWithPackageWriter:(id)writer completionQueue:(id)queue completion:(id)completion
{
  writerCopy = writer;
  queueCopy = queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_accessQueue);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276A8F244;
  v15[3] = &unk_27A6E5FB0;
  v15[4] = self;
  v11 = writerCopy;
  v16 = v11;
  v12 = queueCopy;
  v17 = v12;
  v13 = completionCopy;
  v18 = v13;
  objc_msgSend_nextComponentAndRootObjectForComponentWriteWithCompletion_(self, v14, v15);
}

- (void)writeComponent:(id)component rootObjectOrNil:(id)nil forceArchive:(BOOL)archive withPackageWriter:(id)writer
{
  archiveCopy = archive;
  componentCopy = component;
  nilCopy = nil;
  writerCopy = writer;
  v165 = nilCopy;
  dispatch_assert_queue_V2(self->_accessQueue);
  v174 = objc_msgSend_identifier(componentCopy, v11, v12);
  if (objc_msgSend_isComponentPersisted_(self, v13, componentCopy))
  {
    v160 = objc_msgSend_preferredLocator(componentCopy, v14, v15);
    v161 = objc_msgSend_locator(componentCopy, v16, v17);
  }

  else
  {
    v160 = 0;
    v161 = 0;
  }

  switch(v174)
  {
    case 1:
      v18 = &off_27A6E3CA0;
      goto LABEL_10;
    case 3:
      v18 = &off_27A6E3CA8;
      goto LABEL_10;
    case 2:
      v18 = &off_27A6E3CB0;
      goto LABEL_10;
  }

  v18 = &off_27A6E3CB8;
  switch(v174)
  {
    case '=':
    case '>':
LABEL_10:
      v21 = *v18;
      v22 = v21;
      if (!v21)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    case 'G':
      v18 = &off_27A6E3CC0;
      goto LABEL_10;
    case 'H':
      v18 = &off_27A6E3CC8;
      goto LABEL_10;
  }

  v22 = objc_msgSend_packageLocator(nilCopy, v14, v15);
  if (v22)
  {
    goto LABEL_129;
  }

  if (nilCopy && UnsafePointer != -1)
  {
    sub_276BD5E40();
  }

  v22 = v160;
  if (v22)
  {
LABEL_129:
    if (v161 && (isEqualToString = objc_msgSend_isEqualToString_(v160, v19, v22), v46 = v161, (isEqualToString & 1) != 0) || (v47 = objc_msgSend_containsObject_(self->_knownComponentLocators, v19, v22), v46 = v22, !v47))
    {
      v50 = v46;
    }

    else
    {
      v48 = objc_alloc(MEMORY[0x277CCACA8]);
      v50 = objc_msgSend_initWithFormat_(v48, v49, @"%@-%llu", v22, v174);
    }

    v52 = v50;
    v53 = 2;
    for (i = objc_msgSend_containsObject_(self->_packageLocatorSet, v51, v50); i; i = objc_msgSend_containsObject_(self->_packageLocatorSet, v58, v57))
    {
      v55 = objc_alloc(MEMORY[0x277CCACA8]);
      v57 = objc_msgSend_initWithFormat_(v55, v56, @"%@-%llu-%tu", v22, v174, v53);

      ++v53;
      v52 = v57;
    }

    v21 = v52;
    if (v52)
    {
LABEL_11:
      objc_msgSend_addObject_(self->_packageLocatorSet, v19, v21);
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_12:
  obj = objc_msgSend_copy(v22, v19, v20);

  v25 = objc_msgSend_copy(v21, v23, v24);
  if (!obj)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPPackageWriteCoordinator writeComponent:rootObjectOrNil:forceArchive:withPackageWriter:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 1393, 0, "Component locator is not defined for component %llu", v174);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  }

  if (archiveCopy)
  {
    v35 = 1;
    v36 = v165;
  }

  else
  {
    v36 = v165;
    v35 = objc_msgSend_shouldArchiveComponent_checkForceArchive_(self, v26, componentCopy, 0);
  }

  v170 = 0;
  v171 = &v170;
  v172 = 0x2020000000;
  v173 = 0;
  if (self->_packageIdentifier == 1 && objc_msgSend_packageIdentifier(componentCopy, v26, v27) == 2)
  {
    v37 = objc_msgSend_ambiguousReferences(componentCopy, v26, v27);
    v169[0] = MEMORY[0x277D85DD0];
    v169[1] = 3221225472;
    v169[2] = sub_276A90280;
    v169[3] = &unk_27A6E5FD8;
    v169[4] = v37;
    v169[5] = self;
    v169[6] = &v170;
    objc_msgSend_enumerateExternalReferences_(componentCopy, v38, v169);
    if (objc_msgSend_count(v37, v39, v40))
    {
      *(v171 + 24) = 1;
    }
  }

  else if ((v35 & 1) == 0 && self->_packageIdentifier == 2)
  {
    v168[0] = MEMORY[0x277D85DD0];
    v168[1] = 3221225472;
    v168[2] = sub_276A90328;
    v168[3] = &unk_27A6E6000;
    v168[4] = self;
    v168[5] = &v170;
    objc_msgSend_enumerateExternalReferences_(componentCopy, v26, v168);
  }

  v41 = atomic_load(&self->_didWriteObjectContainer);
  if (v41)
  {
    v42 = 0;
    if (v174 != self->_objectContainerIdentifier && v174 != 2 && v174 != 71)
    {
      v42 = v174 != 72;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = v171;
  if ((v35 & 1) == 0 && (v171[3] & 1) == 0 && v42)
  {
    *(v171 + 24) = 1;
    v43 = v171;
  }

  v159 = v42;
  if (*(v43 + 24) == 1)
  {
    if (UnsafePointer == -1)
    {
      if (v36)
      {
LABEL_38:
        v44 = v36;
LABEL_66:
        objc_msgSend_forceArchivingComponentIdentifier_(self, v26, v174);
        objc_msgSend_forceArchivingComponentIdentifier_(self->_supportPackageWriteCoordinator, v62, v174);
        archiveCopy = 1;
        goto LABEL_69;
      }
    }

    else
    {
      sub_276BD5E54();
      if (v36)
      {
        goto LABEL_38;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_context);
    v166 = 0;
    v167 = 0;
    isWeakReference_rootObject_allObjects_error = objc_msgSend_readComponent_isWeakReference_rootObject_allObjects_error_(WeakRetained, v60, componentCopy, 0, &v167, 0, &v166);
    v44 = v167;

    if ((isWeakReference_rootObject_allObjects_error & 1) == 0 && UnsafePointer != -1)
    {
      sub_276BD5E7C();
    }

    v36 = v165;
    if (v44)
    {
      goto LABEL_66;
    }
  }

  if (v35)
  {
    v44 = v36;
LABEL_69:
    v65 = objc_msgSend_componentRequiredPackageIdentifier(v44, v26, v27);
    v66 = 1;
    v165 = v44;
    if (!v65)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v65 = objc_msgSend_requiredPackageIdentifier(componentCopy, v26, v27);
  v66 = 0;
  if (!v65)
  {
    goto LABEL_73;
  }

LABEL_72:
  if (v65 != self->_packageIdentifier)
  {
    v93 = MEMORY[0x277D81150];
    v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSPPackageWriteCoordinator writeComponent:rootObjectOrNil:forceArchive:withPackageWriter:]");
    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v97 = v174;
    v99 = sub_276AC69B4(self->_packageIdentifier, v98);
    v101 = sub_276AC69B4(v65, v100);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v102, v94, v96, 1497, 0, "Cannot write component [%{public}@-%llu] to %{public}@ because it requires to be archived to %{public}@.", v25, v97, v99, v101);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104);
LABEL_87:
    atomic_store(0, &self->_writeSuccess);
    goto LABEL_88;
  }

LABEL_73:
  v67 = v66 ^ 1;
  if (v165)
  {
    v67 = 1;
  }

  if ((v67 & 1) == 0)
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSPPackageWriteCoordinator writeComponent:rootObjectOrNil:forceArchive:withPackageWriter:]");
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v73 = &stru_2885C9BB8;
    if (archiveCopy)
    {
      v73 = @"force ";
    }

    v74 = obj;
    if (v25)
    {
      v74 = v25;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v71, v69, v72, 1500, 0, "Cannot %{public}@archive component [%{public}@-%llu] because it is flushed.", v73, v74, v174);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76);
    goto LABEL_87;
  }

  if (v66)
  {
    isStoredOutsideObjectArchive = objc_msgSend_storeOutsideObjectArchive(v165, v63, v64);
    CanBeDropped = objc_msgSend_componentCanBeDropped(v165, v77, v78);
    v82 = objc_msgSend_compressionAlgorithm(v165, v80, v81);
    if (objc_msgSend_componentRequiresCurrentVersion(v165, v83, v84))
    {
      v87 = UnsafePointer();
      Version = objc_msgSend_componentReadVersion(v165, v88, v89);
      v92 = UnsafePointer();
      if (v87 <= Version)
      {
        v87 = Version;
      }
    }

    else
    {
      v87 = objc_msgSend_componentReadVersion(v165, v85, v86);
      v92 = 0;
    }
  }

  else
  {
    isStoredOutsideObjectArchive = objc_msgSend_isStoredOutsideObjectArchive(componentCopy, v63, v64);
    CanBeDropped = objc_msgSend_canBeDropped(componentCopy, v105, v106);
    v82 = objc_msgSend_compressionAlgorithm(componentCopy, v107, v108);
    v87 = objc_msgSend_componentReadVersion(componentCopy, v109, v110);
    v92 = objc_msgSend_componentRequiredVersion(componentCopy, v111, v112);
  }

  VersionForCompressionAlgorithm = objc_msgSend_componentReadVersionForCompressionAlgorithm_(TSPCompression, v91, v82);
  if (v87 <= VersionForCompressionAlgorithm)
  {
    v114 = VersionForCompressionAlgorithm;
  }

  else
  {
    v114 = v87;
  }

  v115 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &v174);
  v117 = v115;
  if (!v115)
  {
    v127 = MEMORY[0x277D81150];
    v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "[TSPPackageWriteCoordinator writeComponent:rootObjectOrNil:forceArchive:withPackageWriter:]");
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v132 = obj;
    if (v25)
    {
      v132 = v25;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v130, v128, v131, 1549, 0, "Could not find written component [%{public}@-%llu]", v132, v174);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134);
    goto LABEL_105;
  }

  objc_storeStrong(v115 + 8, obj);
  objc_storeStrong(v117 + 9, v25);
  v119 = v117[4];
  *(v117 + 80) = isStoredOutsideObjectArchive;
  *(v117 + 81) = v65;
  v117[14] = v114;
  v117[15] = v92;
  *(v117 + 128) = CanBeDropped;
  v117[11] = v82;
  *(v117 + 57) = 1;
  *(v117 + 58) = v66 ^ 1;
  if (v119)
  {
    if (v119 != v165)
    {
      v120 = MEMORY[0x277D81150];
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "[TSPPackageWriteCoordinator writeComponent:rootObjectOrNil:forceArchive:withPackageWriter:]");
      v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v124, v121, v123, 1541, 0, "Unexpected two instances of the root object for component [%{public}@-%llu]", v25, v174);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126);
    }
  }

  else
  {
    objc_storeStrong(v117 + 4, v165);
  }

  if (archiveCopy && *(v117 + 58) == 1)
  {
    v135 = MEMORY[0x277D81150];
    v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "[TSPPackageWriteCoordinator writeComponent:rootObjectOrNil:forceArchive:withPackageWriter:]");
    v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v139, v136, v138, 1545, 0, "Cannot force archiving component [%{public}@-%llu] because it was already copied. Someone forgot to dirty it.", v25, v174);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v140, v141);
LABEL_105:
    atomic_store(0, &self->_writeSuccess);
  }

  if (v66)
  {
    if (!v165)
    {
      v150 = MEMORY[0x277D81150];
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "[TSPPackageWriteCoordinator writeComponent:rootObjectOrNil:forceArchive:withPackageWriter:]");
      v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      v155 = obj;
      if (v25)
      {
        v155 = v25;
      }

      if (archiveCopy)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v153, v151, v154, 1561, 0, "Root object should not be nil when archiving component [%{public}@-%llu] - Forcing archive: %{public}@", v155, v174, @"YES");
      }

      else
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v153, v151, v154, 1561, 0, "Root object should not be nil when archiving component [%{public}@-%llu] - Forcing archive: %{public}@", v155, v174, @"NO");
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v157);
      goto LABEL_87;
    }

    if (v159 && UnsafePointer != -1)
    {
      sub_276BD5EA4();
    }

    if (v25)
    {
      objc_msgSend_archiveComponent_locator_compressionAlgorithm_storeOutsideObjectArchive_rootObject_withPackageWriter_(self, v118, componentCopy, v25, v82, isStoredOutsideObjectArchive, v165, writerCopy);
    }

    else
    {
      objc_msgSend_archiveComponent_locator_compressionAlgorithm_storeOutsideObjectArchive_rootObject_withPackageWriter_(self, v118, componentCopy, obj, v82, isStoredOutsideObjectArchive, v165, writerCopy);
    }
  }

  else
  {
    if (v159)
    {
      v142 = MEMORY[0x277D81150];
      v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "[TSPPackageWriteCoordinator writeComponent:rootObjectOrNil:forceArchive:withPackageWriter:]");
      v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v144, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      v147 = obj;
      if (v25)
      {
        v147 = v25;
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v142, v145, v143, v146, 1578, 0, "Copying component [%{public}@-%llu] after object container has already been written.", v147, v174);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149);
    }

    if (v25)
    {
      objc_msgSend_copyComponent_locator_preferredLocator_rootObject_packageWriter_(self, v118, componentCopy, v25, obj, v165, writerCopy);
    }

    else
    {
      objc_msgSend_copyComponent_locator_preferredLocator_rootObject_packageWriter_(self, v118, componentCopy, obj, obj, v165, writerCopy);
    }
  }

LABEL_88:
  _Block_object_dispose(&v170, 8);
}

- (void)archiveComponent:(id)component locator:(id)locator compressionAlgorithm:(int64_t)algorithm storeOutsideObjectArchive:(BOOL)archive rootObject:(id)object withPackageWriter:(id)writer
{
  archiveCopy = archive;
  componentCopy = component;
  locatorCopy = locator;
  objectCopy = object;
  writerCopy = writer;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (locatorCopy && objectCopy)
  {
    v78 = writerCopy;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v79 = WeakRetained;
    v21 = objc_msgSend_context(objectCopy, v19, v20);

    if (v21 == WeakRetained)
    {
      writerCopy = v78;
      v40 = objc_msgSend_newComponentWriteChannelWithPackageLocator_compressionAlgorithm_storeOutsideObjectArchive_(v78, v22, locatorCopy, algorithm, archiveCopy);
      if (v40)
      {
        v76 = v40;
        v41 = objc_msgSend_identifier(componentCopy, v38, v39) == 2;
        v42 = [TSPObjectReferenceMap alloc];
        v43 = objc_loadWeakRetained(&self->_context);
        v77 = objc_msgSend_initWithContext_delegate_(v42, v44, v43, 0);

        writerCopy = v78;
        v45 = [TSPComponentWriter alloc];
        v75 = objc_msgSend_initWithComponent_locator_rootObject_delegate_mode_packageIdentifier_objectReferenceMapOrNil_writeChannel_archiverManager_(v45, v46, componentCopy, locatorCopy, objectCopy, self, 0, self->_packageIdentifier, v77, v40, self->_archiverManager);
        WeakRetained = v79;
        v74 = objc_msgSend_progress(v78, v47, v48);
        if (v74)
        {
          v51 = objc_msgSend_originalPackage(v78, v49, v50);
          v54 = objc_msgSend_locator(componentCopy, v52, v53);
          isStoredOutsideObjectArchive = objc_msgSend_isStoredOutsideObjectArchive(componentCopy, v55, v56);
          v59 = objc_msgSend_packageEntryInfoForComponentLocator_isStoredOutsideObjectArchive_(v51, v58, v54, isStoredOutsideObjectArchive);
          v62 = objc_msgSend_encodedLength(v59, v60, v61);

          writerCopy = v78;
          WeakRetained = v79;
        }

        else
        {
          v62 = 0;
        }

        dispatch_group_enter(self->_completionGroup);
        dispatch_suspend(self->_accessQueue);
        atomic_fetch_add(&self->_accessQueueSuspendCount, 1uLL);
        if (atomic_exchange(&self->_currentComponentWriterPointer, v75))
        {
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Current component writer should not be set.", "[TSPPackageWriteCoordinator archiveComponent:locator:compressionAlgorithm:storeOutsideObjectArchive:rootObject:withPackageWriter:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 1633);
          v68 = MEMORY[0x277D81150];
          v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "[TSPPackageWriteCoordinator archiveComponent:locator:compressionAlgorithm:storeOutsideObjectArchive:rootObject:withPackageWriter:]");
          v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v70, v72, 1633, 1, "Current component writer should not be set.");

          TSUCrashBreakpoint();
          abort();
        }

        completionQueue = self->_completionQueue;
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = sub_276A90A80;
        v80[3] = &unk_27A6E6050;
        v81 = v76;
        selfCopy = self;
        v64 = v77;
        v83 = v64;
        v90 = v41;
        v84 = componentCopy;
        v85 = writerCopy;
        v86 = locatorCopy;
        v65 = v75;
        v87 = v65;
        v66 = v74;
        v88 = v66;
        v89 = v62;
        objc_msgSend_writeWithCompletionQueue_completion_(v65, v67, completionQueue, v80);

        v40 = v76;
      }

      else
      {
        atomic_store(0, &self->_writeSuccess);
      }
    }

    else
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPPackageWriteCoordinator archiveComponent:locator:compressionAlgorithm:storeOutsideObjectArchive:rootObject:withPackageWriter:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v31 = objc_msgSend_tsp_identifier(objectCopy, v29, v30);
      v34 = objc_msgSend_context(objectCopy, v32, v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v35, v24, v26, 1598, 0, "Attempting to save object [%{public}@-%llu] from context %p into a document from context %p.", v28, v31, v34, v79);

      WeakRetained = v79;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
      atomic_store(0, &self->_writeSuccess);
      writerCopy = v78;
    }
  }

  else
  {
    atomic_store(0, &self->_writeSuccess);
  }
}

- (void)writeExternalReferences:(id)references andUpdateLazyReferences:(id)lazyReferences withPackageWriter:(id)writer forComponent:(id)component locator:(id)locator
{
  componentCopy = component;
  locatorCopy = locator;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276A91410;
  v15[3] = &unk_27A6E60F0;
  v15[4] = self;
  v16 = componentCopy;
  v17 = locatorCopy;
  v12 = locatorCopy;
  v13 = componentCopy;
  objc_msgSend_enumerateItemsUsingBlock_(references, v14, v15);
}

- (void)copyComponent:(id)component locator:(id)locator preferredLocator:(id)preferredLocator rootObject:(id)object packageWriter:(id)writer
{
  componentCopy = component;
  locatorCopy = locator;
  writerCopy = writer;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (!locatorCopy)
  {
    goto LABEL_6;
  }

  if ((objc_msgSend_isComponentPersisted_(self, v13, componentCopy) & 1) == 0)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPPackageWriteCoordinator copyComponent:locator:preferredLocator:rootObject:packageWriter:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v38 = objc_msgSend_identifier(componentCopy, v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v33, v35, 1825, 0, "We should not try to copy component [%{public}@-%llu] because it was not persisted yet.", locatorCopy, v38);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
LABEL_6:
    atomic_store(0, &self->_writeSuccess);
    goto LABEL_9;
  }

  dispatch_group_enter(self->_completionGroup);
  v19 = objc_msgSend_progress(writerCopy, v15, v16);
  if (v19)
  {
    v20 = objc_msgSend_originalPackage(writerCopy, v17, v18);
    v23 = objc_msgSend_locator(componentCopy, v21, v22);
    isStoredOutsideObjectArchive = objc_msgSend_isStoredOutsideObjectArchive(componentCopy, v24, v25);
    v28 = objc_msgSend_packageEntryInfoForComponentLocator_isStoredOutsideObjectArchive_(v20, v27, v23, isStoredOutsideObjectArchive);
    v31 = objc_msgSend_encodedLength(v28, v29, v30);
  }

  else
  {
    v31 = 0;
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_276A925D0;
  v44[3] = &unk_27A6E6208;
  v44[4] = self;
  v45 = componentCopy;
  v46 = locatorCopy;
  v42 = v19;
  v47 = v42;
  v48 = v31;
  objc_msgSend_copyComponent_locator_completion_(writerCopy, v43, v45, v46, v44);

LABEL_9:
}

- (void)attemptDocumentRecovery
{
  if ((atomic_exchange(&self->_didAttemptRecoveryByDirtyingAllComponents, 1u) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v7 = objc_msgSend_componentManager(WeakRetained, v4, v5);

    objc_msgSend_dirtyAllComponentsForDocumentUpgradeInPackage_(v7, v6, self->_packageIdentifier);
  }
}

- (BOOL)shouldArchiveComponent:(id)component checkForceArchive:(BOOL)archive
{
  archiveCopy = archive;
  componentCopy = component;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v10 = atomic_load(&self->_didWriteRootObject);
    if ((v10 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v17 = objc_msgSend_identifier(componentCopy, v6, v7);
  v11 = sub_2769ABC64(&self->_componentPropertiesSnapshot.__table_.__bucket_list_.__ptr_, &v17);
  if (v11 && *(v11 + 25) == 1)
  {
    v14 = *(v11 + 24);
    if (archiveCopy && (v11[3] & 1) == 0)
    {
      v16 = objc_msgSend_identifier(componentCopy, v12, v13);
      v17 = &v16;
      v14 = *(sub_276A9AFE0(&self->_componentProperties.__table_.__bucket_list_.__ptr_, &v16, &unk_276C16A90, &v17) + 25);
    }
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

- (BOOL)isComponentPersisted:(id)persisted
{
  persistedCopy = persisted;
  v10 = objc_msgSend_identifier(persistedCopy, v5, v6);
  v7 = sub_2769ABC64(&self->_componentPropertiesSnapshot.__table_.__bucket_list_.__ptr_, &v10);
  if (v7)
  {
    v8 = *(v7 + 25);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)shouldCopyComponentOfObject:(id)object
{
  objectCopy = object;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v8 = atomic_load(&self->_didWriteRootObject);
    if ((v8 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v10 = objc_msgSend_tsp_component(objectCopy, v4, v5);
  if (v10 && (objc_msgSend_shouldArchiveComponent_checkForceArchive_(self, v9, v10, 1) & 1) == 0)
  {
    v16 = objc_msgSend_tsp_identifier(objectCopy, v11, v12);
    v14 = sub_2769ABC64(&self->_writtenObjects.__table_.__bucket_list_.__ptr_, &v16);
    if (v14)
    {
      v13 = v14[4] == v10;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)componentForObjectIdentifier:(int64_t)identifier objectOrNil:(id)nil componentReadVersion:(unint64_t *)version
{
  identifierCopy = identifier;
  nilCopy = nil;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v9 = atomic_load(&self->_didWriteRootObject);
    if ((v9 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v10 = sub_2769ABC64(&self->_writtenObjects.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (v10)
  {
    v13 = v10[4];
    v16 = v13;
    if (!version)
    {
      goto LABEL_17;
    }

    v32 = objc_msgSend_identifier(v13, v14, v15);
    v17 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &v32);
    if (!v17)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Object was written by a component that was not written. How could that be?", "[TSPPackageWriteCoordinator componentForObjectIdentifier:objectOrNil:componentReadVersion:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 2133);
      v26 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPPackageWriteCoordinator componentForObjectIdentifier:objectOrNil:componentReadVersion:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v28, v30, 2133, 1, "Object was written by a component that was not written. How could that be?");

      TSUCrashBreakpoint();
      abort();
    }

    goto LABEL_7;
  }

  v18 = objc_msgSend_tsp_component(nilCopy, v11, v12);
  v16 = v18;
  if (!v18)
  {
LABEL_15:

    v16 = 0;
    if (version)
    {
      *version = 0;
    }

    goto LABEL_17;
  }

  v32 = objc_msgSend_identifier(v18, v19, v20);
  v17 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &v32);
  if (!v17 || *(v17 + 58) != 1)
  {
    LOBYTE(v32) = 0;
    v23 = objc_msgSend_identifier(v16, v21, v22);
    if (objc_msgSend_isComponentExternalWithIdentifier_wasCopied_componentReadVersion_(self, v24, v23, &v32, version) && v32 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (version)
  {
LABEL_7:
    *version = v17[14];
  }

LABEL_17:

  return v16;
}

- (void)setArchivedObjects:(id)objects componentObjectUUIDMap:(id)map objectReferenceMap:(id)referenceMap externalStrongReferences:(id)references ambiguousReferences:(id)ambiguousReferences externalWeakReferences:(id)weakReferences featureInfos:(id)infos componentDataReferenceMap:(id)self0 forComponent:(id)self1
{
  objectsCopy = objects;
  mapCopy = map;
  referenceMapCopy = referenceMap;
  referencesCopy = references;
  ambiguousReferencesCopy = ambiguousReferences;
  weakReferencesCopy = weakReferences;
  infosCopy = infos;
  dataReferenceMapCopy = dataReferenceMap;
  componentCopy = component;
  v59 = 0;
  v60 = 0;
  v42 = infosCopy;
  v24 = objc_msgSend_tsp_consolidateFeatureInfos_andReturnReadVersion_writeVersion_(MEMORY[0x277CBEB98], v23, infosCopy, &v60, &v59);
  externalReferenceQueue = self->_externalReferenceQueue;
  completionGroup = self->_completionGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A9478C;
  block[3] = &unk_27A6E6258;
  block[4] = self;
  v48 = componentCopy;
  v25 = v24;
  v57 = v60;
  v58 = v59;
  v49 = v25;
  v50 = objectsCopy;
  v51 = mapCopy;
  v52 = referenceMapCopy;
  v53 = dataReferenceMapCopy;
  v54 = ambiguousReferencesCopy;
  v55 = referencesCopy;
  v56 = weakReferencesCopy;
  v38 = weakReferencesCopy;
  v37 = referencesCopy;
  v36 = ambiguousReferencesCopy;
  v26 = dataReferenceMapCopy;
  v27 = referenceMapCopy;
  v28 = mapCopy;
  v29 = objectsCopy;
  v30 = componentCopy;
  dispatch_group_async(completionGroup, externalReferenceQueue, block);
  v31 = self->_completionGroup;
  metadataQueue = self->_metadataQueue;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_276A94AF8;
  v43[3] = &unk_27A6E6280;
  v45 = v60;
  v46 = v59;
  v43[4] = self;
  v44 = v25;
  v33 = v25;
  dispatch_group_async(v31, metadataQueue, v43);
}

- (void)updateExternalReferencesForCopiedComponent:(id)component
{
  componentCopy = component;
  completionGroup = self->_completionGroup;
  externalReferenceQueue = self->_externalReferenceQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A94D24;
  v8[3] = &unk_27A6E2898;
  v8[4] = self;
  v9 = componentCopy;
  v7 = componentCopy;
  dispatch_group_async(completionGroup, externalReferenceQueue, v8);
}

- (void)calculateExternalReferences
{
  externalReferenceQueue = self->_externalReferenceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A94F94;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_sync(externalReferenceQueue, block);
}

- (id)createPackageMetadataWritingDatasWithPackageWriter:(id)writer saveOperationState:(id)state error:(id *)error
{
  writerCopy = writer;
  stateCopy = state;
  objc_msgSend_calculateExternalReferences(self, v10, v11);
  v14 = atomic_load(&self->_writeSuccess);
  if ((v14 & 1) == 0)
  {
    v33 = 0;
    goto LABEL_14;
  }

  if (objc_msgSend_shouldUpdate(stateCopy, v12, v13))
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v17 = objc_msgSend_areExternalReferencesToDataAllowedAtURL_(WeakRetained, v16, self->_documentTargetURL);

    if ((v17 & 1) == 0)
    {
      v18 = objc_loadWeakRetained(&self->_context);
      v21 = objc_msgSend_dataManager(v18, v19, v20);

      objc_msgSend_removeExternalReferences(v21, v22, v23);
      objc_msgSend_waitForRemoveExternalReferencesToComplete(v21, v24, v25);
    }
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_276A8B1F8;
  v51 = sub_276A8B208;
  v52 = 0;
  v26 = [TSPPackageMetadata alloc];
  v27 = objc_loadWeakRetained(&self->_context);
  v29 = objc_msgSend_initWithContext_(v26, v28, v27);

  metadataQueue = self->_metadataQueue;
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = sub_276A953D8;
  v40 = &unk_27A6E62F0;
  v31 = v29;
  v41 = v31;
  selfCopy = self;
  v43 = writerCopy;
  v45 = &v53;
  v44 = stateCopy;
  v46 = &v47;
  dispatch_sync(metadataQueue, &v37);
  if (*(v54 + 24) != 1)
  {
    if (error)
    {
      v34 = v48[5];
      if (v34)
      {
        v33 = 0;
        *error = v34;
        goto LABEL_13;
      }

      v35 = objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v32, 0, v37, v38, v39, v40, v41, selfCopy, v43);
      *error = v35;
    }

    v33 = 0;
    goto LABEL_13;
  }

  v33 = v31;
LABEL_13:

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
LABEL_14:

  return v33;
}

- (BOOL)didWriteObject:(id)object claimingComponent:(id *)component componentReadVersion:(unint64_t *)version
{
  objectCopy = object;
  v11 = objc_msgSend_tsp_identifier(objectCopy, v9, v10);
  v13 = objc_msgSend_componentForObjectIdentifier_objectOrNil_componentReadVersion_(self, v12, v11, objectCopy, version);
  v14 = v13;
  if (v13)
  {
    if (component)
    {
      v15 = v13;
      *component = v14;
    }
  }

  return v14 != 0;
}

- (BOOL)didWriteComponentWithIdentifier:(int64_t)identifier wasCopied:(BOOL *)copied componentReadVersion:(unint64_t *)version
{
  identifierCopy = identifier;
  v7 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (v7)
  {
    if (copied)
    {
      *copied = *(v7 + 58);
    }

    if (version)
    {
      *version = v7[14];
    }
  }

  return v7 != 0;
}

- (id)explicitComponentRootObjectForObject:(id)object archiverOrNil:(id)nil claimingComponent:(id)component newClaimingComponent:(id)claimingComponent newClaimingRootObject:(id)rootObject willEnqueueDelayedObject:(BOOL)delayedObject hasArchiverAccessLock:(BOOL)lock
{
  delayedObjectCopy = delayedObject;
  if (nil)
  {
    objc_msgSend_explicitComponentRootObject(nil, a2, object);
  }

  else
  {
    objc_msgSend_explicitComponentRootObjectForObject_hasArchiverAccessLock_(self->_archiverManager, a2, object, lock);
  }
  v17 = ;
  if (v17)
  {
    if (!objc_msgSend_isObjectInExternalPackage_claimingComponent_componentReadVersion_(self, v15, v17, 0, 0))
    {
      goto LABEL_9;
    }
  }

  if (objc_msgSend_allowsImplicitComponentOwnership(object, v15, v16))
  {
    goto LABEL_8;
  }

  if (claimingComponent && objc_msgSend_identifier(claimingComponent, v18, v19) == self->_objectContainerIdentifier)
  {
    if (!rootObject || self->_objectContainer != rootObject)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPPackageWriteCoordinator explicitComponentRootObjectForObject:archiverOrNil:claimingComponent:newClaimingComponent:newClaimingRootObject:willEnqueueDelayedObject:hasArchiverAccessLock:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 2486, 0, "Unexpected object container object: %p vs %p.", self->_objectContainer, rootObject);
LABEL_31:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
      v17 = 0;
      atomic_store(0, &self->_writeSuccess);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (component && objc_msgSend_identifier(component, v18, v19) != self->_objectContainerIdentifier)
  {
    goto LABEL_8;
  }

  v26 = atomic_load(&self->_didWriteObjectContainer);
  if ((v26 & 1) != 0 && delayedObjectCopy)
  {
    if (self->_packageIdentifier == 1)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPPackageWriteCoordinator explicitComponentRootObjectForObject:archiverOrNil:claimingComponent:newClaimingComponent:newClaimingRootObject:willEnqueueDelayedObject:hasArchiverAccessLock:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v35 = objc_msgSend_tsp_identifier(object, v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v36, v28, v30, 2495, 0, "It is too late to try to add object [%{public}@-%llu], which cannot be implicitly owned, to the object container with identifier %llu.", v32, v35, self->_objectContainerIdentifier);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
      atomic_store(0, &self->_writeSuccess);
    }

    else if (UnsafePointer != -1)
    {
      sub_276BD5FE4();
    }
  }

  else
  {
    v17 = self->_objectContainer;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  v17 = 0;
  if (self->_packageIdentifier == 1 && delayedObjectCopy)
  {
    if ((objc_msgSend_isObjectInExternalPackage_claimingComponent_componentReadVersion_(self, v18, object, 0, 0) & 1) == 0)
    {
      v40 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSPPackageWriteCoordinator explicitComponentRootObjectForObject:archiverOrNil:claimingComponent:newClaimingComponent:newClaimingRootObject:willEnqueueDelayedObject:hasArchiverAccessLock:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v46 = objc_msgSend_tsp_identifier(object, v44, v45);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v22, v24, 2505, 0, "Object [%{public}@-%llu] cannot be implicitly owned. We will fail to autosave because there isn't an explicit component root object.", v43, v46);

      goto LABEL_31;
    }

LABEL_8:
    v17 = 0;
  }

LABEL_9:

  return v17;
}

- (void)addDelayedObject:(id)object forComponentRootObject:(id)rootObject claimingComponent:(id)component isDelayedObjectReferencedByObjectContainer:(BOOL)container completion:(id)completion
{
  containerCopy = container;
  objectCopy = object;
  rootObjectCopy = rootObject;
  componentCopy = component;
  completionCopy = completion;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v19 = atomic_load(&self->_didWriteRootObject);
    if ((v19 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  if (rootObjectCopy)
  {
    v20 = objc_msgSend_tsp_identifier(rootObjectCopy, v15, v16);
    v49 = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_276A96698;
    aBlock[3] = &unk_27A6E6318;
    aBlock[4] = self;
    v47 = v20;
    v21 = objectCopy;
    v44 = v21;
    v45 = componentCopy;
    v48 = containerCopy;
    v46 = completionCopy;
    v24 = _Block_copy(aBlock);
    if (v20 == self->_objectContainerIdentifier)
    {
      v25 = 1;
    }

    else
    {
      v40 = objc_msgSend_tsp_component(rootObjectCopy, v22, v23);
      if (v40)
      {
        v41 = objc_msgSend_tsp_component(v21, v38, v39);
        v25 = v41 != v40;
      }

      else
      {
        v25 = 1;
      }
    }

    if (sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &v49) == 0 || v25)
    {
      objc_msgSend_enqueueRootObjectImpl_forceArchive_isAddingDelayedObjectReferencedByObjectContainer_completion_(self, v42, rootObjectCopy, v25, containerCopy, v24);
    }

    else
    {
      v24[2](v24, 1);
    }
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPPackageWriteCoordinator addDelayedObject:forComponentRootObject:claimingComponent:isDelayedObjectReferencedByObjectContainer:completion:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v34 = objc_msgSend_tsp_identifier(objectCopy, v32, v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v35, v27, v29, 2518, 0, "Object [%{public}@-%llu] cannot be delayed because the component root object is nil.", v31, v34);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (int64_t)updateDelayedObjectsSetForWrittenComponentInfo:(WrittenComponentInfo *)info componentIdentifier:(int64_t)identifier withObject:(id)object canDelayObjects:(BOOL)objects
{
  identifierCopy = identifier;
  v8 = objc_msgSend_tsp_identifier(object, a2, info);
  sub_276A9B214(&self->_delayedObjects, &v8, &identifierCopy);
}

- (id)componentWriter:(id)writer wantsExplicitComponentRootObjectForObject:(id)object archiverOrNil:(id)nil claimingComponent:(id)component hasArchiverAccessLock:(BOOL)lock
{
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v14 = atomic_load(&self->_didWriteRootObject);
    if ((v14 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v15 = atomic_load(&self->_currentComponentWriterPointer);
  if (v15 != writer)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected current component writer.", a2, "[TSPPackageWriteCoordinator componentWriter:wantsExplicitComponentRootObjectForObject:archiverOrNil:claimingComponent:hasArchiverAccessLock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 2666);
    v23 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPPackageWriteCoordinator componentWriter:wantsExplicitComponentRootObjectForObject:archiverOrNil:claimingComponent:hasArchiverAccessLock:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v25, v27, 2666, 1, "Unexpected current component writer.");

    TSUCrashBreakpoint();
    abort();
  }

  v16 = objc_msgSend_component(writer, a2, writer);
  v19 = objc_msgSend_rootObject(writer, v17, v18);
  v21 = objc_msgSend_explicitComponentRootObjectForObject_archiverOrNil_claimingComponent_newClaimingComponent_newClaimingRootObject_willEnqueueDelayedObject_hasArchiverAccessLock_(self, v20, object, nil, component, v16, v19, 1, lock);

  return v21;
}

- (void)componentWriter:(id)writer canSkipArchivingStronglyReferencedObject:(id)object fromComponentRootObject:(id)rootObject completion:(id)completion
{
  completionCopy = completion;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v14 = atomic_load(&self->_didWriteRootObject);
    if ((v14 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v15 = atomic_load(&self->_currentComponentWriterPointer);
  if (v15 != writer)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected current component writer.", "[TSPPackageWriteCoordinator componentWriter:canSkipArchivingStronglyReferencedObject:fromComponentRootObject:completion:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 2672);
    v23 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPPackageWriteCoordinator componentWriter:canSkipArchivingStronglyReferencedObject:fromComponentRootObject:completion:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v25, v27, 2672, 1, "Unexpected current component writer.");

    TSUCrashBreakpoint();
    abort();
  }

  v16 = objc_msgSend_component(writer, v10, v11);
  v19 = objc_msgSend_identifier(v16, v17, v18);

  v20 = v19 == self->_objectContainerIdentifier;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_276A97158;
  v29[3] = &unk_27A6E6388;
  v34 = v20;
  objectCopy = object;
  v21 = completionCopy;
  v30 = v21;
  v32 = v19;
  selfCopy = self;
  objc_msgSend_addDelayedObject_forComponentRootObject_claimingComponent_isDelayedObjectReferencedByObjectContainer_completion_(self, v22, object, rootObject, 0, v20, v29);
}

- (id)componentWriterWantsDelayedObjects:(id)objects
{
  objectsCopy = objects;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v8 = atomic_load(&self->_didWriteRootObject);
    if ((v8 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v9 = atomic_load(&self->_currentComponentWriterPointer);
  if (v9 != objectsCopy)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected current component writer.", "[TSPPackageWriteCoordinator componentWriterWantsDelayedObjects:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 2694);
    v17 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPPackageWriteCoordinator componentWriterWantsDelayedObjects:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v19, v21, 2694, 1, "Unexpected current component writer.");

    TSUCrashBreakpoint();
    abort();
  }

  v10 = objc_msgSend_component(objectsCopy, v4, v5);
  v23 = objc_msgSend_identifier(v10, v11, v12);
  v13 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &v23);

  if (v13)
  {
    if (*(v13 + 56))
    {
      v13 = 0;
    }

    else
    {
      *(v13 + 56) = 1;
      v13 = objc_msgSend_allObjects(*(v13 + 48), v14, v15);
    }
  }

  return v13;
}

- (id)componentWriter:(id)writer wantsComponentOfObject:(id)object componentReadVersion:(unint64_t *)version
{
  writerCopy = writer;
  objectCopy = object;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v13 = atomic_load(&self->_didWriteRootObject);
    if ((v13 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v14 = atomic_load(&self->_currentComponentWriterPointer);
  if (v14 != writerCopy)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected current component writer.", "[TSPPackageWriteCoordinator componentWriter:wantsComponentOfObject:componentReadVersion:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 2708);
    v19 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPPackageWriteCoordinator componentWriter:wantsComponentOfObject:componentReadVersion:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v21, v23, 2708, 1, "Unexpected current component writer.");

    TSUCrashBreakpoint();
    abort();
  }

  v15 = objc_msgSend_tsp_identifier(objectCopy, v9, v10);
  v17 = objc_msgSend_componentForObjectIdentifier_objectOrNil_componentReadVersion_(self, v16, v15, objectCopy, version);

  return v17;
}

- (id)componentWriter:(id)writer locatorForClaimingComponent:(id)component
{
  writerCopy = writer;
  componentCopy = component;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v11 = atomic_load(&self->_didWriteRootObject);
    if ((v11 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v12 = atomic_load(&self->_currentComponentWriterPointer);
  if (v12 != writerCopy)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected current component writer.", "[TSPPackageWriteCoordinator componentWriter:locatorForClaimingComponent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 2718);
    v17 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPPackageWriteCoordinator componentWriter:locatorForClaimingComponent:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v19, v21, 2718, 1, "Unexpected current component writer.");

    TSUCrashBreakpoint();
    abort();
  }

  v23 = objc_msgSend_identifier(componentCopy, v7, v8);
  v13 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &v23);
  if (v13)
  {
    v14 = v13[9];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (BOOL)componentWriter:(id)writer object:(id)object belongsToCopiedComponent:(id)component
{
  writerCopy = writer;
  objectCopy = object;
  componentCopy = component;
  if (!atomic_load(&self->_accessQueueSuspendCount))
  {
    v13 = atomic_load(&self->_didWriteRootObject);
    if ((v13 & 1) == 0)
    {
      dispatch_assert_queue_V2(self->_accessQueue);
    }
  }

  v14 = atomic_load(&self->_currentComponentWriterPointer);
  if (v14 != writerCopy)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected current component writer.", "[TSPPackageWriteCoordinator componentWriter:object:belongsToCopiedComponent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 2725);
    v34 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSPPackageWriteCoordinator componentWriter:object:belongsToCopiedComponent:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v36, v38, 2725, 1, "Unexpected current component writer.");

    TSUCrashBreakpoint();
    abort();
  }

  if (!componentCopy || !objc_msgSend_shouldCopyComponentOfObject_(self, v10, objectCopy))
  {
    goto LABEL_13;
  }

  v17 = objc_msgSend_packageIdentifier(componentCopy, v15, v16);
  packageIdentifier = self->_packageIdentifier;
  if (v17 != packageIdentifier)
  {
    if (packageIdentifier == 1)
    {
      supportPackageWriteCoordinator = self->_supportPackageWriteCoordinator;
      v31 = objc_msgSend_identifier(componentCopy, v18, v19);
      objc_msgSend_forceArchivingComponentIdentifier_(supportPackageWriteCoordinator, v32, v31);
    }

LABEL_13:
    v29 = 0;
    goto LABEL_14;
  }

  v21 = objc_msgSend_component(writerCopy, v18, v19);
  v24 = objc_msgSend_identifier(v21, v22, v23);
  objectContainerIdentifier = self->_objectContainerIdentifier;

  if (v24 != objectContainerIdentifier)
  {
    v29 = 1;
    goto LABEL_14;
  }

  v40 = objc_msgSend_identifier(componentCopy, v26, v27);
  v28 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &v40);
  if (!v28)
  {
    goto LABEL_13;
  }

  v29 = *(v28 + 58);
LABEL_14:

  return v29 & 1;
}

- (void)addDataFinalizeHandlerForSuccessfulSave:(id)save
{
  if (save)
  {
    dataFinalizeHandlers = self->_dataFinalizeHandlers;
    v5 = _Block_copy(save);
    objc_msgSend_addObject_(dataFinalizeHandlers, v4, v5);
  }
}

- (id)objectForIdentifier:(int64_t)identifier
{
  identifierCopy = identifier;
  v3 = sub_2769ABC64(&self->_writtenObjects.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (int64_t)componentIdentifierForObjectIdentifier:(int64_t)identifier objectOrNil:(id)nil objectUUIDOrNil:(id)orNil outComponentIsVersioned:(BOOL *)versioned
{
  nilCopy = nil;
  orNilCopy = orNil;
  v59[0] = 0;
  v13 = objc_msgSend_componentForObjectIdentifier_objectOrNil_componentReadVersion_(self, v12, identifier, nilCopy, 0);
  v16 = v13;
  if (!v13 || (v59[0] = objc_msgSend_identifier(v13, v14, v15)) == 0)
  {
    v59[0] = objc_msgSend_externalReferenceInfoForObjectIdentifier_(self->_externalLazyReferencesMap, v14, identifier);
    if (v59[0])
    {
      v19 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, v59);
      if (v19 && (*(v19 + 58) & 1) != 0)
      {
        v20 = v19[3];

        v16 = v20;
        if (v59[0])
        {
          goto LABEL_30;
        }
      }

      else
      {
        v59[0] = 0;
      }
    }

    next = self->_writtenComponents.__table_.__first_node_.__next_;
    if (next)
    {
      versionedCopy = versioned;
      while (1)
      {
        v22 = *(next + 58);
        if (v22 == 1)
        {
          v23 = objc_msgSend_persistedComponentDataReferenceMap(next[3], v17, v18);
        }

        else
        {
          v23 = next[24];
        }

        v26 = v23;
        v27 = objc_msgSend_objectToDataReferenceMap(v23, v24, v25);
        v29 = objc_msgSend_allReferencesFromIdentifier_(v27, v28, identifier);

        if (v29)
        {
          break;
        }

        if (orNilCopy)
        {
          if (v22)
          {
            v32 = objc_msgSend_componentObjectUUIDMap(next[3], v30, v31);
          }

          else
          {
            v32 = next[20];
          }

          v34 = v32;
          if (objc_msgSend_identifierForObjectUUID_(v32, v33, orNilCopy))
          {
            if (UnsafePointer != -1)
            {
              sub_276BD6020();
            }

            versioned = versionedCopy;
            v35 = next[3];

            v59[0] = next[2];
            goto LABEL_29;
          }
        }

        next = *next;
        if (!next)
        {
          versioned = versionedCopy;
          goto LABEL_30;
        }
      }

      if (UnsafePointer != -1)
      {
        sub_276BD5FF8();
      }

      versioned = versionedCopy;
      v35 = next[3];

      v59[0] = next[2];
LABEL_29:

      v16 = v35;
    }
  }

LABEL_30:
  v38 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, v59);
  if (v38)
  {
    sub_276A99658(v48, (v38 + 3));
    if (v49 == 0)
    {
      v39 = v50;
    }

    else
    {
      v39 = 1;
    }

    *versioned = v39 & 1;
  }

  else if (v16)
  {
    if (objc_msgSend_componentReadVersion(v16, v36, v37) || objc_msgSend_componentRequiredVersion(v16, v40, v41))
    {
      canBeDropped = 1;
    }

    else
    {
      canBeDropped = objc_msgSend_canBeDropped(v16, v42, v43);
    }

    *versioned = canBeDropped;
  }

  else
  {
    *versioned = 0;
  }

  v45 = v59[0];

  return v45;
}

- (BOOL)wasComponentCopied:(int64_t)copied
{
  copiedCopy = copied;
  v3 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &copiedCopy);
  if (v3)
  {
    v4 = *(v3 + 58);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)explicitComponentRootObjectForObject:(id)object
{
  v3 = objc_msgSend_explicitComponentRootObjectForObject_hasArchiverAccessLock_(self->_archiverManager, a2, object, 0);

  return v3;
}

- (id)persistedObjectUUIDMap:(id)map needsDescriptionForComponentIdentifier:(int64_t)identifier objectIdentifier:(int64_t)objectIdentifier
{
  mapCopy = map;
  identifierCopy = identifier;
  v9 = sub_2769ABC64(&self->_writtenComponents.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (v9)
  {
    v10 = v9[3];
    v14 = objc_msgSend_objectForIdentifier_(self, v11, objectIdentifier);
    if (v14 || (WeakRetained = objc_loadWeakRetained(&self->_context), objc_msgSend_objectForIdentifier_(WeakRetained, v16, objectIdentifier), v17 = objc_claimAutoreleasedReturnValue(), WeakRetained, (v14 = v17) != 0))
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = objc_msgSend_locator(v10, v12, v13);
      v22 = objc_msgSend_identifier(v10, v20, v21);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v26 = objc_msgSend_stringWithFormat_(v18, v25, @"[component: %@-%llu object: %@-%llu]", v19, v22, v24, objectIdentifier);;
    }

    else
    {
      v28 = MEMORY[0x277CCACA8];
      v29 = objc_msgSend_locator(v10, v12, v13);
      v32 = objc_msgSend_identifier(v10, v30, v31);
      v26 = objc_msgSend_stringWithFormat_(v28, v33, @"[component: %@-%llu object: %llu]", v29, v32, objectIdentifier);;
      v14 = v29;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)persistedObjectUUIDMap:(id)map foundDuplicateUUID:(id)d firstObjectLocation:(TSPObjectLocation)location secondObjectLocation:(TSPObjectLocation)objectLocation
{
  var1 = objectLocation.var1;
  v7 = location.var1;
  mapCopy = map;
  dCopy = d;
  duplicateUUIDs = self->_duplicateUUIDs;
  if (!duplicateUUIDs)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = self->_duplicateUUIDs;
    self->_duplicateUUIDs = v13;

    duplicateUUIDs = self->_duplicateUUIDs;
  }

  objc_msgSend_addObject_(duplicateUUIDs, v10, dCopy);
  v16 = objc_msgSend_objectForIdentifier_(self, v15, v7);
  v19 = objc_msgSend_objectForIdentifier_(self, v17, var1);
  if (v16 && objc_msgSend_conformsToProtocol_(v16, v18, &unk_28860AB78) && (v20 = objc_opt_respondsToSelector(), v21 = v16, v22 = v19, (v20 & 1) != 0) || v19 && objc_msgSend_conformsToProtocol_(v19, v18, &unk_28860AB78) && (v23 = objc_opt_respondsToSelector(), v21 = v19, v22 = v16, (v23 & 1) != 0))
  {
    objc_msgSend_willFailToAutosaveDueToDuplicateUUIDWithObject_objectReferenceMap_(v21, v18, v22, self->_objectReferenceMap);
  }
}

- (BOOL)wasObjectPersistedWithIdentifier:(int64_t)identifier
{
  if (objc_msgSend_didWriteObjectWithIdentifier_(self, a2, identifier))
  {
    return 1;
  }

  supportPackageWriteCoordinator = self->_supportPackageWriteCoordinator;

  return objc_msgSend_didWriteObjectWithIdentifier_(supportPackageWriteCoordinator, v5, identifier);
}

- (id).cxx_construct
{
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 38) = 1065353216;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 54) = 1065353216;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 64) = 1065353216;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 33) = self + 272;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 94) = 1065353216;
  *(self + 24) = 0u;
  *(self + 25) = 0u;
  *(self + 104) = 1065353216;
  *(self + 424) = 0u;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  *(self + 39) = 0u;
  *(self + 40) = 0u;
  *(self + 164) = 1065353216;
  return self;
}

@end