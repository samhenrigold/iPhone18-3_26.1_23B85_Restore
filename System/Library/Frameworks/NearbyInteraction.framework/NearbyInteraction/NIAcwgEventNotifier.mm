@interface NIAcwgEventNotifier
- (NIAcwgEventNotifier)initWithParentSession:(id)session;
- (void)notifyLockStatusChanged:(unsigned __int16)changed;
- (void)notifyUrskCreated:(unsigned int)created;
@end

@implementation NIAcwgEventNotifier

- (NIAcwgEventNotifier)initWithParentSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = NIAcwgEventNotifier;
  v5 = [(NIAcwgEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, sessionCopy);
  }

  return v6;
}

- (void)notifyUrskCreated:(unsigned int)created
{
  v3 = *&created;
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained prefetchAcwgUrsk:v3];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2685 description:@"Parent session is nil"];
  }
}

- (void)notifyLockStatusChanged:(unsigned __int16)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processUpdatedLockState:changedCopy];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2695 description:@"Parent session is nil"];
  }
}

@end