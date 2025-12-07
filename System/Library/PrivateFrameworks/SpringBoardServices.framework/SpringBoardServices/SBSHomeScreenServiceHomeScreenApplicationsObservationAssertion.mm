@interface SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion
- (SBSHomeScreenService)service;
- (SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion)initWithObserver:(id)observer service:(id)service;
- (SBSHomeScreenServiceHomeScreenApplicationsObserver)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion

- (SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion)initWithObserver:(id)observer service:(id)service
{
  observerCopy = observer;
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion;
  v8 = [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeWeak(&v9->_service, serviceCopy);
  }

  return v9;
}

- (void)dealloc
{
  isInvalidated = [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self isInvalidated];
  if ((isInvalidated & 1) == 0)
  {
    v4 = SBLogCommon(isInvalidated);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      NSLog(&cfstr_ShouldBeInvali.isa);
    }
  }

  [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self invalidate];
  v6.receiver = self;
  v6.super_class = SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion;
  [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)&v6 dealloc];
}

- (void)invalidate
{
  if (![(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self isInvalidated])
  {
    service = [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self service];
    [service removeHomeScreenApplicationsObservationAssertion:self];
    [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self setService:0];
    [(SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion *)self setInvalidated:1];
  }
}

- (SBSHomeScreenServiceHomeScreenApplicationsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (SBSHomeScreenService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end