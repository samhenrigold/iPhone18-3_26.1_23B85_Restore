@interface SCROBrailleHandler
- (SCROBrailleHandler)initWithBrailleDisplayManager:(id)manager;
- (int)handleGetValue:(id *)value forKey:(int)key withObject:(id)object trusted:(BOOL)trusted;
- (int)handlePerformActionForKey:(int)key trusted:(BOOL)trusted;
- (int)handleRegisterCallbackForKey:(int)key trusted:(BOOL)trusted;
- (int)handleSetValue:(id)value forKey:(int)key trusted:(BOOL)trusted;
- (void)configurationDidChange;
- (void)handleBrailleDeletedUntranslatedText:(id)text speakLiterally:(BOOL)literally;
- (void)handleBrailleDidDisplay:(id)display;
- (void)handleBrailleDidPanLeft:(id)left elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset;
- (void)handleBrailleDidPanRight:(id)right elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset;
- (void)handleBrailleDidShowNextAnnouncement:(id)announcement;
- (void)handleBrailleDidShowPreviousAnnouncement:(id)announcement;
- (void)handleBrailleDriverDidLoad;
- (void)handleBrailleDriverDisconnected;
- (void)handleBrailleInsertedUntranslatedText:(id)text speakLiterally:(BOOL)literally;
- (void)handleBrailleKeyMemorize:(id)memorize;
- (void)handleBrailleKeyWillMemorize:(id)memorize;
- (void)handleBrailleKeypress:(id)keypress;
- (void)handleBrailleReplaceTextRange:(_NSRange)range withString:(id)string cursor:(unint64_t)cursor;
- (void)handleBrailleSpeechRequest:(id)request language:(id)language shouldQueue:(BOOL)queue;
- (void)handleBrailleTableFailedToLoad:(id)load;
- (void)handleBrailleUIRequest:(id)request;
- (void)handleCopyStringToClipboard:(id)clipboard;
- (void)handleDidBrailleUIEnd;
- (void)handleDidBrailleUIStart;
- (void)handleDisplayModeChanged:(id)changed;
- (void)handleFailedToLoadBluetoothDevice:(id)device;
- (void)handlePlanarPanFailedIsLeft:(BOOL)left;
- (void)handlePlayBorderHitSound;
- (void)handlePlayCommandNotSupportedSound;
- (void)handleStartEditing;
- (void)handleTacticalGraphicsCanvasDidChange:(id)change;
- (void)handleUserEventOccured;
- (void)invalidate;
@end

@implementation SCROBrailleHandler

- (SCROBrailleHandler)initWithBrailleDisplayManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SCROBrailleHandler;
  v6 = [(SCROHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_brailleDisplayManager, manager);
    [(SCROBrailleDisplayManager *)v7->_brailleDisplayManager setDelegate:v7];
  }

  return v7;
}

- (void)invalidate
{
  [(SCROBrailleDisplayManager *)self->_brailleDisplayManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = SCROBrailleHandler;
  [(SCROHandler *)&v3 invalidate];
}

- (int)handleRegisterCallbackForKey:(int)key trusted:(BOOL)trusted
{
  switch(key)
  {
    case 'N':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.configChanged = 1;
      break;
    case 'O':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.tableLoadFailed = 1;
      break;
    case 'P':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.keypress = 1;
      break;
    case 'Q':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.userEventOccured = 1;
      break;
    case 'R':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.replaceTextRange = 1;
      break;
    case 'S':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.startEditing = 1;
      break;
    case 'T':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.insertUntranslatedText = 1;
      break;
    case 'U':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.deleteUntranslatedText = 1;
      break;
    case 'V':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.speechRequest = 1;
      break;
    case 'W':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.keyWillMem = 1;
      break;
    case 'X':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.keymem = 1;
      break;
    case 'Y':
      if (!trusted)
      {
        goto LABEL_29;
      }

      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.didDisplay = 1;
      break;
    case 'Z':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.panLeft = 1;
      break;
    case '[':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.panRight = 1;
      break;
    case '\\':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.showPreviousAnnouncement = 1;
      break;
    case ']':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.showNextAnnouncement = 1;
      break;
    case '^':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.playBorderHitSound = 1;
      break;
    case '_':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.playCommandNotSupportedSound = 1;
      break;
      v6 = _SCROD_LOG(self);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "Made connection sound", buf, 2u);
      }

      self->_callbacks.playDisplayConnectionSound = 1;
      hasActiveUserDisplays = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager hasActiveUserDisplays];
      if (hasActiveUserDisplays)
      {
        v7 = _SCROD_LOG(hasActiveUserDisplays);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Handle did load", buf, 2u);
        }

        [(SCROBrailleHandler *)self performSelector:sel_handleBrailleDriverDidLoad withObject:0 afterDelay:0.0];
LABEL_29:
        LODWORD(hasActiveUserDisplays) = 0;
      }

      break;
    case 'a':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.bluetoothDisplayLoadFailed = 1;
      break;
    case 'b':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.displayModeChanged = 1;
      break;
    case 'c':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.copyStringToClipboard = 1;
      break;
    case 'd':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.planarCanvasDidChange = 1;
      break;
    case 'e':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.planarPan = 1;
      break;
    case 'f':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.didBrailleUIStart = 1;
      break;
    case 'g':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.brailleUIRequest = 1;
      break;
    case 'h':
      LODWORD(hasActiveUserDisplays) = 0;
      self->_callbacks.didBrailleUIEnd = 1;
      break;
    default:
      v9.receiver = self;
      v9.super_class = SCROBrailleHandler;
      LODWORD(hasActiveUserDisplays) = [SCROHandler handleRegisterCallbackForKey:sel_handleRegisterCallbackForKey_trusted_ trusted:?];
      break;
  }

  return hasActiveUserDisplays;
}

- (int)handleSetValue:(id)value forKey:(int)key trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v6 = *&key;
  valueCopy = value;
  v9 = valueCopy;
  switch(v6)
  {
    case 18:
      -[SCROBrailleDisplayManager unloadVirtualDisplay:](self->_brailleDisplayManager, "unloadVirtualDisplay:", [valueCopy unsignedIntegerValue]);
      goto LABEL_54;
    case 21:
      brailleDisplayManager = self->_brailleDisplayManager;
      v12 = [valueCopy objectForKey:@"displayToken"];
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      v14 = [v9 objectForKey:@"button"];
      -[SCROBrailleDisplayManager virtualDisplay:pressButton:](brailleDisplayManager, "virtualDisplay:pressButton:", unsignedIntegerValue, [v14 unsignedIntegerValue]);
      goto LABEL_52;
    case 22:
      v11 = self->_brailleDisplayManager;
      v12 = [valueCopy objectForKey:@"displayToken"];
      unsignedIntegerValue2 = [v12 unsignedIntegerValue];
      v14 = [v9 objectForKey:@"keyChord"];
      -[SCROBrailleDisplayManager virtualDisplay:pressKeyChord:](v11, "virtualDisplay:pressKeyChord:", unsignedIntegerValue2, [v14 unsignedIntegerValue]);
      goto LABEL_52;
    case 23:
      v18 = self->_brailleDisplayManager;
      v12 = [valueCopy objectForKey:@"displayToken"];
      unsignedIntegerValue3 = [v12 unsignedIntegerValue];
      v14 = [v9 objectForKey:@"index"];
      unsignedIntegerValue4 = [v14 unsignedIntegerValue];
      v21 = [v9 objectForKey:@"withSpace"];
      -[SCROBrailleDisplayManager virtualDisplay:pressRouterWithIndex:withSpace:](v18, "virtualDisplay:pressRouterWithIndex:withSpace:", unsignedIntegerValue3, unsignedIntegerValue4, [v21 BOOLValue]);
      goto LABEL_51;
    case 24:
      -[SCROBrailleDisplayManager systemVirtualDisplayPressKeyChord:](self->_brailleDisplayManager, "systemVirtualDisplayPressKeyChord:", [valueCopy unsignedIntegerValue]);
      goto LABEL_54;
    case 25:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager loadBluetoothDriverWithAddress:valueCopy];
      goto LABEL_54;
    case 26:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager removeBluetoothDriverWithAddress:valueCopy];
      goto LABEL_54;
    case 27:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager loadBLEDriverWithIdentifier:valueCopy];
      goto LABEL_54;
    case 28:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager configureTableWithIdentifier:valueCopy];
      goto LABEL_54;
    case 29:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager configureInputTableWithIdentifier:valueCopy];
      goto LABEL_54;
    case 30:
      -[SCROBrailleDisplayManager setAlwaysUsesNemethCodeForTechnicalText:](self->_brailleDisplayManager, "setAlwaysUsesNemethCodeForTechnicalText:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 31:
      v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:valueCopy];
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager setMainAttributedString:v12 forceUpdate:0];
      goto LABEL_53;
    case 33:
      -[SCROBrailleDisplayManager setShowDotsSevenAndEight:](self->_brailleDisplayManager, "setShowDotsSevenAndEight:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 34:
      -[SCROBrailleDisplayManager setShowEightDotBraille:](self->_brailleDisplayManager, "setShowEightDotBraille:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 35:
      -[SCROBrailleDisplayManager setInputEightDotBraille:](self->_brailleDisplayManager, "setInputEightDotBraille:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 36:
      -[SCROBrailleDisplayManager setAutomaticBrailleTranslationEnabled:](self->_brailleDisplayManager, "setAutomaticBrailleTranslationEnabled:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 37:
      -[SCROBrailleDisplayManager setContractionMode:](self->_brailleDisplayManager, "setContractionMode:", [valueCopy intValue]);
      goto LABEL_54;
    case 38:
      -[SCROBrailleDisplayManager setInputContractionMode:](self->_brailleDisplayManager, "setInputContractionMode:", [valueCopy intValue]);
      goto LABEL_54;
    case 39:
      if (trustedCopy)
      {
        -[SCROBrailleDisplayManager setLineDescriptorDisplayCallbackEnabled:](self->_brailleDisplayManager, "setLineDescriptorDisplayCallbackEnabled:", [valueCopy BOOLValue]);
      }

      goto LABEL_54;
    case 40:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager setAggregatedStatus:valueCopy];
      goto LABEL_54;
    case 41:
      -[SCROBrailleDisplayManager setVirtualStatusAlignment:](self->_brailleDisplayManager, "setVirtualStatusAlignment:", [valueCopy intValue]);
      goto LABEL_54;
    case 42:
      -[SCROBrailleDisplayManager setMasterStatusCellIndex:](self->_brailleDisplayManager, "setMasterStatusCellIndex:", [valueCopy integerValue]);
      goto LABEL_54;
    case 43:
      -[SCROBrailleDisplayManager setPersistentKeyModifiers:](self->_brailleDisplayManager, "setPersistentKeyModifiers:", [valueCopy intValue]);
      goto LABEL_54;
    case 44:
      -[SCROBrailleDisplayManager setWordWrapEnabled:](self->_brailleDisplayManager, "setWordWrapEnabled:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 45:
      -[SCROBrailleDisplayManager setAutoAdvanceEnabled:](self->_brailleDisplayManager, "setAutoAdvanceEnabled:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 46:
      v10 = self->_brailleDisplayManager;
      [valueCopy doubleValue];
      [(SCROBrailleDisplayManager *)v10 setAutoAdvanceDuration:?];
      goto LABEL_54;
    case 47:
      -[SCROBrailleDisplayManager setBlinkingCursorEnabled:](self->_brailleDisplayManager, "setBlinkingCursorEnabled:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 48:
      v23 = self->_brailleDisplayManager;
      [valueCopy doubleValue];
      [(SCROBrailleDisplayManager *)v23 setLastUserInteractionTime:?];
      goto LABEL_54;
    case 49:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SCROBrailleDisplayManager *)self->_brailleDisplayManager setTactileGraphicsImageData:v9];
      }

      goto LABEL_54;
    case 50:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SCROBrailleDisplayManager *)self->_brailleDisplayManager setPlanarData:v9];
      }

      goto LABEL_54;
    case 52:
      -[SCROBrailleDisplayManager panDisplayLeft:](self->_brailleDisplayManager, "panDisplayLeft:", [valueCopy integerValue]);
      goto LABEL_54;
    case 53:
      -[SCROBrailleDisplayManager panDisplayRight:](self->_brailleDisplayManager, "panDisplayRight:", [valueCopy integerValue]);
      goto LABEL_54;
    case 54:
      -[SCROBrailleDisplayManager panDisplayBeginning:](self->_brailleDisplayManager, "panDisplayBeginning:", [valueCopy integerValue]);
      goto LABEL_54;
    case 55:
      -[SCROBrailleDisplayManager panDisplayEnd:](self->_brailleDisplayManager, "panDisplayEnd:", [valueCopy integerValue]);
      goto LABEL_54;
    case 56:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager simulateKeypress:valueCopy];
      goto LABEL_54;
    case 57:
      v24 = self->_brailleDisplayManager;
      v12 = [valueCopy objectForKey:@"prepare"];
      bOOLValue = [v12 BOOLValue];
      v14 = [v9 objectForKey:@"immediate"];
      bOOLValue2 = [v14 BOOLValue];
      v21 = [v9 objectForKey:@"displayToken"];
      -[SCROBrailleDisplayManager setPrepareToMemorizeNextKey:immediate:forDisplayWithToken:](v24, "setPrepareToMemorizeNextKey:immediate:forDisplayWithToken:", bOOLValue, bOOLValue2, [v21 integerValue]);
LABEL_51:

LABEL_52:
      goto LABEL_53;
    case 58:
      -[SCROBrailleDisplayManager setPrimaryBrailleDisplay:](self->_brailleDisplayManager, "setPrimaryBrailleDisplay:", [valueCopy integerValue]);
      goto LABEL_54;
    case 59:
      -[SCROBrailleDisplayManager setSingleKeyQuickNav:](self->_brailleDisplayManager, "setSingleKeyQuickNav:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 60:
      -[SCROBrailleDisplayManager setSingleLetterInputIsOn:](self->_brailleDisplayManager, "setSingleLetterInputIsOn:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 61:
      -[SCROBrailleDisplayManager setTextSearchModeIsOn:](self->_brailleDisplayManager, "setTextSearchModeIsOn:", [valueCopy BOOLValue]);
      goto LABEL_54;
    case 62:
      [valueCopy doubleValue];
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager setBrailleKeyDebounceTimeout:?];
      goto LABEL_54;
    case 63:
      -[SCROBrailleDisplayManager planarPanDisplayLeft:](self->_brailleDisplayManager, "planarPanDisplayLeft:", [valueCopy integerValue]);
      goto LABEL_54;
    case 64:
      -[SCROBrailleDisplayManager planarPanDisplayRight:](self->_brailleDisplayManager, "planarPanDisplayRight:", [valueCopy integerValue]);
      goto LABEL_54;
    case 73:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager startBrailleUI:valueCopy];
      goto LABEL_54;
    case 74:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager endBrailleUI:valueCopy];
      goto LABEL_54;
    case 75:
      v12 = [valueCopy objectForKey:@"response"];
      v17 = [v9 objectForKey:@"request"];
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager handleBrailleUIResponse:v12 forRequest:v17];

      goto LABEL_53;
    case 76:
      v22 = self->_brailleDisplayManager;
      v12 = [valueCopy objectForKey:@"command"];
      [(SCROBrailleDisplayManager *)v22 processBrailleUICommand:v12];
LABEL_53:

LABEL_54:
      v27 = 0;
      break;
    default:
      v29.receiver = self;
      v29.super_class = SCROBrailleHandler;
      v27 = [(SCROHandler *)&v29 handleSetValue:valueCopy forKey:v6 trusted:trustedCopy];
      break;
  }

  return v27;
}

- (int)handleGetValue:(id *)value forKey:(int)key withObject:(id)object trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v7 = *&key;
  objectCopy = object;
  v11 = objectCopy;
  switch(v7)
  {
    case 19:
      unsignedIntegerValue = [objectCopy unsignedIntegerValue];
      v13 = MEMORY[0x277CCABB0];
      numberOfTextLinesInPlanarBraille = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager loadVirtualDisplayWithMainSize:unsignedIntegerValue];
      goto LABEL_7;
    case 20:
      mainAttributedString = -[SCROBrailleDisplayManager mainCellsForVirtualDisplay:](self->_brailleDisplayManager, "mainCellsForVirtualDisplay:", [objectCopy unsignedIntegerValue]);
      goto LABEL_34;
    case 30:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager alwaysUsesNemethCodeForTechnicalText];
      goto LABEL_33;
    case 31:
      if (!trustedCopy)
      {
        goto LABEL_24;
      }

      mainAttributedString = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager mainAttributedString];
      goto LABEL_34;
    case 33:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showDotsSevenAndEight];
      goto LABEL_33;
    case 34:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showEightDotBraille];
      goto LABEL_33;
    case 35:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager inputEightDotBraille];
      goto LABEL_33;
    case 37:
      v17 = MEMORY[0x277CCABB0];
      contractionMode = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager contractionMode];
      goto LABEL_28;
    case 38:
      v17 = MEMORY[0x277CCABB0];
      contractionMode = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager inputContractionMode];
      goto LABEL_28;
    case 39:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager lineDescriptorDisplayCallbackEnabled];
      goto LABEL_33;
    case 40:
      mainAttributedString = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager aggregatedStatus];
      goto LABEL_34;
    case 41:
      v17 = MEMORY[0x277CCABB0];
      contractionMode = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager virtualStatusAlignment];
      goto LABEL_28;
    case 42:
      mainAttributedString = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCROBrailleDisplayManager masterStatusCellIndex](self->_brailleDisplayManager, "masterStatusCellIndex")}];
      goto LABEL_34;
    case 43:
      mainAttributedString = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SCROBrailleDisplayManager persistentKeyModifiers](self->_brailleDisplayManager, "persistentKeyModifiers")}];
      goto LABEL_34;
    case 44:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager wordWrapEnabled];
      goto LABEL_33;
    case 45:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager autoAdvanceEnabled];
      goto LABEL_33;
    case 46:
      v32 = MEMORY[0x277CCABB0];
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager autoAdvanceDuration];
      mainAttributedString = [v32 numberWithDouble:?];
      goto LABEL_34;
    case 47:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager blinkingCursorEnabled];
      goto LABEL_33;
    case 65:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager isConfigured];
      goto LABEL_33;
    case 66:
      v36 = 0;
      v22 = [objectCopy objectForKey:@"index"];
      v23 = [v11 objectForKey:@"displayToken"];
      brailleDisplayManager = self->_brailleDisplayManager;
      v35 = 0;
      v25 = -[SCROBrailleDisplayManager tokenForRouterIndex:location:appToken:forDisplayWithToken:](brailleDisplayManager, "tokenForRouterIndex:location:appToken:forDisplayWithToken:", [v22 integerValue], &v36, &v35, objc_msgSend(v23, "integerValue"));
      v26 = v35;
      v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
      [v27 setObject:v28 forKey:kSCROBrailleRouterKeyToken[0]];

      v29 = [MEMORY[0x277CCABB0] numberWithInteger:v36];
      [v27 setObject:v29 forKey:kSCROBrailleRouterKeyLocation];

      [v27 setObject:v26 forKey:kSCROBrailleRouterKeyAppToken[0]];
      v30 = v27;
      *value = v27;

LABEL_24:
      v31 = 0;
      break;
    case 67:
      mainAttributedString = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager driverConfiguration];
      goto LABEL_34;
    case 68:
      v17 = MEMORY[0x277CCABB0];
      contractionMode = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager displayMode];
LABEL_28:
      mainAttributedString = [v17 numberWithInt:contractionMode];
      goto LABEL_34;
    case 69:
      v20 = -[SCROBrailleDisplayManager rangeOfBrailleCellRepresentingCharacterAtIndex:](self->_brailleDisplayManager, "rangeOfBrailleCellRepresentingCharacterAtIndex:", [objectCopy unsignedIntegerValue]);
      mainAttributedString = [MEMORY[0x277CCAE60] valueWithRange:{v20, v21}];
      goto LABEL_34;
    case 70:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager isCandidateSelectionOn];
      goto LABEL_33;
    case 71:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager isWordDescriptionOn];
      goto LABEL_33;
    case 72:
      v13 = MEMORY[0x277CCABB0];
      numberOfTextLinesInPlanarBraille = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager numberOfTextLinesInPlanarBraille];
LABEL_7:
      mainAttributedString = [v13 numberWithUnsignedInteger:numberOfTextLinesInPlanarBraille];
      goto LABEL_34;
    case 77:
      v15 = MEMORY[0x277CCABB0];
      alwaysUsesNemethCodeForTechnicalText = [(SCROBrailleDisplayManager *)self->_brailleDisplayManager isBrailleUIActive];
LABEL_33:
      mainAttributedString = [v15 numberWithBool:alwaysUsesNemethCodeForTechnicalText];
LABEL_34:
      v31 = 0;
      *value = mainAttributedString;
      break;
    default:
      v34.receiver = self;
      v34.super_class = SCROBrailleHandler;
      v31 = [(SCROHandler *)&v34 handleGetValue:value forKey:v7 withObject:objectCopy trusted:trustedCopy];
      break;
  }

  return v31;
}

- (int)handlePerformActionForKey:(int)key trusted:(BOOL)trusted
{
  switch(key)
  {
    case 1:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager beginUpdates];
      goto LABEL_16;
    case 2:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager endUpdates];
      goto LABEL_16;
    case 6:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager setAnnouncementsDisplayMode];
      goto LABEL_16;
    case 7:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showNextAnnouncement];
      goto LABEL_16;
    case 8:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showPreviousAnnouncement];
      goto LABEL_16;
    case 9:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager exitCurrentDisplayMode];
      goto LABEL_16;
    case 10:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager translateBrailleToClipboard];
      goto LABEL_16;
    case 11:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager resetEditingManager];
      goto LABEL_16;
    case 12:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager clearTimeoutAlert];
      goto LABEL_16;
    case 13:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager cancelCandidateSelection];
      goto LABEL_16;
    case 14:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showPreviousCandidate];
      goto LABEL_16;
    case 15:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showNextCandidate];
      goto LABEL_16;
    case 16:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showPreviousWordDescription];
      goto LABEL_16;
    case 17:
      [(SCROBrailleDisplayManager *)self->_brailleDisplayManager showNextWordDescription];
LABEL_16:
      result = 0;
      break;
    default:
      v5.receiver = self;
      v5.super_class = SCROBrailleHandler;
      result = [SCROHandler handlePerformActionForKey:sel_handlePerformActionForKey_trusted_ trusted:?];
      break;
  }

  return result;
}

- (void)handleBrailleKeypress:(id)keypress
{
  if (self->_callbacks.keypress)
  {
    keypressCopy = keypress;
    v7 = [[SCROCallback alloc] initWithKey:80 object:keypressCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleReplaceTextRange:(_NSRange)range withString:(id)string cursor:(unint64_t)cursor
{
  v18[3] = *MEMORY[0x277D85DE8];
  if (self->_callbacks.replaceTextRange)
  {
    length = range.length;
    location = range.location;
    v17[0] = kSCROBrailleCallbackReplaceTextRange_RangeKey;
    v9 = MEMORY[0x277CCAE60];
    stringCopy = string;
    v11 = [v9 valueWithRange:{location, length}];
    v18[0] = v11;
    v18[1] = stringCopy;
    v17[1] = kSCROBrailleCallbackReplaceTextRange_StringKey;
    v17[2] = kSCROBrailleCallbackReplaceTextRange_CursorKey;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:cursor];
    v18[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v14 = [SCROCallback alloc];
    v15 = [(SCROCallback *)v14 initWithKey:82 object:v13];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v15 postToHandler:callbackDelegate];
  }
}

- (void)handleUserEventOccured
{
  if (self->_callbacks.userEventOccured)
  {
    v5 = [[SCROCallback alloc] initWithKey:81 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handleStartEditing
{
  if (self->_callbacks.startEditing)
  {
    v5 = [[SCROCallback alloc] initWithKey:83 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleInsertedUntranslatedText:(id)text speakLiterally:(BOOL)literally
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (text)
  {
    if (self->_callbacks.insertUntranslatedText)
    {
      literallyCopy = literally;
      v13[0] = kSCROBrailleCallbackSpeechFeedback_SpeakLiterallyKey;
      v6 = MEMORY[0x277CCABB0];
      textCopy = text;
      v8 = [v6 numberWithBool:literallyCopy];
      v13[1] = kSCROBrailleCallbackSpeechFeedback_SpokenTextKey;
      v14[0] = v8;
      v14[1] = textCopy;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

      v10 = [SCROCallback alloc];
      v11 = [(SCROCallback *)v10 initWithKey:84 object:v9];
      callbackDelegate = [(SCROHandler *)self callbackDelegate];
      [(SCROCallback *)v11 postToHandler:callbackDelegate];
    }
  }
}

- (void)handleBrailleDeletedUntranslatedText:(id)text speakLiterally:(BOOL)literally
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (text)
  {
    if (self->_callbacks.deleteUntranslatedText)
    {
      literallyCopy = literally;
      v13[0] = kSCROBrailleCallbackSpeechFeedback_SpeakLiterallyKey;
      v6 = MEMORY[0x277CCABB0];
      textCopy = text;
      v8 = [v6 numberWithBool:literallyCopy];
      v13[1] = kSCROBrailleCallbackSpeechFeedback_SpokenTextKey;
      v14[0] = v8;
      v14[1] = textCopy;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

      v10 = [SCROCallback alloc];
      v11 = [(SCROCallback *)v10 initWithKey:85 object:v9];
      callbackDelegate = [(SCROHandler *)self callbackDelegate];
      [(SCROCallback *)v11 postToHandler:callbackDelegate];
    }
  }
}

- (void)handleBrailleSpeechRequest:(id)request language:(id)language shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  v22[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  languageCopy = language;
  v10 = languageCopy;
  if (requestCopy && self->_callbacks.speechRequest)
  {
    if (languageCopy)
    {
      v21[0] = kSCROBrailleCallbackSpeechFeedback_SpokenTextKey;
      v21[1] = kSCROBrailleCallbackSpeechFeedback_LanguageKey;
      v22[0] = requestCopy;
      v22[1] = languageCopy;
      v21[2] = kSCROBrailleCallbackSpeechFeedback_ShouldQueueKey;
      v11 = [MEMORY[0x277CCABB0] numberWithBool:queueCopy];
      v22[2] = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v22;
      v14 = v21;
      v15 = 3;
    }

    else
    {
      v19[0] = kSCROBrailleCallbackSpeechFeedback_SpokenTextKey;
      v19[1] = kSCROBrailleCallbackSpeechFeedback_ShouldQueueKey;
      v20[0] = requestCopy;
      v11 = [MEMORY[0x277CCABB0] numberWithBool:queueCopy];
      v20[1] = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v20;
      v14 = v19;
      v15 = 2;
    }

    v16 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];

    v17 = [[SCROCallback alloc] initWithKey:86 object:v16];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v17 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleKeyWillMemorize:(id)memorize
{
  if (self->_callbacks.keyWillMem)
  {
    memorizeCopy = memorize;
    v7 = [[SCROCallback alloc] initWithKey:87 object:memorizeCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleKeyMemorize:(id)memorize
{
  if (self->_callbacks.keymem)
  {
    memorizeCopy = memorize;
    v7 = [[SCROCallback alloc] initWithKey:88 object:memorizeCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDidDisplay:(id)display
{
  displayCopy = display;
  if (self->_callbacks.didDisplay)
  {
    v8 = displayCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v8 copy];

      v8 = v5;
    }

    v6 = [[SCROCallback alloc] initWithKey:89 object:v8];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v6 postToHandler:callbackDelegate];

    displayCopy = v8;
  }
}

- (void)handleBrailleDidPanLeft:(id)left elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset
{
  if (self->_callbacks.panLeft)
  {
    v11 = MEMORY[0x277CBEAC0];
    offsetCopy = offset;
    appTokenCopy = appToken;
    tokenCopy = token;
    leftCopy = left;
    v18 = [[v11 alloc] initWithObjectsAndKeys:{leftCopy, @"success", tokenCopy, @"token", offsetCopy, @"lineOffset", appTokenCopy, @"appToken", 0}];

    v16 = [[SCROCallback alloc] initWithKey:90 object:v18];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v16 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDidPanRight:(id)right elementToken:(id)token appToken:(id)appToken lineOffset:(id)offset
{
  if (self->_callbacks.panRight)
  {
    v11 = MEMORY[0x277CBEAC0];
    offsetCopy = offset;
    appTokenCopy = appToken;
    tokenCopy = token;
    rightCopy = right;
    v18 = [[v11 alloc] initWithObjectsAndKeys:{rightCopy, @"success", tokenCopy, @"token", offsetCopy, @"lineOffset", appTokenCopy, @"appToken", 0}];

    v16 = [[SCROCallback alloc] initWithKey:91 object:v18];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v16 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDidShowPreviousAnnouncement:(id)announcement
{
  if (self->_callbacks.showPreviousAnnouncement)
  {
    announcementCopy = announcement;
    v7 = [[SCROCallback alloc] initWithKey:92 object:announcementCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDidShowNextAnnouncement:(id)announcement
{
  if (self->_callbacks.showNextAnnouncement)
  {
    announcementCopy = announcement;
    v7 = [[SCROCallback alloc] initWithKey:93 object:announcementCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDriverDisconnected
{
  if (self->_callbacks.playDisplayConnectionSound)
  {
    v4 = [SCROCallback alloc];
    v6 = [(SCROCallback *)v4 initWithKey:96 object:MEMORY[0x277CBEC28]];
    [(SCROCallback *)v6 setIsAtomic:1];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v6 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleDriverDidLoad
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _SCROD_LOG(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_callbacks.playDisplayConnectionSound];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_26490B000, v3, OS_LOG_TYPE_DEFAULT, "Brailler driver did load %@", &v8, 0xCu);
  }

  if (self->_callbacks.playDisplayConnectionSound)
  {
    v5 = [SCROCallback alloc];
    v6 = [(SCROCallback *)v5 initWithKey:96 object:MEMORY[0x277CBEC38]];
    [(SCROCallback *)v6 setIsAtomic:1];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v6 postToHandler:callbackDelegate];
  }
}

- (void)configurationDidChange
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _SCROD_LOG(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    configChanged = self->_callbacks.configChanged;
    v11[0] = 67109120;
    v11[1] = configChanged;
    _os_log_impl(&dword_26490B000, v3, OS_LOG_TYPE_DEFAULT, "[SCROBrailleHandler configurationDidChange]: _callbacks.configChanged == %d", v11, 8u);
  }

  if (self->_callbacks.configChanged)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SCROBrailleDisplayManager isConfigured](self->_brailleDisplayManager, "isConfigured")}];
    v6 = [[SCROCallback alloc] initWithKey:78 object:v5];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v6 postToHandler:callbackDelegate];

    v9 = _SCROD_LOG(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Posting SCRODisplayConfigurationChangedNotification", v11, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kSCRODisplayConfigurationChangedNotification, 0, 0, 1u);
  }
}

- (void)handleFailedToLoadBluetoothDevice:(id)device
{
  if (self->_callbacks.bluetoothDisplayLoadFailed)
  {
    deviceCopy = device;
    v7 = [[SCROCallback alloc] initWithKey:97 object:deviceCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleTableFailedToLoad:(id)load
{
  if (self->_callbacks.tableLoadFailed)
  {
    loadCopy = load;
    v7 = [[SCROCallback alloc] initWithKey:79 object:loadCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleDisplayModeChanged:(id)changed
{
  if (self->_callbacks.displayModeChanged)
  {
    changedCopy = changed;
    v7 = [[SCROCallback alloc] initWithKey:98 object:changedCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleCopyStringToClipboard:(id)clipboard
{
  if (self->_callbacks.copyStringToClipboard)
  {
    clipboardCopy = clipboard;
    v7 = [[SCROCallback alloc] initWithKey:99 object:clipboardCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleTacticalGraphicsCanvasDidChange:(id)change
{
  if (self->_callbacks.planarCanvasDidChange)
  {
    changeCopy = change;
    v7 = [[SCROCallback alloc] initWithKey:100 object:changeCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handlePlanarPanFailedIsLeft:(BOOL)left
{
  if (self->_callbacks.planarPan)
  {
    leftCopy = left;
    v6 = [SCROCallback alloc];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:leftCopy];
    v9 = [(SCROCallback *)v6 initWithKey:101 object:v7];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v9 postToHandler:callbackDelegate];
  }
}

- (void)handlePlayBorderHitSound
{
  if (self->_callbacks.playBorderHitSound)
  {
    v5 = [[SCROCallback alloc] initWithKey:94 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handlePlayCommandNotSupportedSound
{
  if (self->_callbacks.playCommandNotSupportedSound)
  {
    v5 = [[SCROCallback alloc] initWithKey:95 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handleDidBrailleUIStart
{
  if (self->_callbacks.didBrailleUIStart)
  {
    v5 = [[SCROCallback alloc] initWithKey:102 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

- (void)handleBrailleUIRequest:(id)request
{
  if (self->_callbacks.brailleUIRequest)
  {
    requestCopy = request;
    v7 = [[SCROCallback alloc] initWithKey:103 object:requestCopy];

    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v7 postToHandler:callbackDelegate];
  }
}

- (void)handleDidBrailleUIEnd
{
  if (self->_callbacks.didBrailleUIEnd)
  {
    v5 = [[SCROCallback alloc] initWithKey:104 object:0];
    callbackDelegate = [(SCROHandler *)self callbackDelegate];
    [(SCROCallback *)v5 postToHandler:callbackDelegate];
  }
}

@end