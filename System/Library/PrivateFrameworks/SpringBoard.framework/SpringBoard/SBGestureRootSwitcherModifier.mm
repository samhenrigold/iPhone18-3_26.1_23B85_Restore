@interface SBGestureRootSwitcherModifier
- (SBGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleEvent:(id)event;
- (id)handleGestureEvent:(id)event;
- (id)handleRemovalEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
- (int64_t)gestureType;
@end

@implementation SBGestureRootSwitcherModifier

- (SBGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = SBGestureRootSwitcherModifier;
  result = [(SBSwitcherModifier *)&v5 init];
  if (result)
  {
    result->_currentEnvironmentMode = mode;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBGestureRootSwitcherModifier;
  v4 = [(SBChainableModifier *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  succinctDescription = [selectedAppLayout succinctDescription];
  v7 = [v4 appendObject:succinctDescription withName:@"selectedAppLayout"];

  v8 = SBStringForUnlockedEnvironmentMode(self->_currentEnvironmentMode);
  v9 = [v4 appendObject:v8 withName:@"currentEnvironmentMode"];

  return v4;
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  transitionModifier = [(SBGestureRootSwitcherModifier *)self transitionModifier];
  transitionModifierBeforeHandlingEvent = self->_transitionModifierBeforeHandlingEvent;
  self->_transitionModifierBeforeHandlingEvent = transitionModifier;

  gestureModifier = [(SBGestureRootSwitcherModifier *)self gestureModifier];
  gestureModifierBeforeHandlingEvent = self->_gestureModifierBeforeHandlingEvent;
  self->_gestureModifierBeforeHandlingEvent = gestureModifier;

  v13.receiver = self;
  v13.super_class = SBGestureRootSwitcherModifier;
  v9 = [(SBChainableModifier *)&v13 handleEvent:eventCopy];

  v10 = self->_transitionModifierBeforeHandlingEvent;
  self->_transitionModifierBeforeHandlingEvent = 0;

  v11 = self->_gestureModifierBeforeHandlingEvent;
  self->_gestureModifierBeforeHandlingEvent = 0;

  return v9;
}

- (id)handleTransitionEvent:(id)event
{
  v35 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v28.receiver = self;
  v28.super_class = SBGestureRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v28 handleTransitionEvent:eventCopy];
  if ([eventCopy phase]== 1 && [eventCopy isGestureInitiated])
  {
    gestureModifierBeforeHandlingEvent = self->_gestureModifierBeforeHandlingEvent;
    if (!gestureModifierBeforeHandlingEvent)
    {
      canTransitionWithoutGestureModifier = [(SBGestureRootSwitcherModifier *)self canTransitionWithoutGestureModifier];
      if (!canTransitionWithoutGestureModifier)
      {
        v8 = SBLogAppSwitcher(canTransitionWithoutGestureModifier);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_13;
        }

        v27 = objc_opt_class();
        v14 = NSStringFromClass(v27);
        *buf = 138412546;
        v30 = v14;
        v31 = 2112;
        v32 = eventCopy;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "[%@]: No gesture modifier to handle gesture initiated transition event %@", buf, 0x16u);
        goto LABEL_12;
      }

      gestureModifierBeforeHandlingEvent = self->_gestureModifierBeforeHandlingEvent;
    }

    v8 = [(SBGestureRootSwitcherModifier *)self transitionChildModifierForMainTransitionEvent:eventCopy activeGestureModifier:gestureModifierBeforeHandlingEvent];
    if (v8)
    {
      [(SBChainableModifier *)self addChildModifier:v8 atLevel:0 key:@"Transition"];
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 stringWithFormat:@"%@ handling gesture initiated transition.", v11];
      [eventCopy handleWithReason:v12];

      v14 = SBLogAppSwitcher(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138412802;
        v30 = v16;
        v31 = 2112;
        v32 = v8;
        v33 = 2112;
        v34 = eventCopy;
        v17 = "[%@]: Adding transition modifier %@ for event %@";
        v18 = v14;
        v19 = 32;
LABEL_11:
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
      }
    }

    else
    {
      v14 = SBLogAppSwitcher(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = objc_opt_class();
        v16 = NSStringFromClass(v20);
        *buf = 138412546;
        v30 = v16;
        v31 = 2112;
        v32 = eventCopy;
        v17 = "[%@]: No transition modifier to handle transition event %@";
        v18 = v14;
        v19 = 22;
        goto LABEL_11;
      }
    }

LABEL_12:

LABEL_13:
  }

  if ([eventCopy phase]== 1)
  {
    toEnvironmentMode = [eventCopy toEnvironmentMode];
    self->_currentEnvironmentMode = toEnvironmentMode;
    v22 = SBLogAppSwitcher(toEnvironmentMode);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = SBStringForUnlockedEnvironmentMode(self->_currentEnvironmentMode);
      *buf = 138412546;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "[%@] Updating our notion of starting environment to %@", buf, 0x16u);
    }
  }

  return v5;
}

- (id)handleGestureEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = SBGestureRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v15 handleGestureEvent:eventCopy];
  if ([eventCopy phase] == 1)
  {
    gestureType = [eventCopy gestureType];
    if (gestureType == -[SBGestureRootSwitcherModifier gestureType](self, "gestureType") && (![eventCopy isIndirectPanGestureEvent] || objc_msgSend(eventCopy, "gestureType") != 8))
    {
      selectedAppLayout = [eventCopy selectedAppLayout];
      selectedAppLayout = self->_selectedAppLayout;
      self->_selectedAppLayout = selectedAppLayout;

      v9 = [(SBGestureRootSwitcherModifier *)self gestureChildModifierForGestureEvent:eventCopy activeTransitionModifier:self->_transitionModifierBeforeHandlingEvent];
      if (v9)
      {
        v10 = SBLogAppSwitcher([(SBChainableModifier *)self addChildModifier:v9 atLevel:1 key:@"Gesture"]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = 138412802;
          v17 = v12;
          v18 = 2112;
          v19 = v9;
          v20 = 2112;
          v21 = eventCopy;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "[%@]: Adding gesture modifier %@ for event %@", buf, 0x20u);
        }

        if (self->_transitionModifierBeforeHandlingEvent)
        {
          v13 = @"Continuing gesture";
        }

        else
        {
          v13 = @"Starting new gesture";
        }

        [eventCopy handleWithReason:v13];
      }
    }
  }

  return v5;
}

- (id)handleRemovalEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBGestureRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v9 handleRemovalEvent:eventCopy];
  appLayout = [eventCopy appLayout];

  if ([(SBAppLayout *)self->_selectedAppLayout isEqual:appLayout])
  {
    selectedAppLayout = self->_selectedAppLayout;
    self->_selectedAppLayout = 0;
  }

  return v5;
}

- (int64_t)gestureType
{
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_6(v2);
  return 0;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  v4 = objc_opt_class();
  OUTLINED_FUNCTION_6(v4);
  return 0;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  v4 = objc_opt_class();
  OUTLINED_FUNCTION_6(v4);
  return 0;
}

@end