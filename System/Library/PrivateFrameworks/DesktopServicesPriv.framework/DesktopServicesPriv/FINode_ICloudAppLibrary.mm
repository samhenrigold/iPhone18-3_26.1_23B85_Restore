@interface FINode_ICloudAppLibrary
- (BOOL)isValid;
- (FINode)documentsFolder;
- (NSString)appIdentifier;
- (id).cxx_construct;
- (id)iteratorWithOptions:(unsigned int)options;
- (id)nodeToMoveOrDelete;
- (id)nodesToObserve;
- (id)parent;
- (id)propertyAsArray:(unsigned int)array async:(BOOL)async options:(unsigned int)options error:(id *)error;
- (id)propertyAsDate:(unsigned int)date async:(BOOL)async options:(unsigned int)options error:(id *)error;
- (id)propertyAsNSObject:(unsigned int)object async:(BOOL)async options:(unsigned int)options error:(id *)error;
- (id)propertyAsNumber:(unsigned int)number async:(BOOL)async options:(unsigned int)options error:(id *)error;
- (id)updateDocumentsFolder;
- (void)dealloc;
- (void)dispatchEvent:(id)event forObserver:(id)observer;
@end

@implementation FINode_ICloudAppLibrary

- (void)dealloc
{
  v3 = +[FIPresentationNodeMap shared];
  [v3 unregisterAllForPresentationNode:self];

  v4.receiver = self;
  v4.super_class = FINode_ICloudAppLibrary;
  [(FINode_ICloudAppLibrary *)&v4 dealloc];
}

- (BOOL)isValid
{
  v8.receiver = self;
  v8.super_class = FINode_ICloudAppLibrary;
  if (![(FIDSNode *)&v8 isValid])
  {
    return 0;
  }

  asTNode = [(FIDSNode *)self asTNode];
  v4 = TNode::ParentLock(asTNode);
  os_unfair_lock_lock(v4);
  TNodePtr::TNodePtr(&v7, *(asTNode + 6));
  os_unfair_lock_unlock(v4);
  v5 = TNodeFromFINode(v7.fFINode) != 0;

  return v5;
}

- (NSString)appIdentifier
{
  if (!CFStringGetLength(self->_appIdentifier.fString.fRef))
  {
    fpItem = [(FIDSNode *)self fpItem];
    v4 = fpItem;
    if (fpItem)
    {
      fp_appContainerBundleIdentifier = [fpItem fp_appContainerBundleIdentifier];
      if (self->_appIdentifier.fString.fRef != fp_appContainerBundleIdentifier)
      {
        TString::SetStringRefAsImmutable(&self->_appIdentifier, fp_appContainerBundleIdentifier);
      }
    }
  }

  v6 = self->_appIdentifier.fString.fRef;

  return v6;
}

- (id)iteratorWithOptions:(unsigned int)options
{
  v3 = *&options;
  documentsFolder = [(FINode_ICloudAppLibrary *)self documentsFolder];
  v5 = [documentsFolder iteratorWithOptions:v3];

  return v5;
}

- (id)updateDocumentsFolder
{
  if ([(FINode_ICloudAppLibrary *)self isValid])
  {
    fileURL = [(FIDSNode *)self fileURL];
    v4 = [FINode fiNodeFromURL:fileURL];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeWeak(&selfCopy->_documentsFolder, v4);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FINode)documentsFolder
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_documentsFolder);
  objc_sync_exit(selfCopy);

  if (!WeakRetained || ([WeakRetained isValid] & 1) == 0)
  {
    updateDocumentsFolder = [(FINode_ICloudAppLibrary *)selfCopy updateDocumentsFolder];

    WeakRetained = updateDocumentsFolder;
  }

  return WeakRetained;
}

- (id)parent
{
  documentsFolder = [(FINode_ICloudAppLibrary *)self documentsFolder];
  fileParent = [documentsFolder fileParent];
  parent = [fileParent parent];

  return parent;
}

- (id)nodeToMoveOrDelete
{
  documentsFolder = [(FINode_ICloudAppLibrary *)self documentsFolder];
  fileParent = [documentsFolder fileParent];

  return fileParent;
}

- (id)nodesToObserve
{
  v12 = *MEMORY[0x1E69E9840];
  documentsFolder = [(FINode_ICloudAppLibrary *)self documentsFolder];
  if (!documentsFolder)
  {
    v4 = LogObj(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      displayName = [(FINode *)self displayName];
      v9.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v9, displayName);

      v6 = SanitizedStr(&v9);
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "Documents folder is nil for '%{public}@' returning empty nodes to observe", buf, 0xCu);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
    }
  }

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{documentsFolder, 0, v9.fString.fRef}];

  return v7;
}

- (void)dispatchEvent:(id)event forObserver:(id)observer
{
  observerCopy = observer;
  NodeEventFromNodeEventRef(&v13, event);
  obj = self;
  v12 = v13;
  TNodeEventPtr::operator->(&v13);
  v7 = TNodeFromFINode(obj);
  v8 = *(TNodeEventPtr::operator->(&v12) + 64);
  v16 = v8;
  if (v8)
  {
    TDSNotifier::AddPtrReference(v8);
  }

  v9 = *v8;
  v10 = *(v8 + 1);
  v17 = v9;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  TNodePtr::TNodePtr(&v15, v7);
  TNodePtr::TNodePtr(&v14, v7);
  TDSNotifier::Make();
}

- (id)propertyAsDate:(unsigned int)date async:(BOOL)async options:(unsigned int)options error:(id *)error
{
  v7 = *&options;
  asyncCopy = async;
  v9 = *&date;
  if (date <= 1819240306)
  {
    if (date > 1718903155)
    {
      if (date != 1718903156)
      {
        v10 = 1769171299;
        goto LABEL_13;
      }
    }

    else if (date != 1634952036)
    {
      v10 = 1684237940;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (date <= 1836016739)
  {
    if (date != 1819240307)
    {
      v10 = 1819632756;
      goto LABEL_13;
    }

LABEL_14:
    documentsFolder = [(FINode_ICloudAppLibrary *)self documentsFolder];
    v12 = [documentsFolder propertyAsDate:v9 async:asyncCopy options:v7 error:error];

    goto LABEL_15;
  }

  if (date == 1836016740 || date == 1885895027)
  {
    goto LABEL_14;
  }

  v10 = 1883333732;
LABEL_13:
  if (date == v10)
  {
    goto LABEL_14;
  }

  v14.receiver = self;
  v14.super_class = FINode_ICloudAppLibrary;
  v12 = [(FIDSNode *)&v14 propertyAsDate:*&date async:async options:*&options error:error];
LABEL_15:

  return v12;
}

- (id)propertyAsNumber:(unsigned int)number async:(BOOL)async options:(unsigned int)options error:(id *)error
{
  v7 = *&options;
  asyncCopy = async;
  v9 = *&number;
  if (number <= 1819240306)
  {
    if (number > 1718903155)
    {
      if (number != 1718903156)
      {
        v10 = 1769171299;
        goto LABEL_13;
      }
    }

    else if (number != 1634952036)
    {
      v10 = 1684237940;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (number <= 1836016739)
  {
    if (number != 1819240307)
    {
      v10 = 1819632756;
      goto LABEL_13;
    }

LABEL_14:
    documentsFolder = [(FINode_ICloudAppLibrary *)self documentsFolder];
    v12 = [documentsFolder propertyAsNumber:v9 async:asyncCopy options:v7 error:error];

    goto LABEL_15;
  }

  if (number == 1836016740 || number == 1885895027)
  {
    goto LABEL_14;
  }

  v10 = 1883333732;
LABEL_13:
  if (number == v10)
  {
    goto LABEL_14;
  }

  v14.receiver = self;
  v14.super_class = FINode_ICloudAppLibrary;
  v12 = [(FIDSNode *)&v14 propertyAsNumber:*&number async:async options:*&options error:error];
LABEL_15:

  return v12;
}

- (id)propertyAsArray:(unsigned int)array async:(BOOL)async options:(unsigned int)options error:(id *)error
{
  v7 = *&options;
  asyncCopy = async;
  v9 = *&array;
  if (array <= 1819240306)
  {
    if (array > 1718903155)
    {
      if (array != 1718903156)
      {
        v10 = 1769171299;
        goto LABEL_13;
      }
    }

    else if (array != 1634952036)
    {
      v10 = 1684237940;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (array <= 1836016739)
  {
    if (array != 1819240307)
    {
      v10 = 1819632756;
      goto LABEL_13;
    }

LABEL_14:
    documentsFolder = [(FINode_ICloudAppLibrary *)self documentsFolder];
    v12 = [documentsFolder propertyAsArray:v9 async:asyncCopy options:v7 error:error];

    goto LABEL_15;
  }

  if (array == 1836016740 || array == 1885895027)
  {
    goto LABEL_14;
  }

  v10 = 1883333732;
LABEL_13:
  if (array == v10)
  {
    goto LABEL_14;
  }

  v14.receiver = self;
  v14.super_class = FINode_ICloudAppLibrary;
  v12 = [(FIDSNode *)&v14 propertyAsArray:*&array async:async options:*&options error:error];
LABEL_15:

  return v12;
}

- (id)propertyAsNSObject:(unsigned int)object async:(BOOL)async options:(unsigned int)options error:(id *)error
{
  v7 = *&options;
  asyncCopy = async;
  v9 = *&object;
  if (object <= 1819240306)
  {
    if (object > 1718903155)
    {
      if (object != 1718903156)
      {
        v10 = 1769171299;
        goto LABEL_13;
      }
    }

    else if (object != 1634952036)
    {
      v10 = 1684237940;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (object <= 1836016739)
  {
    if (object != 1819240307)
    {
      v10 = 1819632756;
      goto LABEL_13;
    }

LABEL_14:
    documentsFolder = [(FINode_ICloudAppLibrary *)self documentsFolder];
    v12 = [documentsFolder propertyAsNSObject:v9 async:asyncCopy options:v7 error:error];

    goto LABEL_15;
  }

  if (object == 1836016740 || object == 1885895027)
  {
    goto LABEL_14;
  }

  v10 = 1883333732;
LABEL_13:
  if (object == v10)
  {
    goto LABEL_14;
  }

  v14.receiver = self;
  v14.super_class = FINode_ICloudAppLibrary;
  v12 = [(FIDSNode *)&v14 propertyAsNSObject:*&object async:async options:*&options error:error];
LABEL_15:

  return v12;
}

- (id).cxx_construct
{
  self->_appIdentifier.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  return self;
}

@end