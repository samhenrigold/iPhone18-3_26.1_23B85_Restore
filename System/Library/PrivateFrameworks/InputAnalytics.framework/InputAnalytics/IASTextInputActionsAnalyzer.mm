@interface IASTextInputActionsAnalyzer
+ (IASTextInputActionsAnalyzer)analyzerWithName:(id)name;
+ (id)getOrInitializeArrayFromArray:(id)array forKey:(unint64_t)key initCapacity:(unint64_t)capacity;
+ (id)getOrInitializeArrayFromDictionary:(id)dictionary forKey:(id)key initCapacity:(unint64_t)capacity;
+ (id)getOrInitializeDictionaryFrom:(id)from forKey:(unint64_t)key initCapacity:(int64_t)capacity;
- (BOOL)shouldBeGarbageCollected;
- (IASTextInputActionsAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue;
- (IASTextInputActionsAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue eventHandler:(id)handler;
- (id)computeSessionActionsStringOnSession:(id)session;
- (void)consumeAction:(id)action;
- (void)enumerateAnalytics;
- (void)enumerateTextInputActionsAnalytics:(id)analytics;
- (void)increaseCountForAppBundleId:(id)id forSource:(int64_t)source forActionType:(int64_t)type forFlagOptions:(int64_t)options forInputModeKey:(id)key byAnalyzerEntry:(id)entry;
- (void)reset;
@end

@implementation IASTextInputActionsAnalyzer

- (IASTextInputActionsAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue
{
  v16.receiver = self;
  v16.super_class = IASTextInputActionsAnalyzer;
  v5 = [(IASDailyGarbageCollectionAnalyzer *)&v16 initWithAnalyzerSessionId:id sessionManagerDelegate:delegate queue:queue];
  v6 = v5;
  if (v5)
  {
    name = v5->_name;
    v5->_name = @"TextInputActionsAnalyzer";

    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v10 = objc_msgSend_initWithCapacity_(v8, v9, 1);
    entries = v6->_entries;
    v6->_entries = v10;

    v13 = objc_msgSend_setEventHandler_(v6, v12, &unk_1F4FDA450);
    v14 = sub_1D4620410(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D6F0();
    }
  }

  return v6;
}

- (IASTextInputActionsAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue eventHandler:(id)handler
{
  v16.receiver = self;
  v16.super_class = IASTextInputActionsAnalyzer;
  v6 = [(IASDailyGarbageCollectionAnalyzer *)&v16 initWithAnalyzerSessionId:id sessionManagerDelegate:delegate queue:queue eventHandler:handler];
  v7 = v6;
  if (v6)
  {
    name = v6->_name;
    v6->_name = @"TextInputActionsAnalyzer";

    v9 = objc_alloc(MEMORY[0x1E695DF90]);
    v11 = objc_msgSend_initWithCapacity_(v9, v10, 1);
    entries = v7->_entries;
    v7->_entries = v11;

    v14 = sub_1D4620410(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D6F0();
    }
  }

  return v7;
}

+ (IASTextInputActionsAnalyzer)analyzerWithName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_copy(nameCopy, v5, v6);

  v8 = v4[17];
  v4[17] = v7;

  objc_msgSend_reset(v4, v9, v10);

  return v4;
}

+ (id)getOrInitializeArrayFromDictionary:(id)dictionary forKey:(id)key initCapacity:(unint64_t)capacity
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v10 = objc_msgSend_valueForKey_(dictionaryCopy, v9, keyCopy);
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v10 = objc_msgSend_initWithCapacity_(v11, v12, capacity);
    if (capacity)
    {
      capacityCopy = capacity;
      do
      {
        v16 = objc_msgSend_null(MEMORY[0x1E695DFB0], v13, v14);
        objc_msgSend_addObject_(v10, v17, v16);

        --capacityCopy;
      }

      while (capacityCopy);
    }

    v18 = objc_msgSend_setObject_forKey_(dictionaryCopy, v13, v10, keyCopy);
    v19 = sub_1D4620410(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D724();
    }
  }

  return v10;
}

+ (id)getOrInitializeArrayFromArray:(id)array forKey:(unint64_t)key initCapacity:(unint64_t)capacity
{
  arrayCopy = array;
  v10 = objc_msgSend_count(arrayCopy, v8, v9);
  if (v10 <= key)
  {
    v12 = sub_1D4620410(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1D462D78C();
    }

    if (key >= 0x14)
    {
      sub_1D462D814();
    }

    while (objc_msgSend_count(arrayCopy, v13, v14) <= key)
    {
      v15 = objc_msgSend_null(MEMORY[0x1E695DFB0], v11, v17);
      objc_msgSend_addObject_(arrayCopy, v16, v15);
    }
  }

  v18 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v11, key);
  v21 = objc_msgSend_null(MEMORY[0x1E695DFB0], v19, v20);
  isEqual = objc_msgSend_isEqual_(v18, v22, v21);

  if (isEqual)
  {
    v25 = objc_alloc(MEMORY[0x1E695DF70]);
    v29 = objc_msgSend_initWithCapacity_(v25, v26, capacity);
    if (capacity)
    {
      capacityCopy = capacity;
      do
      {
        v31 = objc_msgSend_null(MEMORY[0x1E695DFB0], v27, v28);
        objc_msgSend_addObject_(v29, v32, v31);

        --capacityCopy;
      }

      while (capacityCopy);
    }

    v33 = objc_msgSend_setObject_atIndexedSubscript_(arrayCopy, v27, v29, key);
    v34 = sub_1D4620410(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D884();
    }
  }

  else
  {
    v29 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v24, key);
  }

  return v29;
}

+ (id)getOrInitializeDictionaryFrom:(id)from forKey:(unint64_t)key initCapacity:(int64_t)capacity
{
  fromCopy = from;
  v9 = objc_msgSend_objectAtIndexedSubscript_(fromCopy, v8, key);
  v12 = objc_msgSend_null(MEMORY[0x1E695DFB0], v10, v11);
  isEqual = objc_msgSend_isEqual_(v9, v13, v12);

  if (isEqual)
  {
    v15 = objc_alloc(MEMORY[0x1E695DF90]);
    v17 = objc_msgSend_initWithCapacity_(v15, v16, capacity);

    v19 = objc_msgSend_setObject_atIndexedSubscript_(fromCopy, v18, v17, key);
    v20 = sub_1D4620410(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D8EC();
    }

    v9 = v17;
  }

  return v9;
}

- (void)increaseCountForAppBundleId:(id)id forSource:(int64_t)source forActionType:(int64_t)type forFlagOptions:(int64_t)options forInputModeKey:(id)key byAnalyzerEntry:(id)entry
{
  v83 = *MEMORY[0x1E69E9840];
  idCopy = id;
  keyCopy = key;
  entryCopy = entry;
  isAllZeroes = objc_msgSend_isAllZeroes(entryCopy, v17, v18);
  if ((isAllZeroes & 1) == 0)
  {
    if (keyCopy)
    {
      if (!idCopy)
      {
        idCopy = &stru_1F4FDAA18;
      }

      v21 = objc_msgSend_getOrInitializeArrayFromDictionary_forKey_initCapacity_(IASTextInputActionsAnalyzer, v20, self->_entries, idCopy, 15);
      v61 = objc_msgSend_getOrInitializeArrayFromArray_forKey_initCapacity_(IASTextInputActionsAnalyzer, v22, v21, source, 20);
      v60 = objc_msgSend_getOrInitializeArrayFromArray_forKey_initCapacity_(IASTextInputActionsAnalyzer, v23, v61, type, 8);
      v62 = objc_msgSend_getOrInitializeDictionaryFrom_forKey_initCapacity_(IASTextInputActionsAnalyzer, v24, v60, options, 1);
      v27 = objc_msgSend_objectForKeyedSubscript_(v62, v25, keyCopy);
      if (!v27)
      {
        v27 = objc_alloc_init(IASTextInputActionsAnalyzerEntry);
        v29 = objc_msgSend_setObject_forKeyedSubscript_(v62, v28, v27, keyCopy);
        v30 = sub_1D4620410(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v59 = objc_msgSend_analyzerSessionId(self, v31, v32);
          v57 = objc_msgSend_description(v59, v51, v52);
          *buf = 138478851;
          v64 = v57;
          v65 = 2048;
          sourceCopy2 = source;
          v67 = 2048;
          typeCopy2 = type;
          v69 = 2048;
          optionsCopy2 = options;
          v71 = 2113;
          v72 = keyCopy;
          _os_log_debug_impl(&dword_1D460F000, v30, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] New input mode key found - initializing new entry for source:%lu actionType:%lu flagOptions%lu inputMode:%{private}@", buf, 0x34u);
        }
      }

      v33 = objc_msgSend_increaseWithEntry_(v27, v26, entryCopy);
      v34 = sub_1D4620410(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v58 = objc_msgSend_analyzerSessionId(self, v35, v36);
        v39 = objc_msgSend_description(v58, v37, v38);
        v56 = objc_msgSend_netCharacters(entryCopy, v40, v41);
        v55 = objc_msgSend_userRemovedCharacters(entryCopy, v42, v43);
        v54 = objc_msgSend_netEmojiCharacters(entryCopy, v44, v45);
        v53 = objc_msgSend_userRemovedEmojiCharacters(entryCopy, v46, v47);
        v50 = objc_msgSend_inputActions(entryCopy, v48, v49);
        *buf = 138480131;
        v64 = v39;
        v65 = 2048;
        sourceCopy2 = source;
        v67 = 2048;
        typeCopy2 = type;
        v69 = 2048;
        optionsCopy2 = options;
        v71 = 2113;
        v72 = keyCopy;
        v73 = 2048;
        v74 = v56;
        v75 = 2048;
        v76 = v55;
        v77 = 2048;
        v78 = v54;
        v79 = 2048;
        v80 = v53;
        v81 = 2048;
        v82 = v50;
        _os_log_debug_impl(&dword_1D460F000, v34, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] Updated entry for source:%lu actionType:%lu flagOptions%lu inputMode:%{private}@ by netChars:%ld userRemovedChars:%ld netEmojiChars:%ld userRemovedEmojiChars:%ld actions:%ld", buf, 0x66u);
      }
    }

    else
    {
      v21 = sub_1D4620410(isAllZeroes);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1D462D954();
      }
    }
  }
}

- (void)consumeAction:(id)action
{
  v253 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (!actionCopy)
  {
    sub_1D462D994(a2, self, v5);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = actionCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v11 = v8;
  if (v8)
  {
    v12 = objc_msgSend_inputMode(v8, v9, v10);

    if (!v12)
    {
      v15 = objc_alloc_init(IATextInputActionsInputMode);
      objc_msgSend_setInputMode_(v11, v16, v15);

      v18 = sub_1D4620410(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1D462DA08();
      }
    }

    v19 = objc_msgSend_clientSideSessionErrors(v11, v13, v14);
    v22 = objc_msgSend_clientSideSessionErrors(v11, v20, v21);
    v25 = objc_msgSend_length(v22, v23, v24);
    v232[0] = MEMORY[0x1E69E9820];
    v232[1] = 3221225472;
    v232[2] = sub_1D461A8F4;
    v232[3] = &unk_1E848A518;
    v232[4] = self;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v19, v26, 0, v25, 2, v232);

    v28 = objc_msgSend_generateAnalyzerEntryFromAction_(IASTextInputActionsAnalyzerEntry, v27, v11);
    v31 = objc_msgSend_inputMode(v11, v29, v30);
    v34 = objc_msgSend_inputModeUniqueString(v31, v32, v33);

    v36 = sub_1D4620410(v35);
    v230 = v34;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v229 = objc_msgSend_analyzerSessionId(self, v37, v38);
      v180 = objc_msgSend_description(v229, v178, v179);
      v225 = objc_msgSend_netCharacters(v28, v181, v182);
      v222 = objc_msgSend_userRemovedCharacters(v28, v183, v184);
      v187 = objc_msgSend_netEmojiCharacters(v28, v185, v186);
      v190 = objc_msgSend_userRemovedEmojiCharacters(v28, v188, v189);
      v193 = objc_msgSend_inputActions(v28, v191, v192);
      v196 = objc_msgSend_source(v11, v194, v195);
      v199 = objc_msgSend_textInputActionsType(v11, v197, v198);
      *buf = 138480131;
      v234 = v180;
      v235 = 2113;
      v236 = v11;
      v237 = 2048;
      v238 = v225;
      v239 = 2048;
      v240 = v222;
      v241 = 2048;
      v242 = v187;
      v243 = 2048;
      v244 = v190;
      v245 = 2048;
      v246 = v193;
      v247 = 2048;
      v248 = v196;
      v34 = v230;
      v249 = 2048;
      v250 = v199;
      v251 = 2113;
      v252 = v230;
      _os_log_debug_impl(&dword_1D460F000, v36, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] consumeAction(): %{private}@ netCharactersDelta:%ld userRemovedCharactersDelta:%ld netEmojiCharactersDelta:%ld sysRemovedObjectsDelta:%ld inputActionsDelta:%ld for source:%lu type:%lu inputMode:%{private}@", buf, 0x66u);
    }

    v41 = objc_msgSend_appBundleId(v11, v39, v40);
    v44 = objc_msgSend_source(v11, v42, v43);
    v47 = objc_msgSend_textInputActionsType(v11, v45, v46);
    v50 = objc_msgSend_flagOptions(v11, v48, v49);
    objc_msgSend_increaseCountForAppBundleId_forSource_forActionType_forFlagOptions_forInputModeKey_byAnalyzerEntry_(self, v51, v41, v44, v47, v50, v34, v28);

    v54 = objc_msgSend_inputMode(v11, v52, v53);
    v57 = objc_msgSend_language(v54, v55, v56);
    if (v57)
    {
    }

    else
    {
      v62 = objc_msgSend_inputMode(v11, v58, v59);
      v65 = objc_msgSend_region(v62, v63, v64);

      if (!v65)
      {
        goto LABEL_18;
      }
    }

    if (objc_msgSend_source(v11, v60, v61) == 4)
    {
      v66 = objc_msgSend_sessionErrors(self, v60, v61);
      v69 = objc_msgSend_inputMode(v11, v67, v68);
      v72 = objc_msgSend_language(v69, v70, v71);
      v74 = objc_msgSend_validateLanguage_(IASTextInputActionsErrorChecking, v73, v72);
      objc_msgSend_logErrorCodeIfNotNil_(v66, v75, v74);

      v78 = objc_msgSend_sessionErrors(self, v76, v77);
      v81 = objc_msgSend_inputMode(v11, v79, v80);
      v84 = objc_msgSend_region(v81, v82, v83);
      v86 = objc_msgSend_validateRegion_(IASTextInputActionsErrorChecking, v85, v84);
      objc_msgSend_logErrorCodeIfNotNil_(v78, v87, v86);
    }

LABEL_18:
    v88 = objc_msgSend_asDictationBegan(v11, v60, v61);
    v91 = v88;
    if (v88 && objc_msgSend_modelessUsedAtLeastOnceCount(v88, v89, v90))
    {
      self->_sessionIsModeless = 1;
    }

    v92 = objc_msgSend_largestSingleInsertionLength(v11, v89, v90);
    v95 = objc_msgSend_largestSingleDeletionLength(v11, v93, v94);
    v98 = objc_msgSend_netCharacterCount(v11, v96, v97);
    v101 = objc_msgSend_flagOptions(v11, v99, v100);
    isEmojiSearchSetInFlagOptions = objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v102, v101);
    if (isEmojiSearchSetInFlagOptions)
    {
      v92 = objc_msgSend_insertedEmojiCount(v11, v104, v105);
      v95 = objc_msgSend_removedEmojiCount(v11, v106, v107);
      v110 = objc_msgSend_insertedEmojiCount(v11, v108, v109);
      v113 = objc_msgSend_removedEmojiCount(v11, v111, v112);
      v98 = v110 - v113;
      v114 = sub_1D4620410(v113);
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
      {
        v200 = objc_msgSend_analyzerSessionId(self, v115, v116);
        v226 = objc_msgSend_description(v200, v201, v202);
        *buf = 138478595;
        v234 = v226;
        v235 = 2048;
        v236 = v92;
        v237 = 2048;
        v238 = v95;
        v239 = 2048;
        v240 = v98;
        _os_log_debug_impl(&dword_1D460F000, v114, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] emoji search - override insertion %lu, deletion %lu, net %ld", buf, 0x2Au);
      }
    }

    if (v92 > self->_largestSessionInsertionLength)
    {
      v117 = sub_1D4620410(isEmojiSearchSetInFlagOptions);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
      {
        v223 = objc_msgSend_analyzerSessionId(self, v118, v119);
        v227 = objc_msgSend_description(v223, v203, v204);
        largestSessionInsertionLength = self->_largestSessionInsertionLength;
        v207 = objc_msgSend_largestSingleInsertionLength(v11, v205, v206);
        *buf = 138478339;
        v234 = v227;
        v235 = 2048;
        v236 = largestSessionInsertionLength;
        v237 = 2048;
        v238 = v207;
        _os_log_debug_impl(&dword_1D460F000, v117, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] largestSessionInsertionLength %lu -> %lu", buf, 0x20u);
      }

      self->_largestSessionInsertionLength = v92;
    }

    v120 = v230;
    if (v95 > self->_largestSessionDeletionLength)
    {
      v121 = sub_1D4620410(isEmojiSearchSetInFlagOptions);
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        v228 = objc_msgSend_analyzerSessionId(self, v122, v123);
        v210 = objc_msgSend_description(v228, v208, v209);
        largestSessionDeletionLength = self->_largestSessionDeletionLength;
        v224 = v210;
        v213 = objc_msgSend_largestSingleDeletionLength(v11, v211, v212);
        *buf = 138478339;
        v234 = v210;
        v235 = 2048;
        v236 = largestSessionDeletionLength;
        v120 = v230;
        v237 = 2048;
        v238 = v213;
        _os_log_debug_impl(&dword_1D460F000, v121, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] largestSessionDeletionLength %lu -> %lu", buf, 0x20u);
      }

      self->_largestSessionDeletionLength = v95;
    }

    v124 = objc_msgSend_flagOptions(v11, v104, v105);
    if ((objc_msgSend_isMarkedTextSetInFlagOptions_(IATextInputActionsUtils, v125, v124) & 1) == 0)
    {
      self->_sessionNetCharacters += v98;
    }

    if (objc_msgSend_isCapableOfTextInsertion(v11, v126, v127) && ((v130 = objc_msgSend_flagOptions(v11, v128, v129), v132 = objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v131, v130), !v132) || (v135 = objc_msgSend_flagOptions(v11, v133, v134), objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v136, v135)) && (v132 = objc_msgSend_insertedEmojiCount(v11, v128, v129)) != 0))
    {
      self->_insertionObservedInSession = 1;
      v137 = sub_1D4620410(v132);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
      {
        sub_1D462DAC8();
      }
    }

    else
    {
      if (self->_insertionObservedInSession)
      {
        goto LABEL_46;
      }

      v138 = objc_msgSend_flagOptions(v11, v128, v129);
      if (objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v139, v138))
      {
        goto LABEL_46;
      }

      v140 = objc_msgSend_removedTextLength(v11, v128, v129);
      self->_charsRemovedBeforeFirstInsertionCount += v140 - objc_msgSend_removedEmojiCount(v11, v141, v142);
      v145 = objc_msgSend_removedEmojiCount(v11, v143, v144);
      self->_emojisRemovedBeforeFirstInsertionCount += v145;
      v137 = sub_1D4620410(v145);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
      {
        v214 = objc_msgSend_analyzerSessionId(self, v146, v147);
        v217 = objc_msgSend_description(v214, v215, v216);
        charsRemovedBeforeFirstInsertionCount = self->_charsRemovedBeforeFirstInsertionCount;
        emojisRemovedBeforeFirstInsertionCount = self->_emojisRemovedBeforeFirstInsertionCount;
        *buf = 138478339;
        v234 = v217;
        v235 = 2048;
        v236 = charsRemovedBeforeFirstInsertionCount;
        v237 = 2048;
        v238 = emojisRemovedBeforeFirstInsertionCount;
        _os_log_debug_impl(&dword_1D460F000, v137, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] Initial deletion %lu, %lu", buf, 0x20u);
      }
    }

LABEL_46:
    v148 = objc_msgSend_processBundleId(v11, v128, v129);
    if (v148)
    {
      v151 = v148;
      v152 = objc_msgSend_processBundleId(v11, v149, v150);
      v155 = objc_msgSend_length(v152, v153, v154);

      if (v155)
      {
        v156 = objc_msgSend_processBundleId(v11, v149, v150);
        mostRecentProcessId = self->_mostRecentProcessId;
        self->_mostRecentProcessId = v156;
      }
    }

    v158 = objc_msgSend_appBundleId(v11, v149, v150);
    if (v158)
    {
      v161 = v158;
      v162 = objc_msgSend_appBundleId(v11, v159, v160);
      v165 = objc_msgSend_length(v162, v163, v164);

      if (v165)
      {
        v166 = objc_msgSend_appBundleId(v11, v159, v160);
        mostRecentAppBundleId = self->_mostRecentAppBundleId;
        self->_mostRecentAppBundleId = v166;
      }
    }

    v168 = objc_msgSend_asEnd(v11, v159, v160);
    v171 = objc_msgSend_keyboardTrialParameters(v168, v169, v170);

    if (v171)
    {
      v174 = objc_msgSend_keyboardTrialParameters(v168, v172, v173);
      objc_msgSend_setKeyboardTrialParameters_(self, v175, v174);

      v177 = sub_1D4620410(v176);
      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
      {
        sub_1D462DAFC();
      }
    }

    v231.receiver = self;
    v231.super_class = IASTextInputActionsAnalyzer;
    [(IASDailyGarbageCollectionAnalyzer *)&v231 consumeAction:actionCopy];
  }
}

- (void)reset
{
  objc_msgSend_removeAllObjects(self->_entries, a2, v2);
  v6 = objc_msgSend_sessionErrors(self, v4, v5);
  objc_msgSend_clear(v6, v7, v8);

  self->_sessionIsModeless = 0;
  self->_largestSessionInsertionLength = 0;
  self->_largestSessionDeletionLength = 0;
  self->_sessionNetCharacters = 0;
  self->_insertionObservedInSession = 0;
  self->_charsRemovedBeforeFirstInsertionCount = 0;
  self->_emojisRemovedBeforeFirstInsertionCount = 0;
  v10 = sub_1D4620410(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462DB30();
  }
}

- (id)computeSessionActionsStringOnSession:(id)session
{
  sessionCopy = session;
  v6 = objc_alloc_init(IATextInputActionsSessionActionInformation);
  v7 = 13;
  v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v8, 13);
  do
  {
    v11 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v9, 0);
    objc_msgSend_addObject_(v10, v12, v11);

    --v7;
  }

  while (v7);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_1D461ACCC;
  v54[3] = &unk_1E848A568;
  v56 = a2;
  v54[4] = self;
  v13 = v10;
  v55 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(sessionCopy, v14, v54);
  objc_msgSend_setSessionActionsString_(v6, v15, &stru_1F4FDAA18);
  v49 = MEMORY[0x1E69E9820];
  v50 = 3221225472;
  v51 = sub_1D461AF1C;
  v52 = &unk_1E848A590;
  v16 = v6;
  v53 = v16;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v17, &v49);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v13, v18, 4, v49, v50, v51, v52);
  if (objc_msgSend_BOOLValue(v19, v20, v21))
  {
    objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v22, 0);
  }

  else
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v13, v22, 5);
    if (objc_msgSend_BOOLValue(v23, v24, v25))
    {
      objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v26, 0);
    }

    else
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(v13, v26, 8);
      if (objc_msgSend_BOOLValue(v27, v28, v29))
      {
        objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v30, 0);
      }

      else
      {
        v31 = objc_msgSend_objectAtIndexedSubscript_(v13, v30, 9);
        if (objc_msgSend_BOOLValue(v31, v32, v33))
        {
          objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v34, 0);
        }

        else
        {
          v36 = objc_msgSend_sessionActionsString(v16, v34, v35);
          isEqualToString = objc_msgSend_isEqualToString_(v36, v37, @"U");
          objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v39, isEqualToString ^ 1u);
        }
      }
    }
  }

  v41 = objc_msgSend_objectAtIndexedSubscript_(v13, v40, 3);
  v44 = objc_msgSend_BOOLValue(v41, v42, v43);
  objc_msgSend_setSessionHasDictation_(v16, v45, v44);

  v46 = v53;
  v47 = v16;

  return v16;
}

- (void)enumerateAnalytics
{
  v5 = objc_msgSend_eventHandler(self, a2, v2);
  objc_msgSend_enumerateTextInputActionsAnalytics_(self, v4, v5);
}

- (void)enumerateTextInputActionsAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v5 = sub_1D4620410(analyticsCopy);
  v6 = v5;
  if (analyticsCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462DBD8();
    }

    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_1D461B248;
    mostRecentProcessId = self->_mostRecentProcessId;
    v21[4] = sub_1D461B258;
    if (!mostRecentProcessId)
    {
      mostRecentProcessId = @"nil";
    }

    v22 = mostRecentProcessId;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = sub_1D461B248;
    v19[4] = sub_1D461B258;
    v10 = objc_msgSend_sessionErrors(self, v8, v9);
    v20 = objc_msgSend_errorString(v10, v11, v12);

    entries = self->_entries;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1D461B260;
    v15[3] = &unk_1E848A658;
    v15[4] = self;
    v17 = v21;
    v18 = v19;
    v16 = analyticsCopy;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(entries, v14, v15);

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1D462DC0C();
    }
  }
}

- (BOOL)shouldBeGarbageCollected
{
  v11.receiver = self;
  v11.super_class = IASTextInputActionsAnalyzer;
  shouldBeGarbageCollected = [(IASDailyGarbageCollectionAnalyzer *)&v11 shouldBeGarbageCollected];
  if (shouldBeGarbageCollected)
  {
    v6 = objc_msgSend_sessionErrors(self, v3, v4);
    objc_msgSend_logErrorCodeIfNotNil_(v6, v7, 0x1F4FDDE78);

    objc_msgSend_enumerateAnalytics(self, v8, v9);
  }

  return shouldBeGarbageCollected;
}

@end