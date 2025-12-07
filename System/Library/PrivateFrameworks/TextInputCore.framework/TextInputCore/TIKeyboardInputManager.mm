@interface TIKeyboardInputManager
+ (id)dynamicDictionaryFilePathForInputMode:(id)mode;
+ (id)keyboardUserDirectory;
+ (id)offlineLearningHandleForInputMode:(id)mode;
+ (id)recentsFilePathForIdentifier:(id)identifier;
+ (id)userDictionaryWordKeyPairsFilePath;
+ (id)vulgarWordUsageDatabaseFileName;
+ (int)shiftContextForShiftState:(int)state autocapitalizationType:(unint64_t)type;
+ (void)clearRecentsFileForIdentifier:(id)identifier;
+ (void)removeAllDynamicDictionaries;
+ (void)removeDynamicDictionaryForInputMode:(id)mode;
+ (void)resetResponseKit;
- ($71865D49803C3560DF570D424868A38C)lexiconInfoForInputMode:(SEL)mode;
- ($71865D49803C3560DF570D424868A38C)lexiconInfoForMultilingualDynamic:(SEL)dynamic;
- ($71865D49803C3560DF570D424868A38C)lexiconInformation;
- (BOOL)_canStartSentenceAfterString:(id)string maxRecursionDepth:(unint64_t)depth;
- (BOOL)_canSuggestPhraseCandidate:(void *)candidate withStem:;
- (BOOL)acceptsCharacter:(unsigned int)character;
- (BOOL)acceptsRange:(_NSRange)range inString:(id)string;
- (BOOL)autocorrectionWasRecentlyRejected:(id)rejected;
- (BOOL)autocorrectionWasRecentlyRejectedForCurrentInput;
- (BOOL)blockedByNegativeLearning:(id)learning correction:(id)correction ignoreSoft:(BOOL)soft;
- (BOOL)canComputeSentenceContextForInputStem:(id)stem;
- (BOOL)canGenerateCompletionCandidates;
- (BOOL)canHandleKeyHitTest;
- (BOOL)canRetrocorrectInputAtIndex:(unsigned int)index;
- (BOOL)canStartSentenceAfterString:(id)string;
- (BOOL)canTrimInputAtIndex:(unsigned int)index;
- (BOOL)closeCandidateGenerationContextWithResults:(id)results;
- (BOOL)closeCandidateGenerationContextWithResults:(id)results forced:(BOOL)forced;
- (BOOL)deletesComposedTextByComposedCharacterSequence;
- (BOOL)dictionaryContainsWord:(id)word;
- (BOOL)dictionaryUsesExternalEncoding;
- (BOOL)directlyBlockedByNegativeLearning:(id)learning correction:(id)correction ignoreSoft:(BOOL)soft retrocorrectionComponent:(BOOL)component;
- (BOOL)doesComposeText;
- (BOOL)doesSelectedTextGenerateEmojiCandidates;
- (BOOL)enablesProactiveQuickType;
- (BOOL)generateAutofillFormWithKeyboardState:(id)state completionHandler:(id)handler;
- (BOOL)hasLegacyInputStem;
- (BOOL)hasLegacyInputString;
- (BOOL)inHardwareKeyboardMode;
- (BOOL)isContinuousPathCandidate:(id)candidate replacementForOriginalConversion:(id)conversion;
- (BOOL)isEditingExistingWord;
- (BOOL)isHardwareKeyboardAutocorrectionEnabled;
- (BOOL)isLinguisticResourceUpdateScheduled;
- (BOOL)isStickerSuggestionsEnabled;
- (BOOL)isStringBasedModel;
- (BOOL)isTypologyEnabled;
- (BOOL)newInputAcceptsUserSelectedCandidate;
- (BOOL)nextInputWouldStartSentence;
- (BOOL)nextInputWouldStartSentenceAfterInput:(id)input;
- (BOOL)shouldAddModifierSymbolsToWordCharacters;
- (BOOL)shouldAllowContextWord:(id)word;
- (BOOL)shouldAllowCorrectionOfAcceptedCandidate:(id)candidate;
- (BOOL)shouldAutocapitalizePredictionAfterSpace;
- (BOOL)shouldBlockAutocorrection:(id)autocorrection;
- (BOOL)shouldDropInputStem;
- (BOOL)shouldExtendPriorWord;
- (BOOL)shouldGenerateInlineCompletions;
- (BOOL)shouldGeneratePredictionsForCurrentContext;
- (BOOL)shouldGenerateSuggestionsForSelectedText;
- (BOOL)shouldInsertSpaceBeforeInput:(id)input;
- (BOOL)shouldInsertSpaceBeforePredictions;
- (BOOL)shouldLearnWord:(id)word;
- (BOOL)shouldOfferStickers;
- (BOOL)shouldOmitEmojiCandidates;
- (BOOL)shouldPromoteAutocorrectionsToInlineCompletions:(id)completions;
- (BOOL)shouldPromoteInlineCompletionsToAutocorrections:(id)autocorrections inlineCompletions:(id)completions;
- (BOOL)shouldSkipCandidateSelection;
- (BOOL)shouldSkipShortcutConversionForDocumentState:(id)state;
- (BOOL)shouldSuppressLanguageSelectionEvidence;
- (BOOL)shouldSuppressTokenIDLookups;
- (BOOL)shouldUpdateDictionary;
- (BOOL)shouldUpdateLanguageModel;
- (BOOL)spaceAndNextInputWouldStartSentence;
- (BOOL)stringEndsWithClosingQuote:(id)quote;
- (BOOL)stringEndsWord:(id)word;
- (BOOL)suggestionBlocklistMatchesStrings:(id)strings;
- (BOOL)supportsLearning;
- (BOOL)supportsReversionUI;
- (BOOL)updateAdaptationContextToKeyboardState:(id)state from:(id)from;
- (BOOL)updateLanguageModelForKeyboardState;
- (BOOL)usesContinuousPath;
- (BOOL)usesMLTapTyping;
- (BOOL)usesRetrocorrection;
- (LanguageModelContext)sentenceContextForInputStem:(SEL)stem inputContext:(id)context;
- (NSArray)languageModelAssets;
- (NSCharacterSet)allowPredictionCharacterSet;
- (RefPtr<KB::DictionaryContainer>)getDictionary;
- (TIEmojiCandidateGenerator)emojiCandidateGenerator;
- (TIInlineCompletionAnalyticsMetadata)inlineCompletionMetadataFrom:(SEL)from andBundleId:(id)id;
- (TIKeyboardFeatureSpecialization)keyboardFeatureSpecialization;
- (TIKeyboardInputManager)initWithConfig:(id)config keyboardState:(id)state;
- (TIKeyboardInputManager)initWithConfig:(id)config keyboardState:(id)state languageSelectionController:(id)controller;
- (TIKeyboardInputManager)initWithInputMode:(id)mode keyboardState:(id)state;
- (TIKeyboardInputManagerState)currentState;
- (TILanguageSelectionController)languageSelectionController;
- (TISmartPunctuationOptions)smartOptions;
- (TIStickerCandidateGenerator)stickerCandidateGenerator;
- (TISupplementalLexiconController)currentCandidateGenerationContextSupplementalLexicons;
- (TITokenID)addWord:(id)word contextTokens:(id)tokens surfaceFormPtr:(id *)ptr;
- (TITokenID)findTokenIDForWord:(id)word contextTokens:(id)tokens tokenLookupMode:(unsigned int)mode;
- (TITokenID)findTokenIDForWord:(id)word contextTokens:(id)tokens tokenLookupMode:(unsigned int)mode surfaceFormPtr:(id *)ptr hasCaseInsensitiveStaticVariant:(BOOL *)variant;
- (_NSRange)acceptableRangeFromRange:(_NSRange)range inText:(id)text withSelectionLocation:(unint64_t)location;
- (_NSRange)candidateRange;
- (_NSRange)inputStringRangeFromRevisionHistory;
- (_NSRange)legacyInputRangeForTokenRange:(_NSRange)range;
- (_NSRange)rangeOfUnclosedQuoteMatchingQuote:(id)quote inString:(id)string range:(_NSRange)range;
- (_NSRange)shortcutSearchRangeForString:(id)string;
- (_NSRange)smartSelectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options;
- (const)precomposedCharacterSet;
- (double)continuousPathLanguageWeight;
- (float)scoreCandidates:;
- (id).cxx_construct;
- (id)_supplementalCompletionCandidates:(unint64_t)candidates;
- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete;
- (id)autocorrection;
- (id)autocorrectionCandidateForInput:(id)input rawInput:(id)rawInput withCandidate:(const void *)candidate insertingSpace:(BOOL)space sharedPrefixLength:(unint64_t)length;
- (id)autocorrectionCandidates;
- (id)autocorrectionList;
- (id)autocorrectionListForEmptyInputWithDesiredCandidateCount:(unint64_t)count;
- (id)autocorrectionListForSelectedText;
- (id)autocorrectionListWithCandidateCount:(unint64_t)count;
- (id)autocorrectionRecordForWord:(id)word;
- (id)cachedAutocorrectionListResponseFor:(id)for;
- (id)candidateResultSet;
- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers;
- (id)candidates;
- (id)candidatesForString:(id)string;
- (id)cannedResponseCandidatesForString:(id)string;
- (id)checkRejectionHistory:(id)history;
- (id)clauseDelimitingCharacters;
- (id)closingQuotes;
- (id)completionCandidates:(unint64_t)candidates;
- (id)configurationPropertyList;
- (id)contextBeforeWithDesiredLength:(unint64_t)length;
- (id)continuousPathCandidates:(unint64_t)candidates;
- (id)currentInputModeIdentifier;
- (id)currentWordStem;
- (id)defaultCandidate;
- (id)deleteComposedTextFromIndex:(unint64_t)index count:(unint64_t *)count;
- (id)deleteFromInput:(unint64_t *)input;
- (id)deletedSuffixOfInputContext:(id)context whenDeletingFromInputString:(id)string withInputIndex:(unint64_t)index deletionCount:(unint64_t)count;
- (id)deltaDictionaryPathForInputMode:(id)mode;
- (id)dictionaryInputMode;
- (id)dictionaryStringForExternalString:(id)string;
- (id)dynamicDictionaryPathForInputMode:(id)mode;
- (id)dynamicResourcePath;
- (id)extendedAutocorrection:(id)autocorrection spanningInputsForCandidates:(id)candidates emojis:(id)emojis;
- (id)externalInputStem;
- (id)externalInputString;
- (id)externalStringForDictionaryString:(id)string;
- (id)externalStringToInternal:(id)internal;
- (id)filterDuplicatePredictions:(id)predictions autocorrection:(id)autocorrection;
- (id)finishGeneratingInlineCompletions:(id)completions completion:(id)completion syncResponse:(BOOL)response;
- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withAdditionalPredictions:(id)predictions withInput:(id)input;
- (id)generateCellularCandidatesWithKeyboardState:(id)state;
- (id)generateInlineCompletions:(id)completions withPrefix:(id)prefix;
- (id)generateOneTimeCodeCandidatesWithKeyboardState:(id)state;
- (id)generateReplacementsForString:(id)string keyLayout:(id)layout;
- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)range;
- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)handleKeyboardInput:(id)input;
- (id)humanReadableTrace;
- (id)indexesOfDuplicatesInCandidates:(id)candidates;
- (id)inlineCompletions:(CandidateCollection *)completions matchedStem:(String *)stem;
- (id)inputContext;
- (id)inputStem;
- (id)inputString;
- (id)inputStringFromDocumentState:(id)state;
- (id)internalInputStem;
- (id)internalInputString;
- (id)internalStringToExternal:(id)external;
- (id)keyboardBehaviors;
- (id)keyboardConfiguration;
- (id)keyboardConfigurationLayoutTag;
- (id)languageModelAssetsForInputMode:(id)mode;
- (id)layoutTagsForLayout:(id)layout;
- (id)lexiconLocales;
- (id)linguisticContext;
- (id)markedText;
- (id)newInputManagerState;
- (id)newKeyboardContext;
- (id)nonstopPunctuationCharacters;
- (id)openingQuotes;
- (id)originatingAutocorrectionListForCandidate:(id)candidate;
- (id)pathToDeltaStaticDictionary;
- (id)pathToDynamicDictionary;
- (id)pathToPhraseDictionary;
- (id)pathToStaticDictionary;
- (id)phraseCandidateCompletedByWord:(const String *)word allowNoSuggest:(BOOL)suggest forAutocorrection:(BOOL)autocorrection shiftContext:(int)context;
- (id)phraseDictionaryPathForInputMode:(id)mode;
- (id)predictionCandidates:(unint64_t)candidates predictionType:(int)type;
- (id)promoteAutocorrectionsToInlineCompletions:(id)completions matchedStem:(String *)stem;
- (id)replacementForDoubleSpace;
- (id)resourceInputModes;
- (id)revisionListFromAutocorrectionList:(id)list afterAcceptingCandidate:(id)candidate;
- (id)sentenceDelimitingCharacters;
- (id)sentencePrefixingCharacters;
- (id)sentenceTrailingCharacters;
- (id)shadowTyping;
- (id)shortcutCompletionsForDocumentState:(id)state;
- (id)shortcutConversionForDocumentState:(id)state;
- (id)shortcutConversionForInput:(id)input andExistingString:(id)string existingStringStartsInMiddleOfWord:(BOOL)word;
- (id)shortcutConversionForString:(id)string stringStartsInMiddleOfWord:(BOOL)word;
- (id)sortMethodIndexes;
- (id)sortMethodTitles;
- (id)sortMethodsGroupsForCandidates:(id)candidates;
- (id)sortMethodsShowExtensionCandidates;
- (id)sortingMethods;
- (id)spaceDeletingCharacters;
- (id)staticDictionaryPathForInputMode:(id)mode;
- (id)suffixOfDesiredString:(id)string toAppendToInputString:(id)inputString withInputIndex:(unint64_t)index afterDeletionCount:(unint64_t *)count;
- (id)supplementalAutocorrection;
- (id)supplementalAutocorrectionCandidates;
- (id)supplementalLexiconWordExtraCharacters;
- (id)terminatorsDeletingAutospace;
- (id)terminatorsPrecedingAutospace;
- (id)terminatorsPreventingAutocorrection;
- (id)testingParameters;
- (id)titleForSortingMethod:(id)method;
- (id)trialParameters;
- (id)trimmedInputStem;
- (id)trimmedInputStemAfterLathamConversion;
- (id)typedStringForEmptyAutocorrection;
- (id)usageTrackingKeyForStatistic:(id)statistic;
- (id)wordCharacters;
- (id)wordInInputStem:(id)stem atIndex:(unint64_t)index;
- (id)wordSeparator;
- (int)TIInlineCompletionAcceptanceRejectionTypefromTIRegisterLearningMode:(id)mode;
- (int)precisionPointFromTrialOverride:(id)override;
- (int)shiftContext;
- (int64_t)addTouch:(id)touch shouldHitTest:(BOOL)test;
- (int64_t)performHitTestForTouchEvent:(id)event keyboardState:(id)state;
- (shared_ptr<KB::LanguageModel>)loadNewLanguageModel;
- (shared_ptr<KB::LanguageModel>)loadedLightweightLanguageModel;
- (unint64_t)countOfWordsIninputStem:(id)stem;
- (unint64_t)internalIndexOfInputStemSuffix:(id)suffix;
- (unint64_t)maxPriorWordTokensAfterTrimming;
- (unint64_t)maximumShortcutLengthAllowed;
- (unint64_t)prefixLengthOfInput:(id)input sharedWithCandidate:(const void *)candidate useCandidateLength:(BOOL)length;
- (unint64_t)shouldSuppressLearning;
- (unint64_t)userFrequencyOfWord:(id)word lexiconID:(unsigned int)d;
- (unsigned)adjustedSourceMaskFromCandidate:(id)candidate;
- (unsigned)externalIndexToInternal:(unsigned int)internal;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (unsigned)internalIndexToExternal:(unsigned int)external;
- (unsigned)predominantLexiconInContext;
- (unsigned)simulateAutoshiftIfNecessaryForFlags:(unsigned int)flags;
- (unsigned)sourceMaskForWord:(Word *)word;
- (unsigned)sourceMaskForWordString:(String *)string caseSensitive:(BOOL)sensitive;
- (vector<std::string,)multilingualLocalesOnDisk;
- (void)_recalcSupplementalPrefix;
- (void)acceptCurrentCandidateIfSelectedWithContext:(id)context;
- (void)acceptCurrentCandidateWithContext:(id)context;
- (void)acceptInput;
- (void)acceptingCandidateWithTrigger:(id)trigger;
- (void)addInput:(id)input withContext:(id)context;
- (void)addItemToConversationHistoryWithText:(id)text timestamp:(id)timestamp senderID:(id)d recipientIdentifiers:(id)identifiers;
- (void)addMultilingualLexiconsFromDiskToVector:(void *)vector excluding:(const void *)excluding;
- (void)addSynthesizedTouchToInput:(id)input keyboardState:(id)state;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (void)attachToDynamicResourceDirectory:(id)directory;
- (void)candidateRejected:(id)rejected;
- (void)candidatesOfferedFeedback:(id)feedback keyboardState:(id)state;
- (void)changingContextWithTrigger:(id)trigger;
- (void)checkAndUpdateAdditionalLexicons;
- (void)checkAutocorrectionDictionaries;
- (void)clearHumanReadableTrace;
- (void)clearInput;
- (void)clearSoftLearning;
- (void)continuousPathCandidateRejected:(id)rejected;
- (void)dealloc;
- (void)decrementLanguageModelCount:(id)count tokenID:(TITokenID)d contextTokens:(id)tokens;
- (void)deleteFromInputWithContext:(id)context;
- (void)detachFromDynamicResourceDirectory;
- (void)didUpdateInputModes:(id)modes;
- (void)displayedCandidateRejected;
- (void)dropInput;
- (void)dropInputPrefix:(unsigned int)prefix;
- (void)dynamicDictionariesRemoved:(id)removed;
- (void)dynamicResourceDirectorySet:(id)set;
- (void)endTypingSessionWithInteractionObservers:(id)observers;
- (void)enumerateWordSuffixesOfString:(id)string inRange:(_NSRange)range usingBlock:(id)block;
- (void)fetchAssetAvailabilityStatusForInputMode:(id)mode completionHandler:(id)handler;
- (void)fetchTypingSessionParams:(id)params;
- (void)fillReversedConversationHistoryInContext:(id)context;
- (void)finishGeneratingAutocorrectionsWithCandidates:(id)candidates candidateRange:(_NSRange)range candidateHandler:(id)handler;
- (void)finishGeneratingCandidates;
- (void)finishGeneratingResponseKitProactiveSuggestions:(id)suggestions candidateRange:(_NSRange)range completion:(id)completion;
- (void)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withAdditionalPredictions:(id)predictions withInput:(id)input async:(BOOL)async completionHandler:(id)handler;
- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler;
- (void)generateCannedResponseCandidatesAsyncForString:(id)string completionHandler:(id)handler;
- (void)incrementLanguageModelCount:(id)count tokenID:(TITokenID)d contextTokens:(id)tokens saveToDifferentialPrivacy:(int)privacy;
- (void)incrementUsageTrackingKey:(id)key;
- (void)incrementUsageTrackingKeyForAppWithIsSentence:(BOOL)sentence;
- (void)incrementUsageTrackingKeyForAutocorrectionStatistic:(id)statistic autocorrectionTypes:(unsigned int)types;
- (void)incrementUsageTrackingKeysForDeleteFromInput;
- (void)initImplementation;
- (void)insertSpaceBeforeInputWithContext:(id)context;
- (void)installTypologyTraceLogger;
- (void)learnRecentMessageUserIsRespondingTo;
- (void)loadDictionaries;
- (void)logDiscoverabilityEvent:(int)event userInfo:(id)info;
- (void)logInlineCompletionsToTypology:(id)typology candidate:(id)candidate;
- (void)logTestingParametersToTypology;
- (void)logToTypologyRecorderWithString:(id)string;
- (void)mobileAssetsChanged:(id)changed;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler;
- (void)parseRecentMessage:(void *)message;
- (void)popCandidateGenerationContextFromStack;
- (void)prepareForKeyboardActivity;
- (void)prepareForKeyboardInactivity:(int)inactivity;
- (void)promoteInlineCompletionToAutocorrections:(id)autocorrections predictions:(id)predictions inlineCompletion:(id)completion outReconciledAutocorrections:(id *)reconciledAutocorrections outReconciledPredictions:(id *)reconciledPredictions matchedStem:(String *)stem;
- (void)pushCandidateGenerationContextOnStack;
- (void)pushCandidateGenerationContextWithResults:(id)results;
- (void)reconcileCandidates:(void *)candidates forTypedString:(String *)string withPhraseCandidate:(void *)candidate replacing:(const String *)replacing;
- (void)reconcileConversions:(id)conversions;
- (void)reconcileInlineCompletionAndAutocorrections:(id)autocorrections inlineCompletions:(id)completions predictions:(id)predictions outReconciledAutocorrections:(id *)reconciledAutocorrections outReconciledInlineCompletions:(id *)inlineCompletions outReconciledPredictions:(id *)reconciledPredictions matchedStem:(String *)stem;
- (void)recordAcceptedAutocorrection:(id)autocorrection fromPredictiveInputBar:(BOOL)bar;
- (void)recordRejectedAutocorrectionForAcceptedText:(id)text fromPredictiveInputBar:(BOOL)bar;
- (void)recordSuggestedAutocorrectionList:(id)list;
- (void)refreshInputManagerState;
- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode;
- (void)registerLearningForCompletion:(id)completion fullCompletion:(id)fullCompletion context:(id)context prefix:(id)prefix mode:(id)mode;
- (void)registerNegativeEvidence:(id)evidence tokenID:(TITokenID)d contextTokens:(id)tokens intended:(id)intended intendedTokenID:(TITokenID)iD hint:(int)hint;
- (void)registerRevisionFrom:(id)from to:(id)to contextTokens:(id)tokens;
- (void)rejectionsDatabase;
- (void)releaseAndRemoveRejectionsDatabase;
- (void)releaseDynamicLanguageModel;
- (void)resetConversationHistory;
- (void)resetLMCache:(int)cache;
- (void)resume;
- (void)runMaintenanceTask;
- (void)scheduleLinguisticResourceUpdateWithReason:(id)reason;
- (void)scoreCandidates:(void *)candidates;
- (void)setAutoshiftFromInputContext;
- (void)setInHardwareKeyboardMode:(BOOL)mode;
- (void)setInput:(id)input;
- (void)setInput:(id)input withIndex:(unsigned int)index;
- (void)setInputIndex:(unsigned int)index;
- (void)setInputStringFromDocumentState:(id)state isDeleteEvent:(BOOL)event didDeleteLastAcceptedPath:(BOOL)path;
- (void)setKeyLayout:(id)layout;
- (void)setKeyboardState:(id)state;
- (void)setLinguisticResourceStatus:(unint64_t)status reason:(id)reason;
- (void)setMarkedText;
- (void)setOriginalInput:(id)input;
- (void)setPhraseBoundaryIfNecessary;
- (void)setRejectedAutocorrection:(id)autocorrection forInput:(id)input;
- (void)setUserInterfaceIdiom:(int64_t)idiom;
- (void)skipHitTestForTouchEvent:(id)event keyboardState:(id)state;
- (void)softLearningRegisterAccepted:(id)accepted typed:(id)typed;
- (void)softLearningRegisterDeleted:(id)deleted;
- (void)storeLanguageModelDynamicDataIncludingCache;
- (void)suspend;
- (void)syncInputStringToKeyboardState:(id)state afterContextChange:(BOOL)change;
- (void)syncMarkedTextForKeyboardState:(id)state afterContextChange:(BOOL)change;
- (void)syncToKeyboardState:(id)state;
- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change;
- (void)syncToLayoutState:(id)state;
- (void)synchronizeConversationHistoryWithInputContextHistory:(id)history;
- (void)textAccepted:(id)accepted fromPredictiveInputBar:(BOOL)bar withInput:(id)input;
- (void)tokenizeString:(const String *)string context:(void *)context sentences:(unsigned int *)sentences;
- (void)trackProactiveMetrics:(id)metrics keyboardState:(id)state;
- (void)transferErrorCorrectionFlagsToInputCandidate:(void *)candidate;
- (void)trimInput;
- (void)trimInputAfterLathamConversion;
- (void)updateComposedText;
- (void)updateDictionaryAndLanguageModel;
- (void)updateDynamicDirectoryForScreenLockState:(BOOL)state;
- (void)updateForRevisitedString:(id)string;
- (void)updateInlineCompletionOperatingPointForPrimaryLocale;
- (void)updateInputContext;
- (void)updateResponseModelForKeyboardState:(id)state;
- (void)updateTrialFavoniusLanguagePowerForPrimaryLocale;
- (void)updateTrialNegativeLearningFlagForPrimaryLocale;
- (void)willChangeToKeyboardState:(id)state afterContextChange:(BOOL)change;
- (void)willDropInputStem;
@end

@implementation TIKeyboardInputManager

- (void)resume
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = TIInputManagerOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x277CCACA8];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    v7 = [v4 stringWithFormat:@"%s Resume (inputMode=%@)", "-[TIKeyboardInputManager resume]", normalizedIdentifier];
    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v8 = +[TIKeyboardAssertionManager sharedAssertionManager];
  [v8 addAssertionForObject:self];

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager;
  [(TIKeyboardInputManagerBase *)&v9 resume];
  [(TIKeyboardInputManager *)self scheduleLinguisticResourceUpdateWithReason:@"Input manager resumed"];
}

- (BOOL)isLinguisticResourceUpdateScheduled
{
  linguisticResourceStatus = [(TIKeyboardInputManager *)self linguisticResourceStatus];
  if (linguisticResourceStatus != 1)
  {
    LOBYTE(linguisticResourceStatus) = [(TIKeyboardInputManager *)self linguisticResourceStatus]== 2;
  }

  return linguisticResourceStatus;
}

- (id)configurationPropertyList
{
  config = [(TIKeyboardInputManager *)self config];
  propertyList = [config propertyList];

  return propertyList;
}

- (void)_recalcSupplementalPrefix
{
  v3 = +[TITransientLexiconManager sharedInstance];
  supplementalLexicons = [v3 supplementalLexicons];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  v6 = [supplementalLexicons lexiconWithIdentifier:{objc_msgSend(keyboardState, "supplementalLexiconIdentifier")}];

  if (v6)
  {
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState2 documentState];
    markedText = [documentState markedText];
    v10 = [markedText length];

    v11 = 0;
    if (self->m_impl && !v10)
    {
      inputContext = [(TIKeyboardInputManager *)self inputContext];
      inputStem = [(TIKeyboardInputManager *)self inputStem];
      v11 = [inputContext stringByAppendingString:inputStem];
    }

    if (![v11 length])
    {
      keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
      documentState2 = [keyboardState3 documentState];
      v16 = objc_msgSend_string(documentState2);

      v11 = v16;
    }

    core_searchPrefixSet = [v6 core_searchPrefixSet];
    v18 = [v11 _ti_supplementalPrefixOfLastToken:core_searchPrefixSet];
  }

  else
  {
    v18 = 0;
  }

  self->_supplementalPrefix = v18;
  m_impl = self->m_impl;
  if (m_impl)
  {
    m_impl[144] = v18;
  }
}

- (void)updateDictionaryAndLanguageModel
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManager *)self shouldUpdateDictionary])
  {
    [(TIKeyboardInputManager *)self loadDictionaries];
  }

  [(TIKeyboardInputManager *)self updateInlineCompletionOperatingPointForPrimaryLocale];
  if ([(TIKeyboardInputManager *)self shouldUpdateLanguageModel]&& [(TIKeyboardInputManager *)self updateLanguageModelForKeyboardState])
  {
    [(TIKeyboardInputManager *)self loadFavoniusTypingModel];
    [(TIKeyboardInputManager *)self logTestingParametersToTypology];
  }

  [(TIKeyboardInputManager *)self updateTrialNegativeLearningFlagForPrimaryLocale];
  [(TIKeyboardInputManager *)self updateTrialFavoniusLanguagePowerForPrimaryLocale];
  [(TIKeyboardInputManager *)self setLinguisticResourceStatus:0 reason:@"Dictionary and LM updated"];
  m_impl = self->m_impl;
  v4 = *(m_impl + 34);
  if (v4)
  {
    v5 = *(m_impl + 33);
    v15 = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }

    (*(*v4 + 248))(v4, &v15);
    if (v15)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v15);
    }

    v6 = [TIKBAnalyticsMetricsContext alloc];
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    languageSelectionController = [(TIKeyboardInputManager *)self languageSelectionController];
    activeInputModes = [languageSelectionController activeInputModes];
    testingParameters = [(TIKeyboardInputManager *)self testingParameters];
    v11 = [(TIKBAnalyticsMetricsContext *)v6 initWithKeyboardState:keyboardState activeInputModes:activeInputModes testingParameters:testingParameters];

    v12 = *(self->m_impl + 34);
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    clientIdentifier = [keyboardState2 clientIdentifier];
    objc_msgSend_inlineCompletionMetadataFrom_andBundleId_(self);
    (*(*v12 + 256))(v12, v16);
    if (v35 && v34 == 1)
    {
      free(v35);
    }

    if (v33 && v32 == 1)
    {
      free(v33);
    }

    if (v31 && v30 == 1)
    {
      free(v31);
    }

    if (v29 && v28 == 1)
    {
      free(v29);
    }

    if (v27 && v26 == 1)
    {
      free(v27);
    }

    if (v25 && v24 == 1)
    {
      free(v25);
    }

    if (v23 && v22 == 1)
    {
      free(v23);
    }

    if (v21 && v20 == 1)
    {
      free(v21);
    }

    if (v19 && v18 == 1)
    {
      free(v19);
    }

    if (v17)
    {
      if (v16[6] == 1)
      {
        free(v17);
      }
    }
  }
}

- (BOOL)shouldUpdateDictionary
{
  v15 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (m_impl)
  {
    v4 = m_impl[33];
    v5 = !v4 || **(v4 + 8) == *(*(v4 + 8) + 8) || [(TIKeyboardInputManager *)self linguisticResourceStatus]== 2;
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v6 = TIOSLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = MEMORY[0x277CCACA8];
        linguisticResourceStatus = [(TIKeyboardInputManager *)self linguisticResourceStatus];
        if (linguisticResourceStatus > 2)
        {
          v10 = "Unknown";
        }

        else
        {
          v10 = off_278731828[linguisticResourceStatus];
        }

        v11 = "False";
        if (v5)
        {
          v11 = "True";
        }

        v12 = [v8 stringWithFormat:@"%s linguisticResourceStatus: %s, result: %s", "-[TIKeyboardInputManager shouldUpdateDictionary]", v10, v11];
        *buf = 138412290;
        v14 = v12;
        _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (TILanguageSelectionController)languageSelectionController
{
  getTestingStateObject = [(TIKeyboardInputManager *)self getTestingStateObject];
  if (getTestingStateObject)
  {
  }

  else if ((TI_DEVICE_UNLOCKED_SINCE_BOOT() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  languageSelectionController = self->_languageSelectionController;
  if (!languageSelectionController)
  {
    v5 = objc_alloc_init(TILanguageSelectionController);
    v6 = self->_languageSelectionController;
    self->_languageSelectionController = v5;

    [(TILanguageSelectionController *)self->_languageSelectionController setDelegate:self];
    languageSelectionController = self->_languageSelectionController;
  }

  v7 = languageSelectionController;
LABEL_7:

  return v7;
}

void *__52__TIKeyboardInputManager_mul_shouldUpdateDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) lexiconIDForInputMode:a2];
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    v5 = 1;
  }

  else
  {
    result = KB::StaticDictionary::lexicon_index(*(a1 + 48), result);
    v5 = result == -1;
  }

  *(v4 + 24) = v5;
  return result;
}

- (void)updateInlineCompletionOperatingPointForPrimaryLocale
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[TITrialManagerProxy sharedManager];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  locale = [inputMode locale];
  v6 = [v3 inlineCompletionOperatingPointOverrideForLocale:locale];

  if (!v6 || (v7 = [(TIKeyboardInputManager *)self precisionPointFromTrialOverride:v6], v7 == -1))
  {
    if (inline_completion_precision_point_override_1 == 1)
    {
      inline_completion_precision_point_override_1 = 0;
    }
  }

  else
  {
    v8 = v7;
    inline_completion_precision_point_override_0 = v7;
    inline_completion_precision_point_override_1 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[TIKeyboardInputManager(InlineCompletions) updateInlineCompletionOperatingPointForPrimaryLocale]";
      v11 = 1024;
      v12 = v8;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Trial: overriding inline completion precision  operating point to %i percent", &v9, 0x12u);
    }
  }
}

- (BOOL)shouldUpdateLanguageModel
{
  if (!self->m_impl)
  {
    return 0;
  }

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if (([keyboardState secureTextEntry] & 1) == 0)
  {
    v5 = TI_DEVICE_UNLOCKED_SINCE_BOOT();

    if (v5)
    {
      v6 = *(self->m_impl + 33);
      if (v6)
      {
        if (**(v6 + 8) != *(*(v6 + 8) + 8))
        {
          keyboardState = [(TIKeyboardState *)self->_keyboardState textInputTraits];
          v4 = [keyboardState autocorrectionType] != 1;
          goto LABEL_4;
        }
      }
    }

    return 0;
  }

  v4 = 0;
LABEL_4:

  return v4;
}

- (void)updateTrialNegativeLearningFlagForPrimaryLocale
{
  v16 = *MEMORY[0x277D85DE8];
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if ((TI_IS_INTERNAL_INSTALL::is_internal_install & 1) != 0 || (-[TIKeyboardInputManager languageSelectionController](self, "languageSelectionController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 activeInputModes], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, v5 < 2))
  {
    v11 = +[TITrialManagerProxy sharedManager];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    locale = [inputMode locale];
    v8 = [v11 isNegativeLearningEnabledForLocale:locale];

    if (v8)
    {
      bOOLValue = [v8 BOOLValue];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v10 = "disabled";
        if (bOOLValue)
        {
          v10 = "enabled";
        }

        *buf = 136315394;
        v13 = "TIOverrideAdaptationAutocorrectionRejectionV2Trial";
        v14 = 2080;
        v15 = v10;
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Trial: overriding adaptation_autocorrection_rejection_v2 to %s", buf, 0x16u);
      }

      adaptation_autocorrection_rejection_v2_override_for_trial = bOOLValue | 0x100;
    }

    else
    {
      TIRestoreAdaptationAutocorrectionRejectionV2Trial();
    }
  }

  else
  {

    TIRestoreAdaptationAutocorrectionRejectionV2Trial();
  }
}

- (void)updateTrialFavoniusLanguagePowerForPrimaryLocale
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[TITrialManagerProxy sharedManager];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  locale = [inputMode locale];
  v6 = [v3 favoniusLanguagePowerOverrideForLocale:locale];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [v6 floatValue];
      v14 = 136315394;
      v15 = "[TIKeyboardInputManager updateTrialFavoniusLanguagePowerForPrimaryLocale]";
      v16 = 2048;
      v17 = v13;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Trial: Updating favonius language power to: %f", &v14, 0x16u);
    }

    m_impl = self->m_impl;
    [v6 floatValue];
    (*(*m_impl[28] + 496))();
  }

  else
  {
    config = [(TIKeyboardInputManager *)self config];
    favoniusLanguageModelWeight = [config favoniusLanguageModelWeight];

    v10 = self->m_impl;
    if (favoniusLanguageModelWeight)
    {
      config2 = [(TIKeyboardInputManager *)self config];
      favoniusLanguageModelWeight2 = [config2 favoniusLanguageModelWeight];
      [favoniusLanguageModelWeight2 floatValue];
      (*(*v10[28] + 496))();
    }

    else
    {
      (*(*v10[28] + 496))(v10[28], 0);
    }
  }
}

- (void)checkAndUpdateAdditionalLexicons
{
  v2 = *(self->m_impl + 34);
  if (v2)
  {
    (*(*v2 + 576))();
  }
}

- (id)currentInputModeIdentifier
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  inputMode = [keyboardState inputMode];

  return inputMode;
}

- (BOOL)shouldExtendPriorWord
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  shouldExtendPriorWord = [keyboardFeatureSpecialization shouldExtendPriorWord];

  return shouldExtendPriorWord;
}

- (TIKeyboardFeatureSpecialization)keyboardFeatureSpecialization
{
  keyboardFeatureSpecialization = self->_keyboardFeatureSpecialization;
  if (!keyboardFeatureSpecialization)
  {
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    v5 = [TIKeyboardFeatureSpecialization createSpecializationForInputMode:inputMode];
    v6 = self->_keyboardFeatureSpecialization;
    self->_keyboardFeatureSpecialization = v5;

    config = [(TIKeyboardInputManager *)self config];
    -[TIKeyboardFeatureSpecialization setUseRelaxedOVSPolicy:](self->_keyboardFeatureSpecialization, "setUseRelaxedOVSPolicy:", [config allowRelaxedOVSPolicy]);

    config2 = [(TIKeyboardInputManager *)self config];
    -[TIKeyboardFeatureSpecialization setSkipCandidateQualityFilter:](self->_keyboardFeatureSpecialization, "setSkipCandidateQualityFilter:", [config2 skipCandidateQualityFilter]);

    keyboardFeatureSpecialization = self->_keyboardFeatureSpecialization;
  }

  return keyboardFeatureSpecialization;
}

- (id)wordSeparator
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  wordSeparator = [keyboardFeatureSpecialization wordSeparator];

  return wordSeparator;
}

- (_NSRange)inputStringRangeFromRevisionHistory
{
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
  selectedRange = [revisionHistory selectedRange];
  v6 = v5;

  v27 = 0;
  v28 = &v27;
  v29 = 0x4012000000;
  v30 = __Block_byref_object_copy__325;
  v31 = __Block_byref_object_dispose__326;
  v32 = "";
  v33 = xmmword_22CC889D0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x4012000000;
  v23 = __Block_byref_object_copy__325;
  v24 = __Block_byref_object_dispose__326;
  v25 = "";
  v26 = xmmword_22CC889D0;
  revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__TIKeyboardInputManager_inputStringRangeFromRevisionHistory__block_invoke;
  v19[3] = &unk_278731568;
  v19[6] = selectedRange;
  v19[7] = v6;
  v19[4] = &v20;
  v19[5] = &v27;
  [revisionHistory2 enumerateSentenceStemUsingBlock:v19];

  v8 = v28[6];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v21[6];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v9 = [(TIKeyboardInputManager *)self legacyInputRangeForTokenRange:v10, v21[7]];
      v11 = v16;
    }
  }

  else
  {
    v12 = v28[7];
    revisionHistory3 = [(TIKeyboardInputManager *)self revisionHistory];
    documentText = [revisionHistory3 documentText];
    v9 = [(TIKeyboardInputManager *)self acceptableRangeFromRange:v8 inText:v12 withSelectionLocation:documentText, selectedRange];
    v11 = v15;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v27, 8);
  v17 = v9;
  v18 = v11;
  result.length = v18;
  result.location = v17;
  return result;
}

- (void)clearInput
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->m_impl)
  {
    [(TIKeyboardInputManager *)self checkAutocorrectionDictionaries];
    TIInputManager::clear_input(self->m_impl);
    m_composedText = self->m_composedText;
    if (m_composedText)
    {
      TIInputManager::input_substring((self->m_impl + 8), 0, -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3), v8);
      v5 = KB::ns_string(v8, v4);
      v6 = [(TIKeyboardInputManager *)self internalStringToExternal:v5];
      [(NSMutableString *)m_composedText setString:v6];

      if (v9)
      {
        if (v8[6] == 1)
        {
          free(v9);
        }
      }
    }

    autocorrectionListsSuggestedForCurrentInput = [(TIKeyboardInputManager *)self autocorrectionListsSuggestedForCurrentInput];
    [autocorrectionListsSuggestedForCurrentInput removeAllObjects];

    [(TIKeyboardInputManager *)self setHitTestCorrectedInputMatchingCandidate:0];
    [(TIKeyboardInputManager *)self setLastAcceptedText:0];
    self->_lastHitTestKeycode = -1;
    [(TIKeyboardInputManager *)self setLastAutocorrectionList:0];
  }
}

- (void)checkAutocorrectionDictionaries
{
  v3 = *(self->m_impl + 33);
  if (!v3 || **(v3 + 8) == *(*(v3 + 8) + 8))
  {
    [(TIKeyboardInputManager *)self scheduleLinguisticResourceUpdateWithReason:@"Dictionary not loaded"];
    if ([(TIKeyboardInputManager *)self isLinguisticResourceUpdateScheduled])
    {

      [(TIKeyboardInputManager *)self updateDictionaryAndLanguageModel];
    }
  }
}

- (void)updateInputContext
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->m_impl)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    v6 = contextBeforeInput;
    v7 = &stru_283FDFAF8;
    if (contextBeforeInput)
    {
      v7 = contextBeforeInput;
    }

    v8 = v7;

    inputStem = [(TIKeyboardInputManager *)self inputStem];
    if ([inputStem length])
    {
      if ([(__CFString *)v8 hasSuffix:inputStem])
      {
        v10 = -[__CFString substringToIndex:](v8, "substringToIndex:", -[__CFString length](v8, "length") - [inputStem length]);
      }

      else
      {
        v10 = &stru_283FDFAF8;
      }

      v8 = v10;
    }

    m_impl = self->m_impl;
    if (m_impl)
    {
      v12 = [(TIKeyboardInputManager *)self externalStringToInternal:v8];
      KB::utf8_string(v12, v21);
      objc_msgSend_sentenceContextForInputStem_inputContext_(self);
      KB::String::operator=((m_impl + 440), v21);
      KB::LanguageModelContext::operator=((m_impl + 472), &v13);
      v20 = &v19;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v20);
      language_modeling::v1::LinguisticContext::~LinguisticContext(&v18);
      language_modeling::v1::LinguisticContext::~LinguisticContext(&v17);
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      if (v22)
      {
        if (v21[6] == 1)
        {
          free(v22);
        }
      }
    }

    [(TIKeyboardInputManager *)self setAutoshiftFromInputContext];
  }
}

- (id)inputStem
{
  v10 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (m_impl)
  {
    TIInputManager::input_substring((m_impl + 2), 0, m_impl[24], v8);
    v5 = KB::ns_string(v8, v4);
    v6 = [(TIKeyboardInputManager *)self internalStringToExternal:v5];

    if (v9 && v8[6] == 1)
    {
      free(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAutoshiftFromInputContext
{
  if (self->m_impl)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    autocapitalizationType = [keyboardState autocapitalizationType];

    if (autocapitalizationType)
    {
      if (autocapitalizationType == 2)
      {
        inputContext = [(TIKeyboardInputManager *)self inputContext];
        LODWORD(autocapitalizationType) = [(TIKeyboardInputManager *)self canStartSentenceAfterString:inputContext];
      }

      else
      {
        LODWORD(autocapitalizationType) = 1;
      }
    }

    v6 = *(self->m_impl + 1);
    if (-858993459 * ((*(self->m_impl + 2) - v6) >> 3))
    {
      v7 = *(v6 + 32);
      v8 = v7 & 0xFFFFFFFD;
      if ((v7 & autocapitalizationType) != 0)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      *(v6 + 32) = v9 | v8;
    }
  }
}

- (void)installTypologyTraceLogger
{
  if (self->m_impl)
  {
    config = [(TIKeyboardInputManager *)self config];
    if ([config isTesting])
    {
      typologyPreferences = [(TIKeyboardInputManagerBase *)self typologyPreferences];
      isInternalDeviceWithForcedTypologyLoggingForTesting = [typologyPreferences isInternalDeviceWithForcedTypologyLoggingForTesting];

      if (!isInternalDeviceWithForcedTypologyLoggingForTesting)
      {
        return;
      }
    }

    else
    {
    }

    typologyPreferences2 = [(TIKeyboardInputManagerBase *)self typologyPreferences];
    if ([typologyPreferences2 typologyLoggingEnabled])
    {
      keyboardState = [(TIKeyboardInputManager *)self keyboardState];
      secureTextEntry = [keyboardState secureTextEntry];
      v9 = secureTextEntry;
      v10 = secureTextEntry ^ 1;

      p_m_typology_recorder = &self->m_typology_recorder;
      if ((self->m_typology_recorder.__ptr_ != 0) == v10)
      {
        return;
      }

      s_trace_logging_enabled = v10;
      if ((v9 & 1) == 0)
      {
        operator new();
      }

      v12 = 0;
      ptr = 0;
    }

    else
    {

      p_m_typology_recorder = &self->m_typology_recorder;
      if (!self->m_typology_recorder.__ptr_)
      {
        return;
      }

      v12 = 0;
      ptr = 0;
      s_trace_logging_enabled = 0;
    }

    cntrl = p_m_typology_recorder->__cntrl_;
    p_m_typology_recorder->__ptr_ = 0;
    p_m_typology_recorder->__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
      ptr = p_m_typology_recorder->__ptr_;
      v12 = p_m_typology_recorder->__cntrl_;
    }

    m_impl = self->m_impl;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(m_impl + 76) = ptr;
    v16 = *(m_impl + 77);
    *(m_impl + 77) = v12;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    if (v12)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }
  }
}

- (TIEmojiCandidateGenerator)emojiCandidateGenerator
{
  if (TI_DEVICE_UNLOCKED_SINCE_BOOT())
  {
    emojiCandidateGenerator = self->_emojiCandidateGenerator;
    if (!emojiCandidateGenerator)
    {
      languageSelectionController = [(TIKeyboardInputManager *)self languageSelectionController];
      activeInputModes = [languageSelectionController activeInputModes];

      v6 = [[TIEmojiCandidateGenerator alloc] initWithActiveInputModes:activeInputModes inputManager:self];
      v7 = self->_emojiCandidateGenerator;
      self->_emojiCandidateGenerator = v6;

      emojiCandidateGenerator = self->_emojiCandidateGenerator;
    }

    v8 = emojiCandidateGenerator;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)testingParameters
{
  trialParameters = [(TIKeyboardInputManager *)self trialParameters];
  v3 = trialParameters;
  if (trialParameters)
  {
    v4 = trialParameters;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (id)trialParameters
{
  dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
  v3 = +[TITrialManagerProxy sharedManager];
  locale = [dictionaryInputMode locale];
  v5 = [v3 encodedCATrialParametersForLocale:locale];

  return v5;
}

- (id)dictionaryInputMode
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  dictionaryInputMode = [keyboardFeatureSpecialization dictionaryInputMode];
  v5 = dictionaryInputMode;
  if (dictionaryInputMode)
  {
    inputMode = dictionaryInputMode;
  }

  else
  {
    config = [(TIKeyboardInputManager *)self config];
    inputMode = [config inputMode];
  }

  return inputMode;
}

- (id)keyboardConfiguration
{
  [(TIKeyboardInputManager *)self refreshInputManagerState];
  v3 = objc_alloc_init(MEMORY[0x277D6F3E0]);
  currentState = [(TIKeyboardInputManager *)self currentState];
  [v3 setInputManagerState:currentState];

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  inputForMarkedText = [keyboardState inputForMarkedText];

  if (inputForMarkedText)
  {
    markedText = [(TIKeyboardInputManager *)self markedText];
    [v3 setIntermediateText:markedText];
  }

  keyboardConfigurationLayoutTag = [(TIKeyboardInputManager *)self keyboardConfigurationLayoutTag];
  [v3 setLayoutTag:keyboardConfigurationLayoutTag];

  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  v11 = [keyboardFeatureSpecialization accentKeyStringForKeyboardState:keyboardState2];
  [v3 setAccentKeyString:v11];

  contextualDisplayKeys = [(TIKeyboardInputManager *)self contextualDisplayKeys];
  [v3 setContextualDisplayKeys:contextualDisplayKeys];

  [v3 setAssertDefaultKeyPlane:{-[TIKeyboardInputManager keyboardConfigurationAssertDefaultKeyPlane](self, "keyboardConfigurationAssertDefaultKeyPlane")}];
  trialParameters = [(TIKeyboardInputManager *)self trialParameters];
  [v3 setTrialParameters:trialParameters];

  return v3;
}

- (void)refreshInputManagerState
{
  usesCandidateSelection = [(TIKeyboardInputManager *)self usesCandidateSelection];
  v6 = usesCandidateSelection;
  if (usesCandidateSelection)
  {
    [(TIKeyboardInputManager *)self inputString];
  }

  else
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState documentState];
    [(TIKeyboardInputManager *)self inputStringFromDocumentState:documentState];
  }
  v7 = ;
  currentState = [(TIKeyboardInputManager *)self currentState];
  [currentState setInputString:v7];

  if (!v6)
  {

    v7 = keyboardState;
  }

  _hasSupplementalPrefix = [(TIKeyboardInputManager *)self _hasSupplementalPrefix];
  currentState2 = [(TIKeyboardInputManager *)self currentState];
  [currentState2 setHasSupplementalPrefix:_hasSupplementalPrefix];

  inputCount = [(TIKeyboardInputManager *)self inputCount];
  currentState3 = [(TIKeyboardInputManager *)self currentState];
  [currentState3 setInputCount:inputCount];

  inputIndex = [(TIKeyboardInputManager *)self inputIndex];
  currentState4 = [(TIKeyboardInputManager *)self currentState];
  [currentState4 setInputIndex:inputIndex];

  nextInputWouldStartSentence = [(TIKeyboardInputManager *)self nextInputWouldStartSentence];
  currentState5 = [(TIKeyboardInputManager *)self currentState];
  [currentState5 setNextInputWouldStartSentence:nextInputWouldStartSentence];

  shadowTyping = [(TIKeyboardInputManager *)self shadowTyping];
  currentState6 = [(TIKeyboardInputManager *)self currentState];
  [currentState6 setShadowTyping:shadowTyping];

  keyEventMap = [(TIKeyboardInputManager *)self keyEventMap];
  currentState7 = [(TIKeyboardInputManager *)self currentState];
  [currentState7 setKeyEventMap:keyEventMap];

  replacementForDoubleSpace = [(TIKeyboardInputManager *)self replacementForDoubleSpace];
  currentState8 = [(TIKeyboardInputManager *)self currentState];
  [currentState8 setReplacementForDoubleSpace:replacementForDoubleSpace];

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  documentState2 = [keyboardState2 documentState];
  v25 = [(TIKeyboardInputManager *)self shortcutCompletionsForDocumentState:documentState2];
  currentState9 = [(TIKeyboardInputManager *)self currentState];
  [currentState9 setShortcutCompletions:v25];

  inputsToReject = [(TIKeyboardInputManager *)self inputsToReject];
  currentState10 = [(TIKeyboardInputManager *)self currentState];
  [currentState10 setInputsToReject:inputsToReject];

  suppressPlaceholderCandidate = [(TIKeyboardInputManager *)self suppressPlaceholderCandidate];
  currentState11 = [(TIKeyboardInputManager *)self currentState];
  [currentState11 setSuppressPlaceholderCandidate:suppressPlaceholderCandidate];

  supportsNumberKeySelection = [(TIKeyboardInputManager *)self supportsNumberKeySelection];
  currentState12 = [(TIKeyboardInputManager *)self currentState];
  [currentState12 setSupportsNumberKeySelection:supportsNumberKeySelection];

  usesPunctuationKeysForRowNavigation = [(TIKeyboardInputManager *)self usesPunctuationKeysForRowNavigation];
  currentState13 = [(TIKeyboardInputManager *)self currentState];
  [currentState13 setUsesPunctuationKeysForRowNavigation:usesPunctuationKeysForRowNavigation];

  usesLiveConversion = [(TIKeyboardInputManager *)self usesLiveConversion];
  currentState14 = [(TIKeyboardInputManager *)self currentState];
  [currentState14 setUsesLiveConversion:usesLiveConversion];

  delayedCandidateList = [(TIKeyboardInputManager *)self delayedCandidateList];
  currentState15 = [(TIKeyboardInputManager *)self currentState];
  [currentState15 setDelayedCandidateList:delayedCandidateList];

  currentState16 = [(TIKeyboardInputManager *)self currentState];
  inputString = [currentState16 inputString];

  v40 = [inputString length];
  if (v40)
  {
    currentState15 = [(TIKeyboardInputManager *)self textCheckerExemptions];
    v41 = [currentState15 stringIsExemptFromChecker:inputString];
  }

  else
  {
    v41 = 0;
  }

  currentState17 = [(TIKeyboardInputManager *)self currentState];
  [currentState17 setInputStringIsExemptFromChecker:v41];

  if (v40)
  {
  }

  if (inputString)
  {
    v43 = [(TIKeyboardInputManager *)self autocorrectionRecordForWord:inputString];
  }

  else
  {
    v43 = 0;
  }

  currentState18 = [(TIKeyboardInputManager *)self currentState];
  [currentState18 setAutocorrectionRecordForInputString:v43];

  if (inputString)
  {
  }

  usesContinuousPath = [(TIKeyboardInputManager *)self usesContinuousPath];
  currentState19 = [(TIKeyboardInputManager *)self currentState];
  [currentState19 setUsesContinuousPath:usesContinuousPath];

  shouldFixupIncompleteRomaji = [(TIKeyboardInputManager *)self shouldFixupIncompleteRomaji];
  currentState20 = [(TIKeyboardInputManager *)self currentState];
  [currentState20 setShouldFixupIncompleteRomaji:shouldFixupIncompleteRomaji];

  acceptAutocorrectionCommitsInline = [(TIKeyboardInputManager *)self acceptAutocorrectionCommitsInline];
  currentState21 = [(TIKeyboardInputManager *)self currentState];
  [currentState21 setAcceptAutocorrectionCommitsInline:acceptAutocorrectionCommitsInline];

  config = [(TIKeyboardInputManager *)self config];
  shouldIgnoreCPRequirements = [config shouldIgnoreCPRequirements];
  currentState22 = [(TIKeyboardInputManager *)self currentState];
  [currentState22 setIgnoreContinuousPathRequirements:shouldIgnoreCPRequirements];

  lastAcceptedText = [(TIKeyboardInputManager *)self lastAcceptedText];
  if (lastAcceptedText)
  {
    shouldIgnoreCPRequirements = [(TIKeyboardInputManager *)self lastAcceptedText];
    learningFlagsMask = [shouldIgnoreCPRequirements learningFlagsMask];
  }

  else
  {
    learningFlagsMask = 0;
  }

  currentState23 = [(TIKeyboardInputManager *)self currentState];
  [currentState23 setLearningFlagsMaskForLastAcceptedCandidate:learningFlagsMask];

  if (lastAcceptedText)
  {
  }
}

- (TIKeyboardInputManagerState)currentState
{
  currentState = self->_currentState;
  if (!currentState)
  {
    newInputManagerState = [(TIKeyboardInputManager *)self newInputManagerState];
    v5 = self->_currentState;
    self->_currentState = newInputManagerState;

    currentState = self->_currentState;
  }

  return currentState;
}

- (unsigned)inputCount
{
  m_impl = self->m_impl;
  if (m_impl)
  {
    return [(TIKeyboardInputManager *)self internalIndexToExternal:-858993459 * ((m_impl[2] - m_impl[1]) >> 3)];
  }

  else
  {
    return 0;
  }
}

- (unsigned)inputIndex
{
  m_impl = self->m_impl;
  if (m_impl)
  {
    return [(TIKeyboardInputManager *)self internalIndexToExternal:m_impl[24]];
  }

  else
  {
    return 0;
  }
}

- (BOOL)nextInputWouldStartSentence
{
  if ([(TIKeyboardInputManager *)self shouldInsertSpaceBeforeInput:0])
  {
    wordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
    v4 = [(TIKeyboardInputManager *)self nextInputWouldStartSentenceAfterInput:wordSeparator];

    return v4;
  }

  else
  {

    return [(TIKeyboardInputManager *)self nextInputWouldStartSentenceAfterInput:0];
  }
}

- (id)shadowTyping
{
  v10 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (m_impl)
  {
    KB::String::String(v8, (m_impl + 64));
    v5 = KB::ns_string(v8, v4);
    v6 = [(TIKeyboardInputManager *)self internalStringToExternal:v5];

    if (v9 && v8[6] == 1)
    {
      free(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)replacementForDoubleSpace
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  replacementForDoubleSpace = [keyboardFeatureSpecialization replacementForDoubleSpace];

  return replacementForDoubleSpace;
}

- (BOOL)usesContinuousPath
{
  if ([(TIKeyboardInputManager *)self usesCandidateSelection])
  {
    return 0;
  }

  config = [(TIKeyboardInputManager *)self config];
  if ([config usesContinuousPath])
  {
    usesContinuousPathForAccessibility = 1;
  }

  else
  {
    config2 = [(TIKeyboardInputManager *)self config];
    usesContinuousPathForAccessibility = [config2 usesContinuousPathForAccessibility];
  }

  return usesContinuousPathForAccessibility;
}

- (id)keyboardConfigurationLayoutTag
{
  v30 = *MEMORY[0x277D85DE8];
  softwareLayout = [(TIKeyboardLayoutState *)self->_layoutState softwareLayout];
  v4 = [(TIKeyboardInputManager *)self layoutTagsForLayout:softwareLayout];

  if ([v4 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v23 = v4;
      v7 = *v26;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          allKeys = [v9 allKeys];
          firstObject = [allKeys firstObject];

          v12 = [v9 objectForKeyedSubscript:firstObject];
          keyboardState = [(TIKeyboardInputManager *)self keyboardState];
          documentState = [keyboardState documentState];
          contextBeforeInput = [documentState contextBeforeInput];

          v16 = [contextBeforeInput length];
          v17 = [contextBeforeInput length];
          if ([contextBeforeInput length])
          {
            if (v16 <= 0xA)
            {
              v18 = v17;
            }

            else
            {
              v18 = 10;
            }

            if (v16 <= 0xA)
            {
              v19 = 0;
            }

            else
            {
              v19 = v17 - 10;
            }

            v20 = [contextBeforeInput rangeOfCharacterFromSet:v12 options:4 range:{v19, v18}];
          }

          else
          {
            v21 = 0;
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v20 != 0x7FFFFFFFFFFFFFFFLL && v20 + v21 == [contextBeforeInput length])
          {

            goto LABEL_23;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      firstObject = @"Default";
LABEL_23:
      v4 = v23;
    }

    else
    {
      firstObject = @"Default";
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

uint64_t __51__TIKeyboardInputManager_mul_keyboardConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 languageWithRegion];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __68__TIKeyboardInputManager_mul_listOfModelLocalesFromActiveInputModes__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 preferredModelLocaleIdentifier];
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __59__TIKeyboardInputManager_mul_modelLocaleToInputModeMapping__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 preferredModelLocaleIdentifier];
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  [v7 addObject:v3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

void __65__TIKeyboardInputManager_mul_updateLanguageModelForKeyboardState__block_invoke(void *a1, void *a2)
{
  v13 = a2;
  v3 = MEMORY[0x277CCACA8];
  v4 = a1[4];
  v5 = [*(*(a1[6] + 8) + 40) keyboardState];
  v6 = [v5 clientIdentifier];
  if ([v3 _string:v4 matchesString:v6])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = a1[5];
    v9 = [*(*(a1[6] + 8) + 40) keyboardState];
    v10 = [v9 recipientIdentifier];
    LODWORD(v7) = [v7 _string:v8 matchesString:v10];

    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = [*(*(a1[6] + 8) + 40) languageSelectionController];
    [v5 setAdaptationContext:v13];
  }

  else
  {
  }

LABEL_6:
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

- (id)dynamicResourcePath
{
  config = [(TIKeyboardInputManager *)self config];
  dynamicResourcePath = [config dynamicResourcePath];

  return dynamicResourcePath;
}

- (BOOL)shouldSuppressTokenIDLookups
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  secureTextEntry = [keyboardState secureTextEntry];

  if (secureTextEntry)
  {
    return 1;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  textInputTraits = [keyboardState2 textInputTraits];
  v5 = [textInputTraits autocorrectionType] == 1;

  return v5;
}

- (id)inputContext
{
  v3 = KB::ns_string((self->m_impl + 440), a2);
  v4 = [(TIKeyboardInputManager *)self internalStringToExternal:v3];

  return v4;
}

uint64_t __50__TIKeyboardInputManager_mul_updateLanguagePriors__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 weightForInputMode:v4];
  v6 = v5;
  v7 = [*(a1 + 32) lexiconIDForInputMode:v4];

  v8 = *(a1 + 40);
  v9 = KB::StaticDictionary::lexicon_index(v8, v7);
  if (v9 != -1)
  {
    *(*(v8 + 3) + 4 * v9) = v6;
  }

  v10 = *(a1 + 48);

  return KB::LanguageModelContainer::set_lexicon_prior_probability(v10, v7, v6);
}

void __65__TIKeyboardInputManager_mul_updateLanguageModelForKeyboardState__block_invoke_101(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 weightForInputMode:v4];
  v6 = v5;
  v7 = [v4 preferredModelLocaleIdentifier];
  std::string::basic_string[abi:nn200100]<0>(__p, [v7 UTF8String]);

  v8 = [v4 locale];
  v9 = [v8 localeIdentifier];
  v10 = TILexiconIDForLocaleIdentifier([v9 UTF8String]);

  v11 = *(*(a1 + 40) + 8);
  v16 = __p;
  v12 = std::__hash_table<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v11 + 48), __p, &v16);
  v15 = v10;
  v16 = &v15;
  *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v12 + 7, v10, &v16) + 5) = v6;

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void __193__TIKeyboardInputManager_mul_modelLoaderForModelLocaleMapping_customResourcePaths_dynamicResourcePath_usesLinguisticContext_isMultiLingualModeEnabled_validEnglishTransformerMultilingualConfig___block_invoke(uint64_t a1, void *a2)
{
  v18 = [a2 preferredModelLocaleIdentifier];
  v3 = [*(a1 + 32) objectForKey:?];

  if (!v3)
  {
    v4 = [*(a1 + 40) objectForKey:v18];
    v5 = [v4 firstObject];

    v6 = +[TITrialManagerProxy sharedManager];
    v7 = [v5 locale];
    v8 = [v6 encodedLMTrialParametersForLocale:v7];

    v17 = [*(a1 + 48) languageModelAssetsForInputMode:v5];
    v9 = [v5 preferredModelLocaleIdentifier];
    v10 = [v5 preferredModelLocaleIsMultilingual];
    v12 = *(a1 + 56);
    v11 = *(a1 + 64);
    HIDWORD(v16) = *(a1 + 72);
    LOWORD(v7) = *(a1 + 73);
    v13 = [*(a1 + 48) inputMode];
    LOBYTE(v6) = [v13 isSiriMode];
    LOBYTE(v16) = [v5 doesSupportInlineCompletion];
    BYTE2(v15) = v6;
    LOWORD(v15) = v7;
    v14 = [TILanguageModelLoaderManager sharedLanguageModelLoaderForModelLocaleIdentifier:"sharedLanguageModelLoaderForModelLocaleIdentifier:isMultilingualModel:customResourcePaths:dynamicResourcePath:mobileAssets:usesLinguisticContext:isMultiLingualModeEnabled:validEnglishTransformerMultilingualConfig:isSiriMode:trialParameters:isInlineCompletionEnabled:" isMultilingualModel:v9 customResourcePaths:v10 dynamicResourcePath:v12 mobileAssets:v11 usesLinguisticContext:v17 isMultiLingualModeEnabled:HIDWORD(v16) validEnglishTransformerMultilingualConfig:v15 isSiriMode:v8 trialParameters:v16 isInlineCompletionEnabled:?];

    [*(a1 + 32) setObject:v14 forKey:v18];
  }
}

void __54__TIKeyboardInputManager_mul_lexiconInformationVector__block_invoke(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) weightForInputMode:v3];
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_lexiconInfoForInputMode_(v6);
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    memset(v60, 0, sizeof(v60));
  }

  DWORD2(v69) = v5;
  if (_os_feature_enabled_impl())
  {
    [*(a1 + 32) adjustLexiconInfoIfNeeded:v60 givenInputMode:v3];
  }

  v7 = *(*(a1 + 40) + 8);
  v9 = v7[7];
  v8 = v7[8];
  if (v9 >= v8)
  {
    v11 = v7[6];
    v12 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v11) >> 4);
    if ((v12 + 1) > 0x1745D1745D1745DLL)
    {
      goto LABEL_65;
    }

    v13 = 0x2E8BA2E8BA2E8BA3 * ((v8 - v11) >> 4);
    v14 = 2 * v13;
    if (2 * v13 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0xBA2E8BA2E8BA2ELL)
    {
      v15 = 0x1745D1745D1745DLL;
    }

    else
    {
      v15 = v14;
    }

    v51[0] = v7 + 6;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LexiconInfo>>(v15);
    }

    v16 = 176 * v12;
    std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo&,void,0>(v16, v60);
    v10 = v16 + 176;
    v17 = v7[6];
    v18 = v7[7];
    v19 = v16 + v17 - v18;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LexiconInfo>,KB::LexiconInfo*>(v17, v18, v19);
    v20 = v7[6];
    v7[6] = v19;
    v7[7] = v10;
    v21 = v7[8];
    v7[8] = 0;
    *&v50 = v20;
    *(&v50 + 1) = v21;
    v49[0] = v20;
    v49[1] = v20;
    std::__split_buffer<KB::LexiconInfo>::~__split_buffer(v49);
  }

  else
  {
    std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo&,void,0>(v7[7], v60);
    v10 = v9 + 176;
  }

  v7[7] = v10;
  v22 = [v3 languageWithRegion];
  [v22 UTF8String];
  v23 = _os_feature_enabled_impl();

  if (!v23)
  {
    goto LABEL_49;
  }

  v24 = *(a1 + 32);
  v25 = [v3 locale];
  v26 = [v25 localeIdentifier];
  if (v24)
  {
    objc_msgSend_lexiconInfoForMultilingualDynamic_(v24);
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    *v53 = 0u;
    v54 = 0u;
    *v51 = 0u;
    v52 = 0u;
    *v49 = 0u;
    v50 = 0u;
  }

  DWORD2(v59) = v5;
  v27 = *(*(a1 + 40) + 8);
  v29 = v27[7];
  v28 = v27[8];
  if (v29 >= v28)
  {
    v31 = v27[6];
    v32 = 0x2E8BA2E8BA2E8BA3 * ((v29 - v31) >> 4);
    if ((v32 + 1) <= 0x1745D1745D1745DLL)
    {
      v33 = 0x2E8BA2E8BA2E8BA3 * ((v28 - v31) >> 4);
      v34 = 2 * v33;
      if (2 * v33 <= v32 + 1)
      {
        v34 = v32 + 1;
      }

      if (v33 >= 0xBA2E8BA2E8BA2ELL)
      {
        v35 = 0x1745D1745D1745DLL;
      }

      else
      {
        v35 = v34;
      }

      v48 = v27 + 6;
      if (v35)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LexiconInfo>>(v35);
      }

      v36 = 176 * v32;
      std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo&,void,0>(v36, v49);
      v30 = v36 + 176;
      v37 = v27[6];
      v38 = v27[7];
      v39 = v36 + v37 - v38;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LexiconInfo>,KB::LexiconInfo*>(v37, v38, v39);
      v40 = v27[6];
      v27[6] = v39;
      v27[7] = v30;
      v41 = v27[8];
      v27[8] = 0;
      v46 = v40;
      v47 = v41;
      __p[0] = v40;
      __p[1] = v40;
      std::__split_buffer<KB::LexiconInfo>::~__split_buffer(__p);
      goto LABEL_32;
    }

LABEL_65:
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo&,void,0>(v27[7], v49);
  v30 = v29 + 176;
LABEL_32:
  v27[7] = v30;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v42 = *(*(a1 + 56) + 8);
  v43 = [v3 locale];
  v44 = [v43 localeIdentifier];
  std::string::basic_string[abi:nn200100]<0>(__p, [v44 UTF8String]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>((v42 + 48), __p, __p);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v57 + 1) && BYTE6(v57) == 1)
  {
    free(*(&v57 + 1));
  }

  if (*(&v55 + 1) && BYTE6(v55) == 1)
  {
    free(*(&v55 + 1));
  }

  if (v53[1] && BYTE6(v53[0]) == 1)
  {
    free(v53[1]);
  }

  if (v51[1] && BYTE6(v51[0]) == 1)
  {
    free(v51[1]);
  }

  if (v49[1] && BYTE6(v49[0]) == 1)
  {
    free(v49[1]);
  }

LABEL_49:
  if (*(&v67 + 1) && BYTE6(v67) == 1)
  {
    free(*(&v67 + 1));
  }

  if (*(&v65 + 1) && BYTE6(v65) == 1)
  {
    free(*(&v65 + 1));
  }

  if (*(&v63 + 1) && BYTE6(v63) == 1)
  {
    free(*(&v63 + 1));
  }

  if (*(&v61 + 1) && BYTE6(v61) == 1)
  {
    free(*(&v61 + 1));
  }

  if (v60[1] && BYTE6(v60[0]) == 1)
  {
    free(v60[1]);
  }
}

void __54__TIKeyboardInputManager_mul_keyLayoutMapAsNearbyKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9 = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = a2;
  v8 = [v5 arrayWithObjects:&v9 count:1];
  [v4 setValue:v8 forKey:{v7, v9, v10}];
}

void __51__TIKeyboardInputManager_mul_keyLayoutDidChangeTo___block_invoke(id *a1, const char *a2, __int16 a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = [MEMORY[0x277CCACA8] stringWithCString:a2 encoding:4];
  v15 = [a1[4] objectForKey:v14];
  if ([a1[5] isShifted] && (objc_msgSend(a1[6], "usesFavonius") & 1) == 0)
  {
    v16 = [v15 uppercaseString];

    v15 = v16;
  }

  if (v15)
  {
    KB::String::String(v26, a2);
    KB::utf8_string(v15, v24);
    v29.origin.x = a4;
    v29.origin.y = a5;
    v29.size.width = a6;
    v29.size.height = a7;
    TIInputManager::register_key_area(*(a1[6] + 5), v24, v29, a3);
    v17 = *(a1[6] + 5);
    KB::String::String(v22, v26);
    KB::String::String(v20, v24);
    v19 = v22;
    v18 = std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>((v17 + 176), v22, &v19);
    KB::String::operator=((v18 + 6), v20);
    if (v21 && v20[6] == 1)
    {
      free(v21);
    }

    if (v23 && v22[6] == 1)
    {
      free(v23);
    }

    if (v25 && v24[6] == 1)
    {
      free(v25);
    }

    if (v27 && v26[6] == 1)
    {
      free(v27);
    }
  }
}

uint64_t __49__TIKeyboardInputManager_mul_setInput_withIndex___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = MEMORY[0x2318BF290](*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  *a3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL __64__TIKeyboardInputManager_mul_stringIsRecognizedByAlternativeIM___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 candidate];
  if (objc_msgSend_isEqualToString_(v3))
  {
    v4 = [v2 lexiconLocale];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __82__TIKeyboardInputManager_mul_shouldPassAlternativeInputAsPrediction_isRecognized___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 lexiconLocale];
  v3 = v2 != 0;

  return v3;
}

id __63__TIKeyboardInputManager_mul_handleCandidateAutocapitalization__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 candidate];
  v5 = [v3 lexiconLocale];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v6 = [*(a1 + 32) normalizedIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(v5);

  if (isEqualToString)
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v10 = [*(a1 + 40) normalizedIdentifier];
    v11 = objc_msgSend_isEqualToString_(v5);

    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v17 = 136315138;
        v18 = "[TIKeyboardInputManager_mul handleCandidateAutocapitalization]_block_invoke";
        _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Received a candidate with a non-nil lexicon locale that is neither primary nor secondary.", &v17, 0xCu);
      }

      v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v5];
      goto LABEL_11;
    }

    v8 = *(a1 + 40);
  }

  v12 = [v8 locale];
LABEL_11:
  v9 = v12;
LABEL_12:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && ([v3 isAlternativeInput] & 1) == 0 && objc_msgSend(v4, "_isLowercaseStringWithLocale:", v9))
  {
    v13 = [v4 capitalizedStringWithLocale:v9];

    v14 = [v3 input];
    v15 = [v3 candidateByReplacingWithCandidate:v13 input:v14 rawInput:0];

    v4 = v13;
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

void __63__TIKeyboardInputManager_mul_handleCandidateAutocapitalization__block_invoke_34(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

void __63__TIKeyboardInputManager_mul_handleCandidateAutocapitalization__block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

uint64_t __82__TIKeyboardInputManager_mul_candidateArray_withCandidateUniquelyInsertedToFront___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidate];
  v4 = [*(a1 + 32) candidate];
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  return isEqualToString ^ 1u;
}

id __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [v5 candidate];
    if (a3)
    {
      v7 = [v5 lexiconLocale];
      if (!v7 || (v8 = v7, [*(a1 + 32) keyboardState], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "autocorrectionEnabled"), v9, v8, (v10 & 1) == 0))
      {
        v11 = *(a1 + 40);

        v6 = v11;
      }
    }

    v12 = [v5 candidateByReplacingWithCandidate:v6 input:*(a1 + 40) rawInput:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[TIKeyboardInputManager_mul updateAutocorrectionListGivenOutdatedInput:andUpdatedInput:]_block_invoke";
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Received a candidate that could not be replaced but has to.", &v14, 0xCu);
    }

    v12 = v5;
  }

  return v12;
}

void __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke_23(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

void __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

void __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

uint64_t __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 candidate];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString ^ 1u;
}

void *__53__TIKeyboardInputManager_mul_getBetterLexiconLocale___block_invoke(void *result, void *a2)
{
  if (!*(*(result[6] + 8) + 40))
  {
    v3 = result;
    v4 = result[4];
    v5 = result[5];
    v6 = a2;
    v7 = [v5 candidate];
    v8 = [v4 lexiconLocaleOfString:v7 inputMode:v6];

    v9 = *(v3[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = v3[5];
    v12 = *(*(v3[6] + 8) + 40);

    return [v11 setLexiconLocale:v12];
  }

  return result;
}

uint64_t __74__TIKeyboardInputManager_mul_textContentTypesPreferringSecondaryInputMode__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D6FCE0], *MEMORY[0x277D6FCE8], *MEMORY[0x277D6FC58], 0}];
  v1 = +[TIKeyboardInputManager_mul textContentTypesPreferringSecondaryInputMode]::textContentTypes;
  +[TIKeyboardInputManager_mul textContentTypesPreferringSecondaryInputMode]::textContentTypes = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 30) = 0;
  *(self + 31) = 0;
  *(self + 29) = 0;
  *(self + 33) = 0;
  *(self + 34) = 0;
  return self;
}

- (_NSRange)candidateRange
{
  p_candidateRange = &self->_candidateRange;
  location = self->_candidateRange.location;
  length = p_candidateRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (TISupplementalLexiconController)currentCandidateGenerationContextSupplementalLexicons
{
  WeakRetained = objc_loadWeakRetained(&self->_currentCandidateGenerationContextSupplementalLexicons);

  return WeakRetained;
}

- (unsigned)sourceMaskForWord:(Word *)word
{
  var8 = word->var8;
  if ((var8 & 0x40000) != 0)
  {
    if (word->var18)
    {
      v4 = 0x20000;
    }

    else
    {
      v4 = 0x8000;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((var8 & 0x80032000) != 0)
  {
    if (word->var18)
    {
      v5 = 0x40000;
    }

    else
    {
      v5 = 0x10000;
    }

    v4 |= v5;
  }

  if (word->var19.var0.var2)
  {
    v4 |= 0x400u;
  }

  v6 = vshlq_u32(vdupq_n_s32(var8), xmmword_22CC88AD0);
  v7 = v6.i16[4] & 0x200;
  v8 = vandq_s8(v6, xmmword_22CC88AE0);
  v9 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  return v9.i32[0] | (var8 >> 21) & 0x80 | v9.i32[1] | (var8 >> 19) & 0x100 | v7 | v4;
}

- (unsigned)sourceMaskForWordString:(String *)string caseSensitive:(BOOL)sensitive
{
  v14 = *MEMORY[0x277D85DE8];
  TIInputManager::matching_words_from_dictionary(self->m_impl, string, string, sensitive, &v10);
  v5 = v10;
  v6 = v11;
  if (v10 == v11)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      KB::Word::Word(v13, v5);
      v8 = [(TIKeyboardInputManager *)self sourceMaskForWord:v13];
      KB::Word::~Word(v13);
      v7 |= v8;
      v5 += 30;
    }

    while (v5 != v6);
  }

  v12 = &v10;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v12);
  return v7;
}

- (unsigned)adjustedSourceMaskFromCandidate:(id)candidate
{
  v30 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  sourceMask = [candidateCopy sourceMask];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    candidate = [candidateCopy candidate];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    locale = [inputMode locale];
    KB::utf8_string_tokens_from_string(candidate, v26);

    v9 = v26[0];
    v10 = v26[1];
    while (v9 != v10)
    {
      KB::String::String(buf, v9);
      KB::String::String(v27, buf);
      v11 = [(TIKeyboardInputManager *)self sourceMaskForWordString:v27 caseSensitive:0];
      if (v28)
      {
        v12 = v27[6] == 1;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        free(v28);
      }

      if (*(&buf[0] + 1))
      {
        if (BYTE6(buf[0]) == 1)
        {
          free(*(&buf[0] + 1));
        }
      }

      sourceMask |= v11;
      v9 = (v9 + 32);
    }

    *&buf[0] = v26;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](buf);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceMask |= 4u;
  }

  if ([candidateCopy isResponseKitCandidate])
  {
    v13 = sourceMask | 0x2000;
  }

  else
  {
    v13 = sourceMask;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proactiveTrigger = [candidateCopy proactiveTrigger];

    if (proactiveTrigger)
    {
      v13 |= 0x40u;
    }
  }

  candidate2 = [candidateCopy candidate];
  _containsEmoji = [candidate2 _containsEmoji];

  if (_containsEmoji)
  {
    v17 = v13 | 0x4000;
  }

  else
  {
    v17 = v13;
  }

  if ([candidateCopy isToucanInlineCompletionCandidate])
  {
    v17 |= 0x80000u;
  }

  if (IXACanLogMessageAtLevel())
  {
    v18 = IXADefaultLogFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = MEMORY[0x277CCACA8];
      candidate3 = [candidateCopy candidate];
      input = [candidateCopy input];
      [candidateCopy sourceMask];
      v23 = TIStatisticCandidateSourceAsString();
      v24 = TIStatisticCandidateSourceAsString();
      v25 = [v20 stringWithFormat:@"%s SourceMaskTesting |%@|%@|%@|%@|", "-[TIKeyboardInputManager adjustedSourceMaskFromCandidate:]", candidate3, input, v23, v24];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v25;
      _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  return v17;
}

- (TIStickerCandidateGenerator)stickerCandidateGenerator
{
  if (TI_DEVICE_UNLOCKED_SINCE_BOOT() && [(TIKeyboardInputManager *)self isStickerSuggestionsEnabled])
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [currentLocale languageCode];

    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    languageWithRegion = [inputMode languageWithRegion];

    if ((_os_feature_enabled_impl() & 1) != 0 || [languageCode hasPrefix:@"en"] && objc_msgSend(languageWithRegion, "hasPrefix:", @"en"))
    {
      v7 = +[TIStickerCandidateGenerator sharedInstance];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didUpdateInputModes:(id)modes
{
  activeInputModes = [modes activeInputModes];
  emojiCandidateGenerator = [(TIKeyboardInputManager *)self emojiCandidateGenerator];
  [emojiCandidateGenerator updateForActiveInputModes:activeInputModes];
}

- (id)resourceInputModes
{
  v6[1] = *MEMORY[0x277D85DE8];
  dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
  v3 = dictionaryInputMode;
  if (dictionaryInputMode)
  {
    v6[0] = dictionaryInputMode;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (unsigned)predominantLexiconInContext
{
  if (!*(self->m_impl + 34))
  {
    return 0;
  }

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  v6 = contextBeforeInput;
  if (contextBeforeInput)
  {
    v7 = contextBeforeInput;
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

  v8 = v7;

  objc_msgSend_sentenceContextForInputStem_inputContext_(self);
  v9 = (*(**(self->m_impl + 34) + 440))();
  v16 = &v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v16);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v14);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return v9;
}

- (BOOL)acceptsRange:(_NSRange)range inString:(id)string
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__TIKeyboardInputManager_acceptsRange_inString___block_invoke;
  v6[3] = &unk_278731720;
  v6[4] = self;
  v6[5] = &v7;
  [string _enumerateLongCharactersInRange:range.location usingBlock:{range.length, v6}];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__48__TIKeyboardInputManager_acceptsRange_inString___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) acceptsCharacter:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

- (BOOL)acceptsCharacter:(unsigned int)character
{
  v3 = *&character;
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  LOBYTE(v3) = [keyboardFeatureSpecialization acceptsCharacter:v3];

  return v3;
}

- (id)candidateResultSet
{
  candidates = [(TIKeyboardInputManager *)self candidates];
  v4 = [(TIKeyboardInputManager *)self candidateResultSetFromCandidates:candidates];

  return v4;
}

- (BOOL)doesSelectedTextGenerateEmojiCandidates
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  selectedText = [documentState selectedText];

  if (selectedText)
  {
    emojiCandidateGenerator = [(TIKeyboardInputManager *)self emojiCandidateGenerator];
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:selectedText];
    v8 = [emojiCandidateGenerator emojiReplacementCandidates:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 count] != 0;

  return v9;
}

- (id)typedStringForEmptyAutocorrection
{
  v20 = *MEMORY[0x277D85DE8];
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];

  if (revisionHistory)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__11451;
    v18 = __Block_byref_object_dispose__11452;
    v19 = &stru_283FDFAF8;
    revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
    selectedRange = [revisionHistory2 selectedRange];

    revisionHistory3 = [(TIKeyboardInputManager *)self revisionHistory];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__TIKeyboardInputManager_typedStringForEmptyAutocorrection__block_invoke;
    v13[3] = &unk_2787316F8;
    v13[5] = &v14;
    v13[6] = selectedRange;
    v13[4] = self;
    [revisionHistory3 enumerateSentenceStemUsingBlock:v13];

    if (!CEMStringIsSingleEmoji())
    {
      inputStem = [(TIKeyboardInputManager *)self inputStem];
      v8 = [*(v15 + 5) length];
      if (v8 > [inputStem length])
      {
        objc_storeStrong(v15 + 5, inputStem);
      }
    }

    v9 = *(v15 + 5);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    TIInputManager::legacy_input_stem(&v14, self->m_impl);
    v11 = KB::ns_string(&v14, v10);
    v9 = [(TIKeyboardInputManager *)self internalStringToExternal:v11];

    if (v15 && BYTE6(v14) == 1)
    {
      free(v15);
    }
  }

  return v9;
}

void __59__TIKeyboardInputManager_typedStringForEmptyAutocorrection__block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v14 = a2;
  if (a3 < *(a1 + 48))
  {
    v20 = v14;
    v15 = [*(a1 + 32) revisionHistory];
    v16 = [v15 documentText];
    v17 = [v16 substringWithRange:{a3, *(a1 + 48) - a3}];

    if (a3 + a4 >= *(a1 + 48))
    {
      if (![*(a1 + 32) stringEndsWord:v20] || CEMStringIsSingleEmoji())
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v17);
        if ([v20 length] == 1)
        {
          v18 = [*(a1 + 32) nonstopPunctuationCharacters];
          v19 = [v18 containsString:v20];

          if (v19)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else if (a3 + a4 == a5 + a6 && ([*(a1 + 32) stringEndsWord:v20] & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v17);
    }

    *a8 = 1;
LABEL_11:

    v14 = v20;
  }
}

- (BOOL)shouldGeneratePredictionsForCurrentContext
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  predictionEnabled = [mEMORY[0x277D6F470] predictionEnabled];

  config = [(TIKeyboardInputManager *)self config];
  if (([config usesWordNgramModel] & 1) == 0)
  {
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    supportsMultilingualKeyboard = [inputMode supportsMultilingualKeyboard];

    if ((supportsMultilingualKeyboard & predictionEnabled & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState documentState];
    contextBeforeInput = [documentState contextBeforeInput];

    if (![contextBeforeInput length])
    {
      v6 = 1;
LABEL_19:

      return v6;
    }

    v12 = [contextBeforeInput rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(contextBeforeInput, "length") - 1}];
    v14 = [contextBeforeInput substringWithRange:{v12, v13}];
    allowPredictionCharacterSet = [(TIKeyboardInputManager *)self allowPredictionCharacterSet];
    v16 = [v14 rangeOfCharacterFromSet:allowPredictionCharacterSet];

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v14 _containsEmoji])
      {
LABEL_8:
        v6 = 0;
LABEL_18:

        goto LABEL_19;
      }

      if (_os_feature_enabled_impl())
      {
        keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
        needContactAutofill = [keyboardState2 needContactAutofill];
      }

      else
      {
        needContactAutofill = 0;
      }

      inputMode2 = [(TIKeyboardInputManagerBase *)self inputMode];
      languageWithRegion = [inputMode2 languageWithRegion];
      isEqualToString = objc_msgSend_isEqualToString_(languageWithRegion);

      if (isEqualToString)
      {
        if (!(([(TIKeyboardInputManager *)self inputIndex]== 0) | needContactAutofill & 1))
        {
          goto LABEL_8;
        }
      }

      else if ((needContactAutofill & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v6 = 1;
    goto LABEL_18;
  }

  if (predictionEnabled)
  {
    goto LABEL_5;
  }

  return 0;
}

- (NSCharacterSet)allowPredictionCharacterSet
{
  allowPredictionCharacterSet = self->_allowPredictionCharacterSet;
  if (!allowPredictionCharacterSet)
  {
    v4 = [MEMORY[0x277CCAB68] stringWithString:{@" \n\t(., ?!:)@#"}];;
    keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    sentencePrefixingCharacters = [keyboardFeatureSpecialization sentencePrefixingCharacters];
    [v4 appendString:sentencePrefixingCharacters];

    keyboardFeatureSpecialization2 = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    sentenceDelimitingCharacters = [keyboardFeatureSpecialization2 sentenceDelimitingCharacters];
    [v4 appendString:sentenceDelimitingCharacters];

    keyboardFeatureSpecialization3 = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    sentenceTrailingCharacters = [keyboardFeatureSpecialization3 sentenceTrailingCharacters];
    [v4 appendString:sentenceTrailingCharacters];

    v11 = MEMORY[0x277CCA900];
    keyboardFeatureSpecialization4 = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    wordMedialPunctuationCharacters = [keyboardFeatureSpecialization4 wordMedialPunctuationCharacters];
    v14 = [v11 characterSetWithCharactersInString:wordMedialPunctuationCharacters];

    [v4 _removeCharactersFromSet:v14];
    v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v4];
    v16 = self->_allowPredictionCharacterSet;
    self->_allowPredictionCharacterSet = v15;

    allowPredictionCharacterSet = self->_allowPredictionCharacterSet;
  }

  return allowPredictionCharacterSet;
}

- (void)reconcileConversions:(id)conversions
{
  v38 = *MEMORY[0x277D85DE8];
  conversionsCopy = conversions;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [conversionsCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v7 = &stru_283FDFAF8;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(conversionsCopy);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        input = [v9 input];
        v11 = [input length];
        v12 = [(__CFString *)v7 length];

        if (v11 > v12)
        {
          input2 = [v9 input];

          v7 = input2;
        }
      }

      v5 = [conversionsCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

  if ([conversionsCopy count])
  {
    v14 = 0;
    do
    {
      v15 = [conversionsCopy objectAtIndex:v14];
      v16 = [(__CFString *)v7 length];
      input3 = [v15 input];
      v18 = v16 - [input3 length];

      if (v18 >= 1)
      {
        v19 = [(__CFString *)v7 substringToIndex:v18];
        input4 = [v15 input];
        v21 = [v19 stringByAppendingString:input4];

        candidate = [v15 candidate];
        v32 = v19;
        v23 = [v19 stringByAppendingString:candidate];

        wordOriginFeedbackID = [v15 wordOriginFeedbackID];
        usageTrackingMask = [v15 usageTrackingMask];
        sourceMask = [v15 sourceMask];
        v27 = [objc_alloc(MEMORY[0x277D6F568]) initWithCandidate:v23 forInput:v21 rawInput:0 wordOriginFeedbackID:wordOriginFeedbackID usageTrackingMask:usageTrackingMask sourceMask:sourceMask];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v15;
          [v27 setIsFromPhraseDictionary:{objc_msgSend(v28, "isFromPhraseDictionary")}];
          [v27 setIsFromTextChecker:{objc_msgSend(v28, "isFromTextChecker")}];
          isContinuousPathConversion = [v28 isContinuousPathConversion];

          [v27 setContinuousPathConversion:isContinuousPathConversion];
        }

        if (self->_supplementalPrefix)
        {
          [v27 core_updateWithSupplementalItemPrefix:?];
        }

        supplementalItemIdentifiers = [v15 supplementalItemIdentifiers];
        [v27 setSupplementalItemIdentifiers:supplementalItemIdentifiers];

        [conversionsCopy replaceObjectAtIndex:v14 withObject:v27];
      }

      ++v14;
    }

    while (v14 < [conversionsCopy count]);
  }
}

- (id)extendedAutocorrection:(id)autocorrection spanningInputsForCandidates:(id)candidates emojis:(id)emojis
{
  selfCopy = self;
  v58 = *MEMORY[0x277D85DE8];
  autocorrectionCopy = autocorrection;
  candidatesCopy = candidates;
  emojisCopy = emojis;
  candidate = [autocorrectionCopy candidate];
  v10 = candidate;
  if (candidate)
  {
    v11 = candidate;
  }

  else
  {
    v11 = &stru_283FDFAF8;
  }

  v52 = v11;

  v50 = autocorrectionCopy;
  input = [autocorrectionCopy input];
  v13 = input;
  if (input)
  {
    v14 = input;
  }

  else
  {
    v14 = &stru_283FDFAF8;
  }

  v15 = v14;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v16 = candidatesCopy;
  v17 = [v16 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v54;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        if (([v21 isSupplementalItemCandidate] & 1) == 0)
        {
          input2 = [v21 input];
          if (![input2 length])
          {
            goto LABEL_21;
          }

          input3 = [v21 input];
          if (([(__CFString *)v15 hasSuffix:input3]& 1) != 0)
          {
            goto LABEL_20;
          }

          if (![(__CFString *)v15 length])
          {

LABEL_19:
            input4 = [v21 input];
            v27 = [input4 length];
            v28 = v27 - [(__CFString *)v15 length];

            input5 = [v21 input];
            input2 = [input5 substringToIndex:v28];

            v30 = [input2 stringByAppendingString:v52];

            [input2 stringByAppendingString:v15];
            v15 = input3 = v15;
            v52 = v30;
LABEL_20:

LABEL_21:
            continue;
          }

          input6 = [v21 input];
          v25 = [input6 hasSuffix:v15];

          if (v25)
          {
            goto LABEL_19;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v18);
  }

  v31 = emojisCopy;
  if ([emojisCopy count])
  {
    firstObject = [emojisCopy firstObject];
    input7 = [firstObject input];
    v34 = v50;
    if ([input7 containsString:@" "])
    {
      v35 = [input7 length];
      if (v35 > [(__CFString *)v15 length])
      {
        if ([input7 hasSuffix:v15])
        {
          v36 = [input7 substringToIndex:{objc_msgSend(input7, "length") - -[__CFString length](v15, "length")}];
          v37 = [v36 stringByAppendingString:v52];

          v38 = input7;
          v15 = v38;
          v52 = v37;
        }
      }
    }
  }

  else
  {
    v34 = v50;
  }

  input8 = [v34 input];

  if (v15 == input8)
  {
    v45 = v34;
  }

  else
  {
    wordOriginFeedbackID = [v34 wordOriginFeedbackID];
    usageTrackingMask = [v34 usageTrackingMask];
    sourceMask = [v34 sourceMask];
    v43 = objc_alloc(MEMORY[0x277D6F568]);
    rawInput = [v34 rawInput];
    v45 = [v43 initWithCandidate:v52 forInput:v15 rawInput:rawInput wordOriginFeedbackID:wordOriginFeedbackID usageTrackingMask:usageTrackingMask sourceMask:sourceMask];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v45 setIsFromPhraseDictionary:{objc_msgSend(v34, "isFromPhraseDictionary")}];
      [v45 setIsFromTextChecker:{objc_msgSend(v34, "isFromTextChecker")}];
    }

    v31 = emojisCopy;
    if (*(v49 + 284))
    {
      [v45 core_updateWithSupplementalItemPrefix:?];
    }

    supplementalItemIdentifiers = [v34 supplementalItemIdentifiers];
    [v45 setSupplementalItemIdentifiers:supplementalItemIdentifiers];
  }

  return v45;
}

- (id)completionCandidates:(unint64_t)candidates
{
  v35 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v4 = kac_get_log();
  v5 = os_signpost_id_make_with_pointer(v4, (self ^ 0x13));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "kbdManager.generateCompletions", &unk_22CCA4FEF, buf, 2u);
    }
  }

  shiftContext = [(TIKeyboardInputManager *)self shiftContext];
  (*(*self->m_impl + 24))(buf);
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:0x1CAC083126E978D5 * ((v29 - *buf) >> 3)];
  v10 = KB::ns_string(v33, v9);
  v11 = [(TIKeyboardInputManager *)self internalStringToExternal:v10 ignoreCompositionDisabled:1];
  v12 = *buf;
  v13 = v29;
  if (*buf != v29)
  {
    while (!*v12)
    {
LABEL_20:
      v12 = (v12 + 1000);
      if (v12 == v13)
      {
        goto LABEL_21;
      }
    }

    v14 = v11;
    KB::Candidate::capitalized_string(&v26, v12);
    v15 = [(TIKeyboardInputManager *)self phraseCandidateCompletedByWord:&v26 allowNoSuggest:0 forAutocorrection:0 shiftContext:shiftContext];
    if (v27 && BYTE6(v26) == 1)
    {
      free(v27);
    }

    if (!v15)
    {
      v16 = *v12;
      if (*v12)
      {
        v17 = 240 * v16 - 240;
        v18 = (*(v12 + 1) + 104);
        do
        {
          v20 = *v18;
          v18 += 60;
          v19 = v20;
          if ((v20 & 0x10) != 0)
          {
            break;
          }

          v21 = v17;
          v17 -= 240;
        }

        while (v21);
        if ((v19 & 0x10) != 0 || (v16 & 0xFFFFFFFE) != 0 && ![(TIKeyboardInputManager *)self _canSuggestPhraseCandidate:v12 withStem:v14])
        {
          goto LABEL_19;
        }
      }

      v15 = [(TIKeyboardInputManager *)self autocorrectionCandidateForInput:v14 rawInput:v10 withCandidate:v12];
    }

    [v8 addObject:v15];

LABEL_19:
    goto LABEL_20;
  }

LABEL_21:
  kdebug_trace();
  v22 = kac_get_log();
  v23 = os_signpost_id_make_with_pointer(v22, (self ^ 0x13));
  if (v23 - 1 < 0xFFFFFFFFFFFFFFFELL)
  {
    v24 = v23;
    if (os_signpost_enabled(v22))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v22, OS_SIGNPOST_INTERVAL_END, v24, "kbdManager.generateCompletions", &unk_22CCA4FEF, &v26, 2u);
    }
  }

  if (v34 && v33[6] == 1)
  {
    free(v34);
  }

  v26 = &v32;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v26);
  v26 = &v31;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v26);
  v26 = &v30;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v26);
  v26 = buf;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v26);

  return v8;
}

- (BOOL)_canSuggestPhraseCandidate:(void *)candidate withStem:
{
  candidateCopy = candidate;
  if (self)
  {
    if (!*a2)
    {
      goto LABEL_11;
    }

    v6 = 240 * *a2 - 240;
    v7 = (*(a2 + 1) + 224);
    do
    {
      v9 = *v7;
      v7 += 30;
      v8 = v9;
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = v6 == 0;
      }

      v6 -= 240;
    }

    while (!v10);
    if (v8 && (KB::Candidate::is_phrase_from_supplemental_lexicon(a2) & 1) == 0)
    {
      keyboardFeatureSpecialization = [self keyboardFeatureSpecialization];
      v14 = [self prefixLengthOfInput:candidateCopy sharedWithCandidate:a2 useCandidateLength:{objc_msgSend(keyboardFeatureSpecialization, "shouldConvertCandidateToExternal") ^ 1}];

      LODWORD(keyboardFeatureSpecialization) = *a2;
      v11 = keyboardFeatureSpecialization - KB::Candidate::index_of_word_containing_position(a2, v14) == 1;
    }

    else
    {
LABEL_11:
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)newKeyboardContext
{
  v3 = [TIKeyboardInputManagerKeyboardContext alloc];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  v5 = [(TIKeyboardInputManagerKeyboardContext *)v3 initWithKeyboardState:keyboardState];

  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
  [(TIKeyboardInputManagerKeyboardContext *)v5 setRevisionHistory:revisionHistory];

  return v5;
}

- (int)shiftContext
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  shiftState = [keyboardState shiftState];
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  v6 = +[TIKeyboardInputManager shiftContextForShiftState:autocapitalizationType:](TIKeyboardInputManager, "shiftContextForShiftState:autocapitalizationType:", shiftState, [keyboardState2 autocapitalizationType]);

  return v6;
}

- (id)autocorrectionListForEmptyInputWithDesiredCandidateCount:(unint64_t)count
{
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (self ^ 0x12));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "kbdManager.generatePredictions", &unk_22CCA4FEF, buf, 2u);
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  emojiCandidateGenerator = [(TIKeyboardInputManager *)self emojiCandidateGenerator];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  v12 = [emojiCandidateGenerator emojiAdornmentCandidatesForKeyboardState:keyboardState];

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState2 documentState];
  documentIsEmpty = [documentState documentIsEmpty];

  if (documentIsEmpty)
  {
    keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
    responseContext = [keyboardState3 responseContext];
    if (responseContext)
    {
    }

    else
    {
      keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
      inputContextHistory = [keyboardState4 inputContextHistory];

      if (!inputContextHistory)
      {
        goto LABEL_9;
      }
    }

    [(TIKeyboardInputManager *)self learnRecentMessageUserIsRespondingTo];
LABEL_9:
    keyboardState5 = [(TIKeyboardInputManager *)self keyboardState];
    textInputTraits = [keyboardState5 textInputTraits];
    textContentType = [textInputTraits textContentType];

    if (textContentType && [textContentType length])
    {
      v47 = v12;
      keyboardState6 = [(TIKeyboardInputManager *)self keyboardState];
      textInputTraits2 = [keyboardState6 textInputTraits];
      textContentType2 = [textInputTraits2 textContentType];
      v26 = [TIProactiveQuickTypeManager proactiveTriggerForTextContentType:textContentType2];

      if (v26)
      {
        [array2 addObject:v26];
      }

      v12 = v47;
    }
  }

  v27 = [(TIKeyboardInputManager *)self predictionCandidates:count predictionType:3];
  predictions = [v27 predictions];
  [array addObjectsFromArray:predictions];

  v29 = [(TIKeyboardInputManager *)self indexesOfDuplicatesInCandidates:array];
  [array removeObjectsAtIndexes:v29];

  proactiveTriggers = [v27 proactiveTriggers];
  [array2 addObjectsFromArray:proactiveTriggers];

  if (_os_feature_enabled_impl())
  {
    v45 = v27;
    v46 = array;
    v48 = v12;
    keyboardState7 = [(TIKeyboardInputManager *)self keyboardState];
    textInputTraits3 = [keyboardState7 textInputTraits];
    textContentType3 = [textInputTraits3 textContentType];
    keyboardState8 = [(TIKeyboardInputManager *)self keyboardState];
    documentState2 = [keyboardState8 documentState];
    contextBeforeInput = [documentState2 contextBeforeInput];
    [(TIKeyboardInputManager *)self keyboardState];
    v38 = v37 = array2;
    v39 = +[TIProactiveQuickTypeManager proactiveTriggerForTextContentType:withContextBeforeInput:autofillMode:](TIProactiveQuickTypeManager, "proactiveTriggerForTextContentType:withContextBeforeInput:autofillMode:", textContentType3, contextBeforeInput, [v38 autofillMode]);

    array2 = v37;
    if (v39)
    {
      [v37 addObject:v39];
    }

    array = v46;
    v12 = v48;
    v27 = v45;
  }

  kdebug_trace();
  v40 = kac_get_log();
  v41 = os_signpost_id_make_with_pointer(v40, (self ^ 0x12));
  if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v42 = v41;
    if (os_signpost_enabled(v40))
    {
      *v49 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v40, OS_SIGNPOST_INTERVAL_END, v42, "kbdManager.generatePredictions", &unk_22CCA4FEF, v49, 2u);
    }
  }

  v43 = [MEMORY[0x277D6F328] listWithPredictions:array emojiList:v12 proactiveTriggers:array2];

  return v43;
}

- (id)indexesOfDuplicatesInCandidates:(id)candidates
{
  v3 = MEMORY[0x277CBEB58];
  candidatesCopy = candidates;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__TIKeyboardInputManager_indexesOfDuplicatesInCandidates___block_invoke;
  v9[3] = &unk_278732EF8;
  v10 = v5;
  v6 = v5;
  v7 = [candidatesCopy indexesOfObjectsPassingTest:v9];

  return v7;
}

BOOL __58__TIKeyboardInputManager_indexesOfDuplicatesInCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidate];
  v4 = [*(a1 + 32) member:v3];

  if (!v4)
  {
    [*(a1 + 32) addObject:v3];
  }

  return v4 != 0;
}

- (id)continuousPathCandidates:(unint64_t)candidates
{
  v173 = *MEMORY[0x277D85DE8];
  v3 = *(self->m_impl + 33);
  if (!v3 || **(v3 + 8) == *(*(v3 + 8) + 8))
  {
    v10 = 0;
    goto LABEL_164;
  }

  selfCopy = self;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  selectedText = [documentState selectedText];
  v8 = selectedText;
  if (selectedText)
  {
    inputStem = selectedText;
  }

  else
  {
    inputStem = [(TIKeyboardInputManager *)selfCopy inputStem];
  }

  v150 = inputStem;

  keyboardState2 = [(TIKeyboardInputManager *)selfCopy keyboardState];
  documentState2 = [keyboardState2 documentState];
  selectedText2 = [documentState2 selectedText];
  if (selectedText2)
  {
    v148 = 0;
  }

  else
  {
    TIInputManager::input_substring((selfCopy->m_impl + 8), 0, *(selfCopy->m_impl + 24), &v160);
    v148 = KB::ns_string(&v160, v14);
    if (v161 && BYTE6(v160) == 1)
    {
      free(v161);
    }
  }

  if (![(TIKeyboardInputManager *)selfCopy inputIndex]&& [(TIKeyboardInputManager *)selfCopy shouldInsertSpaceBeforePredictions])
  {
    v15 = 1;
    candidatesCopy5 = candidates;
    goto LABEL_22;
  }

  m_impl = selfCopy->m_impl;
  candidatesCopy5 = candidates;
  if (m_impl[220])
  {
    v18 = [MEMORY[0x277CCACA8] _stringWithUnichar:KB::String::last((m_impl + 220))];
    if ([(TIKeyboardInputManager *)selfCopy stringEndsWord:v18]|| (objc_msgSend_isEqualToString_(v18) & 1) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = objc_msgSend_isEqualToString_(v18) ^ 1;
    }

LABEL_22:
    shiftContext = [(TIKeyboardInputManager *)selfCopy shiftContext];
    shiftContext2 = shiftContext;
    if (v15 && !shiftContext)
    {
      if ([(TIKeyboardInputManager *)selfCopy shouldAutocapitalizePredictionAfterSpace])
      {
        keyboardState3 = [(TIKeyboardInputManager *)selfCopy keyboardState];
        shiftContext2 = +[TIKeyboardInputManager shiftContextForShiftState:autocapitalizationType:](TIKeyboardInputManager, "shiftContextForShiftState:autocapitalizationType:", 2, [keyboardState3 autocapitalizationType]);
      }

      else
      {
        shiftContext2 = 0;
      }

      v15 = 1;
    }

    goto LABEL_28;
  }

  shiftContext2 = [(TIKeyboardInputManager *)selfCopy shiftContext];
  v15 = 0;
LABEL_28:
  _hasSupplementalPrefix = [(TIKeyboardInputManager *)selfCopy _hasSupplementalPrefix];
  v22 = !_hasSupplementalPrefix | KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix;
  if ((v22 & 1) == 0)
  {
    KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix = 1;
  }

  v23 = selfCopy->m_impl;
  v166 = MEMORY[0x277D85DD0];
  v167 = 0x40000000;
  v168 = ___ZN14TIInputManager6lookupEN2KB10LookupTypeEj14TIShiftContext_block_invoke;
  v169 = &__block_descriptor_tmp_7_5139;
  v170 = v23;
  v171 = 5;
  v172 = shiftContext2;
  TIInputManager::perform_lookup(v23, 5, candidatesCopy5, &v166, &v160);
  v24 = v160;
  v25 = v161;
  if (v160 == v161)
  {
    goto LABEL_47;
  }

  while (!*v24)
  {
LABEL_35:
    v24 = (v24 + 1000);
    if (v24 == v161)
    {
      v30 = v161;
      goto LABEL_48;
    }
  }

  v26 = 0;
  v27 = (*(v24 + 1) + 224);
  v28 = 240 * *v24;
  while (1)
  {
    v29 = *v27;
    v27 += 30;
    v26 += v29;
    if ((v26 & 0xFFFFFFFE) != 0)
    {
      break;
    }

    v28 -= 240;
    if (!v28)
    {
      goto LABEL_35;
    }
  }

  if (v24 == v161 || (v31 = (v24 + 1000), v24 + 1000 == v161))
  {
LABEL_47:
    v30 = v24;
  }

  else
  {
    v30 = v24;
    do
    {
      v32 = v31;
      v33 = *(v24 + 125);
      if (v33)
      {
        v34 = 0;
        v35 = (*(v24 + 126) + 224);
        v36 = 240 * v33;
        while (1)
        {
          v37 = *v35;
          v35 += 30;
          v34 += v37;
          if ((v34 & 0xFFFFFFFE) != 0)
          {
            break;
          }

          v36 -= 240;
          if (!v36)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
LABEL_44:
        KB::Candidate::operator=(v30, v32);
        v30 += 125;
      }

      v31 = v32 + 125;
      v24 = v32;
    }

    while (v32 + 125 != v25);
    v25 = v161;
  }

LABEL_48:
  std::vector<KB::Candidate>::erase(&v160, v30, v25);
  v38 = v160;
  v39 = v161;
  v153 = v15;
  if (v160 != v161)
  {
    while (1)
    {
      if (*v38)
      {
        v40 = 240 * *v38 - 240;
        v41 = (v38[1] + 104);
        do
        {
          v43 = *v41;
          v41 += 60;
          v42 = v43;
          if ((v43 & 0x10) != 0)
          {
            break;
          }

          v44 = v40;
          v40 -= 240;
        }

        while (v44);
        if ((v42 & 0x10) != 0)
        {
          break;
        }
      }

      v38 += 125;
      if (v38 == v161)
      {
        v38 = v161;
        goto LABEL_67;
      }
    }

    if (v38 != v161)
    {
      v45 = v38 + 125;
      if (v38 + 125 != v161)
      {
        do
        {
          if (!*v45)
          {
            goto LABEL_63;
          }

          v46 = 240 * *v45 - 240;
          v47 = (v45[1] + 104);
          do
          {
            v49 = *v47;
            v47 += 60;
            v48 = v49;
            if ((v49 & 0x10) != 0)
            {
              break;
            }

            v50 = v46;
            v46 -= 240;
          }

          while (v50);
          if ((v48 & 0x10) == 0)
          {
LABEL_63:
            KB::Candidate::operator=(v38, v45);
            v38 += 125;
          }

          v45 += 125;
        }

        while (v45 != v39);
        v39 = v161;
        candidatesCopy5 = candidates;
      }

      v15 = v153;
    }
  }

LABEL_67:
  std::vector<KB::Candidate>::erase(&v160, v38, v39);
  if (v160 != v161)
  {
    v144 = v22;
    rejectedConversionsForCurrentContinuousPath = [(TIKeyboardInputManager *)selfCopy rejectedConversionsForCurrentContinuousPath];
    v52 = [rejectedConversionsForCurrentContinuousPath count];

    v54 = v160;
    if (v52)
    {
      v55 = v161;
      v56 = selfCopy;
      if (v54 != v55)
      {
        do
        {
          lastAcceptedText = [(TIKeyboardInputManager *)v56 lastAcceptedText];

          if (lastAcceptedText)
          {
            if (*v54 < 2uLL)
            {
              goto LABEL_83;
            }

            rejectedConversionsForCurrentContinuousPath2 = [(TIKeyboardInputManager *)v56 rejectedConversionsForCurrentContinuousPath];
            KB::Word::capitalized_string(&v166, *(v54 + 1));
            v60 = KB::ns_string(&v166, v59);
            v61 = [rejectedConversionsForCurrentContinuousPath2 containsObject:v60];

            if (v167 && BYTE6(v166) == 1)
            {
              free(v167);
            }

            v15 = v153;
            if ((v61 & 1) == 0)
            {
              goto LABEL_83;
            }
          }

          else
          {
            rejectedConversionsForCurrentContinuousPath3 = [(TIKeyboardInputManager *)v56 rejectedConversionsForCurrentContinuousPath];
            KB::Candidate::capitalized_string(&v166, v54);
            v64 = KB::ns_string(&v166, v63);
            v65 = [rejectedConversionsForCurrentContinuousPath3 containsObject:v64];

            if (v167 && BYTE6(v166) == 1)
            {
              free(v167);
            }

            v15 = v153;
            if (!v65)
            {
              goto LABEL_83;
            }
          }

          v54 = (v54 + 1000);
        }

        while (v54 != v55);
        v54 = v55;
      }

LABEL_83:

      v53 = v160;
      if (v54 == v160 || v54 == v161)
      {
        v54 = v160;
        if (v15)
        {
          goto LABEL_87;
        }

        goto LABEL_90;
      }

      v53 = std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<KB::Candidate *>>(v160, v54, v54 + 125);
      v54 = v160;
    }

    if (v15)
    {
LABEL_87:
      KB::String::space(v53);
      v66 = &KB::String::space(void)::space;
      goto LABEL_91;
    }

LABEL_90:
    KB::String::empty_string(v53);
    v66 = &KB::String::empty_string(void)::empty_string;
LABEL_91:
    KB::Candidate::capitalized_string(&v158, v54);
    v67 = KB::String::String(&v166, v66);
    KB::String::append(v67, &v158);
    if (v159 && BYTE6(v158) == 1)
    {
      free(v159);
    }

    v68 = [(TIKeyboardInputManager *)selfCopy phraseCandidateCompletedByWord:&v166 allowNoSuggest:0 forAutocorrection:1 shiftContext:shiftContext2];
    if (!v68)
    {
      if (*v54)
      {
        v69 = 240 * *v54 - 240;
        v70 = (*(v54 + 1) + 104);
        do
        {
          v72 = *v70;
          v70 += 60;
          v71 = v72;
          if ((v72 & 0x10) != 0)
          {
            break;
          }

          v73 = v69;
          v69 -= 240;
        }

        while (v73);
        if ((v71 & 0x10) != 0)
        {
          v10 = 0;
          goto LABEL_152;
        }
      }

      v68 = [(TIKeyboardInputManager *)selfCopy autocorrectionCandidateForInput:v150 rawInput:v148 withCandidate:v54 insertingSpace:v15 sharedPrefixLength:0x7FFFFFFFFFFFFFFFLL];
    }

    v74 = 1;
    [v68 setContinuousPathConversion:1];
    config = [(TIKeyboardInputManager *)selfCopy config];
    if ([config usesContinuousPathProgressiveCandidates])
    {
      v74 = *(selfCopy->m_impl + 436) ^ 1;
    }

    [v68 setShouldAccept:v74 & 1];

    if (*(selfCopy->m_impl + 24) < -858993459 * ((*(selfCopy->m_impl + 2) - *(selfCopy->m_impl + 1)) >> 3))
    {
      [v68 setShouldInsertSpaceAfterSelection:1];
    }

    v76 = *(v54 + 192);
    v77 = 0.0;
    v78 = shiftContext2;
    if (v76 > 0.00001)
    {
      v77 = (*(v54 + 193) / v76);
    }

    [v68 setExcessPathRatio:v77];
    candidate = [v68 candidate];
    if (![v150 length])
    {
      config2 = [(TIKeyboardInputManager *)selfCopy config];
      insertsSpaceAfterPredictiveInput = [config2 insertsSpaceAfterPredictiveInput];

      if (insertsSpaceAfterPredictiveInput)
      {
        wordSeparator = [(TIKeyboardInputManager *)selfCopy wordSeparator];
        v82 = [candidate stringByAppendingString:wordSeparator];

        candidate = v82;
      }
    }

    array = [MEMORY[0x277CBEB18] array];
    v83 = [MEMORY[0x277CBEB58] set];
    v151 = v68;
    candidate2 = [v68 candidate];
    [v83 addObject:candidate2];

    v87 = v160;
    v86 = v161;
    v146 = v83;
    if ((0x1CAC083126E978D5 * ((v161 - v160) >> 3)) < 2 || !candidatesCopy5)
    {
LABEL_151:
      [(TIKeyboardInputManager *)selfCopy reconcileConversions:array];
      keyboardState4 = [(TIKeyboardInputManager *)selfCopy keyboardState];
      layoutState = [keyboardState4 layoutState];
      inputMode = [layoutState inputMode];
      v132 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();

      v133 = MEMORY[0x277CCACA8];
      keyboardState5 = [(TIKeyboardInputManager *)selfCopy keyboardState];
      documentState3 = [keyboardState5 documentState];
      contextBeforeInput = [documentState3 contextBeforeInput];
      candidate3 = [v151 candidate];
      v137 = [v133 stringWithFormat:@"%@ %@", contextBeforeInput, candidate3];

      emojiCandidateGenerator = [(TIKeyboardInputManager *)selfCopy emojiCandidateGenerator];
      v140 = [emojiCandidateGenerator emojiReplacementCandidatesForText:v137];

      v141 = [objc_alloc(MEMORY[0x277D6F348]) initWithAutocorrection:v151 alternateCorrections:0];
      v10 = [MEMORY[0x277D6F328] listWithCorrections:v141 predictions:array emojiList:v140 proactiveTriggers:0];

LABEL_152:
      if (v167)
      {
        v142 = BYTE6(v166) == 1;
      }

      else
      {
        v142 = 0;
      }

      v22 = v144;
      if (v142)
      {
        free(v167);
      }

      goto LABEL_158;
    }

    v155 = 0;
    v88 = 1;
    v145 = selfCopy;
    while (1)
    {
      v89 = (v87 + 1000 * v88);
      if (*v89)
      {
        break;
      }

LABEL_146:
      v88 = (v88 + 1);
      if (0x1CAC083126E978D5 * ((v86 - v87) >> 3) <= v88 || v155 >= candidatesCopy5)
      {
        goto LABEL_151;
      }
    }

    if (v15)
    {
      KB::String::space(v85);
      v90 = &KB::String::space(void)::space;
    }

    else
    {
      KB::String::empty_string(v85);
      v90 = &KB::String::empty_string(void)::empty_string;
    }

    KB::Candidate::capitalized_string(&v156, v89);
    KB::String::String(&v158, v90);
    KB::String::append(&v158, &v156);
    if (v157 && BYTE6(v156) == 1)
    {
      free(v157);
    }

    v91 = [(TIKeyboardInputManager *)selfCopy phraseCandidateCompletedByWord:&v158 allowNoSuggest:0 forAutocorrection:0 shiftContext:v78];
    if (!v91)
    {
      if (*v89)
      {
        v92 = 240 * *v89 - 240;
        v93 = (*(v89 + 1) + 104);
        do
        {
          v95 = *v93;
          v93 += 60;
          v94 = v95;
          if ((v95 & 0x10) != 0)
          {
            break;
          }

          v96 = v92;
          v92 -= 240;
        }

        while (v96);
        if ((v94 & 0x10) != 0)
        {
          v91 = 0;
          goto LABEL_142;
        }
      }

      v91 = [(TIKeyboardInputManager *)selfCopy autocorrectionCandidateForInput:v150 rawInput:v148 withCandidate:v89 insertingSpace:v15 sharedPrefixLength:0x7FFFFFFFFFFFFFFFLL];
    }

    candidate4 = [v91 candidate];
    v98 = [v83 containsObject:candidate4];

    if (v98)
    {
LABEL_142:

      v85 = v159;
      if (v159 && BYTE6(v158) == 1)
      {
        free(v159);
      }

      v87 = v160;
      v86 = v161;
      goto LABEL_146;
    }

    candidate5 = [v91 candidate];
    [v83 addObject:candidate5];

    [v91 setContinuousPathConversion:1];
    v100 = v89[192];
    v101 = 0.0;
    if (v100 > 0.00001)
    {
      v101 = (v89[193] / v100);
    }

    [v91 setExcessPathRatio:v101];
    candidate6 = [v91 candidate];
    v103 = candidate;
    input = [v151 input];
    v105 = [input length];
    input2 = [v91 input];
    v107 = [input2 length];

    input3 = [v151 input];
    v109 = input3;
    if (v105 <= v107)
    {
      v116 = [input3 length];
      input4 = [v91 input];
      v118 = [input4 length];

      if (v116 >= v118)
      {
        candidatesCopy5 = candidates;
        v83 = v146;
        goto LABEL_138;
      }

      input5 = [v91 input];
      input6 = [v91 input];
      v121 = [input6 length];
      input7 = [v151 input];
      v113 = [input5 substringToIndex:{v121 - objc_msgSend(input7, "length")}];

      v123 = [v113 stringByAppendingString:v103];
      v115 = v103;
      v103 = v123;
    }

    else
    {
      input8 = [v151 input];
      v111 = [input8 length];
      input9 = [v91 input];
      v113 = [v109 substringToIndex:{v111 - objc_msgSend(input9, "length")}];

      v15 = v153;
      v114 = [v113 stringByAppendingString:candidate6];
      v115 = candidate6;
      candidate6 = v114;
    }

    v83 = v146;

    candidatesCopy5 = candidates;
LABEL_138:
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v125 = [candidate6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if (objc_msgSend_isEqualToString_(v125))
    {
      v126 = 0;
    }

    else
    {
      v126 = v125;
    }

    v127 = [v91 candidateByReplacingWithCandidate:candidate6 input:v103 label:v126];
    [array addObject:v127];
    ++v155;

    selfCopy = v145;
    v78 = shiftContext2;
    goto LABEL_142;
  }

  v10 = 0;
LABEL_158:
  if (v165 && v164[38] == 1)
  {
    free(v165);
  }

  v166 = v164;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v166);
  v166 = &v163;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v166);
  v166 = &v162;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v166);
  v166 = &v160;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v166);
  if ((v22 & 1) == 0)
  {
    KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix = 0;
  }

LABEL_164:

  return v10;
}

- (id)predictionCandidates:(unint64_t)candidates predictionType:(int)type
{
  v4 = *&type;
  v47 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  shouldInsertSpaceBeforePredictions = [(TIKeyboardInputManager *)self shouldInsertSpaceBeforePredictions];
  shiftContext = [(TIKeyboardInputManager *)self shiftContext];
  v9 = shiftContext;
  v33 = shouldInsertSpaceBeforePredictions;
  if (shouldInsertSpaceBeforePredictions && !shiftContext)
  {
    if ([(TIKeyboardInputManager *)self shouldAutocapitalizePredictionAfterSpace])
    {
      keyboardState = [(TIKeyboardInputManager *)self keyboardState];
      v9 = +[TIKeyboardInputManager shiftContextForShiftState:autocapitalizationType:](TIKeyboardInputManager, "shiftContextForShiftState:autocapitalizationType:", 2, [keyboardState autocapitalizationType]);
    }

    else
    {
      v9 = 0;
    }
  }

  TIInputManager::lookup(self->m_impl, v4, candidates, v9, &v39);
  v35 = 0uLL;
  v36 = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(&v35, v42, v43, 0x1CAC083126E978D5 * ((v43 - v42) >> 3));
  v12 = *(&v35 + 1);
  v13 = v35;
  if (*(&v35 + 1) == v35)
  {
    v14 = 0;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0x1CAC083126E978D5 * ((*(&v35 + 1) - v35) >> 3)];
    do
    {
      v15 = [[TIProactiveTrigger alloc] initWithSourceType:0 attributes:*(v13 + 976)];
      [v14 addObject:v15];

      v13 += 1000;
    }

    while (v13 != v12);
  }

  v31 = &v42;
  v16 = KB::ns_string(v45, v11);
  v17 = [(TIKeyboardInputManager *)self internalStringToExternal:v16];
  v19 = v39;
  v18 = v40;
  if (v39 != v40)
  {
    while (!*v19)
    {
LABEL_30:
      v19 = (v19 + 1000);
      if (v19 == v18)
      {
        goto LABEL_31;
      }
    }

    KB::Candidate::capitalized_string(&v37, v19);
    v20 = [(TIKeyboardInputManager *)self phraseCandidateCompletedByWord:&v37 allowNoSuggest:0 forAutocorrection:0 shiftContext:v9];
    if (v38)
    {
      v21 = BYTE6(v37) == 1;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      free(v38);
    }

    if (!v20)
    {
      if (*v19)
      {
        v22 = 240 * *v19 - 240;
        v23 = (*(v19 + 1) + 104);
        do
        {
          v25 = *v23;
          v23 += 60;
          v24 = v25;
          if ((v25 & 0x10) != 0)
          {
            break;
          }

          v26 = v22;
          v22 -= 240;
        }

        while (v26);
        if ((v24 & 0x10) != 0)
        {
          v20 = 0;
LABEL_29:

          goto LABEL_30;
        }
      }

      v20 = [(TIKeyboardInputManager *)self autocorrectionCandidateForInput:v17 rawInput:v16 withCandidate:v19 insertingSpace:v33 sharedPrefixLength:0x7FFFFFFFFFFFFFFFLL, v31];
    }

    input = [v20 input];
    v28 = [input length];

    if (!v28)
    {
      [array addObject:v20];
    }

    goto LABEL_29;
  }

LABEL_31:
  v29 = [MEMORY[0x277D6F328] listWithPredictions:array proactiveTriggers:{v14, v31}];

  v37 = &v35;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v37);
  if (v46 && v45[6] == 1)
  {
    free(v46);
  }

  v37 = &v44;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v37);
  v37 = v32;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v37);
  v37 = &v41;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v37);
  v37 = &v39;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v37);

  return v29;
}

- (BOOL)shouldInsertSpaceBeforePredictions
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  if (![contextBeforeInput length])
  {
    v12 = 0;
    goto LABEL_12;
  }

  v6 = [contextBeforeInput rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(contextBeforeInput, "length") - 1}];
  v8 = [contextBeforeInput substringWithRange:{v6, v7}];
  terminatorsPrecedingAutospace = [(TIKeyboardInputManager *)self terminatorsPrecedingAutospace];
  characterSet = [terminatorsPrecedingAutospace characterSet];
  if ([v8 rangeOfCharacterFromSet:characterSet] != 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_7;
  }

  _containsEmoji = [v8 _containsEmoji];

  if (_containsEmoji)
  {
LABEL_7:
    v12 = 1;
    goto LABEL_8;
  }

  v12 = [(TIKeyboardInputManager *)self stringEndsWithClosingQuote:contextBeforeInput];
LABEL_8:
  lastAcceptedText = [(TIKeyboardInputManager *)self lastAcceptedText];
  if ([lastAcceptedText isContinuousPathConversion])
  {
    isEqualToString = objc_msgSend_isEqualToString_(v8);

    v12 |= isEqualToString ^ 1;
  }

  else
  {
  }

LABEL_12:
  return v12 & 1;
}

- (BOOL)stringEndsWithClosingQuote:(id)quote
{
  quoteCopy = quote;
  if ([quoteCopy length])
  {
    v5 = [quoteCopy rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(quoteCopy, "length") - 1}];
    v7 = [quoteCopy substringWithRange:{v5, v6}];
    smartOptions = [(TIKeyboardInputManager *)self smartOptions];
    if ([smartOptions usesDirectionalQuotes])
    {
      closingQuotes = [(TIKeyboardInputManager *)self closingQuotes];
      characterSet = [closingQuotes characterSet];
      v11 = [v7 rangeOfCharacterFromSet:characterSet];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
    }

    smartOptions2 = [(TIKeyboardInputManager *)self smartOptions];
    if ([smartOptions2 usesDirectionalQuotes])
    {
      openingQuotes = [(TIKeyboardInputManager *)self openingQuotes];
      characterSet2 = [openingQuotes characterSet];
      v16 = [v7 rangeOfCharacterFromSet:characterSet2];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (objc_msgSend_isEqualToString_(v7))
    {
      if (!v5)
      {
LABEL_13:
        v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      if (!objc_msgSend_isEqualToString_(v7) || !v5)
      {
        goto LABEL_17;
      }
    }

    v17 = [quoteCopy rangeOfComposedCharacterSequenceAtIndex:v5 - 1];
    v19 = [quoteCopy substringWithRange:{v17, v18}];
    v20 = [@"}]'”’. ?!;:?…"], "rangeOfString:", v19) != 0x7FFFFFFFFFFFFFFFLL;
    v12 = v20 | ![(TIKeyboardInputManager *)self stringEndsWord:v19];

    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12 & 1;
}

- (_NSRange)rangeOfUnclosedQuoteMatchingQuote:(id)quote inString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  quoteCopy = quote;
  stringCopy = string;
  if (![quoteCopy length])
  {
    goto LABEL_5;
  }

  v11 = [quoteCopy characterAtIndex:0];
  v12 = v11;
  if (v11 == 34)
  {
    v49 = quoteCopy;
    smartOptions = [(TIKeyboardInputManager *)self smartOptions];
    rightDoubleQuote = [smartOptions rightDoubleQuote];
    v24 = v12;
    v25 = [rightDoubleQuote length] != 1;

    smartOptions2 = [(TIKeyboardInputManager *)self smartOptions];
    leftDoubleQuote = [smartOptions2 leftDoubleQuote];
    v15 = [leftDoubleQuote characterAtIndex:0];

    smartOptions3 = [(TIKeyboardInputManager *)self smartOptions];
    rightDoubleQuote2 = [smartOptions3 rightDoubleQuote];
    v18 = rightDoubleQuote2;
    v19 = v25;
    v12 = v24;
    goto LABEL_7;
  }

  if (v11 != 39)
  {
LABEL_5:
    v20 = 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_25;
  }

  v49 = quoteCopy;
  smartOptions4 = [(TIKeyboardInputManager *)self smartOptions];
  leftSingleQuote = [smartOptions4 leftSingleQuote];
  v15 = [leftSingleQuote characterAtIndex:0];

  smartOptions3 = [(TIKeyboardInputManager *)self smartOptions];
  rightDoubleQuote2 = [smartOptions3 rightSingleQuote];
  v18 = rightDoubleQuote2;
  v19 = 0;
LABEL_7:
  v28 = [rightDoubleQuote2 characterAtIndex:v19];

  v29 = [MEMORY[0x277CCAB50] characterSetWithRange:{v12, 1}];
  [v29 addCharactersInRange:{v15, 1}];
  v52 = v29;
  [v29 addCharactersInRange:{v28, 1}];
  if (length)
  {
    v30 = v15;
    v51 = location + length;
    v48 = stringCopy;
    v50 = v28;
    do
    {
      v31 = [stringCopy rangeOfCharacterFromSet:v52 options:6 range:{location, length}];
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v21 = v31;
      v20 = v32;
      v33 = [stringCopy characterAtIndex:v31];
      if (v33 == v30)
      {
        goto LABEL_24;
      }

      if (v33 == v28)
      {
        break;
      }

      if (v33 == v12)
      {
        length = v21 - location;
        if (v21 <= location)
        {
          v37 = 0;
        }

        else
        {
          v34 = [stringCopy rangeOfComposedCharacterSequenceAtIndex:v21 - 1];
          v36 = [stringCopy substringWithRange:{v34, v35}];
          v37 = ![(TIKeyboardInputManager *)self stringEndsWord:v36];
        }

        if (v21 + v20 >= v51)
        {
          v45 = 1;
        }

        else
        {
          v38 = [stringCopy rangeOfComposedCharacterSequenceAtIndex:?];
          [stringCopy substringWithRange:{v38, v39}];
          v40 = v21 - location;
          v41 = v30;
          v42 = v12;
          v44 = v43 = location;
          v45 = [(TIKeyboardInputManager *)self stringEndsWord:v44];

          location = v43;
          v12 = v42;
          v30 = v41;
          length = v40;
          stringCopy = v48;
          if (((v37 | v45) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        if (v37 & v45)
        {
          break;
        }

        v28 = v50;
      }
    }

    while (length);
  }

  v20 = 0;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_24:

  quoteCopy = v49;
LABEL_25:

  v46 = v21;
  v47 = v20;
  result.length = v47;
  result.location = v46;
  return result;
}

- (BOOL)shouldAutocapitalizePredictionAfterSpace
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  autocapitalizationEnabled = [keyboardState autocapitalizationEnabled];

  if (!autocapitalizationEnabled)
  {
    return 0;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  autocapitalizationType = [keyboardState2 autocapitalizationType];

  result = 1;
  if (autocapitalizationType == 1 || autocapitalizationType == 3)
  {
    return result;
  }

  if (autocapitalizationType != 2)
  {
    return 0;
  }

  return [(TIKeyboardInputManager *)self spaceAndNextInputWouldStartSentence];
}

- (BOOL)shouldGenerateSuggestionsForSelectedText
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  selectedText = [documentState selectedText];

  if (([selectedText length] - 1) > 0x3F)
  {
    isEqualToString = 0;
  }

  else
  {
    revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
    currentWord = [revisionHistory currentWord];
    isEqualToString = objc_msgSend_isEqualToString_(currentWord);
  }

  return isEqualToString;
}

- (void)reconcileCandidates:(void *)candidates forTypedString:(String *)string withPhraseCandidate:(void *)candidate replacing:(const String *)replacing
{
  v28 = *MEMORY[0x277D85DE8];
  var2 = string->var2;
  if (!var2)
  {
    KB::String::compute_length(&string->var0);
    var2 = string->var2;
  }

  v11 = replacing->var2;
  if (!v11)
  {
    KB::String::compute_length(&replacing->var0);
    v11 = replacing->var2;
  }

  v12 = (var2 - v11);
  if (v12 < 1)
  {
    if (v12 < 0)
    {
      KB::String::operator=(string, replacing);
      v17 = *candidates;
        ;
      }

      *(candidates + 1) = v17;
    }
  }

  else
  {
    if (string->var4)
    {
      var4 = string->var4;
    }

    else
    {
      var4 = string->var5;
    }

    v22 = var4;
    var0 = string->var0;
    v23 = 0;
    v24 = var0;
    v25 = 0;
    KB::String::iterator::initialize(&v22);
    *&v18 = var4;
    DWORD2(v18) = 0;
    HIDWORD(v18) = var0;
    LODWORD(v19) = 0;
    KB::String::iterator::initialize(&v18);
    v20 = v18;
    v21 = v19;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v20, v12);
    v15 = KB::String::String(v26, &v22, &v20);
    KB::String::append(v15, replacing);
    KB::Candidate::Candidate(&v22, v26, 0);
    KB::Candidate::operator=(candidate, &v22);
    KB::Candidate::~Candidate(&v22);
    if (v27)
    {
      if (v26[6] == 1)
      {
        free(v27);
      }
    }
  }
}

- (id)autocorrectionListForSelectedText
{
  v14[4] = *MEMORY[0x277D85DE8];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  selectedText = [documentState selectedText];

  autocorrectionListsForWordsInDocument = [(TIKeyboardInputManager *)self autocorrectionListsForWordsInDocument];
  v7 = [autocorrectionListsForWordsInDocument objectForKey:selectedText];

  if (!v7 || (-[TIKeyboardInputManager keyboardState](self, "keyboardState"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 shiftState], v8, v9 != 2) && (v9 || -[TIKeyboardInputManager nextInputWouldStartSentence](self, "nextInputWouldStartSentence")))
  {
    m_impl = self->m_impl;
    v11 = [(TIKeyboardInputManager *)self externalStringToInternal:selectedText];
    KB::utf8_string(v11, v14);
    TIInputManager::candidates_for_string(m_impl, v14, [(TIKeyboardInputManager *)self shiftContext]);
  }

  v12 = v7;

  return v12;
}

uint64_t __59__TIKeyboardInputManager_autocorrectionListForSelectedText__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 candidate];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

- (id)cachedAutocorrectionListResponseFor:(id)for
{
  v16 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v5 = forCopy;
  if (!forCopy)
  {
    v7 = 0;
    goto LABEL_10;
  }

  KB::String::String(v13, [forCopy UTF8String]);
  m_impl = self->m_impl;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = ___ZN14TIInputManager30word_from_supplemental_lexiconERN2KB6StringE_block_invoke;
  v10[3] = &__block_descriptor_tmp_5173;
  v10[4] = m_impl;
  KB::DynamicDictionary::word_from_supplemental_lexicon(*(m_impl[33] + 24), v13, v10, v11);
  if (v12)
  {
    v7 = 0;
LABEL_6:
    KB::Word::~Word(v11);
    goto LABEL_7;
  }

  autocorrectionListsForWordsInDocument = [(TIKeyboardInputManager *)self autocorrectionListsForWordsInDocument];
  v7 = [autocorrectionListsForWordsInDocument objectForKey:v5];

  if (v12)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v15 && v14 == 1)
  {
    free(v15);
  }

LABEL_10:

  return v7;
}

- (void)generateCannedResponseCandidatesAsyncForString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  v15 = +[TIResponseKitManager sharedTIResponseKitManager];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  normalizedIdentifier = [inputMode normalizedIdentifier];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  clientIdentifier = [keyboardState clientIdentifier];
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  recipientIdentifier = [keyboardState2 recipientIdentifier];
  BYTE2(v14) = 1;
  LOWORD(v14) = 1;
  [v15 generateResponseKitSuggestionsForString:stringCopy withLanguage:normalizedIdentifier withClientID:clientIdentifier withRecipientID:recipientIdentifier withAdditionalPredictions:0 desiredCandidateCount:10 shouldDisableAutoCaps:v14 stringIsBlocklisted:handlerCopy async:? completionHandler:?];
}

- (id)cannedResponseCandidatesForString:(id)string
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11451;
  v20 = __Block_byref_object_dispose__11452;
  v21 = 0;
  stringCopy = string;
  v5 = +[TIResponseKitManager sharedTIResponseKitManager];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  normalizedIdentifier = [inputMode normalizedIdentifier];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  clientIdentifier = [keyboardState clientIdentifier];
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  recipientIdentifier = [keyboardState2 recipientIdentifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__TIKeyboardInputManager_cannedResponseCandidatesForString___block_invoke;
  v15[3] = &unk_2787316D0;
  v15[4] = &v16;
  BYTE2(v14) = 0;
  LOWORD(v14) = 1;
  [v5 generateResponseKitSuggestionsForString:stringCopy withLanguage:normalizedIdentifier withClientID:clientIdentifier withRecipientID:recipientIdentifier withAdditionalPredictions:0 desiredCandidateCount:10 shouldDisableAutoCaps:v14 stringIsBlocklisted:v15 async:? completionHandler:?];

  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

- (void)updateResponseModelForKeyboardState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    v7 = stateCopy;
    stateCopy = [stateCopy secureTextEntry];
    v5 = v7;
    if ((stateCopy & 1) == 0)
    {
      stateCopy = TI_DEVICE_UNLOCKED_SINCE_BOOT();
      v5 = v7;
      if (stateCopy)
      {
        inputContextHistory = [v7 inputContextHistory];
        [(TIKeyboardInputManager *)self synchronizeConversationHistoryWithInputContextHistory:inputContextHistory];

        v5 = v7;
      }
    }
  }

  MEMORY[0x2821F96F8](stateCopy, v5);
}

- (BOOL)shouldAllowContextWord:(id)word
{
  v20 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  m_impl = self->m_impl;
  if (m_impl && (v6 = m_impl[33]) != 0 && **(v6 + 8) != *(*(v6 + 8) + 8))
  {
    v7 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:wordCopy];
    KB::utf8_string(v7, v17);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    KB::DictionaryContainer::derive_static_words(*(self->m_impl + 33), &v13, v17);
    if (v13 == v14)
    {
      v9 = 1;
    }

    else
    {
      v8 = v13 + 240;
      do
      {
        v9 = (*(v8 - 136) & 0x38000000) == 0;
        v10 = (*(v8 - 136) & 0x38000000) != 0 || v8 == v14;
        v8 += 240;
      }

      while (!v10);
    }

    v16 = &v13;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v16);
    if (v19)
    {
      v11 = v18 == 1;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      free(v19);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldDropInputStem
{
  v10 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (!m_impl || !m_impl[34] || [(TIKeyboardInputManager *)self isLinguisticResourceUpdateScheduled])
  {
    return 1;
  }

  inputStem = [(TIKeyboardInputManager *)self inputStem];
  v7 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:inputStem];
  KB::utf8_string(v7, v8);

  v4 = (*(**(self->m_impl + 34) + 504))();
  if (v9 && v8[6] == 1)
  {
    free(v9);
  }

  return v4;
}

- (BOOL)suggestionBlocklistMatchesStrings:(id)strings
{
  stringsCopy = strings;
  m_impl = self->m_impl;
  if (m_impl && (v6 = *(m_impl + 34)) != 0)
  {
    v7 = *(m_impl + 35);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v6 + 16))(v6))
    {
      cntrl = self->m_lightweight_language_model.__cntrl_;
      self->m_lightweight_language_model.__ptr_ = 0;
      self->m_lightweight_language_model.__cntrl_ = 0;
      if (cntrl)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
      }
    }

    else
    {
      objc_msgSend_loadedLightweightLanguageModel(self);
      v6 = v14;
      v10 = v15;
      v14 = 0;
      v15 = 0;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v7 = v10;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3321888768;
    v12[2] = __60__TIKeyboardInputManager_suggestionBlocklistMatchesStrings___block_invoke;
    v12[3] = &unk_283FDAD08;
    v12[4] = self;
    v12[5] = v6;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = [stringsCopy indexOfObjectPassingTest:v12] != 0x7FFFFFFFFFFFFFFFLL;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __60__TIKeyboardInputManager_suggestionBlocklistMatchesStrings___block_invoke(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dictionaryStringForExternalString:a2];
  KB::utf8_string(v2, v3);

  operator new();
}

- (BOOL)usesRetrocorrection
{
  if (![(TIKeyboardInputManager *)self usesCandidateSelection]&& (m_impl = self->m_impl) != 0 && *(m_impl + 730) == 1)
  {
    v4 = m_impl[34];
    if (v4)
    {
      LODWORD(v4) = (*(*v4 + 16))(v4);
      if (v4)
      {
        LODWORD(v4) = (*(*m_impl[34] + 32))(m_impl[34]);
        if (v4)
        {
          LOBYTE(v4) = *(m_impl[33] + 32) == 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)shortcutConversionForInput:(id)input andExistingString:(id)string existingStringStartsInMiddleOfWord:(BOOL)word
{
  wordCopy = word;
  inputCopy = input;
  v9 = [(TIKeyboardInputManager *)self externalStringToInternal:string];
  v10 = [v9 stringByAppendingString:inputCopy];

  v11 = [(TIKeyboardInputManager *)self internalStringToExternal:v10];

  v12 = [(TIKeyboardInputManager *)self shortcutConversionForString:v11 stringStartsInMiddleOfWord:wordCopy];

  return v12;
}

- (id)shortcutConversionForString:(id)string stringStartsInMiddleOfWord:(BOOL)word
{
  wordCopy = word;
  stringCopy = string;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11451;
  v20 = __Block_byref_object_dispose__11452;
  v21 = 0;
  v7 = [(TIKeyboardInputManager *)self shortcutSearchRangeForString:stringCopy];
  if (v8 < 0x41)
  {
    v9 = v7;
    v10 = v8;
    if (!v7 && wordCopy)
    {
      v11 = objc_alloc_init(MEMORY[0x277D6F560]);
      [v11 setString:stringCopy withSearchRange:{0, v10}];
      if ([v11 advanceToNextToken])
      {
        v9 = 0;
      }

      else
      {
        v9 = v12;
        v10 = [stringCopy length] - v12;
      }
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__TIKeyboardInputManager_shortcutConversionForString_stringStartsInMiddleOfWord___block_invoke;
    v15[3] = &unk_2787316A8;
    v15[4] = self;
    v15[5] = &v16;
    [(TIKeyboardInputManager *)self enumerateWordSuffixesOfString:stringCopy inRange:v9 usingBlock:v10, v15];
  }

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

void __81__TIKeyboardInputManager_shortcutConversionForString_stringStartsInMiddleOfWord___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v21[30] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(*(a1 + 32) + 40);
  KB::utf8_string(v7, v19);
  TIInputManager::conversion_for_shortcut(v21, v8, v19, v9, v10, v11);
  if (v20)
  {
    v12 = v19[6] == 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    free(v20);
  }

  if (LOWORD(v21[0]))
  {
    v13 = objc_alloc(MEMORY[0x277D6F480]);
    v15 = KB::ns_string(v21, v14);
    v16 = [v13 initWithCandidate:v15 forInput:v7];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    *a5 = 1;
  }

  KB::Word::~Word(v21);
}

- (_NSRange)shortcutSearchRangeForString:(id)string
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (string)
  {
    v4 = MEMORY[0x277CCA900];
    stringCopy = string;
    whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
    v7 = [stringCopy rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet options:4];
    v9 = v8;

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7 + v9;
    }

    v10 = [stringCopy length];

    v11 = v10 - v3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v3;
  result.length = v11;
  result.location = v12;
  return result;
}

- (BOOL)shouldSkipShortcutConversionForDocumentState:(id)state
{
  stateCopy = state;
  selectedText = [stateCopy selectedText];

  if (selectedText || ([stateCopy markedText], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = 1;
  }

  else
  {
    contextAfterInput = [stateCopy contextAfterInput];
    if ([contextAfterInput length])
    {
      contextAfterInput2 = [stateCopy contextAfterInput];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v6 = [contextAfterInput2 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)enumerateWordSuffixesOfString:(id)string inRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  blockCopy = block;
  if (length)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v10 = location + length;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __75__TIKeyboardInputManager_enumerateWordSuffixesOfString_inRange_usingBlock___block_invoke;
    v23 = &unk_278731680;
    v27 = location + length;
    v11 = stringCopy;
    v24 = v11;
    v25 = blockCopy;
    v26 = &v28;
    v12 = _Block_copy(&v20);
    v13 = objc_alloc_init(MEMORY[0x277D6F560]);
    [v13 setString:v11 withSearchRange:{location, length, v20, v21, v22, v23}];
    advanceToNextToken = [v13 advanceToNextToken];
    if (v15)
    {
      advanceToNextToken2 = advanceToNextToken;
      v17 = v15;
      do
      {
        if (advanceToNextToken2 <= location)
        {
          v18 = v29;
        }

        else
        {
          [v11 enumerateSubstringsInRange:location options:advanceToNextToken2 - location usingBlock:{514, v12}];
          v18 = v29;
          if (v29[3])
          {
            break;
          }
        }

        v12[2](v12, 0, advanceToNextToken2, v17, advanceToNextToken2, v17, v18 + 3);
        if (*(v29 + 24) == 1)
        {
          break;
        }

        location = advanceToNextToken2 + v17;
        advanceToNextToken2 = [v13 advanceToNextToken];
        v17 = v19;
      }

      while (v19);
    }

    if ((v29[3] & 1) == 0 && v10 > location)
    {
      [v11 enumerateSubstringsInRange:location options:v10 - location usingBlock:{514, v12}];
    }

    _Block_object_dispose(&v28, 8);
  }
}

void __75__TIKeyboardInputManager_enumerateWordSuffixesOfString_inRange_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = [*(a1 + 32) substringWithRange:?];
  (*(*(a1 + 40) + 16))();
  *a7 = *(*(*(a1 + 48) + 8) + 24);
}

- (id)autocorrectionCandidateForInput:(id)input rawInput:(id)rawInput withCandidate:(const void *)candidate insertingSpace:(BOOL)space sharedPrefixLength:(unint64_t)length
{
  spaceCopy = space;
  v121 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  rawInputCopy = rawInput;
  KB::Candidate::capitalized_string(&v119, candidate);
  v15 = KB::ns_string(&v119, v14);
  if (v120)
  {
    v16 = BYTE6(v119) == 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    free(v120);
  }

  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  shouldConvertCandidateToExternal = [keyboardFeatureSpecialization shouldConvertCandidateToExternal];

  if (shouldConvertCandidateToExternal)
  {
    v19 = [(TIKeyboardInputManager *)self internalStringToExternal:v15];

    v15 = v19;
  }

  if (spaceCopy)
  {
    v20 = v15;
    wordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
    v15 = [wordSeparator stringByAppendingString:v20];
    v117 = v20;
  }

  else
  {
    v117 = 0;
  }

  lengthCopy2 = length;
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = [(TIKeyboardInputManager *)self prefixLengthOfInput:inputCopy sharedWithCandidate:candidate];
    keyboardFeatureSpecialization2 = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    lengthCopy2 = length;
    if (([keyboardFeatureSpecialization2 shouldConvertCandidateToExternal] & 1) == 0)
    {
      lengthCopy2 = [(TIKeyboardInputManager *)self prefixLengthOfInput:inputCopy sharedWithCandidate:candidate useCandidateLength:1];
    }
  }

  if (length)
  {
    v24 = [inputCopy substringFromIndex:length];

    inputCopy = v24;
  }

  if (lengthCopy2 && lengthCopy2 < [v15 length])
  {
    v25 = [v15 substringFromIndex:lengthCopy2];

    v15 = v25;
  }

  keyboardFeatureSpecialization3 = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  selfCopy = self;
  if ([keyboardFeatureSpecialization3 shouldConvertAutocorrectionCandidatesToFullWidth])
  {
    _lastGrapheme = [inputCopy _lastGrapheme];
    if ([_lastGrapheme _containsFullwidthLettersAndNumbers])
    {
    }

    else
    {
      [(TIKeyboardInputManager *)self keyboardState];
      v116 = v15;
      v28 = inputCopy;
      v30 = v29 = rawInputCopy;
      layoutState = [v30 layoutState];
      layoutTag = [layoutState layoutTag];
      isEqualToString = objc_msgSend_isEqualToString_(layoutTag);

      rawInputCopy = v29;
      inputCopy = v28;
      v15 = v116;

      if (!isEqualToString)
      {
        goto LABEL_27;
      }
    }

    [v15 _stringByConvertingFromHalfWidthToFullWidth];
    v15 = keyboardFeatureSpecialization3 = v15;
  }

LABEL_27:
  if ((*candidate & 0xFFFFFFFE) != 0)
  {
    v34 = KB::Candidate::index_of_word_containing_position(candidate, length);
  }

  else
  {
    v34 = 0;
  }

  v35 = objc_msgSend_isEqualToString_(v15) ^ 1;
  v36 = v34;
  v38 = *candidate;
  v37 = *(candidate + 1);
  v39 = v37 + 240 * v34;
  v40 = v37 + 240 * *candidate;
  if (*candidate == v34)
  {
    if (v39 != v40)
    {
      v35 |= 2u;
    }

LABEL_43:
    if (v39 != v40)
    {
      v35 |= 4u;
    }

LABEL_45:
    if (v39 != v40)
    {
      v35 |= 0x40u;
    }

LABEL_47:
    if (v39 != v40)
    {
      v35 |= 0x100u;
    }

LABEL_49:
    if (v39 != v40)
    {
      v35 |= 0x200u;
    }

LABEL_51:
    if (v39 == v40)
    {
      v44 = v35;
    }

    else
    {
      v44 = v35 | 0x2000;
    }

    goto LABEL_54;
  }

  v41 = 240 * v38 - 240 * v34;
  v42 = v37 + 240 * v34;
  while (!*(v42 + 120) || (*(v42 + 104) & 0x100000) != 0)
  {
    v42 += 240;
    v41 -= 240;
    if (!v41)
    {
      v42 = v37 + 240 * *candidate;
      break;
    }
  }

  if (v42 != v40)
  {
    v35 |= 2u;
  }

  if (v38 == v34)
  {
    goto LABEL_43;
  }

  v76 = 240 * v38 - 240 * v34;
  v77 = v37 + 240 * v34;
  while ((*(v77 + 106) & 0x20) == 0)
  {
    v77 += 240;
    v76 -= 240;
    if (!v76)
    {
      v77 = v37 + 240 * *candidate;
      break;
    }
  }

  if (v77 != v40)
  {
    v35 |= 4u;
  }

  if (v38 == v34)
  {
    goto LABEL_45;
  }

  v78 = 240 * v38 - 240 * v34;
  v79 = v37 + 240 * v34;
  while ((*(v79 + 107) & 1) == 0)
  {
    v79 += 240;
    v78 -= 240;
    if (!v78)
    {
      v79 = v37 + 240 * *candidate;
      break;
    }
  }

  if (v79 != v40)
  {
    v35 |= 0x40u;
  }

  if (v38 == v34)
  {
    goto LABEL_47;
  }

  v80 = 240 * v38 - 240 * v34;
  v81 = v37 + 240 * v34;
  while ((*(v81 + 107) & 4) == 0)
  {
    v81 += 240;
    v80 -= 240;
    if (!v80)
    {
      v81 = v37 + 240 * *candidate;
      break;
    }
  }

  if (v81 != v40)
  {
    v35 |= 0x100u;
  }

  if (v38 == v34)
  {
    goto LABEL_49;
  }

  v82 = 240 * v38 - 240 * v34;
  v83 = v37 + 240 * v34;
  while ((*(v83 + 104) & 0x2040000) != 0x2000000)
  {
    v83 += 240;
    v82 -= 240;
    if (!v82)
    {
      v83 = v37 + 240 * *candidate;
      break;
    }
  }

  if (v83 != v40)
  {
    v35 |= 0x200u;
  }

  if (v38 == v34)
  {
    goto LABEL_51;
  }

  v84 = 240 * v38 - 240 * v34;
  while ((*(v39 + 105) & 1) == 0)
  {
    v39 += 240;
    v84 -= 240;
    if (!v84)
    {
      v39 = v37 + 240 * *candidate;
      break;
    }
  }

  if (v39 == v40)
  {
    v44 = v35;
  }

  else
  {
    v44 = v35 | 0x2000;
  }

  if (v38 != v34)
  {
    v85 = -240 * v34 + 240 * v38 - 240;
    v86 = (240 * v34 + v37 + 224);
    do
    {
      v88 = *v86;
      v86 += 30;
      v87 = v88;
      if (v88)
      {
        v89 = 1;
      }

      else
      {
        v89 = v85 == 0;
      }

      v85 -= 240;
    }

    while (!v89);
    if (v87)
    {
      v44 |= 0x100000u;
    }
  }

LABEL_54:
  if (KB::Candidate::has_error_correction_type(candidate, v34, 2))
  {
    v44 |= 0x400u;
  }

  if (KB::Candidate::has_error_correction_type(candidate, v34, 4))
  {
    v44 |= 0x800u;
  }

  if (KB::Candidate::has_error_correction_type(candidate, v34, 8))
  {
    v44 |= 0x1000u;
  }

  if (KB::Candidate::has_error_correction_type(candidate, v34, 16))
  {
    v44 |= 0x4000u;
  }

  if (KB::Candidate::has_error_correction_type(candidate, v34, 32))
  {
    v44 |= 0x8000u;
  }

  has_error_correction_type = KB::Candidate::has_error_correction_type(candidate, v34, 64);
  v46 = v44 | 0x10000;
  if (!has_error_correction_type)
  {
    v46 = v44;
  }

  v47 = v46 | HIWORD(*(*(candidate + 1) + 240 * *candidate - 136)) & 8;
  v48 = [inputCopy rangeOfString:@" "];
  v49 = [v15 rangeOfString:@" "];
  if (v48 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v49 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v49 < [inputCopy length])
      {
        v47 |= 0x10u;
      }

      else
      {
        v47 |= 0x80u;
      }
    }
  }

  else
  {
    if (v49 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = 2097184;
    }

    else
    {
      v50 = 32;
    }

    v47 |= v50;
  }

  v51 = *candidate;
  v52 = *(candidate + 1);
  if (*candidate)
  {
    v53 = (v52 + 192);
    v54 = 240 * v51;
    while (1)
    {
      v55 = *v53;
      v53 += 240;
      if (v55 == 1)
      {
        break;
      }

      v54 -= 240;
      if (!v54)
      {
        goto LABEL_81;
      }
    }

    v47 |= 0x40000u;
  }

LABEL_81:
  v56 = v52 + 240 * v51;
  if (*(candidate + 960))
  {
    v57 = v47 | 0x20000;
  }

  else
  {
    v57 = v47;
  }

  v58 = v52 + 240 * v36;
  if (v51 == v36)
  {
    v59 = (v58 != v56) << 15;
LABEL_92:
    if (v58 == v56)
    {
      v62 = v59;
    }

    else
    {
      v62 = v59 | 0x20000;
    }

LABEL_95:
    if (v58 != v56)
    {
      v62 |= 0x10000u;
    }

LABEL_97:
    if (v58 == v56)
    {
      v63 = v62;
    }

    else
    {
      v63 = v62 | 0x40000;
    }

LABEL_100:
    if (v58 != v56)
    {
      v63 |= 4u;
    }

LABEL_102:
    if (v58 != v56)
    {
      v63 |= 8u;
    }

LABEL_104:
    if (v58 != v56)
    {
      v63 |= 0x10u;
    }

LABEL_106:
    if (v58 != v56)
    {
      v63 |= 0x800u;
    }

LABEL_108:
    if (v58 == v56)
    {
      v64 = v63;
    }

    else
    {
      v64 = v63 | 0x20;
    }

LABEL_111:
    if (v58 != v56)
    {
      v64 |= 0x80u;
    }

LABEL_113:
    if (v58 != v56)
    {
      v64 |= 0x100u;
    }

    goto LABEL_115;
  }

  v60 = 240 * v51 - 240 * v36;
  v61 = v52 + 240 * v36;
  while ((*(v61 + 106) & 4) == 0 || (*(v61 + 192) & 1) != 0)
  {
    v61 += 240;
    v60 -= 240;
    if (!v60)
    {
      v61 = v52 + 240 * v51;
      break;
    }
  }

  v59 = (v61 != v56) << 15;
  if (v51 == v36)
  {
    goto LABEL_92;
  }

  v90 = 240 * v51 - 240 * v36;
  v91 = v52 + 240 * v36;
  while ((*(v91 + 106) & 4) == 0 || (*(v91 + 192) & 1) == 0)
  {
    v91 += 240;
    v90 -= 240;
    if (!v90)
    {
      v91 = v52 + 240 * v51;
      break;
    }
  }

  if (v91 == v56)
  {
    v62 = v59;
  }

  else
  {
    v62 = v59 | 0x20000;
  }

  if (v51 == v36)
  {
    goto LABEL_95;
  }

  v92 = 240 * v51 - 240 * v36;
  v93 = v52 + 240 * v36;
  while ((*(v93 + 104) & 0x80032000) == 0 || (*(v93 + 192) & 1) != 0)
  {
    v93 += 240;
    v92 -= 240;
    if (!v92)
    {
      v93 = v52 + 240 * v51;
      break;
    }
  }

  if (v93 != v56)
  {
    v62 |= 0x10000u;
  }

  if (v51 == v36)
  {
    goto LABEL_97;
  }

  v94 = 240 * v51 - 240 * v36;
  v95 = v52 + 240 * v36;
  while ((*(v95 + 104) & 0x80032000) == 0 || (*(v95 + 192) & 1) == 0)
  {
    v95 += 240;
    v94 -= 240;
    if (!v94)
    {
      v95 = v52 + 240 * v51;
      break;
    }
  }

  v63 = v62 | 0x40000;
  if (v95 == v56)
  {
    v63 = v62;
  }

  if (v51 == v36)
  {
    goto LABEL_100;
  }

  v96 = 240 * v51 - 240 * v36;
  v97 = v52 + 240 * v36;
  while ((*(v97 + 106) & 1) == 0)
  {
    v97 += 240;
    v96 -= 240;
    if (!v96)
    {
      v97 = v52 + 240 * v51;
      break;
    }
  }

  if (v97 != v56)
  {
    v63 |= 4u;
  }

  if (v51 == v36)
  {
    goto LABEL_102;
  }

  v98 = 240 * v51 - 240 * v36;
  v99 = v52 + 240 * v36;
  while ((*(v99 + 106) & 2) == 0)
  {
    v99 += 240;
    v98 -= 240;
    if (!v98)
    {
      v99 = v52 + 240 * v51;
      break;
    }
  }

  if (v99 != v56)
  {
    v63 |= 8u;
  }

  if (v51 == v36)
  {
    goto LABEL_104;
  }

  v100 = 240 * v51 - 240 * v36;
  v101 = v52 + 240 * v36;
  while ((*(v101 + 105) & 1) == 0)
  {
    v101 += 240;
    v100 -= 240;
    if (!v100)
    {
      v101 = v52 + 240 * v51;
      break;
    }
  }

  if (v101 != v56)
  {
    v63 |= 0x10u;
  }

  if (v51 == v36)
  {
    goto LABEL_106;
  }

  v102 = 240 * v51 - 240 * v36;
  v103 = v52 + 240 * v36;
  while ((*(v103 + 104) & 0x80000000) == 0)
  {
    v103 += 240;
    v102 -= 240;
    if (!v102)
    {
      v103 = v52 + 240 * v51;
      break;
    }
  }

  if (v103 != v56)
  {
    v63 |= 0x800u;
  }

  if (v51 == v36)
  {
    goto LABEL_108;
  }

  v104 = -240 * v36 + 240 * v51 - 240;
  v105 = (240 * v36 + v52 + 224);
  do
  {
    v107 = *v105;
    v105 += 30;
    v106 = v107;
    if (v107)
    {
      v108 = 1;
    }

    else
    {
      v108 = v104 == 0;
    }

    v104 -= 240;
  }

  while (!v108);
  if (v106)
  {
    v63 |= 0x400u;
  }

  if (v51 == v36)
  {
    goto LABEL_108;
  }

  v109 = 240 * v51 - 240 * v36;
  v110 = v58;
  while ((*(v110 + 106) & 0x80) == 0)
  {
    v110 += 240;
    v109 -= 240;
    if (!v109)
    {
      v110 = v56;
      break;
    }
  }

  if (v110 == v56)
  {
    v64 = v63;
  }

  else
  {
    v64 = v63 | 0x20;
  }

  if (v51 == v36)
  {
    goto LABEL_111;
  }

  v111 = 240 * v51 - 240 * v36;
  v112 = v58;
  while ((*(v112 + 107) & 0x10) == 0)
  {
    v112 += 240;
    v111 -= 240;
    if (!v111)
    {
      v112 = v56;
      break;
    }
  }

  if (v112 != v56)
  {
    v64 |= 0x80u;
  }

  if (v51 == v36)
  {
    goto LABEL_113;
  }

  v113 = 240 * v51 - 240 * v36;
  v114 = v58;
  while ((*(v114 + 107) & 8) == 0)
  {
    v114 += 240;
    v113 -= 240;
    if (!v113)
    {
      v114 = v56;
      break;
    }
  }

  if (v114 != v56)
  {
    v64 |= 0x100u;
  }

  if (v51 != v36)
  {
    v115 = 240 * v51 - 240 * v36;
    while ((*(v58 + 107) & 0x20) == 0)
    {
      v58 += 240;
      v115 -= 240;
      if (!v115)
      {
        v58 = v56;
        break;
      }
    }
  }

LABEL_115:
  if (v58 == v56)
  {
    v65 = v64;
  }

  else
  {
    v65 = v64 | 0x200;
  }

  if (*(candidate + 963))
  {
    v66 = v65 | 0x1000;
  }

  else
  {
    v66 = v65;
  }

  v67 = [objc_alloc(MEMORY[0x277D6F568]) initWithCandidate:v15 forInput:inputCopy rawInput:rawInputCopy wordOriginFeedbackID:*(candidate + 194) usageTrackingMask:v57 sourceMask:v66 learningFlagsMask:*(candidate + 963)];
  v68 = v67;
  v69 = *candidate;
  if (*candidate)
  {
    v70 = 240 * v69;
    v71 = *(candidate + 1);
    v73 = v117;
    v72 = selfCopy;
    while ((*(v71 + 105) & 0x80) == 0)
    {
      v71 += 240;
      v70 -= 240;
      if (!v70)
      {
        goto LABEL_129;
      }
    }
  }

  else
  {
    v71 = *(candidate + 1);
    v73 = v117;
    v72 = selfCopy;
  }

  if (v71 != *(candidate + 1) + 240 * v69)
  {
    [v67 setIsFromTextChecker:1];
  }

LABEL_129:
  if (v72->_supplementalPrefix)
  {
    [v68 core_updateWithSupplementalItemPrefix:?];
  }

  if (v36 >= *candidate)
  {
    [v68 setSupplementalItemIdentifiers:MEMORY[0x277CBEBF8]];
    if (!v73)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  v74 = KB::createNSArray<std::unordered_set<unsigned long long> const&>(*(candidate + 1) + 240 * v36 + 200);
  [v68 setSupplementalItemIdentifiers:v74];

  if (v73)
  {
LABEL_135:
    [v68 setLabel:v73];
  }

LABEL_136:
  [v68 setTypingEngine:*(candidate + 248)];
  populateAutocorrectionAccuracyFields(v68, candidate);

  return v68;
}

- (BOOL)isEditingExistingWord
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_isEditingWordPrefix)
  {
    return 1;
  }

  m_impl = self->m_impl;
  v6 = m_impl[1];
  v5 = (m_impl + 1);
  v7 = -858993459 * ((*(v5 + 1) - v6) >> 3);
  if (*(v5 + 22) >= v7)
  {
    return 0;
  }

  TIInputManager::input_substring(v5, 0, v7, v15);
  v9 = KB::ns_string(v15, v8);
  v10 = [(TIKeyboardInputManager *)self internalStringToExternal:v9];

  if (v17 && v16 == 1)
  {
    free(v17);
  }

  v11 = self->m_impl;
  TIInputManager::input_substring((v11 + 1), 0, -858993459 * ((v11[2] - v11[1]) >> 3), v15);
  KB::utf8_string(v10, v13);
  v12 = TIInputManager::dictionary_contains_word(v11, v15, v13, 0);
  if (v14 && v13[6] == 1)
  {
    free(v14);
  }

  if (v17)
  {
    if (v16 == 1)
    {
      free(v17);
    }
  }

  return (v12 & 1) != 0;
}

- (id)phraseCandidateCompletedByWord:(const String *)word allowNoSuggest:(BOOL)suggest forAutocorrection:(BOOL)autocorrection shiftContext:(int)context
{
  v49 = *MEMORY[0x277D85DE8];
  if (!self->m_impl)
  {
    goto LABEL_25;
  }

  autocorrectionCopy = autocorrection;
  suggestCopy = suggest;
  config = [(TIKeyboardInputManager *)self config];
  if (([config usesRetrocorrection] & 1) == 0)
  {

    goto LABEL_25;
  }

  var0 = word->var0;

  if (!var0)
  {
LABEL_25:
    v34 = 0;
    goto LABEL_26;
  }

  v44 = 0x100000;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  TIInputManager::phrase_completed_by_word(self->m_impl, word, &v44, suggestCopy, autocorrectionCopy, context, &v41);
  if (v41)
  {
    v14 = KB::ns_string(&v44, v13);
    v15 = [(TIKeyboardInputManager *)self internalStringToExternal:v14];
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState documentState];
    selectedText = [documentState selectedText];

    if (selectedText)
    {
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      documentState2 = [keyboardState2 documentState];
      selectedText2 = [documentState2 selectedText];
      v22 = [v15 stringByAppendingString:selectedText2];

      v15 = v22;
    }

    KB::Candidate::capitalized_string(&v39, &v41);
    v24 = KB::ns_string(&v39, v23);
    v25 = [(TIKeyboardInputManager *)self internalStringToExternal:v24];

    if (v40 && BYTE6(v39) == 1)
    {
      free(v40);
    }

    if ((KB::Candidate::is_phrase_from_supplemental_lexicon(&v41) & 1) == 0)
    {
      v26 = [(TIKeyboardInputManager *)self prefixLengthOfInput:v15 sharedWithCandidate:&v41];
      if (v26)
      {
        v27 = v26;
        if ((objc_msgSend_isEqualToString_(v15) & 1) == 0)
        {
          v28 = [v15 substringFromIndex:v27];

          v29 = [v25 substringFromIndex:v27];

          v25 = v29;
          v15 = v28;
        }
      }
    }

    if ([v15 rangeOfString:@" "] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = 1;
    }

    else
    {
      v30 = 33;
    }

    if (v41)
    {
      LODWORD(v31) = 0;
      v32 = v42;
      v33 = 240 * v41;
      do
      {
        if ((*(v32 + 26) & 0x80020100) != 0)
        {
          v30 = v30 | 0x2000;
        }

        else
        {
          v30 = v30;
        }

        KB::Word::Word(v38, v32);
        v31 = [(TIKeyboardInputManager *)self sourceMaskForWord:v38]| v31;
        KB::Word::~Word(v38);
        v32 = (v32 + 240);
        v33 -= 240;
      }

      while (v33);
    }

    else
    {
      v31 = 0;
    }

    v36 = objc_alloc(MEMORY[0x277D6F568]);
    v34 = [v36 initWithCandidate:v25 forInput:v15 rawInput:v14 wordOriginFeedbackID:v43 usageTrackingMask:v30 sourceMask:v31];
    [v34 setIsFromPhraseDictionary:1];
    if (self->_supplementalPrefix)
    {
      [v34 core_updateWithSupplementalItemPrefix:?];
    }

    if (v41)
    {
      v37 = KB::createNSArray<std::unordered_set<unsigned long long> const&>(v42 + 200);
      [v34 setSupplementalItemIdentifiers:v37];
    }

    else
    {
      [v34 setSupplementalItemIdentifiers:MEMORY[0x277CBEBF8]];
    }

    populateAutocorrectionAccuracyFields(v34, &v41);
  }

  else
  {
    v34 = 0;
  }

  KB::Candidate::~Candidate(&v41);
  if (v47 && v46 == 1)
  {
    free(v47);
  }

LABEL_26:

  return v34;
}

- (unint64_t)prefixLengthOfInput:(id)input sharedWithCandidate:(const void *)candidate useCandidateLength:(BOOL)length
{
  lengthCopy = length;
  v45 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__TIKeyboardInputManager_prefixLengthOfInput_sharedWithCandidate_useCandidateLength___block_invoke;
  aBlock[3] = &unk_278731658;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v40 = 0x100000;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v10 = *candidate;
  v34 = v9;
  v11 = 0;
  if (*candidate)
  {
    v12 = *(candidate + 1);
    v13 = 240 * v10 - 240;
    v14 = &stru_283FDFAF8;
    do
    {
      v15 = [(__CFString *)v14 length];
      v16 = v41;
      if (!v41)
      {
        KB::String::compute_length(&v40);
        v16 = v41;
      }

      v17 = v16;
      if (!v15)
      {
        goto LABEL_14;
      }

      if (v15 >= [inputCopy length])
      {
        goto LABEL_14;
      }

      v18 = v11;
      selfCopy = self;
      v20 = lengthCopy;
      v21 = [inputCopy characterAtIndex:?];
      v22 = [inputCopy characterAtIndex:v15];
      v23 = v21;
      lengthCopy = v20;
      self = selfCopy;
      v11 = v18;
      if (!v34[2](v34, v23, v22))
      {
        goto LABEL_14;
      }

      v24 = [(__CFString *)v14 characterAtIndex:v15 - 1];
      v25 = *(v12 + 1);
      if (!v25)
      {
        v25 = v12 + 16;
      }

      v36 = v25;
      v26 = *v12;
      v37 = 0;
      v38 = v26;
      v39 = 0;
      KB::String::iterator::initialize(&v36);
      if (v34[2](v34, v24, v39))
      {
        if (lengthCopy)
        {
          v11 = v17;
        }

        else
        {
          v11 = v15;
        }
      }

      else
      {
LABEL_14:
        v27 = [inputCopy length];
        if (lengthCopy)
        {
          v28 = v17;
        }

        else
        {
          v28 = v15;
        }

        if (v15 == v27)
        {
          v11 = v28;
        }
      }

      KB::String::append(&v40, v12);
      v30 = KB::ns_string(&v40, v29);
      v31 = [(TIKeyboardInputManager *)self internalStringToExternal:v30];

      if (![inputCopy hasPrefix:v31])
      {
        break;
      }

      v12 = (v12 + 240);
      v32 = v13;
      v13 -= 240;
      v14 = v31;
    }

    while (v32);
  }

  else
  {
    v31 = &stru_283FDFAF8;
  }

  if (v43 && v42 == 1)
  {
    free(v43);
  }

  return v11;
}

BOOL __85__TIKeyboardInputManager_prefixLengthOfInput_sharedWithCandidate_useCandidateLength___block_invoke(uint64_t a1, unsigned __int16 a2, UChar32 c)
{
  if (u_isspace(c) || ((1 << u_charType(c)) & 0x1C0) != 0)
  {
    return 0;
  }

  v8 = [*(a1 + 32) wordCharacters];
  v9 = [v8 characterSet];

  v6 = ![v9 characterIsMember:a2] || (objc_msgSend(v9, "characterIsMember:", c) & 1) == 0;
  return v6;
}

- (BOOL)canStartSentenceAfterString:(id)string
{
  stringCopy = string;
  v5 = 0;
  if (stringCopy && self->m_impl)
  {
    autoshiftRegexLoader = [(TIKeyboardInputManager *)self autoshiftRegexLoader];

    if (autoshiftRegexLoader || (-[TIKeyboardInputManager sentenceDelimitingCharacters](self, "sentenceDelimitingCharacters"), v7 = objc_claimAutoreleasedReturnValue(), -[TIKeyboardInputManager sentenceTrailingCharacters](self, "sentenceTrailingCharacters"), v8 = objc_claimAutoreleasedReturnValue(), -[TIKeyboardInputManager sentencePrefixingCharacters](self, "sentencePrefixingCharacters"), v9 = objc_claimAutoreleasedReturnValue(), +[TIAutoshiftRegularExpressionLoader loaderWithSentenceDelimiters:trailingChars:prefixChars:](TIAutoshiftRegularExpressionLoader, "loaderWithSentenceDelimiters:trailingChars:prefixChars:", v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), -[TIKeyboardInputManager setAutoshiftRegexLoader:](self, "setAutoshiftRegexLoader:", v10), v10, v9, v8, v7, [stringCopy length]) && !objc_msgSend(stringCopy, "hasSuffix:", @"\n"))
    {
      v5 = [(TIKeyboardInputManager *)self _canStartSentenceAfterString:stringCopy maxRecursionDepth:2];
    }

    else
    {
      config = [(TIKeyboardInputManager *)self config];
      isTesting = [config isTesting];

      if ((isTesting & 1) == 0)
      {
        autoshiftRegexLoader2 = [(TIKeyboardInputManager *)self autoshiftRegexLoader];
        [autoshiftRegexLoader2 startBackgroundLoad];
      }

      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)_canStartSentenceAfterString:(id)string maxRecursionDepth:(unint64_t)depth
{
  v26 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  autoshiftRegexLoader = [(TIKeyboardInputManager *)self autoshiftRegexLoader];
  regex = [autoshiftRegexLoader regex];

  v9 = [regex firstMatchInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  v11 = 1;
  v12 = [v9 rangeAtIndex:1];
  if (v13)
  {
    v14 = v12;
    v15 = v12 + v13;
    v16 = v12 + v13 - 1;
    if ([stringCopy characterAtIndex:v16] != 46)
    {
      goto LABEL_8;
    }

    if (v16 && [stringCopy characterAtIndex:v15 - 2] == 46)
    {
LABEL_6:
      v11 = 0;
      goto LABEL_16;
    }

    if (v16 == v14)
    {
LABEL_8:
      v11 = 1;
      goto LABEL_16;
    }

    v17 = [stringCopy substringWithRange:{v14, v16 - v14}];
    v18 = [(TIKeyboardInputManager *)self externalStringToInternal:v17];
    KB::utf8_string(v18, v24);

    v20 = KB::string_capitalization(v24, v19);
    v21 = 0;
    if (depth && v20 == 1)
    {
      v22 = [stringCopy substringToIndex:v14];
      v21 = [(TIKeyboardInputManager *)self _canStartSentenceAfterString:v22 maxRecursionDepth:depth - 1];
    }

    v11 = TIInputManager::period_ends_sentence_after_word(self->m_impl, v24, v21);
    if (v25 && v24[6] == 1)
    {
      free(v25);
    }
  }

LABEL_16:

  return v11;
}

- (BOOL)spaceAndNextInputWouldStartSentence
{
  selfCopy = self;
  wordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
  LOBYTE(selfCopy) = [(TIKeyboardInputManager *)selfCopy nextInputWouldStartSentenceAfterInput:wordSeparator];

  return selfCopy;
}

- (BOOL)nextInputWouldStartSentenceAfterInput:(id)input
{
  inputCopy = input;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  autocapitalizationEnabled = [keyboardState autocapitalizationEnabled];

  if (autocapitalizationEnabled && (-[TIKeyboardInputManager keyboardState](self, "keyboardState"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 autocapitalizationType], v7, v8 == 2) && (-[TIKeyboardInputManager keyboardState](self, "keyboardState"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "documentState"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "markedText"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, !v11))
  {
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState2 documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    v17 = contextBeforeInput;
    v18 = &stru_283FDFAF8;
    if (contextBeforeInput)
    {
      v18 = contextBeforeInput;
    }

    v19 = v18;

    if (inputCopy)
    {
      v20 = [(__CFString *)v19 stringByAppendingString:inputCopy];

      v19 = v20;
    }

    v12 = [(TIKeyboardInputManager *)self canStartSentenceAfterString:v19];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)sentenceTrailingCharacters
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  sentenceTrailingCharacters = [keyboardFeatureSpecialization sentenceTrailingCharacters];

  return sentenceTrailingCharacters;
}

- (id)clauseDelimitingCharacters
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  clauseDelimitingCharacters = [keyboardFeatureSpecialization clauseDelimitingCharacters];

  return clauseDelimitingCharacters;
}

- (id)sentenceDelimitingCharacters
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  sentenceDelimitingCharacters = [keyboardFeatureSpecialization sentenceDelimitingCharacters];

  return sentenceDelimitingCharacters;
}

- (id)sentencePrefixingCharacters
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  sentencePrefixingCharacters = [keyboardFeatureSpecialization sentencePrefixingCharacters];

  return sentencePrefixingCharacters;
}

- (id)supplementalLexiconWordExtraCharacters
{
  supplementalLexiconWordExtraCharacters = self->_supplementalLexiconWordExtraCharacters;
  if (!supplementalLexiconWordExtraCharacters)
  {
    keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    supplementalLexiconWordExtraCharacters = [keyboardFeatureSpecialization supplementalLexiconWordExtraCharacters];
    v6 = self->_supplementalLexiconWordExtraCharacters;
    self->_supplementalLexiconWordExtraCharacters = supplementalLexiconWordExtraCharacters;

    supplementalLexiconWordExtraCharacters = self->_supplementalLexiconWordExtraCharacters;
  }

  return supplementalLexiconWordExtraCharacters;
}

- (id)wordCharacters
{
  wordCharacters = self->_wordCharacters;
  if (!wordCharacters)
  {
    keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    wordCharacters = [keyboardFeatureSpecialization wordCharacters];
    v6 = self->_wordCharacters;
    self->_wordCharacters = wordCharacters;

    wordCharacters = self->_wordCharacters;
  }

  return wordCharacters;
}

- (const)precomposedCharacterSet
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  precomposedCharacterSet = [keyboardFeatureSpecialization precomposedCharacterSet];

  return precomposedCharacterSet;
}

- (void)setUserInterfaceIdiom:(int64_t)idiom
{
  if (self->_userInterfaceIdiom != idiom)
  {
    self->_userInterfaceIdiom = idiom;
    keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    [keyboardFeatureSpecialization setCurrentUserInterfaceIdiom:idiom];
  }
}

- (id)nonstopPunctuationCharacters
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  nonstopPunctuationCharacters = [keyboardFeatureSpecialization nonstopPunctuationCharacters];

  return nonstopPunctuationCharacters;
}

- (void)updateForRevisitedString:(id)string
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];

  if (revisionHistory)
  {
    revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
    currentWord = [revisionHistory2 currentWord];
    isEqualToString = objc_msgSend_isEqualToString_(stringCopy);

    if (isEqualToString)
    {
      revisionHistory3 = [(TIKeyboardInputManager *)self revisionHistory];
      currentUserTyping = [revisionHistory3 currentUserTyping];

      if (currentUserTyping)
      {
        v11 = [(TIKeyboardInputManager *)self externalStringToInternal:currentUserTyping];
        m_impl = self->m_impl;
        KB::utf8_string(v11, v15);
        KB::String::operator=((m_impl + 64), v15);
        if (v17 && v16 == 1)
        {
          free(v17);
        }

        if ((objc_msgSend_isEqualToString_(currentUserTyping) & 1) == 0)
        {
          v13 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:currentUserTyping];
          v14 = self->m_impl;
          KB::utf8_string(v13, v15);
          KB::String::operator=((*(v14[33] + 24) + 56), v15);
          if (v17 && v16 == 1)
          {
            free(v17);
          }
        }
      }
    }
  }
}

- (id)autocorrectionRecordForWord:(id)word
{
  wordCopy = word;
  autocorrectionHistory = [(TIKeyboardInputManager *)self autocorrectionHistory];
  v6 = [autocorrectionHistory objectForKey:wordCopy];

  if (!v6)
  {
    rejectedAutocorrections = [(TIKeyboardInputManager *)self rejectedAutocorrections];
    v6 = [rejectedAutocorrections objectForKey:wordCopy];
  }

  return v6;
}

- (void)recordAcceptedAutocorrection:(id)autocorrection fromPredictiveInputBar:(BOOL)bar
{
  barCopy = bar;
  v27 = *MEMORY[0x277D85DE8];
  autocorrectionCopy = autocorrection;
  v7 = [(TIKeyboardInputManager *)self originatingAutocorrectionListForCandidate:autocorrectionCopy];
  if (([v7 hasSupplementalItems] & 1) == 0)
  {
    if (v7 && ([autocorrectionCopy isSupplementalItemCandidate] & 1) == 0)
    {
      candidate = [autocorrectionCopy candidate];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v10 = [candidate stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      v11 = [(TIKeyboardInputManager *)self revisionListFromAutocorrectionList:v7 afterAcceptingCandidate:autocorrectionCopy];
      autocorrectionListsForWordsInDocument = [(TIKeyboardInputManager *)self autocorrectionListsForWordsInDocument];
      [autocorrectionListsForWordsInDocument setObject:v11 forKey:v10];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    candidate2 = [autocorrectionCopy candidate];
    v14 = [candidate2 componentsSeparatedByString:@" "];

    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          if ([v19 length])
          {
            autocorrectionHistory = [(TIKeyboardInputManager *)self autocorrectionHistory];
            [autocorrectionHistory setObject:autocorrectionCopy forKey:v19];

            if (barCopy)
            {
              [(TIKeyboardInputManager *)self recentPredictiveInputSelections];
            }

            else
            {
              [(TIKeyboardInputManager *)self recentAutocorrections];
            }
            v21 = ;
            [v21 setObject:autocorrectionCopy forKey:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }
  }
}

- (id)revisionListFromAutocorrectionList:(id)list afterAcceptingCandidate:(id)candidate
{
  v72 = *MEMORY[0x277D85DE8];
  listCopy = list;
  candidateCopy = candidate;
  array = [MEMORY[0x277CBEB18] array];
  if ([candidateCopy isContinuousPathConversion])
  {
    corrections = [listCopy corrections];
    autocorrection = [corrections autocorrection];

    if (autocorrection)
    {
      if ([autocorrection isAutocorrection])
      {
        candidate = [autocorrection candidate];
        candidate2 = [candidateCopy candidate];
        isEqualToString = objc_msgSend_isEqualToString_(candidate);

        if ((isEqualToString & 1) == 0)
        {
          candidate3 = [autocorrection candidate];
          candidate4 = [candidateCopy candidate];
          v14 = __85__TIKeyboardInputManager_revisionListFromAutocorrectionList_afterAcceptingCandidate___block_invoke(candidate3, candidate4, [autocorrection usageTrackingMask], objc_msgSend(autocorrection, "sourceMask"));

          supplementalItemIdentifiers = [autocorrection supplementalItemIdentifiers];
          [v14 setSupplementalItemIdentifiers:supplementalItemIdentifiers];

          [array addObject:v14];
        }
      }
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = [listCopy predictions];
    v16 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v63;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v63 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v62 + 1) + 8 * i);
          candidate5 = [v20 candidate];
          candidate6 = [candidateCopy candidate];
          v23 = objc_msgSend_isEqualToString_(candidate5);

          if ((v23 & 1) == 0)
          {
            candidate7 = [v20 candidate];
            candidate8 = [candidateCopy candidate];
            v26 = __85__TIKeyboardInputManager_revisionListFromAutocorrectionList_afterAcceptingCandidate___block_invoke(candidate7, candidate8, [v20 usageTrackingMask], objc_msgSend(v20, "sourceMask"));

            supplementalItemIdentifiers2 = [v20 supplementalItemIdentifiers];
            [v26 setSupplementalItemIdentifiers:supplementalItemIdentifiers2];

            [array addObject:v26];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v17);
    }

    goto LABEL_36;
  }

  autocorrection = [candidateCopy candidate];
  obj = [candidateCopy input];
  if ((objc_msgSend_isEqualToString_(obj) & 1) == 0)
  {
    v28 = __85__TIKeyboardInputManager_revisionListFromAutocorrectionList_afterAcceptingCandidate___block_invoke(obj, autocorrection, 1, 0);
    [array addObject:v28];
  }

  corrections2 = [listCopy corrections];
  autocorrection2 = [corrections2 autocorrection];
  if (!autocorrection2)
  {
    goto LABEL_23;
  }

  autocorrection5 = autocorrection2;
  corrections3 = [listCopy corrections];
  autocorrection3 = [corrections3 autocorrection];
  if (![autocorrection3 isAutocorrection])
  {
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  corrections4 = [listCopy corrections];
  autocorrection4 = [corrections4 autocorrection];
  candidate9 = [autocorrection4 candidate];
  v56 = objc_msgSend_isEqualToString_(candidate9);

  if ((v56 & 1) == 0)
  {
    corrections2 = [listCopy corrections];
    autocorrection5 = [corrections2 autocorrection];
    corrections3 = [autocorrection5 candidate];
    autocorrection3 = [listCopy corrections];
    v33Autocorrection = [autocorrection3 autocorrection];
    usageTrackingMask = [v33Autocorrection usageTrackingMask];
    corrections5 = [listCopy corrections];
    autocorrection6 = [corrections5 autocorrection];
    v40 = __85__TIKeyboardInputManager_revisionListFromAutocorrectionList_afterAcceptingCandidate___block_invoke(corrections3, autocorrection, usageTrackingMask, [autocorrection6 sourceMask]);
    [array addObject:v40];

    goto LABEL_22;
  }

LABEL_24:
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  predictions = [listCopy predictions];
  v42 = [predictions countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v67;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v67 != v44)
        {
          objc_enumerationMutation(predictions);
        }

        v46 = *(*(&v66 + 1) + 8 * j);
        candidate10 = [v46 candidate];
        v48 = objc_msgSend_isEqualToString_(candidate10);

        if ((v48 & 1) == 0)
        {
          candidate11 = [v46 candidate];
          v50 = __85__TIKeyboardInputManager_revisionListFromAutocorrectionList_afterAcceptingCandidate___block_invoke(candidate11, autocorrection, [v46 usageTrackingMask], objc_msgSend(v46, "sourceMask"));

          supplementalItemIdentifiers3 = [v46 supplementalItemIdentifiers];
          [v50 setSupplementalItemIdentifiers:supplementalItemIdentifiers3];

          if (self->_supplementalPrefix)
          {
            [v50 core_updateWithSupplementalItemPrefix:?];
          }

          [array addObject:v50];
        }
      }

      v43 = [predictions countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v43);
  }

  listCopy = v58;
LABEL_36:

  v52 = MEMORY[0x277D6F328];
  emojiList = [listCopy emojiList];
  v54 = [v52 listWithCorrections:0 predictions:array emojiList:emojiList];

  return v54;
}

id __85__TIKeyboardInputManager_revisionListFromAutocorrectionList_afterAcceptingCandidate___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if ([v7 length] && objc_msgSend(v8, "length") && objc_msgSend(v7, "hasPrefix:", @" ") && objc_msgSend(v8, "hasPrefix:", @" "))
  {
    v9 = [v7 substringFromIndex:1];

    v10 = [v8 substringFromIndex:1];

    v8 = v10;
    v7 = v9;
  }

  v11 = [objc_alloc(MEMORY[0x277D6F568]) initWithCandidate:v7 forInput:v8 rawInput:0 wordOriginFeedbackID:0 usageTrackingMask:a3 sourceMask:a4];

  return v11;
}

- (id)originatingAutocorrectionListForCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (([candidateCopy isContinuousPathConversion] & 1) == 0)
  {
    autocorrectionListsSuggestedForCurrentInput = [(TIKeyboardInputManager *)self autocorrectionListsSuggestedForCurrentInput];
    input = [candidateCopy input];
    v11 = [autocorrectionListsSuggestedForCurrentInput objectForKey:input];
LABEL_5:
    v9 = v11;
    goto LABEL_12;
  }

  input2 = [candidateCopy input];
  isEqualToString = objc_msgSend_isEqualToString_(input2);

  autocorrectionListsSuggestedForCurrentInput2 = [(TIKeyboardInputManager *)self autocorrectionListsSuggestedForCurrentInput];
  if (isEqualToString)
  {
    input = [candidateCopy candidate];
    v9 = [autocorrectionListsSuggestedForCurrentInput2 objectForKey:input];
    autocorrectionListsSuggestedForCurrentInput = autocorrectionListsSuggestedForCurrentInput2;
    goto LABEL_12;
  }

  input3 = [candidateCopy input];
  autocorrectionListsSuggestedForCurrentInput = [autocorrectionListsSuggestedForCurrentInput2 objectForKey:input3];

  if (autocorrectionListsSuggestedForCurrentInput)
  {
    corrections = [autocorrectionListsSuggestedForCurrentInput corrections];
    input = [corrections autocorrection];

    if ([input isContinuousPathConversion] && -[TIKeyboardInputManager isContinuousPathCandidate:replacementForOriginalConversion:](self, "isContinuousPathCandidate:replacementForOriginalConversion:", candidateCopy, input))
    {
      v11 = autocorrectionListsSuggestedForCurrentInput;
      autocorrectionListsSuggestedForCurrentInput = v11;
      goto LABEL_5;
    }
  }

  input = [(TIKeyboardInputManager *)self autocorrectionListsSuggestedForCurrentInput];
  candidate = [candidateCopy candidate];
  v9 = [input objectForKey:candidate];

LABEL_12:

  return v9;
}

- (BOOL)isContinuousPathCandidate:(id)candidate replacementForOriginalConversion:(id)conversion
{
  candidateCopy = candidate;
  conversionCopy = conversion;
  if ([candidateCopy isContinuousPathConversion] && objc_msgSend(conversionCopy, "isContinuousPathConversion") && (objc_msgSend(candidateCopy, "input"), v7 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v7), v7, (isEqualToString & 1) == 0))
  {
    candidate = [conversionCopy candidate];
    input = [candidateCopy input];
    v9 = [candidate hasSuffix:input];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)recordSuggestedAutocorrectionList:(id)list
{
  listCopy = list;
  corrections = [listCopy corrections];
  autocorrection = [corrections autocorrection];

  if (!autocorrection)
  {
    goto LABEL_10;
  }

  if ([autocorrection isContinuousPathConversion])
  {
    autocorrectionListsSuggestedForCurrentInput = [(TIKeyboardInputManager *)self autocorrectionListsSuggestedForCurrentInput];
    candidate = [autocorrection candidate];
LABEL_6:
    v10 = candidate;
    [autocorrectionListsSuggestedForCurrentInput setObject:listCopy forKey:candidate];

    goto LABEL_7;
  }

  input = [autocorrection input];
  v9 = [input length];

  if (v9)
  {
    autocorrectionListsSuggestedForCurrentInput = [(TIKeyboardInputManager *)self autocorrectionListsSuggestedForCurrentInput];
    candidate = [autocorrection input];
    goto LABEL_6;
  }

LABEL_7:
  if ([autocorrection usageTrackingMask] && (objc_msgSend(autocorrection, "isAutocorrection") & 1) == 0)
  {
    [(TIKeyboardInputManager *)self setHitTestCorrectedInputMatchingCandidate:autocorrection];
  }

LABEL_10:
}

- (BOOL)shouldAllowCorrectionOfAcceptedCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([candidateCopy isFromPhraseDictionary] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(candidateCopy, "isFromTextChecker") & 1) != 0 || (objc_msgSend(candidateCopy, "isForShortcutConversion"))
  {
    isAutocorrection = 0;
  }

  else
  {
    input = [candidateCopy input];
    if (input)
    {
      v7 = input;
      input2 = [candidateCopy input];
      candidate = [candidateCopy candidate];
      if (objc_msgSend_isEqualToString_(input2))
      {
        isAutocorrection = 1;
      }

      else
      {
        isAutocorrection = [candidateCopy isAutocorrection];
      }
    }

    else
    {
      isAutocorrection = 1;
    }
  }

  return isAutocorrection & 1;
}

- (void)displayedCandidateRejected
{
  [(TIKeyboardInputManager *)self setDeleteKeyCount:[(TIKeyboardInputManager *)self deleteKeyCount]+ 1];
  if (self->m_impl && [(TIKeyboardInputManager *)self deleteKeyCount]<= 1)
  {
    v3 = [(TIKeyboardInputManager *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FAF0]];
    TIStatisticScalarIncrement();
  }
}

- (void)setOriginalInput:(id)input
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->m_impl)
  {
    inputCopy = input;
    v5 = [(TIKeyboardInputManager *)self externalStringToInternal:inputCopy];
    KB::utf8_string(v5, v6);

    KB::String::operator=((self->m_impl + 32), v6);
    [(TIKeyboardInputManager *)self updateForRevisitedString:inputCopy];

    if (v7)
    {
      if (v6[6] == 1)
      {
        free(v7);
      }
    }
  }
}

- (id)currentWordStem
{
  v10 = *MEMORY[0x277D85DE8];
  TIInputManager::legacy_input_stem(&v8, self->m_impl);
  v4 = KB::ns_string(&v8, v3);
  v5 = [(TIKeyboardInputManager *)self internalStringToExternal:v4];

  if (v9)
  {
    v6 = BYTE6(v8) == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v9);
  }

  return v5;
}

- (id)inputString
{
  v10 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (m_impl)
  {
    m_composedText = self->m_composedText;
    if (m_composedText)
    {
      v5 = [(NSMutableString *)m_composedText copy];
    }

    else
    {
      TIInputManager::input_substring((m_impl + 1), 0, -858993459 * ((m_impl[2] - m_impl[1]) >> 3), v8);
      v5 = KB::ns_string(v8, v6);
      if (v9 && v8[6] == 1)
      {
        free(v9);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setInputIndex:(unsigned int)index
{
  if (self->m_impl)
  {
    v4 = [(TIKeyboardInputManager *)self externalIndexToInternal:*&index];
    TIInputManager::set_input_index(self->m_impl, v4);
    if (v4)
    {
      v5 = v4 < -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3);
    }

    else
    {
      v5 = 0;
    }

    self->_isEditingWordPrefix = v5;

    [(TIKeyboardInputManager *)self setLastAcceptedText:0];
  }
}

- (void)acceptInput
{
  v10 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (m_impl)
  {
    TIInputManager::accept_input(m_impl);
    m_composedText = self->m_composedText;
    if (m_composedText)
    {
      TIInputManager::input_substring((self->m_impl + 8), 0, -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3), v8);
      v6 = KB::ns_string(v8, v5);
      v7 = [(TIKeyboardInputManager *)self internalStringToExternal:v6];
      [(NSMutableString *)m_composedText setString:v7];

      if (v9)
      {
        if (v8[6] == 1)
        {
          free(v9);
        }
      }
    }
  }
}

- (id)deleteComposedTextFromIndex:(unint64_t)index count:(unint64_t *)count
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManager *)self deletesComposedTextByComposedCharacterSequence])
  {
    TIInputManager::input_substring((self->m_impl + 8), 0, -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3), v23);
    v8 = KB::ns_string(v23, v7);
    v9 = [(TIKeyboardInputManager *)self internalStringToExternal:v8];

    if (v25 && v24 == 1)
    {
      free(v25);
    }

    v10 = [v9 rangeOfComposedCharacterSequenceAtIndex:index - 1];
    v12 = [v9 substringWithRange:{v10, v11}];
    m_impl = self->m_impl;
    v14 = [(TIKeyboardInputManager *)self externalStringToInternal:v12];
    KB::utf8_string(v14, v23);
    TIInputManager::delete_suffix_from_input(m_impl, v23);
    if (v25 && v24 == 1)
    {
      free(v25);
    }
  }

  else
  {
    TIInputManager::delete_from_input(self->m_impl);
  }

  TIInputManager::input_substring((self->m_impl + 8), 0, -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3), v23);
  v16 = KB::ns_string(v23, v15);
  v17 = [(TIKeyboardInputManager *)self internalStringToExternal:v16];

  if (v25 && v24 == 1)
  {
    free(v25);
  }

  TIInputManager::input_substring((self->m_impl + 8), 0, *(self->m_impl + 24), v23);
  v19 = KB::ns_string(v23, v18);
  v20 = [(TIKeyboardInputManager *)self internalStringToExternal:v19];

  if (v25 && v24 == 1)
  {
    free(v25);
  }

  v21 = [(TIKeyboardInputManager *)self suffixOfDesiredString:v20 toAppendToInputString:self->m_composedText withInputIndex:index afterDeletionCount:count];
  [(NSMutableString *)self->m_composedText setString:v17];
  if (![v21 length])
  {

    v21 = 0;
  }

  return v21;
}

- (id)deleteFromInput:(unint64_t *)input
{
  if (input)
  {
    *input = 1;
  }

  if (self->m_impl && (-[TIKeyboardInputManager usesCandidateSelection](self, "usesCandidateSelection") || (-[TIKeyboardInputManager keyboardState](self, "keyboardState"), v5 = objc_claimAutoreleasedReturnValue(), [v5 documentState], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "markedText"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, !v7)))
  {
    inputIndex = [(TIKeyboardInputManager *)self inputIndex];
    if ([(NSMutableString *)self->m_composedText length])
    {
      v8 = [(TIKeyboardInputManager *)self deleteComposedTextFromIndex:inputIndex count:input];
    }

    else
    {
      TIInputManager::delete_from_input(self->m_impl);
      v8 = 0;
    }

    [(TIKeyboardInputManager *)self setLastAcceptedText:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)insertSpaceBeforeInputWithContext:(id)context
{
  contextCopy = context;
  v19 = 0;
  inputString = [(TIKeyboardInputManager *)self inputString];
  inputIndex = [(TIKeyboardInputManager *)self inputIndex];
  inputContext = [(TIKeyboardInputManager *)self inputContext];
  lastAcceptedText = [(TIKeyboardInputManager *)self lastAcceptedText];
  if ([lastAcceptedText isContinuousPathConversion])
  {
    lastAcceptedText2 = [(TIKeyboardInputManager *)self lastAcceptedText];
    shouldAccept = [lastAcceptedText2 shouldAccept];

    if (shouldAccept)
    {
      pathedWordSeparator = [(TIKeyboardInputManager *)self pathedWordSeparator];
      goto LABEL_6;
    }
  }

  else
  {
  }

  pathedWordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
LABEL_6:
  v12 = pathedWordSeparator;
  v13 = [(TIKeyboardInputManager *)self addInput:pathedWordSeparator flags:128 point:&v19 firstDelete:0.0, 0.0];
  v14 = [(TIKeyboardInputManager *)self deletedSuffixOfInputContext:inputContext whenDeletingFromInputString:inputString withInputIndex:inputIndex deletionCount:v19];
  v15 = v14;
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = &stru_283FDFAF8;
  }

  v17 = [v14 stringByAppendingString:v16];

  if (v19)
  {
    [contextCopy deleteBackward:?];
  }

  if ([v17 length])
  {
    [contextCopy insertText:v17];
  }

  output = [contextCopy output];
  [output setDelimitingPrefix:v12];

  [(TIKeyboardInputManager *)self dropInput];
}

- (void)setInput:(id)input withIndex:(unsigned int)index
{
  v4 = *&index;
  [(TIKeyboardInputManager *)self setInput:input];

  [(TIKeyboardInputManager *)self setInputIndex:v4];
}

- (void)setInput:(id)input
{
  v11 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (self->m_impl)
  {
    autocorrectionListsSuggestedForCurrentInput = [(TIKeyboardInputManager *)self autocorrectionListsSuggestedForCurrentInput];
    [autocorrectionListsSuggestedForCurrentInput removeAllObjects];

    [(TIKeyboardInputManager *)self checkAutocorrectionDictionaries];
    m_impl = self->m_impl;
    v7 = [(TIKeyboardInputManager *)self externalStringToInternal:inputCopy];
    KB::utf8_string(v7, v9);
    TIInputManager::set_input(m_impl, v9);
    if (v10 && v9[6] == 1)
    {
      free(v10);
    }

    self->_isEditingWordPrefix = 0;
    m_composedText = self->m_composedText;
    if (m_composedText)
    {
      [(NSMutableString *)m_composedText setString:inputCopy];
    }

    [(TIKeyboardInputManager *)self updateForRevisitedString:inputCopy];
    [(TIKeyboardInputManager *)self setLastAcceptedText:0];
  }
}

- (void)willDropInputStem
{
  v7 = *MEMORY[0x277D85DE8];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v3 = TIOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Dropping input stem.", "-[TIKeyboardInputManager willDropInputStem]"];
      *buf = 138412290;
      v6 = v4;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if ([(TIKeyboardInputManager *)self isLinguisticResourceUpdateScheduled])
  {
    [(TIKeyboardInputManager *)self updateDictionaryAndLanguageModel];
  }
}

- (void)dropInput
{
  if (self->m_impl)
  {
    [(TIKeyboardInputManager *)self willDropInputStem];
    [(TIKeyboardInputManager *)self dropInputPrefix:*(self->m_impl + 24)];

    [(TIKeyboardInputManager *)self didDropInputStem];
  }
}

- (void)dropInputPrefix:(unsigned int)prefix
{
  if (prefix)
  {
    m_impl = self->m_impl;
    if (m_impl)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __42__TIKeyboardInputManager_dropInputPrefix___block_invoke;
      v4[3] = &unk_278733308;
      v4[4] = self;
      TIInputManager::drop_input_prefix_and_update_autocorrection_engine(m_impl, *&prefix, v4);
    }
  }
}

uint64_t __42__TIKeyboardInputManager_dropInputPrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateComposedText];
  v2 = *(a1 + 32);

  return [v2 updateInputContext];
}

- (void)trimInputAfterLathamConversion
{
  m_impl = self->m_impl;
  if (m_impl && m_impl[24])
  {
    if ([(TIKeyboardInputManager *)self usesRetrocorrection])
    {
      trimmedInputStemAfterLathamConversion = [(TIKeyboardInputManager *)self trimmedInputStemAfterLathamConversion];
      v5 = [(TIKeyboardInputManager *)self internalIndexOfInputStemSuffix:trimmedInputStemAfterLathamConversion];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }

      v6 = v5;
      v7 = v5;
      while (v7 < *(self->m_impl + 24))
      {
        v8 = v7 + 1;
        v9 = [(TIKeyboardInputManager *)self canRetrocorrectInputAtIndex:?];
        v7 = v8;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      if (![(TIKeyboardInputManager *)self canTrimInputAtIndex:v6])
      {
LABEL_13:
      }

      else
      {

        v10 = *(*(self->m_impl + 1) + 40 * (*(self->m_impl + 24) - 1) + 32);
        [(TIKeyboardInputManager *)self dropInputPrefix:v6];
        if ((v10 & 0x40) == 0 || ![(TIKeyboardInputManager *)self shouldDropInputStem])
        {
          return;
        }
      }
    }

    [(TIKeyboardInputManager *)self dropInput];
  }
}

- (id)trimmedInputStemAfterLathamConversion
{
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];

  if (revisionHistory)
  {
    m_impl = self->m_impl;
    if (m_impl)
    {
      revisionHistory = &stru_283FDFAF8;
      if (m_impl[24])
      {
        v11 = 0;
        v12 = &v11;
        v13 = 0x3032000000;
        v14 = __Block_byref_object_copy__11451;
        v15 = __Block_byref_object_dispose__11452;
        v16 = &stru_283FDFAF8;
        v10[0] = 0;
        v10[1] = v10;
        v10[2] = 0x2020000000;
        v10[3] = 0;
        revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
        selectedRange = [revisionHistory2 selectedRange];

        revisionHistory3 = [(TIKeyboardInputManager *)self revisionHistory];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __63__TIKeyboardInputManager_trimmedInputStemAfterLathamConversion__block_invoke;
        v9[3] = &unk_278731630;
        v9[4] = self;
        v9[5] = &v11;
        v9[6] = v10;
        v9[7] = selectedRange;
        [revisionHistory3 enumerateSentenceStemUsingBlock:v9];

        revisionHistory = v12[5];
        _Block_object_dispose(v10, 8);
        _Block_object_dispose(&v11, 8);
      }
    }

    else
    {
      revisionHistory = 0;
    }
  }

  return revisionHistory;
}

void __63__TIKeyboardInputManager_trimmedInputStemAfterLathamConversion__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  if (a3 < *(a1 + 56))
  {
    v14 = [*(a1 + 32) revisionHistory];
    v15 = [v14 documentText];
    obj = [v15 substringWithRange:{a3, *(a1 + 56) - a3}];

    if (([obj _containsEmoji] & 1) != 0 || (objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj), v16 = a7 - 0x1F400000000, a3 + a4 >= *(a1 + 56)) && !objc_msgSend(*(a1 + 32), "usesRetrocorrection") || v16 <= 0xFFFFFE0CFFFFFFFFLL && (++*(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 48) + 8) + 24)))
    {
      *a8 = 1;
    }
  }
}

- (void)trimInput
{
  m_impl = self->m_impl;
  if (m_impl && m_impl[24])
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
    if ([(TIKeyboardInputManager *)self usesRetrocorrection])
    {
      trimmedInputStem = [(TIKeyboardInputManager *)self trimmedInputStem];
      v6 = [(TIKeyboardInputManager *)self internalIndexOfInputStemSuffix:trimmedInputStem];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v6;
        v8 = v6;
        while (v8 < *(self->m_impl + 24))
        {
          v9 = v8 + 1;
          v10 = [(TIKeyboardInputManager *)self canRetrocorrectInputAtIndex:?];
          v8 = v9;
          if (!v10)
          {
            v4 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_12;
          }
        }

        if ([(TIKeyboardInputManager *)self canTrimInputAtIndex:v7])
        {
          v4 = v7;
        }

        else
        {
          v4 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

LABEL_12:
    }

    v11 = *(*(self->m_impl + 1) + 40 * (*(self->m_impl + 24) - 1) + 32);
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((v11 & 0x40) == 0)
      {
        return;
      }
    }

    else
    {
      [(TIKeyboardInputManager *)self dropInputPrefix:v4];
      if ((v11 & 0x40) == 0 || ![(TIKeyboardInputManager *)self shouldDropInputStem])
      {
        return;
      }
    }

    [(TIKeyboardInputManager *)self dropInput];
  }
}

- (BOOL)canRetrocorrectInputAtIndex:(unsigned int)index
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v11, (*(self->m_impl + 1) + 40 * index));
  v5 = *(*(self->m_impl + 1) + 40 * index + 32);
  v7 = KB::ns_string(v11, v6);
  isEqualToString = 0;
  if (!KB::string_has_numbers(v11, v8) && (v5 & 0x13) != 1)
  {
    if ([(TIKeyboardInputManager *)self stringEndsWord:v7]&& ((v5 & 0x24) != 0x20 || objc_msgSend_isEqualToString_(v7)))
    {
      isEqualToString = objc_msgSend_isEqualToString_(v7);
    }

    else
    {
      isEqualToString = 1;
    }
  }

  if (v12 && v11[6] == 1)
  {
    free(v12);
  }

  return isEqualToString;
}

- (BOOL)canTrimInputAtIndex:(unsigned int)index
{
  v14 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  v4 = m_impl[54];
  if (v4 <= m_impl[55])
  {
    v4 = m_impl[55];
  }

  if (v4 > index)
  {
    return 0;
  }

  TIInputManager::input_substring((m_impl + 2), 0, index, v9);
  KB::String::String(v12, (m_impl + 110));
  KB::String::append(v12, v9);
  if (v11 && v10 == 1)
  {
    free(v11);
  }

  TIInputManager::input_substring((self->m_impl + 8), index, -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3) - index, v9);
  candidates = TIInputManager::should_generate_candidates(self->m_impl, v12, v9, 0);
  if (v11 && v10 == 1)
  {
    free(v11);
  }

  if (v13 && v12[6] == 1)
  {
    free(v13);
  }

  return candidates;
}

- (unint64_t)internalIndexOfInputStemSuffix:(id)suffix
{
  v20 = *MEMORY[0x277D85DE8];
  suffixCopy = suffix;
  v5 = suffixCopy;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (suffixCopy && self->m_impl)
  {
    if ([suffixCopy length])
    {
      inputStem = [(TIKeyboardInputManager *)self inputStem];
      v8 = [inputStem rangeOfString:v5 options:12];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v8;
        v10 = [(TIKeyboardInputManager *)self externalIndexToInternal:v8];
        m_impl = self->m_impl;
        if (v10 <= m_impl[24])
        {
          v12 = v10;
          TIInputManager::input_substring((m_impl + 2), 0, v10, v18);
          v14 = KB::ns_string(v18, v13);
          v15 = [(TIKeyboardInputManager *)self internalStringToExternal:v14];

          v16 = [inputStem substringToIndex:v9];
          LODWORD(v14) = objc_msgSend_isEqualToString_(v15);

          if (v14)
          {
            v6 = v12;
          }

          if (v19 && v18[6] == 1)
          {
            free(v19);
          }
        }
      }
    }

    else
    {
      v6 = *(self->m_impl + 24);
    }
  }

  return v6;
}

- (id)wordInInputStem:(id)stem atIndex:(unint64_t)index
{
  stemCopy = stem;
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];

  v8 = &stru_283FDFAF8;
  if (revisionHistory)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__11451;
    v19 = __Block_byref_object_dispose__11452;
    v20 = &stru_283FDFAF8;
    v9 = [(TIKeyboardInputManager *)self countOfWordsIninputStem:stemCopy];
    if (v9 > index)
    {
      v10 = v9 + ~index;
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2020000000;
      v14[3] = 0;
      revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __50__TIKeyboardInputManager_wordInInputStem_atIndex___block_invoke;
      v13[3] = &unk_278731608;
      v13[5] = &v15;
      v13[6] = v10;
      v13[4] = v14;
      [revisionHistory2 enumerateSentenceStemUsingBlock:v13];

      _Block_object_dispose(v14, 8);
    }

    v8 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  return v8;
}

void __50__TIKeyboardInputManager_wordInInputStem_atIndex___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v12 = a2;
  if ((a7 - 0x1F400000000) <= 0xFFFFFE0CFFFFFFFFLL)
  {
    v13 = *(a1[4] + 8);
    v14 = *(v13 + 24);
    if (v14 >= a1[6])
    {
      v15 = v12;
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      v12 = v15;
      *a8 = 1;
      v13 = *(a1[4] + 8);
      v14 = *(v13 + 24);
    }

    *(v13 + 24) = v14 + 1;
  }
}

- (unint64_t)countOfWordsIninputStem:(id)stem
{
  stemCopy = stem;
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];

  if (revisionHistory)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
    selectedRange = [revisionHistory2 selectedRange];

    v8 = [stemCopy length];
    revisionHistory3 = [(TIKeyboardInputManager *)self revisionHistory];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__TIKeyboardInputManager_countOfWordsIninputStem___block_invoke;
    v12[3] = &unk_2787315E0;
    v12[5] = selectedRange;
    v12[6] = v8;
    v12[4] = &v13;
    [revisionHistory3 enumerateSentenceStemUsingBlock:v12];

    v10 = v14[3];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *__50__TIKeyboardInputManager_countOfWordsIninputStem___block_invoke(void *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = result[5];
  if (a3 < v7 && a3 >= v7 - result[6] && (a7 - 0x1F400000000) <= 0xFFFFFE0CFFFFFFFFLL)
  {
    ++*(*(result[4] + 8) + 24);
  }

  return result;
}

- (id)trimmedInputStem
{
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];

  if (revisionHistory)
  {
    m_impl = self->m_impl;
    if (m_impl)
    {
      revisionHistory = &stru_283FDFAF8;
      if (m_impl[24])
      {
        v12 = 0;
        v13 = &v12;
        v14 = 0x3032000000;
        v15 = __Block_byref_object_copy__11451;
        v16 = __Block_byref_object_dispose__11452;
        v17 = &stru_283FDFAF8;
        v11[0] = 0;
        v11[1] = v11;
        v11[2] = 0x2020000000;
        v11[3] = 0;
        maxPriorWordTokensAfterTrimming = [(TIKeyboardInputManager *)self maxPriorWordTokensAfterTrimming];
        revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
        selectedRange = [revisionHistory2 selectedRange];

        revisionHistory3 = [(TIKeyboardInputManager *)self revisionHistory];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __42__TIKeyboardInputManager_trimmedInputStem__block_invoke;
        v10[3] = &unk_2787315B8;
        v10[4] = self;
        v10[5] = &v12;
        v10[6] = v11;
        v10[7] = selectedRange;
        v10[8] = maxPriorWordTokensAfterTrimming;
        [revisionHistory3 enumerateSentenceStemUsingBlock:v10];

        revisionHistory = v13[5];
        _Block_object_dispose(v11, 8);
        _Block_object_dispose(&v12, 8);
      }
    }

    else
    {
      revisionHistory = 0;
    }
  }

  return revisionHistory;
}

void __42__TIKeyboardInputManager_trimmedInputStem__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  if (a3 >= *(a1 + 56))
  {
    return;
  }

  v14 = [*(a1 + 32) revisionHistory];
  v15 = [v14 documentText];
  obj = [v15 substringWithRange:{a3, *(a1 + 56) - a3}];

  if ([obj _containsEmoji])
  {
    goto LABEL_3;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  if (a3 + a4 >= *(a1 + 56))
  {
    if ([*(a1 + 32) usesRetrocorrection])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ((a7 - 0x1F400000000) <= 0xFFFFFE0CFFFFFFFFLL && ++*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
  {
LABEL_3:
    *a8 = 1;
  }

LABEL_4:
}

- (unint64_t)maxPriorWordTokensAfterTrimming
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  maxPriorWordTokensAfterTrimming = [keyboardFeatureSpecialization maxPriorWordTokensAfterTrimming];

  return maxPriorWordTokensAfterTrimming;
}

- (void)fillReversedConversationHistoryInContext:(id)context
{
  contextCopy = context;
  lmContext = [contextCopy lmContext];
  v5 = *(self->m_impl + 34);
  if (v5)
  {
    if ((*(*v5 + 184))(v5))
    {
      v6 = *(lmContext + 48);
      if (v6 <= 2 && *(lmContext + 24) - *(lmContext + 16) <= 0x1FFuLL)
      {
        v7 = *lmContext;
        if (!*lmContext)
        {
          operator new();
        }

        v8 = *(lmContext + 8);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v8;
        selfCopy = self;
        p_conversation_history = &self->conversation_history;
        end = self->conversation_history.__end_;
        v30 = &self->conversation_history;
        do
        {
          if (end == p_conversation_history->__begin_)
          {
            break;
          }

          v11 = *(end - 2);
          if (!v11)
          {
            [(TIKeyboardInputManager *)self parseRecentMessage:end - 48];
            v11 = *(end - 2);
            if (!v11)
            {
              continue;
            }
          }

          v12 = v7[1];
          v13 = v7[2];
          if (v12 >= v13)
          {
            v15 = 0x4EC4EC4EC4EC4EC5 * ((v12 - *v7) >> 3);
            v16 = v15 + 1;
            if ((v15 + 1) > 0x276276276276276)
            {
              std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
            }

            v17 = 0x4EC4EC4EC4EC4EC5 * ((v13 - *v7) >> 3);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x13B13B13B13B13BLL)
            {
              v18 = 0x276276276276276;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModelContext>>(v18);
            }

            v19 = 104 * v15;
            KB::LanguageModelContext::LanguageModelContext((104 * v15), v11);
            v20 = *v7;
            v21 = v7[1];
            v22 = *v7 - v21;
            v23 = 104 * v15 + v22;
            if (v21 != *v7)
            {
              v24 = *v7;
              v25 = v19 + v22;
              do
              {
                v26 = KB::LanguageModelContext::LanguageModelContext(v25, v24);
                v24 += 104;
                v25 = v26 + 104;
              }

              while (v24 != v21);
              self = selfCopy;
              do
              {
                std::allocator_traits<std::allocator<KB::LanguageModelContext>>::destroy[abi:nn200100]<KB::LanguageModelContext,void,0>(v20);
                v20 += 104;
              }

              while (v20 != v21);
            }

            v27 = *v7;
            v14 = (v19 + 104);
            *v7 = v23;
            v7[1] = v19 + 104;
            v7[2] = 0;
            if (v27)
            {
              operator delete(v27);
            }

            p_conversation_history = v30;
          }

          else
          {
            v14 = KB::LanguageModelContext::LanguageModelContext(v12, v11) + 104;
          }

          v7[1] = v14;
          v6 += *(end - 2);
          end = (end - 48);
        }

        while (v6 < 3);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v28);
        }
      }
    }
  }
}

- (LanguageModelContext)sentenceContextForInputStem:(SEL)stem inputContext:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = a5;
  if ([(TIKeyboardInputManager *)self canComputeSentenceContextForInputStem:contextCopy])
  {
    v40 = v9;
    v10 = objc_alloc_init(TIContextTokens);
    lmContext = [(TIContextTokens *)v10 lmContext];
    v54 = 0;
    v55 = &v54;
    v56 = 0x4812000000;
    v57 = __Block_byref_object_copy__334;
    v58 = __Block_byref_object_dispose__335;
    v59 = "";
    v61 = 0;
    v62 = 0;
    v60 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 1;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
    selectedRange = [revisionHistory selectedRange];
    v15 = selectedRange - [contextCopy length];

    revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __67__TIKeyboardInputManager_sentenceContextForInputStem_inputContext___block_invoke;
    v45[3] = &unk_278731630;
    v48 = &v54;
    v49 = v15;
    v47 = &v50;
    v17 = v12;
    v46 = v17;
    [revisionHistory2 enumerateSentenceStemUsingBlock:v45];

    v18 = std::vector<TITokenID>::vector[abi:nn200100](&v43, v55 + 6);
    if (v43 != v44)
    {
      v19 = v44 - 8;
      if (v44 - 8 > v43)
      {
        v20 = v43 + 8;
        do
        {
          v21 = *(v20 - 1);
          *(v20 - 1) = *v19;
          *v19 = v21;
          v19 -= 8;
          v22 = v20 >= v19;
          v20 += 8;
        }

        while (!v22);
      }
    }

    if (*(v51 + 24) == 1)
    {
      v24 = v43;
      v23 = v44;
      if (v43 == v44)
      {
        std::string::basic_string[abi:nn200100]<0>(&v63, "");
        KB::LanguageModelContext::append(lmContext, 0x100000000uLL, &v63, 0);
        if (v64 < 0)
        {
          operator delete(v63);
        }

        v24 = v43;
        v23 = v44;
      }

      v25 = v23 - v24;
      if ((v25 >> 3) >= 0x40)
      {
        v26 = (v25 >> 3) - 64;
      }

      else
      {
        v26 = 0;
      }

      while (v26 < v25 >> 3)
      {
        v27 = [v17 objectAtIndex:v26];
        if (!*(v43 + 2 * v26 + 1))
        {
          v28 = language_modeling::v1::LinguisticContext::tokenSpan((lmContext + 8));
          if (v29)
          {
            if (*(v28 + 32 * v29 - 8) == 1)
            {
              v30 = v10;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }

          v31 = [(TIKeyboardInputManager *)self findTokenIDForWord:v27 contextTokens:v30 tokenLookupMode:5, v40];
          *(v43 + v26) = v31;
        }

        v32 = [(TIKeyboardInputManager *)self shouldAllowContextWord:v27, v40];
        v33 = *(v43 + v26);
        std::string::basic_string[abi:nn200100]<0>(&v63, [v27 UTF8String]);
        KB::LanguageModelContext::append(lmContext, v33, &v63, !v32);
        if (v64 < 0)
        {
          operator delete(v63);
        }

        ++v26;
        v25 = v44 - v43;
      }

      v34 = lmContext[3] - lmContext[2];
      if (v34)
      {
        v35 = lmContext[3];
        v36 = *(v35 - 4) << 32;
        if (v36 == 0x600000000)
        {
          std::string::basic_string[abi:nn200100]<0>(__p, "");
          KB::LanguageModelContext::debug_string_for_token(0x200000000uLL, __p, &v63);
          v38 = 0x200000000;
          KB::LanguageModelContext::append(lmContext, v38, &v63, 0);
          if (*(&v63 + 1) && BYTE6(v63) == 1)
          {
            free(*(&v63 + 1));
          }

          if (v42 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:nn200100]<0>(&v63, "");
          KB::LanguageModelContext::append(lmContext, 0x100000000uLL, &v63, 0);
          if (v64 < 0)
          {
            operator delete(v63);
          }
        }

        else if (v36 == 0x200000000)
        {
          if (v34 >= 9 && *(v35 - 12) == 6 || (v18 = [v40 hasSuffix:{@"\n", v40}], v18))
          {
            KB::String::empty_string(v18);
            v37 = 0x100000000;
            KB::LanguageModelContext::append(lmContext, v37, &KB::String::empty_string(void)::empty_string, 0);
          }

          else
          {
            KB::LanguageModelContext::pop_back(lmContext);
          }
        }
      }

      [(TIKeyboardInputManager *)self fillReversedConversationHistoryInContext:v10, v40];
    }

    KB::LanguageModelContext::LanguageModelContext(retstr, lmContext);
    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    v9 = v40;
  }

  else
  {
    retstr->var7.var2 = 0;
    *&retstr->var7.var0 = 0u;
    *&retstr->var1.__cap_ = 0u;
    *&retstr->var3 = 0u;
    retstr->var0 = 0u;
    *&retstr->var1.__begin_ = 0u;
    *&retstr->var5.var0.var0 = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&retstr->var5);
    language_modeling::v1::LinguisticContext::LinguisticContext(&retstr->var6);
    retstr->var7.var0 = 0;
    retstr->var7.var1 = 0;
    retstr->var7.var2 = 0;
  }

  return result;
}

uint64_t __67__TIKeyboardInputManager_sentenceContextForInputStem_inputContext___block_invoke(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v13 = a2;
  v14 = v13;
  v15 = *(a1 + 56);
  v16 = v15 > a3;
  v17 = v15 - a3;
  if (v16)
  {
    if (v17 >= a4)
    {
      v18 = *(*(a1 + 48) + 8);
      v20 = v18[7];
      v19 = v18[8];
      v34 = v13;
      if (v20 >= v19)
      {
        v22 = v18[6];
        v23 = (v20 - v22) >> 3;
        if ((v23 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v24 = v19 - v22;
        v25 = v24 >> 2;
        if (v24 >> 2 <= (v23 + 1))
        {
          v25 = v23 + 1;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v26);
        }

        v27 = (8 * v23);
        *v27 = a7;
        v21 = 8 * v23 + 8;
        v28 = v18[6];
        v29 = v18[7] - v28;
        v30 = v27 - v29;
        memcpy(v27 - v29, v28, v29);
        v31 = v18[6];
        v18[6] = v30;
        v18[7] = v21;
        v18[8] = 0;
        if (v31)
        {
          operator delete(v31);
        }

        v14 = v34;
      }

      else
      {
        *v20 = a7;
        v21 = (v20 + 1);
      }

      v18[7] = v21;
      if (v14)
      {
        v32 = v14;
      }

      else
      {
        v32 = &stru_283FDFAF8;
      }

      v13 = [*(a1 + 32) insertObject:v32 atIndex:0];
      v14 = v34;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a8 = 1;
    }
  }

  return MEMORY[0x2821F96F8](v13, v14);
}

- (void)parseRecentMessage:(void *)message
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  *__p = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v10);
  language_modeling::v1::LinguisticContext::LinguisticContext(v11);
  memset(&v11[8], 0, 24);
  v5 = 0;
  [(TIKeyboardInputManager *)self tokenizeString:message context:&v6 sentences:&v5];
  operator new();
}

- (void)tokenizeString:(const String *)string context:(void *)context sentences:(unsigned int *)sentences
{
  v15 = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x5012000000;
  v9[3] = __Block_byref_object_copy__330;
  v9[4] = __Block_byref_object_dispose__331;
  v9[5] = "";
  v10 = 0x100000;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v5 = *(self->m_impl + 34);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__TIKeyboardInputManager_tokenizeString_context_sentences___block_invoke;
  v6[3] = &unk_278731590;
  v6[4] = self;
  v6[5] = v9;
  v6[6] = v7;
  v6[7] = context;
  v6[8] = sentences;
  (*(*v5 + 552))(v5, string, v6);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v9, 8);
  if (v13)
  {
    if (v12 == 1)
    {
      free(v13);
    }
  }
}

void __59__TIKeyboardInputManager_tokenizeString_context_sentences___block_invoke(uint64_t a1, KB::String *a2, unint64_t *a3)
{
  token_id_for_word = *a3;
  if (!HIDWORD(*a3))
  {
    v6 = *(*(*(a1 + 32) + 40) + 272);
    KB::cf_string_impl<KB::String>(&v14, a2);
    v7 = v14;
    v8 = *(a1 + 32);
    v9 = v8[5];
    v10 = *(a1 + 56);
    v11 = [v8 inputMode];
    v12 = [v11 locale];
    token_id_for_word = KB::LanguageModel::find_token_id_for_word(v6, v7, (v9 + 264), v10, 0x35u, v12, (*(*(a1 + 40) + 8) + 48), (*(*(a1 + 48) + 8) + 24));

    if (v7)
    {
      CFRelease(v7);
    }
  }

  v13 = token_id_for_word;
  KB::LanguageModelContext::append(*(a1 + 56), v13, a2, 0);
  if (HIDWORD(token_id_for_word) == 1)
  {
    ++**(a1 + 64);
  }
}

- (id)linguisticContext
{
  v3 = objc_alloc_init(TIContextTokens);
  KB::LanguageModelContext::operator=([(TIContextTokens *)v3 lmContext], self->m_impl + 59);

  return v3;
}

- (BOOL)canComputeSentenceContextForInputStem:(id)stem
{
  stemCopy = stem;
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];

  if (revisionHistory && (v6 = [stemCopy length], -[TIKeyboardInputManager revisionHistory](self, "revisionHistory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "selectedRange"), v7, v6 <= v8))
  {
    if ([stemCopy length])
    {
      revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
      selectedRange = [revisionHistory2 selectedRange];
      v12 = selectedRange - [stemCopy length];
      v13 = [stemCopy length];

      revisionHistory3 = [(TIKeyboardInputManager *)self revisionHistory];
      documentText = [revisionHistory3 documentText];
      v16 = [documentText rangeOfString:stemCopy options:2 range:{v12, v13}];
      v18 = v17;

      v9 = v12 == v16 && v13 == v18;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setInputStringFromDocumentState:(id)state isDeleteEvent:(BOOL)event didDeleteLastAcceptedPath:(BOOL)path
{
  pathCopy = path;
  eventCopy = event;
  stateCopy = state;
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
  [revisionHistory syncToDocumentState:stateCopy];

  if ([(TIKeyboardInputManager *)self shouldExtendPriorWord])
  {
    wordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
    if ([wordSeparator length])
    {
      v10 = 1;
    }

    else
    {
      v10 = !pathCopy;
    }
  }

  else
  {
    v10 = 0;
  }

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  selectedText = [documentState selectedText];

  if (selectedText)
  {
    [(TIKeyboardInputManager *)self clearInput];
    revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
    currentWord = [revisionHistory2 currentWord];

    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    documentState2 = [keyboardState2 documentState];
    selectedText2 = [documentState2 selectedText];
    isEqualToString = objc_msgSend_isEqualToString_(currentWord);

    if (isEqualToString)
    {
      [(TIKeyboardInputManager *)self setOriginalInput:currentWord];
    }

    goto LABEL_17;
  }

  if (!v10)
  {
    [(TIKeyboardInputManager *)self clearInput];
LABEL_17:
    v27 = 0;
    v22 = 0;
    inputStringRangeFromRevisionHistory = 0x7FFFFFFFFFFFFFFFLL;
    selectedRange = -1;
    goto LABEL_18;
  }

  inputStringRangeFromRevisionHistory = [(TIKeyboardInputManager *)self inputStringRangeFromRevisionHistory];
  v22 = v21;
  revisionHistory3 = [(TIKeyboardInputManager *)self revisionHistory];
  selectedRange = [revisionHistory3 selectedRange];

  if (v22 && selectedRange >= inputStringRangeFromRevisionHistory && selectedRange <= inputStringRangeFromRevisionHistory + v22)
  {
    revisionHistory4 = [(TIKeyboardInputManager *)self revisionHistory];
    documentText = [revisionHistory4 documentText];
    v27 = [documentText substringWithRange:{inputStringRangeFromRevisionHistory, v22}];

    [(TIKeyboardInputManager *)self setInput:v27 withIndex:(selectedRange - inputStringRangeFromRevisionHistory)];
  }

  else
  {
    [(TIKeyboardInputManager *)self clearInput];
    v27 = 0;
  }

LABEL_18:
  if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
  {
    typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
    keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
    [typingSessionMonitor contextDidChange:stateCopy wordDelete:eventCopy cursorMoved:eventCopy ^ 1 extendsPriorWord:v10 inWord:v27 range:inputStringRangeFromRevisionHistory selectionLocation:v22 keyboardState:{selectedRange, keyboardState3}];
  }

  [(TIKeyboardInputManager *)self _recalcSupplementalPrefix];
  [(TIKeyboardInputManager *)self updateInputContext];
}

void *__61__TIKeyboardInputManager_inputStringRangeFromRevisionHistory__block_invoke(void *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = result[6];
  if (a3 + a4 >= v8)
  {
    if (a3 <= v8)
    {
      v9 = *(result[4] + 8);
      *(v9 + 48) = a3;
      *(v9 + 56) = a4;
      if ((a7 - 0x1F400000000) <= 0xFFFFFE0CFFFFFFFFLL)
      {
        v10 = *(result[5] + 8);
        *(v10 + 48) = a3;
        *(v10 + 56) = a4;
      }
    }
  }

  else
  {
    *a8 = 1;
  }

  return result;
}

- (_NSRange)acceptableRangeFromRange:(_NSRange)range inText:(id)text withSelectionLocation:(unint64_t)location
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v10 = textCopy;
  if (location >= location && (v11 = location + length >= location, v12 = location + length - location, v11))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    locationCopy = location;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __80__TIKeyboardInputManager_acceptableRangeFromRange_inText_withSelectionLocation___block_invoke;
    v25[3] = &unk_278731540;
    v25[4] = self;
    v15 = textCopy;
    v26 = v15;
    v27 = &v28;
    [v15 enumerateSubstringsInRange:location options:v12 usingBlock:{514, v25}];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    locationCopy2 = location;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__TIKeyboardInputManager_acceptableRangeFromRange_inText_withSelectionLocation___block_invoke_2;
    v18[3] = &unk_278731540;
    v18[4] = self;
    v19 = v15;
    v20 = &v21;
    [v19 enumerateSubstringsInRange:location options:location - location usingBlock:{770, v18}];
    v14 = v22[3];
    v13 = v29[3] - v14;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v13 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = v14;
  v17 = v13;
  result.length = v17;
  result.location = v16;
  return result;
}

void *__80__TIKeyboardInputManager_acceptableRangeFromRange_inText_withSelectionLocation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) acceptsRange:a3 inString:{a4, *(a1 + 40), a6}];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3 + a4;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

void *__80__TIKeyboardInputManager_acceptableRangeFromRange_inText_withSelectionLocation___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) acceptsRange:a3 inString:{a4, *(a1 + 40), a6}];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

- (_NSRange)legacyInputRangeForTokenRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = range.location;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = range.location + range.length;
  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
  documentText = [revisionHistory documentText];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__TIKeyboardInputManager_legacyInputRangeForTokenRange___block_invoke;
  v12[3] = &unk_278731518;
  v12[4] = self;
  v12[5] = &v17;
  v12[6] = &v13;
  [documentText enumerateSubstringsInRange:location options:length usingBlock:{2, v12}];

  v8 = v18[3];
  v9 = v14[3] - v8;
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  v10 = v8;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

void __56__TIKeyboardInputManager_legacyInputRangeForTokenRange___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ([*(a1 + 32) stringEndsWord:{a2, a4, a5, a6}])
  {
    v11 = [*(a1 + 32) revisionHistory];
    v12 = [v11 selectedRange];

    if (a3 >= v12)
    {
      *(*(*(a1 + 48) + 8) + 24) = a3;
      *a7 = 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = a3 + a4;
    }
  }
}

- (unsigned)simulateAutoshiftIfNecessaryForFlags:(unsigned int)flags
{
  flagsCopy = flags;
  if (flags)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    if ([keyboardState autocapitalizationEnabled])
    {
    }

    else
    {
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      autocapitalizationType = [keyboardState2 autocapitalizationType];

      if (autocapitalizationType == 2)
      {
        keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
        documentState = [keyboardState3 documentState];
        contextBeforeInput = [documentState contextBeforeInput];
        v11 = contextBeforeInput;
        v12 = &stru_283FDFAF8;
        if (contextBeforeInput)
        {
          v12 = contextBeforeInput;
        }

        v13 = v12;

        v14 = [(TIKeyboardInputManager *)self canStartSentenceAfterString:v13];
        if (v14)
        {
          flagsCopy |= 2u;
        }
      }
    }
  }

  return flagsCopy;
}

- (BOOL)hasLegacyInputString
{
  if (!self->m_impl)
  {
    return 0;
  }

  if ([(TIKeyboardInputManager *)self hasLegacyInputStem])
  {
    return 1;
  }

  m_impl = self->m_impl;
  v5 = m_impl[24];
  v6 = *(m_impl + 1);
  v7 = -858993459 * ((*(m_impl + 2) - v6) >> 3);
  v8 = v5;
  v9 = v7 - v5;
  if (v7 > v5)
  {
    v10 = (v6 + 40 * v5 + 32);
    v8 = v5;
    while (1)
    {
      v11 = *v10;
      v10 += 40;
      if ((v11 & 0x40) != 0)
      {
        break;
      }

      ++v8;
      if (!--v9)
      {
        v8 = v7;
        return v5 < v8;
      }
    }
  }

  return v5 < v8;
}

- (BOOL)hasLegacyInputStem
{
  m_impl = self->m_impl;
  if (!m_impl)
  {
    return 0;
  }

  v3 = *(m_impl + 24);
  v4 = v3 + 1;
  v5 = 40 * v3 - 8;
  do
  {
    if (!--v4)
    {
      break;
    }

    v6 = *(m_impl[1] + v5);
    v5 -= 40;
  }

  while ((v6 & 0x40) == 0);
  return v4 < v3;
}

- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete
{
  v7 = *&flags;
  v49 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v10 = inputCopy;
  if (delete)
  {
    *delete = 0;
  }

  if (!self->m_impl)
  {
    v14 = inputCopy;
    goto LABEL_44;
  }

  v11 = [(TIKeyboardInputManager *)self simulateAutoshiftIfNecessaryForFlags:v7];
  v12 = [(TIKeyboardInputManager *)self stringEndsWord:v10];
  if (v12)
  {
    v13 = v11 | 0x40;
  }

  else
  {
    v13 = v11;
  }

  v14 = [(TIKeyboardInputManager *)self externalStringToInternal:v10];
  v15 = [v14 length];
  inputIndex = [(TIKeyboardInputManager *)self inputIndex];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if ((v15 & 0xFFFFFFFE) != 0)
  {
    if ((v13 & 4) != 0 && (objc_msgSend_isEqualToString_(v14) & 1) == 0)
    {
      TIInputManager::input_substring((self->m_impl + 8), 0, *(self->m_impl + 24), &v45);
      v51.location = v15;
      KB::utf8_substring(v14, 0, v51, v43);
      KB::String::append(&v45, v43);
      if (v44 && v43[6] == 1)
      {
        free(v44);
      }

      v17 = KB::ns_string(&v45, v16);
      v18 = [(TIKeyboardInputManager *)self internalStringToExternal:v17];

      v19 = [v18 length];
      if (v19 <= [v14 length])
      {
        v21 = 0;
      }

      else
      {
        v20 = [v18 length];
        v21 = v20 - [v14 length];
      }

      if ([v18 _rangeOfString:v14 fromLocation:v21] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = v10;

        v14 = v23;
      }

      if (v46 && BYTE6(v45) == 1)
      {
        free(v46);
      }
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = v13;
    v24 = [v14 length];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __59__TIKeyboardInputManager_addInput_flags_point_firstDelete___block_invoke;
    v35[3] = &unk_2787314F0;
    v35[4] = self;
    v14 = v14;
    v36 = v14;
    v37 = &v45;
    v38 = &v39;
    [v14 enumerateSubstringsInRange:0 options:v24 usingBlock:{514, v35}];

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    m_impl = self->m_impl;
    KB::utf8_string(v14, &v45);
    TIInputManager::add_input(m_impl, &v45, v13);
    if (v46 && BYTE6(v45) == 1)
    {
      free(v46);
    }

    ++v40[3];
  }

  if (self->m_composedText && ![(TIKeyboardInputManager *)self shouldDelayUpdateComposedText])
  {
    v33 = v12;
    TIInputManager::input_substring((self->m_impl + 8), 0, -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3), &v45);
    v26 = KB::ns_string(&v45, v25);
    if (v46 && BYTE6(v45) == 1)
    {
      free(v46);
    }

    v27 = *(self->m_impl + 24);
    v28 = [(TIKeyboardInputManager *)self internalStringToExternal:v26];
    v29 = [v28 substringToIndex:{-[TIKeyboardInputManager internalIndexToExternal:](self, "internalIndexToExternal:", v27)}];
    v30 = [(TIKeyboardInputManager *)self suffixOfDesiredString:v29 toAppendToInputString:self->m_composedText withInputIndex:inputIndex afterDeletionCount:delete];

    [(NSMutableString *)self->m_composedText setString:v28];
    v14 = v30;
    v12 = v33;
  }

  if (![(TIKeyboardInputManager *)self usesCandidateSelection])
  {
    if ((v13 & 2) != 0)
    {
      if (inputIndex)
      {
        v31 = self->m_impl;
        if ((*(*(v31 + 1) + 40 * (inputIndex - 1) + 32) & 0x40) != 0)
        {
          [(TIKeyboardInputManager *)self dropInputPrefix:(v31[24] - *(v40 + 6))];
        }
      }
    }

    if (!v12)
    {
      goto LABEL_43;
    }

    KB::String::clear((self->m_impl + 64));
    goto LABEL_42;
  }

  if (v12)
  {
    [(TIKeyboardInputManager *)self dropInput];
LABEL_42:
    self->_isEditingWordPrefix = 0;
  }

LABEL_43:
  _Block_object_dispose(&v39, 8);
LABEL_44:

  return v14;
}

void __59__TIKeyboardInputManager_addInput_flags_point_firstDelete___block_invoke(uint64_t a1, int a2, NSString *a3, _NSRange a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = *(*(a1 + 32) + 40);
  v10.location = v10.length;
  KB::utf8_substring(*(a1 + 40), a3, v10, v7);
  TIInputManager::add_input(v6, v7, *(*(*(a1 + 48) + 8) + 24));
  if (v8 && v7[6] == 1)
  {
    free(v8);
  }

  *(*(*(a1 + 48) + 8) + 24) &= 4u;
  ++*(*(*(a1 + 56) + 8) + 24);
}

- (void)mobileAssetsChanged:(id)changed
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s New LinguisticData OTA assets are available", "-[TIKeyboardInputManager mobileAssetsChanged:]"];
    *buf = 138412290;
    v7 = v5;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  [(TIKeyboardInputManager *)self setLinguisticResourceStatus:2 reason:@"Mobile assets changed"];
}

- (void)setLinguisticResourceStatus:(unint64_t)status reason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v7 = TIOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = MEMORY[0x277CCACA8];
      linguisticResourceStatus = [(TIKeyboardInputManager *)self linguisticResourceStatus];
      if (linguisticResourceStatus > 2)
      {
        v10 = "Unknown";
      }

      else
      {
        v10 = off_278731828[linguisticResourceStatus];
      }

      if (status > 2)
      {
        v11 = "Unknown";
      }

      else
      {
        v11 = off_278731828[status];
      }

      v12 = @"None";
      if (reasonCopy)
      {
        v12 = reasonCopy;
      }

      v13 = [v8 stringWithFormat:@"%s linguisticResourceStatus: %s -> %s (%@)", "-[TIKeyboardInputManager setLinguisticResourceStatus:reason:]", v10, v11, v12];
      *buf = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  self->_linguisticResourceStatus = status;
}

- (shared_ptr<KB::LanguageModel>)loadedLightweightLanguageModel
{
  v3 = v2;
  v31[1] = *MEMORY[0x277D85DE8];
  p_m_lightweight_language_model = &self->m_lightweight_language_model;
  ptr = self->m_lightweight_language_model.__ptr_;
  if (ptr)
  {
    cntrl = self->m_lightweight_language_model.__cntrl_;
    *v3 = ptr;
    v3[1] = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    config = [(TIKeyboardInputManager *)self config];
    usesWordNgramModel = [config usesWordNgramModel];

    dynamicResourcePath = [(TIKeyboardInputManager *)self dynamicResourcePath];
    config2 = [(TIKeyboardInputManager *)self config];
    if ([config2 usesCustomNgramModel])
    {
      config3 = [(TIKeyboardInputManager *)self config];
      ngramModelPath = [config3 ngramModelPath];
      v31[0] = ngramModelPath;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    }

    else
    {
      v12 = 0;
    }

    languageModelAssets = [(TIKeyboardInputManager *)self languageModelAssets];
    dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
    preferredModelLocaleIdentifier = [dictionaryInputMode preferredModelLocaleIdentifier];
    preferredModelLocaleIsMultilingual = [dictionaryInputMode preferredModelLocaleIsMultilingual];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    isSiriMode = [inputMode isSiriMode];
    LOBYTE(v25) = [dictionaryInputMode doesSupportInlineCompletion];
    BYTE2(v24) = isSiriMode;
    LOWORD(v24) = 0;
    v18 = [TILanguageModelLoaderManager sharedLanguageModelLoaderForModelLocaleIdentifier:"sharedLanguageModelLoaderForModelLocaleIdentifier:isMultilingualModel:customResourcePaths:dynamicResourcePath:mobileAssets:usesLinguisticContext:isMultiLingualModeEnabled:validEnglishTransformerMultilingualConfig:isSiriMode:trialParameters:isInlineCompletionEnabled:" isMultilingualModel:preferredModelLocaleIdentifier customResourcePaths:preferredModelLocaleIsMultilingual dynamicResourcePath:v12 mobileAssets:dynamicResourcePath usesLinguisticContext:languageModelAssets isMultiLingualModeEnabled:usesWordNgramModel validEnglishTransformerMultilingualConfig:v24 isSiriMode:0 trialParameters:v25 isInlineCompletionEnabled:?];

    lexiconLocales = [(TIKeyboardInputManager *)self lexiconLocales];
    if (v18)
    {
      objc_msgSend_lightweightLanguageModelForLanguageLocales_(v18);
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    config4 = [(TIKeyboardInputManager *)self config];
    (*(*v29 + 72))(v29, [config4 includeLightWeightLanguageModelMobileAssets]);

    v22 = v29;
    v21 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = p_m_lightweight_language_model->__cntrl_;
    p_m_lightweight_language_model->__ptr_ = v29;
    p_m_lightweight_language_model->__cntrl_ = v30;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      v22 = p_m_lightweight_language_model->__ptr_;
      v21 = p_m_lightweight_language_model->__cntrl_;
    }

    *v3 = v22;
    v3[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v30);
    }
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)scoreCandidates:(void *)candidates
{
  v4[4] = *MEMORY[0x277D85DE8];
  ptr = self->_refinery.__ptr_;
  v4[0] = &unk_283FDAE00;
  v4[3] = v4;
  (*(*ptr + 56))(ptr, candidates, v4);
  std::__function::__value_func<void ()(KB::Candidate &,float)>::~__value_func[abi:nn200100](v4);
}

- (float)scoreCandidates:
{
  v4 = a2[187];
  v5 = a2[189];
  v6 = a2[190];
  v7 = logf(*a3);
  a2[188] = v7;
  result = v4 + (v6 * (v7 + v5));
  a2[186] = result;
  return result;
}

- (BOOL)updateLanguageModelForKeyboardState
{
  objc_msgSend_loadNewLanguageModel(self, a2);
  m_impl = self->m_impl;
  v5 = *(m_impl + 34);
  v4 = *(m_impl + 35);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v16 != v5)
  {
    v6 = self->m_impl;
    v7 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v6 + 35);
    *(v6 + 34) = v16;
    *(v6 + 35) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    if ((*(*v16 + 32))(v16))
    {
      config = [(TIKeyboardInputManager *)self config];
      [config isTesting];

      config2 = [(TIKeyboardInputManager *)self config];
      [config2 maxWordsPerPrediction];

      v11 = self->m_impl;
      v12 = *(v11 + 33);
      if (v12)
      {
        atomic_fetch_add(v12, 1u);
        v11 = self->m_impl;
      }

      v13 = *(v11 + 35);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        KB::NgramCandidateRefinery::create();
      }

      KB::NgramCandidateRefinery::create();
    }

    std::allocate_shared[abi:nn200100]<KB::UnigramCandidateRefinery,std::allocator<KB::UnigramCandidateRefinery>,WTF::RefPtr<KB::DictionaryContainer> const&,0>(&v15, self->m_impl + 33);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  return v16 != v5;
}

- (shared_ptr<KB::LanguageModel>)loadNewLanguageModel
{
  v38 = v2;
  v42[1] = *MEMORY[0x277D85DE8];
  config = [(TIKeyboardInputManager *)self config];
  HIDWORD(v35) = [config usesWordNgramModel];

  config2 = [(TIKeyboardInputManager *)self config];
  if ([config2 usesAdaptation])
  {
    dynamicResourcePath = [(TIKeyboardInputManager *)self dynamicResourcePath];
  }

  else
  {
    dynamicResourcePath = 0;
  }

  config3 = [(TIKeyboardInputManager *)self config];
  if ([config3 usesCustomNgramModel])
  {
    config4 = [(TIKeyboardInputManager *)self config];
    ngramModelPath = [config4 ngramModelPath];
    v42[0] = ngramModelPath;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  }

  else
  {
    v9 = 0;
  }

  languageModelAssets = [(TIKeyboardInputManager *)self languageModelAssets];
  dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
  v12 = +[TITrialManagerProxy sharedManager];
  locale = [dictionaryInputMode locale];
  v14 = [v12 encodedLMTrialParametersForLocale:locale];

  preferredModelLocaleIdentifier = [dictionaryInputMode preferredModelLocaleIdentifier];
  preferredModelLocaleIsMultilingual = [dictionaryInputMode preferredModelLocaleIsMultilingual];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  isSiriMode = [inputMode isSiriMode];
  LOBYTE(v35) = [dictionaryInputMode doesSupportInlineCompletion];
  v36 = languageModelAssets;
  BYTE2(v34) = isSiriMode;
  LOWORD(v34) = 0;
  v37 = v9;
  v19 = [TILanguageModelLoaderManager sharedLanguageModelLoaderForModelLocaleIdentifier:"sharedLanguageModelLoaderForModelLocaleIdentifier:isMultilingualModel:customResourcePaths:dynamicResourcePath:mobileAssets:usesLinguisticContext:isMultiLingualModeEnabled:validEnglishTransformerMultilingualConfig:isSiriMode:trialParameters:isInlineCompletionEnabled:" isMultilingualModel:preferredModelLocaleIdentifier customResourcePaths:preferredModelLocaleIsMultilingual dynamicResourcePath:v9 mobileAssets:dynamicResourcePath usesLinguisticContext:languageModelAssets isMultiLingualModeEnabled:HIDWORD(v35) validEnglishTransformerMultilingualConfig:v34 isSiriMode:v14 trialParameters:v35 isInlineCompletionEnabled:?];

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  clientIdentifier = [keyboardState clientIdentifier];

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  recipientIdentifier = [keyboardState2 recipientIdentifier];

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__11451;
  v40[4] = __Block_byref_object_dispose__11452;
  selfCopy = self;
  v41 = selfCopy;
  keyboardState3 = [(TIKeyboardInputManager *)selfCopy keyboardState];
  clientIdentifier2 = [keyboardState3 clientIdentifier];
  keyboardState4 = [(TIKeyboardInputManager *)selfCopy keyboardState];
  recipientIdentifier2 = [keyboardState4 recipientIdentifier];
  lexiconLocales = [(TIKeyboardInputManager *)selfCopy lexiconLocales];
  v30 = clientIdentifier;
  v31 = recipientIdentifier;
  if (v19)
  {
    objc_msgSend_sharedLanguageModelForClient_withRecipient_forLanguageLocales_completion_(v19);
  }

  else
  {
    *v38 = 0;
    v38[1] = 0;
  }

  _Block_object_dispose(v40, 8);
  result.__cntrl_ = v33;
  result.__ptr_ = v32;
  return result;
}

void __46__TIKeyboardInputManager_loadNewLanguageModel__block_invoke(void *a1, void *a2)
{
  v13 = a2;
  v3 = MEMORY[0x277CCACA8];
  v4 = a1[4];
  v5 = [*(*(a1[6] + 8) + 40) keyboardState];
  v6 = [v5 clientIdentifier];
  if ([v3 _string:v4 matchesString:v6])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = a1[5];
    v9 = [*(*(a1[6] + 8) + 40) keyboardState];
    v10 = [v9 recipientIdentifier];
    LODWORD(v7) = [v7 _string:v8 matchesString:v10];

    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = [*(*(a1[6] + 8) + 40) languageSelectionController];
    [v5 setAdaptationContext:v13];
  }

  else
  {
  }

LABEL_6:
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

- (void)updateDynamicDirectoryForScreenLockState:(BOOL)state
{
  stateCopy = state;
  v13[1] = *MEMORY[0x277D85DE8];
  config = [(TIKeyboardInputManager *)self config];
  usesAdaptation = [config usesAdaptation];

  v7 = self->_isDeviceLockFlagValid && self->_wasDeviceLockedLastSync != stateCopy;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = defaultCenter;
  if (v7)
  {
    if ((usesAdaptation & stateCopy) == 1)
    {
      [defaultCenter postNotificationName:@"TIKeyboardInputManagerDynamicResourceDirectorySetNotification" object:self userInfo:0];
    }

    else if (((usesAdaptation | stateCopy) & 1) == 0)
    {
      v12 = @"dynamicResourcePath";
      keyboardUserDirectory = [objc_opt_class() keyboardUserDirectory];
      v13[0] = keyboardUserDirectory;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [v9 postNotificationName:@"TIKeyboardInputManagerDynamicResourceDirectorySetNotification" object:self userInfo:v11];
    }
  }

  self->_wasDeviceLockedLastSync = stateCopy;
  self->_isDeviceLockFlagValid = 1;
}

- (id)pathToDynamicDictionary
{
  config = [(TIKeyboardInputManager *)self config];
  inputMode = [config inputMode];
  v5 = [(TIKeyboardInputManager *)self dynamicDictionaryPathForInputMode:inputMode];

  return v5;
}

- (void)logTestingParametersToTypology
{
  if (self->m_typology_recorder.__ptr_)
  {
    testingParameters = [(TIKeyboardInputManager *)self testingParameters];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"LM trial param: %@", testingParameters];
    [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v3];
  }
}

- (NSArray)languageModelAssets
{
  dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
  v4 = [(TIKeyboardInputManager *)self languageModelAssetsForInputMode:dictionaryInputMode];

  return v4;
}

- (id)languageModelAssetsForInputMode:(id)mode
{
  v37 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v4 = modeCopy;
  if (modeCopy)
  {
    if ([modeCopy isSiriMode])
    {
      preferredModelLocaleIsMultilingual = [v4 preferredModelLocaleIsMultilingual];
      v6 = @"SiriLanguageModel";
      if (preferredModelLocaleIsMultilingual)
      {
        v6 = @"SiriMultilingualLanguageModel";
      }
    }

    else
    {
      v6 = @"LanguageModel";
    }

    v8 = v6;
    preferredModelLocaleIdentifier = [v4 preferredModelLocaleIdentifier];
    v10 = +[TIInputMode inputModeWithIdentifier:isSiriMode:](TIInputMode, "inputModeWithIdentifier:isSiriMode:", preferredModelLocaleIdentifier, [v4 isSiriMode]);

    v11 = +[TIAssetManager sharedAssetManager];
    v12 = [v11 ddsAssetContentItemsWithContentType:v8 inputMode:v10 filteredWithRegion:0];

    v13 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Language model asset content items for %@: %@", "-[TIKeyboardInputManager languageModelAssetsForInputMode:]", v4, v12];
      *buf = 138412290;
      v36 = v29;
      _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v14 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = MEMORY[0x277CCACA8];
      normalizedIdentifier = [v4 normalizedIdentifier];
      v17 = [v12 count];
      firstObject = [v12 firstObject];
      path = [firstObject path];
      v20 = [v15 stringWithFormat:@"%s Language model asset count and path for %@: (%lu, %@)", "-[TIKeyboardInputManager languageModelAssetsForInputMode:]", normalizedIdentifier, v17, path];
      *buf = 138412290;
      v36 = v20;
      _os_log_impl(&dword_22CA55000, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    array = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = v12;
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          path2 = [*(*(&v30 + 1) + 8 * i) path];
          v26Path = [path2 path];
          [array addObject:v26Path];
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v23);
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

- (id)dynamicDictionaryPathForInputMode:(id)mode
{
  if (mode)
  {
    languageWithRegion = [mode languageWithRegion];
    config = [(TIKeyboardInputManager *)self config];
    dynamicResourcePath = [config dynamicResourcePath];
    v7 = UIKeyboardDynamicDictionaryFileWithSiriMode(languageWithRegion, dynamicResourcePath, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)pathToPhraseDictionary
{
  dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
  v4 = [(TIKeyboardInputManager *)self phraseDictionaryPathForInputMode:dictionaryInputMode];

  return v4;
}

- (id)phraseDictionaryPathForInputMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy)
  {
    config = [(TIKeyboardInputManager *)self config];
    usesCustomStaticDictionary = [config usesCustomStaticDictionary];

    if (usesCustomStaticDictionary)
    {
      v7 = MEMORY[0x277CCACA8];
      config2 = [(TIKeyboardInputManager *)self config];
      staticDictionaryPath = [config2 staticDictionaryPath];
      v10 = *MEMORY[0x277D6F660];
      languageWithRegion = [modeCopy languageWithRegion];
      v12 = [v7 stringWithFormat:@"%@/%@%@.dat", staticDictionaryPath, v10, languageWithRegion];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      LOBYTE(config2) = [defaultManager fileExistsAtPath:v12];

      if ((config2 & 1) == 0)
      {
        v14 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v12 = UIKeyboardPhraseLexiconPathForInputMode(modeCopy);
    }

    v14 = v12;
    v12 = v14;
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

LABEL_8:

  return v14;
}

- (id)pathToDeltaStaticDictionary
{
  dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
  v4 = [(TIKeyboardInputManager *)self deltaDictionaryPathForInputMode:dictionaryInputMode];

  return v4;
}

- (id)deltaDictionaryPathForInputMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy)
  {
    config = [(TIKeyboardInputManager *)self config];
    usesCustomStaticDictionary = [config usesCustomStaticDictionary];

    if (usesCustomStaticDictionary)
    {
      v7 = MEMORY[0x277CCACA8];
      config2 = [(TIKeyboardInputManager *)self config];
      staticDictionaryPath = [config2 staticDictionaryPath];
      v10 = *MEMORY[0x277D6F658];
      languageWithRegion = [modeCopy languageWithRegion];
      v12 = [v7 stringWithFormat:@"%@/%@%@.dat", staticDictionaryPath, v10, languageWithRegion];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      LOBYTE(config2) = [defaultManager fileExistsAtPath:v12];

      if ((config2 & 1) == 0)
      {
        v14 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v12 = UIKeyboardDeltaLexiconPathForInputMode(modeCopy);
    }

    v14 = v12;
    v12 = v14;
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

LABEL_8:

  return v14;
}

- (id)pathToStaticDictionary
{
  v10 = *MEMORY[0x277D85DE8];
  dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
  v4 = [(TIKeyboardInputManager *)self staticDictionaryPathForInputMode:dictionaryInputMode];

  if (!v4)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s WARNING: Static dictionary not found", "-[TIKeyboardInputManager pathToStaticDictionary]"];
      *buf = 138412290;
      v9 = v7;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  return v4;
}

- (id)staticDictionaryPathForInputMode:(id)mode
{
  v26 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  if (!modeCopy)
  {
    v13 = 0;
    goto LABEL_6;
  }

  config = [(TIKeyboardInputManager *)self config];
  usesCustomStaticDictionary = [config usesCustomStaticDictionary];

  if (!usesCustomStaticDictionary)
  {
    normalizedIdentifier = [modeCopy normalizedIdentifier];
    v17 = TIInputModeUseMorphemeLevelLexicon();

    if (v17)
    {
      UIKeyboardMorphemeLexiconPathForInputMode(modeCopy);
    }

    else
    {
      UIKeyboardUnigramLexiconPathForInputMode(modeCopy);
    }
    v13 = ;
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v18 = TIOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = MEMORY[0x277CCACA8];
        linguisticResourceStatus = [(TIKeyboardInputManager *)self linguisticResourceStatus];
        if (linguisticResourceStatus > 2)
        {
          v22 = "Unknown";
        }

        else
        {
          v22 = off_278731828[linguisticResourceStatus];
        }

        v23 = [v20 stringWithFormat:@"%s linguisticResourceStatus: %s, staticDictPath: %s", "-[TIKeyboardInputManager staticDictionaryPathForInputMode:]", v22, objc_msgSend(v13, "UTF8String")];
        *buf = 138412290;
        v25 = v23;
        _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    goto LABEL_15;
  }

  v7 = MEMORY[0x277CCACA8];
  config2 = [(TIKeyboardInputManager *)self config];
  staticDictionaryPath = [config2 staticDictionaryPath];
  v10 = *MEMORY[0x277D6F788];
  locale = [modeCopy locale];
  languageCode = [locale languageCode];
  v13 = [v7 stringWithFormat:@"%@/%@%@.dat", staticDictionaryPath, v10, languageCode];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(staticDictionaryPath) = [defaultManager fileExistsAtPath:v13];

  if ((staticDictionaryPath & 1) == 0)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_16;
  }

LABEL_15:
  v13 = v13;
  v15 = v13;
LABEL_16:

  return v15;
}

- (void)addMultilingualLexiconsFromDiskToVector:(void *)vector excluding:(const void *)excluding
{
  v48 = *MEMORY[0x277D85DE8];
  objc_msgSend_multilingualLocalesOnDisk(self, a2);
  v7 = v35;
  v6 = v36;
  v34 = v36;
  while (v7 != v6)
  {
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = *v7;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    v11 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v9, v10);
    v12 = *(excluding + 8);
    if (v12)
    {
      v13 = v11;
      v14 = vcnt_s8(v12);
      v14.i16[0] = vaddlv_u8(v14);
      v15 = v14.u32[0];
      if (v14.u32[0] > 1uLL)
      {
        v16 = v11;
        if (v11 >= *&v12)
        {
          v16 = v11 % *&v12;
        }
      }

      else
      {
        v16 = (*&v12 - 1) & v11;
      }

      v17 = *(*excluding + 8 * v16);
      if (v17)
      {
        v18 = *v17;
        if (*v17)
        {
          do
          {
            v19 = v18[1];
            if (v13 == v19)
            {
              if (std::equal_to<std::string>::operator()[abi:nn200100](v18 + 2, v7))
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v15 > 1)
              {
                if (v19 >= *&v12)
                {
                  v19 %= *&v12;
                }
              }

              else
              {
                v19 &= *&v12 - 1;
              }

              if (v19 != v16)
              {
                break;
              }
            }

            v18 = *v18;
          }

          while (v18);
        }
      }
    }

    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    objc_msgSend_lexiconInfoForMultilingualDynamic_(self);
    v22 = *(vector + 1);
    v21 = *(vector + 2);
    if (v22 >= v21)
    {
      v24 = 0x2E8BA2E8BA2E8BA3 * ((v22 - *vector) >> 4);
      v25 = v24 + 1;
      if ((v24 + 1) > 0x1745D1745D1745DLL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v26 = 0x2E8BA2E8BA2E8BA3 * ((v21 - *vector) >> 4);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0xBA2E8BA2E8BA2ELL)
      {
        v27 = 0x1745D1745D1745DLL;
      }

      else
      {
        v27 = v25;
      }

      v37[4] = vector;
      if (v27)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LexiconInfo>>(v27);
      }

      v28 = 176 * v24;
      std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo,void,0>(176 * v24, &v38);
      v23 = 176 * v24 + 176;
      v29 = *(vector + 1);
      v30 = v28 + *vector - v29;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LexiconInfo>,KB::LexiconInfo*>(*vector, v29, v30);
      v31 = *vector;
      *vector = v30;
      *(vector + 1) = v23;
      v32 = *(vector + 2);
      *(vector + 2) = 0;
      v37[2] = v31;
      v37[3] = v32;
      v37[0] = v31;
      v37[1] = v31;
      std::__split_buffer<KB::LexiconInfo>::~__split_buffer(v37);
    }

    else
    {
      std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo,void,0>(*(vector + 1), &v38);
      v23 = v22 + 176;
    }

    *(vector + 1) = v23;
    if (v47 && v46 == 1)
    {
      free(v47);
    }

    if (v45 && v44 == 1)
    {
      free(v45);
    }

    if (v43 && v42 == 1)
    {
      free(v43);
    }

    if (v41 && v40 == 1)
    {
      free(v41);
    }

    if (v39)
    {
      if (BYTE6(v38) == 1)
      {
        free(v39);
      }
    }

LABEL_52:
    v7 += 24;
    v6 = v34;
  }

  v38 = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v38);
}

- (vector<std::string,)multilingualLocalesOnDisk
{
  dynamicResourcePath = [(TIKeyboardInputManager *)self dynamicResourcePath];
  uTF8String = [dynamicResourcePath UTF8String];
  memset(&v47, 0, sizeof(v47));
  v6 = (uTF8String - 1);
  do
  {
    v7 = v6->__r_.__value_.__s.__data_[1];
    v6 = (v6 + 1);
  }

  while (v7);
  std::string::append[abi:nn200100]<char const*,0>(&v47.__pn_, uTF8String, v6);

  if (std::__fs::filesystem::path::__filename(&v47).__size_)
  {
    std::string::push_back(&v47.__pn_, 47);
  }

  std::string::append[abi:nn200100]<char const*,0>(&v47.__pn_, "mul-dynamic.lm/dynamic-lexicon-*.dat", "");
  if (SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v47.__pn_.__r_.__value_.__l.__data_, v47.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v47.__pn_;
  }

  v58 = 0uLL;
  v59 = 0;
  memset(&v57, 0, sizeof(v57));
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append[abi:nn200100]<char const*,0>(&v57.__pn_, p_p, (p_p + size));
  std::__fs::filesystem::path::filename[abi:nn200100](&v60, &v57);
  if (SHIBYTE(v60.__end_) < 0)
  {
    first = v60.__first_;
    std::string::__init_copy_ctor_external(&__str, v60.__first_, v60.__begin_);
    operator delete(first);
  }

  else
  {
    *&__str.__r_.__value_.__l.__data_ = *&v60.__first_;
    __str.__r_.__value_.__r.__words[2] = v60.__end_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __str.__r_.__value_.__l.__size_;
  }

  if (v11)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    v13 = memchr(p_str, 42, v11);
    if (v13)
    {
      v14 = v13 - p_str;
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v14 = -1;
  }

  std::string::basic_string(&v55, &__str, 0, v14, &v60);
  std::string::basic_string(&v54, &__str, v14 + 1, 0xFFFFFFFFFFFFFFFFLL, &v60);
  v15 = std::__fs::filesystem::path::__filename(&v57);
  if (v15.__size_)
  {
    if ((SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v17 = v57.__pn_.__r_.__value_.__r.__words[0];
      v16 = &v15.__data_[-v57.__pn_.__r_.__value_.__r.__words[0]];
      if (v57.__pn_.__r_.__value_.__l.__size_ >= &v15.__data_[-v57.__pn_.__r_.__value_.__r.__words[0]])
      {
        v57.__pn_.__r_.__value_.__l.__size_ = &v15.__data_[-v57.__pn_.__r_.__value_.__r.__words[0]];
        goto LABEL_33;
      }
    }

    else
    {
      v16 = (v15.__data_ - &v57);
      if ((v15.__data_ - &v57) <= SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]))
      {
        *(&v57.__pn_.__r_.__value_.__s + 23) = v15.__data_ - &v57;
        v17 = &v57;
LABEL_33:
        v16[v17] = 0;
        goto LABEL_34;
      }
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

LABEL_34:
  std::__fs::filesystem::__status(&v57, 0);
  if (!LOBYTE(v60.__first_) || LOBYTE(v60.__first_) == 255)
  {
    goto LABEL_109;
  }

  MEMORY[0x2318BE150](&v52, &v57, 0, 0);
  ptr = v52;
  v19 = v53;
  if (!v53)
  {
    v51.__imp_.__ptr_ = v52;
    v51.__imp_.__cntrl_ = 0;
    if (v52)
    {
      goto LABEL_42;
    }

    goto LABEL_104;
  }

  atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  v20 = v53;
  v51.__imp_.__ptr_ = ptr;
  v51.__imp_.__cntrl_ = v19;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    ptr = v51.__imp_.__ptr_;
  }

  if (ptr)
  {
    while (1)
    {
LABEL_42:
      v21 = std::__fs::filesystem::directory_iterator::__dereference(&v51);
      if (SHIBYTE(v21->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&p, v21->__p_.__pn_.__r_.__value_.__l.__data_, v21->__p_.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        p = v21->__p_;
      }

      std::__fs::filesystem::path::filename[abi:nn200100](&v60, &p);
      if (SHIBYTE(v60.__end_) < 0)
      {
        v22 = v60.__first_;
        std::string::__init_copy_ctor_external(&v49, v60.__first_, v60.__begin_);
        operator delete(v22);
      }

      else
      {
        *&v49.__r_.__value_.__l.__data_ = *&v60.__first_;
        v49.__r_.__value_.__r.__words[2] = v60.__end_;
      }

      v23 = (v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v55 : v55.__r_.__value_.__r.__words[0];
      v24 = (v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v55.__r_.__value_.__r.__words[2]) : v55.__r_.__value_.__l.__size_;
      v25 = std::string::starts_with[abi:nn200100](&v49, v23, v24);
      v26 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
      if (v25)
      {
        v27 = (v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v54.__r_.__value_.__r.__words[2]) : v54.__r_.__value_.__l.__size_;
        v28 = (v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v49.__r_.__value_.__r.__words[2]) : v49.__r_.__value_.__l.__size_;
        if (v28 >= v27)
        {
          v29 = (v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v49 : v49.__r_.__value_.__r.__words[0];
          v30 = (v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v54 : v54.__r_.__value_.__r.__words[0];
          v31 = std::string_view::compare[abi:nn200100](v29, v28, v28 - v27, 0xFFFFFFFFFFFFFFFFLL, v30, v27);
          v26 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
          if (!v31)
          {
            break;
          }
        }
      }

      if (v26 < 0)
      {
        goto LABEL_70;
      }

LABEL_71:
      if (SHIBYTE(p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(p.__r_.__value_.__l.__data_);
      }

      std::__fs::filesystem::directory_iterator::__increment(&v51, 0);
      if (!v51.__imp_.__ptr_)
      {
        goto LABEL_104;
      }
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v55.__r_.__value_.__l.__size_;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v49.__r_.__value_.__l.__size_;
    }

    v34 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v54.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&v48, &v49, v32, v33 - (v32 + v34), &v60);
    v35 = *(&v58 + 1);
    if (*(&v58 + 1) >= v59)
    {
      v37 = 0xAAAAAAAAAAAAAAABLL * ((*(&v58 + 1) - v58) >> 3) + 1;
      if (v37 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      if (0x5555555555555556 * ((v59 - v58) >> 3) > v37)
      {
        v37 = 0x5555555555555556 * ((v59 - v58) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3) >= 0x555555555555555)
      {
        v38 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v38 = v37;
      }

      v60.__end_cap_.__value_ = &v58;
      if (v38)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v38);
      }

      v40 = (8 * ((*(&v58 + 1) - v58) >> 3));
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v40, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
      }

      else
      {
        v41 = *&v48.__r_.__value_.__l.__data_;
        *(8 * ((*(&v58 + 1) - v58) >> 3) + 0x10) = *(&v48.__r_.__value_.__l + 2);
        *&v40->__r_.__value_.__l.__data_ = v41;
      }

      v39 = v40 + 1;
      v42 = v40 - (*(&v58 + 1) - v58);
      memcpy(v42, v58, *(&v58 + 1) - v58);
      v43 = v58;
      v44 = v59;
      *&v58 = v42;
      *(&v58 + 1) = v40 + 1;
      v59 = 0;
      v60.__first_ = v43;
      v60.__end_ = v43;
      v60.__end_cap_.__value_ = v44;
      v60.__begin_ = v43;
      std::__split_buffer<std::string>::~__split_buffer(&v60);
    }

    else
    {
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(*(&v58 + 1), v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = *&v48.__r_.__value_.__l.__data_;
        *(*(&v58 + 1) + 16) = *(&v48.__r_.__value_.__l + 2);
        *v35 = v36;
      }

      v39 = (v35 + 24);
    }

    *(&v58 + 1) = v39;
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if ((*(&v49.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_71;
    }

LABEL_70:
    operator delete(v49.__r_.__value_.__l.__data_);
    goto LABEL_71;
  }

LABEL_104:
  if (v51.__imp_.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51.__imp_.__cntrl_);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  *&retstr->var0 = v58;
  retstr->var2 = v59;
  retstr = &v58;
LABEL_109:
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__pn_.__r_.__value_.__l.__data_);
  }

  v60.__first_ = &v58;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v60);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__pn_.__r_.__value_.__l.__data_);
  }

  return result;
}

- ($71865D49803C3560DF570D424868A38C)lexiconInfoForMultilingualDynamic:(SEL)dynamic
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = @"mul";
  if (a4)
  {
    v12[0] = @"mul";
    v12[1] = a4;
    v6 = MEMORY[0x277CBEA60];
    v7 = a4;
    v8 = [v6 arrayWithObjects:v12 count:2];
    v5 = [v8 componentsJoinedByString:@"-"];

    uTF8String = [v7 UTF8String];
    v10 = TILexiconIDForLocaleIdentifier(uTF8String);
  }

  else
  {
    v10 = -2;
  }

  KB::utf8_string(v5, retstr);
  *&retstr->var1.var0 = 0x100000;
  retstr->var1.var2 = 0;
  retstr->var1.var3 = 0;
  retstr->var1.var4 = 0;
  retstr->var1.var5[0] = 0;
  *&retstr->var2.var0 = 0x100000;
  retstr->var2.var2 = 0;
  retstr->var2.var3 = 0;
  retstr->var2.var4 = 0;
  retstr->var2.var5[0] = 0;
  *&retstr->var3.var0 = 0x100000;
  retstr->var3.var2 = 0;
  retstr->var3.var3 = 0;
  retstr->var3.var4 = 0;
  retstr->var3.var5[0] = 0;
  *&retstr->var4.var0 = 0x100000;
  retstr->var4.var2 = 0;
  retstr->var4.var3 = 0;
  retstr->var4.var4 = 0;
  retstr->var4.var5[0] = 0;
  retstr->var5 = v10;
  retstr->var6 = 0;
  retstr->var7 = 1.0;

  return result;
}

- ($71865D49803C3560DF570D424868A38C)lexiconInfoForInputMode:(SEL)mode
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  locale = [v6 locale];
  localeIdentifier = [locale localeIdentifier];

  v9 = TILexiconIDForLocaleIdentifier([localeIdentifier UTF8String]);
  if ([v6 wantsMultilingualUnionOVS])
  {
    wantsMultilingualUnionOVS = [v6 wantsMultilingualUnionOVS];
  }

  else
  {
    wantsMultilingualUnionOVS = 0;
  }

  KB::utf8_string(localeIdentifier, retstr);
  *&retstr->var1.var0 = 0x100000;
  p_var1 = &retstr->var1;
  p_var1->var2 = 0;
  p_var1->var3 = 0;
  p_var1->var4 = 0;
  p_var1->var5[0] = 0;
  *&p_var1[1].var0 = 0x100000;
  v12 = &p_var1[1];
  p_var1[1].var2 = 0;
  p_var1[1].var3 = 0;
  p_var1[1].var4 = 0;
  p_var1[1].var5[0] = 0;
  *&p_var1[2].var0 = 0x100000;
  v13 = &p_var1[2];
  p_var1[2].var2 = 0;
  p_var1[2].var3 = 0;
  p_var1[2].var4 = 0;
  p_var1[2].var5[0] = 0;
  *&p_var1[3].var0 = 0x100000;
  v14 = &p_var1[3];
  p_var1[3].var2 = 0;
  p_var1[3].var3 = 0;
  p_var1[3].var4 = 0;
  p_var1[3].var5[0] = 0;
  *&p_var1[4].var0 = v9;
  LOBYTE(p_var1[4].var2) = wantsMultilingualUnionOVS;
  LODWORD(p_var1[4].var4) = 0;
  v15 = [(TIKeyboardInputManager *)self staticDictionaryPathForInputMode:v6];
  if ([(KB *)v15 length])
  {
    KB::utf8_string(v15, v20);
    KB::String::operator=(p_var1, v20);
    if (v22)
    {
      if (v21 == 1)
      {
        free(v22);
      }
    }
  }

  v16 = [(TIKeyboardInputManager *)self deltaDictionaryPathForInputMode:v6];
  if ([(KB *)v16 length])
  {
    KB::utf8_string(v16, v20);
    KB::String::operator=(v12, v20);
    if (v22)
    {
      if (v21 == 1)
      {
        free(v22);
      }
    }
  }

  v17 = [(TIKeyboardInputManager *)self phraseDictionaryPathForInputMode:v6];
  if ([(KB *)v17 length])
  {
    KB::utf8_string(v17, v20);
    KB::String::operator=(v13, v20);
    if (v22)
    {
      if (v21 == 1)
      {
        free(v22);
      }
    }
  }

  v18 = [(TIKeyboardInputManager *)self dynamicDictionaryPathForInputMode:v6];
  if ([(KB *)v18 length])
  {
    KB::utf8_string(v18, v20);
    KB::String::operator=(v14, v20);
    if (v22)
    {
      if (v21 == 1)
      {
        free(v22);
      }
    }
  }

  return result;
}

- (void)loadDictionaries
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->m_impl)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v3 = TIOSLogFacility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading/reloading dictionaries.", "-[TIKeyboardInputManager loadDictionaries]"];
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
    languageWithRegion = [dictionaryInputMode languageWithRegion];

    m_impl = self->m_impl;
    KB::utf8_string(languageWithRegion, buf);
    TIInputManager::set_locale_identifier(m_impl, buf);
    if (*&buf[8])
    {
      if (buf[6] == 1)
      {
        free(*&buf[8]);
      }
    }

    objc_msgSend_lexiconInformation(self);
    operator new();
  }
}

- ($71865D49803C3560DF570D424868A38C)lexiconInformation
{
  v30[2] = *MEMORY[0x277D85DE8];
  dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
  locale = [dictionaryInputMode locale];
  localeIdentifier = [locale localeIdentifier];

  KB::utf8_string(localeIdentifier, v27);
  pathToStaticDictionary = [(TIKeyboardInputManager *)self pathToStaticDictionary];
  KB::utf8_string(pathToStaticDictionary, v25);

  pathToDeltaStaticDictionary = [(TIKeyboardInputManager *)self pathToDeltaStaticDictionary];
  KB::utf8_string(pathToDeltaStaticDictionary, v23);

  pathToPhraseDictionary = [(TIKeyboardInputManager *)self pathToPhraseDictionary];
  KB::utf8_string(pathToPhraseDictionary, v21);

  pathToDynamicDictionary = [(TIKeyboardInputManager *)self pathToDynamicDictionary];
  KB::utf8_string(pathToDynamicDictionary, v19);

  v12 = v29;
  if (!v29)
  {
    v12 = v30;
  }

  if (v27[0])
  {
    v13 = v12;
  }

  else
  {
    v13 = "";
  }

  v14 = TILexiconIDForLocaleIdentifier(v13);
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  if ([inputMode wantsMultilingualUnionOVS])
  {
    inputMode2 = [(TIKeyboardInputManagerBase *)self inputMode];
    wantsMultilingualUnionOVS = [inputMode2 wantsMultilingualUnionOVS];
  }

  else
  {
    wantsMultilingualUnionOVS = 0;
  }

  KB::String::String(retstr, v27);
  KB::String::String(&retstr->var1, v25);
  KB::String::String(&retstr->var2, v23);
  KB::String::String(&retstr->var3, v21);
  KB::String::String(&retstr->var4, v19);
  retstr->var5 = v14;
  retstr->var6 = wantsMultilingualUnionOVS;
  retstr->var7 = 1.0;
  if (v20 && v19[6] == 1)
  {
    free(v20);
  }

  if (v22 && v21[6] == 1)
  {
    free(v22);
  }

  if (v24 && v23[6] == 1)
  {
    free(v24);
  }

  if (v26 && v25[6] == 1)
  {
    free(v26);
  }

  if (v29 && v28 == 1)
  {
    free(v29);
  }

  return result;
}

- (id)lexiconLocales
{
  v6[1] = *MEMORY[0x277D85DE8];
  dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
  locale = [dictionaryInputMode locale];
  v6[0] = locale;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)initImplementation
{
  result = self->m_impl;
  if (!result)
  {
    keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    config = [(TIKeyboardInputManager *)self config];
    dynamicResourcePath = [config dynamicResourcePath];
    self->m_impl = [keyboardFeatureSpecialization createInputManager:dynamicResourcePath];

    if (self->m_impl)
    {
      config2 = [(TIKeyboardInputManager *)self config];
      usesContinuousPathRetrocorrection = [config2 usesContinuousPathRetrocorrection];

      result = self->m_impl;
      if (usesContinuousPathRetrocorrection)
      {
        v9 = *(result + 28);
        if (v9)
        {
          (*(*v9 + 392))(*(result + 28), 1);
          return self->m_impl;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)externalStringForDictionaryString:(id)string
{
  stringCopy = string;
  if ([(TIKeyboardInputManager *)self dictionaryUsesExternalEncoding])
  {
    v5 = stringCopy;
  }

  else
  {
    v5 = [(TIKeyboardInputManager *)self internalStringToExternal:stringCopy];
  }

  v6 = v5;

  return v6;
}

- (id)dictionaryStringForExternalString:(id)string
{
  v4 = [string stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  if ([(TIKeyboardInputManager *)self dictionaryUsesExternalEncoding])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(TIKeyboardInputManager *)self externalStringToInternal:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)dictionaryUsesExternalEncoding
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  dictionaryUsesExternalEncoding = [keyboardFeatureSpecialization dictionaryUsesExternalEncoding];

  return dictionaryUsesExternalEncoding;
}

- (unsigned)externalIndexToInternal:(unsigned int)internal
{
  internalCopy = internal;
  m_impl = self->m_impl;
  if (!m_impl)
  {
    return internalCopy;
  }

  m_composedText = self->m_composedText;
  if (m_composedText)
  {
    if ([(NSMutableString *)m_composedText length]<= internal)
    {
      v7 = [(TIKeyboardInputManager *)self externalStringToInternal:self->m_composedText];
      internalCopy = [v7 length];
    }

    else
    {
      v7 = [(NSMutableString *)self->m_composedText substringToIndex:internalCopy];
      v8 = [(TIKeyboardInputManager *)self externalStringToInternal:v7];
      internalCopy = [v8 length];
    }

    m_impl = self->m_impl;
    if (!m_impl)
    {
      return internalCopy;
    }
  }

  v9 = -858993459 * ((m_impl[2] - m_impl[1]) >> 3);
  if (internalCopy >= v9)
  {
    return v9;
  }

  else
  {
    return internalCopy;
  }
}

- (unsigned)internalIndexToExternal:(unsigned int)external
{
  externalCopy = external;
  v12 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (m_impl)
  {
    if (self->m_composedText)
    {
      TIInputManager::input_substring((m_impl + 8), 0, external, v10);
      v7 = KB::ns_string(v10, v6);
      v8 = [(TIKeyboardInputManager *)self internalStringToExternal:v7];
      externalCopy = [v8 length];

      if (v11)
      {
        if (v10[6] == 1)
        {
          free(v11);
        }
      }
    }
  }

  return externalCopy;
}

- (id)internalStringToExternal:(id)external
{
  externalCopy = external;
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  v6 = [keyboardFeatureSpecialization internalStringToExternal:externalCopy];

  return v6;
}

- (id)externalStringToInternal:(id)internal
{
  internalCopy = internal;
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  v6 = [keyboardFeatureSpecialization externalStringToInternal:internalCopy];

  return v6;
}

- (void)updateComposedText
{
  v9 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (m_impl && self->m_composedText)
  {
    TIInputManager::input_substring((m_impl + 1), 0, -858993459 * ((m_impl[2] - m_impl[1]) >> 3), v7);
    v5 = KB::ns_string(v7, v4);
    if (v8)
    {
      if (v7[6] == 1)
      {
        free(v8);
      }
    }

    v6 = [(TIKeyboardInputManager *)self internalStringToExternal:v5];
    [(NSMutableString *)self->m_composedText setString:v6];
  }
}

- (BOOL)deletesComposedTextByComposedCharacterSequence
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  deletesByComposedCharacterSequence = [keyboardFeatureSpecialization deletesByComposedCharacterSequence];

  return deletesByComposedCharacterSequence;
}

- (BOOL)stringEndsWord:(id)word
{
  wordCopy = word;
  currentState = [(TIKeyboardInputManager *)self currentState];
  v6 = [currentState stringEndsWord:wordCopy];

  return v6;
}

- (id)deletedSuffixOfInputContext:(id)context whenDeletingFromInputString:(id)string withInputIndex:(unint64_t)index deletionCount:(unint64_t)count
{
  contextCopy = context;
  stringCopy = string;
  if (count)
  {
    v11 = [contextCopy stringByAppendingString:stringCopy];
    v12 = [contextCopy length] + index;
    if (v12)
    {
      v13 = 0;
      while (1)
      {
        v14 = [v11 _rangeOfBackwardDeletionClusterAtIndex:v12 - 1];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v15 = v14;
        ++v13;
        if (v14)
        {
          v12 = v14;
          if (v13 < count)
          {
            continue;
          }
        }

        goto LABEL_11;
      }

      v15 = v12;
    }

    else
    {
      v15 = 0;
      v13 = 0;
    }

LABEL_11:
    if (v13 == count && v15 < [contextCopy length])
    {
      v16 = [contextCopy substringFromIndex:v15];
    }

    else
    {
      v16 = &stru_283FDFAF8;
    }
  }

  else
  {
    v16 = &stru_283FDFAF8;
  }

  return v16;
}

- (id)suffixOfDesiredString:(id)string toAppendToInputString:(id)inputString withInputIndex:(unint64_t)index afterDeletionCount:(unint64_t *)count
{
  stringCopy = string;
  inputStringCopy = inputString;
  v11 = inputStringCopy;
  if (count)
  {
    *count = 0;
  }

  if ([inputStringCopy length] < index)
  {
    index = [v11 length];
  }

  if (index)
  {
    do
    {
      v12 = [v11 substringToIndex:index];
      v13 = [stringCopy hasPrefix:v12];

      if (v13)
      {
        break;
      }

      v14 = [v11 _rangeOfBackwardDeletionClusterAtIndex:index - 1];
      index = v14;
      if (count)
      {
        ++*count;
      }
    }

    while (v14);
  }

  v15 = [stringCopy substringFromIndex:index];

  return v15;
}

- (BOOL)shouldInsertSpaceBeforeInput:(id)input
{
  inputCopy = input;
  if (![(TIKeyboardInputManager *)self usesCandidateSelection])
  {
    config = [(TIKeyboardInputManager *)self config];
    insertsSpaceAfterPredictiveInput = [config insertsSpaceAfterPredictiveInput];

    if ((insertsSpaceAfterPredictiveInput & 1) == 0)
    {
      lastAcceptedText = [(TIKeyboardInputManager *)self lastAcceptedText];
      v9 = lastAcceptedText;
      if (!lastAcceptedText || ![lastAcceptedText isContinuousPathConversion] || !objc_msgSend(v9, "shouldAccept"))
      {
        goto LABEL_16;
      }

      wordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
      if ([wordSeparator length])
      {
        candidate = [v9 candidate];
        wordSeparator2 = [(TIKeyboardInputManager *)self wordSeparator];
        v13 = [candidate hasSuffix:wordSeparator2];

        if (v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      if ([inputCopy length])
      {
        wordSeparator3 = [(TIKeyboardInputManager *)self wordSeparator];
        if (objc_msgSend_isEqualToString_(inputCopy))
        {
LABEL_15:

LABEL_16:
          v7 = 0;
LABEL_17:

          goto LABEL_18;
        }

        pathedWordSeparator = [(TIKeyboardInputManager *)self pathedWordSeparator];
        if (objc_msgSend_isEqualToString_(inputCopy))
        {

          goto LABEL_15;
        }

        isEqualToString = objc_msgSend_isEqualToString_(inputCopy);

        if (isEqualToString)
        {
          goto LABEL_16;
        }

        terminatorsDeletingAutospace = [(TIKeyboardInputManager *)self terminatorsDeletingAutospace];
        characterSet = [terminatorsDeletingAutospace characterSet];
        v20 = [characterSet characterIsMember:{objc_msgSend(inputCopy, "characterAtIndex:", 0)}];

        if (v20)
        {
          goto LABEL_16;
        }

        if ([v9 isContinuousPathConversion])
        {
          if ([v9 shouldAccept])
          {
            spaceDeletingCharacters = [(TIKeyboardInputManager *)self spaceDeletingCharacters];
            characterSet2 = [spaceDeletingCharacters characterSet];
            v23 = [characterSet2 characterIsMember:{objc_msgSend(inputCopy, "characterAtIndex:", 0)}];

            if (v23)
            {
              goto LABEL_16;
            }
          }
        }

        keyboardState = [(TIKeyboardInputManager *)self keyboardState];
        documentState = [keyboardState documentState];
        contextBeforeInput = [documentState contextBeforeInput];

        v27 = -[TIKeyboardInputManager rangeOfUnclosedQuoteMatchingQuote:inString:range:](self, "rangeOfUnclosedQuoteMatchingQuote:inString:range:", inputCopy, contextBeforeInput, 0, [contextBeforeInput length]);
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }
      }

      v7 = 1;
      goto LABEL_17;
    }
  }

  v7 = 0;
LABEL_18:

  return v7;
}

- (void)textAccepted:(id)accepted fromPredictiveInputBar:(BOOL)bar withInput:(id)input
{
  barCopy = bar;
  v161 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  inputCopy = input;
  v148 = barCopy;
  if (barCopy)
  {
    if ([acceptedCopy isResponseKitCandidate])
    {
      v10 = +[TIProactiveQuickTypeManager sharedInstance];
      usePQT2Flow = [v10 usePQT2Flow];

      if (usePQT2Flow)
      {
        v12 = +[TIProactiveQuickTypeManager sharedInstance];
        candidate = [acceptedCopy candidate];
        [v12 provideFeedbackForString:candidate type:1 style:1];
      }
    }
  }

  if (!acceptedCopy || !self->m_impl)
  {
    goto LABEL_99;
  }

  if (([acceptedCopy isAutocorrection] & 1) == 0)
  {
    lastAcceptedText = [(TIKeyboardInputManager *)self lastAcceptedText];
    if (lastAcceptedText)
    {
      v15 = lastAcceptedText;
      lastAcceptedText2 = [(TIKeyboardInputManager *)self lastAcceptedText];
      if ([lastAcceptedText2 isContinuousPathConversion])
      {
        lastAcceptedText3 = [(TIKeyboardInputManager *)self lastAcceptedText];
        candidate2 = [lastAcceptedText3 candidate];
        candidate3 = [acceptedCopy candidate];
        isEqualToString = objc_msgSend_isEqualToString_(candidate2);

        if (isEqualToString)
        {
          goto LABEL_99;
        }
      }

      else
      {
      }
    }
  }

  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];

  if (revisionHistory)
  {
    if ([acceptedCopy isAutocorrection])
    {
      [(TIKeyboardInputManager *)self recordAcceptedAutocorrection:acceptedCopy fromPredictiveInputBar:barCopy];
    }

    else
    {
      [(TIKeyboardInputManager *)self recordRejectedAutocorrectionForAcceptedText:acceptedCopy fromPredictiveInputBar:barCopy];
      if ([(TIKeyboardInputManager *)self rejectionsDatabase])
      {
        if (barCopy)
        {
          candidate4 = [acceptedCopy candidate];
          input = [acceptedCopy input];
          v56 = objc_msgSend_isEqualToString_(candidate4);

          if (v56)
          {
            autocorrectionForCurrentStem = [(TIKeyboardInputManager *)self autocorrectionForCurrentStem];
            input2 = [acceptedCopy input];
            v59 = [autocorrectionForCurrentStem objectForKey:input2];

            revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
            input3 = [acceptedCopy input];
            [revisionHistory2 rejectCandidate:v59 forInput:input3 hint:3];
          }
        }
      }
    }

    if (([inputCopy isSynthesizedByAcceptingCandidate] & 1) != 0 || !objc_msgSend(acceptedCopy, "isAutocorrection"))
    {
      v29 = 0;
    }

    else
    {
      autocorrectionListsSuggestedForCurrentInput = [(TIKeyboardInputManager *)self autocorrectionListsSuggestedForCurrentInput];
      input4 = [acceptedCopy input];
      v24 = [autocorrectionListsSuggestedForCurrentInput objectForKeyedSubscript:input4];
      autocorrection = [v24 autocorrection];
      candidate5 = [autocorrection candidate];
      [acceptedCopy candidate];
      v28 = v27 = inputCopy;
      v29 = objc_msgSend_isEqualToString_(candidate5);

      inputCopy = v27;
    }

    revisionHistory3 = [(TIKeyboardInputManager *)self revisionHistory];
    [revisionHistory3 acceptText:acceptedCopy isAutocorrection:v29 isAutoshifted:TIInputManager::is_autoshift(self->m_impl)];
  }

  rejectionsDatabase = [(TIKeyboardInputManager *)self rejectionsDatabase];
  if (rejectionsDatabase)
  {
    v32 = rejectionsDatabase;
    if ([inputCopy isSynthesizedByAcceptingCandidate])
    {
      input5 = [acceptedCopy input];
      candidate6 = [acceptedCopy candidate];
      v35 = objc_msgSend_isEqualToString_(input5);

      if ((v35 & 1) == 0)
      {
        input6 = [acceptedCopy input];
        uTF8String = [input6 UTF8String];
        candidate7 = [acceptedCopy candidate];
        TI::RejectionsDatabase::insert_acceptance(*v32, uTF8String, [candidate7 UTF8String]);
      }
    }
  }

  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  v40 = acceptedCopy;
  v41 = inputMode;
  v42 = +[_TIStatisticsProactiveTracker sharedInstance];
  lastAutocorrectionList = [v42 lastAutocorrectionList];
  v44 = _TIQueueBackground();
  v45 = v42;
  TIDispatchAsync();

  v147 = inputCopy;
  if (lastAutocorrectionList)
  {
    v145 = v41;
    corrections = [lastAutocorrectionList corrections];
    autocorrection2 = [corrections autocorrection];
    if (autocorrection2)
    {
      v48 = autocorrection2;
      corrections2 = [lastAutocorrectionList corrections];
      autocorrection3 = [corrections2 autocorrection];
      usageTrackingMask = [autocorrection3 usageTrackingMask];

      if ((usageTrackingMask & 0x2000) != 0)
      {
        corrections3 = [lastAutocorrectionList corrections];
        autocorrection4 = [corrections3 autocorrection];
LABEL_46:
        v68 = autocorrection4;

        if (!v68)
        {
          v67 = 0;
          goto LABEL_50;
        }

        v69 = _TIQueueBackground();
        v153 = v45;
        v67 = v68;
        TIDispatchAsync();

        corrections3 = v153;
LABEL_48:

LABEL_50:
        if (([v40 usageTrackingMask] & 0x2000) != 0)
        {
          v70 = _TIQueueBackground();
          v151 = v45;
          v152 = v40;
          TIDispatchAsync();
        }

        responseKitEntryOffered = [v45 responseKitEntryOffered];

        if (responseKitEntryOffered)
        {
          v144 = v67;
          responseKitEntryOffered2 = [v45 responseKitEntryOffered];
          [v45 setResponseKitEntryOffered:0];
          v73 = _TIQueueBackground();
          v74 = v145;
          v75 = responseKitEntryOffered2;
          TIDispatchAsync();

          responseKitCategory = [v40 responseKitCategory];

          if (responseKitCategory)
          {
            v77 = _TIQueueBackground();
            v149 = v74;
            v150 = v40;
            TIDispatchAsync();
          }

          v67 = v144;
        }

        v41 = v145;
        inputCopy = v147;
        goto LABEL_57;
      }
    }

    else
    {
    }

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    corrections3 = [lastAutocorrectionList predictions];
    v62 = [corrections3 countByEnumeratingWithState:&v157 objects:v154 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v158;
      while (2)
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v158 != v64)
          {
            objc_enumerationMutation(corrections3);
          }

          v66 = *(*(&v157 + 1) + 8 * i);
          if (([v66 usageTrackingMask] & 0x2000) != 0 && (objc_msgSend(v66, "sourceMask") & 0x8000) == 0 && (objc_msgSend(v66, "sourceMask") & 0x20000) == 0)
          {
            autocorrection4 = v66;
            goto LABEL_46;
          }
        }

        v63 = [corrections3 countByEnumeratingWithState:&v157 objects:v154 count:16];
        if (v63)
        {
          continue;
        }

        break;
      }
    }

    v67 = 0;
    goto LABEL_48;
  }

LABEL_57:

  if (![(TIKeyboardInputManager *)self usesCandidateSelection])
  {
    shiftContext = [(TIKeyboardInputManager *)self shiftContext];
    inputStem = [(TIKeyboardInputManager *)self inputStem];
    m_impl = self->m_impl;
    candidate8 = [v40 candidate];
    v81 = [(TIKeyboardInputManager *)self externalStringToInternal:candidate8];
    KB::utf8_string(v81, v154);
    input7 = [v40 input];
    v83 = [(TIKeyboardInputManager *)self externalStringToInternal:input7];
    KB::utf8_string(v83, &v157);
    TIInputManager::text_accepted(m_impl, v154, &v157, [v40 wordOriginFeedbackID], shiftContext, objc_msgSend(v40, "isContinuousPathConversion"));
    if (*(&v157 + 1) && BYTE6(v157) == 1)
    {
      free(*(&v157 + 1));
    }

    if (v156 && v155 == 1)
    {
      free(v156);
    }

    [(TIKeyboardInputManager *)self updateComposedText];
    inputCopy = v147;
    if (![(TIKeyboardInputManager *)self shouldAllowCorrectionOfAcceptedCandidate:v40])
    {
      v84 = self->m_impl;
      v85 = v84[24];
      v86 = v84[54];
      if (v86 <= v85)
      {
        v86 = v84[24];
      }

      if (v84[55] < v85)
      {
        v85 = v84[55];
      }

      v84[54] = v86;
      v84[55] = v85;
    }

    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState documentState];
    input8 = [v40 input];
    candidate9 = [v40 candidate];
    v91 = [documentState documentStateAfterReplacingText:input8 withText:candidate9];
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    [keyboardState2 setDocumentState:v91];

    if ([v40 isContinuousPathConversion])
    {
      TIInputManager::clear_continuous_path(self->m_impl);
      config = [(TIKeyboardInputManager *)self config];
      usesContinuousPathRetrocorrection = [config usesContinuousPathRetrocorrection];

      if ((usesContinuousPathRetrocorrection & 1) != 0 && !v148)
      {
        [(TIKeyboardInputManager *)self trimInputAfterLathamConversion];
      }

      else
      {
        [(TIKeyboardInputManager *)self dropInput];
      }
    }

    else
    {
      [(TIKeyboardInputManager *)self updateComposedText];
      [(TIKeyboardInputManager *)self updateInputContext];
    }

    if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
    {
      v95 = [v40 candidateByReplacingWithSourceMask:{-[TIKeyboardInputManager adjustedSourceMaskFromCandidate:](self, "adjustedSourceMaskFromCandidate:", v40)}];
      typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
      keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
      documentState2 = [keyboardState3 documentState];
      inputContext = [(TIKeyboardInputManager *)self inputContext];
      keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
      LOBYTE(v143) = 0;
      [typingSessionMonitor candidateAccepted:v95 withInput:v147 documentState:documentState2 inputContext:inputContext inputStem:inputStem predictionBarHit:v148 useCandidateSelection:v143 candidateIndex:0x7FFFFFFFFFFFFFFFLL keyboardState:keyboardState4];
    }

    hitTestCorrectedInputMatchingCandidate = [(TIKeyboardInputManager *)self hitTestCorrectedInputMatchingCandidate];

    if (hitTestCorrectedInputMatchingCandidate)
    {
      if (([v40 isAutocorrection] & 1) == 0)
      {
        input9 = [v40 input];
        hitTestCorrectedInputMatchingCandidate2 = [(TIKeyboardInputManager *)self hitTestCorrectedInputMatchingCandidate];
        input10 = [hitTestCorrectedInputMatchingCandidate2 input];
        v105 = objc_msgSend_isEqualToString_(input9);

        if (v105)
        {
          input11 = [v40 input];
          v107 = [(TIKeyboardInputManager *)self findTokenIDForWord:input11 contextTokens:0 tokenLookupMode:0];

          if (HIDWORD(*&v107))
          {
            v108 = *MEMORY[0x277D6FAC0];
            hitTestCorrectedInputMatchingCandidate3 = [(TIKeyboardInputManager *)self hitTestCorrectedInputMatchingCandidate];
            -[TIKeyboardInputManager incrementUsageTrackingKeyForAutocorrectionStatistic:autocorrectionTypes:](self, "incrementUsageTrackingKeyForAutocorrectionStatistic:autocorrectionTypes:", v108, [hitTestCorrectedInputMatchingCandidate3 usageTrackingMask]);
          }
        }
      }

      [(TIKeyboardInputManager *)self setHitTestCorrectedInputMatchingCandidate:0];
    }

    lastAcceptedText4 = [(TIKeyboardInputManager *)self lastAcceptedText];

    if (lastAcceptedText4)
    {
      [(TIKeyboardInputManager *)self setRejectedConversionsForCurrentContinuousPath:0];
    }

    v111 = v40;
    v112 = v111;
    if ([v111 isContinuousPathConversion])
    {
      candidate10 = [v111 candidate];
      wordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
      v115 = [candidate10 hasPrefix:wordSeparator];

      v112 = v111;
      if (v115)
      {
        candidate11 = [v111 candidate];
        wordSeparator2 = [(TIKeyboardInputManager *)self wordSeparator];
        v118 = [candidate11 substringFromIndex:{objc_msgSend(wordSeparator2, "length")}];
        v112 = [v111 candidateByReplacingWithCandidate:v118];
      }
    }

    [(TIKeyboardInputManager *)self setLastAcceptedText:v112];
    [(TIKeyboardInputManager *)self refreshInputManagerState];
    if ([v112 shouldInsertSpaceAfterSelection])
    {
      wordSeparator3 = [(TIKeyboardInputManager *)self wordSeparator];
      v120 = [wordSeparator3 length];

      if (v120)
      {
        keyboardState5 = [(TIKeyboardInputManager *)self keyboardState];
        documentState3 = [keyboardState5 documentState];
        wordSeparator4 = [(TIKeyboardInputManager *)self wordSeparator];
        v124 = [documentState3 documentStateAfterInsertingTextAfterSelection:wordSeparator4];

        keyboardState6 = [(TIKeyboardInputManager *)self keyboardState];
        v126 = [keyboardState6 copy];

        [v126 setDocumentState:v124];
        [(TIKeyboardInputManager *)self syncToKeyboardState:v126];
      }
    }

    if (![v111 isContinuousPathConversion])
    {
      goto LABEL_98;
    }

    candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
    asynchronous = [candidateHandlerForOpenRequest asynchronous];

    if (!asynchronous)
    {
      goto LABEL_98;
    }

    v129 = [(TIKeyboardInputManager *)self predictionCandidates:4 predictionType:3];
    proactiveTriggers = [v129 proactiveTriggers];
    if (proactiveTriggers)
    {
      v131 = proactiveTriggers;
      lastContinuousPathAutocorrection = [(TIKeyboardInputManager *)self lastContinuousPathAutocorrection];
      emojiList = [lastContinuousPathAutocorrection emojiList];
      if ([emojiList count])
      {
      }

      else
      {
        proactiveSuggestionsGenerationBlock = [(TIKeyboardInputManager *)self proactiveSuggestionsGenerationBlock];

        if (proactiveSuggestionsGenerationBlock)
        {
          v137 = MEMORY[0x277D6F328];
          lastContinuousPathAutocorrection2 = [(TIKeyboardInputManager *)self lastContinuousPathAutocorrection];
          corrections4 = [lastContinuousPathAutocorrection2 corrections];
          proactiveTriggers2 = [v129 proactiveTriggers];
          v141 = [v137 listWithCorrections:corrections4 predictions:0 emojiList:0 proactiveTriggers:proactiveTriggers2];

          proactiveSuggestionsGenerationBlock2 = [(TIKeyboardInputManager *)self proactiveSuggestionsGenerationBlock];
          (proactiveSuggestionsGenerationBlock2)[2](proactiveSuggestionsGenerationBlock2, v141);

          goto LABEL_97;
        }
      }
    }

    candidateHandlerForOpenRequest2 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
    [candidateHandlerForOpenRequest2 close];

    [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:0];
LABEL_97:

LABEL_98:
    autocorrectionForCurrentStem2 = [(TIKeyboardInputManager *)self autocorrectionForCurrentStem];
    [autocorrectionForCurrentStem2 removeAllObjects];

    [(TIKeyboardInputManager *)self setDeleteKeyCount:0];
  }

LABEL_99:
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  directionCopy = direction;
  phraseBoundary = [(TIKeyboardInputManager *)self phraseBoundary];
  if (phraseBoundary > [(TIKeyboardInputManager *)self inputCount]|| ![(TIKeyboardInputManager *)self supportsSetPhraseBoundary])
  {
    return;
  }

  if (directionCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  if (directionCopy)
  {
    inputCount = [(TIKeyboardInputManager *)self inputCount];
    if (granularity < 2)
    {
      v10 = inputCount;
      goto LABEL_10;
    }

    inputCount2 = [(TIKeyboardInputManager *)self inputCount];
  }

  else
  {
    v10 = 0;
    inputCount2 = 0;
    if (granularity <= 1)
    {
LABEL_10:
      if (phraseBoundary != v10)
      {
        v12 = v8 + phraseBoundary;
        do
        {
          [(TIKeyboardInputManager *)self setPhraseBoundary:v12];
          if ([(TIKeyboardInputManager *)self phraseBoundary]!= phraseBoundary)
          {
            break;
          }

          v13 = v10 == v12;
          v12 += v8;
        }

        while (!v13);
      }

      return;
    }
  }

  [(TIKeyboardInputManager *)self setPhraseBoundary:inputCount2];
}

- (_NSRange)smartSelectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options
{
  options = [(TISmartSelector *)self->_smartSelector selectionRangeForTextInDocument:document inRange:range.location language:range.length tokenizedRanges:language options:ranges, options];
  result.length = v8;
  result.location = options;
  return result;
}

- (void)skipHitTestForTouchEvent:(id)event keyboardState:(id)state
{
  eventCopy = event;
  keyLayout = [state keyLayout];
  [(TIKeyboardInputManager *)self setKeyLayout:keyLayout];

  [(TIKeyboardInputManager *)self addTouch:eventCopy shouldHitTest:0];
}

- (int64_t)performHitTestForTouchEvent:(id)event keyboardState:(id)state
{
  eventCopy = event;
  keyLayout = [state keyLayout];
  [(TIKeyboardInputManager *)self setKeyLayout:keyLayout];

  v8 = [(TIKeyboardInputManager *)self addTouch:eventCopy shouldHitTest:1];
  return v8;
}

- (void)setKeyLayout:(id)layout
{
  v19 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if (([(TIKeyboardLayout *)self->_keyLayout isEqual:layoutCopy]& 1) == 0)
  {
    [(TIKeyboardInputManager *)self keyLayoutWillChangeTo:layoutCopy from:self->_keyLayout];
    objc_storeStrong(&self->_keyLayout, layout);
    m_impl = self->m_impl;
    if (m_impl)
    {
      TIInputManager::clear_key_areas(m_impl);
      keyLayout = self->_keyLayout;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __39__TIKeyboardInputManager_setKeyLayout___block_invoke;
      v16[3] = &unk_2787314A0;
      v16[4] = self;
      [(TIKeyboardLayout *)keyLayout enumerateKeysUsingBlock:v16];
      [(TIKeyboardInputManager *)self keyLayoutDidChangeTo:self->_keyLayout];
      v8 = self->m_impl;
      usesTwoHands = [(TIKeyboardLayout *)self->_keyLayout usesTwoHands];
      v8[320] = usesTwoHands;
      v10 = *(v8 + 45);
      if (v10)
      {
        *(v10 + 112) = usesTwoHands;
      }

      currentInputModeIdentifier = [(TIKeyboardInputManager *)self currentInputModeIdentifier];
      v12 = TIInputModeGetSWLayout();

      v13 = self->m_impl;
      KB::utf8_string(v12, v17);
      TIInputManager::set_layout_name(v13, v17);
      if (v18 && v17[6] == 1)
      {
        free(v18);
      }

      TIInputManager::commit_key_layout(self->m_impl);
    }

    if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
    {
      typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
      keyboardState = [(TIKeyboardInputManager *)self keyboardState];
      [typingSessionMonitor layoutDidChange:layoutCopy keyboardState:keyboardState];
    }
  }
}

void __39__TIKeyboardInputManager_setKeyLayout___block_invoke(uint64_t a1, const char *a2, __int16 a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v24[2] = *MEMORY[0x277D85DE8];
  KB::String::String(v20, a2);
  v13 = v21;
  if (!v21)
  {
    KB::String::compute_length(v20);
    v13 = v21;
  }

  if (v13 == 1)
  {
    v14 = v23;
    if (!v23)
    {
      v14 = v24;
    }

    v17 = v14;
    LODWORD(v18) = 0;
    HIDWORD(v18) = v20[0];
    v19 = 0;
    KB::String::iterator::initialize(&v17);
    v15 = v19;
    v16 = [*(a1 + 32) mapKeyboardLayoutKey:v19];
    if (v16 != v15)
    {
      KB::String::String(&v17, v16);
      KB::String::operator=(v20, &v17);
      if (v18)
      {
        if (BYTE6(v17) == 1)
        {
          free(v18);
        }
      }
    }
  }

  v25.origin.x = a4;
  v25.origin.y = a5;
  v25.size.width = a6;
  v25.size.height = a7;
  TIInputManager::register_key_area(*(*(a1 + 32) + 40), v20, v25, a3);
  if (v23)
  {
    if (v22 == 1)
    {
      free(v23);
    }
  }
}

- (id)generateReplacementsForString:(id)string keyLayout:(id)layout
{
  stringCopy = string;
  [(TIKeyboardInputManager *)self setKeyLayout:layout];
  v7 = [(TIKeyboardInputManager *)self candidatesForString:stringCopy];

  return v7;
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  candidateCopy = candidate;
  [(TIKeyboardInputManager *)self setKeyboardState:state];
  v7 = [(TIKeyboardInputManager *)self didAcceptCandidate:candidateCopy];

  v8 = objc_alloc_init(MEMORY[0x277D6F3E8]);
  remainingInput = [(TIKeyboardInputManager *)self remainingInput];
  [v8 setString:remainingInput];

  [(TIKeyboardInputManager *)self clearInput];
  v10 = objc_msgSend_string(v8);
  v11 = [v10 length];

  if (v11)
  {
    v12 = [TIKeyboardInputManagerKeyboardContext alloc];
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    v14 = [(TIKeyboardInputManagerKeyboardContext *)v12 initWithKeyboardState:keyboardState];

    [(TIKeyboardInputManager *)self addInput:v8 withContext:v14];
    output = [(TIKeyboardInputManagerKeyboardContext *)v14 output];
    insertionText = [output insertionText];

    if (insertionText)
    {
      output2 = [(TIKeyboardInputManagerKeyboardContext *)v14 output];
      insertionText2 = [output2 insertionText];
      v19 = [v7 stringByAppendingString:insertionText2];
      v20 = v19;
      if (v19)
      {
        insertionText3 = v19;
      }

      else
      {
        output3 = [(TIKeyboardInputManagerKeyboardContext *)v14 output];
        insertionText3 = [output3 insertionText];

        v7 = output3;
      }

      v7 = insertionText3;
    }
  }

  self->super._hasHandledInput = 1;
  [(TIKeyboardInputManager *)self setLastAcceptedText:0];

  return v7;
}

- (void)changingContextWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
  {
    typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
    [typingSessionMonitor changingContextWithTrigger:triggerCopy];
  }
}

- (void)acceptingCandidateWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
  {
    typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
    [typingSessionMonitor acceptingCandidateWithTrigger:triggerCopy];
  }
}

- (void)candidatesOfferedFeedback:(id)feedback keyboardState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  stateCopy = state;
  v17 = feedbackCopy;
  v8 = +[_TIStatisticsProactiveTracker sharedInstance];
  [v8 setLastAutocorrectionList:v17];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  predictions = [v17 predictions];
  v10 = [predictions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(predictions);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        responseKitCategory = [v14 responseKitCategory];

        if (responseKitCategory)
        {
          [v8 setResponseKitEntryOffered:v14];
          goto LABEL_11;
        }
      }

      v11 = [predictions countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
  {
    typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
    [typingSessionMonitor candidatesOffered:v17 keyboardState:stateCopy];
  }
}

- (void)finishGeneratingCandidates
{
  candidateResultSet = [(TIKeyboardInputManager *)self candidateResultSet];
  if (([candidateResultSet isDummySet] & 1) == 0)
  {
    v3 = candidateResultSet;
    if (candidateResultSet)
    {
      usesCandidateSelection = [(TIKeyboardInputManager *)self usesCandidateSelection];
      v3 = candidateResultSet;
      if (usesCandidateSelection)
      {
        [(TIKeyboardInputManager *)self setMarkedText];
        v3 = candidateResultSet;
      }
    }

    [(TIKeyboardInputManager *)self closeCandidateGenerationContextWithResults:v3];
  }
}

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler
{
  length = range.length;
  location = range.location;
  stateCopy = state;
  handlerCopy = handler;
  [(TIKeyboardInputManager *)self setCandidateRange:location, length];
  [(TIKeyboardInputManager *)self openCandidateGenerationContextWithCandidateHandler:handlerCopy];

  [(TIKeyboardInputManager *)self setKeyboardState:stateCopy];
  [(TIKeyboardInputManager *)self setPhraseBoundaryIfNecessary];
  if ((*(self->m_impl + 108) & 0x80000000) != 0)
  {
    inputForMarkedText = [stateCopy inputForMarkedText];
    v12 = [inputForMarkedText length];

    if (!v12)
    {
      if (([stateCopy needOneTimeCodeAutofill] & 1) != 0 || objc_msgSend(stateCopy, "autofillMode") == 3)
      {
        v13 = [(TIKeyboardInputManager *)self generateOneTimeCodeCandidatesWithKeyboardState:stateCopy];
        if ([v13 count])
        {
LABEL_8:
          v14 = [MEMORY[0x277D6F3D0] setWithCandidates:v13];
          [(TIKeyboardInputManager *)self closeCandidateGenerationContextWithResults:v14];

          goto LABEL_4;
        }
      }

      if ([stateCopy needCellularAutofill] && objc_msgSend(stateCopy, "autofillMode") == 8)
      {
        v13 = [(TIKeyboardInputManager *)self generateCellularCandidatesWithKeyboardState:stateCopy];
        if ([v13 count])
        {
          goto LABEL_8;
        }
      }

      if (([stateCopy needAutofill] & 1) != 0 || objc_msgSend(stateCopy, "autofillMode") == 1 || objc_msgSend(stateCopy, "autofillMode") == 2 || objc_msgSend(stateCopy, "autofillMode") == 7)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __94__TIKeyboardInputManager_generateCandidatesWithKeyboardState_candidateRange_candidateHandler___block_invoke;
        v15[3] = &unk_2787320D0;
        v15[4] = self;
        [(TIKeyboardInputManager *)self generateAutofillFormWithKeyboardState:stateCopy completionHandler:v15];
        goto LABEL_4;
      }
    }
  }

  [(TIKeyboardInputManager *)self finishGeneratingCandidates];
LABEL_4:
}

void __94__TIKeyboardInputManager_generateCandidatesWithKeyboardState_candidateRange_candidateHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = [MEMORY[0x277D6F3D0] setWithCandidates:v4];
    [*(a1 + 32) closeCandidateGenerationContextWithResults:v3];
  }

  else
  {
    [*(a1 + 32) finishGeneratingCandidates];
  }
}

- (void)finishGeneratingResponseKitProactiveSuggestions:(id)suggestions candidateRange:(_NSRange)range completion:(id)completion
{
  length = range.length;
  v83 = range.location;
  v127[1] = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  completionCopy = completion;
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy__11451;
  v123 = __Block_byref_object_dispose__11452;
  v10 = suggestionsCopy;
  v124 = v10;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = __Block_byref_object_copy__11451;
  v117 = __Block_byref_object_dispose__11452;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  autofillContext = [keyboardState autofillContext];
  v118 = [autofillContext objectForKey:*MEMORY[0x277D6F9B0]];

  if (!v114[5])
  {
    v14 = [TIXPCUtils obtainApplicationIdentifierFromConnection:currentConnection];
    v15 = v114[5];
    v114[5] = v14;
  }

  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__11451;
  v111 = __Block_byref_object_dispose__11452;
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  autofillContext2 = [keyboardState2 autofillContext];
  v112 = [autofillContext2 objectForKey:*MEMORY[0x277D6F9C0]];

  if (!v108[5])
  {
    v18 = [TIXPCUtils obtainBundleIdentifierFromConnection:currentConnection];
    v19 = v108[5];
    v108[5] = v18;
  }

  candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
  asynchronous = [candidateHandlerForOpenRequest asynchronous];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke;
  aBlock[3] = &unk_278731388;
  aBlock[4] = self;
  v104 = &v119;
  v22 = completionCopy;
  v103 = v22;
  objc_copyWeak(&v105, &location);
  v23 = _Block_copy(aBlock);
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_2;
  v99[3] = &unk_2787313D8;
  v99[4] = self;
  v24 = v10;
  v100 = v24;
  v82 = v23;
  v101 = v82;
  v25 = _Block_copy(v99);
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_4;
  v94[3] = &unk_278731450;
  v94[4] = self;
  objc_copyWeak(&v98, &location);
  v96 = &v113;
  v97 = &v107;
  v81 = v25;
  v95 = v81;
  v26 = _Block_copy(v94);
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_7;
  v89[3] = &unk_278731478;
  v91 = &v119;
  objc_copyWeak(&v92, &location);
  v79 = asynchronous;
  v93 = asynchronous;
  v80 = v26;
  v90 = v80;
  [(TIKeyboardInputManager *)self setProactiveSuggestionsGenerationBlock:v89];
  [(TIKeyboardInputManager *)self setLastNumCandidatesRequest:v83 + length];
  v84 = +[TIProactiveQuickTypeManager sharedInstance];
  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState3 documentState];
  if ([documentState documentIsEmpty])
  {
    keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
    responseContext = [keyboardState4 responseContext];
    v77 = length;
    if (responseContext)
    {
      v31 = [v84 usePQT2Flow] ^ 1;
      v32 = currentConnection;
    }

    else
    {
      v75 = v22;
      keyboardState5 = [(TIKeyboardInputManager *)self keyboardState];
      inputContextHistory = [keyboardState5 inputContextHistory];
      if (inputContextHistory)
      {
        v31 = [v84 usePQT2Flow] ^ 1;
      }

      else
      {
        v31 = 0;
      }

      v32 = currentConnection;
      v22 = v75;
    }

    if (v31)
    {
      corrections = [v120[5] corrections];
      autocorrection = [corrections autocorrection];
      isContinuousPathConversion = [autocorrection isContinuousPathConversion];

      if (isContinuousPathConversion)
      {
        v38 = v120[5];
        std::string::basic_string[abi:nn200100]<0>(v87, "Predictions");
        (*(v22 + 2))(v22, v38, v87, 0);
        if (v88 < 0)
        {
          v39 = v87[0];
LABEL_21:
          operator delete(v39);
          goto LABEL_24;
        }
      }

      else
      {
        keyboardState6 = [(TIKeyboardInputManager *)self keyboardState];
        shiftState = [keyboardState6 shiftState];

        keyboardState7 = [(TIKeyboardInputManager *)self keyboardState];
        responseContext2 = [keyboardState7 responseContext];

        if (responseContext2)
        {
          keyboardState8 = [(TIKeyboardInputManager *)self keyboardState];
          responseContext3 = [keyboardState8 responseContext];
          v127[0] = responseContext3;
          v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:1];
          v74 = [(TIKeyboardInputManager *)self suggestionBlocklistMatchesStrings:v52];
        }

        else
        {
          v74 = 0;
        }

        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v76 = v22;
        v78 = v24;
        v73 = v32;
        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v53 = TIOSLogFacility();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v63 = MEMORY[0x277CCACA8];
            keyboardState9 = [(TIKeyboardInputManager *)self keyboardState];
            [keyboardState9 inputContextHistory];
            v66 = v65 = shiftState;
            mostRecentTextEntryLogString = [v66 mostRecentTextEntryLogString];
            v68 = [v63 stringWithFormat:@"%s InputContext Last Entry: %@", "-[TIKeyboardInputManager finishGeneratingResponseKitProactiveSuggestions:candidateRange:completion:]", mostRecentTextEntryLogString];
            *buf = 138412290;
            v126 = v68;
            _os_log_debug_impl(&dword_22CA55000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

            shiftState = v65;
          }
        }

        v70 = shiftState != 2;
        v54 = +[TIResponseKitManager sharedTIResponseKitManager];
        keyboardState10 = [(TIKeyboardInputManager *)self keyboardState];
        responseContext4 = [keyboardState10 responseContext];
        inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
        normalizedIdentifier = [inputMode normalizedIdentifier];
        keyboardState11 = [(TIKeyboardInputManager *)self keyboardState];
        clientIdentifier = [keyboardState11 clientIdentifier];
        keyboardState12 = [(TIKeyboardInputManager *)self keyboardState];
        recipientIdentifier = [keyboardState12 recipientIdentifier];
        v61 = v120[5];
        proactiveSuggestionsGenerationBlock = [(TIKeyboardInputManager *)self proactiveSuggestionsGenerationBlock];
        BYTE2(v69) = v79;
        BYTE1(v69) = v74;
        LOBYTE(v69) = v70;
        [v54 generateResponseKitSuggestionsForString:responseContext4 withLanguage:normalizedIdentifier withClientID:clientIdentifier withRecipientID:recipientIdentifier withAdditionalPredictions:v61 desiredCandidateCount:v83 + v77 shouldDisableAutoCaps:v69 stringIsBlocklisted:proactiveSuggestionsGenerationBlock async:? completionHandler:?];

        v32 = v73;
        v24 = v78;
        v22 = v76;
      }

      goto LABEL_24;
    }
  }

  else
  {

    v32 = currentConnection;
  }

  corrections2 = [v120[5] corrections];
  autocorrection2 = [corrections2 autocorrection];
  if (([autocorrection2 isContinuousPathConversion] & 1) == 0)
  {

    goto LABEL_23;
  }

  candidateHandlerForOpenRequest2 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
  asynchronous2 = [candidateHandlerForOpenRequest2 asynchronous];

  if ((asynchronous2 & 1) == 0)
  {
LABEL_23:
    proactiveSuggestionsGenerationBlock2 = [(TIKeyboardInputManager *)self proactiveSuggestionsGenerationBlock];
    proactiveSuggestionsGenerationBlock2[2](proactiveSuggestionsGenerationBlock2, v120[5]);

    [(TIKeyboardInputManager *)self setLastContinuousPathAutocorrection:0];
    goto LABEL_24;
  }

  [(TIKeyboardInputManager *)self setLastContinuousPathAutocorrection:v120[5]];
  v44 = v120[5];
  std::string::basic_string[abi:nn200100]<0>(__p, "Predictions");
  (*(v22 + 2))(v22, v44, __p, 0);
  if (v86 < 0)
  {
    v39 = __p[0];
    goto LABEL_21;
  }

LABEL_24:

  objc_destroyWeak(&v92);
  objc_destroyWeak(&v98);

  objc_destroyWeak(&v105);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v107, 8);

  _Block_object_dispose(&v113, 8);
  _Block_object_dispose(&v119, 8);
}

void __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isStickerSuggestionsEnabled])
  {
    if ([v3 count])
    {
      v4 = [v3 objectAtIndex:0];
      v5 = [v4 customInfoType];

      if (v5 == 4096)
      {
        v6 = [*(*(*(a1 + 48) + 8) + 40) emojiList];
        v7 = [v6 count];

        if (v7)
        {
          v8 = [*(*(*(a1 + 48) + 8) + 40) emojiList];
          v9 = [v8 count];

          v10 = [*(*(*(a1 + 48) + 8) + 40) emojiList];
          v11 = v10;
          if (v9 == 1)
          {
            if ([v3 count] <= 2)
            {
              v12 = [v3 count];
            }

            else
            {
              v12 = 2;
            }

            v59 = [v3 subarrayWithRange:{0, v12}];
            v61 = [v11 arrayByAddingObjectsFromArray:v59];
          }

          else
          {
            v59 = [v10 subarrayWithRange:{0, 2}];
            v60 = [v3 firstObject];
            v61 = [v59 arrayByAddingObject:v60];
          }
        }

        else
        {
          if ([v3 count] <= 3)
          {
            v58 = [v3 count];
          }

          else
          {
            v58 = 3;
          }

          v61 = [v3 subarrayWithRange:{0, v58}];
        }

        v62 = MEMORY[0x277D6F328];
        v63 = [*(*(*(a1 + 48) + 8) + 40) corrections];
        v64 = [*(*(*(a1 + 48) + 8) + 40) predictions];
        v65 = [v62 listWithCorrections:v63 predictions:v64 emojiList:v61];
        v66 = *(*(a1 + 48) + 8);
        v67 = *(v66 + 40);
        *(v66 + 40) = v65;

        v68 = *(a1 + 40);
        v69 = *(*(*(a1 + 48) + 8) + 40);
        std::string::basic_string[abi:nn200100]<0>(v81, "Stickers");
        (*(v68 + 16))(v68, v69, v81, 1);
        if (v82 < 0)
        {
          operator delete(v81[0]);
        }

        goto LABEL_54;
      }
    }
  }

  if ([v3 count])
  {
    v13 = [MEMORY[0x277D6F328] listWithCorrections:0 predictions:v3 emojiList:0];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v17 = [WeakRetained keyboardState];
  if ([v17 autocorrectionListUIDisplayed])
  {
    v18 = [*(*(*(a1 + 48) + 8) + 40) predictions];

    if (v18)
    {
      goto LABEL_14;
    }

    v19 = MEMORY[0x277D6F328];
    WeakRetained = [*(*(*(a1 + 48) + 8) + 40) corrections];
    v17 = [*(*(*(a1 + 48) + 8) + 40) emojiList];
    v20 = [v19 listWithCorrections:WeakRetained predictions:MEMORY[0x277CBEBF8] emojiList:v17];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

LABEL_14:
  v23 = *(*(*(a1 + 48) + 8) + 40);
  if (!v23)
  {
    goto LABEL_36;
  }

  v24 = [v23 predictions];
  if (!v24)
  {
    v25 = [*(*(*(a1 + 48) + 8) + 40) emojiList];

    if (v25)
    {
      goto LABEL_18;
    }

LABEL_36:
    if (![v3 count])
    {
      v54 = *(*(*(a1 + 48) + 8) + 40);
      if (v54)
      {
        v55 = [v54 predictions];
        if (v55 || ([*(*(*(a1 + 48) + 8) + 40) emojiList], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          v70 = [*(*(*(a1 + 48) + 8) + 40) corrections];
          v71 = [v70 autocorrection];

          if (!v71)
          {
            [*(*(*(a1 + 48) + 8) + 40) setProactiveSuggestionsEmpty:1];
          }
        }
      }
    }

    goto LABEL_41;
  }

LABEL_18:
  v72 = v3;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [*(*(*(a1 + 48) + 8) + 40) predictions];
  v26 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v78;
    v29 = 0x27872D000uLL;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v78 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v77 + 1) + 8 * i);
        v32 = [*(v29 + 1232) sharedInstance];
        v33 = [v32 secureCandidateRenderer];

        if (v33)
        {
          v34 = [v33 cachedCandidateForSecureCandidate:v31];
        }

        else
        {
          v34 = v31;
        }

        v35 = v34;
        v36 = objc_loadWeakRetained((a1 + 56));
        v37 = [v36 shouldInsertSpaceBeforePredictions];

        if (v37)
        {
          v38 = MEMORY[0x277CCACA8];
          v39 = [v35 candidate];
          v40 = [v38 stringWithFormat:@" %@", v39];

          v41 = [*(v29 + 1232) sharedInstance];
          [v41 secureCandidateRenderer];
          v42 = v27;
          v43 = v28;
          v44 = v29;
          v46 = v45 = a1;
          v74 = [v46 updateCachedCandidate:v35 withCandidateString:v40];

          a1 = v45;
          v29 = v44;
          v28 = v43;
          v27 = v42;

          v35 = v74;
        }

        v47 = [v35 proactiveTrigger];

        if (v47)
        {
          [*(*(*(a1 + 48) + 8) + 40) setContainsProactiveTriggers:1];
        }
      }

      v27 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
    }

    while (v27);
  }

  v48 = *(*(*(a1 + 48) + 8) + 40);
  v49 = [v48 corrections];
  v50 = [v49 autocorrection];
  v51 = [v50 proactiveTrigger];
  v52 = [v48 containsProactiveTriggers];
  if (v51)
  {
    v53 = 1;
  }

  else
  {
    v53 = v52;
  }

  [v48 setContainsProactiveTriggers:v53];

  v3 = v72;
LABEL_41:
  v56 = *(a1 + 40);
  v57 = *(*(*(a1 + 48) + 8) + 40);
  std::string::basic_string[abi:nn200100]<0>(__p, "Predictions");
  (*(v56 + 16))(v56, v57, __p, 1);
  if (v76 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_54:
}

void __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_2(id *a1, void *a2)
{
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__11451;
  v24[4] = __Block_byref_object_dispose__11452;
  v25 = [a2 copy];
  if ([a1[4] shouldOfferStickers])
  {
    v3 = [a1[4] stickerCandidateGenerator];

    if (v3)
    {
      v4 = [a1[4] stickerCandidateGenerator];
      v5 = [*(a1[4] + 36) documentState];
      v6 = [v5 contextBeforeInput];
      v3 = [v4 generateStickerQueriesForText:v6 tokenize:1];

      v7 = [a1[4] stickerCandidateGenerator];
      v8 = [*(a1[4] + 36) documentState];
      v9 = [v8 contextBeforeInput];
      v10 = [v7 generateStickerQueriesForText:v9 tokenize:1 generativeEmojiSearchQueries:1];

      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = 0;
LABEL_6:
  v11 = [a1[5] corrections];
  v12 = [v11 autocorrection];

  if ((!v12 || ([a1[5] corrections], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "autocorrection"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "sourceMask") & 0x28000, v14, v13, v15)) && (objc_msgSend(v3, "count") || objc_msgSend(v10, "count")))
  {
    v16 = [a1[4] stickerCandidateGenerator];
    v17 = [*(a1[4] + 36) secureCandidateRenderTraits];
    v18 = [a1[4] shouldGeneratePredictionsForCurrentContext];
    v19 = [a1[4] inputMode];
    v20 = [v19 languageWithRegion];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_3;
    v21[3] = &unk_2787313B0;
    v23 = v24;
    v22 = a1[6];
    [v16 generateStickerCandidatesForTaxonomySearchableQueries:v3 generativeEmojiSearchableQueries:v10 withRenderTraits:v17 shouldAppend:v18 language:v20 completionHandler:v21];
  }

  else
  {
    (*(a1[6] + 2))();
  }

  _Block_object_dispose(v24, 8);
}

void __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__11451;
  v36[4] = __Block_byref_object_dispose__11452;
  v37 = [a2 copy];
  v3 = [*(a1 + 32) keyboardState];
  if ([v3 autofillMode] == 4)
  {
    v4 = [*(a1 + 32) keyboardState];
    v5 = [v4 documentState];
    v6 = [v5 contextBeforeInput];
    if (v6)
    {
      v7 = [*(a1 + 32) keyboardState];
      v8 = [v7 documentState];
      v9 = [v8 contextBeforeInput];
      if ([v9 length])
      {
        v10 = 0;
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v30 = v9;
      v31 = v8;
      v32 = v7;
    }

    v11 = [*(a1 + 32) keyboardState];
    v12 = [v11 documentState];
    v13 = [v12 contextAfterInput];
    if (v13)
    {
      v14 = v13;
      [*(a1 + 32) keyboardState];
      v15 = v29 = v6;
      v16 = [v15 documentState];
      [v16 contextAfterInput];
      v17 = v5;
      v19 = v18 = v4;
      v28 = v11;
      v10 = [v19 length] == 0;

      v4 = v18;
      v5 = v17;

      v6 = v29;
    }

    else
    {

      v10 = 1;
    }

    v8 = v31;
    v7 = v32;
    v9 = v30;
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:

  if (_os_feature_enabled_impl() && v10)
  {
    v20 = +[TIAppAutofillManager sharedInstance];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v22 = [WeakRetained keyboardState];
    v23 = [v22 secureCandidateRenderTraits];
    v24 = objc_loadWeakRetained((a1 + 64));
    v25 = [v24 keyboardState];
    v26 = *(*(*(a1 + 48) + 8) + 40);
    v27 = *(*(*(a1 + 56) + 8) + 40);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_5;
    v33[3] = &unk_278731428;
    v35 = v36;
    v34 = *(a1 + 40);
    [v20 generateJustHMEAutofillFormSuggestionWithRenderTraits:v23 withKeyboardState:v25 applicationID:v26 applicationBundleID:v27 completionHandler:v33];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  _Block_object_dispose(v36, 8);
}

void __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_7(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [v4 proactiveTriggers];
  v7 = [v4 predictions];
  [WeakRetained generateAndRenderProactiveSuggestionsWithTriggers:v6 withAdditionalPredictions:v7 withInput:&stru_283FDFAF8 async:*(a1 + 56) completionHandler:*(a1 + 32)];

  v8 = objc_loadWeakRetained((a1 + 48));
  [v8 setProactiveSuggestionsGenerationBlock:0];
}

void __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) arrayByAddingObject:a2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);
  TIDispatchAsync();
}

void __100__TIKeyboardInputManager_finishGeneratingResponseKitProactiveSuggestions_candidateRange_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6 && [v6 count])
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) arrayByAddingObjectsFromArray:v6];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)shouldOfferStickers
{
  v22 = 0;
  v3 = +[_TILanguageLikelihoodModel sharedLanguageLikelihoodModel];
  clientIdentifier = [(TIKeyboardState *)self->_keyboardState clientIdentifier];
  v5 = [v3 emojiUsageCountForApp:clientIdentifier lastEmojiCountUpdateTime:&v22];

  if ([(TIKeyboardInputManager *)self isStickerSuggestionsEnabled])
  {
    stickerCandidateGenerator = [(TIKeyboardInputManager *)self stickerCandidateGenerator];
    v7 = stickerCandidateGenerator != 0;
  }

  else
  {
    v7 = 0;
  }

  clientIdentifier2 = [(TIKeyboardState *)self->_keyboardState clientIdentifier];
  v9 = [TICandidateGatingManager stickerUsageCountForApp:clientIdentifier2];

  if (_os_feature_enabled_impl())
  {
    v11 = v5 > 2 || v9 != 0;
    v12 = v7 && v11;
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [currentLocale languageCode];

    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    languageWithRegion = [inputMode languageWithRegion];

    if (v7 && (v5 <= 2 ? (v17 = v9 == 0) : (v17 = 0), !v17 && [languageCode hasPrefix:@"en"]))
    {
      v12 = [languageWithRegion hasPrefix:@"en"];
    }

    else
    {
      v12 = 0;
    }
  }

  if (self->_skipStickerSuggestionGating)
  {
    v18 = v7;
  }

  else
  {
    v18 = v12;
  }

  if (!v18)
  {
    return 0;
  }

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  imageSuggestionEnabled = [keyboardState imageSuggestionEnabled];

  return imageSuggestionEnabled;
}

- (id)finishGeneratingInlineCompletions:(id)completions completion:(id)completion syncResponse:(BOOL)response
{
  v84 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  completionCopy = completion;
  kdebug_trace();
  v9 = kac_get_log();
  v10 = os_signpost_id_make_with_pointer(v9, (self ^ 0x10));
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "kbdManager.generateInlineCompletions", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__11451;
  v61 = __Block_byref_object_dispose__11452;
  v42 = completionsCopy;
  v62 = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__TIKeyboardInputManager_finishGeneratingInlineCompletions_completion_syncResponse___block_invoke;
  aBlock[3] = &unk_278731360;
  aBlock[4] = self;
  v56 = &v57;
  v41 = completionCopy;
  v55 = v41;
  v12 = _Block_copy(aBlock);
  TIInputManager::input_substring((self->m_impl + 8), 0, *(self->m_impl + 24), v82);
  v13 = v12;
  (*(*self->m_impl + 32))(buf);
  if (v81 == 1)
  {
    KB::CandidateCollection::CandidateCollection(v69, buf);
    KB::String::String(v73, v79);
    KB::CandidateCollection::CandidateCollection(v50, v69);
    KB::String::String(v67, v73);
    inlineCompletions = [(TIKeyboardInputManager *)self inlineCompletions:v50 matchedStem:v67];
    if (v68 && v67[6] == 1)
    {
      free(v68);
    }

    v63 = &v53;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v63);
    v63 = &v52;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v63);
    v63 = &v51;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v63);
    v63 = v50;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v63);
    if (inlineCompletions)
    {
      if ([inlineCompletions count])
      {
        v39 = inlineCompletions;
        v40 = v12;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v15 = inlineCompletions;
        v16 = [v15 countByEnumeratingWithState:&v46 objects:v66 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v47;
          v19 = &stru_283FDFAF8;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v47 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v46 + 1) + 8 * i);
              if ([(__CFString *)v19 length])
              {
                v22 = [(__CFString *)v19 stringByAppendingString:@", "];

                v19 = v22;
              }

              v23 = v19;
              candidate = [v21 candidate];
              v19 = [(__CFString *)v19 stringByAppendingString:candidate];
            }

            v17 = [v15 countByEnumeratingWithState:&v46 objects:v66 count:16];
          }

          while (v17);
        }

        else
        {
          v19 = &stru_283FDFAF8;
        }

        [(TIKeyboardInputManager *)self logInlineCompletionsToTypology:@"Sending cached inline completion to UI" candidate:v19];
        inlineCompletions = v39;
        v13 = v40;
      }

      else
      {
        [(TIKeyboardInputManager *)self logInlineCompletionsToTypology:@"Cached completions were found but suppressed: sending empty list to UI" candidate:0];
      }
    }

    if (v74 && v73[6] == 1)
    {
      free(v74);
    }

    v63 = &v72;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v63);
    v63 = &v71;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v63);
    v63 = &v70;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v63);
    v63 = v69;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v63);
  }

  else
  {
    inlineCompletions = [v58[5] inlineCompletions];
  }

  corrections = [v58[5] corrections];
  predictions = [v58[5] predictions];
  v44 = 0;
  v45 = 0;
  v43 = 0;
  TIInputManager::input_substring((self->m_impl + 8), 0, *(self->m_impl + 24), v64);
  [(TIKeyboardInputManager *)self reconcileInlineCompletionAndAutocorrections:corrections inlineCompletions:inlineCompletions predictions:predictions outReconciledAutocorrections:&v45 outReconciledInlineCompletions:&v44 outReconciledPredictions:&v43 matchedStem:v64];
  v27 = v45;
  v28 = v44;
  v29 = v43;
  if (v65 && v64[6] == 1)
  {
    free(v65);
  }

  v30 = v29;
  autocorrection = [v27 autocorrection];

  v32 = v30;
  if (autocorrection)
  {
    autocorrection2 = [v27 autocorrection];
    v32 = [(TIKeyboardInputManager *)self filterDuplicatePredictions:v30 autocorrection:autocorrection2];
  }

  v34 = MEMORY[0x277D6F328];
  emojiList = [v58[5] emojiList];
  proactiveTriggers = [v58[5] proactiveTriggers];
  v37 = [v34 listWithCorrections:v27 predictions:v32 emojiList:emojiList inlineCompletionList:v28 proactiveTriggers:proactiveTriggers];

  if (v81 == 1)
  {
    if (v80 && v79[6] == 1)
    {
      free(v80);
    }

    v69[0] = &v78;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v69);
    v69[0] = &v77;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v69);
    v69[0] = &v76;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v69);
    v69[0] = buf;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v69);
  }

  if (v83 && v82[6] == 1)
  {
    free(v83);
  }

  _Block_object_dispose(&v57, 8);

  return v37;
}

void __84__TIKeyboardInputManager_finishGeneratingInlineCompletions_completion_syncResponse___block_invoke(void *a1, const KB::Candidate **a2, const KB::String *a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (a1[4] ^ 0x10));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_END, v10, "kbdManager.generateInlineCompletions", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v11 = a1[4];
  KB::CandidateCollection::CandidateCollection(v24, a2);
  KB::String::String(v29, a3);
  v12 = [v11 inlineCompletions:v24 matchedStem:v29];
  if (v30 && v29[6] == 1)
  {
    free(v30);
  }

  *buf = &v27;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v26;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v25;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = v24;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  v13 = MEMORY[0x277D6F328];
  v14 = [*(*(a1[6] + 8) + 40) corrections];
  v15 = [*(*(a1[6] + 8) + 40) predictions];
  v16 = [*(*(a1[6] + 8) + 40) emojiList];
  v17 = [v13 listWithCorrections:v14 predictions:v15 emojiList:v16 inlineCompletions:v12];
  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = a1[5];
  v21 = *(*(a1[6] + 8) + 40);
  std::string::basic_string[abi:nn200100]<0>(__p, "InlineCompletions");
  (*(v20 + 16))(v20, v21, __p, a4);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)finishGeneratingAutocorrectionsWithCandidates:(id)candidates candidateRange:(_NSRange)range candidateHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__11451;
  v39 = __Block_byref_object_dispose__11452;
  candidatesCopy = candidates;
  v40 = candidatesCopy;
  candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
  requestToken = [candidateHandlerForOpenRequest requestToken];

  TIInputManager::input_substring((self->m_impl + 8), 0, *(self->m_impl + 24), v49);
  v8 = dispatch_group_create();
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__TIKeyboardInputManager_finishGeneratingAutocorrectionsWithCandidates_candidateRange_candidateHandler___block_invoke;
  aBlock[3] = &unk_278731338;
  objc_copyWeak(&v33, &location);
  v9 = requestToken;
  v32 = v9;
  v10 = _Block_copy(aBlock);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3321888768;
  v41[2] = __104__TIKeyboardInputManager_finishGeneratingAutocorrectionsWithCandidates_candidateRange_candidateHandler___block_invoke_2;
  v41[3] = &unk_283FDACD0;
  objc_copyWeak(&v46, &location);
  v11 = v8;
  v45 = &v35;
  v42 = v11;
  selfCopy = self;
  KB::String::String(v47, v49);
  v12 = v9;
  v44 = v12;
  v13 = _Block_copy(v41);
  candidateHandlerForOpenRequest2 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
  asynchronous = [candidateHandlerForOpenRequest2 asynchronous];

  config = [(TIKeyboardInputManager *)self config];
  isTesting = [config isTesting];

  if (asynchronous && isTesting)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    asynchronous = [keyboardState needAutofill];
  }

  corrections = [v36[5] corrections];
  autocorrection = [corrections autocorrection];
  isContinuousPathConversion = [autocorrection isContinuousPathConversion];

  if (isContinuousPathConversion)
  {
    candidateHandlerForOpenRequest3 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
    [candidateHandlerForOpenRequest3 pushCandidates:v36[5]];
  }

  else
  {
    if ([(TIKeyboardInputManager *)self shouldGenerateInlineCompletions])
    {
      dispatch_group_enter(v11);
      v23 = [(TIKeyboardInputManager *)self finishGeneratingInlineCompletions:v36[5] completion:v13 syncResponse:asynchronous ^ 1u];
      v24 = v36[5];
      v36[5] = v23;
    }

    candidateHandlerForOpenRequest3 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
    v25 = MEMORY[0x277D6F328];
    corrections2 = [v36[5] corrections];
    inlineCompletions = [v36[5] inlineCompletions];
    v28 = [v25 listWithCorrections:corrections2 inlineCompletionList:inlineCompletions];
    [candidateHandlerForOpenRequest3 pushCandidates:v28];
  }

  dispatch_group_enter(v11);
  [(TIKeyboardInputManager *)self finishGeneratingResponseKitProactiveSuggestions:v36[5] candidateRange:range.location completion:range.length, v13];
  if (asynchronous)
  {
    dispatch_group_notify(v11, MEMORY[0x277D85CD0], v10);
  }

  else
  {
    v10[2](v10);
  }

  if (v48 && v47[6] == 1)
  {
    free(v48);
  }

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  if (v50 && v49[6] == 1)
  {
    free(v50);
  }

  _Block_object_dispose(&v35, 8);
}

void __104__TIKeyboardInputManager_finishGeneratingAutocorrectionsWithCandidates_candidateRange_candidateHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v6 = *(a1 + 32);
    v7 = v6;
    if (!v6)
    {
      v1 = objc_loadWeakRetained((a1 + 40));
      v2 = [v1 candidateHandlerForOpenRequest];
      v8 = [v2 requestToken];
      if (!v8)
      {

        goto LABEL_11;
      }

      v3 = v8;
      v7 = *(a1 + 32);
    }

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 candidateHandlerForOpenRequest];
    v11 = [v10 requestToken];
    v12 = [v7 isSameRequestAs:v11];

    if (v6)
    {
      WeakRetained = v16;
      if (!v12)
      {
        goto LABEL_12;
      }

LABEL_11:
      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = [v13 candidateHandlerForOpenRequest];
      [v14 close];

      v15 = objc_loadWeakRetained((a1 + 40));
      [v15 setCandidateHandlerForOpenRequest:0];

      WeakRetained = v16;
      goto LABEL_12;
    }

    WeakRetained = v16;
    if (v12)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
}

void __104__TIKeyboardInputManager_finishGeneratingAutocorrectionsWithCandidates_candidateRange_candidateHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t ***a3, id a4)
{
  v106 = *MEMORY[0x277D85DE8];
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained || !a4)
  {
    goto LABEL_76;
  }

  if ([v8 containsProactiveTriggers])
  {
    v10 = 1;
  }

  else
  {
    v10 = [*(*(*(a1 + 56) + 8) + 40) containsProactiveTriggers];
  }

  if ([v8 proactiveSuggestionsEmpty])
  {
    v11 = 1;
  }

  else
  {
    v11 = [*(*(*(a1 + 56) + 8) + 40) proactiveSuggestionsEmpty];
  }

  v12 = *(a3 + 23);
  v96 = v8;
  if (*(a3 + 23) < 0)
  {
    v14 = a3[1];
    if (v14 != 11)
    {
      goto LABEL_23;
    }

    v13 = *a3;
  }

  else
  {
    v13 = a3;
    if (v12 != 11)
    {
LABEL_19:
      v18 = a3;
      if (v12 != 17)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }
  }

  v15 = *v13;
  v16 = *(v13 + 3);
  if (v15 == 0x6974636964657250 && v16 == 0x736E6F6974636964)
  {
    v93 = v10;
    v19 = v11;
    v20 = MEMORY[0x277D6F328];
    v21 = [*(*(*(a1 + 56) + 8) + 40) corrections];
    v22 = [v8 predictions];
    v23 = [*(*(*(a1 + 56) + 8) + 40) emojiList];
    a4 = [*(*(*(a1 + 56) + 8) + 40) inlineCompletions];
    v4 = [*(*(*(a1 + 56) + 8) + 40) proactiveTriggers];
    v24 = v20;
    v11 = v19;
    v10 = v93;
    v25 = [v24 listWithCorrections:v21 predictions:v22 emojiList:v23 inlineCompletionList:a4 proactiveTriggers:v4];
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v8 = v96;
    v12 = *(a3 + 23);
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v12 & 0x80) == 0)
  {
    goto LABEL_19;
  }

  v14 = a3[1];
LABEL_23:
  if (v14 != 17)
  {
    goto LABEL_43;
  }

  v18 = *a3;
LABEL_25:
  v28 = *v18;
  v29 = v18[1];
  v30 = *(v18 + 16);
  if (v28 == 0x6F43656E696C6E49 && v29 == 0x6E6F6974656C706DLL && v30 == 115)
  {
    v91 = v11;
    v94 = v10;
    v92 = [*(*(*(a1 + 56) + 8) + 40) corrections];
    v33 = [v8 inlineCompletions];
    v34 = [*(*(*(a1 + 56) + 8) + 40) predictions];
    v35 = [*(*(*(a1 + 56) + 8) + 40) corrections];
    v36 = [v35 autocorrection];
    v37 = v8;
    v38 = [v36 isAutocorrection];

    if (v38)
    {

      v33 = 0;
    }

    else
    {
      v39 = *(a1 + 40);
      v40 = [*(*(*(a1 + 56) + 8) + 40) corrections];
      v41 = [v37 inlineCompletions];
      LODWORD(v39) = [v39 shouldPromoteInlineCompletionsToAutocorrections:v40 inlineCompletions:v41];

      if (v39)
      {
        v42 = [v37 inlineCompletions];
        v43 = [v42 objectAtIndexedSubscript:0];

        v44 = *(a1 + 40);
        v45 = [*(*(*(a1 + 56) + 8) + 40) corrections];
        v46 = [*(*(*(a1 + 56) + 8) + 40) predictions];
        v101 = v34;
        v102 = v92;
        KB::String::String(v104, (a1 + 72));
        v47 = v44;
        v48 = v45;
        [v47 promoteInlineCompletionToAutocorrections:v45 predictions:v46 inlineCompletion:v43 outReconciledAutocorrections:&v102 outReconciledPredictions:&v101 matchedStem:v104];
        v90 = v102;

        v49 = v101;
        if (v105 && v104[6] == 1)
        {
          free(v105);
        }

        v34 = v49;
        v92 = v90;
      }
    }

    v10 = v94;
    v95 = v33;
    v50 = v34;
    v51 = [v92 autocorrection];

    v52 = v50;
    if (v51)
    {
      v53 = *(a1 + 40);
      v54 = [v92 autocorrection];
      v52 = [v53 filterDuplicatePredictions:v50 autocorrection:v54];
    }

    v55 = MEMORY[0x277D6F328];
    v4 = [*(*(*(a1 + 56) + 8) + 40) emojiList];
    v56 = [*(*(*(a1 + 56) + 8) + 40) proactiveTriggers];
    v57 = v55;
    a4 = v95;
    v58 = [v57 listWithCorrections:v92 predictions:v52 emojiList:v4 inlineCompletionList:v95 proactiveTriggers:v56];
    v59 = *(*(a1 + 56) + 8);
    v60 = *(v59 + 40);
    *(v59 + 40) = v58;

    v8 = v96;
    v11 = v91;
  }

LABEL_43:
  if (![*(a1 + 40) isStickerSuggestionsEnabled])
  {
    goto LABEL_51;
  }

  v61 = *(a3 + 23);
  if (v61 < 0)
  {
    if (a3[1] != 8)
    {
      goto LABEL_51;
    }

    a3 = *a3;
  }

  else if (v61 != 8)
  {
    goto LABEL_51;
  }

  if (*a3 == 0x7372656B63697453)
  {
    a4 = MEMORY[0x277D6F328];
    a3 = [*(*(*(a1 + 56) + 8) + 40) corrections];
    v4 = [*(*(*(a1 + 56) + 8) + 40) predictions];
    v62 = [v8 emojiList];
    v63 = [*(*(*(a1 + 56) + 8) + 40) inlineCompletions];
    v64 = [a4 listWithCorrections:a3 predictions:v4 emojiList:v62 inlineCompletions:v63];
    v65 = *(*(a1 + 56) + 8);
    v66 = *(v65 + 40);
    *(v65 + 40) = v64;
  }

LABEL_51:
  [*(*(*(a1 + 56) + 8) + 40) setContainsProactiveTriggers:v10];
  [*(*(*(a1 + 56) + 8) + 40) setProactiveSuggestionsEmpty:v11];
  v67 = *(a1 + 48);
  v68 = v67;
  if (v67)
  {
    goto LABEL_54;
  }

  a4 = objc_loadWeakRetained((a1 + 64));
  v4 = [a4 candidateHandlerForOpenRequest];
  v69 = [v4 requestToken];
  if (v69)
  {
    a3 = v69;
    v68 = *(a1 + 48);
LABEL_54:
    v70 = objc_loadWeakRetained((a1 + 64));
    v71 = [v70 candidateHandlerForOpenRequest];
    v72 = [v71 requestToken];
    v73 = [v68 isSameRequestAs:v72];

    if (v67)
    {
      v8 = v96;
      if (!v73)
      {
        goto LABEL_76;
      }
    }

    else
    {

      v8 = v96;
      if ((v73 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_60;
  }

LABEL_60:
  if (_os_feature_enabled_impl())
  {
    v74 = [*(*(*(a1 + 56) + 8) + 40) inlineCompletions];
    if (v74)
    {
      v75 = v74;
      v76 = [*(*(*(a1 + 56) + 8) + 40) inlineCompletions];
      v77 = [v76 count];

      if (v77)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v78 = [*(*(*(a1 + 56) + 8) + 40) inlineCompletions];
        v79 = [v78 countByEnumeratingWithState:&v97 objects:v103 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v98;
          v82 = &stru_283FDFAF8;
          do
          {
            for (i = 0; i != v80; ++i)
            {
              if (*v98 != v81)
              {
                objc_enumerationMutation(v78);
              }

              v84 = *(*(&v97 + 1) + 8 * i);
              if ([(__CFString *)v82 length])
              {
                v85 = [(__CFString *)v82 stringByAppendingString:@", "];

                v82 = v85;
              }

              v86 = v82;
              v87 = [v84 candidate];
              v82 = [(__CFString *)v82 stringByAppendingString:v87];
            }

            v80 = [v78 countByEnumeratingWithState:&v97 objects:v103 count:16];
          }

          while (v80);
        }

        else
        {
          v82 = &stru_283FDFAF8;
        }

        [*(a1 + 40) logInlineCompletionsToTypology:@"Sending inline completion to UI" candidate:v82];
        v8 = v96;
      }
    }
  }

  v88 = objc_loadWeakRetained((a1 + 64));
  v89 = [v88 candidateHandlerForOpenRequest];
  [v89 pushCandidates:*(*(*(a1 + 56) + 8) + 40)];

LABEL_76:
  dispatch_group_leave(*(a1 + 32));
}

- (id)generateInlineCompletions:(id)completions withPrefix:(id)prefix
{
  v39 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  prefixCopy = prefix;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  *__p = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v21);
  language_modeling::v1::LinguisticContext::LinguisticContext(&v22);
  memset(v23, 0, 24);
  v16 = 0;
  KB::utf8_string(completionsCopy, &v31);
  [(TIKeyboardInputManager *)self tokenizeString:&v31 context:&v17 sentences:&v16];
  if (v32 && BYTE6(v31) == 1)
  {
    free(v32);
  }

  KB::utf8_string(prefixCopy, v37);
  m_impl = self->m_impl;
  if (m_impl[34])
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    clientIdentifier = [keyboardState clientIdentifier];

    m_impl = self->m_impl;
    if (clientIdentifier)
    {
      v11 = m_impl[34];
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      clientIdentifier2 = [keyboardState2 clientIdentifier];
      KB::utf8_string(clientIdentifier2, &v31);
      (*(*v11 + 264))(v11, &v31);
      if (v32 && BYTE6(v31) == 1)
      {
        free(v32);
      }

      m_impl = self->m_impl;
    }
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__11451;
  v35 = __Block_byref_object_dispose__11452;
  v36 = &stru_283FDFAF8;
  (*(*m_impl + 32))(v25);
  if (v30 == 1)
  {
    if (v29 && v28[38] == 1)
    {
      free(v29);
    }

    v24 = v28;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v24);
    v24 = &v27;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v24);
    v24 = &v26;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v24);
    v24 = v25;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v24);
  }

  v14 = v32[5];
  _Block_object_dispose(&v31, 8);

  if (v38 && v37[6] == 1)
  {
    free(v38);
  }

  v31 = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v31);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v22);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v21);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v17 + 1));
  }

  return v14;
}

uint64_t __63__TIKeyboardInputManager_generateInlineCompletions_withPrefix___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  if (*(a2 + 8) != *a2)
  {
    v3 = result;
    if (!*(v2 + 444))
    {
      KB::Candidate::compute_string(*a2);
    }

    v4 = KB::ns_string((v2 + 888), a2);
    v5 = *(*(v3 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = +[TIProactiveQuickTypeManager sharedInstance];
  isAutoPopupEnabled = [v6 isAutoPopupEnabled];

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if ([keyboardState autocorrectionListUIDisplayed])
  {

LABEL_4:
    v11 = [(TIKeyboardInputManager *)self autocorrectionListWithCandidateCount:location + length];
    goto LABEL_5;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  longPredictionListEnabled = [keyboardState2 longPredictionListEnabled];

  if (longPredictionListEnabled)
  {
    goto LABEL_4;
  }

  if (!isAutoPopupEnabled)
  {
    supplementalAutocorrectionCandidates = [(TIKeyboardInputManager *)self supplementalAutocorrectionCandidates];
    if (!supplementalAutocorrectionCandidates)
    {
      supplementalAutocorrectionCandidates = [(TIKeyboardInputManager *)self autocorrectionCandidates];
    }

    v11 = [MEMORY[0x277D6F328] listWithCorrections:supplementalAutocorrectionCandidates];

LABEL_5:
    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = [(TIKeyboardInputManager *)self autocorrectionListWithCandidateCount:location + length];
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0x277D6F328];
    corrections = [v13 corrections];
    proactiveTriggers = [v14 proactiveTriggers];
    v11 = [v15 listWithCorrections:corrections predictions:0 emojiList:0 proactiveTriggers:proactiveTriggers];

    goto LABEL_5;
  }

LABEL_6:
  v11 = [MEMORY[0x277D6F328] listWithCorrections:0];
LABEL_7:
  [(TIKeyboardInputManager *)self setLastAutocorrectionList:v11];

  return v11;
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler
{
  length = range.length;
  location = range.location;
  stateCopy = state;
  handlerCopy = handler;
  [(TIKeyboardInputManager *)self setKeyboardState:stateCopy];
  _hasSupplementalPrefix = [(TIKeyboardInputManager *)self _hasSupplementalPrefix];
  v12 = &unk_27D9ED000;
  v13 = !_hasSupplementalPrefix | KB::SetOnlySearchSupplementalLexiconForScope::s_shouldOnlySearchSupplementalLexicon;
  if ((v13 & 1) == 0)
  {
    KB::SetOnlySearchSupplementalLexiconForScope::s_shouldOnlySearchSupplementalLexicon = 1;
  }

  if (handlerCopy)
  {
    v14 = +[TIProactiveQuickTypeManager sharedInstance];
    isAutoPopupEnabled = [v14 isAutoPopupEnabled];

    candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];

    if (candidateHandlerForOpenRequest)
    {
      candidateHandlerForOpenRequest2 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
      [candidateHandlerForOpenRequest2 close];

      [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:0];
    }

    [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:handlerCopy];
    candidateHandlerForOpenRequest3 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
    [candidateHandlerForOpenRequest3 open];

    if ((*(self->m_impl + 108) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    if (([stateCopy needOneTimeCodeAutofill] & 1) != 0 || objc_msgSend(stateCopy, "autofillMode") == 3)
    {
      v48 = length;
      v51 = location;
      kdebug_trace();
      v30 = kac_get_log();
      v31 = os_signpost_id_make_with_pointer(v30, (self ^ 0x11));
      if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = v31;
        if (os_signpost_enabled(v30))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22CA55000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v32, "kbdManager.generateAutofill", &unk_22CCA4FEF, buf, 2u);
        }
      }

      v33 = [(TIKeyboardInputManager *)self generateOneTimeCodeCandidatesWithKeyboardState:stateCopy];
      kdebug_trace();
      v34 = kac_get_log();
      v35 = os_signpost_id_make_with_pointer(v34, (self ^ 0x11));
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = v35;
        if (os_signpost_enabled(v34))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22CA55000, v34, OS_SIGNPOST_INTERVAL_END, v36, "kbdManager.generateAutofill", &unk_22CCA4FEF, buf, 2u);
        }
      }

      if ([v33 count])
      {
        v19 = [MEMORY[0x277D6F328] listWithCorrections:0 predictions:v33 emojiList:0];

        length = v48;
        location = v51;
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {

        length = v48;
        location = v51;
      }
    }

    if ([stateCopy needCellularAutofill] && objc_msgSend(stateCopy, "autofillMode") == 8)
    {
      v37 = location;
      v38 = [(TIKeyboardInputManager *)self generateCellularCandidatesWithKeyboardState:stateCopy];
      if ([v38 count])
      {
        v19 = [MEMORY[0x277D6F328] listWithCorrections:0 predictions:v38 emojiList:0];

        location = v37;
        if (v19)
        {
LABEL_27:
          if (([v19 empty] & 1) == 0)
          {
            [handlerCopy pushCandidates:v19];
            [handlerCopy close];
            [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:0];
LABEL_13:

            goto LABEL_14;
          }

LABEL_8:
          pregeneratedTypingAutocorrections = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
          if (pregeneratedTypingAutocorrections && (v21 = pregeneratedTypingAutocorrections, -[TIKeyboardInputManager keyboardState](self, "keyboardState"), v50 = location, v22 = objc_claimAutoreleasedReturnValue(), [v22 documentState], v49 = self, v23 = v19, v24 = length, v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(stateCopy, "documentState"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "isEqual:", v26), v26, v12 = &unk_27D9ED000, v25, length = v24, v19 = v23, self = v49, v22, location = v50, v21, (v27 & 1) != 0))
          {
            pregeneratedTypingAutocorrections2 = [(TIKeyboardInputManager *)v49 pregeneratedTypingAutocorrections];
          }

          else
          {
            pregeneratedTypingAutocorrections2 = [(TIKeyboardInputManager *)self generateTypingAutocorrectionsWithCandidateRange:location, length];
          }

          v29 = pregeneratedTypingAutocorrections2;
          [(TIKeyboardInputManager *)self setPregeneratedTypingAutocorrections:0];
          [(TIKeyboardInputManager *)self finishGeneratingAutocorrectionsWithCandidates:v29 candidateRange:location candidateHandler:length, handlerCopy];

          goto LABEL_13;
        }
      }

      else
      {

        location = v37;
      }
    }

    if (!isAutoPopupEnabled)
    {
LABEL_7:
      v19 = 0;
      goto LABEL_8;
    }

    v39 = location;
    if ([stateCopy needAutofill])
    {
      if ([stateCopy needContactAutofill])
      {
        goto LABEL_51;
      }

LABEL_43:
      kdebug_trace();
      v43 = kac_get_log();
      v44 = os_signpost_id_make_with_pointer(v43, (self ^ 0x11));
      if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v45 = v44;
        if (os_signpost_enabled(v43))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22CA55000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v45, "kbdManager.generateAutofill", &unk_22CCA4FEF, buf, 2u);
        }
      }

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __99__TIKeyboardInputManager_generateAutocorrectionsWithKeyboardState_candidateRange_candidateHandler___block_invoke;
      v52[3] = &unk_2787312E8;
      v52[4] = self;
      v46 = handlerCopy;
      v53 = v46;
      v54 = v39;
      v55 = length;
      if ([(TIKeyboardInputManager *)self generateAutofillFormWithKeyboardState:stateCopy completionHandler:v52])
      {
        v47 = [MEMORY[0x277D6F328] listWithCorrections:0 predictions:0];
        [v46 pushCandidates:v47];
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    autofillContext = [stateCopy autofillContext];
    v41 = [autofillContext objectForKeyedSubscript:*MEMORY[0x277D6F9C8]];
    if ((objc_msgSend_isEqualToString_(v41) & 1) != 0 || [stateCopy autofillMode])
    {
      needContactAutofill = [stateCopy needContactAutofill];

      if ((needContactAutofill & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

LABEL_51:
    v19 = 0;
    location = v39;
    goto LABEL_8;
  }

LABEL_14:
  if ((v13 & 1) == 0)
  {
LABEL_15:
    v12[1872] = 0;
  }

LABEL_16:
}

void __99__TIKeyboardInputManager_generateAutocorrectionsWithKeyboardState_candidateRange_candidateHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = kac_get_log();
  v5 = os_signpost_id_make_with_pointer(v4, (*(a1 + 32) ^ 0x11));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v4, OS_SIGNPOST_INTERVAL_END, v6, "kbdManager.generateAutofill", &unk_22CCA4FEF, v8, 2u);
    }
  }

  if ([v3 count])
  {
    v7 = [MEMORY[0x277D6F328] listWithCorrections:0 predictions:v3 emojiList:0];
    [*(a1 + 40) pushCandidates:v7];
    [*(a1 + 40) close];
  }

  else
  {
    v7 = [*(a1 + 32) generateTypingAutocorrectionsWithCandidateRange:{*(a1 + 48), *(a1 + 56)}];
    [*(a1 + 32) finishGeneratingAutocorrectionsWithCandidates:v7 candidateRange:*(a1 + 48) candidateHandler:{*(a1 + 56), *(a1 + 40)}];
  }
}

- (id)generateCellularCandidatesWithKeyboardState:(id)state
{
  stateCopy = state;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  isScreenLocked = [keyboardState isScreenLocked];

  if ((isScreenLocked & 1) == 0 && [stateCopy needCellularAutofill] && objc_msgSend(stateCopy, "autofillMode") == 8)
  {
    v7 = +[TIAppAutofillManager sharedInstance];
    secureCandidateRenderTraits = [stateCopy secureCandidateRenderTraits];
    v9 = [v7 generateCellularCandidatesWithRenderTraits:secureCandidateRenderTraits withKeyboardState:stateCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)generateOneTimeCodeCandidatesWithKeyboardState:(id)state
{
  stateCopy = state;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  isScreenLocked = [keyboardState isScreenLocked];

  if ((isScreenLocked & 1) == 0 && (([stateCopy needOneTimeCodeAutofill] & 1) != 0 || objc_msgSend(stateCopy, "autofillMode") == 3))
  {
    v8 = +[TIAppAutofillManager sharedInstance];
    secureCandidateRenderTraits = [stateCopy secureCandidateRenderTraits];
    v7 = [v8 generateOneTimeCodeCandidatesWithRenderTraits:secureCandidateRenderTraits withKeyboardState:stateCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)generateAutofillFormWithKeyboardState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  isScreenLocked = [keyboardState isScreenLocked];

  if (isScreenLocked)
  {
    goto LABEL_2;
  }

  if (([stateCopy needAutofill] & 1) != 0 || objc_msgSend(stateCopy, "autofillMode") == 1 || (objc_msgSend(stateCopy, "autofillContext"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", *MEMORY[0x277D6F9C8]), v12 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v12), v12, v11, isEqualToString))
  {
    v14 = +[TIAppAutofillManager sharedInstance];
    secureCandidateRenderTraits = [stateCopy secureCandidateRenderTraits];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __82__TIKeyboardInputManager_generateAutofillFormWithKeyboardState_completionHandler___block_invoke;
    v21[3] = &unk_2787312C0;
    v22 = handlerCopy;
    [v14 generateAutofillFormCandidatesWithRenderTraits:secureCandidateRenderTraits withKeyboardState:stateCopy completion:v21];

    v10 = 1;
    goto LABEL_8;
  }

  if ([stateCopy autofillMode] == 2 || objc_msgSend(stateCopy, "autofillMode") == 7)
  {
    v17 = +[TIAppAutofillManager sharedInstance];
    secureCandidateRenderTraits2 = [stateCopy secureCandidateRenderTraits];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __82__TIKeyboardInputManager_generateAutofillFormWithKeyboardState_completionHandler___block_invoke_3;
    v19[3] = &unk_2787312C0;
    v20 = handlerCopy;
    [v17 generateAutofillFormSuggestedUsernameWithRenderTraits:secureCandidateRenderTraits2 withKeyboardState:stateCopy completionHandler:v19];
  }

  else
  {
LABEL_2:
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  v10 = 0;
LABEL_8:

  return v10;
}

void __82__TIKeyboardInputManager_generateAutofillFormWithKeyboardState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  TIDispatchAsync();
}

- (void)trackProactiveMetrics:(id)metrics keyboardState:(id)state
{
  stateCopy = state;
  metricsCopy = metrics;
  v11 = +[TIConnectionsMetricsTracker sharedInstance];
  documentState = [stateCopy documentState];
  documentIsEmpty = [documentState documentIsEmpty];
  textInputTraits = [stateCopy textInputTraits];

  textContentType = [textInputTraits textContentType];
  [v11 trackTextFieldEntryWithEmpty:documentIsEmpty fieldType:textContentType trigger:metricsCopy];
}

- (void)deleteFromInputWithContext:(id)context
{
  v74 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentWordStem = [(TIKeyboardInputManager *)self currentWordStem];
  autocorrectionForCurrentStem = [(TIKeyboardInputManager *)self autocorrectionForCurrentStem];
  v7 = [autocorrectionForCurrentStem objectForKey:currentWordStem];

  if ([v7 length])
  {
    [(TIKeyboardInputManager *)self setRejectedAutocorrection:v7 forInput:currentWordStem];
  }

  autocorrectionHistory = [(TIKeyboardInputManager *)self autocorrectionHistory];
  v9 = [autocorrectionHistory objectForKey:currentWordStem];

  candidate = [v9 candidate];

  if ([candidate length])
  {
    input = [v9 input];
    [(TIKeyboardInputManager *)self setRejectedAutocorrection:candidate forInput:input];
  }

  if (![(TIKeyboardInputManager *)self inputCount]&& [(TIKeyboardInputManager *)self usesCandidateSelection])
  {
    [(TIKeyboardInputManager *)self inputLocationChanged];
  }

  v71 = 0;
  if (![(TIKeyboardInputManager *)self inputIndex])
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState documentState];
    markedText = [documentState markedText];
    if (markedText)
    {
      v16 = markedText;
      supportsSetPhraseBoundary = [(TIKeyboardInputManager *)self supportsSetPhraseBoundary];

      if (supportsSetPhraseBoundary)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    lastAcceptedText = [(TIKeyboardInputManager *)self lastAcceptedText];
    if (lastAcceptedText)
    {
      v37 = lastAcceptedText;
      lastAcceptedText2 = [(TIKeyboardInputManager *)self lastAcceptedText];
      if ([lastAcceptedText2 isContinuousPathConversion])
      {
        config = [(TIKeyboardInputManager *)self config];
        continuousPathDeleteWholeWord = [config continuousPathDeleteWholeWord];

        if (continuousPathDeleteWholeWord)
        {
          lastAcceptedText3 = [(TIKeyboardInputManager *)self lastAcceptedText];
          candidate2 = [lastAcceptedText3 candidate];

          lastAcceptedText4 = [(TIKeyboardInputManager *)self lastAcceptedText];
          input2 = [lastAcceptedText4 input];
          if (input2)
          {
            v45 = input2;
            v67 = candidate;
            v69 = currentWordStem;
            v46 = v9;
            lastAcceptedText5 = [(TIKeyboardInputManager *)self lastAcceptedText];
            input3 = [lastAcceptedText5 input];
            pathedWordSeparator = [(TIKeyboardInputManager *)self pathedWordSeparator];
            v50 = [input3 stringByAppendingString:pathedWordSeparator];
            v66 = [candidate2 hasPrefix:v50];

            if (!v66)
            {
              v53 = contextCopy;
              v9 = v46;
              candidate = v67;
              currentWordStem = v69;
              goto LABEL_47;
            }

            lastAcceptedText4 = [(TIKeyboardInputManager *)self lastAcceptedText];
            input4 = [lastAcceptedText4 input];
            v52 = [candidate2 substringFromIndex:{objc_msgSend(input4, "length") + 1}];

            candidate2 = v52;
            v9 = v46;
            candidate = v67;
            currentWordStem = v69;
          }

          v53 = contextCopy;

LABEL_47:
          m_impl = self->m_impl;
          if (m_impl)
          {
            KB::utf8_string(candidate2, v72);
            v60 = m_impl[28];
            if (v60)
            {
              (*(*v60 + 112))(v60, v72);
            }

            if (v73 && v72[6] == 1)
            {
              free(v73);
            }
          }

          contextCopy = v53;
          [v53 deleteTextBackward:candidate2];
          lastAcceptedText6 = [(TIKeyboardInputManager *)self lastAcceptedText];
          [(TIKeyboardInputManager *)self continuousPathCandidateRejected:lastAcceptedText6];

          [(TIKeyboardInputManager *)self setLastAcceptedText:0];
          lastAcceptedText7 = 1;
LABEL_54:
          if ([(TIKeyboardInputManager *)self usesCandidateSelection])
          {
            keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
            [(TIKeyboardInputManager *)self syncMarkedTextForKeyboardState:keyboardState2 afterContextChange:0];
          }

          else
          {
            if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
            {
              typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
              [typingSessionMonitor changingContextWithTrigger:*MEMORY[0x277D6F600]];
            }

            keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
            documentState2 = [keyboardState3 documentState];
            [(TIKeyboardInputManager *)self setInputStringFromDocumentState:documentState2 isDeleteEvent:1 didDeleteLastAcceptedPath:lastAcceptedText7];
          }

          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    [contextCopy deleteBackward:1];
    lastAcceptedText7 = [(TIKeyboardInputManager *)self lastAcceptedText];
    if (lastAcceptedText7)
    {
      lastAcceptedText8 = [(TIKeyboardInputManager *)self lastAcceptedText];
      isContinuousPathConversion = [lastAcceptedText8 isContinuousPathConversion];

      if (isContinuousPathConversion)
      {
        lastAcceptedText9 = [(TIKeyboardInputManager *)self lastAcceptedText];
        [(TIKeyboardInputManager *)self continuousPathCandidateRejected:lastAcceptedText9];

        [(TIKeyboardInputManager *)self setLastAcceptedText:0];
      }

      lastAcceptedText7 = 0;
    }

    goto LABEL_54;
  }

  if (![(TIKeyboardInputManager *)self usesCandidateSelection])
  {
LABEL_16:
    v68 = currentWordStem;
    v20 = candidate;
    v21 = v9;
    v22 = contextCopy;
    hasLegacyInputStem = [(TIKeyboardInputManager *)self hasLegacyInputStem];
    inputString = [(TIKeyboardInputManager *)self inputString];
    inputIndex = [(TIKeyboardInputManager *)self inputIndex];
    inputContext = [(TIKeyboardInputManager *)self inputContext];
    if (hasLegacyInputStem)
    {
      [(TIKeyboardInputManager *)self displayedCandidateRejected];
    }

    v27 = [(TIKeyboardInputManager *)self deleteFromInput:&v71];
    v28 = [(TIKeyboardInputManager *)self deletedSuffixOfInputContext:inputContext whenDeletingFromInputString:inputString withInputIndex:inputIndex deletionCount:v71];
    v29 = v28;
    if (v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = &stru_283FDFAF8;
    }

    v31 = [v28 stringByAppendingString:v30];

    v32 = [v31 length];
    contextCopy = v22;
    if (v71)
    {
      [v22 deleteBackward:?];
    }

    if (v32)
    {
      [v22 insertText:v31];
    }

    if (!hasLegacyInputStem && [(TIKeyboardInputManager *)self shouldExtendPriorWord]&& [(TIKeyboardInputManager *)self hasLegacyInputStem])
    {
      keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
      documentState3 = [keyboardState4 documentState];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __53__TIKeyboardInputManager_deleteFromInputWithContext___block_invoke;
      v70[3] = &unk_278731200;
      v70[4] = self;
      v35 = [documentState3 inputStringWithTerminatorPredicate:v70];

      contextCopy = v22;
      [(TIKeyboardInputManager *)self setOriginalInput:v35];
    }

    v9 = v21;
    candidate = v20;
    currentWordStem = v68;
    goto LABEL_30;
  }

  keyboardState5 = [(TIKeyboardInputManager *)self keyboardState];
  if ([keyboardState5 shouldSkipCandidateSelection])
  {

    goto LABEL_16;
  }

  keyboardState6 = [(TIKeyboardInputManager *)self keyboardState];
  suppressingCandidateSelection = [keyboardState6 suppressingCandidateSelection];

  if (suppressingCandidateSelection)
  {
    goto LABEL_16;
  }

  v58 = [(TIKeyboardInputManager *)self deleteFromInput:&v71];
  if (![(TIKeyboardInputManager *)self shouldDelayUpdateComposedText])
  {
    [(TIKeyboardInputManager *)self updateComposedText];
    [(TIKeyboardInputManager *)self setMarkedText];
  }

LABEL_30:
}

- (void)continuousPathCandidateRejected:(id)rejected
{
  candidate = [rejected candidate];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [candidate stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v10 = [v6 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

  rejectedConversionsForCurrentContinuousPath = [(TIKeyboardInputManager *)self rejectedConversionsForCurrentContinuousPath];

  if (!rejectedConversionsForCurrentContinuousPath)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [(TIKeyboardInputManager *)self setRejectedConversionsForCurrentContinuousPath:v8];
  }

  rejectedConversionsForCurrentContinuousPath2 = [(TIKeyboardInputManager *)self rejectedConversionsForCurrentContinuousPath];
  [rejectedConversionsForCurrentContinuousPath2 addObject:v10];
}

- (void)addInput:(id)input withContext:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  contextCopy = context;
  v8 = objc_msgSend_string(inputCopy);
  v9 = [v8 length];

  if (v9)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    isUppercase = [inputCopy isUppercase];
    if ([inputCopy isAutoshifted])
    {
      isUppercase |= 2u;
    }

    if ([inputCopy isPopupVariant])
    {
      isUppercase |= 4u;
    }

    if ([inputCopy isMultitap])
    {
      v12 = isUppercase | 8;
    }

    else
    {
      v12 = isUppercase;
    }

    isGesture = [inputCopy isGesture];
    if (([inputCopy isPopupVariant] | isGesture))
    {
      v14 = v12 | 4;
    }

    else
    {
      v14 = v12;
    }

    if ([inputCopy isSynthesizedByAcceptingCandidate])
    {
      v15 = v14 | 0x80;
    }

    else
    {
      v15 = v14;
    }

    v16 = objc_msgSend_string(inputCopy);
    v17 = [(TIKeyboardInputManager *)self shouldInsertSpaceBeforeInput:v16];

    if (v17)
    {
      [(TIKeyboardInputManager *)self insertSpaceBeforeInputWithContext:contextCopy];
    }

    v62 = 0;
    inputString = [(TIKeyboardInputManager *)self inputString];
    inputIndex = [(TIKeyboardInputManager *)self inputIndex];
    inputContext = [(TIKeyboardInputManager *)self inputContext];
    v21 = objc_msgSend_string(inputCopy);
    touchEvent = [inputCopy touchEvent];
    [touchEvent location];
    v23 = v15;
    v24 = inputString;
    v25 = [(TIKeyboardInputManager *)self addInput:v21 flags:v23 point:&v62 firstDelete:?];

    v61 = inputContext;
    v26 = [(TIKeyboardInputManager *)self deletedSuffixOfInputContext:inputContext whenDeletingFromInputString:v24 withInputIndex:inputIndex deletionCount:v62];
    v27 = v26;
    if (v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = &stru_283FDFAF8;
    }

    v29 = [v26 stringByAppendingString:v28];

    if ([(TIKeyboardInputManager *)self usesCandidateSelection])
    {
      v30 = [(TIKeyboardInputManager *)self inputCount]== 0;
    }

    else
    {
      v30 = 1;
    }

    if ([keyboardState shouldSkipCandidateSelection] & 1) != 0 || (objc_msgSend(keyboardState, "suppressingCandidateSelection") & 1) != 0 || ((v30 | -[TIKeyboardInputManager shouldCommitInputString](self, "shouldCommitInputString")))
    {
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      documentState = [keyboardState2 documentState];
      selectedText = [documentState selectedText];

      v36 = [v29 length];
      if (v62)
      {
        if (selectedText)
        {
          ++v62;
        }

        else
        {
          v37 = v29;
          documentState2 = [keyboardState documentState];
          markedText = [documentState2 markedText];

          if (markedText)
          {
            ++v62;
          }

          v29 = v37;
        }

        [contextCopy deleteBackward:?];
      }

      if (v36)
      {
        [contextCopy insertText:v29];
      }

      if ([keyboardState shortcutConversionEnabled])
      {
        documentState3 = [keyboardState documentState];
        v41 = [(TIKeyboardInputManager *)self shortcutConversionForDocumentState:documentState3];
        [contextCopy output];
        v43 = v42 = v29;
        [v43 setShortcutConversion:v41];

        v29 = v42;
      }

      if (selectedText && [(TIKeyboardInputManager *)self shouldExtendPriorWord])
      {
        keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
        documentState4 = [keyboardState3 documentState];
        [(TIKeyboardInputManager *)self setInputStringFromDocumentState:documentState4 isDeleteEvent:0];
      }

      else
      {
        [(TIKeyboardInputManager *)self trimInput];
      }
    }

    else
    {
      [(TIKeyboardInputManager *)self setMarkedText];
    }

    if ([inputCopy isSynthesizedByAcceptingCandidate])
    {
      [(TIKeyboardInputManager *)self dropInput];
    }

    lastAcceptedText = [(TIKeyboardInputManager *)self lastAcceptedText];

    if (lastAcceptedText)
    {
      if ([inputCopy isSynthesizedByAcceptingCandidate])
      {
        lastAcceptedText2 = [(TIKeyboardInputManager *)self lastAcceptedText];
        lastAcceptedText3 = [(TIKeyboardInputManager *)self lastAcceptedText];
        candidate = [lastAcceptedText3 candidate];
        objc_msgSend_string(inputCopy);
        v49 = v60 = v29;
        v50 = [candidate stringByAppendingString:v49];
        [lastAcceptedText2 candidateByReplacingWithCandidate:v50];
        v51 = keyboardState;
        v52 = contextCopy;
        v54 = v53 = v24;
        [(TIKeyboardInputManager *)self setLastAcceptedText:v54];

        v24 = v53;
        contextCopy = v52;
        keyboardState = v51;

        v29 = v60;
      }

      else
      {
        [(TIKeyboardInputManager *)self setLastAcceptedText:0];
        [(TIKeyboardInputManager *)self setRejectedConversionsForCurrentContinuousPath:0];
      }
    }

    TIInputManager::input_substring((self->m_impl + 8), 0, -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3), v63);
    v56 = KB::ns_string(v63, v55);
    if (v64 && v63[6] == 1)
    {
      free(v64);
    }

    keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    v58 = [keyboardFeatureSpecialization shouldClearInput:v56];

    if (v58)
    {
      [(TIKeyboardInputManager *)self clearInput];
    }
  }

  else if ([inputCopy isSynthesizedByAcceptingCandidate])
  {
    wordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
    v32 = [wordSeparator length];

    if (!v32)
    {
      [(TIKeyboardInputManager *)self dropInput];
    }
  }
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  v5 = [TIKeyboardInputManagerKeyboardContext alloc];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  v7 = [(TIKeyboardInputManagerKeyboardContext *)v5 initWithKeyboardState:keyboardState];

  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
  [(TIKeyboardInputManagerKeyboardContext *)v7 setRevisionHistory:revisionHistory];

  output = [inputCopy output];

  if (output)
  {
    if (![(TIKeyboardInputManager *)self doesComposeText])
    {
      output7 = 0;
      goto LABEL_32;
    }

    inputStem = [(TIKeyboardInputManager *)self inputStem];
    typingSessionMonitor = objc_msgSend_string(MEMORY[0x277CCAB68]);
    v12 = [inputStem length];
    output2 = [inputCopy output];
    deletionCount = [output2 deletionCount];

    if (deletionCount)
    {
      v15 = v12 - 1;
      if (((v12 - 1) & 0x80000000) == 0)
      {
        v16 = 1;
        do
        {
          v17 = [inputStem _rangeOfBackwardDeletionClusterAtIndex:v15];
          v19 = v18;
          v20 = [inputStem substringWithRange:{v17, v18}];
          [typingSessionMonitor insertString:v20 atIndex:0];

          output3 = [inputCopy output];
          deletionCount2 = [output3 deletionCount];

          if (deletionCount2 <= v16)
          {
            break;
          }

          v15 -= v19;
          ++v16;
        }

        while ((v15 & 0x80000000) == 0);
      }
    }

    v23 = *(self->m_impl + 24) - -[TIKeyboardInputManager externalIndexToInternal:](self, "externalIndexToInternal:", [inputStem length] - objc_msgSend(typingSessionMonitor, "length"));
    if (v23 >= 1)
    {
      do
      {
        [(TIKeyboardInputManager *)self deleteFromInputWithContext:v7];
        --v23;
      }

      while (v23);
    }

    keyboardState5 = objc_alloc_init(MEMORY[0x277D6F3E8]);
    output4 = [inputCopy output];
    insertionText = [output4 insertionText];
    [keyboardState5 setString:insertionText];

    [(TIKeyboardInputManager *)self addInput:keyboardState5 withContext:v7];
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState2 documentState];
    markedText = [documentState markedText];
    v30 = [markedText length];

    if (v30)
    {
      v31 = objc_msgSend_string(keyboardState5);
      [(TIKeyboardInputManagerKeyboardContext *)v7 unmarkText:v31];

      [(TIKeyboardInputManager *)self clearInput];
    }

    output7 = 0;
    goto LABEL_30;
  }

  inputStem = objc_msgSend_string(inputCopy);
  [(TIKeyboardInputManager *)self setLastInputString:inputStem];
  if (![inputCopy isDoubleSpace])
  {
    if ([inputCopy isBackspace])
    {
      [(TIKeyboardInputManager *)self incrementUsageTrackingKeysForDeleteFromInput];
      [(TIKeyboardInputManager *)self deleteFromInputWithContext:v7];
      output5 = [(TIKeyboardInputManagerKeyboardContext *)v7 output];
      [output5 setProducedByDeleteInput:1];
    }

    else
    {
      usesCandidateSelection = [(TIKeyboardInputManager *)self usesCandidateSelection];
      if (!inputStem || !usesCandidateSelection || ![(TIKeyboardInputManager *)self stringEndsWord:inputStem])
      {
        keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
        textInputTraits = [keyboardState3 textInputTraits];
        if (([textInputTraits secureTextEntry] & 1) == 0)
        {
          keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
          layoutState = [keyboardState4 layoutState];
          layoutTag = [layoutState layoutTag];
          isEqualToString = objc_msgSend_isEqualToString_(layoutTag);

          if (!isEqualToString)
          {
            goto LABEL_27;
          }

          keyboardState3 = objc_msgSend_string(inputCopy);
          textInputTraits = [keyboardState3 _stringByConvertingFromHalfWidthToFullWidth];
          [inputCopy setString:textInputTraits];
        }

        goto LABEL_27;
      }

      [(TIKeyboardInputManagerKeyboardContext *)v7 insertText:inputStem];
      [(TIKeyboardInputManager *)self clearInput];
      output5 = [(TIKeyboardInputManager *)self keyboardState];
      [(TIKeyboardInputManager *)self syncMarkedTextForKeyboardState:output5 afterContextChange:0];
    }

    goto LABEL_28;
  }

  replacementForDoubleSpace = [(TIKeyboardInputManager *)self replacementForDoubleSpace];
  [inputCopy setString:replacementForDoubleSpace];

  output6 = [(TIKeyboardInputManagerKeyboardContext *)v7 output];
  [output6 setUnmarkIfNecessary:1];

  [(TIKeyboardInputManager *)self deleteFromInputWithContext:v7];
LABEL_27:
  [(TIKeyboardInputManager *)self addInput:inputCopy withContext:v7];
LABEL_28:
  self->super._hasHandledInput = 1;
  [(TIKeyboardInputManager *)self _recalcSupplementalPrefix];
  output7 = [(TIKeyboardInputManagerKeyboardContext *)v7 output];
  if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
  {
    typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
    keyboardState5 = [(TIKeyboardInputManager *)self keyboardState];
    [typingSessionMonitor addKeyInput:inputCopy keyboardState:keyboardState5];
LABEL_30:
  }

LABEL_32:

  return output7;
}

- (void)logDiscoverabilityEvent:(int)event userInfo:(id)info
{
  if (event)
  {
    if (event != 1)
    {
      return;
    }

    v5 = @"com.apple.keyboard.candidateBar.extendedWithGesture";
  }

  else
  {
    v5 = @"com.apple.keyboard.resized";
  }

  v8 = [[TPSDiscoverabilitySignal alloc] initWithIdentifier:v5];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  normalizedIdentifier = [inputMode normalizedIdentifier];
  [(TPSDiscoverabilitySignal *)v8 setContext:normalizedIdentifier];

  [(TPSDiscoverabilitySignal *)v8 donateSignalWithCompletion:&__block_literal_global_213];
}

void __59__TIKeyboardInputManager_logDiscoverabilityEvent_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (v2)
  {
    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v3 = TIOSLogFacility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Failed to donate signal: %@", "-[TIKeyboardInputManager logDiscoverabilityEvent:userInfo:]_block_invoke", v2];
        *buf = 138412290;
        v6 = v4;
LABEL_12:
        _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v3 = TIOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Event stored", "-[TIKeyboardInputManager logDiscoverabilityEvent:userInfo:]_block_invoke"];
      *buf = 138412290;
      v6 = v4;
      goto LABEL_12;
    }

LABEL_9:
  }
}

- (void)syncToKeyboardState:(id)state
{
  stateCopy = state;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  if (!documentState)
  {
    documentState2 = [stateCopy documentState];
    if (documentState2)
    {

      goto LABEL_11;
    }
  }

  usesCandidateSelection = [(TIKeyboardInputManager *)self usesCandidateSelection];
  documentState3 = [stateCopy documentState];
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  documentState4 = [keyboardState2 documentState];
  if (usesCandidateSelection)
  {
    v10 = [documentState3 isEqual:documentState4];
  }

  else
  {
    v10 = [documentState3 isEqualIgnoringMarkedText:documentState4];
  }

  v11 = v10 ^ 1;

  if (documentState)
  {

    if (v11)
    {
LABEL_11:
      v13 = +[TIProactiveQuickTypeManager sharedInstance];
      [v13 reset];

      v14 = 1;
      goto LABEL_13;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_13:
  [(TIKeyboardInputManager *)self willChangeToKeyboardState:stateCopy afterContextChange:v14];
  -[TIKeyboardInputManager updateDynamicDirectoryForScreenLockState:](self, "updateDynamicDirectoryForScreenLockState:", [stateCopy isScreenLocked]);
  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  [(TIKeyboardInputManager *)self setKeyboardState:stateCopy];
  [(TIKeyboardInputManager *)self syncToKeyboardState:stateCopy from:keyboardState3 afterContextChange:v14];
}

- (void)setKeyboardState:(id)state
{
  stateCopy = state;
  v66 = *MEMORY[0x277D85DE8];
  stateCopy2 = state;
  if (_os_feature_enabled_impl())
  {
    m_impl = self->m_impl;
    if (m_impl)
    {
      v44 = stateCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        clientIdentifier = [stateCopy2 clientIdentifier];
        LODWORD(v65.__first_) = 136315394;
        *(&v65.__first_ + 4) = "[TIKeyboardInputManager setKeyboardState:]";
        WORD2(v65.__begin_) = 2080;
        *(&v65.__begin_ + 6) = [clientIdentifier UTF8String];
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Passing client ID to the vulgar word usage database wrapper; client ID: %s", &v65, 0x16u);

        m_impl = self->m_impl;
      }

      clientIdentifier2 = [stateCopy2 clientIdentifier];
      KB::retain_ptr<__CFDictionary const*>::operator=(m_impl + 80, clientIdentifier2);

      v60 = 0;
      v61 = 0;
      v62 = 0;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v45 = stateCopy2;
      inputContextHistory = [stateCopy2 inputContextHistory];
      recipientIdentifiers = [inputContextHistory recipientIdentifiers];
      allObjects = [recipientIdentifiers allObjects];

      v11 = [allObjects countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v57;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v57 != v13)
            {
              objc_enumerationMutation(allObjects);
            }

            std::string::basic_string[abi:nn200100]<0>(__p, [*(*(&v56 + 1) + 8 * i) UTF8String]);
            v15 = v61;
            if (v61 >= v62)
            {
              v17 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3);
              v18 = v17 + 1;
              if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
              }

              if (0x5555555555555556 * ((v62 - v60) >> 3) > v18)
              {
                v18 = 0x5555555555555556 * ((v62 - v60) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v62 - v60) >> 3) >= 0x555555555555555)
              {
                v19 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v19 = v18;
              }

              v65.__end_cap_.__value_ = &v60;
              if (v19)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v19);
              }

              v20 = 8 * ((v61 - v60) >> 3);
              v21 = *__p;
              *(v20 + 16) = v55;
              *v20 = v21;
              __p[1] = 0;
              v55 = 0;
              __p[0] = 0;
              v22 = (24 * v17 + 24);
              v23 = (24 * v17 - (v61 - v60));
              memcpy((v20 - (v61 - v60)), v60, v61 - v60);
              v24 = v60;
              v25 = v62;
              v60 = v23;
              v61 = v22;
              v62 = 0;
              v65.__end_ = v24;
              v65.__end_cap_.__value_ = v25;
              v65.__first_ = v24;
              v65.__begin_ = v24;
              std::__split_buffer<std::string>::~__split_buffer(&v65);
              v61 = v22;
              if (SHIBYTE(v55) < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v16 = *__p;
              *(v61 + 2) = v55;
              *v15 = v16;
              v61 = (v15 + 24);
            }
          }

          v12 = [allObjects countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v12);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v65.__first_) = 136315394;
        *(&v65.__first_ + 4) = "[TIKeyboardInputManager setKeyboardState:]";
        WORD2(v65.__begin_) = 2048;
        *(&v65.__begin_ + 6) = (0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3));
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Passing recipient IDs to the vulgar word usage database wrapper; number of IDs: %lu", &v65, 0x16u);
      }

      v26 = self->m_impl;
      v52 = 0;
      v53 = 0;
      v51 = 0;
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v51, v60, v61, 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3));
      v27 = v26 + 27;
      v36 = &v26[27] == &v51;
      stateCopy = v44;
      if (!v36)
      {
        std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(v27, v51, v52, 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 3));
      }

      v65.__first_ = &v51;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v65);
      v65.__first_ = &v60;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v65);
      stateCopy2 = v45;
    }
  }

  v28 = self->m_impl;
  if (v28 && v28[34])
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    inputContextHistory2 = [stateCopy2 inputContextHistory];
    recipientNames = [inputContextHistory2 recipientNames];
    allObjects2 = [recipientNames allObjects];

    v32 = [allObjects2 countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v48;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v48 != v34)
          {
            objc_enumerationMutation(allObjects2);
          }

          KB::utf8_string(*(*(&v47 + 1) + 8 * j), &v65);
          std::vector<KB::String>::push_back[abi:nn200100](&v60, &v65);
          if (v65.__begin_)
          {
            v36 = BYTE6(v65.__first_) == 1;
          }

          else
          {
            v36 = 0;
          }

          if (v36)
          {
            free(v65.__begin_);
          }
        }

        v33 = [allObjects2 countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v33);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v65.__first_) = 136315394;
      *(&v65.__first_ + 4) = "[TIKeyboardInputManager setKeyboardState:]";
      WORD2(v65.__begin_) = 2048;
      *(&v65.__begin_ + 6) = ((v61 - v60) >> 5);
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Passing recipient names to the inline completions generator; number of names: %lu", &v65, 0x16u);
    }

    v37 = *(self->m_impl + 34);
    memset(v46, 0, sizeof(v46));
    std::vector<KB::String>::__init_with_size[abi:nn200100]<KB::String*,KB::String*>(v46, v60, v61, (v61 - v60) >> 5);
    (*(*v37 + 240))(v37, v46);
    v65.__first_ = v46;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v65);
    v65.__first_ = &v60;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v65);
  }

  objc_storeStrong(&self->_keyboardState, stateCopy);
  clientIdentifier3 = [stateCopy2 clientIdentifier];
  if (clientIdentifier3)
  {
    v39 = clientIdentifier3;
    shouldMonitorTypingSession = [(TIKeyboardInputManager *)self shouldMonitorTypingSession];

    if (shouldMonitorTypingSession)
    {
      typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
      clientIdentifier4 = [stateCopy2 clientIdentifier];
      [typingSessionMonitor setClientID:clientIdentifier4 keyboardState:stateCopy2];
    }
  }

  [(TIKeyboardInputManager *)self _recalcSupplementalPrefix];
}

- (void)prepareForKeyboardActivity
{
  ptr = self->m_lightweight_language_model.__ptr_;
  if (ptr && (*(*ptr + 16))(ptr, a2))
  {
    v4 = *(*self->m_lightweight_language_model.__ptr_ + 208);

    v4();
  }
}

- (void)prepareForKeyboardInactivity:(int)inactivity
{
  v3 = *&inactivity;
  ptr = self->m_lightweight_language_model.__ptr_;
  if (ptr && (*(*ptr + 16))(ptr, a2))
  {
    (*(*self->m_lightweight_language_model.__ptr_ + 216))(self->m_lightweight_language_model.__ptr_);
  }

  [(TIKeyboardInputManager *)self resetLMCache:v3];
}

- (void)endTypingSessionWithInteractionObservers:(id)observers
{
  observersCopy = observers;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__TIKeyboardInputManager_endTypingSessionWithInteractionObservers___block_invoke;
  v6[3] = &unk_278731278;
  objc_copyWeak(&v8, &location);
  v7 = observersCopy;
  v5 = observersCopy;
  [(TIKeyboardInputManager *)self fetchTypingSessionParams:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__TIKeyboardInputManager_endTypingSessionWithInteractionObservers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v4 = v3;
  TIDispatchAsync();

  objc_destroyWeak(&v6);
}

void __67__TIKeyboardInputManager_endTypingSessionWithInteractionObservers___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    v3 = [MEMORY[0x277CBEAA8] now];
    v4 = [v6 typingSessionMonitor];
    [v4 endSessionWithInteractionObservers:*(a1 + 32) sessionParams:*(a1 + 40) timestamp:v3];

    v5 = [v6 counterChangeCache];
    [v5 keyboardDidSuspendForDate:v3];
  }
}

- (void)resetLMCache:(int)cache
{
  v3 = *&cache;
  m_impl = self->m_impl;
  if (m_impl)
  {
    v6 = m_impl[34];
    if (v6)
    {
      (*(*v6 + 136))(v6, *&cache);
    }
  }

  p_m_lightweight_language_model = &self->m_lightweight_language_model;
  ptr = self->m_lightweight_language_model.__ptr_;
  if (ptr)
  {
    if ((*(*ptr + 16))(ptr, a2))
    {
      (*(*p_m_lightweight_language_model->__ptr_ + 136))(p_m_lightweight_language_model->__ptr_, v3);
      v9 = self->m_impl;
      if (v9)
      {
        v10 = v9[34];
        if (v10)
        {
          if ((*(*v10 + 16))(v10))
          {
            cntrl = self->m_lightweight_language_model.__cntrl_;
            p_m_lightweight_language_model->__ptr_ = 0;
            self->m_lightweight_language_model.__cntrl_ = 0;
            if (cntrl)
            {

              std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
            }
          }
        }
      }
    }
  }
}

- (void)suspend
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = TIInputManagerOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x277CCACA8];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    v7 = [v4 stringWithFormat:@"%s Suspend (inputMode=%@)", "-[TIKeyboardInputManager suspend]", normalizedIdentifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "%@", &buf, 0xCu);
  }

  [(TIKeyboardInputManager *)self logTestingParametersToTypology];
  config = [(TIKeyboardInputManager *)self config];
  if (([config disableAnalytics] & 1) == 0)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    layoutState = [keyboardState layoutState];
    inputMode2 = [layoutState inputMode];

    if (!inputMode2)
    {
      goto LABEL_14;
    }

    v12 = (*(**(self->m_impl + 28) + 456))(*(self->m_impl + 28));
    config = [(TIKeyboardInputManager *)self config];
    usesContinuousPath = [config usesContinuousPath];
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    layoutState2 = [keyboardState2 layoutState];
    inputMode3 = [layoutState2 inputMode];
    v17 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v49 = __TIStatisticsReportCPStats_block_invoke;
    v50 = &unk_278733308;
    v18 = v17;
    v51 = v18;
    if (TIStatisticsReportCPStats_onceToken != -1)
    {
      dispatch_once(&TIStatisticsReportCPStats_onceToken, &buf);
    }

    if (v12)
    {
      v19 = v12;
    }

    else
    {
      v19 = TIStatisticsReportCPStats_usageCountDefaults;
    }

    TIStatisticsReportCPStats_didDiscover |= v19 > 3;
    if (usesContinuousPath)
    {
      v20 = *MEMORY[0x277D6FC20];
      v21 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarSetBoolean();

      [v18 setBool:TIStatisticsReportCPStats_didDiscover forKey:v20];
    }

    v22 = TIStatisticGetKeyForInputMode();
    TIStatisticScalarSetBoolean();
  }

LABEL_14:
  [(TIKeyboardInputManager *)self willChangeToKeyboardState:0 afterContextChange:1];
  recentAutocorrections = [(TIKeyboardInputManager *)self recentAutocorrections];
  [recentAutocorrections removeAllObjects];

  recentPredictiveInputSelections = [(TIKeyboardInputManager *)self recentPredictiveInputSelections];
  [recentPredictiveInputSelections removeAllObjects];

  revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
  [revisionHistory acceptCurrentSentence];

  revisionHistory2 = [(TIKeyboardInputManager *)self revisionHistory];
  [revisionHistory2 syncToDocumentState:0];

  languageSelectionController = [(TIKeyboardInputManager *)self languageSelectionController];
  [languageSelectionController flushBuffer];

  [(TIKeyboardInputManager *)self clearInput];
  [(TIKeyboardInputManager *)self setDeleteKeyCount:0];
  rejectedAutocorrectionsDisplayedOrInserted = [(TIKeyboardInputManager *)self rejectedAutocorrectionsDisplayedOrInserted];
  [rejectedAutocorrectionsDisplayedOrInserted removeAllObjects];

  rejectedAutocorrectionsDisplayedOrInsertedInverse = [(TIKeyboardInputManager *)self rejectedAutocorrectionsDisplayedOrInsertedInverse];
  [rejectedAutocorrectionsDisplayedOrInsertedInverse removeAllObjects];

  autocorrectionForCurrentStem = [(TIKeyboardInputManager *)self autocorrectionForCurrentStem];
  [autocorrectionForCurrentStem removeAllObjects];

  std::unique_ptr<TI::RejectionsDatabase>::reset[abi:nn200100](&self->m_rejectionsDatabase, 0);
  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  secureTextEntry = [keyboardState3 secureTextEntry];

  if (secureTextEntry)
  {
    currentState = self->_currentState;
    self->_currentState = 0;
  }

  [(TIKeyboardInputManager *)self setKeyboardState:0];
  m_impl = self->m_impl;
  if (m_impl)
  {
    v35 = m_impl[33];
    if (v35)
    {
      v36 = *(v35 + 24);
      v37 = *(v36 + 32);
      *(v36 + 24) = 0;
      *(v36 + 32) = 0;
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v37);
      }
    }
  }

  [(TIKeyboardInputManager *)self resetLMCache:0];
  stickerCandidateGenerator = [(TIKeyboardInputManager *)self stickerCandidateGenerator];
  [stickerCandidateGenerator clearCache];

  v39 = self->m_impl;
  if (v39)
  {
    v40 = v39[28];
    if (v40)
    {
      (*(*v40 + 120))(v40);
    }
  }

  [(TIKeyboardInputManager *)self releaseMRLBuffers];
  [(TIKeyboardInputManager *)self setProactiveSuggestionsGenerationBlock:0];
  v47.receiver = self;
  v47.super_class = TIKeyboardInputManager;
  [(TIKeyboardInputManagerBase *)&v47 suspend];
  v41 = +[TIKeyboardAssertionManager sharedAssertionManager];
  [v41 removeAssertionForObject:self];

  v42 = +[TIProactiveQuickTypeManager sharedInstance];
  [v42 reset];

  v43 = +[TIAppAutofillManager sharedInstance];
  [v43 reset];

  if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
  {
    typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
    resetInteractionObserversForNextSession = [typingSessionMonitor resetInteractionObserversForNextSession];

    [(TIKeyboardInputManager *)self endTypingSessionWithInteractionObservers:resetInteractionObserversForNextSession];
  }

  keyLayout = self->_keyLayout;
  self->_keyLayout = 0;

  [(TIKeyboardInputManager *)self setRejectedConversionsForCurrentContinuousPath:0];
}

- (void)acceptCurrentCandidateIfSelectedWithContext:(id)context
{
  contextCopy = context;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  userSelectedCurrentCandidate = [keyboardState userSelectedCurrentCandidate];

  if (userSelectedCurrentCandidate)
  {
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    currentCandidate = [keyboardState2 currentCandidate];

    [contextCopy acceptCandidate:currentCandidate];
    keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
    v9 = [(TIKeyboardInputManager *)self handleAcceptedCandidate:currentCandidate keyboardState:keyboardState3];

    if (v9)
    {
      [contextCopy unmarkText:v9];
    }
  }
}

- (void)acceptCurrentCandidateWithContext:(id)context
{
  contextCopy = context;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  currentCandidate = [keyboardState currentCandidate];
  v6 = currentCandidate;
  if (currentCandidate)
  {
    defaultCandidate = currentCandidate;
  }

  else
  {
    defaultCandidate = [(TIKeyboardInputManager *)self defaultCandidate];
  }

  v8 = defaultCandidate;

  [contextCopy acceptCandidate:v8];
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  v10 = [(TIKeyboardInputManager *)self handleAcceptedCandidate:v8 keyboardState:keyboardState2];

  if (v10)
  {
    [contextCopy unmarkText:v10];
  }
}

- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers
{
  candidatesCopy = candidates;
  triggersCopy = triggers;
  v8 = triggersCopy;
  if (!candidatesCopy)
  {
    v25 = 0;
    goto LABEL_16;
  }

  v41 = triggersCopy;
  v9 = [candidatesCopy count];
  if ([candidatesCopy count] >= 2)
  {
    v10 = [candidatesCopy objectAtIndex:1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (![(TIKeyboardLayoutState *)self->_layoutState hasCandidateKey])
      {
        goto LABEL_6;
      }

      keyboardState = [(TIKeyboardInputManager *)self keyboardState];
      splitKeyboardMode = [keyboardState splitKeyboardMode];

      if ((splitKeyboardMode & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_8:
      v28 = candidatesCopy;
      candidateRange = [(TIKeyboardInputManager *)self candidateRange];
      v30 = v9 - candidateRange;
      if (v9 <= candidateRange)
      {
        v31 = 0;
        v8 = v41;
      }

      else
      {
        v31 = candidateRange;
        [(TIKeyboardInputManager *)self candidateRange];
        v8 = v41;
        if (v32 < v30)
        {
          [(TIKeyboardInputManager *)self candidateRange];
          v30 = v33;
        }

        v34 = [v28 subarrayWithRange:{v31, v30}];

        v28 = v34;
      }

      v35 = MEMORY[0x277D6F3D0];
      initialSelectedIndex = [(TIKeyboardInputManager *)self initialSelectedIndex];
      defaultCandidate = [(TIKeyboardInputManager *)self defaultCandidate];
      sortMethodTitles = [(TIKeyboardInputManager *)self sortMethodTitles];
      v25 = [v35 setWithCandidates:v28 initialSelectedIndex:initialSelectedIndex defaultCandidate:defaultCandidate sortMethods:sortMethodTitles sortMethodGroups:0 indexTitles:0 showExtensionCandidates:0 disambiguationCandidates:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL proactiveTriggers:v8];

      [v25 setBatchCandidateLocation:v31];
      goto LABEL_15;
    }
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  needsCandidateMetadata = [keyboardState2 needsCandidateMetadata];

  if (!needsCandidateMetadata)
  {
    goto LABEL_8;
  }

LABEL_6:
  sortMethodTitles2 = [(TIKeyboardInputManager *)self sortMethodTitles];
  v15 = [(TIKeyboardInputManager *)self sortMethodsGroupsForCandidates:candidatesCopy];
  sortMethodIndexes = [(TIKeyboardInputManager *)self sortMethodIndexes];
  v16 = MEMORY[0x277CCAC30];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __77__TIKeyboardInputManager_candidateResultSetFromCandidates_proactiveTriggers___block_invoke;
  v42[3] = &unk_278731228;
  v43 = v15;
  v17 = v15;
  v18 = [v16 predicateWithBlock:v42];
  v19 = [sortMethodTitles2 filteredArrayUsingPredicate:v18];

  v20 = MEMORY[0x277D6F3D0];
  initialSelectedIndex2 = [(TIKeyboardInputManager *)self initialSelectedIndex];
  [(TIKeyboardInputManager *)self defaultCandidate];
  v23 = v22 = v9;
  sortMethodsShowExtensionCandidates = [(TIKeyboardInputManager *)self sortMethodsShowExtensionCandidates];
  v8 = v41;
  v25 = [v20 setWithCandidates:candidatesCopy initialSelectedIndex:initialSelectedIndex2 defaultCandidate:v23 sortMethods:v19 sortMethodGroups:v17 indexTitles:sortMethodIndexes showExtensionCandidates:sortMethodsShowExtensionCandidates disambiguationCandidates:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL proactiveTriggers:v41];

  v9 = v22;
LABEL_15:
  [v25 setGeneratedCandidateCount:v9];
LABEL_16:

  return v25;
}

BOOL __77__TIKeyboardInputManager_candidateResultSetFromCandidates_proactiveTriggers___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)sortMethodsShowExtensionCandidates
{
  v20 = *MEMORY[0x277D85DE8];
  sortingMethods = [(TIKeyboardInputManager *)self sortingMethods];
  if ([sortingMethods count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = sortingMethods;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [(TIKeyboardInputManager *)self titleForSortingMethod:v10, v15];
          v12 = [(TIKeyboardInputManager *)self alwaysShowExtensionCandidatesForSortingMethod:v10];
          v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
          [dictionary setObject:v13 forKey:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)sortMethodIndexes
{
  v19 = *MEMORY[0x277D85DE8];
  sortingMethods = [(TIKeyboardInputManager *)self sortingMethods];
  if ([sortingMethods count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = sortingMethods;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(TIKeyboardInputManager *)self titleForSortingMethod:v10, v14];
          v12 = [(TIKeyboardInputManager *)self indexTitlesForGroupTitles:0 sortingMethod:v10];
          if (v12)
          {
            [dictionary setObject:v12 forKey:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)sortMethodsGroupsForCandidates:(id)candidates
{
  v23 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  sortingMethods = [(TIKeyboardInputManager *)self sortingMethods];
  if ([sortingMethods count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = sortingMethods;
    v7 = sortingMethods;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [(TIKeyboardInputManager *)self titleForSortingMethod:v12];
          v15 = [(TIKeyboardInputManager *)self groupedCandidatesFromCandidates:candidatesCopy usingSortingMethod:v12];
          [dictionary setObject:v15 forKey:v14];

          objc_autoreleasePoolPop(v13);
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    sortingMethods = v17;
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)sortMethodTitles
{
  v17 = *MEMORY[0x277D85DE8];
  sortingMethods = [(TIKeyboardInputManager *)self sortingMethods];
  if ([sortingMethods count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = sortingMethods;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(TIKeyboardInputManager *)self titleForSortingMethod:*(*(&v12 + 1) + 8 * i), v12];
          [array addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (BOOL)shouldSkipCandidateSelection
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  shouldSkipCandidateSelection = [keyboardState shouldSkipCandidateSelection];

  return shouldSkipCandidateSelection;
}

- (id)markedText
{
  rawInputString = [(TIKeyboardInputManager *)self rawInputString];
  inputString = [(TIKeyboardInputManager *)self inputString];
  inputIndex = [(TIKeyboardInputManager *)self inputIndex];
  searchStringForMarkedText = [(TIKeyboardInputManager *)self searchStringForMarkedText];
  lastInputString = [(TIKeyboardInputManager *)self lastInputString];
  v8 = [MEMORY[0x277D6F3F8] intermediateTextWithInputString:rawInputString displayString:inputString selectionLocation:inputIndex searchString:searchStringForMarkedText lastInputString:lastInputString];

  return v8;
}

- (void)setMarkedText
{
  rawInputString = [(TIKeyboardInputManager *)self rawInputString];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  [keyboardState setInputForMarkedText:rawInputString];

  searchStringForMarkedText = [(TIKeyboardInputManager *)self searchStringForMarkedText];
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  [keyboardState2 setSearchStringForMarkedText:searchStringForMarkedText];

  inputString = [(TIKeyboardInputManager *)self inputString];
  inputIndex = [(TIKeyboardInputManager *)self inputIndex];
  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState3 documentState];
  v10 = [documentState documentStateAfterSettingMarkedText:inputString selectedRange:{inputIndex, 0}];
  keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
  [keyboardState4 setDocumentState:v10];
}

- (BOOL)shouldOmitEmojiCandidates
{
  userInterfaceIdiom = [(TIKeyboardInputManager *)self userInterfaceIdiom];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  v5 = 1;
  if (([keyboardState omitEmojiCandidates] & 1) == 0 && userInterfaceIdiom != 2)
  {
    v5 = [(TIKeyboardInputManager *)self userInterfaceIdiom]== 3;
  }

  return v5;
}

- (BOOL)isStickerSuggestionsEnabled
{
  config = [(TIKeyboardInputManager *)self config];
  if ([config isTesting])
  {
    config2 = [(TIKeyboardInputManager *)self config];
    stickerSuggestionsEnabled = [config2 stickerSuggestionsEnabled];
  }

  else
  {
    stickerSuggestionsEnabled = 1;
  }

  return _os_feature_enabled_impl() & stickerSuggestionsEnabled;
}

- (id)contextBeforeWithDesiredLength:(unint64_t)length
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  v7 = [contextBeforeInput length];
  v8 = v7 - length;
  if (v7 > length)
  {
    if (v8 < v7)
    {
      v8 = [contextBeforeInput rangeOfComposedCharacterSequenceAtIndex:?];
    }

    v9 = [contextBeforeInput substringFromIndex:v8];

    contextBeforeInput = v9;
  }

  return contextBeforeInput;
}

- (id)inputStringFromDocumentState:(id)state
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__TIKeyboardInputManager_inputStringFromDocumentState___block_invoke;
  v5[3] = &unk_278731200;
  v5[4] = self;
  v3 = [state inputStringWithTerminatorPredicate:v5];

  return v3;
}

uint64_t __55__TIKeyboardInputManager_inputStringFromDocumentState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _firstLongCharacter];
  if (v4 && ![*(a1 + 32) acceptsCharacter:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) stringEndsWord:v3];
  }

  return v5;
}

- (BOOL)shouldAddModifierSymbolsToWordCharacters
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  shouldAddModifierSymbolsToWordCharacters = [keyboardFeatureSpecialization shouldAddModifierSymbolsToWordCharacters];

  return shouldAddModifierSymbolsToWordCharacters;
}

- (id)keyboardBehaviors
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  keyboardBehaviors = [keyboardFeatureSpecialization keyboardBehaviors];

  return keyboardBehaviors;
}

- (id)layoutTagsForLayout:(id)layout
{
  v33 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if (layoutCopy)
  {
    v5 = [(NSMutableDictionary *)self->_cachedLayoutTags objectForKeyedSubscript:layoutCopy];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
      layoutTags = [keyboardFeatureSpecialization layoutTags];
      v9 = [layoutTags objectForKeyedSubscript:layoutCopy];

      if (![v9 count])
      {
        goto LABEL_14;
      }

      selfCopy = self;
      v26 = layoutCopy;
      v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v9;
      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v28 + 1) + 8 * i);
            v16 = [v15 objectForKeyedSubscript:@"Tag"];
            v17 = MEMORY[0x277CCA900];
            v18 = [v15 objectForKeyedSubscript:@"FollowingCharactersInSet"];
            v19 = [v17 characterSetWithCharactersInString:v18];

            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v19 forKey:v16];
            [v10 addObject:v20];
          }

          v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v12);
      }

      self = selfCopy;
      layoutCopy = v26;
      if (!v10)
      {
LABEL_14:
        v10 = MEMORY[0x277CBEBF8];
      }

      cachedLayoutTags = self->_cachedLayoutTags;
      if (!cachedLayoutTags)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v23 = self->_cachedLayoutTags;
        self->_cachedLayoutTags = dictionary;

        cachedLayoutTags = self->_cachedLayoutTags;
      }

      [(NSMutableDictionary *)cachedLayoutTags setObject:v10 forKeyedSubscript:layoutCopy];
      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change
{
  changeCopy = change;
  stateCopy = state;
  fromCopy = from;
  v10 = [(TIKeyboardInputManager *)self updateAdaptationContextToKeyboardState:stateCopy from:fromCopy];
  if (changeCopy || v10)
  {
    [(TIKeyboardInputManager *)self scheduleLinguisticResourceUpdateWithReason:@"Context changed"];
    if ([(TIKeyboardInputManager *)self isLinguisticResourceUpdateScheduled])
    {
      [(TIKeyboardInputManager *)self updateDictionaryAndLanguageModel];
    }

    [(TIKeyboardInputManager *)self setRejectedConversionsForCurrentContinuousPath:0];
  }

  [(TIKeyboardInputManager *)self checkAndUpdateAdditionalLexicons];
  layoutState = [stateCopy layoutState];
  if (layoutState)
  {
    v12 = layoutState;
    layoutState2 = [stateCopy layoutState];
    v14 = [layoutState2 isEqual:self->_layoutState];

    if ((v14 & 1) == 0)
    {
      layoutState3 = [stateCopy layoutState];
      v16 = [layoutState3 copy];
      layoutState = self->_layoutState;
      self->_layoutState = v16;

      [(TIKeyboardInputManager *)self syncToLayoutState:self->_layoutState];
    }
  }

  keyLayout = [stateCopy keyLayout];
  [(TIKeyboardInputManager *)self setKeyLayout:keyLayout];

  if (changeCopy)
  {
    v19 = +[TIConnectionsMetricsTracker sharedInstance];
    [v19 setInputContextDidChange:1];
  }

  -[TIKeyboardInputManager setAutoCorrects:](self, "setAutoCorrects:", [stateCopy autocorrectionEnabled]);
  -[TIKeyboardInputManager setAutocapitalizationEnabled:](self, "setAutocapitalizationEnabled:", [stateCopy autocapitalizationEnabled]);
  -[TIKeyboardInputManager setAutocapitalizationType:](self, "setAutocapitalizationType:", [stateCopy autocapitalizationType]);
  -[TIKeyboardInputManager setKeyboardEventsLagging:](self, "setKeyboardEventsLagging:", [stateCopy keyboardEventsLagging]);
  -[TIKeyboardInputManager setInHardwareKeyboardMode:](self, "setInHardwareKeyboardMode:", [stateCopy hardwareKeyboardMode]);
  -[TIKeyboardInputManager setInSplitKeyboardMode:](self, "setInSplitKeyboardMode:", [stateCopy splitKeyboardMode]);
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  -[TIKeyboardInputManager setInTypeToSiriMode:](self, "setInTypeToSiriMode:", [inputMode isSiriMode]);

  [(TIKeyboardInputManager *)self syncInputStringToKeyboardState:stateCopy afterContextChange:changeCopy];
  if (![stateCopy wordLearningEnabled])
  {
    selfCopy2 = self;
    v24 = 0;
    goto LABEL_17;
  }

  if (!self->_didInitialSync || changeCopy || ([stateCopy documentState], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "documentIsEmpty"), v21, v22))
  {
    selfCopy2 = self;
    v24 = 1;
LABEL_17:
    [(TIKeyboardInputManager *)selfCopy2 setLearnsCorrection:v24];
  }

  if (![stateCopy secureTextEntry] && TI_DEVICE_UNLOCKED())
  {
    m_impl = self->m_impl;
    if (m_impl)
    {
      v26 = m_impl[33];
      if (v26)
      {
        inputMode2 = [(TIKeyboardInputManagerBase *)self inputMode];
        KB::DictionaryContainer::load_dynamic_dict(v26, [inputMode2 isSiriMode]);
      }
    }

    [(TITextCheckerExemptions *)self->_textCheckerExemptions setAssertsObservers:1];
  }

  v28 = self->m_impl;
  if (v28)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    v28[731] = [keyboardState autocapitalizationEnabled];
  }

  [(TIKeyboardInputManager *)self installTypologyTraceLogger];
  emojiCandidateGenerator = [(TIKeyboardInputManager *)self emojiCandidateGenerator];
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  [emojiCandidateGenerator updateEmojiStatusForKeyboardState:keyboardState2];

  v32 = +[TIAppAutofillManager sharedInstance];
  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  [v32 pushQueuedCredentialIfNecessaryForKeyboardState:keyboardState3];

  v34 = [TIKBAnalyticsMetricsContext alloc];
  languageSelectionController = [(TIKeyboardInputManager *)self languageSelectionController];
  activeInputModes = [languageSelectionController activeInputModes];
  testingParameters = [(TIKeyboardInputManager *)self testingParameters];
  v38 = [(TIKBAnalyticsMetricsContext *)v34 initWithKeyboardState:stateCopy activeInputModes:activeInputModes testingParameters:testingParameters];

  counterChangeCache = self->_counterChangeCache;
  statisticChanges = [stateCopy statisticChanges];
  [(TICounterChangeCache *)counterChangeCache addStatisticChanges:statisticChanges withContext:v38];

  v41 = self->_counterChangeCache;
  mEMORY[0x277D6F490] = [MEMORY[0x277D6F490] sharedInstance];
  flush = [mEMORY[0x277D6F490] flush];
  [(TICounterChangeCache *)v41 addStatisticChanges:flush withContext:v38];

  if (self->m_impl)
  {
    v44 = +[TITrialManagerProxy sharedManager];
    dictionaryInputMode = [(TIKeyboardInputManager *)self dictionaryInputMode];
    locale = [dictionaryInputMode locale];
    v47 = [v44 inputTranscoderAssetsDirectoryURLForLocale:locale];

    __p.__r_.__value_.__s.__data_[0] = 0;
    v56 = 0;
    if (v47)
    {
      absoluteString = [v47 absoluteString];
      std::optional<std::string>::operator=[abi:nn200100]<char const*,void>(&__p, [absoluteString UTF8String]);
    }

    else
    {
      config = [(TIKeyboardInputManager *)self config];
      mlttBundleURL = [config mlttBundleURL];

      if (!mlttBundleURL)
      {
        goto LABEL_32;
      }

      absoluteString = [(TIKeyboardInputManager *)self config];
      mlttBundleURL2 = [absoluteString mlttBundleURL];
      absoluteString2 = [mlttBundleURL2 absoluteString];
      std::optional<std::string>::operator=[abi:nn200100]<char const*,void>(&__p, [absoluteString2 UTF8String]);
    }

LABEL_32:
    (*(**(self->m_impl + 28) + 424))(*(self->m_impl + 28), &__p);
    if (v56 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  self->_didInitialSync = 1;
  v53 = +[TITransientLexiconManager sharedInstance];
  supplementalLexicons = [v53 supplementalLexicons];
  objc_storeWeak(&self->_currentCandidateGenerationContextSupplementalLexicons, supplementalLexicons);
}

- (BOOL)updateAdaptationContextToKeyboardState:(id)state from:(id)from
{
  stateCopy = state;
  fromCopy = from;
  v7 = MEMORY[0x277CCACA8];
  recipientIdentifier = [stateCopy recipientIdentifier];
  recipientIdentifier2 = [fromCopy recipientIdentifier];
  if ([v7 _string:recipientIdentifier matchesString:recipientIdentifier2])
  {
    v10 = MEMORY[0x277CCACA8];
    clientIdentifier = [stateCopy clientIdentifier];
    clientIdentifier2 = [fromCopy clientIdentifier];
    v13 = [v10 _string:clientIdentifier matchesString:clientIdentifier2] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (void)willChangeToKeyboardState:(id)state afterContextChange:(BOOL)change
{
  changeCopy = change;
  stateCopy = state;
  documentIdentifier = [stateCopy documentIdentifier];
  if (documentIdentifier)
  {

LABEL_4:
    documentIdentifier2 = [stateCopy documentIdentifier];
    if (documentIdentifier2)
    {
      v10 = documentIdentifier2;
      keyboardState = [(TIKeyboardInputManager *)self keyboardState];
      documentIdentifier3 = [keyboardState documentIdentifier];

      if (documentIdentifier3)
      {
        documentIdentifier4 = [stateCopy documentIdentifier];
        keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
        documentIdentifier5 = [keyboardState2 documentIdentifier];
        v16 = [documentIdentifier4 isEqual:documentIdentifier5];

        if (v16)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_9;
  }

  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  documentIdentifier6 = [keyboardState3 documentIdentifier];

  if (documentIdentifier6)
  {
    goto LABEL_4;
  }

  if (!changeCopy)
  {
    goto LABEL_14;
  }

LABEL_9:
  keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
  textInputTraits = [keyboardState4 textInputTraits];
  recentInputIdentifier = [textInputTraits recentInputIdentifier];

  if (recentInputIdentifier)
  {
    v20 = MEMORY[0x277D6F478];
    keyboardState5 = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState5 documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    v24 = [TIKeyboardInputManager recentsFilePathForIdentifier:recentInputIdentifier];
    [v20 storeInput:contextBeforeInput forSystemIdentifier:recentInputIdentifier atPath:v24];
  }

  if (![(TIKeyboardInputManager *)self usesCandidateSelection])
  {
    revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
    [revisionHistory syncToDocumentState:0];
  }

  v26 = [[TILRUDictionary alloc] initWithMaximumCapacity:20];
  autocorrectionListsForWordsInDocument = self->_autocorrectionListsForWordsInDocument;
  self->_autocorrectionListsForWordsInDocument = v26;

LABEL_14:
  [(TIKeyboardInputManager *)self updateResponseModelForKeyboardState:stateCopy];
}

- (void)syncInputStringToKeyboardState:(id)state afterContextChange:(BOOL)change
{
  changeCopy = change;
  stateCopy = state;
  if ([(TIKeyboardInputManager *)self usesCandidateSelection])
  {
    [(TIKeyboardInputManager *)self syncMarkedTextForKeyboardState:stateCopy afterContextChange:changeCopy];
  }

  else if (changeCopy || !self->_didInitialSync)
  {
    self->_lastHitTestKeycode = -1;
    documentState = [stateCopy documentState];
    [(TIKeyboardInputManager *)self setInputStringFromDocumentState:documentState isDeleteEvent:0];
  }
}

- (void)syncMarkedTextForKeyboardState:(id)state afterContextChange:(BOOL)change
{
  changeCopy = change;
  stateCopy = state;
  inputForMarkedText = [stateCopy inputForMarkedText];
  v7 = inputForMarkedText;
  if (inputForMarkedText)
  {
    v8 = inputForMarkedText;
  }

  else
  {
    v8 = &stru_283FDFAF8;
  }

  v9 = v8;

  v10 = [(__CFString *)v9 length];
  rawInputString = [(TIKeyboardInputManager *)self rawInputString];
  if (objc_msgSend_isEqualToString_(v9))
  {

    if (v10 || !changeCopy)
    {
      documentState = [stateCopy documentState];
      markedText = [documentState markedText];
      v14 = markedText;
      if (markedText)
      {
        v15 = markedText;
      }

      else
      {
        v15 = &stru_283FDFAF8;
      }

      v16 = v15;

      inputString = [(TIKeyboardInputManager *)self inputString];
      isEqualToString = objc_msgSend_isEqualToString_(v16);

      if (isEqualToString)
      {
        [(TIKeyboardInputManager *)self setPhraseBoundaryIfNecessary];
      }

      else
      {
        [(TIKeyboardInputManager *)self setMarkedText];
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  rawInputString2 = [(TIKeyboardInputManager *)self rawInputString];
  v20 = objc_msgSend_isEqualToString_(v9);

  if ((v20 & 1) != 0 || [(TIKeyboardInputManager *)self shouldClearInputOnMarkedTextOutOfSync])
  {
    [(TIKeyboardInputManager *)self clearInput];
    if (changeCopy)
    {
      [(TIKeyboardInputManager *)self inputLocationChanged];
    }

    if (v10)
    {
      v21 = objc_alloc_init(MEMORY[0x277D6F3E8]);
      [v21 setString:v9];
      v22 = [TIKeyboardInputManagerKeyboardContext alloc];
      keyboardState = [(TIKeyboardInputManager *)self keyboardState];
      v24 = [(TIKeyboardInputManagerKeyboardContext *)v22 initWithKeyboardState:keyboardState];

      [(TIKeyboardInputManager *)self addInput:v21 withContext:v24];
    }
  }

LABEL_20:
}

- (void)syncToLayoutState:(id)state
{
  stateCopy = state;
  s_interface_idiom_is_pad = [stateCopy userInterfaceIdiom] == 1;
  if (stateCopy)
  {
    userInterfaceIdiom = [stateCopy userInterfaceIdiom];
  }

  else
  {
    userInterfaceIdiom = -1;
  }

  [(TIKeyboardInputManager *)self setUserInterfaceIdiom:userInterfaceIdiom];
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  [keyboardFeatureSpecialization specializeInputManager:self->m_impl forLayoutState:stateCopy];

  m_impl = self->m_impl;
  if (m_impl)
  {
    (*(*m_impl[28] + 296))(m_impl[28], [(TIKeyboardInputManager *)self usesContinuousPath]);
    v7 = self->m_impl;
    [(TIKeyboardInputManager *)self usesMLTapTyping];
    (*(*v7[28] + 320))();
  }
}

- (void)incrementUsageTrackingKeysForDeleteFromInput
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  deletingBackwardsWillRemoveText = [documentState deletingBackwardsWillRemoveText];

  if (deletingBackwardsWillRemoveText)
  {
    v6 = [(TIKeyboardInputManager *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FAF8]];
    TIStatisticScalarIncrement();
  }

  if (![(TIKeyboardInputManager *)self usesCandidateSelection])
  {
    inputString = [(TIKeyboardInputManager *)self inputString];
    if (![inputString length])
    {
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      documentState2 = [keyboardState2 documentState];
      selectedText = [documentState2 selectedText];

      inputString = selectedText;
    }

    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v11 = [inputString componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
    lastObject = [v11 lastObject];

    if (![lastObject length])
    {
      goto LABEL_17;
    }

    recentAutocorrections = [(TIKeyboardInputManager *)self recentAutocorrections];
    v14 = [recentAutocorrections objectForKey:lastObject];

    recentPredictiveInputSelections = [(TIKeyboardInputManager *)self recentPredictiveInputSelections];
    v16 = [recentPredictiveInputSelections objectForKey:lastObject];

    if (![v14 isAutocorrection] || v16)
    {
      isAutocorrection = [v16 isAutocorrection];
      v17 = MEMORY[0x277D6FAE8];
      if (isAutocorrection)
      {
        v17 = MEMORY[0x277D6FAE0];
      }

      if ((isAutocorrection & 1) == 0 && !v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = MEMORY[0x277D6FAD8];
    }

    v18 = [(TIKeyboardInputManager *)self usageTrackingKeyForStatistic:*v17];
    if (v18)
    {
      v19 = v18;
      TIStatisticScalarIncrement();
    }

LABEL_16:

LABEL_17:
  }
}

- (void)incrementUsageTrackingKeyForAppWithIsSentence:(BOOL)sentence
{
  sentenceCopy = sentence;
  if (![(TIKeyboardInputManager *)self shouldSuppressTokenIDLookups])
  {
    config = [(TIKeyboardInputManager *)self config];
    disableAnalytics = [config disableAnalytics];

    if ((disableAnalytics & 1) == 0)
    {
      if ([TIKeyboardInputManager incrementUsageTrackingKeyForAppWithIsSentence:]::onceToken != -1)
      {
        dispatch_once(&[TIKeyboardInputManager incrementUsageTrackingKeyForAppWithIsSentence:]::onceToken, &__block_literal_global_11663);
      }

      keyboardState = [(TIKeyboardInputManager *)self keyboardState];
      clientIdentifier = [keyboardState clientIdentifier];

      if (objc_msgSend_isEqualToString_(clientIdentifier))
      {
        v8 = MEMORY[0x277D6FBA0];
        v9 = MEMORY[0x277D6FB98];
      }

      else if (objc_msgSend_isEqualToString_(clientIdentifier))
      {
        v8 = MEMORY[0x277D6FB90];
        v9 = MEMORY[0x277D6FB88];
      }

      else if ([clientIdentifier hasPrefix:@"com.apple"])
      {
        v8 = MEMORY[0x277D6FB50];
        v9 = MEMORY[0x277D6FB48];
      }

      else
      {
        v10 = [-[TIKeyboardInputManager incrementUsageTrackingKeyForAppWithIsSentence:]::translationApps containsObject:clientIdentifier];
        v9 = MEMORY[0x277D6FBC8];
        if (v10)
        {
          v8 = MEMORY[0x277D6FC08];
        }

        else
        {
          v11 = [-[TIKeyboardInputManager incrementUsageTrackingKeyForAppWithIsSentence:]::messagingApps containsObject:clientIdentifier];
          if (v11)
          {
            v9 = MEMORY[0x277D6FBF8];
          }

          v8 = MEMORY[0x277D6FBD0];
          if (v11)
          {
            v8 = MEMORY[0x277D6FC00];
          }
        }
      }

      if (sentenceCopy)
      {
        v8 = v9;
      }

      v12 = [(TIKeyboardInputManager *)self usageTrackingKeyForStatistic:*v8];
      TIStatisticScalarIncrement();
    }
  }
}

uint64_t __72__TIKeyboardInputManager_incrementUsageTrackingKeyForAppWithIsSentence___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28400B9A0];
  v1 = [TIKeyboardInputManager incrementUsageTrackingKeyForAppWithIsSentence:]::translationApps;
  [TIKeyboardInputManager incrementUsageTrackingKeyForAppWithIsSentence:]::translationApps = v0;

  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28400B9B8];
  v3 = [TIKeyboardInputManager incrementUsageTrackingKeyForAppWithIsSentence:]::messagingApps;
  [TIKeyboardInputManager incrementUsageTrackingKeyForAppWithIsSentence:]::messagingApps = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)incrementUsageTrackingKey:(id)key
{
  keyCopy = key;
  config = [(TIKeyboardInputManager *)self config];
  disableAnalytics = [config disableAnalytics];

  if ((disableAnalytics & 1) == 0)
  {
    v6 = [(TIKeyboardInputManager *)self usageTrackingKeyForStatistic:keyCopy];
    TIStatisticScalarIncrement();
  }
}

- (void)incrementUsageTrackingKeyForAutocorrectionStatistic:(id)statistic autocorrectionTypes:(unsigned int)types
{
  statisticCopy = statistic;
  config = [(TIKeyboardInputManager *)self config];
  disableAnalytics = [config disableAnalytics];

  if ((disableAnalytics & 1) == 0)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    layoutState = [keyboardState layoutState];
    inputMode = [layoutState inputMode];
    TIStatisticScalarIncrementAutocorrectionKey();
  }
}

- (id)usageTrackingKeyForStatistic:(id)statistic
{
  statisticCopy = statistic;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  layoutState = [keyboardState layoutState];
  inputMode = [layoutState inputMode];
  v8 = TIStatisticGetKeyForInputMode();

  return v8;
}

- (void)popCandidateGenerationContextFromStack
{
  candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
  [candidateHandlerForOpenRequest close];

  [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:0];
  candidateHandlerForOpenRequestStack = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequestStack];
  v5 = [candidateHandlerForOpenRequestStack count];

  if (v5)
  {
    candidateHandlerForOpenRequestStack2 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequestStack];
    lastObject = [candidateHandlerForOpenRequestStack2 lastObject];
    [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:lastObject];

    candidateHandlerForOpenRequestStack3 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequestStack];
    [candidateHandlerForOpenRequestStack3 removeLastObject];
  }
}

- (void)pushCandidateGenerationContextOnStack
{
  candidateHandlerForOpenRequestStack = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequestStack];

  if (!candidateHandlerForOpenRequestStack)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequestStack:array];
  }

  candidateHandlerForOpenRequestStack2 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequestStack];
  candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
  [candidateHandlerForOpenRequestStack2 addObject:candidateHandlerForOpenRequest];

  [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:0];
}

- (BOOL)closeCandidateGenerationContextWithResults:(id)results forced:(BOOL)forced
{
  forcedCopy = forced;
  [(TIKeyboardInputManager *)self pushCandidateGenerationContextWithResults:results];
  candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];

  if (!candidateHandlerForOpenRequest)
  {
    forcedCopy = 0;
  }

  if (forcedCopy)
  {
    candidateHandlerForOpenRequest2 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
    [candidateHandlerForOpenRequest2 close];

    [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:0];
  }

  return forcedCopy;
}

- (BOOL)closeCandidateGenerationContextWithResults:(id)results
{
  resultsCopy = results;
  candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
  LOBYTE(self) = -[TIKeyboardInputManager closeCandidateGenerationContextWithResults:forced:](self, "closeCandidateGenerationContextWithResults:forced:", resultsCopy, [candidateHandlerForOpenRequest asynchronous] ^ 1);

  return self;
}

- (void)pushCandidateGenerationContextWithResults:(id)results
{
  resultsCopy = results;
  candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];

  if (candidateHandlerForOpenRequest)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    inputForMarkedText = [keyboardState inputForMarkedText];

    if (inputForMarkedText)
    {
      markedText = [(TIKeyboardInputManager *)self markedText];
      [resultsCopy setUncommittedText:markedText];
    }

    if (resultsCopy)
    {
      proactiveTriggers = [resultsCopy proactiveTriggers];
      firstObject = [proactiveTriggers firstObject];
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      [(TIKeyboardInputManager *)self trackProactiveMetrics:firstObject keyboardState:keyboardState2];

      v11 = objc_alloc(MEMORY[0x277D6F328]);
      candidates = [resultsCopy candidates];
      v13 = [v11 initWithCandidates:candidates];

      typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
      keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
      [typingSessionMonitor candidatesOffered:v13 keyboardState:keyboardState3];
    }

    candidateHandlerForOpenRequest2 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
    [candidateHandlerForOpenRequest2 pushCandidateResultSet:resultsCopy];
  }
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler
{
  handlerCopy = handler;
  [(TIKeyboardInputManager *)self closeCandidateGenerationContextWithResults:0 forced:1];
  [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:handlerCopy];

  candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
  [candidateHandlerForOpenRequest open];
}

- (void)scheduleLinguisticResourceUpdateWithReason:(id)reason
{
  reasonCopy = reason;
  if (![(TIKeyboardInputManager *)self isLinguisticResourceUpdateScheduled])
  {
    [(TIKeyboardInputManager *)self setLinguisticResourceStatus:1 reason:reasonCopy];
  }
}

- (BOOL)isStringBasedModel
{
  v2 = *(self->m_impl + 34);
  if (v2)
  {
    LOBYTE(v2) = (*(*v2 + 24))();
  }

  return v2;
}

- (TISmartPunctuationOptions)smartOptions
{
  smartOptions = self->_smartOptions;
  if (!smartOptions)
  {
    v4 = MEMORY[0x277D6F488];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    locale = [inputMode locale];
    v7 = [v4 smartPunctuationOptionsForLocale:locale];
    v8 = self->_smartOptions;
    self->_smartOptions = v7;

    smartOptions = self->_smartOptions;
  }

  return smartOptions;
}

- (id)newInputManagerState
{
  v3 = objc_alloc_init(MEMORY[0x277D6F3F0]);
  [v3 setCanHandleKeyHitTest:{-[TIKeyboardInputManager canHandleKeyHitTest](self, "canHandleKeyHitTest")}];
  [v3 setIgnoresDeadKeys:{-[TIKeyboardInputManager ignoresDeadKeys](self, "ignoresDeadKeys")}];
  [v3 setShouldExtendPriorWord:{-[TIKeyboardInputManager shouldExtendPriorWord](self, "shouldExtendPriorWord")}];
  [v3 setSupportsReversionUI:{-[TIKeyboardInputManager supportsReversionUI](self, "supportsReversionUI")}];
  [v3 setSuppliesCompletions:{-[TIKeyboardInputManager suppliesCompletions](self, "suppliesCompletions")}];
  [v3 setSupportsSetPhraseBoundary:{-[TIKeyboardInputManager supportsSetPhraseBoundary](self, "supportsSetPhraseBoundary")}];
  [v3 setSuppressCompletionsForFieldEditor:{-[TIKeyboardInputManager suppressCompletionsForFieldEditor](self, "suppressCompletionsForFieldEditor")}];
  [v3 setUsesAutoDeleteWord:{-[TIKeyboardInputManager usesAutoDeleteWord](self, "usesAutoDeleteWord")}];
  [v3 setAutoquoteType:{-[TIKeyboardInputManager autoquoteType](self, "autoquoteType")}];
  [v3 setUsesCandidateSelection:{-[TIKeyboardInputManager usesCandidateSelection](self, "usesCandidateSelection")}];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  [v3 setUsesAutocorrectionLists:{objc_msgSend(keyboardState, "autocorrectionListUIDisplayed")}];

  [v3 setCommitsAcceptedCandidate:{-[TIKeyboardInputManager commitsAcceptedCandidate](self, "commitsAcceptedCandidate")}];
  [v3 setNewInputAcceptsUserSelectedCandidate:{-[TIKeyboardInputManager newInputAcceptsUserSelectedCandidate](self, "newInputAcceptsUserSelectedCandidate")}];
  [v3 setInitialCandidateBatchCount:{-[TIKeyboardInputManager initialCandidateBatchCount](self, "initialCandidateBatchCount")}];
  wordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
  [v3 setWordSeparator:wordSeparator];

  [v3 setShouldAddModifierSymbolsToWordCharacters:{-[TIKeyboardInputManager shouldAddModifierSymbolsToWordCharacters](self, "shouldAddModifierSymbolsToWordCharacters")}];
  wordCharacters = [(TIKeyboardInputManager *)self wordCharacters];
  [v3 setWordCharacters:wordCharacters];

  supplementalLexiconWordExtraCharacters = [(TIKeyboardInputManager *)self supplementalLexiconWordExtraCharacters];
  [v3 setSupplementalLexiconWordExtraCharacters:supplementalLexiconWordExtraCharacters];

  terminatorsPreventingAutocorrection = [(TIKeyboardInputManager *)self terminatorsPreventingAutocorrection];
  [v3 setTerminatorsPreventingAutocorrection:terminatorsPreventingAutocorrection];

  terminatorsDeletingAutospace = [(TIKeyboardInputManager *)self terminatorsDeletingAutospace];
  [v3 setTerminatorsDeletingAutospace:terminatorsDeletingAutospace];

  keyboardBehaviors = [(TIKeyboardInputManager *)self keyboardBehaviors];
  [v3 setKeyboardBehaviors:keyboardBehaviors];

  [v3 setUsesContinuousPath:{-[TIKeyboardInputManager usesContinuousPath](self, "usesContinuousPath")}];
  config = [(TIKeyboardInputManager *)self config];
  [v3 setUsesContinuousPathProgressiveCandidates:{objc_msgSend(config, "usesContinuousPathProgressiveCandidates")}];

  config2 = [(TIKeyboardInputManager *)self config];
  [v3 setInsertsSpaceAfterPredictiveInput:{objc_msgSend(config2, "insertsSpaceAfterPredictiveInput")}];

  config3 = [(TIKeyboardInputManager *)self config];
  [v3 setIgnoreContinuousPathRequirements:{objc_msgSend(config3, "shouldIgnoreCPRequirements")}];

  lastAcceptedText = [(TIKeyboardInputManager *)self lastAcceptedText];
  if (lastAcceptedText)
  {
    lastAcceptedText2 = [(TIKeyboardInputManager *)self lastAcceptedText];
    [v3 setLearningFlagsMaskForLastAcceptedCandidate:{objc_msgSend(lastAcceptedText2, "learningFlagsMask")}];
  }

  else
  {
    [v3 setLearningFlagsMaskForLastAcceptedCandidate:0];
  }

  return v3;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  [(TICounterChangeCache *)self->_counterChangeCache close];
  v3 = TIInputManagerOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x277CCACA8];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    v6 = [v4 stringWithFormat:@"%s Removing input manager for %@", "-[TIKeyboardInputManager dealloc]", inputMode];
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  typingSessionMonitor = self->_typingSessionMonitor;
  if (typingSessionMonitor)
  {
    [(TITypingSessionMonitor *)typingSessionMonitor tearDown];
  }

  [(TILanguageSelectionController *)self->_languageSelectionController setDelegate:0];
  [(TITextCheckerExemptions *)self->_textCheckerExemptions setAssertsObservers:0];
  m_impl = self->m_impl;
  if (m_impl)
  {
    (*(*m_impl + 8))(m_impl);
    self->m_impl = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(TIRevisionHistory *)self->_revisionHistory setDelegate:0];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self];

  candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
  [candidateHandlerForOpenRequest close];

  [(TIKeyboardInputManager *)self setCandidateHandlerForOpenRequest:0];
  v12.receiver = self;
  v12.super_class = TIKeyboardInputManager;
  [(TIKeyboardInputManager *)&v12 dealloc];
}

- (TIKeyboardInputManager)initWithConfig:(id)config keyboardState:(id)state languageSelectionController:(id)controller
{
  objc_storeStrong(&self->_languageSelectionController, controller);
  controllerCopy = controller;
  stateCopy = state;
  configCopy = config;
  v12 = [(TIKeyboardInputManager *)self initWithConfig:configCopy keyboardState:stateCopy];

  [(TILanguageSelectionController *)v12->_languageSelectionController setDelegate:v12];
  return v12;
}

- (TIKeyboardInputManager)initWithConfig:(id)config keyboardState:(id)state
{
  v40 = *MEMORY[0x277D85DE8];
  configCopy = config;
  stateCopy = state;
  inputMode = [configCopy inputMode];
  v39.receiver = self;
  v39.super_class = TIKeyboardInputManager;
  v10 = [(TIKeyboardInputManagerBase *)&v39 initWithInputMode:inputMode keyboardState:stateCopy];

  if (v10)
  {
    [(TIKeyboardInputManager *)v10 setKeyboardState:stateCopy];
    v11 = +[TIKeyboardAssertionManager sharedAssertionManager];
    [v11 addAssertionForObject:v10];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_dynamicDictionariesRemoved_ name:@"TIKeyboardInputManagerDynamicDictionariesRemovedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel_dynamicResourceDirectorySet_ name:@"TIKeyboardInputManagerDynamicResourceDirectorySetNotification" object:0];

    v14 = +[TIAppAutofillManager sharedInstance];
    secureCandidateRenderer = [v14 secureCandidateRenderer];
    inputMode2 = [(TIKeyboardInputManagerBase *)v10 inputMode];
    languageWithRegion = [inputMode2 languageWithRegion];
    [secureCandidateRenderer setLocaleIdentifier:languageWithRegion];

    objc_storeStrong(&v10->_config, config);
    v18 = [[TILRUDictionary alloc] initWithMaximumCapacity:200];
    autocorrectionHistory = v10->_autocorrectionHistory;
    v10->_autocorrectionHistory = v18;

    v20 = [[TILRUDictionary alloc] initWithMaximumCapacity:12];
    recentAutocorrections = v10->_recentAutocorrections;
    v10->_recentAutocorrections = v20;

    v22 = [[TILRUDictionary alloc] initWithMaximumCapacity:12];
    recentPredictiveInputSelections = v10->_recentPredictiveInputSelections;
    v10->_recentPredictiveInputSelections = v22;

    v24 = [[TILRUDictionary alloc] initWithMaximumCapacity:20];
    rejectedAutocorrectionsDisplayedOrInserted = v10->_rejectedAutocorrectionsDisplayedOrInserted;
    v10->_rejectedAutocorrectionsDisplayedOrInserted = v24;

    v26 = [[TILRUDictionary alloc] initWithMaximumCapacity:20];
    rejectedAutocorrectionsDisplayedOrInsertedInverse = v10->_rejectedAutocorrectionsDisplayedOrInsertedInverse;
    v10->_rejectedAutocorrectionsDisplayedOrInsertedInverse = v26;

    v28 = [[TILRUDictionary alloc] initWithMaximumCapacity:20];
    autocorrectionForCurrentStem = v10->_autocorrectionForCurrentStem;
    v10->_autocorrectionForCurrentStem = v28;

    v30 = [[TILRUDictionary alloc] initWithMaximumCapacity:20];
    rejectedAutocorrections = v10->_rejectedAutocorrections;
    v10->_rejectedAutocorrections = v30;

    v32 = [[TILRUDictionary alloc] initWithMaximumCapacity:20];
    autocorrectionListsSuggestedForCurrentInput = v10->_autocorrectionListsSuggestedForCurrentInput;
    v10->_autocorrectionListsSuggestedForCurrentInput = v32;

    v34 = [[TILRUDictionary alloc] initWithMaximumCapacity:20];
    autocorrectionListsForWordsInDocument = v10->_autocorrectionListsForWordsInDocument;
    v10->_autocorrectionListsForWordsInDocument = v34;

    v10->_isEditingWordPrefix = 0;
    v10->m_impl = [(TIKeyboardInputManager *)v10 initImplementation];
    config = [(TIKeyboardInputManager *)v10 config];
    [config isTesting];

    config2 = [(TIKeyboardInputManager *)v10 config];
    [config2 isTesting];

    [(TIKeyboardInputManager *)v10 config];
    [objc_claimAutoreleasedReturnValue() allowsSpaceCorrections];
    operator new();
  }

  return 0;
}

double __55__TIKeyboardInputManager_initWithConfig_keyboardState___block_invoke(uint64_t a1, const void *a2)
{
  if (a2)
  {
    return TIInputManager::set_filter_specification_overrides(*(*(a1 + 32) + 40), a2);
  }

  return result;
}

void __55__TIKeyboardInputManager_initWithConfig_keyboardState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleTrialParametersUpdateCallback];
    WeakRetained = v2;
  }
}

- (TIKeyboardInputManager)initWithInputMode:(id)mode keyboardState:(id)state
{
  stateCopy = state;
  v7 = [TIKeyboardInputManagerConfig configurationForInputMode:mode];
  v8 = [(TIKeyboardInputManager *)self initWithConfig:v7 keyboardState:stateCopy];

  return v8;
}

+ (id)offlineLearningHandleForInputMode:(id)mode
{
  modeCopy = mode;
  normalizedIdentifier = [modeCopy normalizedIdentifier];
  v5 = TIGetInputModeProperties();

  v6 = [v5 objectForKey:*MEMORY[0x277D6F6D8]];
  bOOLValue = [v6 BOOLValue];

  v8 = [[TILanguageModelOfflineLearningHandleFavonius alloc] initWithInputMode:modeCopy];
  [(TILanguageModelOfflineLearningHandle *)v8 setValid:bOOLValue];

  return v8;
}

+ (int)shiftContextForShiftState:(int)state autocapitalizationType:(unint64_t)type
{
  if (type == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (type == 3)
  {
    v4 = 4;
  }

  if (state != 2)
  {
    v4 = 0;
  }

  if (state == 3)
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  if (state == 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (int64_t)addTouch:(id)touch shouldHitTest:(BOOL)test
{
  testCopy = test;
  touchCopy = touch;
  if (self->m_impl)
  {
    if ([(TIKeyboardInputManager *)self shouldMonitorTypingSession])
    {
      typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
      [typingSessionMonitor addTouchEvent:touchCopy];
    }

    m_impl = self->m_impl;
    [touchCopy location];
    v10 = v9;
    v12 = v11;
    stage = [touchCopy stage];
    [touchCopy timestamp];
    v15 = v14;
    pathIndex = [touchCopy pathIndex];
    fingerID = [touchCopy fingerID];
    [touchCopy radius];
    v19 = v18;
    v20 = TIInputManager::add_touch(m_impl, stage, pathIndex, fingerID, [touchCopy forcedKeyCode], objc_msgSend(touchCopy, "continuousPathState"), testCopy, v10, v12, v15, v19);
    v21 = v20;
    if ([touchCopy stage] != 2 && v20 != -2)
    {
      goto LABEL_14;
    }

    if (v20 < 0)
    {
      if (v20 != -2 || self->_lastHitTestKeycode < 0)
      {
        goto LABEL_13;
      }
    }

    else if (self->_lastHitTestKeycode != -2)
    {
      goto LABEL_13;
    }

    [(TIKeyboardInputManager *)self dropInput];
LABEL_13:
    self->_lastHitTestKeycode = v20;
LABEL_14:
    [(TIKeyboardInputManager *)self setPreviousTouchEvent:touchCopy];
    goto LABEL_15;
  }

  v21 = 0;
LABEL_15:

  return v21;
}

- (BOOL)canHandleKeyHitTest
{
  if (TIGetKeyboardDisableHitTestingValue(void)::onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardDisableHitTestingValue(void)::onceToken, &__block_literal_global_1333);
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [mEMORY[0x277D6F470] valueForPreferenceKey:@"KeyboardDisableHitTesting"];

  LOBYTE(mEMORY[0x277D6F470]) = [v4 BOOLValue];
  if (mEMORY[0x277D6F470])
  {
    return 0;
  }

  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  canHandleKeyHitTest = [keyboardFeatureSpecialization canHandleKeyHitTest];

  return canHandleKeyHitTest;
}

- (id)externalInputString
{
  v9 = *MEMORY[0x277D85DE8];
  TIInputManager::input_substring((self->m_impl + 8), 0, -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3), v7);
  v4 = KB::ns_string(v7, v3);
  v5 = [(TIKeyboardInputManager *)self internalStringToExternal:v4];

  if (v8 && v7[6] == 1)
  {
    free(v8);
  }

  return v5;
}

- (id)externalInputStem
{
  v10 = *MEMORY[0x277D85DE8];
  TIInputManager::input_substring((self->m_impl + 8), 0, *(self->m_impl + 24), v8);
  v4 = KB::ns_string(v8, v3);
  v5 = [(TIKeyboardInputManager *)self internalStringToExternal:v4];

  if (v9)
  {
    v6 = v8[6] == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v9);
  }

  return v5;
}

- (id)internalInputString
{
  v8 = *MEMORY[0x277D85DE8];
  TIInputManager::input_substring((self->m_impl + 8), 0, -858993459 * ((*(self->m_impl + 2) - *(self->m_impl + 1)) >> 3), v6);
  v3 = KB::ns_string(v6, v2);
  if (v7)
  {
    v4 = v6[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v7);
  }

  return v3;
}

- (id)internalInputStem
{
  v8 = *MEMORY[0x277D85DE8];
  TIInputManager::input_substring((self->m_impl + 8), 0, *(self->m_impl + 24), v6);
  v3 = KB::ns_string(v6, v2);
  if (v7)
  {
    v4 = v6[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v7);
  }

  return v3;
}

- (void)fetchAssetAvailabilityStatusForInputMode:(id)mode completionHandler:(id)handler
{
  handlerCopy = handler;
  modeCopy = mode;
  v7 = +[TIAssetManager sharedAssetManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__TIKeyboardInputManager_TestingSupport__fetchAssetAvailabilityStatusForInputMode_completionHandler___block_invoke;
  v9[3] = &unk_2787312C0;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 ddsAssetsForInputMode:modeCopy cachedOnly:0 completion:v9];
}

uint64_t __101__TIKeyboardInputManager_TestingSupport__fetchAssetAvailabilityStatusForInputMode_completionHandler___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 32))
  {
    v2 = result;
    [a2 count];
    v3 = *(*(v2 + 32) + 16);

    return v3();
  }

  return result;
}

- (void)fetchTypingSessionParams:(id)params
{
  paramsCopy = params;
  languageSelectionController = [(TIKeyboardInputManager *)self languageSelectionController];
  activeInputModes = [languageSelectionController activeInputModes];

  wordSeparator = [(TIKeyboardInputManager *)self wordSeparator];
  testingParameters = [(TIKeyboardInputManager *)self testingParameters];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__TIKeyboardInputManager_TestingSupport__fetchTypingSessionParams___block_invoke;
  v14[3] = &unk_278731808;
  v15 = activeInputModes;
  v16 = wordSeparator;
  v17 = testingParameters;
  v18 = paramsCopy;
  v10 = paramsCopy;
  v11 = testingParameters;
  v12 = wordSeparator;
  v13 = activeInputModes;
  [(TIKeyboardInputManager *)self fetchAssetAvailabilityStatusForInputMode:inputMode completionHandler:v14];
}

void __67__TIKeyboardInputManager_TestingSupport__fetchTypingSessionParams___block_invoke(void *a1, uint64_t a2)
{
  v3 = [[TITypingSessionParams alloc] initWithActiveInputModes:a1[4] wordSeparator:a1[5] testingParameters:a1[6] assetAvailabilityStatus:a2];
  (*(a1[7] + 16))();
}

- (unint64_t)userFrequencyOfWord:(id)word lexiconID:(unsigned int)d
{
  v12 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (!m_impl)
  {
    return 0;
  }

  v5 = *&d;
  v6 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:word];
  KB::utf8_string(v6, v10);
  v7 = (*(**(m_impl[33] + 24) + 64))(*(m_impl[33] + 24), v10, v5);
  if (v11)
  {
    v8 = v10[6] == 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    free(v11);
  }

  return v7;
}

- (RefPtr<KB::DictionaryContainer>)getDictionary
{
  v3 = *(self->m_impl + 33);
  *v2 = v3;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  return self;
}

- (BOOL)dictionaryContainsWord:(id)word
{
  v14 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  v5 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:wordCopy];
  v6 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:wordCopy];

  m_impl = self->m_impl;
  KB::utf8_string(v6, v12);
  KB::utf8_string(v5, v10);
  v8 = TIInputManager::dictionary_contains_word(m_impl, v12, v10, 0);
  if (v11 && v10[6] == 1)
  {
    free(v11);
  }

  if (v13 && v12[6] == 1)
  {
    free(v13);
  }

  return v8;
}

- (void)logToTypologyRecorderWithString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    ptr = self->m_typology_recorder.__ptr_;
    if (ptr)
    {
      v7 = stringCopy;
      CFStringAppend(*(ptr + 1), stringCopy);
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](stringCopy, v5);
}

- (BOOL)isTypologyEnabled
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [mEMORY[0x277D6F470] BOOLForKey:53];

  return v3;
}

- (void)storeLanguageModelDynamicDataIncludingCache
{
  m_impl = self->m_impl;
  if (m_impl)
  {
    v3 = m_impl[34];
    if (v3)
    {
      (*(*v3 + 592))(v3, 1);
      v4 = +[TIResponseKitManager sharedTIResponseKitManager];
      [v4 persistResponseKitDynamicDataToDisk];
    }
  }
}

- (void)clearHumanReadableTrace
{
  ptr = self->m_typology_recorder.__ptr_;
  if (ptr)
  {
    Mutable = CFStringCreateMutable(0, 0);
    v4 = *(ptr + 1);
    if (v4)
    {
      CFRelease(v4);
    }

    *(ptr + 1) = Mutable;
  }
}

- (id)humanReadableTrace
{
  ptr = self->m_typology_recorder.__ptr_;
  if (ptr)
  {
    v4 = *(ptr + 1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addSynthesizedTouchToInput:(id)input keyboardState:(id)state
{
  inputCopy = input;
  stateCopy = state;
  v8 = objc_msgSend_string(inputCopy);
  v9 = [v8 length];

  if (v9)
  {
    v10 = objc_msgSend_string(inputCopy);
    lowercaseString = [v10 lowercaseString];

    v12 = objc_msgSend_string(inputCopy);
    isEqualToString = objc_msgSend_isEqualToString_(lowercaseString);

    if ((isEqualToString & 1) == 0)
    {
      [inputCopy setUppercase:1];
      if ([(TIKeyboardInputManager *)self nextInputWouldStartSentence])
      {
        [inputCopy setAutoshifted:1];
      }
    }
  }

  else
  {
    lowercaseString = 0;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x5012000000;
  v30 = __Block_byref_object_copy__1248;
  v31 = __Block_byref_object_dispose__1249;
  v32 = "";
  v14 = *(MEMORY[0x277CBF398] + 16);
  v33 = *MEMORY[0x277CBF398];
  v34 = v14;
  if (lowercaseString || [inputCopy isBackspace])
  {
    keyLayout = [stateCopy keyLayout];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __98__TIKeyboardInputManager_TIHardwareKeyboardExperiments__addSynthesizedTouchToInput_keyboardState___block_invoke;
    v22[3] = &unk_278731798;
    v23 = lowercaseString;
    v24 = inputCopy;
    v25 = &v27;
    v26 = &v35;
    [keyLayout enumerateKeysUsingBlock:v22];
  }

  if (*(v36 + 6) == -1)
  {
    [inputCopy setPopupVariant:1];
  }

  else
  {
    MidX = CGRectGetMidX(*(v28 + 6));
    MidY = CGRectGetMidY(*(v28 + 6));
    v18 = MEMORY[0x277D6F440];
    v20 = KB::system_uptime(v19);
    v21 = [v18 touchEventWithStage:2 location:0 radius:*(v36 + 6) timestamp:MidX pathIndex:MidY forcedKeyCode:{12.0, v20}];
    [inputCopy setTouchEvent:v21];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v35, 8);
}

void __98__TIKeyboardInputManager_TIHardwareKeyboardExperiments__addSynthesizedTouchToInput_keyboardState___block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, double a5, double a6, double a7, double a8)
{
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if ((objc_msgSend_isEqualToString_(*(a1 + 32)) & 1) != 0 || [*(a1 + 40) isBackspace] && objc_msgSend_isEqualToString_(v16))
  {
    v15 = *(*(a1 + 48) + 8);
    v15[6] = a5;
    v15[7] = a6;
    v15[8] = a7;
    v15[9] = a8;
    *(*(*(a1 + 56) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (BOOL)isHardwareKeyboardAutocorrectionEnabled
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  if (!hardwareKeyboardMode)
  {
    return 0;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  autocorrectionEnabled = [keyboardState2 autocorrectionEnabled];

  return autocorrectionEnabled;
}

- (id)shortcutConversionForDocumentState:(id)state
{
  stateCopy = state;
  if ([(TIKeyboardInputManager *)self shouldSkipShortcutConversionForDocumentState:stateCopy])
  {
    v5 = 0;
  }

  else
  {
    contextBeforeInput = [stateCopy contextBeforeInput];
    v5 = [(TIKeyboardInputManager *)self shortcutConversionForString:contextBeforeInput stringStartsInMiddleOfWord:0];
  }

  return v5;
}

- (id)shortcutCompletionsForDocumentState:(id)state
{
  stateCopy = state;
  if ([(TIKeyboardInputManager *)self shouldSkipShortcutConversionForDocumentState:stateCopy])
  {
    v5 = 0;
  }

  else
  {
    contextBeforeInput = [stateCopy contextBeforeInput];
    v7 = [(TIKeyboardInputManager *)self shortcutSearchRangeForString:contextBeforeInput];
    if (v8 <= 0x40)
    {
      v9 = v7;
      v10 = v8;
      v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __82__TIKeyboardInputManager_ShortcutConversion__shortcutCompletionsForDocumentState___block_invoke;
      v19 = &unk_278733528;
      selfCopy = self;
      v12 = v11;
      v21 = v12;
      [(TIKeyboardInputManager *)self enumerateWordSuffixesOfString:contextBeforeInput inRange:v9 usingBlock:v10, &v16];
      v13 = [v12 length];
      if (v13)
      {
        uppercaseString = [v12 uppercaseString];
        [v12 appendString:uppercaseString];

        v13 = [objc_alloc(MEMORY[0x277D6F330]) initWithCharactersInString:v12];
      }

      v5 = v13;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void __82__TIKeyboardInputManager_ShortcutConversion__shortcutCompletionsForDocumentState___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) externalStringToInternal:a2];
  KB::utf8_string(v3, v12);

  TIInputManager::single_character_completions_for_shortcut_prefix(*(*(a1 + 32) + 40), v12, v4, v9);
  if (v9[0])
  {
    v6 = *(a1 + 32);
    v7 = KB::ns_string(v9, v5);
    v8 = [v6 internalStringToExternal:v7];

    [*(a1 + 40) appendString:v8];
  }

  if (v11 && v10 == 1)
  {
    free(v11);
  }

  if (v13)
  {
    if (v12[6] == 1)
    {
      free(v13);
    }
  }
}

- (unint64_t)maximumShortcutLengthAllowed
{
  m_impl = self->m_impl;
  if (m_impl && (v3 = *(*(m_impl[33] + 24) + 24)) != 0 && (v4 = *v3) != 0)
  {
    return *(v4 + 88);
  }

  else
  {
    return 0;
  }
}

- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method
{
  v13[1] = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  longPredictionListEnabled = [keyboardState longPredictionListEnabled];

  if (longPredictionListEnabled)
  {
    v8 = objc_alloc(MEMORY[0x277D6F3C8]);
    v9 = [MEMORY[0x277CBEB70] orderedSetWithArray:candidatesCopy];
    v10 = [v8 initWithTitle:0 candidates:v9];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)titleForSortingMethod:(id)method
{
  methodCopy = method;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  longPredictionListEnabled = [keyboardState longPredictionListEnabled];

  if (longPredictionListEnabled)
  {
    v7 = methodCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sortingMethods
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  longPredictionListEnabled = [keyboardState longPredictionListEnabled];

  if (longPredictionListEnabled)
  {
    return &unk_28400B9D0;
  }

  else
  {
    return 0;
  }
}

- (id)openingQuotes
{
  openingQuotes = self->_openingQuotes;
  if (!openingQuotes)
  {
    v4 = [objc_alloc(MEMORY[0x277D6F458]) initWithCharactersInString:@"“‘"];
    smartOptions = [(TIKeyboardInputManager *)self smartOptions];
    leftDoubleQuote = [smartOptions leftDoubleQuote];
    [v4 addCharactersInString:leftDoubleQuote];

    smartOptions2 = [(TIKeyboardInputManager *)self smartOptions];
    leftSingleQuote = [smartOptions2 leftSingleQuote];
    [v4 addCharactersInString:leftSingleQuote];

    v9 = self->_openingQuotes;
    self->_openingQuotes = v4;

    openingQuotes = self->_openingQuotes;
  }

  return openingQuotes;
}

- (id)closingQuotes
{
  closingQuotes = self->_closingQuotes;
  if (!closingQuotes)
  {
    v4 = [objc_alloc(MEMORY[0x277D6F458]) initWithCharactersInString:@"”’"];
    smartOptions = [(TIKeyboardInputManager *)self smartOptions];
    rightDoubleQuote = [smartOptions rightDoubleQuote];
    [v4 addCharactersInString:rightDoubleQuote];

    smartOptions2 = [(TIKeyboardInputManager *)self smartOptions];
    rightSingleQuote = [smartOptions2 rightSingleQuote];
    [v4 addCharactersInString:rightSingleQuote];

    v9 = self->_closingQuotes;
    self->_closingQuotes = v4;

    closingQuotes = self->_closingQuotes;
  }

  return closingQuotes;
}

- (id)spaceDeletingCharacters
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  spaceDeletingCharacters = [keyboardFeatureSpecialization spaceDeletingCharacters];

  return spaceDeletingCharacters;
}

- (id)terminatorsPrecedingAutospace
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__TIKeyboardInputManager_ResultSpecializations__terminatorsPrecedingAutospace__block_invoke;
  block[3] = &unk_278733308;
  block[4] = self;
  if ([TIKeyboardInputManager(ResultSpecializations) terminatorsPrecedingAutospace]::onceToken != -1)
  {
    dispatch_once(&[TIKeyboardInputManager(ResultSpecializations) terminatorsPrecedingAutospace]::onceToken, block);
  }

  return [TIKeyboardInputManager(ResultSpecializations) terminatorsPrecedingAutospace]::result;
}

void __78__TIKeyboardInputManager_ResultSpecializations__terminatorsPrecedingAutospace__block_invoke(uint64_t a1)
{
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68]);
  v2 = [*(a1 + 32) sentenceDelimitingCharacters];
  [v6 appendString:v2];

  v3 = [*(a1 + 32) clauseDelimitingCharacters];
  [v6 appendString:v3];

  [v6 appendString:{@", .;:?!]}”’"}]);
  v4 = [objc_alloc(MEMORY[0x277D6F330]) initWithCharactersInString:v6];
  v5 = [TIKeyboardInputManager(ResultSpecializations) terminatorsPrecedingAutospace]::result;
  [TIKeyboardInputManager(ResultSpecializations) terminatorsPrecedingAutospace]::result = v4;
}

- (id)terminatorsDeletingAutospace
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  terminatorsDeletingAutospace = [keyboardFeatureSpecialization terminatorsDeletingAutospace];

  return terminatorsDeletingAutospace;
}

- (id)terminatorsPreventingAutocorrection
{
  if ([TIKeyboardInputManager(ResultSpecializations) terminatorsPreventingAutocorrection]::onceToken != -1)
  {
    dispatch_once(&[TIKeyboardInputManager(ResultSpecializations) terminatorsPreventingAutocorrection]::onceToken, &__block_literal_global_1111);
  }

  v3 = [TIKeyboardInputManager(ResultSpecializations) terminatorsPreventingAutocorrection]::result;

  return v3;
}

uint64_t __84__TIKeyboardInputManager_ResultSpecializations__terminatorsPreventingAutocorrection__block_invoke()
{
  v0 = objc_msgSend(objc_alloc(MEMORY[0x277D6F330]), "initWithCharactersInString:", @"@#$%^*_([]\\|");
  v1 = [TIKeyboardInputManager(ResultSpecializations) terminatorsPreventingAutocorrection]::result;
  [TIKeyboardInputManager(ResultSpecializations) terminatorsPreventingAutocorrection]::result = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)defaultCandidate
{
  v3 = objc_alloc(MEMORY[0x277D6F3D8]);
  inputStem = [(TIKeyboardInputManager *)self inputStem];
  v5 = [v3 initWithUnchangedInput:inputStem];

  return v5;
}

- (BOOL)newInputAcceptsUserSelectedCandidate
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if ([keyboardState hardwareKeyboardMode])
  {
    v4 = 0;
  }

  else
  {
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    layoutState = [keyboardState2 layoutState];
    v4 = [layoutState userInterfaceIdiom] != 2;
  }

  return v4;
}

- (double)continuousPathLanguageWeight
{
  config = [(TIKeyboardInputManager *)self config];
  [config continuousPathLanguageWeight];
  v4 = v3;

  return v4;
}

- (BOOL)usesMLTapTyping
{
  if ([(TIKeyboardInputManager *)self userInterfaceIdiom])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    if ([keyboardState hardwareKeyboardMode])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      if ([keyboardState2 splitKeyboardMode])
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
        v3 = [keyboardState3 floatingKeyboardMode] ^ 1;
      }
    }
  }

  return v3;
}

- (void)setPhraseBoundaryIfNecessary
{
  if ([(TIKeyboardInputManager *)self supportsSetPhraseBoundary]&& ![(TIKeyboardInputManager *)self isProgressivelyPathing])
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState documentState];

    v4 = documentState;
    if (documentState)
    {
      selectedRangeInMarkedText = [documentState selectedRangeInMarkedText];
      v4 = documentState;
      if (selectedRangeInMarkedText != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = selectedRangeInMarkedText == [(TIKeyboardInputManager *)self phraseBoundary];
        v4 = documentState;
        if (!v6)
        {
          [(TIKeyboardInputManager *)self setPhraseBoundary:selectedRangeInMarkedText];
          v4 = documentState;
        }
      }
    }
  }
}

- (id)candidatesForString:(id)string
{
  v12[4] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = stringCopy;
  if (self->m_impl && [stringCopy length] <= 0x40 && (objc_msgSend(v5, "_looksLikeURL") & 1) == 0)
  {
    v7 = 2 * (u_isupper([v5 _firstLongCharacter]) != 0);
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    v9 = +[TIKeyboardInputManager shiftContextForShiftState:autocapitalizationType:](TIKeyboardInputManager, "shiftContextForShiftState:autocapitalizationType:", v7, [keyboardState autocapitalizationType]);

    m_impl = self->m_impl;
    v11 = [(TIKeyboardInputManager *)self externalStringToInternal:v5];
    KB::utf8_string(v11, v12);
    TIInputManager::candidates_for_string(m_impl, v12, v9);
  }

  return 0;
}

- (id)candidates
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  inputMode = [keyboardState inputMode];
  v5 = [TIInputMode inputModeWithIdentifier:inputMode];

  inputMode2 = [(TIKeyboardInputManagerBase *)self inputMode];
  v7 = inputMode2 != v5;

  supportsPrediction = [v5 supportsPrediction];
  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  if ([keyboardState2 longPredictionListEnabled])
  {
  }

  else
  {

    v10 = 0;
    if (inputMode2 == v5 || (supportsPrediction & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState3 documentState];
  v14 = [(TIKeyboardInputManager *)self shortcutConversionForDocumentState:documentState];

  if (v14)
  {
    [array addObject:v14];
  }

  v15 = [TIAccumulatingCandidateHandler alloc];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __59__TIKeyboardInputManager_ResultSpecializations__candidates__block_invoke;
  v24 = &unk_278731770;
  v16 = array;
  v28 = v7;
  v29 = supportsPrediction;
  v25 = v16;
  selfCopy = self;
  v27 = v14;
  v17 = v14;
  v18 = [(TIAccumulatingCandidateHandler *)v15 initWithHandlerBlock:&v21];
  [(TIKeyboardInputManager *)self pushCandidateGenerationContextOnStack:v21];
  keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
  [(TIKeyboardInputManager *)self generateAutocorrectionsWithKeyboardState:keyboardState4 candidateRange:0 candidateHandler:20, v18];

  [(TIKeyboardInputManager *)self popCandidateGenerationContextFromStack];
  v10 = v16;

LABEL_8:

  return v10;
}

void __59__TIKeyboardInputManager_ResultSpecializations__candidates__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 corrections];
  v5 = [v4 autocorrection];

  v6 = [v3 predictions];
  v7 = [v3 emojiList];
  if ([v5 isAutocorrection])
  {
    [*(a1 + 32) addObject:v5];
  }

  v8 = [v6 firstObject];
  if ([v8 slotID])
  {
    goto LABEL_10;
  }

  if (*(a1 + 56) != 1 || (*(a1 + 57) & 1) == 0)
  {

    goto LABEL_9;
  }

  v9 = [*(a1 + 40) inputMode];
  v10 = [v9 isSiriMode];

  if (v10)
  {
LABEL_9:
    v11 = *(a1 + 32);
    v8 = [*(a1 + 40) defaultCandidate];
    [v11 addObject:v8];
LABEL_10:
  }

  if (v7)
  {
    [*(a1 + 32) addObjectsFromArray:v7];
  }

  if (v6)
  {
    v21 = v7;
    v22 = v5;
    v23 = v3;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v17 candidate];
          v19 = [*(a1 + 48) candidate];
          isEqualToString = objc_msgSend_isEqualToString_(v18);

          if ((isEqualToString & 1) == 0)
          {
            [*(a1 + 32) addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v5 = v22;
    v3 = v23;
    v7 = v21;
  }
}

- (id)autocorrectionListWithCandidateCount:(unint64_t)count
{
  v82[1] = *MEMORY[0x277D85DE8];
  if (!self->m_impl)
  {
    v7 = 0;
    goto LABEL_15;
  }

  if ([(TIKeyboardInputManager *)self canGenerateCompletionCandidates])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__TIKeyboardInputManager_ResultSpecializations__autocorrectionListWithCandidateCount___block_invoke;
    aBlock[3] = &unk_278731748;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    if ((*(self->m_impl + 108) & 0x80000000) == 0)
    {
      autocorrectionListForSelectedText = [(TIKeyboardInputManager *)self continuousPathCandidates:count];
LABEL_12:
      v9 = autocorrectionListForSelectedText;
      v7 = v5[2](v5, autocorrectionListForSelectedText);
LABEL_13:

LABEL_14:
      goto LABEL_15;
    }

    if ([(TIKeyboardInputManager *)self shouldGenerateSuggestionsForSelectedText]|| [(TIKeyboardInputManager *)self doesSelectedTextGenerateEmojiCandidates])
    {
      autocorrectionListForSelectedText = [(TIKeyboardInputManager *)self autocorrectionListForSelectedText];
      goto LABEL_12;
    }

    if ([(TIKeyboardInputManager *)self shouldGeneratePredictionsForCurrentContext])
    {
      autocorrectionListForSelectedText = [(TIKeyboardInputManager *)self autocorrectionListForEmptyInputWithDesiredCandidateCount:count];
      goto LABEL_12;
    }

    if ([(TIKeyboardInputManager *)self inputCount]> 0x40)
    {
      v7 = 0;
      goto LABEL_14;
    }

    if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) == 1)
    {
      if (adaptation_autocorrection_rejection_v2_override_for_trial)
      {
LABEL_24:
        v11 = 0;
LABEL_27:
        inputCount = [(TIKeyboardInputManager *)self inputCount];
        if (inputCount == [(TIKeyboardInputManager *)self inputIndex]&& [(TIKeyboardInputManager *)self inputIndex]&& !(*(**(self->m_impl + 28) + 232))(*(self->m_impl + 28)))
        {
          inputString = [(TIKeyboardInputManager *)self inputString];
          v7 = [(TIKeyboardInputManager *)self cachedAutocorrectionListResponseFor:inputString];

          if (v7 != 0 && !v11)
          {
            goto LABEL_14;
          }
        }

        if ([(TIKeyboardInputManager *)self _hasSupplementalPrefix])
        {
          v17 = objc_alloc(MEMORY[0x277CBEB18]);
          v18 = [(TIKeyboardInputManager *)self _supplementalCompletionCandidates:count];
          v19 = [v17 initWithArray:v18];

          if (!v11)
          {
            supplementalAutocorrectionCandidates = [(TIKeyboardInputManager *)self supplementalAutocorrectionCandidates];
LABEL_38:
            v21 = supplementalAutocorrectionCandidates;
            autocorrection = [supplementalAutocorrectionCandidates autocorrection];
LABEL_39:
            alternateCorrections = [v21 alternateCorrections];
            if ([v21 autocorrectionBlocked] && objc_msgSend(alternateCorrections, "count"))
            {
              v24 = [alternateCorrections objectAtIndexedSubscript:0];
              v82[0] = v24;
              v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:1];
              v26 = [v25 arrayByAddingObjectsFromArray:v19];

              v27 = [alternateCorrections subarrayWithRange:{1, objc_msgSend(alternateCorrections, "count") - 1}];

              alternateCorrections = v27;
              v19 = v26;
            }

            v68 = alternateCorrections;
            typedStringForEmptyAutocorrection = [(TIKeyboardInputManager *)self typedStringForEmptyAutocorrection];
            if (!autocorrection)
            {
              autocorrection = [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:typedStringForEmptyAutocorrection];
            }

            emojiCandidateGenerator = [(TIKeyboardInputManager *)self emojiCandidateGenerator];
            keyboardState = [(TIKeyboardInputManager *)self keyboardState];
            v65 = [emojiCandidateGenerator emojiReplacementCandidatesForKeyboardState:keyboardState];

            selfCopy = self;
            v71 = v5;
            v67 = typedStringForEmptyAutocorrection;
            if ([autocorrection isSupplementalItemCandidate] && !-[TIKeyboardInputManager _hasSupplementalPrefix](self, "_hasSupplementalPrefix"))
            {

              autocorrection = 0;
            }

            countCopy = count;
            v74 = [MEMORY[0x277CBEB18] arrayWithCapacity:{count, v65}];
            v31 = autocorrection;
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v32 = v19;
            v33 = [v32 countByEnumeratingWithState:&v76 objects:v81 count:16];
            v72 = v31;
            v73 = v32;
            if (v33)
            {
              v34 = v33;
              v35 = *v77;
              do
              {
                v36 = 0;
                do
                {
                  if (*v77 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v76 + 1) + 8 * v36);
                  candidate = [v37 candidate];
                  isEqualToString = objc_msgSend_isEqualToString_(candidate);

                  if ((isEqualToString & 1) == 0)
                  {
                    v75[0] = MEMORY[0x277D85DD0];
                    v75[1] = 3221225472;
                    v75[2] = __86__TIKeyboardInputManager_ResultSpecializations__autocorrectionListWithCandidateCount___block_invoke_2;
                    v75[3] = &unk_278731D60;
                    v75[4] = v37;
                    v40 = _Block_copy(v75);
                    v41 = [v74 indexOfObjectPassingTest:v40];
                    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      candidate2 = [v37 candidate];
                      candidate3 = [v31 candidate];
                      v44 = v31;
                      v45 = objc_msgSend_isEqualToString_(candidate2);

                      if (v45 && (v46 = [v37 isSupplementalItemCandidate], v46 == objc_msgSend(v44, "isSupplementalItemCandidate")))
                      {
                        objc_opt_class();
                        v31 = v44;
                        v32 = v73;
                        if (objc_opt_isKindOfClass())
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v52 = v31;
                            v53 = v37;
                            lexiconLocale = [v52 lexiconLocale];

                            if (!lexiconLocale)
                            {
                              lexiconLocale2 = [v53 lexiconLocale];
                              [v52 setLexiconLocale:lexiconLocale2];
                            }

                            v31 = v72;
                          }
                        }
                      }

                      else
                      {
                        v31 = v44;
                        v32 = v73;
                        if (([v37 isSupplementalItemCandidate] & 1) != 0 || v37 && (v47 = v37, objc_msgSend(v47, "candidate"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "input"), v49 = objc_claimAutoreleasedReturnValue(), v47, LOBYTE(v47) = objc_msgSend_isEqualToString_(v48), v49, v48, v31 = v72, (v47 & 1) == 0))
                        {
                          [v74 addObject:v37];
                        }
                      }
                    }

                    else
                    {
                      v50 = v41;
                      v51 = [v74 objectAtIndexedSubscript:v41];
                      if ([v37 isSupplementalItemCandidate] && (objc_msgSend(v51, "isSupplementalItemCandidate") & 1) == 0)
                      {
                        [v74 setObject:v37 atIndexedSubscript:v50];
                      }
                    }
                  }

                  ++v36;
                }

                while (v34 != v36);
                v56 = [v32 countByEnumeratingWithState:&v76 objects:v81 count:16];
                v34 = v56;
              }

              while (v56);
            }

            if ([v74 count] <= countCopy)
            {
              v57 = v74;
            }

            else
            {
              v57 = [v74 subarrayWithRange:0];
            }

            v58 = v57;
            v5 = v71;
            v59 = [(TIKeyboardInputManager *)selfCopy extendedAutocorrection:v31 spanningInputsForCandidates:v57 emojis:v66];
            autocorrectionForCurrentStem = [(TIKeyboardInputManager *)selfCopy autocorrectionForCurrentStem];
            candidate4 = [v59 candidate];
            currentWordStem = [(TIKeyboardInputManager *)selfCopy currentWordStem];
            [autocorrectionForCurrentStem setObject:candidate4 forKey:currentWordStem];

            v63 = [objc_alloc(MEMORY[0x277D6F348]) initWithAutocorrection:v59 alternateCorrections:v68];
            v64 = [MEMORY[0x277D6F328] listWithCorrections:v63 predictions:v58 emojiList:v66];
            v7 = v5[2](v5, v64);

            v9 = v72;
            goto LABEL_13;
          }
        }

        else
        {
          v19 = -[TIKeyboardInputManager completionCandidates:](self, "completionCandidates:", count - [0 count]);
          if (!v11)
          {
            supplementalAutocorrectionCandidates = [(TIKeyboardInputManager *)self autocorrectionCandidates];
            goto LABEL_38;
          }
        }

        v21 = 0;
        autocorrection = 0;
        goto LABEL_39;
      }
    }

    else if (_os_feature_enabled_impl())
    {
      goto LABEL_24;
    }

    rejectedAutocorrections = [(TIKeyboardInputManager *)self rejectedAutocorrections];
    inputString2 = [(TIKeyboardInputManager *)self inputString];
    v14 = [rejectedAutocorrections objectForKey:inputString2];
    v11 = v14 != 0;

    goto LABEL_27;
  }

  supplementalAutocorrectionCandidates2 = [(TIKeyboardInputManager *)self supplementalAutocorrectionCandidates];
  if (!supplementalAutocorrectionCandidates2)
  {
    supplementalAutocorrectionCandidates2 = [(TIKeyboardInputManager *)self autocorrectionCandidates];
  }

  v7 = [MEMORY[0x277D6F328] listWithCorrections:supplementalAutocorrectionCandidates2];

LABEL_15:

  return v7;
}

id __86__TIKeyboardInputManager_ResultSpecializations__autocorrectionListWithCandidateCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) recordSuggestedAutocorrectionList:v3];

  return v3;
}

uint64_t __86__TIKeyboardInputManager_ResultSpecializations__autocorrectionListWithCandidateCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 candidate];
  v4 = [*(a1 + 32) candidate];
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  return isEqualToString;
}

- (BOOL)canGenerateCompletionCandidates
{
  if (TITransientLexiconManagerGetActiveSupplementalLexiconWords())
  {
    supportsMultilingualKeyboard = 1;
  }

  else
  {
    config = [(TIKeyboardInputManager *)self config];
    if ([config usesWordNgramModel])
    {
      supportsMultilingualKeyboard = 1;
    }

    else
    {
      inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
      supportsMultilingualKeyboard = [inputMode supportsMultilingualKeyboard];
    }
  }

  return supportsMultilingualKeyboard & 1;
}

- (id)autocorrectionList
{
  v3 = [(TIKeyboardInputManager *)self autocorrectionListWithCandidateCount:3];
  [(TIKeyboardInputManager *)self setLastAutocorrectionList:v3];

  return v3;
}

- (void)transferErrorCorrectionFlagsToInputCandidate:(void *)candidate
{
  if (*candidate)
  {
    v4 = 0;
    v5 = *(candidate + 1);
    v6 = 240 * *candidate;
    do
    {
      v7 = *(v5 + 4);
      if (!*(v5 + 4))
      {
        KB::String::compute_length(v5);
        v7 = *(v5 + 4);
      }

      v8 = v4 + v7;
      if (TIInputManager::is_input_hit_test_corrected(self->m_impl, v4, v4 + v7))
      {
        *(v5 + 152) = 64;
      }

      v5 += 240;
      v4 = v8;
      v6 -= 240;
    }

    while (v6);
  }
}

- (id)autocorrectionCandidates
{
  v102 = *MEMORY[0x277D85DE8];
  if (!self->m_impl)
  {
    goto LABEL_9;
  }

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if (![keyboardState autocorrectionEnabled] || !-[TIKeyboardInputManager allowsAutocorrectionForCurrentInputString](self, "allowsAutocorrectionForCurrentInputString"))
  {

    goto LABEL_9;
  }

  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  originalIdentifier = [inputMode originalIdentifier];
  ShouldDisableAutocorrection = TIKeyboardShouldDisableAutocorrection();

  if (ShouldDisableAutocorrection)
  {
    goto LABEL_9;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  if (![keyboardState2 hardwareKeyboardMode])
  {

    goto LABEL_14;
  }

  isHardwareKeyboardAutocorrectionEnabled = [(TIKeyboardInputManager *)self isHardwareKeyboardAutocorrectionEnabled];

  if (!isHardwareKeyboardAutocorrectionEnabled)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

LABEL_14:
  m_impl = self->m_impl;
  v13 = m_impl[24];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = KB::ns_string((*(m_impl + 1) + 40 * (v13 - 1)), v9);
  if (![(TIKeyboardInputManager *)self stringEndsWord:v14]&& (![(TIKeyboardInputManager *)self isEditingExistingWord]|| [(TIKeyboardInputManager *)self _hasSupplementalPrefix]))
  {
    currentWordStem = [(TIKeyboardInputManager *)self currentWordStem];
    v16 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:currentWordStem];
    keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    allowsAutocorrectionOfValidWords = [keyboardFeatureSpecialization allowsAutocorrectionOfValidWords];

    if ((allowsAutocorrectionOfValidWords & 1) == 0)
    {
      v19 = self->m_impl;
      KB::utf8_string(v16, &v94);
      KB::utf8_string(currentWordStem, buf);
      v20 = TIInputManager::dictionary_contains_word(v19, &v94, buf, 0);
      if (*&buf[8] && buf[6] == 1)
      {
        free(*&buf[8]);
      }

      if (v95 && BYTE6(v94) == 1)
      {
        free(v95);
      }

      if (v20)
      {
        v10 = 0;
LABEL_120:

        goto LABEL_121;
      }
    }

    v73 = v16;
    TIInputManager::input_substring((self->m_impl + 8), 0, *(self->m_impl + 24), v100);
    v22 = KB::ns_string(v100, v21);
    v23 = [(TIKeyboardInputManager *)self internalStringToExternal:v22 ignoreCompositionDisabled:1];

    v24 = v98;
    v72 = v23;
    KB::utf8_string(v23, v98);
    keyboardFeatureSpecialization2 = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
    if ([keyboardFeatureSpecialization2 canConvertExternalToExternal])
    {
      keyboardFeatureSpecialization3 = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
      if ([keyboardFeatureSpecialization3 shouldConvertCandidateToExternal])
      {
        v24 = v100;
      }
    }

    KB::Candidate::Candidate(&v94, v24, 0);
    shiftContext = [(TIKeyboardInputManager *)self shiftContext];
    v28 = [(TIKeyboardInputManager *)self phraseCandidateCompletedByWord:v98 allowNoSuggest:1 forAutocorrection:1 shiftContext:shiftContext];
    [v28 setConfidence:0];
    keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
    hardwareKeyboardMode = [keyboardState3 hardwareKeyboardMode];

    if (!v28 && hardwareKeyboardMode)
    {
      v31 = self->m_impl;
      KB::utf8_string(v16, buf);
      KB::utf8_string(currentWordStem, v74);
      v32 = TIInputManager::dictionary_contains_word(v31, buf, v74, 1);
      if (v75 && v74[6] == 1)
      {
        free(v75);
      }

      if (*&buf[8] && buf[6] == 1)
      {
        free(*&buf[8]);
      }

      if (v32)
      {
        v10 = 0;
        v33 = v72;
LABEL_114:
        KB::Candidate::~Candidate(&v94);
        if (v99 && v98[6] == 1)
        {
          free(v99);
        }

        if (v101 && v100[6] == 1)
        {
          free(v101);
        }

        goto LABEL_120;
      }
    }

    kdebug_trace();
    v34 = kac_get_log();
    v35 = os_signpost_id_make_with_pointer(v34, (self ^ 0x14));
    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v36 = v35;
      if (os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v36, "kbdManager.generateOnlyAutocorrections", &unk_22CCA4FEF, buf, 2u);
      }
    }

    if (v28)
    {
      v38 = 0;
      v86 = 0x10000000000000;
      v91[0] = 0;
      v93 = 0;
      *buf = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = 0;
    }

    else
    {
      [(TIKeyboardInputManager *)self transferErrorCorrectionFlagsToInputCandidate:&v94];
      v91[0] = 0;
      v93 = 0;
      v86 = 0x10000000000000;
      *buf = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = 0;
      (*(*self->m_impl + 16))(v74);
      KB::CandidateCollection::operator=(buf, v74);
      KB::String::operator=(&v86 + 4, v79);
      std::tuple<KB::CandidateCollection,KB::String>::~tuple(v74);
      KB::CandidateCollection::CandidateCollection(v74, buf);
      KB::String::String(v79, (&v86 + 4));
      if (*v74 == v75 && v76 != v77)
      {
        keyboardFeatureSpecialization4 = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
        canConvertExternalToExternal = [keyboardFeatureSpecialization4 canConvertExternalToExternal];

        if (canConvertExternalToExternal)
        {
          KB::Candidate::operator=(&v94, v76);
          std::optional<KB::String>::operator=[abi:nn200100]<KB::String,void>(v91, v79);
        }
      }

      if (v75 != *v74)
      {
        KB::Candidate::operator=(&v94, *v74);
        std::optional<KB::String>::operator=[abi:nn200100]<KB::String,void>(v91, v79);
      }

      if (v78)
      {
        v97 = 1;
      }

      std::tuple<KB::CandidateCollection,KB::String>::~tuple(v74);
      if (!v96[0])
      {
        KB::Candidate::compute_string(&v94);
      }

      if (KB::String::equal(v96, v24, 0, v39, v40))
      {
        goto LABEL_64;
      }

      KB::Candidate::capitalized_string(v74, &v94);
      v28 = [(TIKeyboardInputManager *)self phraseCandidateCompletedByWord:v74 allowNoSuggest:0 forAutocorrection:1 shiftContext:shiftContext];
      if (v75 && v74[6] == 1)
      {
        free(v75);
      }

      [v28 setConfidence:2];
      if (!v28)
      {
LABEL_64:
        if (v94)
        {
          v41 = 240 * v94 - 240;
          v42 = (v95 + 104);
          do
          {
            v44 = *v42;
            v42 += 60;
            v43 = v44;
            if ((v44 & 0x10) != 0)
            {
              break;
            }

            v45 = v41;
            v41 -= 240;
          }

          while (v45);
          if ((v43 & 0x10) != 0)
          {
            kdebug_trace();
            v46 = kac_get_log();
            v47 = os_signpost_id_make_with_pointer(v46, (self ^ 0x14));
            if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v48 = v47;
              if (os_signpost_enabled(v46))
              {
                *v74 = 0;
                _os_signpost_emit_with_name_impl(&dword_22CA55000, v46, OS_SIGNPOST_INTERVAL_END, v48, "kbdManager.generateOnlyAutocorrections", &unk_22CCA4FEF, v74, 2u);
              }
            }

            v10 = 0;
            v49 = v46;
            goto LABEL_107;
          }
        }

        v28 = 0;
        v38 = 1;
      }

      else
      {
        v38 = 0;
      }
    }

    if (v93 == 1)
    {
      v50 = KB::ns_string(v91, v37);
      v49 = v50;
      if (v93)
      {
        v49 = v50;
        v46 = v49;
LABEL_77:
        v70 = currentWordStem;
        v52 = [(TIKeyboardInputManager *)self internalStringToExternal:v46 ignoreCompositionDisabled:1];
        if ((v94 & 0xFFFFFFFE) != 0)
        {
          v53 = v38;
        }

        else
        {
          v53 = 0;
        }

        v71 = v14;
        if (v53 == 1 && ![(TIKeyboardInputManager *)self _canSuggestPhraseCandidate:v52 withStem:?])
        {
          kdebug_trace();
          array = kac_get_log();
          v61 = os_signpost_id_make_with_pointer(array, (self ^ 0x14));
          if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v62 = v61;
            if (os_signpost_enabled(array))
            {
              *v74 = 0;
              _os_signpost_emit_with_name_impl(&dword_22CA55000, array, OS_SIGNPOST_INTERVAL_END, v62, "kbdManager.generateOnlyAutocorrections", &unk_22CCA4FEF, v74, 2u);
            }
          }

          v10 = 0;
          v55 = array;
        }

        else
        {
          array = [MEMORY[0x277CBEB18] array];
          v69 = v49;
          if (v38)
          {
            if (v94)
            {
              v55 = [(TIKeyboardInputManager *)self autocorrectionCandidateForInput:v52 rawInput:v46 withCandidate:&v94];
              [v55 setConfidence:2];
              v38 = [(TIKeyboardInputManager *)self shouldBlockAutocorrection:v55];
              if (v38)
              {
                [array addObject:v55];

                v55 = 0;
              }

              v56 = *(&v81 + 1);
              if (*(&v81 + 1) < v82)
              {
                v68 = v38;
                do
                {
                  v57 = [(TIKeyboardInputManager *)self autocorrectionCandidateForInput:v52 rawInput:v46 withCandidate:v56];
                  [v57 setConfidence:2];
                  if (v55)
                  {
                    input = [v55 input];
                    input2 = [v57 input];
                    isEqualToString = objc_msgSend_isEqualToString_(input);

                    if (isEqualToString)
                    {
                      [array addObject:v57];
                    }
                  }

                  v56 += 1000;
                }

                while (v56 < v82);
                v38 = v68;
              }
            }

            else
            {
              v55 = 0;
              v38 = 0;
            }
          }

          else
          {
            v55 = [(TIKeyboardInputManager *)self checkRejectionHistory:v28];
          }

          v10 = [objc_alloc(MEMORY[0x277D6F348]) initWithAutocorrection:v55 alternateCorrections:array autocorrectionBlocked:v38];
          kdebug_trace();
          v65 = kac_get_log();
          v66 = os_signpost_id_make_with_pointer(v65, (self ^ 0x14));
          if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v67 = v66;
            if (os_signpost_enabled(v65))
            {
              *v74 = 0;
              _os_signpost_emit_with_name_impl(&dword_22CA55000, v65, OS_SIGNPOST_INTERVAL_END, v67, "kbdManager.generateOnlyAutocorrections", &unk_22CCA4FEF, v74, 2u);
            }
          }

          v49 = v69;
        }

        currentWordStem = v70;
        v14 = v71;
LABEL_107:
        v33 = v72;

        if (v89 && v88 == 1)
        {
          free(v89);
        }

        *v74 = &v84 + 8;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v74);
        *v74 = &v83;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v74);
        *v74 = &v81 + 8;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v74);
        *v74 = buf;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v74);
        v16 = v73;
        if (v93 == 1 && v92 && v91[6] == 1)
        {
          free(v92);
        }

        goto LABEL_114;
      }
    }

    else
    {
      v49 = 0;
    }

    TIInputManager::input_substring((self->m_impl + 8), 0, *(self->m_impl + 24), v74);
    v46 = KB::ns_string(v74, v51);
    if (v75 && v74[6] == 1)
    {
      free(v75);
    }

    goto LABEL_77;
  }

  v10 = 0;
LABEL_121:

LABEL_10:

  return v10;
}

- (id)autocorrection
{
  autocorrectionCandidates = [(TIKeyboardInputManager *)self autocorrectionCandidates];
  autocorrection = [autocorrectionCandidates autocorrection];

  return autocorrection;
}

- (id)supplementalAutocorrectionCandidates
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if (([keyboardState canSuggestSupplementalItemsForCurrentSelection] & 1) == 0)
  {

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  supplementalLexiconIdentifier = [keyboardState2 supplementalLexiconIdentifier];

  if (!supplementalLexiconIdentifier || ![(TIKeyboardInputManager *)self _hasSupplementalPrefix])
  {
    goto LABEL_9;
  }

  v6 = KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix;
  if ((KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix & 1) == 0)
  {
    KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix = 1;
  }

  autocorrection = [(TIKeyboardInputManager *)self autocorrection];
  supplementalItemIdentifiers = [autocorrection supplementalItemIdentifiers];
  v9 = [supplementalItemIdentifiers count];

  if (v9 == 1)
  {
    v10 = [objc_alloc(MEMORY[0x277D6F348]) initWithAutocorrection:autocorrection alternateCorrections:0];
  }

  else
  {
    v10 = 0;
  }

  if ((v6 & 1) == 0)
  {
    KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix = 0;
  }

LABEL_10:

  return v10;
}

- (id)supplementalAutocorrection
{
  supplementalAutocorrectionCandidates = [(TIKeyboardInputManager *)self supplementalAutocorrectionCandidates];
  autocorrection = [supplementalAutocorrectionCandidates autocorrection];

  return autocorrection;
}

- (id)_supplementalCompletionCandidates:(unint64_t)candidates
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if ([keyboardState canSuggestSupplementalItemsForCurrentSelection])
  {
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    supplementalLexiconIdentifier = [keyboardState2 supplementalLexiconIdentifier];

    if (supplementalLexiconIdentifier)
    {
      if (![(TIKeyboardInputManager *)self _hasSupplementalPrefix]|| KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix)
      {
        v8 = [(TIKeyboardInputManager *)self completionCandidates:candidates];
      }

      else
      {
        KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix = 1;
        v8 = [(TIKeyboardInputManager *)self completionCandidates:candidates];
        KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix = 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_8:

  return v8;
}

- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withAdditionalPredictions:(id)predictions withInput:(id)input
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__11451;
  v12 = __Block_byref_object_dispose__11452;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __132__TIKeyboardInputManager_ProactiveQuickType__generateAndRenderProactiveSuggestionsWithTriggers_withAdditionalPredictions_withInput___block_invoke;
  v7[3] = &unk_278731EE8;
  v7[4] = &v8;
  [(TIKeyboardInputManager *)self generateAndRenderProactiveSuggestionsWithTriggers:triggers withAdditionalPredictions:predictions withInput:input async:0 completionHandler:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withAdditionalPredictions:(id)predictions withInput:(id)input async:(BOOL)async completionHandler:(id)handler
{
  asyncCopy = async;
  v100[1] = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  predictionsCopy = predictions;
  handlerCopy = handler;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  LODWORD(predictions) = [keyboardState isScreenLocked];

  if (!predictions)
  {
    v91 = asyncCopy;
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState2 documentState];

    contextBeforeInput = [documentState contextBeforeInput];
    v96 = documentState;
    contextAfterInput = [documentState contextAfterInput];
    v98 = +[TIProactiveQuickTypeManager sharedInstance];
    v97 = contextBeforeInput;
    if ([contextBeforeInput length])
    {
      alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
      v20 = [alphanumericCharacterSet characterIsMember:{objc_msgSend(contextBeforeInput, "characterAtIndex:", objc_msgSend(contextBeforeInput, "length") - 1)}];

      v21 = v20 ^ 1;
    }

    else
    {
      v21 = 1;
    }

    if ([contextAfterInput length])
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v23 = [whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(contextAfterInput, "characterAtIndex:", 0)}];

      v24 = v23 ^ 1;
    }

    else
    {
      v24 = 0;
    }

    v95 = contextAfterInput;
    if ((v21 | v24))
    {
      v25 = 1;
    }

    else
    {
      inputStem = [(TIKeyboardInputManager *)self inputStem];
      v25 = [inputStem length] == 0;
    }

    lastContinuousPathAutocorrection = [(TIKeyboardInputManager *)self lastContinuousPathAutocorrection];
    corrections = [lastContinuousPathAutocorrection corrections];
    autocorrection = [corrections autocorrection];
    candidate = [autocorrection candidate];
    inputStem2 = [(TIKeyboardInputManager *)self inputStem];
    v93 = [candidate hasSuffix:inputStem2];

    v32 = v98;
    if (([v98 usePQT2Flow] & 1) == 0 && !(v25 | ((objc_msgSend(v98, "isAutoCompleteEnabled") & 1) == 0) | v93 & 1))
    {
      keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
      needContactAutofill = [keyboardState3 needContactAutofill];

      if ((needContactAutofill & 1) == 0)
      {
        keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
        [(TIKeyboardInputManager *)self trackProactiveMetrics:0 keyboardState:keyboardState4];

        v94 = +[TIAppAutofillManager sharedInstance];
        secureCandidateRenderer = [v94 secureCandidateRenderer];
        keyboardState5 = [(TIKeyboardInputManager *)self keyboardState];
        secureCandidateRenderTraits = [keyboardState5 secureCandidateRenderTraits];
        keyboardState6 = [(TIKeyboardInputManager *)self keyboardState];
        textInputTraits = [keyboardState6 textInputTraits];
        [textInputTraits textContentType];
        v53 = handlerCopy;
        v55 = v54 = predictionsCopy;
        v56 = v97;
        [v98 generateAndRenderProactiveSuggestionsWithInput:v97 withSecureCandidateRenderer:secureCandidateRenderer withRenderTraits:secureCandidateRenderTraits textContentType:v55 async:v91 completion:v53];

        predictionsCopy = v54;
        handlerCopy = v53;

        v32 = v98;
LABEL_35:

        goto LABEL_36;
      }
    }

    if ([v98 isEnabled])
    {
      if ([v98 usePQT2Flow])
      {
LABEL_20:
        keyboardState7 = [(TIKeyboardInputManager *)self keyboardState];
        supportedPayloadIds = [keyboardState7 supportedPayloadIds];
        v41 = [supportedPayloadIds count];

        if (v41)
        {
          v42 = MEMORY[0x277CBEB98];
          keyboardState8 = [(TIKeyboardInputManager *)self keyboardState];
          supportedPayloadIds2 = [keyboardState8 supportedPayloadIds];
          v90 = [v42 setWithArray:supportedPayloadIds2];
        }

        else
        {
          keyboardState9 = [(TIKeyboardInputManager *)self keyboardState];
          canSendCurrentLocation = [keyboardState9 canSendCurrentLocation];

          if (canSendCurrentLocation)
          {
            v90 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.messages.currentLocation"];
          }

          else
          {
            v90 = 0;
          }
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __156__TIKeyboardInputManager_ProactiveQuickType__generateAndRenderProactiveSuggestionsWithTriggers_withAdditionalPredictions_withInput_async_completionHandler___block_invoke_2;
        aBlock[3] = &unk_2787317E0;
        aBlock[4] = self;
        v62 = _Block_copy(aBlock);
        keyboardState10 = [(TIKeyboardInputManager *)self keyboardState];
        shiftState = [keyboardState10 shiftState];

        keyboardState11 = [(TIKeyboardInputManager *)self keyboardState];
        responseContext = [keyboardState11 responseContext];

        v89 = triggersCopy;
        v87 = predictionsCopy;
        if (responseContext)
        {
          keyboardState12 = [(TIKeyboardInputManager *)self keyboardState];
          responseContext2 = [keyboardState12 responseContext];
          v100[0] = responseContext2;
          v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:1];
          v69 = [(TIKeyboardInputManager *)self suggestionBlocklistMatchesStrings:v68];
        }

        else
        {
          v69 = 0;
        }

        v70 = v91;
        keyboardState13 = [(TIKeyboardInputManager *)self keyboardState];
        v92 = +[TIAppAutofillManager sharedInstance];
        secureCandidateRenderer2 = [v92 secureCandidateRenderer];
        keyboardState14 = [(TIKeyboardInputManager *)self keyboardState];
        secureCandidateRenderTraits2 = [keyboardState14 secureCandidateRenderTraits];
        v83 = [v97 stringByAppendingString:@" "];
        keyboardState15 = [(TIKeyboardInputManager *)self keyboardState];
        recipientIdentifier = [keyboardState15 recipientIdentifier];
        keyboardState16 = [(TIKeyboardInputManager *)self keyboardState];
        clientIdentifier = [keyboardState16 clientIdentifier];
        inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
        languageWithRegion = [inputMode languageWithRegion];
        if (v93)
        {
          shouldInsertSpaceBeforePredictions = [(TIKeyboardInputManager *)self shouldInsertSpaceBeforePredictions];
        }

        else
        {
          shouldInsertSpaceBeforePredictions = 0;
        }

        LOBYTE(v78) = v70;
        BYTE1(v77) = v69;
        LOBYTE(v77) = shouldInsertSpaceBeforePredictions;
        BYTE2(v77) = shiftState != 2;
        v32 = v98;
        v79 = keyboardState13;
        v76 = keyboardState13;
        predictionsCopy = v87;
        [v98 generateAndRenderProactiveSuggestionsForInput:v89 withKeyboardState:v76 withAdditionalPredictions:v87 withSecureCandidateRenderer:secureCandidateRenderer2 withRenderTraits:secureCandidateRenderTraits2 withInput:v83 withRecipient:recipientIdentifier withApplication:clientIdentifier withLocale:languageWithRegion nextInputWillInsertAutospace:v77 withIsResponseDenyListed:v90 withShouldDisableAutoCaps:v62 withAvailableApps:v78 logBlock:handlerCopy async:? completion:?];

        triggersCopy = v89;
        goto LABEL_34;
      }

      firstObject = [triggersCopy firstObject];
      keyboardState17 = [(TIKeyboardInputManager *)self keyboardState];
      [(TIKeyboardInputManager *)self trackProactiveMetrics:firstObject keyboardState:keyboardState17];

      if ([triggersCopy count])
      {
        if (![(TIKeyboardInputManager *)self enablesProactiveQuickType])
        {
          v37 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1262];
          v38 = [triggersCopy filteredArrayUsingPredicate:v37];

          triggersCopy = v38;
        }

        goto LABEL_20;
      }

      inputMode2 = [(TIKeyboardInputManagerBase *)self inputMode];
      languageWithRegion2 = [inputMode2 languageWithRegion];
      keyboardState18 = [(TIKeyboardInputManager *)self keyboardState];
      textInputTraits2 = [keyboardState18 textInputTraits];
      textContentType = [textInputTraits2 textContentType];
      [v98 userActionWithNoNewTriggers:languageWithRegion2 fieldType:textContentType];

      v32 = v98;
      handlerCopy[2](handlerCopy, 0);
    }

LABEL_34:
    v56 = v97;
    goto LABEL_35;
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_36:
}

void __156__TIKeyboardInputManager_ProactiveQuickType__generateAndRenderProactiveSuggestionsWithTriggers_withAdditionalPredictions_withInput_async_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", a2];
  [v2 logToTypologyRecorderWithString:v3];
}

- (BOOL)enablesProactiveQuickType
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  textInputTraits = [keyboardState textInputTraits];
  if ([textInputTraits disablePrediction])
  {
    v5 = 0;
  }

  else
  {
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    textInputTraits2 = [keyboardState2 textInputTraits];
    v5 = [textInputTraits2 autocorrectionType] != 1;
  }

  return v5;
}

- (BOOL)inHardwareKeyboardMode
{
  m_impl = self->m_impl;
  if (m_impl)
  {
    LOBYTE(m_impl) = m_impl[729];
  }

  return m_impl & 1;
}

- (void)setInHardwareKeyboardMode:(BOOL)mode
{
  m_impl = self->m_impl;
  if (m_impl)
  {
    m_impl[729] = mode;
  }
}

- (BOOL)supportsLearning
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  supportsLearning = [keyboardFeatureSpecialization supportsLearning];

  return supportsLearning;
}

- (BOOL)supportsReversionUI
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  supportsReversionUI = [keyboardFeatureSpecialization supportsReversionUI];

  return supportsReversionUI;
}

- (BOOL)doesComposeText
{
  keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
  doesComposeText = [keyboardFeatureSpecialization doesComposeText];

  return doesComposeText;
}

- (void)dynamicDictionariesRemoved:(id)removed
{
  [(TIKeyboardInputManager *)self clearDynamicDictionary];
  [(TIKeyboardInputManager *)self releaseDynamicLanguageModel];
  [(TIKeyboardInputManager *)self releaseAndRemoveRejectionsDatabase];
  v4 = *(self->m_impl + 79);

  MEMORY[0x282182060](v4, 0);
}

- (void)releaseDynamicLanguageModel
{
  m_impl = self->m_impl;
  if (m_impl)
  {
    v4 = *(m_impl + 35);
    *(m_impl + 34) = 0;
    *(m_impl + 35) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    std::allocate_shared[abi:nn200100]<KB::UnigramCandidateRefinery,std::allocator<KB::UnigramCandidateRefinery>,WTF::RefPtr<KB::DictionaryContainer> const&,0>(&v5, self->m_impl + 33);
  }
}

+ (void)resetResponseKit
{
  v2 = +[TIResponseKitManager sharedTIResponseKitManager];
  [v2 resetResponseKit];
}

+ (void)clearRecentsFileForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = MEMORY[0x277CCAA00];
    identifierCopy = identifier;
    defaultManager = [v4 defaultManager];
    v6 = [self recentsFilePathForIdentifier:identifierCopy];

    [defaultManager removeItemAtPath:v6 error:0];
  }
}

+ (id)recentsFilePathForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    {
      +[TIKeyboardInputManager(DynamicDictionarySpecializations) recentsFilePathForIdentifier:]::dir = TI_KB_USER_DIRECTORY();
    }

    v4 = [+[TIKeyboardInputManager(DynamicDictionarySpecializations) recentsFilePathForIdentifier:]::dir stringByAppendingPathComponent:identifierCopy];
    v5 = [v4 stringByAppendingPathExtension:@"recents"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)removeAllDynamicDictionaries
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
  supportedInputModeIdentifiers = [mEMORY[0x277D6F380] supportedInputModeIdentifiers];

  v4 = [supportedInputModeIdentifiers countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(supportedInputModeIdentifiers);
        }

        v8 = TICanonicalInputModeName();
        v9 = TIInputManagerClassForInputMode();
        if (v9)
        {
          [v9 removeDynamicDictionaryForInputMode:v8];
        }

        else
        {
          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          v10 = TIOSLogFacility();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s No input manager class for input mode: %@", "+[TIKeyboardInputManager(DynamicDictionarySpecializations) removeAllDynamicDictionaries]", v8];
            *buf = 138412290;
            v17 = v11;
            _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [supportedInputModeIdentifiers countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

+ (void)removeDynamicDictionaryForInputMode:(id)mode
{
  v3 = [self dynamicDictionaryFilePathForInputMode:mode];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    if ([v4 fileExistsAtPath:v3])
    {
      v5 = 0;
      [v4 removeItemAtPath:v3 error:&v5];
    }
  }
}

+ (id)dynamicDictionaryFilePathForInputMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy length])
  {
    if (objc_msgSend_isEqualToString_(modeCopy))
    {
      v5 = @"dynamic-text.dat";
    }

    else
    {
      v7 = TIInputModeGetLanguageWithRegion();
      v5 = [v7 stringByAppendingString:@"-dynamic-text.dat"];
    }

    keyboardUserDirectory = [self keyboardUserDirectory];
    v6 = [keyboardUserDirectory stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)userDictionaryWordKeyPairsFilePath
{
  keyboardUserDirectory = [self keyboardUserDirectory];
  v3 = [keyboardUserDirectory stringByAppendingPathComponent:@"UserDictionaryWordKeyPairs.plist"];

  return v3;
}

+ (id)vulgarWordUsageDatabaseFileName
{
  v2 = +[TIKeyboardInputManager keyboardUserDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"VulgarWordUsage.db"];

  return v3;
}

+ (id)keyboardUserDirectory
{
  v2 = TI_KB_USER_DIRECTORY();
  v3 = [v2 copy];

  return v3;
}

- (void)setRejectedAutocorrection:(id)autocorrection forInput:(id)input
{
  inputCopy = input;
  autocorrectionCopy = autocorrection;
  rejectedAutocorrectionsDisplayedOrInserted = [(TIKeyboardInputManager *)self rejectedAutocorrectionsDisplayedOrInserted];
  [rejectedAutocorrectionsDisplayedOrInserted setObject:inputCopy forKey:autocorrectionCopy];

  rejectedAutocorrectionsDisplayedOrInsertedInverse = [(TIKeyboardInputManager *)self rejectedAutocorrectionsDisplayedOrInsertedInverse];
  [rejectedAutocorrectionsDisplayedOrInsertedInverse setObject:autocorrectionCopy forKey:inputCopy];
}

- (void)dynamicResourceDirectorySet:(id)set
{
  userInfo = [set userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"dynamicResourcePath"];

  if (v5 && [v5 length])
  {
    [(TIKeyboardInputManager *)self attachToDynamicResourceDirectory:v5];
  }

  else
  {
    [(TIKeyboardInputManager *)self detachFromDynamicResourceDirectory];
  }
}

- (void)attachToDynamicResourceDirectory:(id)directory
{
  directoryCopy = directory;
  config = [(TIKeyboardInputManager *)self config];
  usesAdaptation = [config usesAdaptation];

  if (usesAdaptation)
  {
    [(TIKeyboardInputManager *)self detachFromDynamicResourceDirectory];
  }

  config2 = [(TIKeyboardInputManager *)self config];
  [config2 setDynamicResourcePath:directoryCopy];

  config3 = [(TIKeyboardInputManager *)self config];
  [config3 setUsesAdaptation:1];

  m_impl = self->m_impl;
  if (m_impl)
  {
    v10 = *(m_impl + 34);
    if (!v10)
    {
      goto LABEL_8;
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, [directoryCopy UTF8String]);
    (*(*v10 + 112))(v10, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    m_impl = self->m_impl;
    if (m_impl)
    {
LABEL_8:
      std::string::basic_string[abi:nn200100]<0>(&__p, [directoryCopy UTF8String]);
      TI::VulgarWordUsageDatabaseWrapper::attach_to_dynamic_resource_directory(m_impl + 79, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

- (void)detachFromDynamicResourceDirectory
{
  m_impl = self->m_impl;
  if (m_impl)
  {
    v4 = m_impl[34];
    if (v4)
    {
      (*(*v4 + 104))(v4, a2);
    }
  }

  config = [(TIKeyboardInputManager *)self config];
  [config setUsesAdaptation:0];

  std::unique_ptr<TI::RejectionsDatabase>::reset[abi:nn200100](&self->m_rejectionsDatabase, 0);
  v6 = self->m_impl;
  if (v6)
  {
    LXVulgarWordUsageDatabasePerformMaintenance();
    v7 = v6[79];
    if (v7)
    {
      CFRelease(v7);
    }

    v6[79] = 0;
  }
}

- (void)clearSoftLearning
{
  rejectionsDatabase = [(TIKeyboardInputManager *)self rejectionsDatabase];
  if (rejectionsDatabase)
  {

    TI::RejectionsDatabase::soft_clear_memory(rejectionsDatabase);
  }
}

- (void)releaseAndRemoveRejectionsDatabase
{
  v12 = *MEMORY[0x277D85DE8];
  ptr = self->m_rejectionsDatabase.__ptr_;
  if (ptr)
  {
    v4 = *ptr;
    sqlite3_exec(*ptr, "DELETE FROM rejections", 0, 0, 0);
    sqlite3_exec(v4, "DELETE FROM inline_completion_rejections", 0, 0, 0);
    TI::RejectionsDatabase::soft_clear_memory(self->m_rejectionsDatabase.__ptr_);
    v5 = self->m_rejectionsDatabase.__ptr_;
    v6 = v5 + 8;
    if (*(v5 + 31) < 0)
    {
      v6 = *v6;
    }

    KB::String::String(v10, v6);
    v8 = KB::ns_string(v10, v7);
    if (v11)
    {
      if (v10[6] == 1)
      {
        free(v11);
      }
    }

    std::unique_ptr<TI::RejectionsDatabase>::reset[abi:nn200100](&self->m_rejectionsDatabase, 0);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:v8 error:0];
  }
}

- (void)recordRejectedAutocorrectionForAcceptedText:(id)text fromPredictiveInputBar:(BOOL)bar
{
  barCopy = bar;
  v46 = *MEMORY[0x277D85DE8];
  textCopy = text;
  candidate = [textCopy candidate];
  input = [textCopy input];
  isEqualToString = objc_msgSend_isEqualToString_(candidate);

  if (isEqualToString)
  {
    autocorrectionListsSuggestedForCurrentInput = [(TIKeyboardInputManager *)self autocorrectionListsSuggestedForCurrentInput];
    input2 = [textCopy input];
    v12 = [autocorrectionListsSuggestedForCurrentInput objectForKey:input2];

    input3 = [textCopy input];
    corrections = [v12 corrections];
    autocorrection = [corrections autocorrection];
  }

  else
  {
    autocorrectionHistory = [(TIKeyboardInputManager *)self autocorrectionHistory];
    input4 = [textCopy input];
    autocorrection = [autocorrectionHistory objectForKey:input4];

    autocorrectionListsForWordsInDocument = [(TIKeyboardInputManager *)self autocorrectionListsForWordsInDocument];
    input5 = [textCopy input];
    v12 = [autocorrectionListsForWordsInDocument objectForKey:input5];

    input3 = [textCopy candidate];
  }

  if (([v12 hasSupplementalItems] & 1) == 0)
  {
    if (v12 && ([textCopy isSupplementalItemCandidate] & 1) == 0)
    {
      v20 = [(TIKeyboardInputManager *)self revisionListFromAutocorrectionList:v12 afterAcceptingCandidate:textCopy];
      autocorrectionListsForWordsInDocument2 = [(TIKeyboardInputManager *)self autocorrectionListsForWordsInDocument];
      input6 = [textCopy input];
      [autocorrectionListsForWordsInDocument2 setObject:v20 forKey:input6];
    }

    if ([autocorrection isAutocorrection])
    {
      rejectedAutocorrections = [(TIKeyboardInputManager *)self rejectedAutocorrections];
      [rejectedAutocorrections setObject:autocorrection forKey:input3];

      autocorrectionHistory2 = [(TIKeyboardInputManager *)self autocorrectionHistory];
      candidate2 = [autocorrection candidate];
      [autocorrectionHistory2 removeObjectForKey:candidate2];
    }

    else if (barCopy)
    {
      v38 = input3;
      v39 = autocorrection;
      v40 = textCopy;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      corrections2 = [v12 corrections];
      autocorrection2 = [corrections2 autocorrection];
      candidate3 = [autocorrection2 candidate];
      v29 = [candidate3 componentsSeparatedByString:@" "];

      v30 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v42;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v42 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v41 + 1) + 8 * i);
            if ([v34 length])
            {
              recentPredictiveInputSelections = [(TIKeyboardInputManager *)self recentPredictiveInputSelections];
              corrections3 = [v12 corrections];
              autocorrection3 = [corrections3 autocorrection];
              [recentPredictiveInputSelections setObject:autocorrection3 forKey:v34];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v31);
      }

      autocorrection = v39;
      textCopy = v40;
      input3 = v38;
    }
  }
}

- (void)runMaintenanceTask
{
  ppStmt[2] = *MEMORY[0x277D85DE8];
  if (self->m_impl)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v5 = v4;

    v6 = *(self->m_impl + 28);
    if (v6)
    {
      (*(*v6 + 480))(v6, v5 + -2592000.0);
    }
  }

  rejectionsDatabase = [(TIKeyboardInputManager *)self rejectionsDatabase];
  if (rejectionsDatabase)
  {
    v8 = 1;
    v9 = *rejectionsDatabase;
    while (2)
    {
      ppStmt[0] = 0;
      if (!sqlite3_prepare_v2(v9, "SELECT page_count * page_size AS size FROM pragma_page_count(), pragma_page_size()", -1, ppStmt, 0))
      {
        if (sqlite3_step(ppStmt[0]) == 100)
        {
          v10 = sqlite3_column_int(ppStmt[0], 0);
          sqlite3_finalize(ppStmt[0]);
          if (v10 >= 0x200000)
          {
            v11 = 0;
            ppStmt[0] = "DELETE FROM rejections WHERE (soft_rejections + hard_rejections < ?)";
            ppStmt[1] = "DELETE FROM inline_completion_rejections WHERE (soft_rejections + hard_rejections < ?)";
            do
            {
              v12 = ppStmt[v11];
              pStmt = 0;
              if (sqlite3_prepare_v2(v9, v12, -1, &pStmt, 0))
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  v15 = v8;
                  _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "RejectionsDatabase: Unable to delete rows with counts below %d.", buf, 8u);
                }

                return;
              }

              sqlite3_bind_int(pStmt, 1, v8);
              sqlite3_step(pStmt);
              sqlite3_finalize(pStmt);
              ++v11;
            }

            while (v11 != 2);
            if (!sqlite3_exec(v9, "VACUUM", 0, 0, 0) && ++v8 != 100)
            {
              continue;
            }
          }
        }

        else
        {
          sqlite3_finalize(ppStmt[0]);
        }
      }

      break;
    }
  }
}

- (BOOL)autocorrectionWasRecentlyRejectedForCurrentInput
{
  rejectedAutocorrectionsDisplayedOrInsertedInverse = [(TIKeyboardInputManager *)self rejectedAutocorrectionsDisplayedOrInsertedInverse];
  currentWordStem = [(TIKeyboardInputManager *)self currentWordStem];
  v5 = [rejectedAutocorrectionsDisplayedOrInsertedInverse objectForKeyedSubscript:currentWordStem];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)autocorrectionWasRecentlyRejected:(id)rejected
{
  if (!rejected)
  {
    return 0;
  }

  v3 = [(TIKeyboardInputManager *)self checkRejectionHistory:?];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)shouldBlockAutocorrection:(id)autocorrection
{
  v32 = *MEMORY[0x277D85DE8];
  autocorrectionCopy = autocorrection;
  if (-[TIKeyboardInputManager _hasSupplementalPrefix](self, "_hasSupplementalPrefix") && [autocorrectionCopy isSupplementalItemCandidate])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v31 = "[TIKeyboardInputManager(Learning) shouldBlockAutocorrection:]";
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Not blocking autocorrection as its a supplemental candidate", buf, 0xCu);
    }

    goto LABEL_32;
  }

  if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) == 1)
  {
    if (adaptation_autocorrection_rejection_v2_override_for_trial)
    {
      goto LABEL_23;
    }
  }

  else if (_os_feature_enabled_impl())
  {
    goto LABEL_23;
  }

  candidate = [autocorrectionCopy candidate];
  if (candidate)
  {
    v6 = candidate;
    isSupplementalItemCandidate = [autocorrectionCopy isSupplementalItemCandidate];

    if ((isSupplementalItemCandidate & 1) == 0)
    {
      rejectedAutocorrectionsDisplayedOrInserted = [(TIKeyboardInputManager *)self rejectedAutocorrectionsDisplayedOrInserted];
      candidate2 = [autocorrectionCopy candidate];
      currentWord = [rejectedAutocorrectionsDisplayedOrInserted objectForKey:candidate2];

      if (currentWord)
      {
        currentWordStem = [(TIKeyboardInputManager *)self currentWordStem];
        if (objc_msgSend_isEqualToString_(currentWord) && ([currentWord length] != 1 || (objc_msgSend(autocorrectionCopy, "sourceMask") & 0x8000) == 0 && (objc_msgSend(autocorrectionCopy, "sourceMask") & 0x20000) == 0 || (objc_msgSend(autocorrectionCopy, "usageTrackingMask") & 2) == 0) || objc_msgSend(currentWordStem, "length") >= 2 && objc_msgSend(currentWordStem, "length") <= 0x20 && objc_msgSend(currentWord, "_editDistanceFrom:", currentWordStem) == 1)
        {

LABEL_28:
          goto LABEL_29;
        }
      }
    }
  }

LABEL_23:
  if (!autocorrectionCopy)
  {
    goto LABEL_32;
  }

  input = [autocorrectionCopy input];
  candidate3 = [autocorrectionCopy candidate];
  v14 = [(TIKeyboardInputManager *)self blockedByNegativeLearning:input correction:candidate3 ignoreSoft:0];

  if (!v14)
  {
    revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
    currentWord = [revisionHistory currentWord];

    v16 = [currentWord length];
    input2 = [autocorrectionCopy input];
    if (v16 <= [input2 length])
    {
    }

    else
    {
      input3 = [autocorrectionCopy input];
      v19 = [currentWord hasSuffix:input3];

      if (v19)
      {
        v20 = [currentWord length];
        input4 = [autocorrectionCopy input];
        v22 = [currentWord substringToIndex:{v20 - objc_msgSend(input4, "length")}];

        candidate4 = [autocorrectionCopy candidate];
        v29[1] = candidate4;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
        v25 = [v24 componentsJoinedByString:&stru_283FDFAF8];

        v26 = [(TIKeyboardInputManager *)self blockedByNegativeLearning:currentWord correction:v25 ignoreSoft:0];
        if (v26)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_32:
    v27 = 0;
    goto LABEL_33;
  }

LABEL_29:
  v27 = 1;
LABEL_33:

  return v27;
}

- (id)checkRejectionHistory:(id)history
{
  historyCopy = history;
  if ([(TIKeyboardInputManager *)self shouldBlockAutocorrection:historyCopy])
  {

    historyCopy = 0;
  }

  return historyCopy;
}

- (void)registerLearningForCompletion:(id)completion fullCompletion:(id)fullCompletion context:(id)context prefix:(id)prefix mode:(id)mode
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  fullCompletionCopy = fullCompletion;
  prefixCopy = prefix;
  modeCopy = mode;
  config = [(TIKeyboardInputManager *)self config];
  disableAnalytics = [config disableAnalytics];

  if ((disableAnalytics & 1) == 0)
  {
    m_impl = self->m_impl;
    KB::utf8_string(completionCopy, &v33);
    KB::utf8_string(prefixCopy, &v30);
    KB::utf8_string(prefixCopy, &__p);
    (*(*m_impl[28] + 88))(m_impl[28], &v33, &v30, &__p, [(TIKeyboardInputManager *)self TIInlineCompletionAcceptanceRejectionTypefromTIRegisterLearningMode:modeCopy]);
    if (v28 && BYTE6(__p) == 1)
    {
      free(v28);
    }

    if (v31 && BYTE6(v30) == 1)
    {
      free(v31);
    }

    if (v33.__r_.__value_.__l.__size_ && v33.__r_.__value_.__s.__data_[6] == 1)
    {
      free(v33.__r_.__value_.__l.__size_);
    }
  }

  if (TIIsRegisterLearningModeRejection() && (v18 = [(TIKeyboardInputManager *)self rejectionsDatabase]) != 0)
  {
    v19 = v18;
    isEqualToString = objc_msgSend_isEqualToString_(modeCopy);
    v21 = @"hard";
    if (isEqualToString)
    {
      v21 = @"soft";
    }

    v26 = v21;
    v22 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:completionCopy];

    v23 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:fullCompletionCopy];

    v24 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:prefixCopy];

    std::string::basic_string[abi:nn200100]<0>(&v33, [v22 UTF8String]);
    std::string::basic_string[abi:nn200100]<0>(&v30, [v23 UTF8String]);
    std::string::basic_string[abi:nn200100]<0>(&__p, [v24 UTF8String]);
    TIInlineCompletionsNegativeLearning::registerLearning(v19, &v33, &__p, isEqualToString ^ 1);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v32 < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
    v25 = ;
    [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v25];
  }

  else
  {
    v24 = prefixCopy;
    v23 = fullCompletionCopy;
    v22 = completionCopy;
  }
}

- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode
{
  learningCopy = learning;
  candidateCopy = candidate;
  modeCopy = mode;
  if (([learningCopy isToucanInlineCompletionCandidate] & 1) != 0 || objc_msgSend(candidateCopy, "isToucanInlineCompletionCandidate"))
  {
    candidate = [learningCopy candidate];
    candidate2 = [candidateCopy candidate];
    input = [learningCopy input];
    [(TIKeyboardInputManager *)self registerLearningForCompletion:candidate fullCompletion:candidate2 context:0 prefix:input mode:modeCopy];

LABEL_4:
    goto LABEL_5;
  }

  if (TIIsRegisterLearningModeRejection())
  {
    [(TIKeyboardInputManager *)self acceptInput];
    if (self->m_impl)
    {
      candidate3 = [learningCopy candidate];
      if (candidate3)
      {
        v15 = candidate3;
        candidate4 = [learningCopy candidate];
        input2 = [learningCopy input];
        isEqualToString = objc_msgSend_isEqualToString_(candidate4);

        if ((isEqualToString & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(modeCopy))
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
          candidate5 = [learningCopy candidate];
          input3 = [learningCopy input];
          [revisionHistory rejectCandidate:candidate5 forInput:input3 hint:v19];

          candidate = [learningCopy candidate];
          candidate2 = [learningCopy input];
          [(TIKeyboardInputManager *)self setRejectedAutocorrection:candidate forInput:candidate2];
          goto LABEL_4;
        }
      }
    }
  }

LABEL_5:
}

- (void)candidateRejected:(id)rejected
{
  rejectedCopy = rejected;
  if ([rejectedCopy isToucanInlineCompletionCandidate])
  {
    candidate = [rejectedCopy candidate];
    input = [rejectedCopy input];
    [(TIKeyboardInputManager *)self registerLearningForCompletion:candidate fullCompletion:&stru_283FDFAF8 context:0 prefix:input mode:*MEMORY[0x277D6FA38]];
LABEL_3:

    goto LABEL_7;
  }

  [(TIKeyboardInputManager *)self acceptInput];
  if (self->m_impl)
  {
    candidate2 = [rejectedCopy candidate];
    if (candidate2)
    {
      v7 = candidate2;
      candidate3 = [rejectedCopy candidate];
      input2 = [rejectedCopy input];
      isEqualToString = objc_msgSend_isEqualToString_(candidate3);

      if ((isEqualToString & 1) == 0)
      {
        revisionHistory = [(TIKeyboardInputManager *)self revisionHistory];
        candidate4 = [rejectedCopy candidate];
        input3 = [rejectedCopy input];
        [revisionHistory rejectCandidate:candidate4 forInput:input3 hint:1];

        candidate = [rejectedCopy candidate];
        input = [rejectedCopy input];
        [(TIKeyboardInputManager *)self setRejectedAutocorrection:candidate forInput:input];
        goto LABEL_3;
      }
    }
  }

LABEL_7:
}

- (TITokenID)addWord:(id)word contextTokens:(id)tokens surfaceFormPtr:(id *)ptr
{
  v37 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  tokensCopy = tokens;
  *ptr = 0;
  m_impl = self->m_impl;
  if (!m_impl || !m_impl[34] || ![wordCopy length] || !-[TIKeyboardInputManager shouldLearnWord:](self, "shouldLearnWord:", wordCopy))
  {
    v14 = 0;
    LODWORD(v12) = 0;
    goto LABEL_10;
  }

  v11 = lmContextOrEmpty(tokensCopy);
  LODWORD(v12) = (*(**(self->m_impl + 34) + 440))();
  v13 = [(TIKeyboardInputManager *)self findTokenIDForWord:wordCopy contextTokens:tokensCopy tokenLookupMode:12];
  if (HIDWORD(*&v13))
  {
    LODWORD(v12) = v13.lexicon_id;
  }

  if (![(TIKeyboardInputManager *)self isStringBasedModel])
  {
    v16 = language_modeling::v1::LinguisticContext::tokenSpan((v11 + 4));
    if (v17)
    {
      if (*(v16 + 32 * v17 - 8) == 1)
      {
        keyboardFeatureSpecialization = [(TIKeyboardInputManager *)self keyboardFeatureSpecialization];
        shouldLearnLowercaseAtBeginningOfSentence = [keyboardFeatureSpecialization shouldLearnLowercaseAtBeginningOfSentence];

        if (shouldLearnLowercaseAtBeginningOfSentence)
        {
          inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
          locale = [inputMode locale];
          v22 = [wordCopy capitalizedStringWithLocale:locale];

          if (objc_msgSend_isEqualToString_(v22))
          {
            inputMode2 = [(TIKeyboardInputManagerBase *)self inputMode];
            locale2 = [inputMode2 locale];
            v25 = [wordCopy lowercaseStringWithLocale:locale2];

            *ptr = [v25 copy];
            wordCopy = v25;
          }
        }
      }
    }

    v26 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:wordCopy];
    v27 = (*(**(self->m_impl + 34) + 336))();
    v28 = HIDWORD(v27);
    if (HIDWORD(v27))
    {
      v12 = v27;
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel < 2)
      {
        goto LABEL_33;
      }

      v30 = TIOSLogFacility();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        if (*ptr)
        {
          v31 = *ptr;
        }

        else
        {
          v31 = &stru_283FDFAF8;
        }

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TOKEN: add token, word = %@, result = %u/%u/%@", "-[TIKeyboardInputManager(Learning) addWord:contextTokens:surfaceFormPtr:]", wordCopy, v12, v28, v31];
        *buf = 138412290;
        v36 = v32;
        _os_log_debug_impl(&dword_22CA55000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      v29 = (*(**(self->m_impl + 34) + 320))(*(self->m_impl + 34), wordCopy, self->m_impl + 264);
      v28 = HIDWORD(v29);
      if (!HIDWORD(v29))
      {
        LODWORD(v12) = 0;
LABEL_33:

        v14 = v28 << 32;
        goto LABEL_10;
      }

      v12 = v29;
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel < 2)
      {
        goto LABEL_33;
      }

      v30 = TIOSLogFacility();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        if (*ptr)
        {
          v33 = *ptr;
        }

        else
        {
          v33 = &stru_283FDFAF8;
        }

        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TOKEN: add token, word = %@, returning existing token id = %u/%u/%@", "-[TIKeyboardInputManager(Learning) addWord:contextTokens:surfaceFormPtr:]", wordCopy, v12, v28, v33];
        *buf = 138412290;
        v36 = v34;
        _os_log_debug_impl(&dword_22CA55000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    goto LABEL_33;
  }

  v14 = 0;
LABEL_10:

  return (v14 | v12);
}

- (TITokenID)findTokenIDForWord:(id)word contextTokens:(id)tokens tokenLookupMode:(unsigned int)mode
{
  v7 = 0;
  v6 = 0;
  return [(TIKeyboardInputManager *)self findTokenIDForWord:word contextTokens:tokens tokenLookupMode:*&mode surfaceFormPtr:&v6 hasCaseInsensitiveStaticVariant:&v7];
}

- (TITokenID)findTokenIDForWord:(id)word contextTokens:(id)tokens tokenLookupMode:(unsigned int)mode surfaceFormPtr:(id *)ptr hasCaseInsensitiveStaticVariant:(BOOL *)variant
{
  v9 = *&mode;
  v46 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  tokensCopy = tokens;
  *ptr = 0;
  m_impl = self->m_impl;
  if (m_impl && m_impl[34] && !-[TIKeyboardInputManager shouldSuppressTokenIDLookups](self, "shouldSuppressTokenIDLookups") && [wordCopy length])
  {
    [(TIKeyboardInputManager *)self dictionaryStringForExternalString:wordCopy];
    v15 = v35 = v9;
    KB::utf8_string(v15, v44);
    v39 = 0x100000;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v34 = lmContextOrEmpty(tokensCopy);
    v43[0] = 0;
    v36 = 0;
    v16 = self->m_impl;
    v17 = *(v16 + 34);
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    locale = [inputMode locale];
    token_id_for_word = KB::LanguageModel::find_token_id_for_word(v17, v15, v16 + 33, v34, v35, locale, &v39, &v36);

    *variant = v36;
    if (HIDWORD(token_id_for_word))
    {
      v23 = v39 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23 && !KB::String::equal(v44, &v39, 1, v21, v22))
    {
      v24 = v42;
      if (!v42)
      {
        v24 = v43;
      }

      if (v39)
      {
        v25 = v24;
      }

      else
      {
        v25 = "";
      }

      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v25];
      *ptr = [(TIKeyboardInputManager *)self externalStringForDictionaryString:v26];
    }

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v27 = TIOSLogFacility();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v31 = v42;
        if (!v42)
        {
          v31 = v43;
        }

        if (v39)
        {
          v32 = v31;
        }

        else
        {
          v32 = "";
        }

        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TOKEN: word = %@, lookupmode = %x, result = %u/%u/%s", "-[TIKeyboardInputManager(Learning) findTokenIDForWord:contextTokens:tokenLookupMode:surfaceFormPtr:hasCaseInsensitiveStaticVariant:]", wordCopy, v35, token_id_for_word, HIDWORD(token_id_for_word), v32];
        *buf = 138412290;
        v38 = v33;
        _os_log_debug_impl(&dword_22CA55000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if (v42 && v41 == 1)
    {
      free(v42);
    }

    if (v45 && v44[6] == 1)
    {
      free(v45);
    }

    v28 = token_id_for_word & 0xFFFFFFFF00000000;
    v29 = token_id_for_word;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  return (v28 | v29);
}

- (void)learnRecentMessageUserIsRespondingTo
{
  v18 = *MEMORY[0x277D85DE8];
  m_impl = self->m_impl;
  if (m_impl)
  {
    if (m_impl[34])
    {
      v3 = m_impl[33];
      if (v3)
      {
        if (**(v3 + 8) != *(*(v3 + 8) + 8) && [(TIKeyboardInputManager *)self shouldSuppressLearning]== 4)
        {
          keyboardState = [(TIKeyboardInputManager *)self keyboardState];
          responseContext = [keyboardState responseContext];
          if (responseContext)
          {
            v6 = responseContext;
            keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
            inputContextHistory = [keyboardState2 inputContextHistory];

            if (!inputContextHistory)
            {
              v9 = *(self->m_impl + 34);
              keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
              responseContext2 = [keyboardState3 responseContext];
              KB::utf8_string(responseContext2, v16);
              v12 = self->m_impl;
              keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
              recipientIdentifier = [keyboardState4 recipientIdentifier];
              (*(*v9 + 392))(v9, v16, v12 + 264, recipientIdentifier, 2, 0.0);

              if (v17)
              {
                if (v16[6] == 1)
                {
                  free(v17);
                }
              }
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

- (void)synchronizeConversationHistoryWithInputContextHistory:(id)history
{
  historyCopy = history;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  inputContextHistory = [keyboardState inputContextHistory];

  recipientIdentifiers = [inputContextHistory recipientIdentifiers];
  if (recipientIdentifiers)
  {
    v9 = recipientIdentifiers;
    recipientIdentifiers2 = [inputContextHistory recipientIdentifiers];
    recipientIdentifiers3 = [historyCopy recipientIdentifiers];
    v12 = [recipientIdentifiers2 isEqualToSet:recipientIdentifiers3];

    if ((v12 & 1) == 0)
    {
      [(TIKeyboardInputManager *)self resetConversationHistory];
      synchronizedInputContextHistory = self->_synchronizedInputContextHistory;
      self->_synchronizedInputContextHistory = 0;
    }
  }

  v14 = self->_synchronizedInputContextHistory;
  if (v14)
  {
    [(TIInputContextHistory *)v14 appendPendingEntriesFromInputContextHistory:historyCopy];
  }

  else
  {
    objc_storeStrong(&self->_synchronizedInputContextHistory, history);
  }

  if ([(TIInputContextHistory *)self->_synchronizedInputContextHistory hasPendingEntries])
  {
    v15 = self->_synchronizedInputContextHistory;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__TIKeyboardInputManager_Learning__synchronizeConversationHistoryWithInputContextHistory___block_invoke;
    v16[3] = &unk_278732C48;
    v16[4] = self;
    [(TIInputContextHistory *)v15 enumeratePendingEntries:v16];
    [(TIInputContextHistory *)self->_synchronizedInputContextHistory assertCheckpointForCoding];
    [(TIKeyboardInputManager *)self updateInputContext];
  }
}

- (void)resetConversationHistory
{
  p_conversation_history = &self->conversation_history;
  begin = self->conversation_history.__begin_;
  for (i = self->conversation_history.__end_; i != begin; std::allocator_traits<std::allocator<RecentMessage>>::destroy[abi:nn200100]<RecentMessage,void,0>(i))
  {
    i = (i - 48);
  }

  p_conversation_history->__end_ = begin;
  m_impl = self->m_impl;
  if (m_impl)
  {
    v7 = m_impl[34];
    if (v7)
    {
      v8 = m_impl[33];
      if (v8)
      {
        if (**(v8 + 8) != *(*(v8 + 8) + 8))
        {
          (*(*v7 + 128))(v7, a2);
          v9 = +[TIResponseKitManager sharedTIResponseKitManager];
          [v9 resetResponseKitConversationHistory];
        }
      }
    }
  }
}

- (void)addItemToConversationHistoryWithText:(id)text timestamp:(id)timestamp senderID:(id)d recipientIdentifiers:(id)identifiers
{
  v93 = *MEMORY[0x277D85DE8];
  textCopy = text;
  timestampCopy = timestamp;
  dCopy = d;
  identifiersCopy = identifiers;
  m_impl = self->m_impl;
  if (!m_impl)
  {
    goto LABEL_67;
  }

  if (!m_impl[34])
  {
    goto LABEL_67;
  }

  v15 = m_impl[33];
  if (!v15)
  {
    goto LABEL_67;
  }

  if (**(v15 + 8) == *(*(v15 + 8) + 8))
  {
    goto LABEL_67;
  }

  v16 = [textCopy length];
  if (v16 > [MEMORY[0x277D6F370] maxEntryLength])
  {
    goto LABEL_67;
  }

  senderIdentifiers = [(TIInputContextHistory *)self->_synchronizedInputContextHistory senderIdentifiers];
  v18 = [senderIdentifiers count];
  if (dCopy)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  v21 = dCopy;
  if (!v19)
  {
    if (![senderIdentifiers containsObject:dCopy])
    {
      v20 = 0;
      v21 = dCopy;
      goto LABEL_18;
    }

    v21 = *MEMORY[0x277D22F08];
  }

  if (!v21)
  {
    v71 = 0;
    goto LABEL_19;
  }

LABEL_18:
  v71 = v21;
  CFRetain(v21);
LABEL_19:
  v22 = self->m_impl;
  v23 = v22[35];
  v70 = v22[34];
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v22 = self->m_impl;
  }

  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x3812000000;
  v86[3] = __Block_byref_object_copy__18463;
  v86[4] = __Block_byref_object_dispose__18464;
  v86[5] = "";
  v24 = v22[33];
  v87 = v24;
  if (v24)
  {
    atomic_fetch_add(v24, 1u);
  }

  [textCopy _stringWithLongestWhitespaceDelimitedSuffixOfMaxLength:200];
  v75 = p_conversation_history = &self->conversation_history;
  KB::utf8_string(v75, v89);
  v91 = 0;
  v92 = 0;
  end = self->conversation_history.__end_;
  cap = self->conversation_history.__cap_;
  v69 = v23;
  v73 = v20;
  if (end >= cap)
  {
    v31 = 0xAAAAAAAAAAAAAAABLL * ((end - p_conversation_history->__begin_) >> 4);
    if (v31 + 1 > 0x555555555555555)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v32 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_conversation_history->__begin_) >> 4);
    v33 = 2 * v32;
    if (2 * v32 <= v31 + 1)
    {
      v33 = v31 + 1;
    }

    if (v32 >= 0x2AAAAAAAAAAAAAALL)
    {
      v34 = 0x555555555555555;
    }

    else
    {
      v34 = v33;
    }

    if (v34)
    {
      if (v34 <= 0x555555555555555)
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v35 = 16 * ((end - p_conversation_history->__begin_) >> 4);
    *v35 = 0x100000;
    *(v35 + 4) = 0;
    *(v35 + 6) = 0;
    *(v35 + 8) = 0;
    KB::String::operator=(48 * v31, v89);
    v36 = v91;
    v91 = 0;
    *(v35 + 32) = v36;
    *(v35 + 40) = v92;
    v65 = (48 * v31 + 48);
    begin = p_conversation_history->__begin_;
    v38 = self->conversation_history.__end_;
    v39 = (v35 + p_conversation_history->__begin_ - v38);
    if (p_conversation_history->__begin_ != v38)
    {
      v40 = v39;
      v41 = p_conversation_history->__begin_;
      v63 = v40;
      do
      {
        *v40 = 0x100000;
        *(v40 + 4) = 0;
        *(v40 + 6) = 0;
        *(v40 + 8) = 0;
        v42 = KB::String::operator=(v40, v41);
        v43 = *(v41 + 4);
        *(v41 + 4) = 0;
        *(v42 + 32) = v43;
        *(v42 + 40) = *(v41 + 10);
        v41 = (v41 + 48);
        v40 = v42 + 48;
      }

      while (v41 != v38);
      v39 = v63;
      do
      {
        std::allocator_traits<std::allocator<RecentMessage>>::destroy[abi:nn200100]<RecentMessage,void,0>(begin);
        begin += 48;
      }

      while (begin != v38);
    }

    v44 = p_conversation_history->__begin_;
    v30 = v65;
    p_conversation_history->__begin_ = v39;
    self->conversation_history.__end_ = v65;
    self->conversation_history.__cap_ = 0;
    if (v44)
    {
      operator delete(v44);
    }

    v23 = v69;
  }

  else
  {
    *end = 0x100000;
    *(end + 2) = 0;
    *(end + 6) = 0;
    *(end + 1) = 0;
    v28 = KB::String::operator=(end, v89);
    v29 = v91;
    v91 = 0;
    *(v28 + 32) = v29;
    *(v28 + 40) = v92;
    v30 = (v28 + 48);
  }

  self->conversation_history.__end_ = v30;
  v45 = v91;
  v91 = 0;
  if (v45)
  {
    v88 = (v45 + 80);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v88);
    language_modeling::v1::LinguisticContext::~LinguisticContext((v45 + 72));
    language_modeling::v1::LinguisticContext::~LinguisticContext((v45 + 64));
    v46 = *(v45 + 16);
    if (v46)
    {
      *(v45 + 24) = v46;
      operator delete(v46);
    }

    v47 = *(v45 + 8);
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v47);
    }

    MEMORY[0x2318BE270](v45, 0x1020C40C12D0AD1);
  }

  if (v90 && v89[6] == 1)
  {
    free(v90);
  }

  v48 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3321888768;
  v76[2] = __113__TIKeyboardInputManager_Learning__addItemToConversationHistoryWithText_timestamp_senderID_recipientIdentifiers___block_invoke;
  v76[3] = &unk_283FDDC58;
  v83 = v70;
  v84 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = textCopy;
  v77 = v49;
  v85 = v71;
  v78 = identifiersCopy;
  v72 = senderIdentifiers;
  v79 = v72;
  v50 = dCopy;
  v80 = v50;
  v82 = v86;
  v51 = timestampCopy;
  v81 = v51;
  [v48 performTaskInBackground:v76];

  if (v73)
  {
    synchronizedInputContextHistory = self->_synchronizedInputContextHistory;
    v66 = v49;
    mostRecentNonSenderTextEntry = [(TIInputContextHistory *)synchronizedInputContextHistory mostRecentNonSenderTextEntry];
    v64 = +[TIResponseKitManager sharedTIResponseKitManager];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    [keyboardState clientIdentifier];
    v55 = v54 = v51;
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    recipientIdentifier = [keyboardState2 recipientIdentifier];
    LOBYTE(v62) = 1;
    v61 = v54;
    v58 = mostRecentNonSenderTextEntry;
    [v64 registerResponseKitResponse:v66 forMessage:mostRecentNonSenderTextEntry withLanguage:normalizedIdentifier withClientID:v55 withSenderID:v50 withRecipientID:recipientIdentifier withTimestamp:v61 shouldUpdateConversationHistory:v62];

    v23 = v69;
  }

  else
  {
    if (!v49 || !v51 || !dCopy)
    {
      goto LABEL_60;
    }

    v59 = +[TIResponseKitManager sharedTIResponseKitManager];
    v60 = v49;
    v58 = v59;
    [v59 updateResponseKitConversationHistoryWithMessage:v60 withSenderID:v50 withTimestamp:v51];
  }

LABEL_60:
  if (v84)
  {
    std::__shared_weak_count::__release_weak(v84);
  }

  _Block_object_dispose(v86, 8);
  if (v87)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v87);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

LABEL_67:
}

void __113__TIKeyboardInputManager_Learning__addItemToConversationHistoryWithText_timestamp_senderID_recipientIdentifiers___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  v13 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v10 = *(a1 + 64);
  v9 = v10;
  TIDispatchSync();

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

void __113__TIKeyboardInputManager_Learning__addItemToConversationHistoryWithText_timestamp_senderID_recipientIdentifiers___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 88);
  if (!v2)
  {
LABEL_17:
    v3 = 0;
    goto LABEL_18;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (v3)
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = [*(a1 + 32) length];
      if (!*(a1 + 96))
      {
        v6 = [*(a1 + 40) allObjects];
        v7 = [v6 componentsJoinedByString:{@", "}];

        v8 = [*(a1 + 48) allObjects];
        v9 = [v8 componentsJoinedByString:{@", "}];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v15 = 136315394;
          *v16 = "[TIKeyboardInputManager(Learning) addItemToConversationHistoryWithText:timestamp:senderID:recipientIdentifiers:]_block_invoke_2";
          *&v16[8] = 2112;
          *&v16[10] = v7;
          _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Recipients are: %@", &v15, 0x16u);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 56);
          v15 = 136315394;
          *v16 = "[TIKeyboardInputManager(Learning) addItemToConversationHistoryWithText:timestamp:senderID:recipientIdentifiers:]_block_invoke";
          *&v16[8] = 2112;
          *&v16[10] = v14;
          _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Sender Identifier: %@", &v15, 0x16u);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v15 = 136315394;
          *v16 = "[TIKeyboardInputManager(Learning) addItemToConversationHistoryWithText:timestamp:senderID:recipientIdentifiers:]_block_invoke";
          *&v16[8] = 2112;
          *&v16[10] = v9;
          _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  All-Sender-Identifiers: %@", &v15, 0x16u);
        }
      }

      if (v5 <= 0x3FFE)
      {
        KB::utf8_string(*(a1 + 32), &v15);
        v10 = *(*(a1 + 72) + 8);
        [*(a1 + 64) timeIntervalSinceReferenceDate];
        (*(*v4 + 392))(v4, &v15, v10 + 48, *(a1 + 96), 2);
        if (*&v16[4])
        {
          if (v16[2] == 1)
          {
            free(*&v16[4]);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      goto LABEL_17;
    }
  }

LABEL_18:
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 48);
  *(v11 + 48) = 0;
  if (v12)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v12);
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

- (void)registerRevisionFrom:(id)from to:(id)to contextTokens:(id)tokens
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  tokensCopy = tokens;
  if (fromCopy && toCopy)
  {
    if ((objc_msgSend_isEqualToString_(toCopy) & 1) == 0)
    {
      rejectionsDatabase = [(TIKeyboardInputManager *)self rejectionsDatabase];
      if (rejectionsDatabase)
      {
        v12 = rejectionsDatabase;
        v13 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:fromCopy];

        v14 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:toCopy];

        v15 = TI::RejectionsDatabase::insert_acceptance(*v12, [v13 UTF8String], objc_msgSend(v14, "UTF8String"));
        [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v15];

        toCopy = v14;
        fromCopy = v13;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v17 = "[TIKeyboardInputManager(Learning) registerRevisionFrom:to:contextTokens:]";
    _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  registerRevisionFrom called with nil parameter", buf, 0xCu);
  }
}

- (void)registerNegativeEvidence:(id)evidence tokenID:(TITokenID)d contextTokens:(id)tokens intended:(id)intended intendedTokenID:(TITokenID)iD hint:(int)hint
{
  v8 = *&hint;
  v35 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  dCopy = d;
  evidenceCopy = evidence;
  tokensCopy = tokens;
  intendedCopy = intended;
  v15 = intendedCopy;
  if (!evidenceCopy || !intendedCopy || (objc_msgSend_isEqualToString_(evidenceCopy) & 1) != 0)
  {
    goto LABEL_28;
  }

  if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) != 1)
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (adaptation_autocorrection_rejection_v2_override_for_trial)
  {
LABEL_8:
    [(TIKeyboardInputManager *)self setRejectedAutocorrection:evidenceCopy forInput:v15];
  }

LABEL_9:
  v16 = lmContextOrEmpty(tokensCopy);
  if ([(TIKeyboardInputManager *)self shouldSuppressLearning]!= 4)
  {
    goto LABEL_28;
  }

  if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) == 1)
  {
    if ((adaptation_autocorrection_rejection_v2_override_for_trial & 1) == 0)
    {
LABEL_12:
      m_impl = self->m_impl;
      if (m_impl)
      {
        v18 = m_impl[34];
        if (v18)
        {
          KB::utf8_string(evidenceCopy, &v34);
          (*(*v18 + 360))(v18, &v34, &dCopy, v16, &iDCopy, v8);
          if (v34.__r_.__value_.__l.__size_)
          {
            if (v34.__r_.__value_.__s.__data_[6] == 1)
            {
              free(v34.__r_.__value_.__l.__size_);
            }
          }
        }
      }

      goto LABEL_28;
    }
  }

  else if ((_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_12;
  }

  rejectionsDatabase = [(TIKeyboardInputManager *)self rejectionsDatabase];
  if (rejectionsDatabase)
  {
    v20 = rejectionsDatabase;
    v21 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:evidenceCopy];

    v22 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:v15];

    if (![(TIKeyboardInputManager *)self blockedByNegativeLearning:v22 correction:v21 ignoreSoft:1])
      v23 = {;
      [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v23];

      v24 = [MEMORY[0x277CBEAA8] now];
      [v24 timeIntervalSince1970];
      v26 = v25;

      TI::RejectionsDatabase::insert_rejection(*v20, [v22 UTF8String], objc_msgSend(v21, "UTF8String"), v26);
      if ([v21 hasPrefix:v22])
        v27 = {;
        [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v27];

        std::string::basic_string[abi:nn200100]<0>(&v34, [v21 UTF8String]);
        std::string::basic_string[abi:nn200100]<0>(&v30, [v21 UTF8String]);
        std::string::basic_string[abi:nn200100]<0>(__p, [v22 UTF8String]);
        TIInlineCompletionsNegativeLearning::registerLearning(v20, &v34, __p, 1);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }
      }
    }

    v15 = v22;
    evidenceCopy = v21;
  }

LABEL_28:
}

- (void)softLearningRegisterDeleted:(id)deleted
{
  deletedCopy = deleted;
  rejectionsDatabase = [(TIKeyboardInputManager *)self rejectionsDatabase];
  if (rejectionsDatabase)
  {
    v6 = rejectionsDatabase;
    v7 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:deletedCopy];

    v8 = [MEMORY[0x277CBEAA8] now];
    [v8 timeIntervalSince1970];
    v10 = v9;

    deletedCopy = v7;
    std::string::basic_string[abi:nn200100]<0>(__p, [v7 UTF8String]);
    TI::RejectionsDatabase::soft_add_deleted(v6, __p, v10);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[NegativeLearning] [SoftLearning] recording deleted word %@\n", v7];
    [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v11];
  }
}

- (void)softLearningRegisterAccepted:(id)accepted typed:(id)typed
{
  acceptedCopy = accepted;
  typedCopy = typed;
  rejectionsDatabase = [(TIKeyboardInputManager *)self rejectionsDatabase];
  if (rejectionsDatabase)
  {
    v9 = rejectionsDatabase;
    v10 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:acceptedCopy];

    v11 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:typedCopy];

    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSince1970];
    v14 = v13;

    std::string::basic_string[abi:nn200100]<0>(&__str, [v11 UTF8String]);
    std::string::basic_string[abi:nn200100]<0>(&v25, [v10 UTF8String]);
    TI::memory_for_db_path(&v27, v9 + 8, 0);
    v15 = v27;
    std::mutex::lock((v27 + 400));
    v16 = *(v15 + 192);
    if (v16 >= 3)
    {
      v17 = 0;
      v18 = (v15 + 112);
      for (i = 1; i != v16; ++i)
      {
        v20 = *v18;
        v18 += 8;
        if (v20 < *(v15 + (v17 << 6) + 48))
        {
          v17 = i;
        }
      }
    }

    else
    {
      *(v15 + 192) = v16 + 1;
      v17 = v16;
    }

    v21 = v15 + (v17 << 6);
    std::string::operator=(v21, &__str);
    std::string::operator=((v21 + 24), &v25);
    *(v21 + 56) = 0;
    *(v21 + 48) = v14;
    v22 = *(v15 + 392);
    if (v22 >= 1)
    {
      v23 = (v15 + 256);
      do
      {
        ++*v23;
        v23 += 16;
        --v22;
      }

      while (v22);
    }

    std::mutex::unlock((v15 + 400));
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"[NegativeLearning] [SoftLearning] recording accepted word %@ (typed %@)\n", v10, v11];
    [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v24];
  }

  else
  {
    v11 = typedCopy;
    v10 = acceptedCopy;
  }
}

- (BOOL)blockedByNegativeLearning:(id)learning correction:(id)correction ignoreSoft:(BOOL)soft
{
  softCopy = soft;
  learningCopy = learning;
  correctionCopy = correction;
  rejectionsDatabase = [(TIKeyboardInputManager *)self rejectionsDatabase];
  if (!rejectionsDatabase || (v11 = rejectionsDatabase, (objc_msgSend_isEqualToString_(learningCopy) & 1) != 0))
  {
    v12 = 0;
    v13 = correctionCopy;
    v14 = learningCopy;
    goto LABEL_22;
  }

  v14 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:learningCopy];

  v13 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:correctionCopy];

  if ([(TIKeyboardInputManager *)self directlyBlockedByNegativeLearning:v14 correction:v13 ignoreSoft:softCopy retrocorrectionComponent:0])
  {
LABEL_5:
    v12 = 1;
    goto LABEL_22;
  }

  if ([v14 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = softCopy;
    v15 = [v14 componentsSeparatedByString:@" "];
    v16 = [v13 componentsSeparatedByString:@" "];
    v17 = [v15 count];
    if (v17 == [v16 count])
    {
      if (![v15 count])
      {
        v25 = LABEL_13:;
        [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v25];

        goto LABEL_5;
      }

      v18 = 0;
      while (1)
      {
        v19 = [v15 objectAtIndexedSubscript:v18];
        v20 = [v16 objectAtIndexedSubscript:v18];
        isEqualToString = objc_msgSend_isEqualToString_(v19);

        if ((isEqualToString & 1) == 0)
        {
          v22 = [v15 objectAtIndexedSubscript:v18];
          v23 = [v16 objectAtIndexedSubscript:v18];
          v24 = [(TIKeyboardInputManager *)self directlyBlockedByNegativeLearning:v22 correction:v23 ignoreSoft:v36 retrocorrectionComponent:1];

          if (!v24)
          {
            break;
          }
        }

        if ([v15 count] <= ++v18)
        {
          goto LABEL_13;
        }
      }
    }

    LOBYTE(softCopy) = v36;
  }

  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  locale = [inputMode locale];
  v28 = [v14 lowercaseStringWithLocale:locale];

  inputMode2 = [(TIKeyboardInputManagerBase *)self inputMode];
  locale2 = [inputMode2 locale];
  v31 = [v13 lowercaseStringWithLocale:locale2];

  if (![v31 hasPrefix:v28] || (objc_msgSend_isEqualToString_(v31) & 1) != 0)
  {
    goto LABEL_20;
  }

  v32 = [v14 lengthOfBytesUsingEncoding:4];
  std::string::basic_string[abi:nn200100]<0>(__p, [v13 UTF8String]);
  v33 = TIInlineCompletionsNegativeLearning::wordBlockedByNegativeLearning(v11, v32, __p, softCopy);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  if (HIDWORD(v33))
    v35 = {;
    [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v35];

    v12 = 1;
  }

  else
  {
LABEL_20:
    v12 = 0;
  }

LABEL_22:
  return v12;
}

- (BOOL)directlyBlockedByNegativeLearning:(id)learning correction:(id)correction ignoreSoft:(BOOL)soft retrocorrectionComponent:(BOOL)component
{
  componentCopy = component;
  learningCopy = learning;
  correctionCopy = correction;
  rejectionsDatabase = [(TIKeyboardInputManager *)self rejectionsDatabase];
  if (rejectionsDatabase)
  {
    v14 = rejectionsDatabase;
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSince1970];
    v17 = v16;

    v18 = @"autocorrection";
    if (componentCopy)
    {
      v18 = @"retrocorrection component";
    }

    v19 = v18;
    if (!soft)
    {
      if ([(__CFString *)learningCopy length]== 1 && [(__CFString *)correctionCopy length]== 1)
      {
        v20 = 1;
      }

      else
      {
        v22 = correctionCopy;
        v23 = learningCopy;
        v24 = [(__CFString *)v23 _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetPunctuation) withString:&stru_283FDFAF8];

        v25 = [(__CFString *)v22 _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetPunctuation) withString:&stru_283FDFAF8];

        v26 = [v24 compare:v25 options:129];
        if (v26)
        {
          v27 = componentCopy;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          v20 = 3;
        }

        else
        {
          v20 = 20;
        }
      }

      KB::std_string(&v46, learningCopy);
      KB::std_string(__p, correctionCopy);
      should_block = TI::RejectionsDatabase::soft_should_block(v14, &v46, __p, v20, v17);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v48[0].__locale_) < 0)
      {
        operator delete(v46);
        if (should_block)
        {
          goto LABEL_19;
        }
      }

      else if (should_block)
      {
LABEL_19:
LABEL_41:
        correctionCopy = [MEMORY[0x277CCACA8] stringWithFormat:v29, v19, learningCopy, correctionCopy];
        [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:correctionCopy];

        v21 = 1;
LABEL_43:

        goto LABEL_44;
      }
    }

    uTF8String = [(__CFString *)learningCopy UTF8String];
    uTF8String2 = [(__CFString *)correctionCopy UTF8String];
    v31 = *v14;
    ppStmt = 0;
    std::ostringstream::basic_ostringstream[abi:nn200100](&v46);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46, "SELECT performed_count, soft_rejections, hard_rejections, last_soft_rejection, last_hard_rejection ", 99);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46, "FROM ", 5);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46, "rejections", 10);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46, " WHERE typed = :typed AND correction = :correction", 50);
    std::ostringstream::str[abi:nn200100](__p, &v46);
    v46 = *MEMORY[0x277D82828];
    *(&v46 + *(v46 - 3)) = *(MEMORY[0x277D82828] + 24);
    v47 = MEMORY[0x277D82878] + 16;
    if (v49 < 0)
    {
      operator delete(v48[7].__locale_);
    }

    v47 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v48);
    std::ostream::~ostream();
    MEMORY[0x2318BE200](&v50);
    if (v44 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    if (sqlite3_prepare_v2(v31, v32, -1, &ppStmt, 0))
    {
      v33 = 0;
    }

    else
    {
      v34 = ppStmt;
      v35 = sqlite3_bind_parameter_index(ppStmt, ":typed");
      sqlite3_bind_text(v34, v35, uTF8String, -1, 0);
      v31 = ppStmt;
      v36 = sqlite3_bind_parameter_index(ppStmt, ":correction");
      sqlite3_bind_text(v31, v36, uTF8String2, -1, 0);
      v37 = sqlite3_step(ppStmt);
      v33 = v37 == 100;
      if (v37 == 100)
      {
        sqlite3_column_int(ppStmt, 0);
        sqlite3_column_int(ppStmt, 1);
        LODWORD(v31) = sqlite3_column_int(ppStmt, 2);
        sqlite3_column_double(ppStmt, 3);
        v6 = sqlite3_column_double(ppStmt, 4);
      }

      sqlite3_finalize(ppStmt);
    }

    if (v44 < 0)
    {
      operator delete(__p[0]);
      if (!v33)
      {
        goto LABEL_42;
      }
    }

    else if (!v33)
    {
      goto LABEL_42;
    }

    v38 = (v17 - v6) / 60.0 / 60.0 / 24.0;
    v39 = v38 > 180.0 || v31 == 0;
    if (!v39 && log(v38) / 1.38629436 < (v31 - 1))
    {
      goto LABEL_41;
    }

LABEL_42:
    v21 = 0;
    goto LABEL_43;
  }

  v21 = 0;
LABEL_44:

  return v21;
}

- (void)decrementLanguageModelCount:(id)count tokenID:(TITokenID)d contextTokens:(id)tokens
{
  v76 = *MEMORY[0x277D85DE8];
  dCopy = d;
  countCopy = count;
  tokensCopy = tokens;
  v10 = tokensCopy;
  m_impl = self->m_impl;
  if (!m_impl || !m_impl[34])
  {
    goto LABEL_76;
  }

  v12 = lmContextOrEmpty(tokensCopy);
  if (![(TIKeyboardInputManager *)self shouldSuppressLanguageSelectionEvidence])
  {
    [(TIKeyboardInputManager *)self languageSelectionController];
    v14 = v13 = v10;
    [v14 removeTokenString:countCopy tokenID:d context:? contextLength:?];

    v10 = v13;
  }

  shouldSuppressLearning = [(TIKeyboardInputManager *)self shouldSuppressLearning];
  if (shouldSuppressLearning == 4)
  {
    v16 = *(self->m_impl + 34);
    KB::utf8_string(countCopy, &v73);
    (*(*v16 + 352))(v16, &v73, &dCopy, v12);
    if (v74 && BYTE6(v73) == 1)
    {
      free(v74);
    }

    goto LABEL_10;
  }

  if (shouldSuppressLearning - 3 <= 1)
  {
LABEL_10:
    v17 = *(self->m_impl + 33);
    KB::utf8_string(countCopy, &__p);
    KB::DictionaryContainer::closest_static_match(&v73, v17, &__p);
    if (__p.__r_.__value_.__l.__size_ && __p.__r_.__value_.__s.__data_[6] == 1)
    {
      free(__p.__r_.__value_.__l.__size_);
    }

    if (_os_feature_enabled_impl() && (v75[91] & 8) != 0 && (*(**(self->m_impl + 34) + 400))(*(self->m_impl + 34), dCopy.lexicon_id))
    {
      v43 = v10;
      keyboardState = [(TIKeyboardInputManager *)self keyboardState];
      clientIdentifier = [keyboardState clientIdentifier];

      v57 = 0;
      v58 = 0;
      v59 = 0;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      inputContextHistory = [keyboardState2 inputContextHistory];
      recipientIdentifiers = [inputContextHistory recipientIdentifiers];
      allObjects = [recipientIdentifiers allObjects];

      v23 = [allObjects countByEnumeratingWithState:&v53 objects:v71 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v54;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v54 != v25)
            {
              objc_enumerationMutation(allObjects);
            }

            std::string::basic_string[abi:nn200100]<0>(&__p, [*(*(&v53 + 1) + 8 * i) UTF8String]);
            std::vector<std::string>::push_back[abi:nn200100](&v57, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          v24 = [allObjects countByEnumeratingWithState:&v53 objects:v71 count:16];
        }

        while (v24);
      }

      v49 = TILocaleIdentifierForLexiconID(dCopy.lexicon_id);
      v27 = v74;
      if (!v74)
      {
        v27 = v75;
      }

      if (v73)
      {
        v28 = v27;
      }

      else
      {
        v28 = "";
      }

      __s = v28;
      uTF8String = [clientIdentifier UTF8String];
      v51 = 0;
      v52 = 0;
      v50 = 0;
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v50, v57, v58, 0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 3));
      v48 = uTF8String;
      if (uTF8String)
      {
        v30 = v50;
        v46 = v51;
        if (v51 != v50)
        {
          v45 = countCopy;
          while (1)
          {
            if (*(v30 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *v30, *(v30 + 8));
            }

            else
            {
              __p = *v30;
            }

            std::string::basic_string[abi:nn200100]<0>(v69, __s);
            KB::cf_string(v69, v68);
            v31 = *v68;
            std::string::basic_string[abi:nn200100]<0>(v65, v48);
            KB::cf_string(v65, &v67);
            v32 = v67;
            v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v34 = __p.__r_.__value_.__r.__words[0];
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            std::string::basic_string[abi:nn200100]<0>(v62, p_p);
            KB::cf_string(v62, &v64);
            v36 = v64;
            options_with_word_locale(v61, v49);
            v37 = *v61;
            LXVulgarWordUsageDatabaseDecrementUsageCount();
            if (v37)
            {
              CFRelease(v37);
            }

            if (v36)
            {
              CFRelease(v36);
            }

            if (v63 < 0)
            {
              operator delete(v62[0]);
            }

            if (v32)
            {
              CFRelease(v32);
            }

            if (v66 < 0)
            {
              operator delete(v65[0]);
            }

            if (v31)
            {
              CFRelease(v31);
            }

            if (v70 < 0)
            {
              operator delete(v69[0]);
              if (v33 < 0)
              {
LABEL_56:
                operator delete(v34);
              }
            }

            else if (v33 < 0)
            {
              goto LABEL_56;
            }

            v30 += 24;
            countCopy = v45;
            if (v30 == v46)
            {
              goto LABEL_69;
            }
          }
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, __s);
        KB::cf_string(&__p, v65);
        v38 = v65[0];
        std::string::basic_string[abi:nn200100]<0>(v69, uTF8String);
        KB::cf_string(v69, v62);
        v39 = v62[0];
        options_with_word_locale(v68, v49);
        v40 = *v68;
        LXVulgarWordUsageDatabaseDecrementUsageCount();
        if (v40)
        {
          CFRelease(v40);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot decrement the usage count because app_id is NULL", &__p, 2u);
      }

LABEL_69:
      __p.__r_.__value_.__r.__words[0] = &v50;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v57;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__p);

      v10 = v43;
    }

    KB::Word::~Word(&v73);
  }

  v41 = self->m_impl;
  KB::utf8_string(countCopy, &v73);
  v42 = v41[28];
  if (v42)
  {
    (*(*v42 + 112))(v42, &v73);
  }

  if (v74 && BYTE6(v73) == 1)
  {
    free(v74);
  }

LABEL_76:
}

- (void)incrementLanguageModelCount:(id)count tokenID:(TITokenID)d contextTokens:(id)tokens saveToDifferentialPrivacy:(int)privacy
{
  v6 = *&privacy;
  v86[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  countCopy = count;
  tokensCopy = tokens;
  getTestingStateObject = [(TIKeyboardInputManager *)self getTestingStateObject];

  if (v6 && getTestingStateObject)
  {
    v86[0] = countCopy;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    v86[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];

    getTestingStateObject2 = [(TIKeyboardInputManager *)self getTestingStateObject];
    [getTestingStateObject2 setObject:v14 forKey:@"incrementLanguageModelCount"];
  }

  m_impl = self->m_impl;
  if (!m_impl || !m_impl[34])
  {
    goto LABEL_86;
  }

  v17 = lmContextOrEmpty(tokensCopy);
  if (![(TIKeyboardInputManager *)self shouldSuppressLanguageSelectionEvidence])
  {
    languageSelectionController = [(TIKeyboardInputManager *)self languageSelectionController];
    [languageSelectionController addTokenString:countCopy tokenID:d context:? contextLength:?];
  }

  shouldSuppressLearning = [(TIKeyboardInputManager *)self shouldSuppressLearning];
  if (shouldSuppressLearning != 4)
  {
    if (shouldSuppressLearning - 3 > 1)
    {
      goto LABEL_86;
    }

    goto LABEL_22;
  }

  if (v6)
  {
    if ((v6 & 2) == 0)
    {
LABEL_11:
      (*(**(self->m_impl + 34) + 368))(*(self->m_impl + 34), countCopy, d, v6);
      goto LABEL_18;
    }

    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    if ([keyboardState autocorrectionEnabled])
    {
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      textInputTraits = [keyboardState2 textInputTraits];
      autocorrectionType = [textInputTraits autocorrectionType];

      if (autocorrectionType != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

LABEL_18:
  v23 = [(TIKeyboardInputManager *)self dictionaryStringForExternalString:countCopy];
  v24 = *(self->m_impl + 34);
  KB::utf8_string(v23, &v83);
  (*(*v24 + 344))(v24, &v83, &dCopy, v17);
  if (v84 && BYTE6(v83) == 1)
  {
    free(v84);
  }

LABEL_22:
  v25 = *(self->m_impl + 33);
  KB::utf8_string(countCopy, &__p);
  KB::DictionaryContainer::closest_static_match(&v83, v25, &__p);
  if (__p.__r_.__value_.__l.__size_ && __p.__r_.__value_.__s.__data_[6] == 1)
  {
    free(__p.__r_.__value_.__l.__size_);
  }

  if (_os_feature_enabled_impl() && (v85[91] & 8) != 0 && (*(**(self->m_impl + 34) + 400))(*(self->m_impl + 34), dCopy.lexicon_id))
  {
    keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
    clientIdentifier = [keyboardState3 clientIdentifier];

    v67 = 0;
    v68 = 0;
    v69 = 0;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
    inputContextHistory = [keyboardState4 inputContextHistory];
    recipientIdentifiers = [inputContextHistory recipientIdentifiers];
    allObjects = [recipientIdentifiers allObjects];

    v31 = [allObjects countByEnumeratingWithState:&v63 objects:v81 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v64;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v64 != v33)
          {
            objc_enumerationMutation(allObjects);
          }

          std::string::basic_string[abi:nn200100]<0>(&__p, [*(*(&v63 + 1) + 8 * i) UTF8String]);
          std::vector<std::string>::push_back[abi:nn200100](&v67, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v32 = [allObjects countByEnumeratingWithState:&v63 objects:v81 count:16];
      }

      while (v32);
    }

    v35 = TILocaleIdentifierForLexiconID(dCopy.lexicon_id);
    v36 = self->m_impl;
    v37 = v84;
    if (!v84)
    {
      v37 = v85;
    }

    if (v83)
    {
      v38 = v37;
    }

    else
    {
      v38 = "";
    }

    __s = v38;
    v57 = v35;
    uTF8String = [clientIdentifier UTF8String];
    v60 = 0;
    v61 = 0;
    v62 = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v60, v67, v68, 0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 3));
    v39.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (v39.__d_.__rep_ - v36[84] >= 0x1A3185C5001)
    {
      rep = v39.__d_.__rep_;
      if (LXVulgarWordUsageDatabasePerformMaintenance())
      {
        v36[84] = rep;
      }
    }

    if (uTF8String)
    {
      v41 = v60;
      v55 = v61;
      if (v61 != v60)
      {
        v54 = tokensCopy;
        while (1)
        {
          if (*(v41 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v41, *(v41 + 8));
          }

          else
          {
            __p = *v41;
          }

          v42 = v36;
          std::string::basic_string[abi:nn200100]<0>(v79, __s);
          KB::cf_string(v79, v78);
          v43 = *v78;
          std::string::basic_string[abi:nn200100]<0>(v75, uTF8String);
          KB::cf_string(v75, &v77);
          v44 = v77;
          v45 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v46 = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          std::string::basic_string[abi:nn200100]<0>(v72, p_p);
          KB::cf_string(v72, &v74);
          v48 = v74;
          options_with_word_locale(v71, v57);
          v49 = *v71;
          LXVulgarWordUsageDatabaseIncrementUsageCount();
          if (v49)
          {
            CFRelease(v49);
          }

          if (v48)
          {
            CFRelease(v48);
          }

          v36 = v42;
          if (v73 < 0)
          {
            operator delete(v72[0]);
          }

          tokensCopy = v54;
          if (v44)
          {
            CFRelease(v44);
          }

          if (v76 < 0)
          {
            operator delete(v75[0]);
          }

          if (v43)
          {
            CFRelease(v43);
          }

          if (v80 < 0)
          {
            operator delete(v79[0]);
            if (v45 < 0)
            {
LABEL_71:
              operator delete(v46);
            }
          }

          else if (v45 < 0)
          {
            goto LABEL_71;
          }

          v41 += 24;
          if (v41 == v55)
          {
            goto LABEL_84;
          }
        }
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, __s);
      KB::cf_string(&__p, v75);
      v50 = v75[0];
      std::string::basic_string[abi:nn200100]<0>(v79, uTF8String);
      KB::cf_string(v79, v72);
      v51 = v72[0];
      options_with_word_locale(v78, v57);
      v52 = *v78;
      LXVulgarWordUsageDatabaseIncrementUsageCount();
      if (v52)
      {
        CFRelease(v52);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      if (v80 < 0)
      {
        operator delete(v79[0]);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot increment the usage count because app_id is NULL", &__p, 2u);
    }

LABEL_84:
    __p.__r_.__value_.__r.__words[0] = &v60;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__p);
    __p.__r_.__value_.__r.__words[0] = &v67;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__p);
  }

  KB::Word::~Word(&v83);
LABEL_86:
}

- (BOOL)shouldLearnWord:(id)word
{
  v11 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  if (![(TIKeyboardInputManager *)self supportsLearning])
  {
    KB::utf8_string(wordCopy, v9);
    goto LABEL_5;
  }

  shouldSuppressLearning = [(TIKeyboardInputManager *)self shouldSuppressLearning];
  KB::utf8_string(wordCopy, v9);
  if (shouldSuppressLearning != 4)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = KB::count_letters_if_word(v9, v6) != 0;
LABEL_6:
  if (v10 && v9[6] == 1)
  {
    free(v10);
  }

  return v7;
}

- (BOOL)shouldSuppressLanguageSelectionEvidence
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  textInputTraits = [keyboardState textInputTraits];
  v4 = [textInputTraits autocorrectionType] == 1;

  return v4;
}

- (unint64_t)shouldSuppressLearning
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  secureTextEntry = [keyboardState secureTextEntry];

  if (secureTextEntry)
  {
    return 0;
  }

  if (![(TIKeyboardInputManager *)self isWordLearningEnabled])
  {
    return 1;
  }

  config = [(TIKeyboardInputManager *)self config];
  usesAdaptation = [config usesAdaptation];

  if (!usesAdaptation)
  {
    return 1;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  textInputTraits = [keyboardState2 textInputTraits];
  autocorrectionType = [textInputTraits autocorrectionType];

  if (autocorrectionType == 1)
  {
    return 2;
  }

  currentState = [(TIKeyboardInputManager *)self currentState];
  learningFlagsMaskForLastAcceptedCandidate = [currentState learningFlagsMaskForLastAcceptedCandidate];

  if (learningFlagsMaskForLastAcceptedCandidate)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

- (void)rejectionsDatabase
{
  if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) == 1)
  {
    if ((adaptation_autocorrection_rejection_v2_override_for_trial & 1) == 0)
    {
      return 0;
    }
  }

  else if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  config = [(TIKeyboardInputManager *)self config];
  if ([config negativeLearningDisabled])
  {

    return 0;
  }

  config2 = [(TIKeyboardInputManager *)self config];
  usesAdaptation = [config2 usesAdaptation];

  if (!usesAdaptation)
  {
    return 0;
  }

  result = self->m_rejectionsDatabase.__ptr_;
  if (!result)
  {
    operator new();
  }

  return result;
}

- (int)precisionPointFromTrialOverride:(id)override
{
  result = [override intValue];
  if ((result - 70) > 0x14 || ((1 << (result - 70)) & 0x100401) == 0)
  {
    return -1;
  }

  return result;
}

- (TIInlineCompletionAnalyticsMetadata)inlineCompletionMetadataFrom:(SEL)from andBundleId:(id)id
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a5;
  idCopy = id;
  inputLanguage = [idCopy inputLanguage];
  KB::utf8_string(inputLanguage, v40);

  inputRegion = [idCopy inputRegion];
  KB::utf8_string(inputRegion, v38);

  inputVariant = [idCopy inputVariant];
  KB::utf8_string(inputVariant, v36);

  secondaryLanguage = [idCopy secondaryLanguage];
  KB::utf8_string(secondaryLanguage, v34);

  secondaryRegion = [idCopy secondaryRegion];
  KB::utf8_string(secondaryRegion, v32);

  layoutName = [idCopy layoutName];
  KB::utf8_string(layoutName, v30);

  LOBYTE(layoutName) = [idCopy keyboardType];
  testingParameters = [idCopy testingParameters];
  v16 = [testingParameters objectForKeyedSubscript:*MEMORY[0x277D6FCF8]];
  KB::utf8_string(v16, v28);

  testingParameters2 = [idCopy testingParameters];
  v18 = [testingParameters2 objectForKeyedSubscript:*MEMORY[0x277D6FCF0]];
  KB::utf8_string(v18, v26);

  testingParameters3 = [idCopy testingParameters];

  v20 = [testingParameters3 objectForKeyedSubscript:*MEMORY[0x277D6FD00]];
  KB::utf8_string(v20, v24);

  KB::utf8_string(v7, v22);
  KB::String::String(retstr, v40);
  KB::String::String(&retstr->var1, v38);
  KB::String::String(&retstr->var2, v36);
  KB::String::String(&retstr->var3, v34);
  KB::String::String(&retstr->var4, v32);
  KB::String::String(&retstr->var5, v30);
  retstr->var6 = layoutName;
  KB::String::String(&retstr->var7, v22);
  KB::String::String(&retstr->var8, v26);
  KB::String::String(&retstr->var9, v28);
  KB::String::String(&retstr->var10, v24);
  if (v23 && v22[6] == 1)
  {
    free(v23);
  }

  if (v25 && v24[6] == 1)
  {
    free(v25);
  }

  if (v27 && v26[6] == 1)
  {
    free(v27);
  }

  if (v29 && v28[6] == 1)
  {
    free(v29);
  }

  if (v31 && v30[6] == 1)
  {
    free(v31);
  }

  if (v33 && v32[6] == 1)
  {
    free(v33);
  }

  if (v35 && v34[6] == 1)
  {
    free(v35);
  }

  if (v37 && v36[6] == 1)
  {
    free(v37);
  }

  if (v39 && v38[6] == 1)
  {
    free(v39);
  }

  result = v41;
  if (v41)
  {
    if (v40[6] == 1)
    {
      free(v41);
    }
  }

  return result;
}

- (int)TIInlineCompletionAcceptanceRejectionTypefromTIRegisterLearningMode:(id)mode
{
  modeCopy = mode;
  if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 1;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 3;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 2;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 5;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 4;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 6;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 7;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 9;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 8;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 10;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 11;
  }

  else if (objc_msgSend_isEqualToString_(modeCopy))
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldGenerateInlineCompletions
{
  v17 = *MEMORY[0x277D85DE8];
  config = [(TIKeyboardInputManager *)self config];
  if ([config isTesting])
  {
    v4 = _os_feature_enabled_impl();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  if ([(TIKeyboardInputManager *)self isEditingExistingWord])
  {
    return 0;
  }

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  inlineCompletionEnabled = [keyboardState inlineCompletionEnabled];

  if (!inlineCompletionEnabled)
  {
    return 0;
  }

  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  clientIdentifier = [keyboardState2 clientIdentifier];
  KB::utf8_string(clientIdentifier, v15);
  v7 = isInlineCompletionDefaultAllowlistedApp(v15, v11, v12, v13, v14);
  if (v16 && v15[6] == 1)
  {
    free(v16);
  }

  return v7;
}

- (BOOL)shouldPromoteInlineCompletionsToAutocorrections:(id)autocorrections inlineCompletions:(id)completions
{
  autocorrectionsCopy = autocorrections;
  completionsCopy = completions;
  if (_os_feature_enabled_impl())
  {
    autocorrection = [autocorrectionsCopy autocorrection];
    isContinuousPathConversion = [autocorrection isContinuousPathConversion];

    v9 = 0;
    if (completionsCopy && (isContinuousPathConversion & 1) == 0)
    {
      v9 = [completionsCopy count] != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldPromoteAutocorrectionsToInlineCompletions:(id)completions
{
  v20 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  if (_os_feature_enabled_impl() && ([completionsCopy isContinuousPathConversion] & 1) == 0)
  {
    lexiconLocale = [completionsCopy lexiconLocale];
    KB::String::String(v18, [lexiconLocale UTF8String]);

    m_impl = self->m_impl;
    if (m_impl && (v9 = m_impl[34]) != 0 && ((*(*v9 + 168))(v9, v18) & 1) != 0 || ([completionsCopy sourceMask] & 8) != 0)
    {
      v5 = 1;
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      candidate = [completionsCopy candidate];
      lexiconLocale2 = [completionsCopy lexiconLocale];
      v13 = [v10 stringWithFormat:@"Suppressed promotion of %@ (locale: %@, mask: %u) \n", candidate, lexiconLocale2, objc_msgSend(completionsCopy, "sourceMask")];

      [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v13];
      v14 = TIInlineCompletionsOSLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %s", "-[TIKeyboardInputManager(InlineCompletions) shouldPromoteAutocorrectionsToInlineCompletions:]", objc_msgSend(v13, "UTF8String")];
        *buf = 138412290;
        v17 = v15;
        _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0;
    }

    if (v19 && v18[6] == 1)
    {
      free(v19);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)promoteAutocorrectionsToInlineCompletions:(id)completions matchedStem:(String *)stem
{
  v23 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  if (!stem->var0)
  {
    v10 = 0;
    goto LABEL_19;
  }

  WORD2(v20) = 0;
  BYTE6(v20) = 0;
  v21 = " \t\n";
  LODWORD(v20) = 1048579;
  v22 = 0;
  KB::string_split_after(stem, &v20, v16);
  if (v21 && BYTE6(v20) == 1)
  {
    free(v21);
  }

  autocorrection = [completionsCopy autocorrection];
  candidate = [autocorrection candidate];
  KB::String::String(&v20, [candidate UTF8String]);

  KB::String::String(v17, (v16[1] - 32));
  v9 = *(self->m_impl + 33);
  if (v9)
  {
    atomic_fetch_add(v9, 1u);
    if (v20 <= v17[0])
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v20 > v17[0])
  {
LABEL_7:
    if (KB::CollatorWrapper::sortkey_starts_with((*(v9 + 8) + 72), &v20, v17))
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      autocorrection2 = [completionsCopy autocorrection];
      [autocorrection2 setConfidence:3];

      autocorrection3 = [completionsCopy autocorrection];
      [v10 addObject:autocorrection3];

      autocorrection4 = [completionsCopy autocorrection];
      candidate2 = [autocorrection4 candidate];
      [(TIKeyboardInputManager *)self logInlineCompletionsToTypology:@"Promoting autocorrection to inline completion" candidate:candidate2];

LABEL_10:
      WTF::RefCounted<KB::DictionaryContainer>::deref(v9);
      goto LABEL_11;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_11:
  if (v19 && v18 == 1)
  {
    free(v19);
  }

  if (v21 && BYTE6(v20) == 1)
  {
    free(v21);
  }

  v20 = v16;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v20);
LABEL_19:

  return v10;
}

- (id)filterDuplicatePredictions:(id)predictions autocorrection:(id)autocorrection
{
  selfCopy = self;
  v34 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  autocorrectionCopy = autocorrection;
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = predictionsCopy;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v28 = *v30;
    v9 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        supplementalItemIdentifiers = [v11 supplementalItemIdentifiers];
        v13 = supplementalItemIdentifiers;
        if (supplementalItemIdentifiers)
        {
          v14 = supplementalItemIdentifiers;
        }

        else
        {
          v14 = v9;
        }

        v15 = v14;

        supplementalItemIdentifiers2 = [autocorrectionCopy supplementalItemIdentifiers];
        v17 = supplementalItemIdentifiers2;
        if (supplementalItemIdentifiers2)
        {
          v18 = supplementalItemIdentifiers2;
        }

        else
        {
          v18 = v9;
        }

        v19 = v18;

        candidate = [v11 candidate];
        candidate2 = [autocorrectionCopy candidate];
        if (objc_msgSend_isEqualToString_(candidate))
        {
          v22 = [v15 isEqualToArray:v19];

          if (v22)
          {
            candidate3 = [v11 candidate];
            [(TIKeyboardInputManager *)selfCopy logInlineCompletionsToTypology:@"Removed duplicate prediction due to inline promotion to autocorrection" candidate:candidate3];

            goto LABEL_17;
          }
        }

        else
        {
        }

        [array addObject:v11];
LABEL_17:
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)promoteInlineCompletionToAutocorrections:(id)autocorrections predictions:(id)predictions inlineCompletion:(id)completion outReconciledAutocorrections:(id *)reconciledAutocorrections outReconciledPredictions:(id *)reconciledPredictions matchedStem:(String *)stem
{
  v65 = *MEMORY[0x277D85DE8];
  autocorrectionsCopy = autocorrections;
  predictionsCopy = predictions;
  completionCopy = completion;
  v17 = predictionsCopy;
  *reconciledPredictions = predictionsCopy;
  v18 = autocorrectionsCopy;
  *reconciledAutocorrections = autocorrectionsCopy;
  candidate = [completionCopy candidate];
  v20 = [candidate componentsSeparatedByString:@" "];

  if (stem->var0)
  {
    v21 = KB::String::last(stem) == 32;
  }

  else
  {
    v21 = 1;
  }

  if (v21 >= [v20 count])
  {
    [(TIKeyboardInputManager *)self logInlineCompletionsToTypology:@"Should never get here - if the stem ends in a space and inline completion is produced candidate:it has to have at least two words", 0];
  }

  else
  {
    v55 = [v20 objectAtIndexedSubscript:v21];
    WORD2(v62) = 0;
    BYTE6(v62) = 0;
    v63 = " \t\n";
    LODWORD(v62) = 1048579;
    v64 = 0;
    KB::string_split_after(stem, &v62, v60);
    if (v63 && BYTE6(v62) == 1)
    {
      free(v63);
    }

    reconciledPredictionsCopy = reconciledPredictions;
    if (stem->var0 && KB::String::last(stem) != 32)
    {
      v23 = KB::ns_string((v60[1] - 32), v22);
    }

    else
    {
      v23 = &stru_283FDFAF8;
    }

    selfCopy = self;
    v52 = [(TIKeyboardInputManager *)self internalStringToExternal:v23 ignoreCompositionDisabled:1];
    v53 = v23;
    v24 = [objc_alloc(MEMORY[0x277D6F568]) initWithCandidate:v55 forInput:v52 rawInput:v23 wordOriginFeedbackID:objc_msgSend(completionCopy usageTrackingMask:"wordOriginFeedbackID") sourceMask:objc_msgSend(completionCopy learningFlagsMask:{"usageTrackingMask"), objc_msgSend(completionCopy, "sourceMask"), objc_msgSend(completionCopy, "learningFlagsMask")}];
    if ([v20 count] == 1 || (_os_feature_enabled_impl() & 1) == 0)
    {
      v45 = objc_alloc(MEMORY[0x277D6F348]);
      if (autocorrectionsCopy)
      {
        alternateCorrections = [autocorrectionsCopy alternateCorrections];
      }

      else
      {
        alternateCorrections = 0;
      }

      *reconciledAutocorrections = [v45 initWithAutocorrection:v24 alternateCorrections:alternateCorrections];
      if (autocorrectionsCopy)
      {
      }

      candidate2 = [v24 candidate];
      [(TIKeyboardInputManager *)self logInlineCompletionsToTypology:@"Promoting (single word) inline completion  to autocorrection" candidate:candidate2];
    }

    else
    {
      v47 = v20;
      v48 = completionCopy;
      if (autocorrectionsCopy)
      {
        autocorrection = [autocorrectionsCopy autocorrection];
        input = [autocorrection input];

        if (input)
        {
          autocorrection2 = [autocorrectionsCopy autocorrection];
          v28 = MEMORY[0x277D6F3D8];
          input2 = [autocorrection2 input];
          v30 = [v28 candidateWithUnchangedInput:input2];

          v31 = objc_alloc(MEMORY[0x277D6F348]);
          alternateCorrections2 = [autocorrectionsCopy alternateCorrections];
          *reconciledAutocorrections = [v31 initWithAutocorrection:v30 alternateCorrections:alternateCorrections2];
        }
      }

      v51 = autocorrectionsCopy;
      candidate2 = [MEMORY[0x277CBEB18] array];
      v34 = [v24 copy];
      [candidate2 addObject:v34];

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v49 = predictionsCopy;
      v35 = predictionsCopy;
      v36 = [v35 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v57;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v57 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v56 + 1) + 8 * i);
            candidate3 = [v40 candidate];
            candidate4 = [v24 candidate];
            isEqualToString = objc_msgSend_isEqualToString_(candidate3);

            if ((isEqualToString & 1) == 0)
            {
              [candidate2 addObject:v40];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v37);
      }

      *reconciledPredictionsCopy = [candidate2 copy];
      candidate5 = [v24 candidate];
      [(TIKeyboardInputManager *)selfCopy logInlineCompletionsToTypology:@"Promoting (first word of multi word) inline completion  to prediction" candidate:candidate5];

      autocorrectionsCopy = v51;
      completionCopy = v48;
      predictionsCopy = v49;
      v20 = v47;
    }

    v62 = v60;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v62);
  }
}

- (void)reconcileInlineCompletionAndAutocorrections:(id)autocorrections inlineCompletions:(id)completions predictions:(id)predictions outReconciledAutocorrections:(id *)reconciledAutocorrections outReconciledInlineCompletions:(id *)inlineCompletions outReconciledPredictions:(id *)reconciledPredictions matchedStem:(String *)stem
{
  v68 = *MEMORY[0x277D85DE8];
  autocorrectionsCopy = autocorrections;
  completionsCopy = completions;
  predictionsCopy = predictions;
  autocorrection = [autocorrectionsCopy autocorrection];
  v19 = autocorrectionsCopy;
  *reconciledAutocorrections = autocorrectionsCopy;
  v20 = completionsCopy;
  *inlineCompletions = completionsCopy;
  v21 = predictionsCopy;
  *reconciledPredictions = predictionsCopy;
  if ([(TIKeyboardInputManager *)self shouldPromoteInlineCompletionsToAutocorrections:autocorrectionsCopy inlineCompletions:completionsCopy])
  {
    reconciledPredictionsCopy = reconciledPredictions;
    v22 = [completionsCopy objectAtIndexedSubscript:0];
    selfCopy = self;
    if ([autocorrection isAutocorrection] && (objc_msgSend(autocorrection, "staticLinguisticLikelihood"), (v23 = objc_claimAutoreleasedReturnValue()) != 0) && (v24 = v23, objc_msgSend(v22, "staticLinguisticLikelihood"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "floatValue"), v27 = v26, objc_msgSend(autocorrection, "staticLinguisticLikelihood"), v28 = autocorrection, v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "floatValue"), v31 = v30, v29, autocorrection = v28, v25, self = selfCopy, v24, v27 <= v31))
    {
      candidate = [v22 candidate];
      [(TIKeyboardInputManager *)selfCopy logInlineCompletionsToTypology:@"Inline completion linguistically inferior to an autocorrect candidate and will be suppressed. Inline completion candidate: " candidate:candidate];

      *inlineCompletions = 0;
    }

    else
    {
      candidate2 = [v22 candidate];
      [(TIKeyboardInputManager *)self logInlineCompletionsToTypology:@"Inline completion linguistically superior - will promote to autocorrect. Inline completion: " candidate:candidate2];

      KB::String::String(v66, stem);
      [(TIKeyboardInputManager *)self promoteInlineCompletionToAutocorrections:autocorrectionsCopy predictions:predictionsCopy inlineCompletion:v22 outReconciledAutocorrections:reconciledAutocorrections outReconciledPredictions:reconciledPredictionsCopy matchedStem:v66];
      if (v67 && v66[6] == 1)
      {
        free(v67);
      }

      if (*reconciledAutocorrections)
      {
        supplementalItemIdentifiers = [v22 supplementalItemIdentifiers];
        v34 = [supplementalItemIdentifiers count];

        if (v34)
        {
          v52 = autocorrection;
          inlineCompletionsCopy = inlineCompletions;
          v54 = predictionsCopy;
          candidate3 = [v22 candidate];
          v36 = [candidate3 componentsSeparatedByString:@" "];
          v37 = [v36 count];

          if (v37 == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v65 = "[TIKeyboardInputManager(InlineCompletions) reconcileInlineCompletionAndAutocorrections:inlineCompletions:predictions:outReconciledAutocorrections:outReconciledInlineCompletions:outReconciledPredictions:matchedStem:]";
              _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  The inline completion being offered contains supplemental identifiers, removing it, and offering a prediction instead", buf, 0xCu);
            }

            array = [MEMORY[0x277CBEB18] array];
            v39 = [v22 copy];
            [array addObject:v39];

            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v40 = predictionsCopy;
            v41 = [v40 countByEnumeratingWithState:&v57 objects:v63 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v58;
              do
              {
                for (i = 0; i != v42; ++i)
                {
                  if (*v58 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v57 + 1) + 8 * i);
                  candidate4 = [v45 candidate];
                  candidate5 = [v22 candidate];
                  isEqualToString = objc_msgSend_isEqualToString_(candidate4);

                  if ((isEqualToString & 1) == 0)
                  {
                    [array addObject:v45];
                  }
                }

                v42 = [v40 countByEnumeratingWithState:&v57 objects:v63 count:16];
              }

              while (v42);
            }

            *reconciledPredictionsCopy = [array copy];
            completionsCopy = v50;
            autocorrectionsCopy = v51;
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v65 = "[TIKeyboardInputManager(InlineCompletions) reconcileInlineCompletionAndAutocorrections:inlineCompletions:predictions:outReconciledAutocorrections:outReconciledInlineCompletions:outReconciledPredictions:matchedStem:]";
            _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  The inline completeion being offered contains supplemental identifiers, but it contained more than one word", buf, 0xCu);
          }

          [v22 setSupplementalItemIdentifiers:0];
          inlineCompletions = inlineCompletionsCopy;
          predictionsCopy = v54;
          autocorrection = v52;
        }
      }
    }

    self = selfCopy;
  }

  if ([autocorrection isAutocorrection] && (!*inlineCompletions || !objc_msgSend(*inlineCompletions, "count")))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(TIKeyboardInputManager *)self shouldPromoteAutocorrectionsToInlineCompletions:autocorrection])
      {
        KB::String::String(v61, stem);
        *inlineCompletions = [(TIKeyboardInputManager *)self promoteAutocorrectionsToInlineCompletions:autocorrectionsCopy matchedStem:v61];
        if (v62)
        {
          if (v61[6] == 1)
          {
            free(v62);
          }
        }
      }
    }
  }
}

- (id)inlineCompletions:(CandidateCollection *)completions matchedStem:(String *)stem
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:0x1CAC083126E978D5 * ((completions->var0.var1 - completions->var0.var0) >> 3)];
  WORD2(v22) = 0;
  BYTE6(v22) = 0;
  v23 = " \t\n";
  LODWORD(v22) = 1048579;
  v24 = 0;
  KB::string_split_after(stem, &v22, v21);
  if (v23 && BYTE6(v22) == 1)
  {
    free(v23);
  }

  if (stem->var0)
  {
    KB::String::String(&v22, (v21[1] - 32));
  }

  else
  {
    KB::String::String(&v22, "");
  }

  v8 = KB::ns_string(&v22, v7);
  if (v23 && BYTE6(v22) == 1)
  {
    free(v23);
  }

  v9 = [(TIKeyboardInputManager *)self internalStringToExternal:v8 ignoreCompositionDisabled:1];
  var0 = completions->var0.var0;
  var1 = completions->var0.var1;
  while (var0 != var1)
  {
    if (*var0)
    {
      v12 = v9;
      v13 = [(TIKeyboardInputManager *)self autocorrectionCandidateForInput:v12 rawInput:v8 withCandidate:var0 insertingSpace:0 sharedPrefixLength:0];
      [v13 setToucanInlineCompletionCandidate:1];
      v14 = MEMORY[0x277CCABB0];
      v16 = *var0;
      v15 = *(var0 + 1);

      LODWORD(v17) = *(v15 + 240 * v16 - 184);
      v18 = [v14 numberWithFloat:v17];
      [v13 setStaticLinguisticLikelihood:v18];

      [v20 addObject:v13];
    }

    var0 = (var0 + 1000);
  }

  v22 = v21;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v22);

  return v20;
}

- (void)logInlineCompletionsToTypology:(id)typology candidate:(id)candidate
{
  v15 = *MEMORY[0x277D85DE8];
  typologyCopy = typology;
  candidateCopy = candidate;
  v8 = TIInlineCompletionsOSLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    typologyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "-[TIKeyboardInputManager(InlineCompletions) logInlineCompletionsToTypology:candidate:]", typologyCopy];
    *buf = 138412290;
    v14 = typologyCopy;
    _os_log_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (candidateCopy)
    v10 = {;
    v11 = TIInlineCompletionsOSLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "-[TIKeyboardInputManager(InlineCompletions) logInlineCompletionsToTypology:candidate:]", v10];
      *buf = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v10];
  }

  else
  {
    [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:typologyCopy];
  }
}

@end