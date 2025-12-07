@interface TSPSupportPackageReadCoordinator
- (BOOL)endReading;
- (TSPSupportPackageReadCoordinator)initWithContext:(id)context package:(id)package packageURL:(id)l finalizeHandlerQueue:(id)queue areExternalDataReferencesAllowed:(BOOL)allowed skipDocumentUpgrade:(BOOL)upgrade documentLoadValidationPolicy:(id)policy;
- (TSPSupportPackageReadCoordinator)initWithContext:(id)context package:(id)package packageURL:(id)l finalizeHandlerQueue:(id)queue areExternalDataReferencesAllowed:(BOOL)allowed skipDocumentUpgrade:(BOOL)upgrade documentLoadValidationPolicy:(id)policy documentPackage:(id)self0;
- (id)externalObjectForIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier isReadFinished:(BOOL)finished;
- (void)prepareToReadComponentWithIdentifier:(int64_t)identifier forObjectIdentifier:(int64_t)objectIdentifier isWeakReference:(BOOL)reference queue:(id)queue completion:(id)completion;
- (void)setDocumentPackageReadCoordinator:(id)coordinator;
@end

@implementation TSPSupportPackageReadCoordinator

- (TSPSupportPackageReadCoordinator)initWithContext:(id)context package:(id)package packageURL:(id)l finalizeHandlerQueue:(id)queue areExternalDataReferencesAllowed:(BOOL)allowed skipDocumentUpgrade:(BOOL)upgrade documentLoadValidationPolicy:(id)policy
{
  contextCopy = context;
  packageCopy = package;
  lCopy = l;
  queueCopy = queue;
  policyCopy = policy;
  v16 = MEMORY[0x277D81150];
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPSupportPackageReadCoordinator initWithContext:package:packageURL:finalizeHandlerQueue:areExternalDataReferencesAllowed:skipDocumentUpgrade:documentLoadValidationPolicy:]");
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v18, v20, 1410, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  v24 = MEMORY[0x277CBEAD8];
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s: %s", "Do not call method", "[TSPSupportPackageReadCoordinator initWithContext:package:packageURL:finalizeHandlerQueue:areExternalDataReferencesAllowed:skipDocumentUpgrade:documentLoadValidationPolicy:]", contextCopy, self);
  v28 = objc_msgSend_exceptionWithName_reason_userInfo_(v24, v27, *MEMORY[0x277CBE658], v26, 0);
  v29 = v28;

  objc_exception_throw(v28);
}

- (TSPSupportPackageReadCoordinator)initWithContext:(id)context package:(id)package packageURL:(id)l finalizeHandlerQueue:(id)queue areExternalDataReferencesAllowed:(BOOL)allowed skipDocumentUpgrade:(BOOL)upgrade documentLoadValidationPolicy:(id)policy documentPackage:(id)self0
{
  upgradeCopy = upgrade;
  allowedCopy = allowed;
  documentPackageCopy = documentPackage;
  v24.receiver = self;
  v24.super_class = TSPSupportPackageReadCoordinator;
  v18 = [(TSPPackageReadCoordinator *)&v24 initWithContext:context package:package packageURL:l finalizeHandlerQueue:queue areExternalDataReferencesAllowed:allowedCopy skipDocumentUpgrade:upgradeCopy documentLoadValidationPolicy:policy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_documentPackage, documentPackage);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("TSPSupportPackageReadCoordinator.DocumentComponentRead", v20);
    documentComponentReadQueue = v19->_documentComponentReadQueue;
    v19->_documentComponentReadQueue = v21;
  }

  return v19;
}

- (void)setDocumentPackageReadCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (self->_documentPackageReadCoordinator)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Document package read coordinator is already set.", "[TSPSupportPackageReadCoordinator setDocumentPackageReadCoordinator:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm", 1424);
    v5 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPSupportPackageReadCoordinator setDocumentPackageReadCoordinator:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v7, v9, 1424, 1, "Document package read coordinator is already set.");

    TSUCrashBreakpoint();
    abort();
  }

  self->_documentPackageReadCoordinator = coordinatorCopy;
}

- (BOOL)endReading
{
  v6.receiver = self;
  v6.super_class = TSPSupportPackageReadCoordinator;
  endReading = [(TSPPackageReadCoordinator *)&v6 endReading];
  if (endReading)
  {
    objc_msgSend_tsp_enumerateObjectsUsingBlock_(self->super._objects, v3, &unk_2885C4660);
  }

  return endReading;
}

- (void)prepareToReadComponentWithIdentifier:(int64_t)identifier forObjectIdentifier:(int64_t)objectIdentifier isWeakReference:(BOOL)reference queue:(id)queue completion:(id)completion
{
  referenceCopy = reference;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276A72884;
  v15[3] = &unk_27A6E58A8;
  objectIdentifierCopy = objectIdentifier;
  identifierCopy = identifier;
  v19 = referenceCopy;
  v15[4] = self;
  v16 = completionCopy;
  v14.receiver = self;
  v14.super_class = TSPSupportPackageReadCoordinator;
  v13 = completionCopy;
  [(TSPPackageReadCoordinator *)&v14 prepareToReadComponentWithIdentifier:identifier forObjectIdentifier:objectIdentifier isWeakReference:referenceCopy queue:queue completion:v15];
}

- (id)externalObjectForIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier isReadFinished:(BOOL)finished
{
  finishedCopy = finished;
  v9 = objc_msgSend_unarchivedObjectForIdentifier_isReadFinished_(self->_documentPackageReadCoordinator, a2, identifier, 1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TSPSupportPackageReadCoordinator;
    v11 = [(TSPPackageReadCoordinator *)&v14 externalObjectForIdentifier:identifier componentIdentifier:componentIdentifier isReadFinished:finishedCopy];
  }

  v12 = v11;

  return v12;
}

@end