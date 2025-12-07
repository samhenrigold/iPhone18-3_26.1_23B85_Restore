@interface SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion
- (SBSHomeScreenService)service;
- (SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion)initWithObserver:(id)observer service:(id)service;
- (SBSHomeScreenServiceLayoutAvailableObserver)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion

- (SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion)initWithObserver:(id)observer service:(id)service
{
  observerCopy = observer;
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion;
  v8 = [(SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion *)&v11 init];
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
  isInvalidated = [(SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion *)self isInvalidated];
  if ((isInvalidated & 1) == 0)
  {
    v4 = SBLogCommon(isInvalidated);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      NSLog(&cfstr_ShouldBeInvali.isa);
    }
  }

  [(SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion *)self invalidate];
  v6.receiver = self;
  v6.super_class = SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion;
  [(SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion *)&v6 dealloc];
}

- (void)invalidate
{
  if (![(SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion *)self isInvalidated])
  {
    service = [(SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion *)self service];
    [service removeHomeScreenLayoutAvailabilityObservationAssertion:self];
    [(SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion *)self setService:0];
    [(SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion *)self setInvalidated:1];
  }
}

- (SBSHomeScreenServiceLayoutAvailableObserver)observer
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