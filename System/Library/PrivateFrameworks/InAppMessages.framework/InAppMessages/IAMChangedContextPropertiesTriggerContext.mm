@interface IAMChangedContextPropertiesTriggerContext
- (BOOL)satisfiesPresentationTrigger:(id)trigger;
- (IAMChangedContextPropertiesTriggerContext)initWithContextPropertyNames:(id)names bundleIdentifier:(id)identifier;
@end

@implementation IAMChangedContextPropertiesTriggerContext

- (IAMChangedContextPropertiesTriggerContext)initWithContextPropertyNames:(id)names bundleIdentifier:(id)identifier
{
  namesCopy = names;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = IAMChangedContextPropertiesTriggerContext;
  v8 = [(IAMChangedContextPropertiesTriggerContext *)&v14 init];
  if (v8)
  {
    v9 = [namesCopy copy];
    contextPropertyNames = v8->_contextPropertyNames;
    v8->_contextPropertyNames = v9;

    v11 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v11;
  }

  return v8;
}

- (BOOL)satisfiesPresentationTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ([triggerCopy hasKind] && objc_msgSend(triggerCopy, "kind") != 1 || (objc_msgSend(triggerCopy, "bundleIdentifier"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(triggerCopy, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", self->_bundleIdentifier), v7, v6, !v8))
  {
    v11 = 0;
  }

  else
  {
    contextPropertyNames = self->_contextPropertyNames;
    triggerName = [triggerCopy triggerName];
    v11 = [(NSSet *)contextPropertyNames containsObject:triggerName];
  }

  return v11;
}

@end