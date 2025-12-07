@interface FILocalAppContainerCollection
+ (id)appContainerForDocumentsNode:(id)node;
+ (id)sharedInstanceCreateIfNeeded:(BOOL)needed;
- (BOOL)isPopulated;
- (BOOL)populate;
- (FILocalAppContainerCollection)init;
- (id).cxx_construct;
- (id)_appContainerForDocumentsNode:(id)node;
- (id)appContainerForDocumentsNode:(id)node;
- (id)fileParent;
- (id)iteratorWithOptions:(unsigned int)options;
- (id)nodesForSizing;
- (id)parent;
- (id)populate;
- (void)dealloc;
- (void)synchronizeWithOptions:(unsigned int)options async:(BOOL)async;
@end

@implementation FILocalAppContainerCollection

- (void)dealloc
{
  [*(self + 15) setDelegate:0];
  v3.receiver = self;
  v3.super_class = FILocalAppContainerCollection;
  [(FICustomNode *)&v3 dealloc];
}

- (FILocalAppContainerCollection)init
{
  v10.receiver = self;
  v10.super_class = FILocalAppContainerCollection;
  v2 = [(FICustomNode *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(v2 + 16);
    *(v2 + 16) = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = *(v2 + 17);
    *(v2 + 17) = v5;

    TNode::SetInitialPopulationDeferred([(FIDSNode *)v2 asTNode]);
    sharedRegistry = [objc_opt_class() sharedRegistry];
    v8 = *(v2 + 15);
    *(v2 + 15) = sharedRegistry;
  }

  return v2;
}

- (id)parent
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = sLocalStorageNode;
  objc_sync_exit(v2);

  return v3;
}

- (id)fileParent
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  storageNode = [sLocalStorageNode storageNode];
  objc_sync_exit(v2);

  return storageNode;
}

+ (id)sharedInstanceCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  std::mutex::lock(&+[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sLock);
  v4 = +[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton;
  if (neededCopy && !+[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton)
  {
    v5 = objc_alloc_init(FILocalAppContainerCollection);
    v6 = +[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton;
    +[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton = v5;

    v4 = +[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton;
  }

  v7 = v4;
  std::mutex::unlock(&+[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sLock);

  return v7;
}

+ (id)appContainerForDocumentsNode:(id)node
{
  nodeCopy = node;
  v5 = [self sharedInstanceCreateIfNeeded:0];
  v6 = [v5 appContainerForDocumentsNode:nodeCopy];

  return v6;
}

- (id)appContainerForDocumentsNode:(id)node
{
  nodeCopy = node;
  std::mutex::lock((self + 152));
  v5 = [(FILocalAppContainerCollection *)self _appContainerForDocumentsNode:nodeCopy];
  std::mutex::unlock((self + 152));

  return v5;
}

- (id)_appContainerForDocumentsNode:(id)node
{
  v34 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = 0;
    goto LABEL_27;
  }

  v7 = atomic_load(self + 105);
  if ((v7 & 1) == 0)
  {
    v8 = atomic_load(self + 104);
    if (v8)
    {
      do
      {
        v9 = LogObj(7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_DEBUG, "AppContainerCollection waiting for population to complete", buf, 2u);
        }

        v10 = atomic_load(self + 104);
      }

      while ((v10 & 1) != 0);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = *(self + 16);
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v12)
  {
    v13 = *v28;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v27 + 1) + 8 * v14);
      documentsNode = [v15 documentsNode];
      v17 = documentsNode == nodeCopy;

      if (v17)
      {
        goto LABEL_25;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = *(self + 17);
  v6 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v6)
  {
    v18 = *v24;
LABEL_18:
    v19 = 0;
    while (1)
    {
      if (*v24 != v18)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v23 + 1) + 8 * v19);
      documentsNode2 = [v15 documentsNode];
      v21 = documentsNode2 == nodeCopy;

      if (v21)
      {
        break;
      }

      if (v6 == ++v19)
      {
        v6 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v6)
        {
          goto LABEL_18;
        }

        goto LABEL_26;
      }
    }

LABEL_25:
    v6 = v15;
  }

LABEL_26:

LABEL_27:

  return v6;
}

- (BOOL)populate
{
  v73 = *MEMORY[0x1E69E9840];
  v42 = atomic_exchange(self + 104, 1u);
  if ((v42 & 1) == 0)
  {
    v3 = LogObj(7);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_INFO, "AppCollection sync started", buf, 2u);
    }

    memset(v60, 0, sizeof(v60));
    v4 = atomic_load(self + 105);
    nodeRef = [(FINode *)self nodeRef];
    v7 = TNode::NodeFromNodeRef(nodeRef, v6);
    TNodePtr::TNodePtr(&v59, v7);
    v41 = v4;
    selfCopy = self;
    v53[3] = selfCopy;
    v54 = v59.fFINode;
    LOBYTE(v55) = (v4 & 1) == 0;
    *(&v55 + 1) = v60;
    v56 = selfCopy;
    TNodePtr::TNodePtr(&v57, &v54);
    v58 = v55;

    if ((v4 & 1) == 0)
    {
      buf[0] = 0;
      v9 = TNodeFromFINode(v59.fFINode);
      TNode::HandleSyncStarted(v9, 0x800000, buf);
    }

    TNode::StPopulating::StPopulating(v53, &v59.fFINode, 0);
    v51 = 0;
    v52 = 0;
    listOfMonitoredApps = [*(selfCopy + 15) listOfMonitoredApps];
    TContainerFetcher::FetchContainersAndDocumentsFolders(&v51, listOfMonitoredApps, &v49);

    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    obj = +[FINode protectedAppIdentifiers];
    v11 = +[FINode currentHostAppIdentifier];
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&theString, v11);

    std::mutex::lock((selfCopy + 152));
    objc_storeStrong(selfCopy + 18, obj);
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(selfCopy + 16)];
    [v12 unionSet:*(selfCopy + 17)];
    v14 = v49;
    v13 = v50;
    while (v14 != v13)
    {
      v15 = *(v14 + 8);
      IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator(buf, v12);
      IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::IDContainerIteratorAdaptor(&v62, -1, v12);
      while (*buf != v62.fFINode || v72 != v63)
      {
        v16 = *(v67 + 8 * v71);
        documentsNode = [v16 documentsNode];
        v18 = documentsNode == v15;

        if (v18)
        {
          break;
        }

        v19 = v71;
        if (v71 >= v70 - 1)
        {
          v20 = [*buf countByEnumeratingWithState:&buf[8] objects:v69 count:4];
          v19 = -1;
          v70 = v20;
          v71 = -1;
        }

        if (v69[4] != *v68)
        {
          objc_enumerationMutation(*buf);
          v19 = v71;
        }

        v71 = v19 + 1;
        ++v72;
      }

      IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator(v61, buf);

      IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::IDContainerIteratorAdaptor(buf, -1, v12);
      if (v61[0] == *buf)
      {
        v21 = v61[16] == v72;

        if (v21)
        {

          v22 = 0;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v22 = *(v61[2] + v61[15]);

LABEL_21:
      if (*(v14 + 40) == 1)
      {
        v23 = *(v14 + 16);
        v24 = [obj containsObject:v23];

        if (v24)
        {
          v25 = 0;
LABEL_26:
          *(v14 + 40) = v25;
        }
      }

      else if (CFStringGetLength(theString))
      {
        v25 = CFEqual(theString, *(v14 + 16)) != 0;
        goto LABEL_26;
      }

      if (v22)
      {
        v26 = [*(selfCopy + 17) containsObject:v22];
        v27 = v26;
        if (*(v14 + 40) == 1)
        {
          [v12 removeObject:v22];
          [v43 addObject:v22];
          if (v27)
          {
            [*(selfCopy + 17) removeObject:v22];
            TNodePtr::TNodePtr(&v62, [v22 asTNode]);
            TNodeEvent::CreateNodeEvent(3, &v62.fFINode, 0, buf);
            TNodeEventPtrs::AddEvent(v60, &v59, buf);
            TNodeEventPtr::~TNodeEventPtr(buf);
          }
        }

        else if (v26)
        {
          [v12 removeObject:v22];
        }

        else
        {
          [*(selfCopy + 17) addObject:v22];
        }
      }

      else
      {
        v28 = [[FILocalAppContainerNode alloc] initWithAppContainerInfo:v14];
        v29 = v28;
        if (v28)
        {
          if (*(v14 + 40) == 1)
          {
            nodeRef2 = [(FINode *)v28 nodeRef];
            v32 = TNode::NodeFromNodeRef(nodeRef2, v31);
            TNodePtr::TNodePtr(buf, v32);
            [v43 addObject:v29];
            TNodeEvent::CreateNodeEvent(3, buf, 0, &v62);
            TNodeEventPtrs::AddEvent(v60, &v59, &v62.fFINode);
            TNodeEventPtr::~TNodeEventPtr(&v62.fFINode);
          }

          else
          {
            [*(selfCopy + 17) addObject:v28];
          }
        }
      }

      v14 += 48;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = v12;
    v34 = [v33 countByEnumeratingWithState:&v45 objects:v65 count:16];
    if (v34)
    {
      v35 = *v46;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v45 + 1) + 8 * i);
          TNodePtr::TNodePtr(&v62, [v37 asTNode]);
          TNodeEvent::CreateNodeEvent(4, &v62.fFINode, 0, buf);
          TNodeEventPtrs::AddEvent(v60, &v59, buf);
          TNodeEventPtr::~TNodeEventPtr(buf);

          v38 = LogObj(7);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            displayName = [v37 displayName];
            *buf = 138412290;
            *&buf[4] = displayName;
            _os_log_impl(&dword_1E5674000, v38, OS_LOG_TYPE_DEBUG, "Local storage node removed %@", buf, 0xCu);
          }
        }

        v34 = [v33 countByEnumeratingWithState:&v45 objects:v65 count:16];
      }

      while (v34);
    }

    objc_storeStrong(selfCopy + 16, v43);
    if (v41)
    {
      TNodeEvent::CreateNodeEvent(20, &v59.fFINode, 0, buf);
      TNodeEventPtrs::AddEvent(v60, &v59, buf);
      TNodeEventPtr::~TNodeEventPtr(buf);
    }

    std::mutex::unlock((selfCopy + 152));
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);

    *buf = &v49;
    std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](buf);

    TNode::StPopulating::~StPopulating(v53);
    StDefer<[FILocalAppContainerCollection populate]::$_1>::~StDefer(&v56);

    *buf = v60;
    std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  return (v42 & 1) == 0;
}

- (id)populate
{
  v2 = LogObj(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E5674000, v2, OS_LOG_TYPE_INFO, "AppCollection sync finished", v5, 2u);
  }

  atomic_store(1u, *self + 105);
  atomic_store(0, *self + 104);
  if (*(self + 16) == 1)
  {
    [*(*self + 15) setDelegate:?];
    v3 = TNodeFromFINode(self[1]);
    TNode::HandleSyncCompleted(v3, 0x800000);
  }

  else
  {
    TNodeEventPtrs::SendNotifications(self[3]);
  }

  return self;
}

- (BOOL)isPopulated
{
  asTNode = [(FIDSNode *)self asTNode];

  return TNode::IsPopulated(asTNode);
}

- (id)iteratorWithOptions:(unsigned int)options
{
  v3 = *&options;
  isPopulated = [(FILocalAppContainerCollection *)self isPopulated];
  if ((~v3 & 0x1040000) != 0 || !isPopulated)
  {
    v6 = pthread_main_np();
    v8 = (v3 & 0x40000) == 0 && v6 != 0;
    [(FILocalAppContainerCollection *)self synchronizeWithOptions:v3 async:v8];
  }

  selfCopy = self;
  std::mutex::lock((selfCopy + 152));
  v10 = Copy<NSMutableArray<FILocalAppContainerNode *>>(*(selfCopy + 16));
  std::mutex::unlock((selfCopy + 152));

  v11 = [[FIChildrenIterator alloc] initWithChildren:v10 fullyPopulated:[(FILocalAppContainerCollection *)selfCopy isPopulated] options:v3];

  return v11;
}

- (id)nodesForSizing
{
  std::mutex::lock((self + 152));
  v3 = Copy<NSMutableArray<FILocalAppContainerNode *>>(*(self + 16));
  std::mutex::unlock((self + 152));

  return v3;
}

- (void)synchronizeWithOptions:(unsigned int)options async:(BOOL)async
{
  if (async)
  {
    v6 = atomic_load(self + 104);
    v7 = LogObj(7);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_DEBUG, "AppCollection sync ignored while still populating", buf, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_DEBUG, "AppCollection sync queued", buf, 2u);
      }

      TNode::GetVolumeInfo(buf, [(FIDSNode *)self asTNode]);
      v7 = TFSVolumeInfo::GetSynchingGCDQueue(*buf);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3321888768;
      v13[2] = __62__FILocalAppContainerCollection_synchronizeWithOptions_async___block_invoke;
      v13[3] = &__block_descriptor_48_ea8_32c75_ZTSKZ62__FILocalAppContainerCollection_synchronizeWithOptions_async__E3__4_e5_v8__0l;
      selfCopy = self;
      v14 = selfCopy;
      optionsCopy = options;
      dispatch_async(v7, v13);
    }
  }

  else if (![(FILocalAppContainerCollection *)self populate])
  {
    do
    {
      v9 = 0;
      atomic_compare_exchange_strong_explicit(self + 104, &v9, 1u, memory_order_release, memory_order_relaxed);
    }

    while (v9);
    std::mutex::lock((self + 152));
    v10 = *(self + 18);
    v11 = +[FINode protectedAppIdentifiers];
    LOBYTE(v10) = [v10 isEqual:v11];

    std::mutex::unlock((self + 152));
    atomic_store(0, self + 104);
    if ((v10 & 1) == 0)
    {

      [(FILocalAppContainerCollection *)self populate];
    }
  }
}

- (id).cxx_construct
{
  *(self + 104) = 0;
  *(self + 105) = 0;
  *(self + 14) = 0;
  *(self + 19) = 850045863;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 26) = 0;
  return self;
}

@end