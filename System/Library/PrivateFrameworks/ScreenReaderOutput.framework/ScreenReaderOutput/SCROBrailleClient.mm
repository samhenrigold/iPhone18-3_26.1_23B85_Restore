@interface SCROBrailleClient
+ (id)statusAttributeDotText;
- (BOOL)alwaysUsesNemethCodeForTechnicalText;
- (BOOL)autoAdvanceEnabled;
- (BOOL)automaticBrailleTranslationEnabled;
- (BOOL)blinkEnabled;
- (BOOL)displayDescriptorCallbackEnabled;
- (BOOL)inputEightDotBraille;
- (BOOL)isBrailleUIActive;
- (BOOL)isCandidateSelectionOn;
- (BOOL)isConfigured;
- (BOOL)isWordDescriptionOn;
- (BOOL)showDotsSevenAndEight;
- (BOOL)showEightDotBraille;
- (BOOL)wordWrapEnabled;
- (SCROBrailleClient)initWithDelegate:(id)delegate;
- (_NSRange)rangeOfCellRepresentingCharacterAtIndex:(int64_t)index;
- (double)autoAdvanceDuration;
- (id)_getWorkingString;
- (id)_lazyConnection;
- (id)aggregatedStatus;
- (id)delegate;
- (id)driverConfiguration;
- (id)mainAttributedString;
- (id)mainCellsForVirtualDisplay:(unint64_t)display;
- (id)pendingAggregatedStatus;
- (id)pendingMainAttributedString;
- (id)tokenArray;
- (int)contractionMode;
- (int)displayMode;
- (int)inputContractionMode;
- (int)virtualStatusAlignment;
- (int64_t)masterStatusCellIndex;
- (int64_t)tokenForRouterIndex:(int64_t)index location:(int64_t *)location appToken:(id *)token forDisplayWithToken:(int)withToken;
- (unint64_t)loadVirtualDisplayWithMainSize:(int64_t)size;
- (unint64_t)numberOfTextLinesInPlanarBraille;
- (unsigned)persistentKeyModifiers;
- (void)_deathTimerHandler;
- (void)_refreshAfterReconnect;
- (void)_registerDelegate;
- (void)_setMutableAttributedAlertString:(id)string timeout:(double)timeout priority:(int)priority;
- (void)cancelCandidateSelection;
- (void)clearTimeoutAlert;
- (void)dealloc;
- (void)display;
- (void)displayIfNeeded;
- (void)endBrailleUIWithOptions:(id)options;
- (void)exitCurrentDisplayMode;
- (void)handleBrailleUIResponse:(id)response forRequest:(id)request;
- (void)handleCallback:(id)callback;
- (void)loadDisplayWithBluetoothDeviceAddress:(id)address;
- (void)loadTactileGraphicsDisplayWithBLEIdentifier:(id)identifier;
- (void)panDisplayBeginning:(int)beginning;
- (void)panDisplayEnd:(int)end;
- (void)panDisplayLeft:(int)left;
- (void)panDisplayRight:(int)right;
- (void)planarPanDisplayLeft:(int)left;
- (void)planarPanDisplayRight:(int)right;
- (void)processBrailleUICommand:(id)command;
- (void)removeDisplayWithBluetoothDeviceAddress:(id)address;
- (void)resetEditingManager;
- (void)selectAllForToken:(int64_t)token;
- (void)setAggregatedStatus:(id)status;
- (void)setAlertString:(id)string timeout:(double)timeout priority:(int)priority;
- (void)setAlwaysUsesNemethCodeForTechnicalText:(BOOL)text;
- (void)setAnnouncementString:(id)string;
- (void)setAnnouncementsDisplayMode;
- (void)setAttributedAlertString:(id)string timeout:(double)timeout priority:(int)priority;
- (void)setAttributedAnnouncementString:(id)string;
- (void)setAutoAdvanceDuration:(double)duration;
- (void)setAutoAdvanceEnabled:(BOOL)enabled;
- (void)setAutomaticBrailleTranslationEnabled:(BOOL)enabled;
- (void)setBlinkEnabled:(BOOL)enabled;
- (void)setBrailleChordDebounceTimeout:(double)timeout;
- (void)setBrailleMap:(id)map;
- (void)setContractionMode:(int)mode;
- (void)setDelegate:(id)delegate;
- (void)setDisplayDescriptorCallbackEnabled:(BOOL)enabled;
- (void)setExpandedStatusDisplayModeWithStatus:(id)status;
- (void)setFocused:(BOOL)focused forToken:(int64_t)token;
- (void)setInputContractionMode:(int)mode;
- (void)setInputEightDotBraille:(BOOL)braille;
- (void)setInputTableIdentifier:(id)identifier;
- (void)setKeepConnectionAlive:(BOOL)alive;
- (void)setLastUserInteractionTime:(double)time;
- (void)setMainAttributedString:(id)string;
- (void)setMasterStatusCellIndex:(int64_t)index;
- (void)setPersistentKeyModifiers:(unsigned int)modifiers;
- (void)setPlanarData:(id)data;
- (void)setPrepareToMemorizeNextKey:(BOOL)key immediate:(BOOL)immediate forDisplayWithToken:(int)token;
- (void)setPrimaryBrailleDisplay:(int)display;
- (void)setSelection:(_NSRange)selection forToken:(int64_t)token;
- (void)setShowDotsSevenAndEight:(BOOL)eight;
- (void)setShowEightDotBraille:(BOOL)braille;
- (void)setSingleKeyQuickNav:(BOOL)nav;
- (void)setSingleLetterInputIsOn:(BOOL)on;
- (void)setTableIdentifier:(id)identifier;
- (void)setTactileGraphicsImageData:(id)data;
- (void)setTextSearchModeIsOn:(BOOL)on;
- (void)setVirtualStatusAlignment:(int)alignment;
- (void)setWantsServerStayAliveAfterLastClientUnregisters:(BOOL)unregisters;
- (void)setWordWrapEnabled:(BOOL)enabled;
- (void)showNextAnnouncement;
- (void)showNextCandidate;
- (void)showNextWordDescription;
- (void)showPreviousAnnouncement;
- (void)showPreviousCandidate;
- (void)showPreviousWordDescription;
- (void)simulateKeypress:(id)keypress;
- (void)startBrailleUIWithOptions:(id)options;
- (void)systemVirtualDisplayPressKeyChord:(unint64_t)chord;
- (void)translateBrailleToClipboard;
- (void)unloadVirtualDisplay:(unint64_t)display;
- (void)unselectAllForToken:(int64_t)token;
- (void)virtualDisplay:(unint64_t)display pressButton:(unint64_t)button;
- (void)virtualDisplay:(unint64_t)display pressKeyChord:(unint64_t)chord;
- (void)virtualDisplay:(unint64_t)display pressRouterWithIndex:(unint64_t)index withSpace:(BOOL)space;
@end

@implementation SCROBrailleClient

- (SCROBrailleClient)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = SCROBrailleClient;
  v5 = [(SCROBrailleClient *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = objc_alloc(MEMORY[0x277D4B828]);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 initWithDescription:v10];
    threadKey = v5->_threadKey;
    v5->_threadKey = v11;

    v13 = [objc_alloc(MEMORY[0x277D4B820]) initWithTarget:v5 selector:sel__deathTimerHandler threadKey:v5->_threadKey];
    deathTimer = v5->_deathTimer;
    v5->_deathTimer = v13;

    [(SCROBrailleClient *)v5 setDelegate:delegateCopy];
  }

  return v5;
}

- (void)dealloc
{
  [(NSLock *)self->_lock lock];
  [(SCROConnection *)self->_connection invalidate];
  [(SCRCTargetSelectorTimer *)self->_deathTimer invalidate];
  [(SCRCTargetSelectorTimer *)self->_deathTimer invalidate];
  [(NSLock *)self->_lock unlock];
  v3.receiver = self;
  v3.super_class = SCROBrailleClient;
  [(SCROBrailleClient *)&v3 dealloc];
}

- (void)setKeepConnectionAlive:(BOOL)alive
{
  aliveCopy = alive;
  [(NSLock *)self->_lock lock];
  if (self->_keepConnectionAlive == aliveCopy)
  {
    [(NSLock *)self->_lock unlock];
    if (!aliveCopy)
    {
      return;
    }

LABEL_6:
    _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
    return;
  }

  self->_keepConnectionAlive = aliveCopy;
  deathTimer = self->_deathTimer;
  if (aliveCopy)
  {
    [(SCRCTargetSelectorTimer *)deathTimer cancel];
    [(NSLock *)self->_lock unlock];
    goto LABEL_6;
  }

  [(SCRCTargetSelectorTimer *)deathTimer dispatchAfterDelay:5.0];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_deathTimerHandler
{
  if (SCROBrailleClientLogMaskKey == 1)
  {
    NSLog(&cfstr_AttemptingToCl.isa, a2);
  }

  [(NSLock *)self->_lock lock];
  connection = self->_connection;
  if (connection && !self->_keepConnectionAlive)
  {
    v4 = [(SCROConnection *)connection handlerValueForKey:65];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 BOOLValue] & 1) == 0)
    {
      [(SCROConnection *)self->_connection invalidate];
      v5 = self->_connection;
      self->_connection = 0;

      self->_isReady = 0;
      if (SCROBrailleClientLogMaskKey == 1)
      {
        NSLog(&cfstr_BrailleConnect.isa);
      }
    }

    else
    {
      [(SCRCTargetSelectorTimer *)self->_deathTimer dispatchAfterDelay:5.0];
    }
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setWantsServerStayAliveAfterLastClientUnregisters:(BOOL)unregisters
{
  unregistersCopy = unregisters;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:unregistersCopy];
  [_lazyConnection setHandlerValue:v4 forKey:107];
}

- (id)_lazyConnection
{
  lock = self->_lock;
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v4 dateByAddingTimeInterval:30.0];
  LODWORD(lock) = [(NSLock *)lock lockBeforeDate:v5];

  if (lock)
  {
    connection = self->_connection;
    if (!connection)
    {
      self->_isReady = 0;
      if (SCROBrailleClientLogMaskKey == 1)
      {
        NSLog(&cfstr_AttemptingToOp.isa);
      }

      v7 = [objc_alloc(-[SCROBrailleClient connectionClass](self "connectionClass"))];
      v8 = self->_connection;
      self->_connection = v7;

      connection = self->_connection;
    }

    v9 = connection;
    if (!self->_keepConnectionAlive)
    {
      [(SCRCTargetSelectorTimer *)self->_deathTimer dispatchAfterDelay:5.0];
    }

    [(NSLock *)self->_lock unlock];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_registerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(NSLock *)self->_lock lock];
    [(SCROConnection *)self->_connection registerHandlerCallbackForKey:80];
    v4 = _SCROD_LOG([(SCROConnection *)self->_connection registerHandlerCallbackForKey:82]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v63 = 0;
      _os_log_impl(&dword_26490B000, v4, OS_LOG_TYPE_DEFAULT, "[SCROBrailleClient _registerDelegate] Register callback: 'Display Configuration Changed'", v63, 2u);
    }

    [(SCROConnection *)self->_connection registerHandlerCallbackForKey:78];
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      self->_wantsDisconnectMessage = 1;
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      self->_wantsReconnectMessage = 1;
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      self->_wantsDisplayConfigurationChanged = 1;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      self->_delegateWantsKeypresses = 1;
    }

    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      self->_delegateWantsReplaceTextRange = 1;
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:83];
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:81];
    }

    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:84];
    }

    v21 = objc_loadWeakRetained(&self->_delegate);
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:85];
    }

    v23 = objc_loadWeakRetained(&self->_delegate);
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:86];
    }

    v25 = objc_loadWeakRetained(&self->_delegate);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:87];
    }

    v27 = objc_loadWeakRetained(&self->_delegate);
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:88];
    }

    v29 = objc_loadWeakRetained(&self->_delegate);
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:89];
    }

    v31 = objc_loadWeakRetained(&self->_delegate);
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:90];
    }

    v33 = objc_loadWeakRetained(&self->_delegate);
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:91];
    }

    v35 = objc_loadWeakRetained(&self->_delegate);
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:92];
    }

    v37 = objc_loadWeakRetained(&self->_delegate);
    v38 = objc_opt_respondsToSelector();

    if (v38)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:93];
    }

    v39 = objc_loadWeakRetained(&self->_delegate);
    v40 = objc_opt_respondsToSelector();

    if (v40)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:96];
    }

    v41 = objc_loadWeakRetained(&self->_delegate);
    v42 = objc_opt_respondsToSelector();

    if (v42)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:94];
    }

    v43 = objc_loadWeakRetained(&self->_delegate);
    v44 = objc_opt_respondsToSelector();

    if (v44)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:95];
    }

    v45 = objc_loadWeakRetained(&self->_delegate);
    v46 = objc_opt_respondsToSelector();

    if (v46)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:97];
    }

    v47 = objc_loadWeakRetained(&self->_delegate);
    v48 = objc_opt_respondsToSelector();

    if (v48)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:79];
    }

    v49 = objc_loadWeakRetained(&self->_delegate);
    v50 = objc_opt_respondsToSelector();

    if (v50)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:98];
    }

    v51 = objc_loadWeakRetained(&self->_delegate);
    v52 = objc_opt_respondsToSelector();

    if (v52)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:99];
    }

    v53 = objc_loadWeakRetained(&self->_delegate);
    v54 = objc_opt_respondsToSelector();

    if (v54)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:100];
    }

    v55 = objc_loadWeakRetained(&self->_delegate);
    v56 = objc_opt_respondsToSelector();

    if (v56)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:101];
    }

    v57 = objc_loadWeakRetained(&self->_delegate);
    v58 = objc_opt_respondsToSelector();

    if (v58)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:103];
    }

    v59 = objc_loadWeakRetained(&self->_delegate);
    v60 = objc_opt_respondsToSelector();

    if (v60)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:104];
    }

    v61 = objc_loadWeakRetained(&self->_delegate);
    v62 = objc_opt_respondsToSelector();

    if (v62)
    {
      [(SCROConnection *)self->_connection registerHandlerCallbackForKey:102];
    }

    [(NSLock *)self->_lock unlock];
  }
}

- (void)setDelegate:(id)delegate
{
  v9 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = _SCROD_LOG(delegateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = delegateCopy;
    _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "[SCROBrailleClient setDelegate:%@]", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    [(SCROBrailleClient *)self _registerDelegate];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadDisplayWithBluetoothDeviceAddress:(id)address
{
  addressCopy = address;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:addressCopy forKey:25];
}

- (void)loadTactileGraphicsDisplayWithBLEIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:identifierCopy forKey:27];
}

- (void)removeDisplayWithBluetoothDeviceAddress:(id)address
{
  addressCopy = address;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:addressCopy forKey:26];
}

- (void)setTableIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:identifierCopy forKey:28];
}

- (void)setInputTableIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:identifierCopy forKey:29];
}

- (void)setAlwaysUsesNemethCodeForTechnicalText:(BOOL)text
{
  textCopy = text;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:textCopy];
  [_lazyConnection setHandlerValue:v4 forKey:30];
}

- (BOOL)alwaysUsesNemethCodeForTechnicalText
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:30];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isConfigured
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:65];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)driverConfiguration
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerArrayValueForKey:67];

  return v3;
}

- (void)setMainAttributedString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] > 0x1000)
  {
    v4 = [stringCopy attributedSubstringFromRange:{0, 4096}];

    stringCopy = v4;
  }

  [(NSLock *)self->_lock lock];
  self->_needsDisplay = [(NSMutableAttributedString *)self->_mainStringPending isEqual:stringCopy]^ 1;
  v5 = [stringCopy mutableCopy];
  mainStringPending = self->_mainStringPending;
  self->_mainStringPending = v5;

  [(NSLock *)self->_lock unlock];
}

- (id)pendingMainAttributedString
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableAttributedString *)self->_mainStringPending copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)mainAttributedString
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:31];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAnnouncementString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:stringCopy];
    [(SCROBrailleClient *)self setAttributedAnnouncementString:v4];
  }
}

- (void)setAttributedAnnouncementString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    [(SCROBrailleClient *)self setMainAttributedString:stringCopy];
  }
}

- (void)setAlertString:(id)string timeout:(double)timeout priority:(int)priority
{
  v5 = *&priority;
  stringCopy = string;
  if ([stringCopy length])
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy];
    [(SCROBrailleClient *)self _setMutableAttributedAlertString:v8 timeout:v5 priority:timeout];
  }
}

- (void)setAttributedAlertString:(id)string timeout:(double)timeout priority:(int)priority
{
  v5 = *&priority;
  v8 = [string mutableCopy];
  [(SCROBrailleClient *)self _setMutableAttributedAlertString:v8 timeout:v5 priority:timeout];
}

- (void)_setMutableAttributedAlertString:(id)string timeout:(double)timeout priority:(int)priority
{
  v5 = *&priority;
  stringCopy = string;
  if ([stringCopy length])
  {
    [stringCopy addAttribute:kSCROAlertAttribute[0] value:MEMORY[0x277CBEC38] range:{0, 1}];
    v8 = kSCROAlertTimeoutAttribute[0];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
    [stringCopy addAttribute:v8 value:v9 range:{0, 1}];

    v10 = kSCROAlertPriorityAttribute[0];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [stringCopy addAttribute:v10 value:v11 range:{0, 1}];

    [(SCROBrailleClient *)self setMainAttributedString:stringCopy];
  }
}

- (void)clearTimeoutAlert
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:12];
}

- (void)setAggregatedStatus:(id)status
{
  statusCopy = status;
  [(NSLock *)self->_lock lock];
  self->_needsDisplay = [(NSData *)self->_aggregatedStatusPending isEqual:statusCopy]^ 1;
  aggregatedStatusPending = self->_aggregatedStatusPending;
  self->_aggregatedStatusPending = statusCopy;
  v6 = statusCopy;

  [(NSLock *)self->_lock unlock];
}

- (id)pendingAggregatedStatus
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSData *)self->_aggregatedStatusPending copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)aggregatedStatus
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:40];

  return v3;
}

- (void)setVirtualStatusAlignment:(int)alignment
{
  v3 = *&alignment;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [_lazyConnection setHandlerValue:v4 forKey:41];
}

- (int)virtualStatusAlignment
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:41];
  intValue = [v3 intValue];

  return intValue;
}

- (void)setMasterStatusCellIndex:(int64_t)index
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [_lazyConnection setHandlerValue:v4 forKey:42];
}

- (int64_t)masterStatusCellIndex
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:42];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setShowDotsSevenAndEight:(BOOL)eight
{
  eightCopy = eight;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:eightCopy];
  [_lazyConnection setHandlerValue:v4 forKey:33];
}

- (BOOL)showDotsSevenAndEight
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:33];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setContractionMode:(int)mode
{
  v3 = *&mode;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [_lazyConnection setHandlerValue:v4 forKey:37];
}

- (int)contractionMode
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:37];
  intValue = [v3 intValue];

  return intValue;
}

- (void)setInputEightDotBraille:(BOOL)braille
{
  brailleCopy = braille;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:brailleCopy];
  [_lazyConnection setHandlerValue:v4 forKey:35];
}

- (BOOL)inputEightDotBraille
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:35];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setShowEightDotBraille:(BOOL)braille
{
  brailleCopy = braille;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:brailleCopy];
  [_lazyConnection setHandlerValue:v4 forKey:34];
}

- (BOOL)showEightDotBraille
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:34];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setInputContractionMode:(int)mode
{
  v3 = *&mode;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [_lazyConnection setHandlerValue:v4 forKey:38];
}

- (int)inputContractionMode
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:38];
  intValue = [v3 intValue];

  return intValue;
}

- (void)setAutomaticBrailleTranslationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [_lazyConnection setHandlerValue:v4 forKey:36];
}

- (BOOL)automaticBrailleTranslationEnabled
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:36];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setWordWrapEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [_lazyConnection setHandlerValue:v4 forKey:44];
}

- (BOOL)wordWrapEnabled
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:44];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setAutoAdvanceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [_lazyConnection setHandlerValue:v4 forKey:45];
}

- (BOOL)autoAdvanceEnabled
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:45];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setAutoAdvanceDuration:(double)duration
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  [_lazyConnection setHandlerValue:v4 forKey:46];
}

- (double)autoAdvanceDuration
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:46];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setBlinkEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [_lazyConnection setHandlerValue:v4 forKey:47];
}

- (BOOL)blinkEnabled
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:47];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setTactileGraphicsImageData:(id)data
{
  dataCopy = data;
  v5 = [[SCRO2DBrailleData alloc] initWithImageData:dataCopy];

  [(SCROBrailleClient *)self setPlanarData:v5];
}

- (void)setBrailleMap:(id)map
{
  mapCopy = map;
  data = [MEMORY[0x277CBEB28] data];
  [mapCopy dimensions];
  if (v6 > 0.0)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      [mapCopy dimensions];
      if (v9 > 0.0)
      {
        v10 = 0.0;
        v11 = 1;
        do
        {
          [mapCopy heightAtPoint:{v10, v8}];
          v15 = v12;
          [data appendBytes:&v15 length:1];
          v10 = v11;
          [mapCopy dimensions];
          ++v11;
        }

        while (v13 > v10);
      }

      v8 = ++v7;
      [mapCopy dimensions];
    }

    while (v14 > v7);
  }

  [(SCROBrailleClient *)self setTactileGraphicsImageData:data];
}

- (void)setPlanarData:(id)data
{
  dataCopy = data;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:dataCopy forKey:50];

  v7 = _SCROD_LOG(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_INFO, "Sending 2D Braille data", v8, 2u);
  }
}

- (unint64_t)numberOfTextLinesInPlanarBraille
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:72];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int)displayMode
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:68];
  intValue = [v3 intValue];

  return intValue;
}

- (unsigned)persistentKeyModifiers
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:43];
  intValue = [v3 intValue];

  return intValue;
}

- (void)setPersistentKeyModifiers:(unsigned int)modifiers
{
  v3 = *&modifiers;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [_lazyConnection setHandlerValue:v4 forKey:43];
}

- (void)setLastUserInteractionTime:(double)time
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  [_lazyConnection setHandlerValue:v4 forKey:48];
}

- (void)setExpandedStatusDisplayModeWithStatus:(id)status
{
  if (status)
  {
    v4 = MEMORY[0x277CCAB48];
    statusCopy = status;
    v6 = [[v4 alloc] initWithString:@" "];
    [v6 addAttribute:kSCROStatusAttribute[0] value:statusCopy range:{0, 1}];

    [(SCROBrailleClient *)self setMainAttributedString:v6];
  }
}

- (void)setAnnouncementsDisplayMode
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:6];
}

- (void)exitCurrentDisplayMode
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:9];
}

- (void)setDisplayDescriptorCallbackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(NSLock *)self->_lock lock];
  self->_displayDescriptorCallbackEnabled = enabledCopy;
  connection = self->_connection;
  lock = self->_lock;
  if (connection)
  {
    v7 = 1;
  }

  else
  {
    v7 = !enabledCopy;
  }

  if (!v7)
  {
    [(NSLock *)self->_lock unlock];
    _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [_lazyConnection setHandlerValue:v9 forKey:39];

LABEL_8:

    return;
  }

  if (connection)
  {
    v8 = connection;
    [(NSLock *)lock unlock];
    _lazyConnection = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    [(SCROConnection *)v8 setHandlerValue:_lazyConnection forKey:39];

    goto LABEL_8;
  }

  v10 = self->_lock;

  [(NSLock *)v10 unlock];
}

- (BOOL)displayDescriptorCallbackEnabled
{
  [(NSLock *)self->_lock lock];
  connection = self->_connection;
  lock = self->_lock;
  v5 = connection;
  [(NSLock *)lock unlock];
  v6 = [(SCROConnection *)v5 handlerValueForKey:39];

  LOBYTE(v5) = [v6 BOOLValue];
  return v5;
}

- (int64_t)tokenForRouterIndex:(int64_t)index location:(int64_t *)location appToken:(id *)token forDisplayWithToken:(int)withToken
{
  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:withToken];
  v14 = [v11 initWithObjectsAndKeys:{v12, @"index", v13, @"displayToken", 0}];

  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v16 = [_lazyConnection handlerValueForKey:66 withObject:v14];

  v17 = [v16 objectForKey:kSCROBrailleRouterKeyLocation];
  *location = [v17 integerValue];

  *token = [v16 objectForKey:kSCROBrailleRouterKeyAppToken[0]];
  v18 = [v16 objectForKey:kSCROBrailleRouterKeyToken[0]];
  integerValue = [v18 integerValue];

  return integerValue;
}

- (id)_getWorkingString
{
  [(NSLock *)self->_lock lock];
  mainStringPending = self->_mainStringPending;
  if (mainStringPending || (mainStringPending = self->_mainStringCache) != 0)
  {
    mainAttributedString = [(NSMutableAttributedString *)mainStringPending copy];
  }

  else
  {
    mainAttributedString = 0;
  }

  [(NSLock *)self->_lock unlock];
  if (!mainAttributedString)
  {
    mainAttributedString = [(SCROBrailleClient *)self mainAttributedString];
  }

  return mainAttributedString;
}

- (id)tokenArray
{
  _getWorkingString = [(SCROBrailleClient *)self _getWorkingString];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [_getWorkingString length];
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [_getWorkingString attribute:kSCROTokenAttribute[0] atIndex:v6 longestEffectiveRange:&v10 inRange:{v6, v5}];
      if (v7)
      {
        [array addObject:v7];
      }

      v8 = v11 + v10;
      v5 = v6 + v5 - (v11 + v10);

      v6 = v8;
    }

    while (v5);
  }

  return array;
}

- (_NSRange)rangeOfCellRepresentingCharacterAtIndex:(int64_t)index
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v6 = [_lazyConnection handlerValueForKey:69 withObject:v5];

  rangeValue = [v6 rangeValue];
  v9 = v8;

  v10 = rangeValue;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)setSelection:(_NSRange)selection forToken:(int64_t)token
{
  length = selection.length;
  location = selection.location;
  v17.location = 0;
  v17.length = 0;
  _getWorkingString = [(SCROBrailleClient *)self _getWorkingString];
  v9 = [_getWorkingString mutableCopy];

  v10 = kSCROTokenAttribute[0];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:token];
  LODWORD(v10) = [v9 getRange:&v17 ofAttribute:v10 withValue:v11];

  if (v10)
  {
    [v9 removeAttribute:kSCROSelectionAttribute[0] range:{v17.location, v17.length}];
    [v9 removeAttribute:kSCROCursorAttribute[0] range:{v17.location, v17.length}];
    v12 = v17;
    if (length <= 1)
    {
      v13.length = 1;
    }

    else
    {
      v13.length = length;
    }

    v13.location = v17.location + location;
    v14 = NSIntersectionRange(v13, v12);
    if (length)
    {
      v15 = kSCROSelectionAttribute;
    }

    else
    {
      v15 = kSCROCursorAttribute;
    }

    v16 = *v15;
    if (v14.length)
    {
      [v9 addAttribute:v16 value:MEMORY[0x277CBEC38] range:{v14.location, v14.length}];
    }

    [(SCROBrailleClient *)self setMainAttributedString:v9];
  }
}

- (void)selectAllForToken:(int64_t)token
{
  v9 = 0;
  v10 = 0;
  _getWorkingString = [(SCROBrailleClient *)self _getWorkingString];
  v6 = [_getWorkingString mutableCopy];

  v7 = kSCROTokenAttribute[0];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:token];
  LODWORD(v7) = [v6 getRange:&v9 ofAttribute:v7 withValue:v8];

  if (v7)
  {
    [v6 addAttribute:kSCROSelectionAttribute[0] value:MEMORY[0x277CBEC38] range:{v9, v10}];
    [(SCROBrailleClient *)self setMainAttributedString:v6];
  }
}

- (void)unselectAllForToken:(int64_t)token
{
  v9 = 0;
  v10 = 0;
  _getWorkingString = [(SCROBrailleClient *)self _getWorkingString];
  v6 = [_getWorkingString mutableCopy];

  v7 = kSCROTokenAttribute[0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:token];
  LODWORD(v7) = [v6 getRange:&v9 ofAttribute:v7 withValue:v8];

  if (v7)
  {
    [v6 removeAttribute:kSCROCursorAttribute[0] range:{v9, v10}];
    [v6 removeAttribute:kSCROSelectionAttribute[0] range:{v9, v10}];
    [(SCROBrailleClient *)self setMainAttributedString:v6];
  }
}

- (void)setFocused:(BOOL)focused forToken:(int64_t)token
{
  focusedCopy = focused;
  v11 = 0;
  v12 = 0;
  _getWorkingString = [(SCROBrailleClient *)self _getWorkingString];
  v8 = [_getWorkingString mutableCopy];

  v9 = kSCROTokenAttribute[0];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:token];
  LODWORD(v9) = [v8 getRange:&v11 ofAttribute:v9 withValue:v10];

  if (v9)
  {
    if (focusedCopy)
    {
      [v8 addAttribute:kSCROFocusedAttribute[0] value:MEMORY[0x277CBEC38] range:{v11, v12}];
    }

    else
    {
      [v8 removeAttribute:kSCROFocusedAttribute[0] range:{v11, v12}];
    }

    [(SCROBrailleClient *)self setMainAttributedString:v8];
  }
}

- (void)displayIfNeeded
{
  if ([(SCROBrailleClient *)self needsDisplay])
  {

    [(SCROBrailleClient *)self display];
  }
}

- (void)display
{
  v8 = [[SCROEvent alloc] initForHandlerType:1];
  [(NSLock *)self->_lock lock];
  mainStringPending = self->_mainStringPending;
  if (mainStringPending)
  {
    [v8 requestSetValue:self->_mainStringPending forKey:31];
    objc_storeStrong(&self->_mainStringCache, self->_mainStringPending);
    v4 = self->_mainStringPending;
    self->_mainStringPending = 0;
  }

  aggregatedStatusPending = self->_aggregatedStatusPending;
  if (aggregatedStatusPending)
  {
    [v8 requestSetValue:aggregatedStatusPending forKey:40];
    objc_storeStrong(&self->_aggregatedStatusCache, self->_aggregatedStatusPending);
    v6 = self->_aggregatedStatusPending;
    self->_aggregatedStatusPending = 0;

    [(NSLock *)self->_lock unlock];
  }

  else
  {
    [(NSLock *)self->_lock unlock];
    if (!mainStringPending)
    {
      goto LABEL_7;
    }
  }

  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection sendEvent:v8];

LABEL_7:
}

- (void)simulateKeypress:(id)keypress
{
  keypressCopy = keypress;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:keypressCopy forKey:56];
}

- (void)panDisplayLeft:(int)left
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:left];
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v5 forKey:52];
}

- (void)panDisplayRight:(int)right
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:right];
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v5 forKey:53];
}

- (void)panDisplayBeginning:(int)beginning
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:beginning];
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v5 forKey:54];
}

- (void)panDisplayEnd:(int)end
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:end];
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v5 forKey:55];
}

- (void)planarPanDisplayLeft:(int)left
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:left];
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v5 forKey:63];
}

- (void)planarPanDisplayRight:(int)right
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:right];
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v5 forKey:64];
}

- (void)showPreviousAnnouncement
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:8];
}

- (void)showNextAnnouncement
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:7];
}

- (BOOL)isCandidateSelectionOn
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:70];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)cancelCandidateSelection
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:13];
}

- (void)showPreviousCandidate
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:14];
}

- (void)showNextCandidate
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:15];
}

- (BOOL)isWordDescriptionOn
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:71];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)showPreviousWordDescription
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:16];
}

- (void)showNextWordDescription
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:17];
}

- (void)startBrailleUIWithOptions:(id)options
{
  optionsCopy = options;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:optionsCopy forKey:73];
}

- (void)endBrailleUIWithOptions:(id)options
{
  optionsCopy = options;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:optionsCopy forKey:74];
}

- (void)handleBrailleUIResponse:(id)response forRequest:(id)request
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"response";
  v11[1] = @"request";
  v12[0] = response;
  v12[1] = request;
  v6 = MEMORY[0x277CBEAC0];
  requestCopy = request;
  responseCopy = response;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:v11 count:2];

  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v9 forKey:75];
}

- (void)processBrailleUICommand:(id)command
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"command";
  v9[0] = command;
  v4 = MEMORY[0x277CBEAC0];
  commandCopy = command;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v6 forKey:76];
}

- (BOOL)isBrailleUIActive
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v3 = [_lazyConnection handlerValueForKey:77];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (unint64_t)loadVirtualDisplayWithMainSize:(int64_t)size
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:size];
  v6 = [_lazyConnection handlerValueForKey:19 withObject:v5];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)unloadVirtualDisplay:(unint64_t)display
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:display];
  [_lazyConnection setHandlerValue:v4 forKey:18];
}

- (id)mainCellsForVirtualDisplay:(unint64_t)display
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:display];
  v6 = [_lazyConnection handlerValueForKey:20 withObject:v5];

  return v6;
}

- (void)virtualDisplay:(unint64_t)display pressButton:(unint64_t)button
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"displayToken";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:display];
  v10[1] = @"button";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:button];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v8 forKey:21];
}

- (void)virtualDisplay:(unint64_t)display pressKeyChord:(unint64_t)chord
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"displayToken";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:display];
  v10[1] = @"keyChord";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:chord];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v8 forKey:22];
}

- (void)systemVirtualDisplayPressKeyChord:(unint64_t)chord
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:chord];
  [_lazyConnection setHandlerValue:v4 forKey:24];
}

- (void)virtualDisplay:(unint64_t)display pressRouterWithIndex:(unint64_t)index withSpace:(BOOL)space
{
  spaceCopy = space;
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"displayToken";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:display];
  v14[0] = v8;
  v13[1] = @"index";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v14[1] = v9;
  v13[2] = @"withSpace";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:spaceCopy];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v11 forKey:23];
}

- (void)setPrepareToMemorizeNextKey:(BOOL)key immediate:(BOOL)immediate forDisplayWithToken:(int)token
{
  immediateCopy = immediate;
  keyCopy = key;
  v9 = objc_alloc(MEMORY[0x277CBEAC0]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:keyCopy];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:immediateCopy];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:token];
  v14 = [v9 initWithObjectsAndKeys:{v10, @"prepare", v11, @"immediate", v12, @"displayToken", 0}];

  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v14 forKey:57];
}

- (void)setPrimaryBrailleDisplay:(int)display
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:display];
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection setHandlerValue:v5 forKey:58];
}

- (void)resetEditingManager
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:11];
}

- (void)handleCallback:(id)callback
{
  v39 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = [callbackCopy key];
  switch(v5)
  {
    case 'N':
      [(NSLock *)self->_lock lock];
      if (!self->_keepConnectionAlive)
      {
        [(SCRCTargetSelectorTimer *)self->_deathTimer dispatchAfterDelay:5.0];
      }

      v6 = _SCROD_LOG([(NSLock *)self->_lock unlock]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        wantsDisplayConfigurationChanged = self->_wantsDisplayConfigurationChanged;
        object = [callbackCopy object];
        v36[0] = 67109378;
        v36[1] = wantsDisplayConfigurationChanged;
        v37 = 2112;
        v38 = object;
        _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "[SCROBrailleClient handleCallback:] Call delegate's config change handler; Delegate wants == %d, isConfigured == %@", v36, 0x12u);
      }

      if (self->_wantsDisplayConfigurationChanged)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        object2 = [callbackCopy object];
        [WeakRetained handleBrailleConfigurationChanged:object2];
        goto LABEL_50;
      }

      goto LABEL_52;
    case 'O':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleBrailleTableFailedToLoad:object2];
      goto LABEL_50;
    case 'P':
      if (!self->_delegateWantsKeypresses)
      {
        goto LABEL_52;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleBrailleKeypress:object2];
      goto LABEL_50;
    case 'Q':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleUserEventOccured];
      goto LABEL_51;
    case 'R':
      if (!self->_delegateWantsReplaceTextRange)
      {
        goto LABEL_52;
      }

      object3 = [callbackCopy object];
      v12 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackReplaceTextRange_RangeKey];
      rangeValue = [v12 rangeValue];
      v15 = v14;

      v16 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackReplaceTextRange_StringKey];
      v17 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackReplaceTextRange_CursorKey];
      unsignedIntegerValue = [v17 unsignedIntegerValue];

      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 handleBrailleReplaceTextRange:rangeValue withString:v15 cursor:{v16, unsignedIntegerValue}];
      goto LABEL_41;
    case 'S':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleBrailleStartEditing];
      goto LABEL_51;
    case 'T':
      object3 = [callbackCopy object];
      v16 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpokenTextKey];
      v30 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpeakLiterallyKey];
      bOOLValue = [v30 BOOLValue];

      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 handleBrailleInsertedUntranslatedText:v16 speakLiterally:bOOLValue];
      goto LABEL_41;
    case 'U':
      object3 = [callbackCopy object];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_46;
      }

      v16 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpokenTextKey];
      v28 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpeakLiterallyKey];
      bOOLValue2 = [v28 BOOLValue];

      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 handleBrailleDeletedUntranslatedText:v16 speakLiterally:bOOLValue2];
LABEL_41:

LABEL_45:
      goto LABEL_46;
    case 'V':
      object3 = [callbackCopy object];
      v16 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_SpokenTextKey];
      v32 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_LanguageKey];
      v33 = [object3 objectForKeyedSubscript:kSCROBrailleCallbackSpeechFeedback_ShouldQueueKey];
      bOOLValue3 = [v33 BOOLValue];

      v35 = objc_loadWeakRetained(&self->_delegate);
      [v35 handleBrailleSpeechRequest:v16 language:v32 shouldQueue:bOOLValue3];

      goto LABEL_45;
    case 'W':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleBrailleKeyWillMemorize:object2];
      goto LABEL_50;
    case 'X':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleBrailleKeyMemorize:object2];
      goto LABEL_50;
    case 'Y':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleBrailleDidDisplay:object2];
      goto LABEL_50;
    case 'Z':
      object3 = [callbackCopy object];
      v23 = objc_loadWeakRetained(&self->_delegate);
      v24 = [object3 objectForKey:@"success"];
      v25 = [object3 objectForKey:@"token"];
      v26 = [object3 objectForKey:@"appToken"];
      v27 = [object3 objectForKeyedSubscript:@"lineOffset"];
      [v23 handleBrailleDidPanLeft:v24 elementToken:v25 appToken:v26 lineOffset:v27];
      goto LABEL_38;
    case '[':
      object3 = [callbackCopy object];
      v23 = objc_loadWeakRetained(&self->_delegate);
      v24 = [object3 objectForKey:@"success"];
      v25 = [object3 objectForKey:@"token"];
      v26 = [object3 objectForKey:@"appToken"];
      v27 = [object3 objectForKeyedSubscript:@"lineOffset"];
      [v23 handleBrailleDidPanRight:v24 elementToken:v25 appToken:v26 lineOffset:v27];
LABEL_38:

      goto LABEL_39;
    case '\\':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleBrailleDidShowPreviousAnnouncement:object2];
      goto LABEL_50;
    case ']':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleBrailleDidShowNextAnnouncement:object2];
      goto LABEL_50;
    case '^':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleBraillePlayBorderHitSound];
      goto LABEL_51;
    case '_':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleBraillePlayCommandNotSupportedSound];
      goto LABEL_51;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleBraillePlayDisplayConnectionSound:object2];
      goto LABEL_50;
    case 'a':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleFailedToLoadBluetoothDevice:object2];
      goto LABEL_50;
    case 'b':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleDisplayModeChanged:object2];
      goto LABEL_50;
    case 'c':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleBrailleDisplayCopyStringToClipboard:object2];
      goto LABEL_50;
    case 'd':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handleTactileGraphicsCanvasDidChange:object2];
      goto LABEL_50;
    case 'e':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      object2 = [callbackCopy object];
      [WeakRetained handlePlanarPanFailedIsLeft:{objc_msgSend(object2, "BOOLValue")}];
LABEL_50:

      goto LABEL_51;
    case 'f':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleDidBrailleUIStart];
      goto LABEL_51;
    case 'g':
      object3 = [callbackCopy object];
      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 handleBrailleUIRequest:object3];
LABEL_39:

      goto LABEL_46;
    case 'h':
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained handleDidBrailleUIEnd];
LABEL_51:

      goto LABEL_52;
    default:
      if (v5 == 3)
      {
        v20 = _SCROD_LOG(v5);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36[0]) = 0;
          _os_log_impl(&dword_26490B000, v20, OS_LOG_TYPE_DEFAULT, "[SCROBrailleClient handleCallback:] for key CallbackConnect", v36, 2u);
        }

        [(NSLock *)self->_lock lock];
        object4 = [callbackCopy object];
        connection = self->_connection;

        [(NSLock *)self->_lock unlock];
        if (object4 == connection)
        {
          self->_isReady = 1;
          [(SCROBrailleClient *)self _registerDelegate];
          [(SCROBrailleClient *)self _refreshAfterReconnect];
          if (self->_wantsReconnectMessage)
          {
            object3 = objc_loadWeakRetained(&self->_delegate);
            [object3 handleBrailleDidReconnect:self];
            goto LABEL_46;
          }
        }
      }

      else if (v5 == 4)
      {
        self->_isReady = 0;
        if (self->_wantsDisconnectMessage)
        {
          object3 = objc_loadWeakRetained(&self->_delegate);
          [object3 handleBrailleDidDisconnect:self];
LABEL_46:
        }
      }

LABEL_52:

      return;
  }
}

- (void)_refreshAfterReconnect
{
  [(NSLock *)self->_lock lock];
  if (!self->_mainStringPending)
  {
    objc_storeStrong(&self->_mainStringPending, self->_mainStringCache);
  }

  if (!self->_aggregatedStatusPending)
  {
    objc_storeStrong(&self->_aggregatedStatusPending, self->_aggregatedStatusCache);
  }

  displayDescriptorCallbackEnabled = self->_displayDescriptorCallbackEnabled;
  [(NSLock *)self->_lock unlock];
  [(SCROBrailleClient *)self display];
  if (displayDescriptorCallbackEnabled)
  {

    [(SCROBrailleClient *)self setDisplayDescriptorCallbackEnabled:1];
  }
}

- (void)setSingleKeyQuickNav:(BOOL)nav
{
  navCopy = nav;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:navCopy];
  [_lazyConnection setHandlerValue:v4 forKey:59];
}

- (void)setSingleLetterInputIsOn:(BOOL)on
{
  onCopy = on;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:onCopy];
  [_lazyConnection setHandlerValue:v4 forKey:60];
}

- (void)setTextSearchModeIsOn:(BOOL)on
{
  onCopy = on;
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:onCopy];
  [_lazyConnection setHandlerValue:v4 forKey:61];
}

- (void)setBrailleChordDebounceTimeout:(double)timeout
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
  [_lazyConnection setHandlerValue:v4 forKey:62];
}

+ (id)statusAttributeDotText
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  for (i = 0; i != 8; ++i)
  {
    [v2 addObject:kSCROStatusAttributeDotText[i]];
  }

  return v2;
}

- (void)translateBrailleToClipboard
{
  _lazyConnection = [(SCROBrailleClient *)self _lazyConnection];
  [_lazyConnection performHandlerActionForKey:10];
}

@end