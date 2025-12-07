@interface IAMReceivedEventTriggerContext
- (BOOL)satisfiesPresentationTrigger:(id)trigger;
- (IAMReceivedEventTriggerContext)initWithEvent:(id)event bundleIdentifier:(id)identifier;
@end

@implementation IAMReceivedEventTriggerContext

- (IAMReceivedEventTriggerContext)initWithEvent:(id)event bundleIdentifier:(id)identifier
{
  eventCopy = event;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = IAMReceivedEventTriggerContext;
  v9 = [(IAMReceivedEventTriggerContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, event);
    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;
  }

  return v10;
}

- (BOOL)satisfiesPresentationTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ([triggerCopy hasKind] && objc_msgSend(triggerCopy, "kind") || (objc_msgSend(triggerCopy, "bundleIdentifier"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(triggerCopy, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", self->_bundleIdentifier), v7, v6, !v8))
  {
    v11 = 0;
  }

  else
  {
    event = self->_event;
    triggerName = [triggerCopy triggerName];
    v11 = [(IAMEventProtocol *)event matchesWithKey:triggerName];
  }

  return v11;
}

@end