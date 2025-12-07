@interface FINodeObserver
+ (id)observerForFINode:(id)node withObserver:(id)observer;
+ (id)observerForProxy:(id)proxy subjectNode:(id)node;
+ (id)propertyName:(unsigned int)name;
- (id)debugDescription;
- (void)dealloc;
- (void)startObserving:(unsigned int)observing;
- (void)stopObserving:(unsigned int)observing;
@end

@implementation FINodeObserver

+ (id)observerForFINode:(id)node withObserver:(id)observer
{
  nodeCopy = node;
  observerCopy = observer;
  {
    {
      location[1] = MEMORY[0x1E69E9820];
      location[2] = 3321888768;
      location[3] = __49__FINodeObserver_observerForFINode_withObserver___block_invoke;
      location[4] = &__block_descriptor_33_ea8_32c62_ZTSKZ49__FINodeObserver_observerForFINode_withObserver__E3__1_e27_v16__0__OpaqueEventQueue__8l;
      +[FINodeObserver observerForFINode:withObserver:]::sNodeEventQueue = NodeNewEventQueueWithTickleBlock();
    }
  }

  objc_initWeak(location, nodeCopy);
  objc_initWeak(&from, observerCopy);
  objc_storeStrong(objc_alloc_init(FINodeObserver) + 1, node);
  v8 = +[FINodeObserver observerForFINode:withObserver:]::sNodeEventQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __49__FINodeObserver_observerForFINode_withObserver___block_invoke_27;
  v12[3] = &__block_descriptor_48_ea8_32c62_ZTSKZ49__FINodeObserver_observerForFINode_withObserver__E3__2_e21_v16__0__FINodeEvent_8l;
  objc_copyWeak(&to, &from);
  objc_copyWeak(&v11, location);
  objc_copyWeak(&v13, &to);
  objc_copyWeak(&v14, &v11);
  NodeNewChangeHandlerOnQueue(v8, v12, MEMORY[0x1E69E96A0], &stru_1F5F42870);
}

void __49__FINodeObserver_observerForFINode_withObserver___block_invoke_27(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_cast<FIDSNode,FINode * {__strong}>(WeakRetained);

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (v4 && v5)
  {
    [v4 dispatchEvent:v7 forObserver:v5];
  }
}

+ (id)observerForProxy:(id)proxy subjectNode:(id)node
{
  proxyCopy = proxy;
  nodeCopy = node;
  {
    {
      location[1] = MEMORY[0x1E69E9820];
      location[2] = 3321888768;
      location[3] = __47__FINodeObserver_observerForProxy_subjectNode___block_invoke;
      location[4] = &__block_descriptor_33_ea8_32c60_ZTSKZ47__FINodeObserver_observerForProxy_subjectNode__E3__3_e27_v16__0__OpaqueEventQueue__8l;
      +[FINodeObserver observerForProxy:subjectNode:]::sNodeEventQueue = NodeNewEventQueueWithTickleBlock();
    }
  }

  objc_initWeak(location, proxyCopy);
  objc_storeStrong(objc_alloc_init(FINodeObserver) + 1, node);
  v7 = +[FINodeObserver observerForProxy:subjectNode:]::sNodeEventQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = __47__FINodeObserver_observerForProxy_subjectNode___block_invoke_33;
  v10[3] = &__block_descriptor_40_ea8_32c60_ZTSKZ47__FINodeObserver_observerForProxy_subjectNode__E3__4_e21_v16__0__FINodeEvent_8l;
  objc_copyWeak(&v9, location);
  objc_copyWeak(&v11, &v9);
  NodeNewChangeHandlerOnQueue(v7, v10, MEMORY[0x1E69E96A0], &stru_1F5F42870);
}

void __47__FINodeObserver_observerForProxy_subjectNode___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispatchNodeEvent:v3];
}

- (void)startObserving:(unsigned int)observing
{
  v3 = *&observing;
  v24 = *MEMORY[0x1E69E9840];
  v5 = LogObj(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FINode *)self->_observedNode debugDescription];
    v7 = ShortDescription(v3);
    v16 = 138413058;
    selfCopy = self;
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    v22 = 1024;
    v23 = v3;
    _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_DEFAULT, "[%@] startObserving %{public}@: '%{public}@' (0x%x)", &v16, 0x26u);
  }

  v8 = objc_cast<FIDSNode,FINode * {__strong}>(self->_observedNode);
  v9 = v8;
  if (v8)
  {
    [v8 startObserving:v3 with:self->_notifier];
    if ((v3 & 0x10) != 0 && ![(FINode *)self->_observedNode isFolder])
    {
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      fileParent = [(FINode *)self->_observedNode fileParent];
      if (fileParent || selfCopy2->_parentObserver)
      {
        parentUbiquityCount = selfCopy2->_parentUbiquityCount;
        selfCopy2->_parentUbiquityCount = parentUbiquityCount + 1;
        if (!parentUbiquityCount)
        {
          v13 = objc_alloc_init(_FINullObserver);
          v14 = [FINodeObserver observerForFINode:fileParent withObserver:v13];
          parentObserver = selfCopy2->_parentObserver;
          selfCopy2->_parentObserver = v14;

          [(FINodeObserver *)selfCopy2->_parentObserver startObserving:18];
        }
      }

      objc_sync_exit(selfCopy2);
    }
  }
}

- (void)stopObserving:(unsigned int)observing
{
  v3 = *&observing;
  v22 = *MEMORY[0x1E69E9840];
  v5 = LogObj(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FINode *)self->_observedNode debugDescription];
    v7 = ShortDescription(v3);
    v14 = 138413058;
    selfCopy = self;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 1024;
    v21 = v3;
    _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_DEFAULT, "[%@] stopObserving %{public}@: '%{public}@' (0x%x)", &v14, 0x26u);
  }

  v8 = objc_cast<FIDSNode,FINode * {__strong}>(self->_observedNode);
  v9 = v8;
  if (v8)
  {
    [v8 stopObserving:v3 with:self->_notifier];
    if ((v3 & 0x10) != 0)
    {
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      parentObserver = selfCopy2->_parentObserver;
      if (parentObserver)
      {
        v12 = selfCopy2->_parentUbiquityCount - 1;
        selfCopy2->_parentUbiquityCount = v12;
        if (!v12)
        {
          [(FINodeObserver *)parentObserver stopObserving:18];
          v13 = selfCopy2->_parentObserver;
          selfCopy2->_parentObserver = 0;
        }
      }

      objc_sync_exit(selfCopy2);
    }
  }
}

+ (id)propertyName:(unsigned int)name
{
  PropertyToString(name, &v5);
  v3 = v5;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5);

  return v3;
}

- (void)dealloc
{
  NodeDisposeNotifier(self->_notifier, a2);
  v3.receiver = self;
  v3.super_class = FINodeObserver;
  [(FINodeObserver *)&v3 dealloc];
}

- (id)debugDescription
{
  v14.receiver = self;
  v14.super_class = FINodeObserver;
  v3 = [(FINodeObserver *)&v14 debugDescription];
  v15.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v15, v3);

  v4 = *MEMORY[0x1E695E480];
  v5 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], " ", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v18.fString.fRef = v5;
  v13.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v13, v5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
  fRef = v15.fString.fRef;
  v16.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  MutableCopy = CFStringCreateMutableCopy(v4, 0, fRef);
  CFRelease(&stru_1F5F42870);
  v16.fString.fRef = MutableCopy;
  TString::Append(&v16, &v13);
  v8 = [(FINode *)self->_observedNode debugDescription];
  v18.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v18, v8);

  v9 = v16.fString.fRef;
  v17 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v10 = CFStringCreateMutableCopy(v4, 0, v9);
  CFRelease(&stru_1F5F42870);
  v17 = v10;
  TString::Append(&v17, &v18);
  v11 = v17;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);

  return v11;
}

@end