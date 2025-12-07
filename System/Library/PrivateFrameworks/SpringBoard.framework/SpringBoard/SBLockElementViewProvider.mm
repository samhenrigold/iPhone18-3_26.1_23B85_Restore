@interface SBLockElementViewProvider
+ (BOOL)deviceSupportsElement;
+ (void)registerElementForRecording;
- (BOOL)_activelyWantsMatching;
- (BOOL)_canApplyRequestedState:(unint64_t)state;
- (BOOL)_isSecurelyRenderingInJindo;
- (BOOL)_treatCustomAsLarge;
- (BOOL)_treatsAsAmbientSearching;
- (BOOL)_useSecureElementHostStates;
- (BOOL)isIndicatorVisibilityRequired;
- (CGSize)_elementSizeLeading:(BOOL)leading forLayoutMode:(int64_t)mode;
- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode;
- (NSArray)recordableConfigurations;
- (NSDictionary)preferredComponentStates;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (SAElementHosting)elementHost;
- (SAUILayoutHosting)layoutHost;
- (SBBiometricAuthenticationIndicatorHost)indicatorHost;
- (SBLockElementViewProvider)init;
- (SBSecureFlipBookElementHost)secureElementHost;
- (id)leadingLock;
- (id)trailingContentView;
- (int64_t)_resolvedEventForState:(int64_t)state;
- (int64_t)elementOrientation;
- (int64_t)preferredLayoutMode;
- (int64_t)systemApertureCustomLayout;
- (unint64_t)_nextSecureStateForState:(unint64_t)state;
- (unint64_t)_nextSecureStateForState:(unint64_t)state from:(unint64_t)from;
- (unint64_t)_secureStateContainsSecureFrames:(unint64_t)frames;
- (void)_deferSecureState:(unint64_t)state completion:(id)completion;
- (void)_forceSleepSecureState;
- (void)_reconcileAppliedSecureState;
- (void)_reconcileDeferredSecureState;
- (void)_reconcileNotifiedSecureState;
- (void)_reconcileRequestedSecureState;
- (void)_requestSecureState:(unint64_t)state completion:(id)completion;
- (void)_setAcquiring:(BOOL)acquiring;
- (void)_toggleUnlockMode;
- (void)_updateAllowsBioUnlock;
- (void)_updateRequiredPriorityAssertion;
- (void)_updateTrailingGlyph;
- (void)_updateTrailingPackageVisibility;
- (void)_updateUnlockModeForState;
- (void)_updateVisibilityAssertion;
- (void)biometricResource:(id)resource matchingEnabledDidChange:(BOOL)change;
- (void)biometricResource:(id)resource observeEvent:(unint64_t)event;
- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator;
- (void)handleBiometricEvent:(int64_t)event;
- (void)init;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews;
- (void)recordingModeChanged;
- (void)setActiveComponentStates:(id)states;
- (void)setAppliedComponentStates:(id)states;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)setBloomed:(BOOL)bloomed;
- (void)setEmpty:(BOOL)empty;
- (void)setIsForCapture:(BOOL)capture;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (void)shake;
- (void)systemApertureElementAssertionAcquired;
@end

@implementation SBLockElementViewProvider

- (int64_t)elementOrientation
{
  obstructionEdge = [(SBLockElementViewProvider *)self obstructionEdge];
  if (obstructionEdge > 3)
  {
    return 1;
  }

  else
  {
    return qword_21F8A5AC8[obstructionEdge];
  }
}

- (void)_updateUnlockModeForState
{
  _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
  v4 = _requestedSecureState;
  if (_requestedSecureState - 5 <= 4)
  {
    v4 = qword_21F8A5AA0[_requestedSecureState - 5];
  }

  if (self->_isInBloomMode && [(SBLockElementViewProvider *)self _activelyWantsMatching])
  {
    if (self->_isAcquiring)
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }
  }

  [(SBLockElementViewProvider *)self _requestSecureState:v4];
}

- (BOOL)_treatCustomAsLarge
{
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];

  return [(SBLockElementViewProvider *)self _secureStateIsLarge:_appliedSecureState];
}

- (int64_t)systemApertureCustomLayout
{
  if ([(SBLockElementViewProvider *)self _isShowingInLandscape])
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_activelyWantsMatching
{
  if (![(SBLockElementViewProvider *)self _allowsBiometricUnlock]|| ![(SBUIBiometricResource *)self->_sharedResource isMatchingAllowed]|| ([(SBUIBiometricResource *)self->_sharedResource isMatchingEnabled]& 1) == 0 && !self->_isAuthenticated)
  {
    return 0;
  }

  sharedResource = self->_sharedResource;

  return [(SBUIBiometricResource *)sharedResource isPearlDetectEnabled];
}

- (BOOL)_useSecureElementHostStates
{
  secureElementHost = [(SBLockElementViewProvider *)self secureElementHost];
  if (secureElementHost)
  {
    v4 = !self->_isForCapture;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SBSecureFlipBookElementHost)secureElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_secureElementHost);

  return WeakRetained;
}

- (SBBiometricAuthenticationIndicatorHost)indicatorHost
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorHost);

  return WeakRetained;
}

- (void)_updateTrailingPackageVisibility
{
  trailingContentView = self->_trailingContentView;
  if (self->_isForCapture)
  {
    isEmpty = 0;
  }

  else if ([(SBLockElementViewProvider *)self _allowsBiometricUnlock])
  {
    isEmpty = self->_isEmpty;
  }

  else
  {
    isEmpty = 1;
  }

  [(SBLockElementTrailingContentView *)trailingContentView setHidden:isEmpty];
}

- (int64_t)preferredLayoutMode
{
  [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
  if (self->_alwaysUseCustomLayoutMode)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  if (!self->_isEmpty)
  {
    if ([(SBLockElementViewProvider *)self _appliedSecureState]|| ![(SBLockElementViewProvider *)self _notifiedSecureState])
    {
      _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
    }

    else
    {
      _appliedSecureState = [(SBLockElementViewProvider *)self _notifiedSecureState];
    }

    if (_appliedSecureState - 5 >= 5)
    {
      if (!_appliedSecureState)
      {
        if (self->_isForCapture)
        {
          return 3;
        }

        else
        {
          return -1;
        }
      }
    }

    else
    {
      return 3;
    }
  }

  return v3;
}

- (void)_updateVisibilityAssertion
{
  indicatorHost = [(SBLockElementViewProvider *)self indicatorHost];
  [indicatorHost preferredVisibilityStateDidInvalidateForSpecifier:self];
}

- (void)_reconcileRequestedSecureState
{
  v60 = *MEMORY[0x277D85DE8];
  if (self->_isElementRegistered)
  {
    _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
    if (_requestedSecureState != [(SBLockElementViewProvider *)self _appliedSecureState])
    {
      _notifiedSecureState = [(SBLockElementViewProvider *)self _notifiedSecureState];
      _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
      if (_notifiedSecureState == _appliedSecureState)
      {
        _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
        _appliedSecureState2 = [(SBLockElementViewProvider *)self _appliedSecureState];
        if (_currentSecureState == _appliedSecureState2)
        {
          platformElementHost = [(SBSystemApertureProvidedContentElement *)self platformElementHost];
          v9 = SBLockElementFlipBookStateLocked;
          v10 = &SBPearlElementFlipBookStateResting;
          v11 = SBPearlElementFlipBookStateResting;
          v12 = [(SBLockElementViewProvider *)self _nextSecureStateForState:[(SBLockElementViewProvider *)self _requestedSecureState]];
          v13 = v12;
          v14 = -1;
          v15 = 1;
          if (v12 <= 4)
          {
            if (v12 > 1)
            {
              if (v12 != 2)
              {
                if (v12 == 3)
                {
                  v45 = 0;
                  v16 = &SBLockElementFlipBookStateUnlocked;
                  v15 = 2;
                }

                else
                {
                  v45 = 1;
                  v16 = &SBLockElementFlipBookStateError;
                  v15 = 3;
                }

                goto LABEL_52;
              }

              v45 = 0;
              v16 = &SBLockElementFlipBookStateUnlockedSecure;
              goto LABEL_47;
            }

            if (v12)
            {
              if (v12 == 1)
              {
                v45 = 0;
                v16 = &SBLockElementFlipBookStateLocked;
LABEL_47:
                v15 = v12;
                goto LABEL_52;
              }

LABEL_70:
              v45 = 0;
              goto LABEL_53;
            }

            v45 = 0;
            v16 = &SBLockElementFlipBookStateSleep;
LABEL_52:
            v30 = *v16;

            v31 = *v10;
            v11 = v31;
            v9 = v30;
LABEL_53:
            v32 = SBLogSystemApertureLockElement(v12);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              _appliedSecureState3 = [(SBLockElementViewProvider *)self _appliedSecureState];
              if (_appliedSecureState3 - 1 > 8)
              {
                v34 = @"Sleep";
              }

              else
              {
                v34 = off_2783ABF90[_appliedSecureState3 - 1];
              }

              if (v13 - 1 > 8)
              {
                v35 = @"Sleep";
              }

              else
              {
                v35 = off_2783ABF90[v13 - 1];
              }

              *buf = 138412546;
              v55 = v34;
              v56 = 2112;
              v57 = v35;
              _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "Applied requested state: %@ -> %@", buf, 0x16u);
            }

            self->_notifiedSecureState = v13;
            if ([(SBLockElementViewProvider *)self _useSecureElementHostStates])
            {
              objc_storeStrong(&self->_leadingViewFlipBookState, v9);
              objc_storeStrong(&self->_trailingViewFlipBookState, v11);
              v37 = SBLogSystemApertureLockElement(v36);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                leadingViewFlipBookState = self->_leadingViewFlipBookState;
                trailingViewFlipBookState = self->_trailingViewFlipBookState;
                *buf = 138412546;
                v55 = leadingViewFlipBookState;
                v56 = 2112;
                v57 = trailingViewFlipBookState;
                _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "Requesting Jindo-managed state: leading: %@, trailing: %@", buf, 0x16u);
              }
            }

            else
            {
              v40 = dispatch_group_create();
              dispatch_group_enter(v40);
              leadingLock = self->_leadingLock;
              v52[0] = MEMORY[0x277D85DD0];
              v52[1] = 3221225472;
              v52[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke;
              v52[3] = &unk_2783A9398;
              v42 = v40;
              v53 = v42;
              [(SBUIProudLockIconView *)leadingLock setState:v15 animated:1 completion:v52];
              dispatch_group_enter(v42);
              trailingContentView = self->_trailingContentView;
              v50[0] = MEMORY[0x277D85DD0];
              v50[1] = 3221225472;
              v50[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_2;
              v50[3] = &unk_2783A9398;
              v37 = v42;
              v51 = v37;
              [(SBLockElementTrailingContentView *)trailingContentView setState:v14 animated:1 completion:v50];
              if (v45)
              {
                dispatch_group_enter(v37);
                v49[0] = MEMORY[0x277D85DD0];
                v49[1] = 3221225472;
                v49[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_3;
                v49[3] = &unk_2783A8C18;
                v49[4] = self;
                v47[0] = MEMORY[0x277D85DD0];
                v47[1] = 3221225472;
                v47[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_4;
                v47[3] = &unk_2783A8C18;
                v48 = v37;
                [platformElementHost performAction:v49 withCompletionUponAnimationSettling:v47];
              }

              [(SBLockElementViewProvider *)self _reconcileNotifiedSecureState];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_5;
              block[3] = &unk_2783A8C18;
              block[4] = self;
              dispatch_group_notify(v37, MEMORY[0x277D85CD0], block);
            }

            WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
            [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
            [(SBLockElementViewProvider *)self _updateRequiredPriorityAssertion];

            goto LABEL_68;
          }

          if (v12 > 6)
          {
            switch(v12)
            {
              case 7:
                v45 = 0;
                v10 = &SBPearlElementFlipBookStateRestingScaled;
                v16 = &SBLockElementFlipBookStateUnlockedScaledSecure;
                break;
              case 8:
                v45 = 0;
                v10 = &SBPearlElementFlipBookStateRestingScaled;
                v16 = &SBLockElementFlipBookStateUnlockedScaled;
                break;
              case 9:
                v45 = 1;
                v10 = &SBPearlElementFlipBookStateError;
                v16 = &SBLockElementFlipBookStateErrorScaled;
                v15 = 13;
LABEL_43:
                v14 = 1;
                goto LABEL_52;
              default:
                goto LABEL_70;
            }

            v15 = 12;
            goto LABEL_52;
          }

          if (v12 == 5)
          {
            v45 = 0;
            v14 = 0;
            v10 = &SBPearlElementFlipBookStateSearching;
            v16 = &SBLockElementFlipBookStateLockedScaled;
            v15 = 11;
            goto LABEL_52;
          }

          v45 = 0;
          v10 = &SBPearlElementFlipBookStateFailed;
          v16 = &SBLockElementFlipBookStateLockedScaled;
          v15 = 11;
          goto LABEL_43;
        }

        platformElementHost = SBLogSystemApertureLockElement(_appliedSecureState2);
        if (os_log_type_enabled(platformElementHost, OS_LOG_TYPE_INFO))
        {
          v19 = [(SBLockElementViewProvider *)self _requestedSecureState]- 1;
          if (v19 > 8)
          {
            v20 = @"Sleep";
          }

          else
          {
            v20 = off_2783ABF90[v19];
          }

          v26 = [(SBLockElementViewProvider *)self _currentSecureState]- 1;
          if (v26 > 8)
          {
            v27 = @"Sleep";
          }

          else
          {
            v27 = off_2783ABF90[v26];
          }

          _appliedSecureState4 = [(SBLockElementViewProvider *)self _appliedSecureState];
          if (_appliedSecureState4 - 1 > 8)
          {
            v29 = @"Sleep";
          }

          else
          {
            v29 = off_2783ABF90[_appliedSecureState4 - 1];
          }

          *buf = 138412802;
          v55 = v20;
          v56 = 2112;
          v57 = v27;
          v58 = 2112;
          v59 = v29;
          v25 = "Cannot apply requested state: %@ (waiting for '%@ -> %@' to finish)";
LABEL_37:
          _os_log_impl(&dword_21ED4E000, platformElementHost, OS_LOG_TYPE_INFO, v25, buf, 0x20u);
        }
      }

      else
      {
        platformElementHost = SBLogSystemApertureLockElement(_appliedSecureState);
        if (os_log_type_enabled(platformElementHost, OS_LOG_TYPE_INFO))
        {
          v17 = [(SBLockElementViewProvider *)self _requestedSecureState]- 1;
          if (v17 > 8)
          {
            v18 = @"Sleep";
          }

          else
          {
            v18 = off_2783ABF90[v17];
          }

          v21 = [(SBLockElementViewProvider *)self _currentSecureState]- 1;
          if (v21 > 8)
          {
            v22 = @"Sleep";
          }

          else
          {
            v22 = off_2783ABF90[v21];
          }

          _notifiedSecureState2 = [(SBLockElementViewProvider *)self _notifiedSecureState];
          if (_notifiedSecureState2 - 1 > 8)
          {
            v24 = @"Sleep";
          }

          else
          {
            v24 = off_2783ABF90[_notifiedSecureState2 - 1];
          }

          *buf = 138412802;
          v55 = v18;
          v56 = 2112;
          v57 = v22;
          v58 = 2112;
          v59 = v24;
          v25 = "Cannot apply requested state: %@ (waiting for '%@ -> %@' to start)";
          goto LABEL_37;
        }
      }

LABEL_68:
    }
  }
}

- (void)_reconcileAppliedSecureState
{
  v34 = *MEMORY[0x277D85DE8];
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
  if (_appliedSecureState != [(SBLockElementViewProvider *)self _currentSecureState])
  {
    _useSecureElementHostStates = [(SBLockElementViewProvider *)self _useSecureElementHostStates];
    v5 = [(NSDictionary *)self->_activeComponentStates objectForKeyedSubscript:SBLockElementLeadingFlipBookName];
    v6 = [v5 isEqualToString:self->_leadingViewFlipBookState];

    v7 = [(NSDictionary *)self->_activeComponentStates objectForKeyedSubscript:SBLockElementTrailingFlipBookName];
    v8 = [v7 isEqualToString:self->_trailingViewFlipBookState];

    if (!_useSecureElementHostStates || (v6 & v8) != 0)
    {
      v10 = SBLogSystemApertureLockElement(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(SBLockElementViewProvider *)self _currentSecureState]- 1;
        if (v11 > 8)
        {
          v12 = @"Sleep";
        }

        else
        {
          v12 = off_2783ABF90[v11];
        }

        _appliedSecureState2 = [(SBLockElementViewProvider *)self _appliedSecureState];
        if (_appliedSecureState2 - 1 > 8)
        {
          v14 = @"Sleep";
        }

        else
        {
          v14 = off_2783ABF90[_appliedSecureState2 - 1];
        }

        *buf = 138412546;
        v31 = v12;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Applied state finished: %@ -> %@", buf, 0x16u);
      }

      v15 = self->_stateCompletions;
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      stateCompletions = self->_stateCompletions;
      self->_stateCompletions = v16;

      self->_currentSecureState = self->_appliedSecureState;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = v15;
      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v26;
        do
        {
          v22 = 0;
          do
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v18);
            }

            (*(*(*(&v25 + 1) + 8 * v22) + 16))(*(*(&v25 + 1) + 8 * v22));
            ++v22;
          }

          while (v20 != v22);
          v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v20);
      }

      _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
      if (_requestedSecureState == 4)
      {
        v24 = 1;
      }

      else
      {
        if (_requestedSecureState != 9)
        {
LABEL_24:
          [(SBLockElementViewProvider *)self _reconcileDeferredSecureState];
          [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
          [(SBLockElementViewProvider *)self _updateVisibilityAssertion];
          [(SBLockElementViewProvider *)self _updateRequiredPriorityAssertion];

          return;
        }

        v24 = 6;
      }

      [(SBLockElementViewProvider *)self _requestSecureState:v24];
      goto LABEL_24;
    }
  }
}

- (id)leadingLock
{
  leadingLock = self->_leadingLock;
  if (!leadingLock)
  {
    v4 = objc_alloc(MEMORY[0x277D67D88]);
    [(SBLockElementViewProvider *)self _elementSizeLeading:1 forLayoutMode:1];
    BSRectWithSize();
    v5 = [v4 initWithFrame:?];
    v6 = v5;
    if (self->_isAuthenticated)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [v5 setState:v7 animated:0];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SWIPE_UP_TO_UNLOCK" value:&stru_283094718 table:@"CoverSheetCommon"];
    [v6 setAccessibilityLabel:v9];

    v10 = self->_leadingLock;
    self->_leadingLock = v6;

    leadingLock = self->_leadingLock;
  }

  return leadingLock;
}

+ (BOOL)deviceSupportsElement
{
  if (deviceSupportsElement_onceToken != -1)
  {
    +[SBLockElementViewProvider deviceSupportsElement];
  }

  return deviceSupportsElement_isJindo;
}

- (void)_reconcileDeferredSecureState
{
  v18 = *MEMORY[0x277D85DE8];
  _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
  _appliedSecureState2 = [(SBLockElementViewProvider *)self _appliedSecureState];
  _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
  _deferredSecureState = [(SBLockElementViewProvider *)self _deferredSecureState];
  _requestedSecureState2 = [(SBLockElementViewProvider *)self _requestedSecureState];
  if (_requestedSecureState == _appliedSecureState && _appliedSecureState2 == _currentSecureState && _deferredSecureState != _requestedSecureState2)
  {
    v9 = SBLogSystemApertureLockElement(_requestedSecureState2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SBLockElementViewProvider *)self _requestedSecureState]- 1;
      if (v10 > 8)
      {
        v11 = @"Sleep";
      }

      else
      {
        v11 = off_2783ABF90[v10];
      }

      _deferredSecureState2 = [(SBLockElementViewProvider *)self _deferredSecureState];
      if (_deferredSecureState2 - 1 > 8)
      {
        v13 = @"Sleep";
      }

      else
      {
        v13 = off_2783ABF90[_deferredSecureState2 - 1];
      }

      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Promoting deferred secure state: %@ -> %@", &v14, 0x16u);
    }

    self->_requestedSecureState = [(SBLockElementViewProvider *)self _deferredSecureState];
    [(NSMutableArray *)self->_stateCompletions addObjectsFromArray:self->_deferredStateCompletions];
    [(NSMutableArray *)self->_deferredStateCompletions removeAllObjects];
  }
}

- (void)_forceSleepSecureState
{
  v9[2] = *MEMORY[0x277D85DE8];
  _useSecureElementHostStates = [(SBLockElementViewProvider *)self _useSecureElementHostStates];
  if (_useSecureElementHostStates)
  {
    v4 = SBLogSystemApertureLockElement(_useSecureElementHostStates);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Force-resetting state machine to Sleep", v7, 2u);
    }

    self->_currentSecureState = 0;
    self->_appliedSecureState = 0;
    self->_notifiedSecureState = 0;
    v8[0] = SBLockElementLeadingFlipBookName;
    v8[1] = SBLockElementTrailingFlipBookName;
    v9[0] = SBLockElementFlipBookStateSleep;
    v9[1] = SBPearlElementFlipBookStateResting;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    activeComponentStates = self->_activeComponentStates;
    self->_activeComponentStates = v5;
  }
}

- (SBLockElementViewProvider)init
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v31.receiver = self;
  v31.super_class = SBLockElementViewProvider;
  v5 = [(SBSystemApertureProvidedContentElement *)&v31 initWithIdentifier:self contentProvider:v4];
  if (v5)
  {
    if (([objc_opt_class() deviceSupportsElement] & 1) == 0)
    {
      [(SBLockElementViewProvider *)a2 init];
    }

    v5->_alwaysUseCustomLayoutMode = _os_feature_enabled_impl();
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    sharedResource = v5->_sharedResource;
    v5->_sharedResource = mEMORY[0x277D67C98];

    [(SBUIBiometricResource *)v5->_sharedResource addObserver:v5];
    v5->_allowsBioUnlock = [(SBLockElementViewProvider *)v5 _activelyWantsMatching];
    objc_storeStrong(&v5->_contentProvider, v4);
    v5->_isForCapture = 0;
    v5->_isElementRegistered = 0;
    v5->_currentSecureState = 0;
    v5->_notifiedSecureState = 0;
    v5->_appliedSecureState = 0;
    v5->_requestedSecureState = 0;
    v5->_deferredSecureState = 0;
    objc_storeStrong(&v5->_leadingViewFlipBookState, SBLockElementFlipBookStateSleep);
    objc_storeStrong(&v5->_trailingViewFlipBookState, SBPearlElementFlipBookStateResting);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stateCompletions = v5->_stateCompletions;
    v5->_stateCompletions = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferredStateCompletions = v5->_deferredStateCompletions;
    v5->_deferredStateCompletions = v10;

    [(SBLockElementViewProvider *)v5 _updateTrailingGlyph];
    v12 = objc_alloc(MEMORY[0x277D67E10]);
    leadingLock = [(SBLockElementViewProvider *)v5 leadingLock];
    v14 = [v12 initWithView:leadingLock];
    lockProvider = v5->_lockProvider;
    v5->_lockProvider = v14;

    v16 = objc_alloc(MEMORY[0x277D67E10]);
    trailingContentView = [(SBLockElementViewProvider *)v5 trailingContentView];
    v18 = [v16 initWithView:trailingContentView];
    trailingPackageProvider = v5->_trailingPackageProvider;
    v5->_trailingPackageProvider = v18;

    [(SBUISystemApertureContentProvider *)v5->_contentProvider setLeadingContentViewProvider:v5->_lockProvider];
    [(SBUISystemApertureContentProvider *)v5->_contentProvider setTrailingContentViewProvider:v5->_trailingPackageProvider];
    v20 = objc_opt_new();
    flipBookConfiguration = v5->_flipBookConfiguration;
    v5->_flipBookConfiguration = v20;

    v22 = v5->_flipBookConfiguration;
    v23 = [SBLockElementFlipBookDescription alloc];
    leadingLock2 = [(SBLockElementViewProvider *)v5 leadingLock];
    v25 = [(SBLockElementFlipBookDescription *)v23 initWithViewProvider:v5 lockView:leadingLock2];
    v32[0] = v25;
    v26 = [SBLockElementPearlFlipBookDescription alloc];
    trailingContentView2 = [(SBLockElementViewProvider *)v5 trailingContentView];
    v28 = [(SBLockElementPearlFlipBookDescription *)v26 initWithViewProvider:v5 contentView:trailingContentView2];
    v32[1] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [(SBLockElementFlipBookConfiguration *)v22 configureLayoutMode:3 withDescriptions:v29];
  }

  return v5;
}

uint64_t __50__SBLockElementViewProvider_deviceSupportsElement__block_invoke(SBFluidSwitcherViewController *a1, const char *a2)
{
  result = SBSIsSystemApertureAvailable();
  deviceSupportsElement_isJindo = result;
  return result;
}

- (void)shake
{
  if ([(SBLockElementViewProvider *)self _treatCustomAsLarge])
  {
    v3 = 9;
  }

  else
  {
    v3 = 4;
  }

  [(SBLockElementViewProvider *)self _requestSecureState:v3];
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  if (self->_isEmpty)
  {
    top = *MEMORY[0x277D75060];
    v5 = *(MEMORY[0x277D75060] + 8);
    bottom = *(MEMORY[0x277D75060] + 16);
    v7 = *(MEMORY[0x277D75060] + 24);
  }

  else
  {
    trailing = outsets.trailing;
    bottom = outsets.bottom;
    leading = outsets.leading;
    top = outsets.top;
    if ([(SBLockElementViewProvider *)self layoutMode:mode]== 3 && [(SBLockElementViewProvider *)self _treatCustomAsLarge])
    {
      if ([(SBLockElementViewProvider *)self _treatsAsAmbientSearching])
      {
        bottom = -16.0;
      }

      else
      {
        bottom = -14.0;
      }

      top = -1.0;
      v7 = -40.0;
      v5 = -40.0;
    }

    else
    {
      v12 = 0.0;
      if (self->_isAuthenticated)
      {
        leadingLock = [(SBLockElementViewProvider *)self leadingLock];
        traitCollection = [leadingLock traitCollection];
        layoutDirection = [traitCollection layoutDirection];

        v12 = 0.666666;
        if (layoutDirection == 1)
        {
          v12 = 2.0;
        }
      }

      v16 = leading - v12;
      _isShowingInLandscape = [(SBLockElementViewProvider *)self _isShowingInLandscape];
      v5 = v16 + -4.0;
      if (_isShowingInLandscape)
      {
        v7 = trailing + -4.0;
      }

      else
      {
        v7 = trailing;
      }

      if (!_isShowingInLandscape)
      {
        v5 = v16;
      }
    }
  }

  v18 = top;
  v19 = bottom;
  result.trailing = v7;
  result.bottom = v19;
  result.leading = v5;
  result.top = v18;
  return result;
}

- (void)setAuthenticated:(BOOL)authenticated
{
  if (self->_isAuthenticated != authenticated)
  {
    authenticatedCopy = authenticated;
    self->_isAuthenticated = authenticated;
    if (authenticated)
    {
      v5 = [(SBLockElementViewProvider *)self _resolvedEventForState:2];
    }

    else
    {
      v5 = 1;
    }

    [(SBLockElementViewProvider *)self handleBiometricEvent:v5];
    if (!self->_isInBloomMode)
    {
      WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
      [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
    }

    if (authenticatedCopy)
    {
      if (self->_hasActiveUnlockAttempt)
      {
        v7 = 6;
      }

      else
      {
        v7 = 0;
      }

      [(SBLockElementViewProvider *)self handleBiometricEvent:v7];
      self->_hasActiveUnlockAttempt = 0;
    }

    else
    {

      [(SBLockElementViewProvider *)self _setAcquiring:0];
    }
  }
}

- (void)_updateAllowsBioUnlock
{
  _activelyWantsMatching = [(SBLockElementViewProvider *)self _activelyWantsMatching];
  if (self->_allowsBioUnlock == _activelyWantsMatching)
  {
    if (self->_allowsBioUnlock && !self->_isAuthenticated)
    {

      [(SBLockElementViewProvider *)self handleBiometricEvent:21];
    }
  }

  else
  {
    self->_allowsBioUnlock = _activelyWantsMatching;
    if (_activelyWantsMatching)
    {
      v4 = 21;
    }

    else
    {
      v4 = 0;
    }

    [(SBLockElementViewProvider *)self handleBiometricEvent:v4];
    if (!self->_allowsBioUnlock)
    {

      [(SBLockElementViewProvider *)self _updateTrailingPackageVisibility];
    }
  }
}

- (void)setEmpty:(BOOL)empty
{
  if (self->_isEmpty != empty)
  {
    if (self->_isElementRegistered)
    {
      [(SBLockElementViewProvider *)a2 setEmpty:?];
    }

    self->_isEmpty = empty;
  }
}

- (void)setBloomed:(BOOL)bloomed
{
  if (self->_isInBloomMode != bloomed)
  {
    self->_isInBloomMode = bloomed;
    [(SBLockElementViewProvider *)self _updateUnlockModeForState];
  }
}

- (BOOL)_treatsAsAmbientSearching
{
  _treatAsAmbient = [(SBLockElementViewProvider *)self _treatAsAmbient];
  if (_treatAsAmbient)
  {
    LOBYTE(_treatAsAmbient) = self->_layoutMode == 3;
  }

  return _treatAsAmbient;
}

- (void)setIsForCapture:(BOOL)capture
{
  captureCopy = capture;
  self->_isForCapture = capture;
  [(SBUIProudLockIconView *)self->_leadingLock setIsForCapture:?];
  trailingContentView = self->_trailingContentView;

  [(SBLockElementTrailingContentView *)trailingContentView setIsForCapture:captureCopy];
}

- (BOOL)_isSecurelyRenderingInJindo
{
  activeComponentStates = self->_activeComponentStates;
  if (activeComponentStates)
  {
    LOBYTE(activeComponentStates) = [(NSDictionary *)activeComponentStates count]!= 0;
  }

  return activeComponentStates;
}

- (void)_updateRequiredPriorityAssertion
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SBLockElementViewProvider *)self _nextSecureStateForState:[(SBLockElementViewProvider *)self _requestedSecureState]];
  _useSecureElementHostStates = [(SBLockElementViewProvider *)self _useSecureElementHostStates];
  if (_useSecureElementHostStates && ((_useSecureElementHostStates = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:v3]) != 0 || (_useSecureElementHostStates = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _appliedSecureState]]) != 0))
  {
    if (self->_requiredPriorityAssertion)
    {
      return;
    }

    v5 = SBLogSystemApertureLockElement(_useSecureElementHostStates);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
      if (_requestedSecureState - 1 > 8)
      {
        v7 = @"Sleep";
      }

      else
      {
        v7 = off_2783ABF90[_requestedSecureState - 1];
      }

      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Taking priority assertion, requested = %@", &v14, 0xCu);
    }

    platformElementHost = [(SBSystemApertureProvidedContentElement *)self platformElementHost];
    v12 = [platformElementHost requestRequiredPriorityAssertionWithReason:@"Lock Element Secure State"];
    requiredPriorityAssertion = self->_requiredPriorityAssertion;
    self->_requiredPriorityAssertion = v12;
  }

  else
  {
    if (!self->_requiredPriorityAssertion)
    {
      return;
    }

    v8 = SBLogSystemApertureLockElement(_useSecureElementHostStates);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _requestedSecureState2 = [(SBLockElementViewProvider *)self _requestedSecureState];
      if (_requestedSecureState2 - 1 > 8)
      {
        v10 = @"Sleep";
      }

      else
      {
        v10 = off_2783ABF90[_requestedSecureState2 - 1];
      }

      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Dropping priority assertion, requested = %@", &v14, 0xCu);
    }

    [(SAInvalidatable *)self->_requiredPriorityAssertion invalidateWithReason:@"Lock ELement no longer in secure state"];
    platformElementHost = self->_requiredPriorityAssertion;
    self->_requiredPriorityAssertion = 0;
  }
}

- (unint64_t)_secureStateContainsSecureFrames:(unint64_t)frames
{
  if (frames > 8)
  {
    return 1;
  }

  else
  {
    return qword_21F8A58C8[frames];
  }
}

- (unint64_t)_nextSecureStateForState:(unint64_t)state
{
  _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];

  return [(SBLockElementViewProvider *)self _nextSecureStateForState:state from:_currentSecureState];
}

- (unint64_t)_nextSecureStateForState:(unint64_t)state from:(unint64_t)from
{
  if (self->_isForCapture)
  {
    return state;
  }

  result = 3;
  if (from <= 4)
  {
    if (from <= 2)
    {
      if (from)
      {
        if (from != 1)
        {
          return result;
        }

        if (state < 0xA)
        {
          v5 = &unk_21F8A5960;
          return v5[state];
        }
      }

      else if (state < 0xA)
      {
        v5 = &unk_21F8A5910;
        return v5[state];
      }

      return 3;
    }

    if (from == 3)
    {
      if (state < 0xA)
      {
        v5 = &unk_21F8A59B0;
        return v5[state];
      }
    }

    else if (state < 0xA)
    {
      v5 = &unk_21F8A5A00;
      return v5[state];
    }

    return 8;
  }

  if (from <= 7)
  {
    if (from - 5 >= 2)
    {
      if (from != 7)
      {
        return result;
      }
    }

    else if (state < 0xA)
    {
      v5 = &unk_21F8A5A50;
      return v5[state];
    }

    return 8;
  }

  v6 = 5;
  stateCopy = 5;
  if (state != 4)
  {
    stateCopy = state;
  }

  if (state != 9)
  {
    v6 = stateCopy;
  }

  v8 = 5;
  if (state == 9)
  {
    v8 = 9;
  }

  if (from != 9)
  {
    v8 = 3;
  }

  if (from == 8)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

- (void)_reconcileNotifiedSecureState
{
  v22 = *MEMORY[0x277D85DE8];
  _notifiedSecureState = [(SBLockElementViewProvider *)self _notifiedSecureState];
  if (_notifiedSecureState != [(SBLockElementViewProvider *)self _appliedSecureState])
  {
    _useSecureElementHostStates = [(SBLockElementViewProvider *)self _useSecureElementHostStates];
    v5 = [(NSDictionary *)self->_appliedComponentStates objectForKeyedSubscript:SBLockElementLeadingFlipBookName];
    v6 = [v5 isEqualToString:self->_leadingViewFlipBookState];

    v7 = [(NSDictionary *)self->_appliedComponentStates objectForKeyedSubscript:SBLockElementTrailingFlipBookName];
    v8 = [v7 isEqualToString:self->_trailingViewFlipBookState];

    if (_useSecureElementHostStates && v6 && v8 != 0)
    {
      v11 = SBLogSystemApertureLockElement(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        leadingViewFlipBookState = self->_leadingViewFlipBookState;
        trailingViewFlipBookState = self->_trailingViewFlipBookState;
        v18 = 138412546;
        v19 = leadingViewFlipBookState;
        v20 = 2112;
        v21 = trailingViewFlipBookState;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Requested Jindo-managed state begun: leading: %@, trailing: %@", &v18, 0x16u);
      }

      _notifiedSecureState2 = [(SBLockElementViewProvider *)self _notifiedSecureState];
      if (_notifiedSecureState2 == 9 || _notifiedSecureState2 == 4)
      {
        elementHost = [(SBLockElementViewProvider *)self elementHost];
        [elementHost elementRequestsNegativeResponse:self];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    self->_appliedSecureState = self->_notifiedSecureState;
    [(SBLockElementViewProvider *)self _updateTrailingPackageVisibility];
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
    [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
    v17 = [(SBLockElementViewProvider *)self _secureStateIsLarge:[(SBLockElementViewProvider *)self _appliedSecureState]];
    if (v17 != [(SBLockElementViewProvider *)self _secureStateIsLarge:[(SBLockElementViewProvider *)self _currentSecureState]])
    {
      [WeakRetained preferredPromotionDidInvalidateForLayoutSpecifier:self];
    }
  }
}

void __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) elementHost];
  [v2 elementRequestsNegativeResponse:*(a1 + 32)];
}

- (BOOL)_canApplyRequestedState:(unint64_t)state
{
  _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
  v7 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _nextSecureStateForState:[(SBLockElementViewProvider *)self _requestedSecureState] from:[(SBLockElementViewProvider *)self _appliedSecureState]]];
  v8 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _nextSecureStateForState:state from:[(SBLockElementViewProvider *)self _appliedSecureState]]];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  return _requestedSecureState == _appliedSecureState || v10;
}

- (void)_deferSecureState:(unint64_t)state completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = SBLogSystemApertureLockElement(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (state - 1 > 8)
    {
      v8 = @"Sleep";
    }

    else
    {
      v8 = off_2783ABF90[state - 1];
    }

    _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
    if (_currentSecureState - 1 > 8)
    {
      v10 = @"Sleep";
    }

    else
    {
      v10 = off_2783ABF90[_currentSecureState - 1];
    }

    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Deferring requested secure state: %@ (still waiting for secure state: %@)", &v13, 0x16u);
  }

  self->_deferredSecureState = state;
  if (completionCopy)
  {
    deferredStateCompletions = self->_deferredStateCompletions;
    v12 = MEMORY[0x223D6F7F0](completionCopy);
    [(NSMutableArray *)deferredStateCompletions addObject:v12];
  }
}

- (void)_requestSecureState:(unint64_t)state completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!self->_isEmpty)
  {
    if ([(SBLockElementViewProvider *)self _requestedSecureState]== state)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      v7 = [(SBLockElementViewProvider *)self _canApplyRequestedState:state];
      if (v7)
      {
        v8 = SBLogSystemApertureLockElement(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
          if (_requestedSecureState - 1 > 8)
          {
            v10 = @"Sleep";
          }

          else
          {
            v10 = off_2783ABF90[_requestedSecureState - 1];
          }

          if (state - 1 > 8)
          {
            v11 = @"Sleep";
          }

          else
          {
            v11 = off_2783ABF90[state - 1];
          }

          v17 = 138412546;
          v18 = v10;
          v19 = 2112;
          v20 = v11;
          _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Requesting secure state: %@ -> %@", &v17, 0x16u);
        }

        self->_requestedSecureState = state;
        self->_deferredSecureState = state;
        if (completionCopy)
        {
          stateCompletions = self->_stateCompletions;
          v13 = MEMORY[0x223D6F7F0](completionCopy);
          [(NSMutableArray *)stateCompletions addObject:v13];
        }

        _useSecureElementHostStates = [(SBLockElementViewProvider *)self _useSecureElementHostStates];
        [(SBLockElementViewProvider *)self _updateVisibilityAssertion];
        [(SBLockElementViewProvider *)self _updateRequiredPriorityAssertion];
        if (_useSecureElementHostStates)
        {
          secureElementHost = [(SBLockElementViewProvider *)self secureElementHost];
          [secureElementHost preferredRecordedStateDidInvalidateForLayoutSpecifier:self];

          WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
          [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
        }

        else
        {
          [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
        }
      }

      else
      {
        [(SBLockElementViewProvider *)self _deferSecureState:state completion:completionCopy];
      }
    }
  }
}

- (void)handleBiometricEvent:(int64_t)event
{
  if (event > 7)
  {
    if (event <= 11)
    {
      if (event != 8 && event != 10)
      {
        if (event != 11)
        {
          return;
        }

        event = 5;
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (event != 12)
    {
      if (event != 13)
      {
        if (event != 21)
        {
          return;
        }

        goto LABEL_17;
      }

LABEL_23:
      event = 9;
      goto LABEL_7;
    }

    event = 8;
    goto LABEL_7;
  }

  if (event > 2)
  {
    if (event != 3)
    {
      if (event == 5)
      {
LABEL_19:
        v3 = 1;
        goto LABEL_18;
      }

      if (event != 7)
      {
        return;
      }

      if (!self->_isInBloomMode)
      {
LABEL_17:
        v3 = 0;
LABEL_18:
        [(SBLockElementViewProvider *)self _setAcquiring:v3];
        return;
      }

      goto LABEL_23;
    }

    event = 4;
LABEL_7:
    [(SBLockElementViewProvider *)self _requestSecureState:event];
    return;
  }

  if (event == 1)
  {
    goto LABEL_7;
  }

  if (event == 2)
  {
    event = 3;
    goto LABEL_7;
  }
}

- (void)_setAcquiring:(BOOL)acquiring
{
  if (acquiring)
  {
    requiresSecureIndicator = 1;
  }

  else
  {
    requiresSecureIndicator = [(SBUIBiometricResource *)self->_sharedResource requiresSecureIndicator];
  }

  if (self->_isAcquiring != requiresSecureIndicator)
  {
    self->_isAcquiring = requiresSecureIndicator;

    [(SBLockElementViewProvider *)self _updateUnlockModeForState];
  }
}

- (void)systemApertureElementAssertionAcquired
{
  self->_isElementRegistered = 1;
  if (!self->_isAuthenticated)
  {
    [(SBLockElementViewProvider *)self _requestSecureState:1];
  }

  [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
}

- (CGSize)_elementSizeLeading:(BOOL)leading forLayoutMode:(int64_t)mode
{
  if ((mode + 1) >= 4)
  {
    v5 = 0.0;
    v4 = 0.0;
    if (mode == 3)
    {
      leadingCopy = leading;
      if ([(SBLockElementViewProvider *)self _treatCustomAsLarge:0.0])
      {
        v4 = 37.0;
        v5 = 23.0;
        if (leadingCopy)
        {
          v4 = 17.3333333;
        }

        else
        {
          v5 = 37.0;
        }
      }

      else
      {
        v4 = 12.0;
        v5 = 15.0;
      }
    }
  }

  else
  {
    v4 = 12.0;
    v5 = 15.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (id)trailingContentView
{
  trailingContentView = self->_trailingContentView;
  if (!trailingContentView)
  {
    v4 = [SBLockElementTrailingContentView alloc];
    [(SBLockElementViewProvider *)self _elementSizeLeading:0 forLayoutMode:1];
    BSRectWithSize();
    v5 = [(SBLockElementTrailingContentView *)v4 initWithFrame:?];
    v6 = self->_trailingContentView;
    self->_trailingContentView = v5;

    trailingContentView = self->_trailingContentView;
  }

  return trailingContentView;
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  layoutMode = self->_layoutMode;
  if (layoutMode != mode)
  {
    self->_priorLayoutMode = layoutMode;
    if (mode <= 0)
    {
      [(SBLockElementViewProvider *)self _forceSleepSecureState];
    }
  }

  self->_layoutMode = mode;
}

- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode
{
  [(SBLockElementViewProvider *)self _elementSizeLeading:self->_leadingLock == view forLayoutMode:mode, size.width, size.height];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  [subviewsCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  layoutMode = [(SBLockElementViewProvider *)self layoutMode];
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  CGRectGetWidth(v35);
  v36.origin.x = v6;
  v36.origin.y = v8;
  v36.size.width = v10;
  v36.size.height = v12;
  CGRectGetHeight(v36);
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  Width = CGRectGetWidth(v37);
  v15 = layoutMode == 3 || Width > 200.0;
  if (v15)
  {
    v16 = 3;
  }

  else
  {
    v16 = 1;
  }

  [(SBLockElementViewProvider *)self _elementSizeLeading:1 forLayoutMode:v16];
  v19 = v18;
  v20 = v17;
  if (v15)
  {
    v21 = v17;
  }

  else
  {
    v21 = 12.0;
  }

  [(SBLockElementViewProvider *)self _elementSizeLeading:0 forLayoutMode:v16];
  [(SBUIProudLockIconView *)self->_leadingLock setOverrideSize:v19 offset:v20 extent:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v21];
  leadingLock = self->_leadingLock;
  BSRectWithSize();
  [(SBUIProudLockIconView *)leadingLock setBounds:?];
  trailingContentView = self->_trailingContentView;
  BSRectWithSize();
  [(SBLockElementTrailingContentView *)trailingContentView setBounds:?];
  UIRectGetCenter();
  if (layoutMode != 3 || ![(SBLockElementViewProvider *)self _isShowingInLandscape])
  {
    leadingLock = [(SBLockElementViewProvider *)self leadingLock];
    traitCollection = [leadingLock traitCollection];
    [traitCollection layoutDirection];

    leadingLock2 = [(SBLockElementViewProvider *)self leadingLock];
    traitCollection2 = [leadingLock2 traitCollection];
    [traitCollection2 layoutDirection];
  }

  v28 = self->_leadingLock;
  UIPointRoundToViewScale();
  [(SBUIProudLockIconView *)v28 setCenter:?];
  v29 = self->_trailingContentView;
  UIPointRoundToViewScale();
  v31 = v30;
  v33 = v32;

  [(SBLockElementTrailingContentView *)v29 setCenter:v31, v33];
}

- (void)biometricResource:(id)resource matchingEnabledDidChange:(BOOL)change
{
  [(SBLockElementViewProvider *)self _updateAllowsBioUnlock:resource];

  [(SBLockElementViewProvider *)self _updateTrailingGlyph];
}

- (void)biometricResource:(id)resource observeEvent:(unint64_t)event
{
  resourceCopy = resource;
  if (self->_sharedResource == resourceCopy)
  {
    v11 = resourceCopy;
    switch(event)
    {
      case 4uLL:
        selfCopy8 = self;
        v8 = 6;
        goto LABEL_4;
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 0xBuLL:
        [(SBLockElementViewProvider *)self _updateAllowsBioUnlock];
        goto LABEL_6;
      case 9uLL:
      case 0xAuLL:
      case 0xFuLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x17uLL:
      case 0x18uLL:
        goto LABEL_3;
      case 0xCuLL:
        selfCopy8 = self;
        v8 = 4;
        goto LABEL_4;
      case 0xDuLL:
        if (self->_hasActiveUnlockAttempt || self->_isAuthenticated)
        {
          break;
        }

        self->_hasActiveUnlockAttempt = 1;
        selfCopy8 = self;
        v8 = 5;
        goto LABEL_4;
      case 0xEuLL:
      case 0x16uLL:
        selfCopy8 = self;
        v8 = 21;
        goto LABEL_4;
      case 0x15uLL:
        mEMORY[0x277D67D38] = [MEMORY[0x277D67D38] sharedInstance];
        isPhoneUnlockEnabledAndRequirementsMet = [mEMORY[0x277D67D38] isPhoneUnlockEnabledAndRequirementsMet];

        resourceCopy = v11;
        if (isPhoneUnlockEnabledAndRequirementsMet)
        {
          break;
        }

LABEL_3:
        self->_hasActiveUnlockAttempt = 0;
        selfCopy8 = self;
        v8 = 7;
        goto LABEL_4;
      case 0x22uLL:
        selfCopy8 = self;
        v8 = 8;
        goto LABEL_4;
      case 0x23uLL:
        selfCopy8 = self;
        v8 = 9;
        goto LABEL_4;
      case 0x24uLL:
        selfCopy8 = self;
        v8 = 10;
LABEL_4:
        [(SBLockElementViewProvider *)selfCopy8 handleBiometricEvent:v8];
LABEL_6:
        resourceCopy = v11;
        break;
      default:
        break;
    }
  }
}

- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  v9 = self->_alwaysUseCustomLayoutMode && [(SBLockElementViewProvider *)self _treatCustomAsLarge];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__SBLockElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
  v14[3] = &unk_2783A9F58;
  v15 = v9;
  v14[4] = self;
  [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__SBLockElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2;
  v11[3] = &unk_2783ABF70;
  v11[4] = self;
  v12 = viewCopy;
  v13 = v9;
  v10 = viewCopy;
  [coordinatorCopy animateAlongsideTransition:v11 completion:0];
}

uint64_t __103__SBLockElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(*(a1 + 32) + 296) _shouldReverseLayoutDirection];
    [*(*(a1 + 32) + 296) bounds];
    v4 = v3;
    [*(*(a1 + 32) + 296) setSauiBlurRadius:*MEMORY[0x277D6B8D8]];
    [*(*(a1 + 32) + 296) setAlpha:0.0];
    v5 = *(*(a1 + 32) + 296);
    CGAffineTransformMakeScale(&t1, 0.0, 1.0);
    v6 = -v4;
    if (v2)
    {
      v6 = v4;
    }

    CGAffineTransformMakeTranslation(&v8, v6 * 0.5, 0.0);
    CGAffineTransformConcat(&v10, &t1, &v8);
    [v5 setTransform:&v10];
  }

  [*(a1 + 32) _updateLeadingPackageVisibility];
  return [*(a1 + 32) _updateTrailingPackageVisibility];
}

void *__103__SBLockElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) layoutHostContainerViewDidLayoutSubviews:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 296) setSauiBlurRadius:0.0];
    [*(*(a1 + 32) + 296) setAlpha:1.0];
    v3 = *(*(a1 + 32) + 296);
    CGAffineTransformMakeScale(&v4, 1.0, 1.0);
    return [v3 setTransform:&v4];
  }

  return result;
}

- (BOOL)isIndicatorVisibilityRequired
{
  v40 = *MEMORY[0x277D85DE8];
  if (self->_isForCapture)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v4 = [(SBLockElementViewProvider *)self _nextSecureStateForState:[(SBLockElementViewProvider *)self _requestedSecureState]];
    _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
    _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
    v7 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:v4];
    _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
    _currentSecureState2 = [(SBLockElementViewProvider *)self _currentSecureState];
    v10 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _appliedSecureState]];
    v11 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _currentSecureState]];
    v12 = v11;
    v23 = v7;
    v14 = _requestedSecureState != _currentSecureState && v7 != 0;
    if (_appliedSecureState != _currentSecureState2 && v10 != 0)
    {
      v14 = 1;
    }

    if (v11)
    {
      v2 = 1;
    }

    else
    {
      v2 = v14;
    }

    v16 = SBLogSystemApertureLockElement(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = _requestedSecureState != _currentSecureState;
      if (v2)
      {
        v18 = "required";
      }

      else
      {
        v18 = "dropped";
      }

      _requestedSecureState2 = [(SBLockElementViewProvider *)self _requestedSecureState];
      if (_requestedSecureState2 - 1 > 8)
      {
        v20 = @"Sleep";
      }

      else
      {
        v20 = off_2783ABF90[_requestedSecureState2 - 1];
      }

      if (v4 - 1 > 8)
      {
        v21 = @"Sleep";
      }

      else
      {
        v21 = off_2783ABF90[v4 - 1];
      }

      *buf = 136316930;
      v25 = v18;
      v26 = 1024;
      v27 = v17;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      v32 = 1024;
      v33 = v23 != 0;
      v34 = 1024;
      v35 = _appliedSecureState == _currentSecureState2;
      v36 = 1024;
      v37 = v10 != 0;
      v38 = 1024;
      v39 = v12 != 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "visibility assertion %s (requested pending: %d (request: %@, next: %@, secure: %d), applied settled: %d (next secure: %d), current secure: %d)", buf, 0x3Eu);
    }
  }

  return v2;
}

+ (void)registerElementForRecording
{
  v4 = objc_alloc_init(SBLockElementViewProvider);
  [(SBLockElementViewProvider *)v4 setIsForCapture:1];
  [(SBLockElementViewProvider *)v4 setEmpty:0];
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  v3 = [systemApertureControllerForMainDisplay registerElement:v4];

  [(SBLockElementViewProvider *)v4 setElementAssertion:v3];
}

- (NSArray)recordableConfigurations
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_flipBookConfiguration;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)recordingModeChanged
{
  secureElementHost = [(SBLockElementViewProvider *)self secureElementHost];
  isInRecordingMode = [secureElementHost isInRecordingMode];

  if ((isInRecordingMode & 1) == 0)
  {
    [(SAInvalidatable *)self->_elementAssertion invalidateWithReason:@"recording mode changed"];
    elementAssertion = self->_elementAssertion;
    self->_elementAssertion = 0;
  }
}

- (NSDictionary)preferredComponentStates
{
  v8[2] = *MEMORY[0x277D85DE8];
  [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
  leadingViewFlipBookState = self->_leadingViewFlipBookState;
  v7[0] = SBLockElementLeadingFlipBookName;
  v7[1] = SBLockElementTrailingFlipBookName;
  trailingViewFlipBookState = self->_trailingViewFlipBookState;
  v8[0] = leadingViewFlipBookState;
  v8[1] = trailingViewFlipBookState;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)setAppliedComponentStates:(id)states
{
  v14 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  objc_storeStrong(&self->_appliedComponentStates, states);
  v7 = SBLogSystemApertureLockElement(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSDictionary *)self->_appliedComponentStates objectForKeyedSubscript:SBLockElementLeadingFlipBookName];
    v9 = [(NSDictionary *)self->_appliedComponentStates objectForKeyedSubscript:SBLockElementTrailingFlipBookName];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Jindo-managed state begun: leading: %@, trailing: %@", &v10, 0x16u);
  }

  [(SBLockElementViewProvider *)self _reconcileNotifiedSecureState];
}

- (void)setActiveComponentStates:(id)states
{
  v16 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  _isSecurelyRenderingInJindo = [(SBLockElementViewProvider *)self _isSecurelyRenderingInJindo];
  [(SBUIProudLockIconView *)self->_leadingLock setIsSecurelyRenderingInJindo:_isSecurelyRenderingInJindo];
  [(SBLockElementTrailingContentView *)self->_trailingContentView setIsSecurelyRenderingInJindo:_isSecurelyRenderingInJindo];
  v6 = [statesCopy copy];

  activeComponentStates = self->_activeComponentStates;
  self->_activeComponentStates = v6;

  v9 = SBLogSystemApertureLockElement(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(NSDictionary *)self->_activeComponentStates objectForKeyedSubscript:SBLockElementLeadingFlipBookName];
    v11 = [(NSDictionary *)self->_activeComponentStates objectForKeyedSubscript:SBLockElementTrailingFlipBookName];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Jindo-managed state reached: leading: %@, trailing: %@", &v12, 0x16u);
  }

  [(SBLockElementViewProvider *)self _reconcileAppliedSecureState];
}

- (void)_toggleUnlockMode
{
  _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
  if (_currentSecureState <= 9)
  {
    v4 = qword_21F8A5AE8[_currentSecureState];

    [(SBLockElementViewProvider *)self _requestSecureState:v4];
  }
}

- (void)_updateTrailingGlyph
{
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
  v4 = 1;
  if (_appliedSecureState > 6)
  {
    if ((_appliedSecureState - 7) >= 2)
    {
      if (_appliedSecureState != 9)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_3:
    v4 = -1;
    goto LABEL_8;
  }

  if (_appliedSecureState != 5)
  {
    if (_appliedSecureState != 6)
    {
      return;
    }

    goto LABEL_8;
  }

  if (![(SBLockElementViewProvider *)self _activelyWantsMatching])
  {
    goto LABEL_3;
  }

  if (self->_isAuthenticated)
  {
    return;
  }

  v4 = 0;
LABEL_8:
  trailingContentView = self->_trailingContentView;

  [(SBLockElementTrailingContentView *)trailingContentView setState:v4 animated:1];
}

- (int64_t)_resolvedEventForState:(int64_t)state
{
  if ([(SBLockElementViewProvider *)self _treatCustomAsLarge]&& (state - 1) < 3)
  {
    return state + 10;
  }

  else
  {
    return state;
  }
}

- (SAElementHosting)elementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_elementHost);

  return WeakRetained;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (void)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBLockElementViewProvider.m" lineNumber:110 description:@"It's probably not beneficial to use this when unsupported."];
}

- (void)setEmpty:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLockElementViewProvider.m" lineNumber:232 description:@"setEmpty should be changed when SBLockElementViewProvider is not registered with Jindo"];
}

@end