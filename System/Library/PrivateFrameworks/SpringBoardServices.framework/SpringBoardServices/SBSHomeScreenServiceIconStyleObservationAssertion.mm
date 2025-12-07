@interface SBSHomeScreenServiceIconStyleObservationAssertion
- (SBSHomeScreenService)service;
- (SBSHomeScreenServiceIconStyleObservationAssertion)initWithObserver:(id)observer service:(id)service;
- (SBSHomeScreenServiceIconStyleObserver)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSHomeScreenServiceIconStyleObservationAssertion

- (void)invalidate
{
  if (![(SBSHomeScreenServiceIconStyleObservationAssertion *)self isInvalidated])
  {
    service = [(SBSHomeScreenServiceIconStyleObservationAssertion *)self service];
    [service removeIconStyleObservationAssertion:self];
    [(SBSHomeScreenServiceIconStyleObservationAssertion *)self setService:0];
    [(SBSHomeScreenServiceIconStyleObservationAssertion *)self setInvalidated:1];
  }
}

- (SBSHomeScreenService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (SBSHomeScreenServiceIconStyleObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)dealloc
{
  isInvalidated = [(SBSHomeScreenServiceIconStyleObservationAssertion *)self isInvalidated];
  if ((isInvalidated & 1) == 0)
  {
    v4 = SBLogCommon(isInvalidated);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      NSLog(&cfstr_ShouldBeInvali.isa);
    }
  }

  [(SBSHomeScreenServiceIconStyleObservationAssertion *)self invalidate];
  v6.receiver = self;
  v6.super_class = SBSHomeScreenServiceIconStyleObservationAssertion;
  [(SBSHomeScreenServiceIconStyleObservationAssertion *)&v6 dealloc];
}

- (SBSHomeScreenServiceIconStyleObservationAssertion)initWithObserver:(id)observer service:(id)service
{
  observerCopy = observer;
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = SBSHomeScreenServiceIconStyleObservationAssertion;
  v8 = [(SBSHomeScreenServiceIconStyleObservationAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeWeak(&v9->_service, serviceCopy);
  }

  return v9;
}

@end