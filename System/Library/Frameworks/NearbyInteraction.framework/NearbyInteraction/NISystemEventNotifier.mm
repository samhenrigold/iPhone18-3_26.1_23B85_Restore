@interface NISystemEventNotifier
- (NISystemEventNotifier)initWithParentSession:(id)session;
- (void)_notifyResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationType:(Class)type;
- (void)notifyPassiveAccessIntent:(unsigned int)intent;
@end

@implementation NISystemEventNotifier

- (NISystemEventNotifier)initWithParentSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = NISystemEventNotifier;
  v5 = [(NISystemEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, sessionCopy);
  }

  return v6;
}

- (void)notifyPassiveAccessIntent:(unsigned int)intent
{
  v3 = *&intent;
  v16[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v16[0] = &unk_1F38D79C8;
    v15[0] = @"SystemEventDictKey_EventType";
    v15[1] = @"SystemEventDictKey_PassiveAccessIntentOptions";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v16[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__NISystemEventNotifier_notifyPassiveAccessIntent___block_invoke;
    block[3] = &unk_1E7F13A70;
    v13 = WeakRetained;
    v14 = v8;
    v10 = v8;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:3097 description:@"Parent session is nil"];
  }
}

void __51__NISystemEventNotifier_notifyPassiveAccessIntent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processSystemEvent:*(a1 + 40) reply:&__block_literal_global_1673];
}

- (void)_notifyResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationType:(Class)type
{
  exceededCopy = exceeded;
  v19[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v19[0] = &unk_1F38D79E0;
    v18[0] = @"SystemEventDictKey_EventType";
    v18[1] = @"SystemEventDictKey_ResourceUsageLimitExceededValue";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:exceededCopy];
    v19[1] = v9;
    v18[2] = @"SystemEventDictKey_ConfigurationType";
    v10 = NSStringFromClass(type);
    v19[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__NISystemEventNotifier__notifyResourceUsageLimitExceeded_forSessionConfigurationType___block_invoke;
    block[3] = &unk_1E7F13A70;
    v16 = WeakRetained;
    v17 = v11;
    v13 = v11;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:3113 description:@"Parent session is nil"];
  }
}

void __87__NISystemEventNotifier__notifyResourceUsageLimitExceeded_forSessionConfigurationType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processSystemEvent:*(a1 + 40) reply:&__block_literal_global_1675];
}

@end