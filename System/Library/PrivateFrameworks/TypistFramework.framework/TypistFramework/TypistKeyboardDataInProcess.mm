@interface TypistKeyboardDataInProcess
+ (BOOL)_activeInputModesContainsInputMode:(id)mode;
+ (BOOL)generatePopupKeySubtrees:(id)subtrees key:(id)key plane:(id)plane layout:(id)layout keyplaneKeycaps:(id)keycaps;
+ (BOOL)hasMarkedText;
+ (BOOL)isCandidateCellVisible:(id)visible;
+ (BOOL)isExtendedCandidateViewMode;
+ (BOOL)keyHasAccentedVariants:(id)variants plane:(id)plane keyplaneKeycaps:(id)keycaps;
+ (BOOL)shouldShowDictationKey;
+ (BOOL)shouldShowGlobeKey;
+ (BOOL)switchToKeyboard:(id)keyboard;
+ (BOOL)switchToPlane:(id)plane;
+ (CGPoint)centerOfKey:(CGPoint)key withOffset:(CGPoint)offset;
+ (CGPoint)floatingKeyboardDraggablePoint;
+ (CGPoint)getCandidateCenter:(id)center;
+ (CGPoint)getCandidateCenterAtIndex:(int64_t)index;
+ (CGPoint)getExtendedCandidateViewToggleButtonCenter;
+ (CGRect)findKeyBoundsInKeyboard:(id)keyboard;
+ (CGRect)getCandidateBarRect;
+ (id)_variantsByAppendingDualStringKey:(id)key toVariants:(id)variants;
+ (id)addKeyboardGestureKeys:(id)keys keys:(id)a4 inPlane:(id)plane addTo:(id)to;
+ (id)addKeyboardPopupKeys:(id)keys keys:(id)a4 inPlane:(id)plane addTo:(id)to keyplaneKeycaps:(id)keycaps;
+ (id)addKeyboards:(id)keyboards;
+ (id)appendingSecondaryStringToVariantsTop:(id)top secondaryString:(id)string withDirection:(id)direction;
+ (id)cleanUpSwitchTableBasedOnDefaultPlane:(id)plane defaultPlaneName:(id)name;
+ (id)determineDefaultPlane10Key:(id)key basePlaneName:(id)name;
+ (id)determineDefaultPlane:(id)plane basePlaneName:(id)name;
+ (id)generateKeyplaneSwitchTable:(id)table;
+ (id)generateKeyplaneSwitchTableFor10Key:(id)key;
+ (id)getAllCandidates;
+ (id)getKeyboardLayout:(id)layout;
+ (id)getKeyboardPlaneKeys:(id)keys keys:(id)a4 inPlane:(id)plane;
+ (id)getKeyboardUISettings;
+ (id)getKeyplaneDescription:(id)description;
+ (id)getRepresentedStringFromKey:(id)key;
+ (id)getTIPreferences;
+ (id)getVisibleCandidateList:(id)list;
+ (id)getVisibleKeyplaneName;
+ (id)markedText;
+ (id)removeKeyboards:(id)keyboards;
+ (id)setKeyboardUISettings:(id)settings;
+ (id)setKeyboards:(id)keyboards;
+ (id)setOneHandedKeyboardHandBias:(id)bias;
+ (id)setTIPreferences:(id)preferences;
+ (id)updateCachedKeyplaneKeycaps:(id)keycaps;
+ (int)getShuangpinEnumeration:(id)enumeration;
+ (int)getWubiEnumeration:(id)enumeration;
+ (unint64_t)downActionFlagsForKey:(id)key plane:(id)plane keyplaneKeycaps:(id)keycaps;
+ (void)showCandidateAtIndex:(int64_t)index;
+ (void)showPopupVariantsForKey:(id)key key:(id)a4 plane:(id)plane keyplaneKeycaps:(id)keycaps;
@end

@implementation TypistKeyboardDataInProcess

+ (id)getKeyboardLayout:(id)layout
{
  v95 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x3032000000;
  v92[3] = __Block_byref_object_copy__4;
  v92[4] = __Block_byref_object_dispose__4;
  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  [MEMORY[0x277D75678] activeInstance];
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x3032000000;
  v90[3] = __Block_byref_object_copy__4;
  v35 = v90[4] = __Block_byref_object_dispose__4;
  _layout = [v35 _layout];
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__4;
  v88 = __Block_byref_object_dispose__4;
  v89 = 0;
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke;
  v83[3] = &unk_279DF49C8;
  v83[4] = &v84;
  v83[5] = v92;
  [TypistKeyboardUtilities runOnMainThread:v83];
  if ([v85[5] containsString:@"_"])
  {
    v6 = [v85[5] componentsSeparatedByString:@"_"];
    lastObject = [v6 lastObject];
    lowercaseString = [lastObject lowercaseString];
    v9 = v85[5];
    v85[5] = lowercaseString;
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__4;
  v81 = __Block_byref_object_dispose__4;
  v82 = 0;
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke_2;
  v70[3] = &unk_279DF4A40;
  v73 = v90;
  v74 = &v77;
  v38 = layoutCopy;
  v71 = v38;
  v75 = &v84;
  selfCopy = self;
  v10 = v5;
  v72 = v10;
  [TypistKeyboardUtilities runOnMainThread:v70];
  v34 = v10;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  allKeys = [v78[5] allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v66 objects:v94 count:16];
  if (v19)
  {
    v37 = *v67;
    v20 = *MEMORY[0x277D76AA8];
    obj = allKeys;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v67 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v66 + 1) + 8 * i);
        TYLog(@"\n------------------------------------ PREPROCESSING Plane:%@", v12, v13, v14, v15, v16, v17, v18, v22);
        v60 = 0;
        v61 = &v60;
        v62 = 0x3032000000;
        v63 = __Block_byref_object_copy__4;
        v64 = __Block_byref_object_dispose__4;
        v65 = 0;
        v54 = 0;
        v55 = &v54;
        v56 = 0x3032000000;
        v57 = __Block_byref_object_copy__4;
        v58 = __Block_byref_object_dispose__4;
        v59 = 0;
        v48 = 0;
        v49 = &v48;
        v50 = 0x3032000000;
        v51 = __Block_byref_object_copy__4;
        v52 = __Block_byref_object_dispose__4;
        v53 = 0;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke_3;
        v40[3] = &unk_279DF4A68;
        v42 = v92;
        v40[4] = v22;
        v43 = v90;
        v44 = &v60;
        v46 = &v48;
        selfCopy2 = self;
        v45 = &v54;
        v23 = v38;
        v41 = v23;
        [TypistKeyboardUtilities runOnMainThread:v40];
        getKeyboardUISettings = [self getKeyboardUISettings];
        v25 = [getKeyboardUISettings objectForKeyedSubscript:v20];
        bOOLValue = [v25 BOOLValue];

        if (bOOLValue)
        {
          v27 = [self addKeyboardGestureKeys:v23 keys:v61[5] inPlane:v22 addTo:v49[5]];
          v28 = v49[5];
          v49[5] = v27;
        }

        if ([v23 usePopupKeys])
        {
          v29 = [v23 addKeyboardPopupKeys:v61[5] inPlane:v22 addTo:v49[5] keyplaneKeycaps:v55[5]];
          v30 = v49[5];
          v49[5] = v29;
        }

        [v39 setObject:v49[5] forKey:v22];

        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v54, 8);

        _Block_object_dispose(&v60, 8);
      }

      allKeys = obj;
      v19 = [obj countByEnumeratingWithState:&v66 objects:v94 count:16];
    }

    while (v19);
  }

  [v34 setObject:v39 forKey:@"keyPlanes"];
  v31 = v72;
  v32 = v34;

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v84, 8);

  _Block_object_dispose(v90, 8);
  _Block_object_dispose(v92, 8);

  return v32;
}

uint64_t __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 40) + 8) + 40) _getCurrentKeyplaneName];

  return MEMORY[0x2821F96F8]();
}

void __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v39 = a1;
  [*(*(*(a1 + 48) + 8) + 40) performSelector:sel_keyboard];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v38 = v43 = 0u;
  v4 = [v38 subtrees];
  v5 = [v4 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v40 + 1) + 8 * i) name];
        if ([v9 containsString:@"_"])
        {
          v10 = [v9 componentsSeparatedByString:@"_"];
          v11 = [v10 lastObject];
          v12 = [v11 lowercaseString];

          v9 = v12;
        }

        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v6);
  }

  v13 = [*(v39 + 32) generateKeyplaneSwitchTable:v3];
  v14 = *(*(v39 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = [*(v39 + 32) isTenKey];
  v17 = *(v39 + 72);
  v18 = *(*(*(v39 + 56) + 8) + 40);
  v19 = *(*(*(v39 + 64) + 8) + 40);
  if (v16)
  {
    [v17 determineDefaultPlane10Key:v18 basePlaneName:v19];
  }

  else
  {
    [v17 determineDefaultPlane:v18 basePlaneName:v19];
  }
  v20 = ;
  [*(v39 + 40) setObject:v20 forKey:@"defaultPlaneName"];
  TYLog(@"#####  DEFAULT PLANE: %@", v21, v22, v23, v24, v25, v26, v27, v20);
  v28 = [*(v39 + 72) cleanUpSwitchTableBasedOnDefaultPlane:*(*(*(v39 + 56) + 8) + 40) defaultPlaneName:v20];
  v29 = *(*(v39 + 56) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  [*(v39 + 40) setObject:*(*(*(v39 + 56) + 8) + 40) forKey:@"planeSwitchTable"];
  TYLog(@"\nplaneSwitchTable = %@", v31, v32, v33, v34, v35, v36, v37, *(*(*(v39 + 56) + 8) + 40));
}

uint64_t __49__TypistKeyboardDataInProcess_getKeyboardLayout___block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(*(*(a1 + 56) + 8) + 40) keyplaneNamed:*(a1 + 32)];
  [v2 _changeToKeyplane:v3];

  v4 = [*(*(*(a1 + 56) + 8) + 40) keyplaneNamed:*(a1 + 32)];
  v5 = [v4 keys];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 88) updateCachedKeyplaneKeycaps:*(*(*(a1 + 64) + 8) + 40)];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + 80) + 8) + 40) = [*(a1 + 88) getKeyboardPlaneKeys:*(a1 + 40) keys:*(*(*(a1 + 64) + 8) + 40) inPlane:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

+ (id)getTIPreferences
{
  v2 = objc_opt_new();
  mEMORY[0x277D756A0] = [MEMORY[0x277D756A0] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F7B8];
  v5 = [mEMORY[0x277D756A0] BOOLForPreferenceKey:*MEMORY[0x277D6F7B8]];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v2 setObject:v6 forKey:v4];

  mEMORY[0x277D756A0]2 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v8 = *MEMORY[0x277D6F7C0];
  v9 = [mEMORY[0x277D756A0]2 BOOLForPreferenceKey:*MEMORY[0x277D6F7C0]];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [v2 setObject:v10 forKey:v8];

  mEMORY[0x277D756A0]3 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v12 = *MEMORY[0x277D6F820];
  v13 = [mEMORY[0x277D756A0]3 BOOLForPreferenceKey:*MEMORY[0x277D6F820]];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v2 setObject:v14 forKey:v12];

  mEMORY[0x277D756A0]4 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v16 = *MEMORY[0x277D6F920];
  v17 = [mEMORY[0x277D756A0]4 BOOLForPreferenceKey:*MEMORY[0x277D6F920]];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  [v2 setObject:v18 forKey:v16];

  mEMORY[0x277D756A0]5 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v20 = *MEMORY[0x277D6F818];
  v21 = [mEMORY[0x277D756A0]5 BOOLForPreferenceKey:*MEMORY[0x277D6F818]];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:v21];
  [v2 setObject:v22 forKey:v20];

  mEMORY[0x277D756A0]6 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v24 = *MEMORY[0x277D6F928];
  v25 = [mEMORY[0x277D756A0]6 BOOLForPreferenceKey:*MEMORY[0x277D6F928]];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:v25];
  [v2 setObject:v26 forKey:v24];

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v28 = *MEMORY[0x277D6F630];
  v29 = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F630]];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:v29];
  [v2 setObject:v30 forKey:v28];

  mEMORY[0x277D756A0]7 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v32 = *MEMORY[0x277D6FA78];
  v33 = [mEMORY[0x277D756A0]7 BOOLForPreferenceKey:*MEMORY[0x277D6FA78]];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:v33];
  [v2 setObject:v34 forKey:v32];

  mEMORY[0x277D756A0]8 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v36 = *MEMORY[0x277D6FA88];
  v37 = [mEMORY[0x277D756A0]8 BOOLForPreferenceKey:*MEMORY[0x277D6FA88]];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:v37];
  [v2 setObject:v38 forKey:v36];

  mEMORY[0x277D756A0]9 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v40 = *MEMORY[0x277D6F7A0];
  v41 = [mEMORY[0x277D756A0]9 BOOLForPreferenceKey:*MEMORY[0x277D6F7A0]];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:v41];
  [v2 setObject:v42 forKey:v40];

  mEMORY[0x277D756A0]10 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v44 = *MEMORY[0x277D6FD08];
  v45 = [mEMORY[0x277D756A0]10 BOOLForPreferenceKey:*MEMORY[0x277D6FD08]];

  v46 = [MEMORY[0x277CCABB0] numberWithBool:v45];
  [v2 setObject:v46 forKey:v44];

  mEMORY[0x277D756A0]11 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v48 = *MEMORY[0x277D6FA80];
  v49 = [mEMORY[0x277D756A0]11 BOOLForPreferenceKey:*MEMORY[0x277D6FA80]];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:v49];
  [v2 setObject:v50 forKey:v48];

  mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v52 = *MEMORY[0x277D6F640];
  v53 = [mEMORY[0x277D6F470]2 valueForPreferenceKey:*MEMORY[0x277D6F640]];
  v54 = v53 != 0;

  v55 = [MEMORY[0x277CCABB0] numberWithBool:v54];
  [v2 setObject:v55 forKey:v52];

  mEMORY[0x277D6F470]3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v57 = *MEMORY[0x277D6FD18];
  v58 = [mEMORY[0x277D6F470]3 valueForPreferenceKey:*MEMORY[0x277D6FD18]];
  intValue = [v58 intValue];

  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:intValue];
  [v2 setObject:v60 forKey:v57];

  mEMORY[0x277D6F470]4 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v62 = *MEMORY[0x277D6FA70];
  v63 = [mEMORY[0x277D6F470]4 valueForPreferenceKey:*MEMORY[0x277D6FA70]];
  intValue2 = [v63 intValue];

  v65 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
  [v2 setObject:v65 forKey:v62];

  return v2;
}

+ (id)getKeyboardUISettings
{
  v3 = objc_opt_new();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52__TypistKeyboardDataInProcess_getKeyboardUISettings__block_invoke;
  v26[3] = &unk_279DF4710;
  v26[4] = &v27;
  [TypistKeyboardUtilities runOnMainThread:v26];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(v28 + 24)];
  [v3 setObject:v4 forKey:@"floatingKeyboard"];

  _showSmallDisplayKeyplane = [MEMORY[0x277D75698] _showSmallDisplayKeyplane];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:_showSmallDisplayKeyplane];
  [v3 setObject:v6 forKey:@"LowerCaseKeyboard"];

  mEMORY[0x277D756A0] = [MEMORY[0x277D756A0] sharedPreferencesController];
  preferencesActions = [mEMORY[0x277D756A0] preferencesActions];
  v9 = *MEMORY[0x277D76AA8];
  v10 = [preferencesActions BOOLForPreferenceKey:*MEMORY[0x277D76AA8]];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  [v3 setObject:v11 forKey:v9];

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  dictationIsEnabled = [mEMORY[0x277CEF368] dictationIsEnabled];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:dictationIsEnabled];
  [v3 setObject:v14 forKey:@"dictation"];

  mEMORY[0x277D756A0]2 = [MEMORY[0x277D756A0] sharedPreferencesController];
  v16 = *MEMORY[0x277D6F7C8];
  v17 = [mEMORY[0x277D756A0]2 valueForPreferenceKey:*MEMORY[0x277D6F7C8]];
  v18 = v17;
  v19 = @"Unknown";
  if (v17)
  {
    v19 = v17;
  }

  v20 = v19;

  [v3 setObject:v20 forKey:v16];
  shouldShowDictationKey = [self shouldShowDictationKey];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:shouldShowDictationKey];
  [v3 setObject:v22 forKey:@"shouldShowDictationKey"];

  shouldShowGlobeKey = [self shouldShowGlobeKey];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:shouldShowGlobeKey];
  [v3 setObject:v24 forKey:@"shouldShowGlobeKey"];

  _Block_object_dispose(&v27, 8);

  return v3;
}

void *__52__TypistKeyboardDataInProcess_getKeyboardUISettings__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)setTIPreferences:(id)preferences
{
  preferencesCopy = preferences;
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  getTIPreferences = [self getTIPreferences];
  allKeys = [preferencesCopy allKeys];
  v8 = allKeys;
  if (allKeys && [allKeys count])
  {
    v9 = *MEMORY[0x277D6F7B8];
    if ([v8 containsObject:*MEMORY[0x277D6F7B8]])
    {
      v10 = [getTIPreferences objectForKeyedSubscript:v9];
      bOOLValue = [v10 BOOLValue];
      v12 = [preferencesCopy objectForKeyedSubscript:v9];
      bOOLValue2 = [v12 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing AutoCapitalization Settings: Current=%d ChangeTo=%d", v14, v15, v16, v17, v18, v19, bOOLValue, bOOLValue2);

      mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
      v21 = [preferencesCopy objectForKeyedSubscript:v9];
      [mEMORY[0x277D6F470] setValue:v21 forKey:9];
    }

    v22 = *MEMORY[0x277D6F7C0];
    if ([v8 containsObject:*MEMORY[0x277D6F7C0]])
    {
      v23 = [getTIPreferences objectForKeyedSubscript:v22];
      bOOLValue3 = [v23 BOOLValue];
      v25 = [preferencesCopy objectForKeyedSubscript:v22];
      bOOLValue4 = [v25 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing AutoCorrection Settings: Current=%d ChangeTo=%d", v27, v28, v29, v30, v31, v32, bOOLValue3, bOOLValue4);

      mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v34 = [preferencesCopy objectForKeyedSubscript:v22];
      [mEMORY[0x277D6F470]2 setValue:v34 forKey:8];
    }

    v35 = *MEMORY[0x277D6F820];
    if ([v8 containsObject:*MEMORY[0x277D6F820]])
    {
      v36 = [getTIPreferences objectForKeyedSubscript:v35];
      bOOLValue5 = [v36 BOOLValue];
      v38 = [preferencesCopy objectForKeyedSubscript:v35];
      bOOLValue6 = [v38 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing CheckSpelling Settings: Current=%d ChangeTo=%d", v40, v41, v42, v43, v44, v45, bOOLValue5, bOOLValue6);

      mEMORY[0x277D6F470]3 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v47 = [preferencesCopy objectForKeyedSubscript:v35];
      [mEMORY[0x277D6F470]3 setValue:v47 forKey:10];
    }

    v48 = *MEMORY[0x277D6F920];
    if ([v8 containsObject:*MEMORY[0x277D6F920]])
    {
      v49 = [getTIPreferences objectForKeyedSubscript:v48];
      bOOLValue7 = [v49 BOOLValue];
      v51 = [preferencesCopy objectForKeyedSubscript:v48];
      bOOLValue8 = [v51 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing PeriodShortcut Settings: Current=%d ChangeTo=%d", v53, v54, v55, v56, v57, v58, bOOLValue7, bOOLValue8);

      mEMORY[0x277D6F470]4 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v60 = [preferencesCopy objectForKeyedSubscript:v48];
      [mEMORY[0x277D6F470]4 setValue:v60 forKey:11];
    }

    v61 = *MEMORY[0x277D6F818];
    if ([v8 containsObject:*MEMORY[0x277D6F818]])
    {
      v62 = [getTIPreferences objectForKeyedSubscript:v61];
      bOOLValue9 = [v62 BOOLValue];
      v64 = [preferencesCopy objectForKeyedSubscript:v61];
      bOOLValue10 = [v64 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing CapsLock Settings: Current=%d ChangeTo=%d", v66, v67, v68, v69, v70, v71, bOOLValue9, bOOLValue10);

      mEMORY[0x277D6F470]5 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v73 = [preferencesCopy objectForKeyedSubscript:v61];
      [mEMORY[0x277D6F470]5 setValue:v73 forKey:12];
    }

    v74 = *MEMORY[0x277D6F928];
    if ([v8 containsObject:*MEMORY[0x277D6F928]])
    {
      v75 = [getTIPreferences objectForKeyedSubscript:v74];
      bOOLValue11 = [v75 BOOLValue];
      v77 = [preferencesCopy objectForKeyedSubscript:v74];
      bOOLValue12 = [v77 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Predictive Settings: Current=%d ChangeTo=%d", v79, v80, v81, v82, v83, v84, bOOLValue11, bOOLValue12);

      mEMORY[0x277D6F470]6 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v86 = [preferencesCopy objectForKeyedSubscript:v74];
      [mEMORY[0x277D6F470]6 setValue:v86 forKey:36];
    }

    v87 = *MEMORY[0x277D6F630];
    if ([v8 containsObject:*MEMORY[0x277D6F630]])
    {
      v88 = [getTIPreferences objectForKeyedSubscript:v87];
      bOOLValue13 = [v88 BOOLValue];
      v90 = [preferencesCopy objectForKeyedSubscript:v87];
      bOOLValue14 = [v90 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Fuzzy Settings: Current=%d ChangeTo=%d", v92, v93, v94, v95, v96, v97, bOOLValue13, bOOLValue14);

      mEMORY[0x277D6F470]7 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v99 = [preferencesCopy objectForKeyedSubscript:v87];
      [mEMORY[0x277D6F470]7 setValue:v99 forPreferenceKey:v87];
    }

    v100 = *MEMORY[0x277D6FA78];
    if ([v8 containsObject:*MEMORY[0x277D6FA78]])
    {
      v101 = [getTIPreferences objectForKeyedSubscript:v100];
      bOOLValue15 = [v101 BOOLValue];
      v103 = [preferencesCopy objectForKeyedSubscript:v100];
      bOOLValue16 = [v103 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Smart Dashes Settings: Current=%d ChangeTo=%d", v105, v106, v107, v108, v109, v110, bOOLValue15, bOOLValue16);

      mEMORY[0x277D6F470]8 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v112 = [preferencesCopy objectForKeyedSubscript:v100];
      [mEMORY[0x277D6F470]8 setValue:v112 forPreferenceKey:v100];
    }

    v113 = *MEMORY[0x277D6FA88];
    if ([v8 containsObject:*MEMORY[0x277D6FA88]])
    {
      v114 = [getTIPreferences objectForKeyedSubscript:v113];
      bOOLValue17 = [v114 BOOLValue];
      v116 = [preferencesCopy objectForKeyedSubscript:v100];
      bOOLValue18 = [v116 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Smart Quotes Settings: Current=%d ChangeTo=%d", v118, v119, v120, v121, v122, v123, bOOLValue17, bOOLValue18);

      mEMORY[0x277D6F470]9 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v125 = [preferencesCopy objectForKeyedSubscript:v113];
      [mEMORY[0x277D6F470]9 setValue:v125 forPreferenceKey:v113];
    }

    v126 = *MEMORY[0x277D6F7A0];
    if ([v8 containsObject:*MEMORY[0x277D6F7A0]])
    {
      v127 = [getTIPreferences objectForKeyedSubscript:v126];
      bOOLValue19 = [v127 BOOLValue];
      v129 = [preferencesCopy objectForKeyedSubscript:v126];
      bOOLValue20 = [v129 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing KeyPaddle Settings: Current=%d ChangeTo=%d", v131, v132, v133, v134, v135, v136, bOOLValue19, bOOLValue20);

      mEMORY[0x277D6F470]10 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v138 = [preferencesCopy objectForKeyedSubscript:v126];
      [mEMORY[0x277D6F470]10 setValue:v138 forKey:38];
    }

    v139 = *MEMORY[0x277D6FD08];
    if ([v8 containsObject:*MEMORY[0x277D6FD08]])
    {
      v140 = [getTIPreferences objectForKeyedSubscript:v139];
      bOOLValue21 = [v140 BOOLValue];
      v142 = [preferencesCopy objectForKeyedSubscript:v139];
      bOOLValue22 = [v142 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Typology Settings: Current=%d ChangeTo=%d", v144, v145, v146, v147, v148, v149, bOOLValue21, bOOLValue22);

      mEMORY[0x277D6F470]11 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v151 = [preferencesCopy objectForKeyedSubscript:v139];
      [mEMORY[0x277D6F470]11 setValue:v151 forKey:53];
    }

    v152 = *MEMORY[0x277D6FA80];
    if ([v8 containsObject:*MEMORY[0x277D6FA80]])
    {
      v153 = [getTIPreferences objectForKeyedSubscript:v152];
      bOOLValue23 = [v153 BOOLValue];
      v155 = [preferencesCopy objectForKeyedSubscript:v152];
      bOOLValue24 = [v155 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Smart Full-width Settings: Current=%d ChangeTo=%d", v157, v158, v159, v160, v161, v162, bOOLValue23, bOOLValue24);

      mEMORY[0x277D6F470]12 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v164 = [preferencesCopy objectForKeyedSubscript:v152];
      [mEMORY[0x277D6F470]12 setValue:v164 forPreferenceKey:v152];
    }

    v165 = *MEMORY[0x277D6F640];
    if ([v8 containsObject:*MEMORY[0x277D6F640]])
    {
      v166 = [getTIPreferences objectForKeyedSubscript:v165];
      bOOLValue25 = [v166 BOOLValue];
      v168 = [preferencesCopy objectForKeyedSubscript:v165];
      bOOLValue26 = [v168 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Use CapsLock as Roman Switch Settings: Current=%d ChangeTo=%d", v170, v171, v172, v173, v174, v175, bOOLValue25, bOOLValue26);

      mEMORY[0x277D6F470]13 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v177 = [preferencesCopy objectForKeyedSubscript:v165];
      [mEMORY[0x277D6F470]13 setValue:v177 forPreferenceKey:v165];
    }

    v178 = *MEMORY[0x277D6FD18];
    if ([v8 containsObject:*MEMORY[0x277D6FD18]])
    {
      v179 = [preferencesCopy objectForKeyedSubscript:v178];
      v180 = [self getWubiEnumeration:v179];

      v181 = [getTIPreferences objectForKeyedSubscript:v178];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Wubi Standard Settings: Current=%i, ChangeTo=%i", v182, v183, v184, v185, v186, v187, v181, v180);

      mEMORY[0x277D6F470]14 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v189 = [MEMORY[0x277CCABB0] numberWithInt:v180];
      [mEMORY[0x277D6F470]14 setValue:v189 forPreferenceKey:v178];
    }

    v190 = *MEMORY[0x277D6FA70];
    if ([v8 containsObject:*MEMORY[0x277D6FA70]])
    {
      v191 = [preferencesCopy objectForKeyedSubscript:v190];
      v192 = [self getShuangpinEnumeration:v191];

      v193 = [getTIPreferences objectForKeyedSubscript:v190];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing Shaungpin Settings: Current=%i, ChangeTo=%i", v194, v195, v196, v197, v198, v199, v193, v192);

      mEMORY[0x277D6F470]15 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v201 = [MEMORY[0x277CCABB0] numberWithInt:v192];
      [mEMORY[0x277D6F470]15 setValue:v201 forPreferenceKey:v190];
    }
  }

  mEMORY[0x277D6F470]16 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470]16 synchronizePreferences];

  [TypistKeyboardUtilities waitFor:0.5];
  getTIPreferences2 = [self getTIPreferences];

  return getTIPreferences2;
}

+ (id)setKeyboardUISettings:(id)settings
{
  settingsCopy = settings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  getKeyboardUISettings = [self getKeyboardUISettings];
  allKeys = [settingsCopy allKeys];
  v8 = allKeys;
  v9 = 0x277D75000;
  v10 = 0x279DF4000;
  if (!allKeys || ![allKeys count])
  {
    goto LABEL_24;
  }

  if ([v8 containsObject:@"floatingKeyboard"])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v13 = [settingsCopy objectForKeyedSubscript:@"floatingKeyboard"];
      bOOLValue = [v13 BOOLValue];

      v15 = [getKeyboardUISettings objectForKeyedSubscript:@"floatingKeyboard"];
      bOOLValue2 = [v15 BOOLValue];

      v24 = @"Not floating";
      if (bOOLValue2)
      {
        v25 = @"Floating";
      }

      else
      {
        v25 = @"Not floating";
      }

      if (bOOLValue)
      {
        v24 = @"Floating";
      }

      TYLog(@"Changing Floating Settings: Current=%@ ChangeTo=%@", v17, v18, v19, v20, v21, v22, v23, v25, v24);
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __53__TypistKeyboardDataInProcess_setKeyboardUISettings___block_invoke;
      v85[3] = &__block_descriptor_34_e5_v8__0l;
      v86 = bOOLValue;
      v9 = 0x277D75000;
      v87 = bOOLValue2;
      [TypistKeyboardUtilities runOnMainThread:v85];
    }
  }

  v26 = *MEMORY[0x277D76AA8];
  if ([v8 containsObject:*MEMORY[0x277D76AA8]])
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
LABEL_15:

      goto LABEL_16;
    }

    v28 = [getKeyboardUISettings objectForKeyedSubscript:@"floatingKeyboard"];
    bOOLValue3 = [v28 BOOLValue];

    v9 = 0x277D75000;
    if ((bOOLValue3 & 1) == 0)
    {
      v30 = [getKeyboardUISettings objectForKeyedSubscript:v26];
      bOOLValue4 = [v30 BOOLValue];
      v32 = [settingsCopy objectForKeyedSubscript:v26];
      bOOLValue5 = [v32 BOOLValue];
      TYLogl(OS_LOG_TYPE_INFO, @"Changing GestureKey Settings: Current=%d ChangeTo=%d", v34, v35, v36, v37, v38, v39, bOOLValue4, bOOLValue5);

      currentDevice2 = [MEMORY[0x277D756A0] sharedPreferencesController];
      preferencesActions = [currentDevice2 preferencesActions];
      v41 = [settingsCopy objectForKeyedSubscript:v26];
      [preferencesActions setValue:v41 forPreferenceKey:v26];

      v9 = 0x277D75000;
      goto LABEL_15;
    }
  }

LABEL_16:
  if ([v8 containsObject:@"LowerCaseKeyboard"])
  {
    v42 = [getKeyboardUISettings objectForKeyedSubscript:@"LowerCaseKeyboard"];
    bOOLValue6 = [v42 BOOLValue];
    v44 = [settingsCopy objectForKeyedSubscript:@"LowerCaseKeyboard"];
    bOOLValue7 = [v44 BOOLValue];
    v83 = bOOLValue6;
    v9 = 0x277D75000;
    TYLogl(OS_LOG_TYPE_INFO, @"Changing SmallDisplay Settings: Current=%d ChangeTo=%d", v46, v47, v48, v49, v50, v51, v83, bOOLValue7);

    v52 = [settingsCopy objectForKeyedSubscript:@"LowerCaseKeyboard"];
    v53 = MEMORY[0x277CBED28];
    if (!v52)
    {
      v53 = MEMORY[0x277CBED10];
    }

    CFPreferencesSetAppValue(@"LowerCaseKeyboard", *v53, @"com.apple.Accessibility");
  }

  if ([v8 containsObject:@"dictation"])
  {
    v54 = [getKeyboardUISettings objectForKeyedSubscript:@"dictation"];
    bOOLValue8 = [v54 BOOLValue];
    v56 = [settingsCopy objectForKeyedSubscript:@"dictation"];
    bOOLValue9 = [v56 BOOLValue];
    v84 = bOOLValue8;
    v9 = 0x277D75000;
    TYLogl(OS_LOG_TYPE_INFO, @"Changing Dictation Settings: Current=%d ChangeTo=%d", v58, v59, v60, v61, v62, v63, v84, bOOLValue9);

    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    [mEMORY[0x277CEF368] setSuppressDictationOptIn:1];

    mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
    v66 = [settingsCopy objectForKeyedSubscript:@"dictation"];
    [mEMORY[0x277CEF368]2 setDictationIsEnabled:{objc_msgSend(v66, "BOOLValue")}];
  }

  v67 = *MEMORY[0x277D6F7C8];
  v10 = 0x279DF4000uLL;
  if ([v8 containsObject:*MEMORY[0x277D6F7C8]])
  {
    v68 = [getKeyboardUISettings objectForKeyedSubscript:v67];
    v69 = [settingsCopy objectForKeyedSubscript:v67];
    TYLogl(OS_LOG_TYPE_INFO, @"Changing Dictation Settings: Current=%@ ChangeTo=%@", v70, v71, v72, v73, v74, v75, v68, v69);

    v9 = 0x277D75000uLL;
    v76 = [settingsCopy objectForKeyedSubscript:v67];
    v77 = [self setOneHandedKeyboardHandBias:v76];
  }

LABEL_24:
  sharedPreferencesController = [*(v9 + 1696) sharedPreferencesController];
  preferencesActions2 = [sharedPreferencesController preferencesActions];
  [preferencesActions2 synchronizePreferences];

  mEMORY[0x277CEF368]3 = [MEMORY[0x277CEF368] sharedPreferences];
  [mEMORY[0x277CEF368]3 synchronize];

  [*(v10 + 560) waitFor:0.5];
  getKeyboardUISettings2 = [self getKeyboardUISettings];

  return getKeyboardUISettings2;
}

void __53__TypistKeyboardDataInProcess_setKeyboardUISettings___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D75678] supportsFloating] && *(a1 + 32) != *(a1 + 33))
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v6 localizedStringForKey:@"Dock and Merge" value:@"Dock and Merge" table:@"Localizable"];
    v3 = [v6 localizedStringForKey:@"Floating" value:@"Floating" table:@"Localizable"];
    v4 = [NSClassFromString(&cfstr_Uikeyboardspli.isa) performSelector:sel_sharedInstance];
    if (*(a1 + 32))
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    [v4 performSelector:sel_actionForItem_ withObject:v5];
  }
}

+ (id)setKeyboards:(id)keyboards
{
  keyboardsCopy = keyboards;
  v4 = [keyboardsCopy objectAtIndexedSubscript:0];
  TYLog(@"Replacing keyboards with: %@", v5, v6, v7, v8, v9, v10, v11, v4);

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v13 = [mEMORY[0x277D6F470] valueForKey:0];
  TYLog(@"Current Keyboards are\n%@", v14, v15, v16, v17, v18, v19, v20, v13);

  mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470]2 setValue:keyboardsCopy forKey:0];

  mEMORY[0x277D6F470]3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470]3 setValue:MEMORY[0x277CBEC38] forKey:1];

  mEMORY[0x277D6F470]4 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470]4 synchronizePreferences];

  mEMORY[0x277D6F470]5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v25 = [mEMORY[0x277D6F470]5 valueForKey:0];

  TYLog(@"New Keyboard is\n%@", v26, v27, v28, v29, v30, v31, v32, v25);

  return v25;
}

+ (id)addKeyboards:(id)keyboards
{
  v47 = *MEMORY[0x277D85DE8];
  keyboardsCopy = keyboards;
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v5 = [mEMORY[0x277D6F470] valueForKey:0];
  array = [v5 mutableCopy];

  TYLog(@"Appending keyboards: %@\n to current list: %@", v7, v8, v9, v10, v11, v12, v13, keyboardsCopy, array);
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = keyboardsCopy;
  v15 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v42 + 1) + 8 * i);
        v27 = [array containsObject:v19];
        v28 = @"Keyboard [%@] already exists. Skipping...";
        if ((v27 & 1) == 0)
        {
          [array addObject:v19];
          v28 = @"Added [%@] to list of keyboard IDs.";
        }

        TYLog(v28, v20, v21, v22, v23, v24, v25, v26, v19);
      }

      v16 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v16);
  }

  mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470]2 setValue:array forKey:0];

  mEMORY[0x277D6F470]3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470]3 setValue:MEMORY[0x277CBEC38] forKey:1];

  mEMORY[0x277D6F470]4 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470]4 synchronizePreferences];

  mEMORY[0x277D6F470]5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v33 = [mEMORY[0x277D6F470]5 valueForKey:0];

  TYLog(@"New Keyboards are:\n%@", v34, v35, v36, v37, v38, v39, v40, v33);

  return v33;
}

+ (id)removeKeyboards:(id)keyboards
{
  v60 = *MEMORY[0x277D85DE8];
  keyboardsCopy = keyboards;
  TYLog(@"Removing keyboard: %@", v4, v5, v6, v7, v8, v9, v10, keyboardsCopy);
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v12 = [mEMORY[0x277D6F470] valueForKey:0];
  v13 = [v12 mutableCopy];

  TYLog(@"Current Keyboards are\n%@", v14, v15, v16, v17, v18, v19, v20, v13);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = keyboardsCopy;
  v22 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v56;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v55 + 1) + 8 * i);
        v34 = [v13 containsObject:v26];
        v35 = @"Unable to remove [%@] since the ID does not match any keyboard in the current set";
        if (v34)
        {
          if ([v13 count] == 1)
          {
            TYLog(@"[%@] cannot be removed, because it's the only keyboard enabled. Aborting...", v36, v37, v38, v39, v40, v41, v42, v26);
            goto LABEL_13;
          }

          [v13 removeObject:v26];
          v35 = @"Removed [%@] from the list of keyboards.";
        }

        TYLog(v35, v27, v28, v29, v30, v31, v32, v33, v26);
      }

      v23 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470]2 setValue:v13 forKey:0];

  mEMORY[0x277D6F470]3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470]3 synchronizePreferences];

  mEMORY[0x277D6F470]4 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v46 = [mEMORY[0x277D6F470]4 valueForKey:0];

  TYLog(@"New Keyboards are\n%@", v47, v48, v49, v50, v51, v52, v53, v46);

  return v46;
}

+ (BOOL)switchToKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__TypistKeyboardDataInProcess_switchToKeyboard___block_invoke;
  v16[3] = &unk_279DF4650;
  v4 = keyboardCopy;
  v17 = v4;
  [TypistKeyboardUtilities runOnMainThread:v16];
  v5 = 10.0;
  while (1)
  {
    [TypistKeyboardUtilities waitFor:0.2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__TypistKeyboardDataInProcess_switchToKeyboard___block_invoke_2;
    v15[3] = &unk_279DF4710;
    v15[4] = &v18;
    [TypistKeyboardUtilities runOnMainThread:v15];
    v13 = [v19[5] isEqualToString:v4];
    if (v13)
    {
      break;
    }

    v5 = v5 + -0.2;
    if (v5 <= 0.0)
    {
      TYLogl(OS_LOG_TYPE_ERROR, @"Unable to switch to keyboard [%@] after %ld", v7, v8, v9, v10, v11, v12, v4, *&v5);
      goto LABEL_6;
    }
  }

  TYLog(@"Switched keyboard to %@", v6, v7, v8, v9, v10, v11, v12, v4);
LABEL_6:

  _Block_object_dispose(&v18, 8);
  return v13;
}

void __48__TypistKeyboardDataInProcess_switchToKeyboard___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75680] keyboardInputModeWithIdentifier:*(a1 + 32)];
  v1 = [MEMORY[0x277D75678] sharedInstance];
  [v1 setKeyboardInputMode:v2 userInitiated:1];
}

void __48__TypistKeyboardDataInProcess_switchToKeyboard___block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x277D75678] sharedInstance];
  v2 = [v5 _getLocalizedInputMode];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __46__TypistKeyboardDataInProcess_dismissKeyboard__block_invoke()
{
  v0 = [MEMORY[0x277D75678] activeInstance];
  [v0 dismissKeyboard];
}

+ (BOOL)switchToPlane:(id)plane
{
  planeCopy = plane;
  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  _layout = [activeInstance _layout];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__TypistKeyboardDataInProcess_switchToPlane___block_invoke;
  v11[3] = &unk_279DF4AB0;
  v12 = activeKeyboard;
  v13 = _layout;
  v14 = planeCopy;
  v7 = planeCopy;
  v8 = _layout;
  v9 = activeKeyboard;
  [TypistKeyboardUtilities runOnMainThread:v11];

  return 1;
}

void __45__TypistKeyboardDataInProcess_switchToPlane___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) keyplaneNamed:*(a1 + 48)];
  [v1 _changeToKeyplane:v2];
}

+ (id)getVisibleKeyplaneName
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TypistKeyboardDataInProcess_getVisibleKeyplaneName__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __53__TypistKeyboardDataInProcess_getVisibleKeyplaneName__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v6 _getCurrentKeyplaneName];
  v3 = [v2 lowercaseString];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)getKeyplaneDescription:(id)description
{
  descriptionCopy = description;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = objc_opt_new();
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__4;
  v15[4] = __Block_byref_object_dispose__4;
  _layout = [activeInstance _layout];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__4;
  v13[4] = __Block_byref_object_dispose__4;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__TypistKeyboardDataInProcess_getKeyplaneDescription___block_invoke;
  v8[3] = &unk_279DF4AD8;
  v10 = v13;
  v11 = v15;
  v5 = descriptionCopy;
  v9 = v5;
  v12 = &v17;
  [TypistKeyboardUtilities runOnMainThread:v8];
  v6 = v18[5];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);

  _Block_object_dispose(&v17, 8);

  return v6;
}

uint64_t __54__TypistKeyboardDataInProcess_getKeyplaneDescription___block_invoke(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) keyplaneNamed:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1[5] + 8) + 40) name];
  [*(*(a1[7] + 8) + 40) setName:v5];

  [*(*(a1[7] + 8) + 40) setIsLetters:{objc_msgSend(*(*(a1[5] + 8) + 40), "isLetters")}];
  [*(*(a1[7] + 8) + 40) setIsAlphabeticPlane:{objc_msgSend(*(*(a1[5] + 8) + 40), "isAlphabeticPlane")}];
  [*(*(a1[7] + 8) + 40) setIsShiftKeyplane:{objc_msgSend(*(*(a1[5] + 8) + 40), "isShiftKeyplane")}];
  [*(*(a1[7] + 8) + 40) setUsesAutoShift:{objc_msgSend(*(*(a1[5] + 8) + 40), "usesAutoShift")}];
  v6 = [*(*(a1[6] + 8) + 40) ignoresShiftState];
  v7 = *(*(a1[7] + 8) + 40);

  return [v7 setIgnoresShiftState:v6];
}

+ (id)getAllCandidates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__TypistKeyboardDataInProcess_getAllCandidates__block_invoke;
  v5[3] = &unk_279DF4710;
  v5[4] = &v6;
  [TypistKeyboardUtilities runOnMainThread:v5];
  v2 = v7[5];
  if (!v2)
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__TypistKeyboardDataInProcess_getAllCandidates__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v5 _getAutocorrectionList];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)getVisibleCandidateList:(id)list
{
  listCopy = list;
  if ([listCopy isEqual:@"typistCandidateBarTypeMecabra"])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__4;
    v13 = __Block_byref_object_dispose__4;
    v14 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__TypistKeyboardDataInProcess_getVisibleCandidateList___block_invoke;
    v8[3] = &unk_279DF4710;
    v8[4] = &v9;
    [TypistKeyboardUtilities runOnMainThread:v8];
    v5 = v10[5];
    if (!v5)
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    getAllCandidates = v5;
    _Block_object_dispose(&v9, 8);
  }

  else if ([listCopy isEqual:@"typistCandidateBarTypeFavonious"])
  {
    getAllCandidates = [self getAllCandidates];
  }

  else
  {
    getAllCandidates = MEMORY[0x277CBEBF8];
  }

  return getAllCandidates;
}

void __55__TypistKeyboardDataInProcess_getVisibleCandidateList___block_invoke(uint64_t a1)
{
  v2 = [TypistKeyboardUtilities searchForViewInKeyboardWindow:@"TUICandidateView"];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 visibleCandidates];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

+ (CGPoint)getCandidateCenter:(id)center
{
  centerCopy = center;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v18 = 0;
  v19 = 0;
  v17 = &unk_2701AD026;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__TypistKeyboardDataInProcess_getCandidateCenter___block_invoke;
  v10[3] = &unk_279DF4B00;
  v5 = centerCopy;
  v12 = &v14;
  selfCopy = self;
  v11 = v5;
  [TypistKeyboardUtilities runOnMainThread:v10];
  v6 = v15[4];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);
  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

void __50__TypistKeyboardDataInProcess_getCandidateCenter___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v3 = *MEMORY[0x277CBF398];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v53;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v52 + 1) + 8 * i);
        NSClassFromString(&cfstr_Uiremotekeyboa.isa);
        if (objc_opt_isKindOfClass())
        {
          [v9 allSubViews];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v10 = v51 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v49;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v49 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v48 + 1) + 8 * j);
                NSClassFromString(&cfstr_Tuicandidatear.isa);
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  NSClassFromString(&cfstr_Uikeyboardcand.isa);
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }
                }

                v16 = [v15 superview];
                [v15 frame];
                [v16 convertRect:0 toView:?];
                v3 = v17;

                goto LABEL_21;
              }

              v12 = [v10 countByEnumeratingWithState:&v48 objects:v57 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_22:
  v43 = v4;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    while (2)
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v44 + 1) + 8 * k);
        NSClassFromString(&cfstr_Tuicandidatece.isa);
        if (objc_opt_isKindOfClass())
        {
          v24 = [v23 performSelector:sel_textLabel];
          v25 = [v24 text];
          if ([v25 isEqualToString:*(a1 + 32)])
          {
            v26 = [*(a1 + 48) isCandidateCellVisible:v23];

            if (v26)
            {
              v27 = +[TypistKeyboardUtilities getRootViewControllerViaScene];
              v28 = [v24 superview];
              [v24 frame];
              v30 = v29;
              v32 = v31;
              v34 = v33;
              v36 = v35;
              v37 = [v27 view];
              [v28 convertRect:v37 toView:{v30, v32, v34, v36}];

              UIRectGetCenter();
              v40 = *(*(a1 + 40) + 8);
              *(v40 + 32) = v38;
              *(v40 + 40) = v39;
              v41 = *(*(a1 + 40) + 8);
              v42 = *(v41 + 32);
              if (v42 >= v3 + -2.0)
              {
                v42 = v3 + -2.0;
              }

              *(v41 + 32) = v42;

              goto LABEL_39;
            }
          }

          else
          {
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_39:
}

+ (CGPoint)getCandidateCenterAtIndex:(int64_t)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_2701AD026;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TypistKeyboardDataInProcess_getCandidateCenterAtIndex___block_invoke;
  v7[3] = &unk_279DF4B28;
  v7[4] = &v8;
  v7[5] = index;
  v7[6] = self;
  [TypistKeyboardUtilities runOnMainThread:v7];
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

void __57__TypistKeyboardDataInProcess_getCandidateCenterAtIndex___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v1 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v1)
  {
    v2 = 0;
    v26 = *v32;
    do
    {
      v3 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v31 + 1) + 8 * v3);
        NSClassFromString(&cfstr_Uiremotekeyboa.isa);
        if (objc_opt_isKindOfClass())
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v5 = [v4 allSubViews];
          v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v6)
          {
            v7 = *v28;
            do
            {
              v8 = 0;
              do
              {
                if (*v28 != v7)
                {
                  objc_enumerationMutation(v5);
                }

                v9 = *(*(&v27 + 1) + 8 * v8);
                NSClassFromString(&cfstr_Uimorphinglabe.isa);
                if (objc_opt_isKindOfClass())
                {
                  if (*(a1 + 40) == v2)
                  {
                    v10 = +[TypistKeyboardUtilities getRootViewControllerViaScene];
                    v11 = [v9 superview];
                    [v9 frame];
                    v13 = v12;
                    v15 = v14;
                    v17 = v16;
                    v19 = v18;
                    v20 = [v10 view];
                    [v11 convertRect:v20 toView:{v13, v15, v17, v19}];
                    UIRectGetCenter();
                    v21 = *(*(a1 + 32) + 8);
                    *(v21 + 32) = v22;
                    *(v21 + 40) = v23;

                    goto LABEL_18;
                  }

                  ++v2;
                }

                ++v8;
              }

              while (v6 != v8);
              v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v6);
          }

LABEL_18:
        }

        ++v3;
      }

      while (v3 != v1);
      v1 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v1);
  }
}

+ (CGRect)getCandidateBarRect
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4010000000;
  v14 = &unk_2701AD026;
  v15 = 0u;
  v16 = 0u;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__TypistKeyboardDataInProcess_getCandidateBarRect__block_invoke;
  v10[3] = &unk_279DF4710;
  v10[4] = &v11;
  [TypistKeyboardUtilities runOnMainThread:v10];
  v2 = v12[4];
  v3 = v12[5];
  v4 = v12[6];
  v5 = v12[7];
  _Block_object_dispose(&v11, 8);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

void __50__TypistKeyboardDataInProcess_getCandidateBarRect__block_invoke(uint64_t a1)
{
  v2 = [TypistKeyboardUtilities searchForViewInKeyboardWindow:@"TUICandidateView"];
  if (v2)
  {
    v11 = v2;
    [v2 frame];
    v4 = v3;
    [v11 frame];
    v6 = v5;
    [v11 frame];
    v8 = v7;
    [v11 frame];
    v2 = v11;
    v9 = *(*(a1 + 32) + 8);
    v9[4] = v4;
    v9[5] = v6;
    v9[6] = v8;
    v9[7] = v10;
  }
}

+ (BOOL)isExtendedCandidateViewMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__TypistKeyboardDataInProcess_isExtendedCandidateViewMode__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __58__TypistKeyboardDataInProcess_isExtendedCandidateViewMode__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v3 candidateList];
  *(*(*(a1 + 32) + 8) + 24) = [v2 isExtendedList];
}

+ (CGPoint)getExtendedCandidateViewToggleButtonCenter
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_2701AD026;
  v11 = *MEMORY[0x277CBF348];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__TypistKeyboardDataInProcess_getExtendedCandidateViewToggleButtonCenter__block_invoke;
  v6[3] = &unk_279DF4710;
  v6[4] = &v7;
  [TypistKeyboardUtilities runOnMainThread:v6];
  v2 = v8[4];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

void __73__TypistKeyboardDataInProcess_getExtendedCandidateViewToggleButtonCenter__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = v27 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v18 = *v25;
    v19 = a1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v24 + 1) + 8 * i) allSubViews];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * j);
              NSClassFromString(&cfstr_Tuicandidatear.isa);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                NSClassFromString(&cfstr_Uikeyboardcand.isa);
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }

              v14 = [v13 superview];
              [v13 frame];
              [v14 convertRect:0 toView:?];
              UIRectGetCenter();
              v15 = *(*(v19 + 32) + 8);
              *(v15 + 32) = v16;
              *(v15 + 40) = v17;

              goto LABEL_19;
            }

            v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            v5 = v18;
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

LABEL_19:
}

+ (BOOL)hasMarkedText
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__TypistKeyboardDataInProcess_hasMarkedText__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __44__TypistKeyboardDataInProcess_hasMarkedText__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75678] activeInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 hasMarkedText];
}

+ (id)markedText
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__TypistKeyboardDataInProcess_markedText__block_invoke;
  v5[3] = &unk_279DF4710;
  v5[4] = &v6;
  [TypistKeyboardUtilities runOnMainThread:v5];
  v2 = v7[5];
  if (!v2)
  {
    v2 = &stru_288014100;
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__TypistKeyboardDataInProcess_markedText__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v5 markedText];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (void)showCandidateAtIndex:(int64_t)index
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__TypistKeyboardDataInProcess_showCandidateAtIndex___block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = index;
  [TypistKeyboardUtilities runOnMainThread:v3];
}

void __52__TypistKeyboardDataInProcess_showCandidateAtIndex___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v3 candidateList];
  [v2 showCandidateAtIndex:*(a1 + 32)];
}

+ (CGRect)findKeyBoundsInKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  v20 = 0;
  v21 = &v20;
  v22 = 0x4010000000;
  v23 = &unk_2701AD026;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v24 = *MEMORY[0x277CBF398];
  v25 = v4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__4;
  v18[4] = __Block_byref_object_dispose__4;
  v19 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__TypistKeyboardDataInProcess_findKeyBoundsInKeyboard___block_invoke;
  v14[3] = &unk_279DF4B50;
  v16 = v18;
  v5 = keyboardCopy;
  v15 = v5;
  v17 = &v20;
  [TypistKeyboardUtilities runOnMainThread:v14];
  v6 = v21[4];
  v7 = v21[5];
  v8 = v21[6];
  v9 = v21[7];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

void __55__TypistKeyboardDataInProcess_findKeyBoundsInKeyboard___block_invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75678] activeInstance];
  v3 = [v2 _layout];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(a1[5] + 8) + 40) performSelector:sel_keyboard];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v6 subtrees];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 firstCachedKeyWithName:a1[4]];

        if (v13)
        {
          v14 = [v12 firstCachedKeyWithName:a1[4]];
          [v14 frame];
          v15 = *(a1[6] + 8);
          v15[4] = v16;
          v15[5] = v17;
          v15[6] = v18;
          v15[7] = v19;

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [*(*(a1[5] + 8) + 40) convertRect:0 toView:{*(*(a1[6] + 8) + 32), *(*(a1[6] + 8) + 40), *(*(a1[6] + 8) + 48), *(*(a1[6] + 8) + 56)}];
  v20 = *(a1[6] + 8);
  v20[4] = v21;
  v20[5] = v22;
  v20[6] = v23;
  v20[7] = v24;
}

+ (id)generateKeyplaneSwitchTable:(id)table
{
  v87 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v68 = objc_opt_new();
  v4 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = tableCopy;
  v12 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
  if (v12)
  {
    v13 = *v82;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v82 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v81 + 1) + 8 * i);
        TYLog(@"########  PLANE NAME: %@", v5, v6, v7, v8, v9, v10, v11, v15);
        if ([v15 hasSuffix:@"-split"])
        {
          TYLog(@"                      ===> IGNORED", v16, v17, v18, v19, v20, v21, v22);
          continue;
        }

        v23 = objc_opt_new();
        v75 = 0;
        v76 = &v75;
        v77 = 0x3032000000;
        v78 = __Block_byref_object_copy__4;
        v79 = __Block_byref_object_dispose__4;
        v80 = 0;
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __59__TypistKeyboardDataInProcess_generateKeyplaneSwitchTable___block_invoke;
        v74[3] = &unk_279DF4B78;
        v74[4] = v15;
        v74[5] = &v75;
        [TypistKeyboardUtilities runOnMainThread:v74];
        isAlphabeticPlane = [v76[5] isAlphabeticPlane];
        isShiftKeyplane = [v76[5] isShiftKeyplane];
        isShiftKeyPlaneChooser = [v76[5] isShiftKeyPlaneChooser];
        isLetters = [v76[5] isLetters];
        TYLog(@"          { isAlphabet:%d, isShift:%d, isShiftChooser:%d, isLetters:%d }", v28, v29, v30, v31, v32, v33, v34, isAlphabeticPlane, isShiftKeyplane, isShiftKeyPlaneChooser, isLetters);
        v35 = [v76[5] stringForProperty:@"shift-alternate"];
        getKeyboardUISettings = [self getKeyboardUISettings];
        v37 = [getKeyboardUISettings objectForKeyedSubscript:@"LowerCaseKeyboard"];
        if (([v37 BOOLValue] & 1) == 0)
        {

          goto LABEL_12;
        }

        v38 = [v76[5] stringForProperty:@"shift-alternate-small-display"];
        v39 = v38 == 0;

        if (!v39)
        {
          [v76[5] stringForProperty:@"shift-alternate-small-display"];
          v35 = getKeyboardUISettings = v35;
LABEL_12:
        }

        if ([v35 length] && (objc_msgSend(v35, "isEqualToString:", v15) & 1) == 0)
        {
          [v23 setObject:@"⇧" forKey:v35];
          [v4 addObject:v35];
          TYLog(@"      --> Shift --> %@", v40, v41, v42, v43, v44, v45, v46, v35);
        }

        v47 = [v76[5] stringForProperty:@"more-alternate"];

        getKeyboardUISettings2 = [self getKeyboardUISettings];
        v49 = [getKeyboardUISettings2 objectForKeyedSubscript:@"LowerCaseKeyboard"];
        if (([v49 BOOLValue] & 1) == 0)
        {

          goto LABEL_20;
        }

        v50 = [v76[5] stringForProperty:@"more-alternate-small-display"];
        v51 = v50 == 0;

        if (!v51)
        {
          [v76[5] stringForProperty:@"more-alternate-small-display"];
          v47 = getKeyboardUISettings2 = v47;
LABEL_20:
        }

        if ([v47 length])
        {
          [v23 setObject:@"🔤" forKey:v47];
          [v4 addObject:v47];
          TYLog(@"      --> More  --> %@", v52, v53, v54, v55, v56, v57, v58, v47);
        }

        if ([v23 count])
        {
          if (![v76[5] isLetters] || (v59 = objc_msgSend(v76[5], "isShiftKeyplane"), v60 = @"YES", v59))
          {
            v60 = @"NO";
          }

          [v23 setObject:v60 forKey:@"maybeDefaultPlane"];
          [v68 setObject:v23 forKey:v15];
        }

        _Block_object_dispose(&v75, 8);
      }

      v12 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
    }

    while (v12);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  allKeys = [v68 allKeys];
  v62 = [allKeys countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v62)
  {
    v63 = *v71;
    do
    {
      for (j = 0; j != v62; ++j)
      {
        if (*v71 != v63)
        {
          objc_enumerationMutation(allKeys);
        }

        v65 = *(*(&v70 + 1) + 8 * j);
        if (([v4 containsObject:v65] & 1) == 0)
        {
          [v68 removeObjectForKey:v65];
        }
      }

      v62 = [allKeys countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v62);
  }

  return v68;
}

void __59__TypistKeyboardDataInProcess_generateKeyplaneSwitchTable___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v6 _layout];
  v3 = [v2 keyplaneNamed:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)generateKeyplaneSwitchTableFor10Key:(id)key
{
  v67 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v51 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = keyCopy;
  v4 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v4)
  {
    v12 = v4;
    v13 = *v62;
    v50 = *v62;
    do
    {
      v14 = 0;
      v52 = v12;
      do
      {
        if (*v62 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v61 + 1) + 8 * v14);
        TYLog(@"########  PLANE NAME: %@", v5, v6, v7, v8, v9, v10, v11, v15);
        if ([v15 hasSuffix:@"-split"])
        {
          TYLog(@"                      ===> IGNORED", v16, v17, v18, v19, v20, v21, v22);
        }

        else
        {
          v56 = v14;
          v23 = objc_opt_new();
          activeInstance = [MEMORY[0x277D75678] activeInstance];
          _layout = [activeInstance _layout];
          v26 = [_layout keyplaneNamed:v15];

          v27 = [v26 stringForProperty:@"shift-alternate"];
          if ([v27 length])
          {
            [v23 setObject:@"⇧" forKey:v27];
            TYLog(@"      --> Shift --> %@", v28, v29, v30, v31, v32, v33, v34, v27);
          }

          v54 = v27;
          v55 = v26;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          keys = [v26 keys];
          v36 = [keys countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v58;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v58 != v38)
                {
                  objc_enumerationMutation(keys);
                }

                representedString = [*(*(&v57 + 1) + 8 * i) representedString];
                lowercaseString = [representedString lowercaseString];

                if ([lowercaseString hasSuffix:@"-plane"] && (objc_msgSend(lowercaseString, "isEqualToString:", v15) & 1) == 0)
                {
                  [v23 setObject:lowercaseString forKey:lowercaseString];
                  TYLog(@"      --> Switch --> %@", v42, v43, v44, v45, v46, v47, v48, lowercaseString);
                }
              }

              v37 = [keys countByEnumeratingWithState:&v57 objects:v65 count:16];
            }

            while (v37);
          }

          [v51 setObject:v23 forKey:v15];
          v12 = v52;
          v13 = v50;
          v14 = v56;
        }

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v12);
  }

  return v51;
}

+ (id)determineDefaultPlane:(id)plane basePlaneName:(id)name
{
  v66 = *MEMORY[0x277D85DE8];
  planeCopy = plane;
  nameCopy = name;
  v47 = [MEMORY[0x277CBEB58] set];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [planeCopy allKeys];
  v48 = planeCopy;
  v45 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v45)
  {
    v44 = *v60;
    v6 = @"🔤";
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v60 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v59 + 1) + 8 * i);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v9 = [planeCopy objectForKeyedSubscript:v8];
        allKeys = [v9 allKeys];

        v50 = allKeys;
        v11 = [allKeys countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v11)
        {
          v12 = v11;
          v46 = i;
          v13 = 0;
          v14 = *v56;
          do
          {
            v15 = 0;
            v49 = v12;
            do
            {
              v16 = v13;
              if (*v56 != v14)
              {
                objc_enumerationMutation(v50);
              }

              v13 = *(*(&v55 + 1) + 8 * v15);

              v17 = [planeCopy objectForKeyedSubscript:v8];
              v18 = [v17 objectForKeyedSubscript:v13];
              if ([v18 isEqualToString:v6])
              {
                [planeCopy objectForKeyedSubscript:v13];
                v19 = v14;
                v20 = v8;
                v22 = v21 = v6;
                v23 = [v22 objectForKeyedSubscript:@"maybeDefaultPlane"];
                v24 = [v23 isEqualToString:@"YES"];

                planeCopy = v48;
                v6 = v21;
                v8 = v20;
                v14 = v19;
                v12 = v49;

                if (v24)
                {
                  [v47 addObject:v13];
                }
              }

              else
              {
              }

              ++v15;
            }

            while (v12 != v15);
            v12 = [v50 countByEnumeratingWithState:&v55 objects:v64 count:16];
          }

          while (v12);

          i = v46;
        }
      }

      v45 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v45);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v25 = v47;
  v26 = [v25 countByEnumeratingWithState:&v51 objects:v63 count:16];
  v27 = nameCopy;
  if (v26)
  {
    v28 = v26;
    v29 = 0;
    v30 = *v52;
    while (2)
    {
      v31 = 0;
      v32 = v29;
      do
      {
        if (*v52 != v30)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v51 + 1) + 8 * v31);

        if ([v27 isEqualToString:v29])
        {
LABEL_35:
          v40 = v29;

          goto LABEL_36;
        }

        v33 = [planeCopy objectForKeyedSubscript:v29];
        v34 = [v33 objectForKeyedSubscript:v27];
        if (v34)
        {
          v35 = v34;
          v36 = [planeCopy objectForKeyedSubscript:v29];
          v37 = [v36 objectForKeyedSubscript:v27];
          v38 = [v37 isEqualToString:@"⇧"];

          v27 = nameCopy;
          planeCopy = v48;

          if (v38)
          {
            goto LABEL_35;
          }
        }

        else
        {
        }

        ++v31;
        v32 = v29;
      }

      while (v28 != v31);
      v28 = [v25 countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  if ([v25 count])
  {
    allObjects = [v25 allObjects];
    v40 = [allObjects objectAtIndex:0];
  }

  else
  {
    v40 = v27;
  }

LABEL_36:

  return v40;
}

+ (id)determineDefaultPlane10Key:(id)key basePlaneName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  nameCopy = name;
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  _layout = [activeInstance _layout];
  v8 = [_layout performSelector:sel_keyboard];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = v8;
  subtrees = [v8 subtrees];
  v10 = [subtrees countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    lowercaseString = 0;
    v13 = *v27;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(subtrees);
      }

      name = [*(*(&v26 + 1) + 8 * v14) name];

      if ([name containsString:@"_"])
      {
        v16 = [name componentsSeparatedByString:@"_"];
        lastObject = [v16 lastObject];
        lowercaseString = [lastObject lowercaseString];
      }

      else
      {
        lowercaseString = name;
      }

      allKeys = [keyCopy allKeys];
      v19 = [allKeys containsObject:lowercaseString];

      if (v19)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v11 = [subtrees countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    lowercaseString = 0;
  }

  if ([lowercaseString length])
  {
    v20 = lowercaseString;
    v21 = nameCopy;
  }

  else
  {
    v21 = nameCopy;
    v20 = [self determineDefaultPlane:keyCopy basePlaneName:nameCopy];
  }

  return v20;
}

+ (id)cleanUpSwitchTableBasedOnDefaultPlane:(id)plane defaultPlaneName:(id)name
{
  v70 = *MEMORY[0x277D85DE8];
  planeCopy = plane;
  nameCopy = name;
  v7 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v36 = nameCopy;
  v8 = [planeCopy objectForKeyedSubscript:nameCopy];
  allKeys = [v8 allKeys];

  obj = allKeys;
  v39 = [allKeys countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v39)
  {
    v38 = *v62;
    do
    {
      v10 = 0;
      do
      {
        if (*v62 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v10;
        v11 = *(*(&v61 + 1) + 8 * v10);
        [v7 addObject:v11];
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v12 = [planeCopy objectForKeyedSubscript:v11];
        allKeys2 = [v12 allKeys];

        v41 = allKeys2;
        v43 = [allKeys2 countByEnumeratingWithState:&v57 objects:v68 count:16];
        if (v43)
        {
          v42 = *v58;
          do
          {
            v14 = 0;
            do
            {
              if (*v58 != v42)
              {
                objc_enumerationMutation(v41);
              }

              v44 = v14;
              v15 = *(*(&v57 + 1) + 8 * v14);
              [v7 addObject:v15];
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v16 = [planeCopy objectForKeyedSubscript:v15];
              allKeys3 = [v16 allKeys];

              v18 = [allKeys3 countByEnumeratingWithState:&v53 objects:v67 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v54;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v54 != v20)
                    {
                      objc_enumerationMutation(allKeys3);
                    }

                    v22 = *(*(&v53 + 1) + 8 * i);
                    [v7 addObject:v22];
                    v51 = 0u;
                    v52 = 0u;
                    v49 = 0u;
                    v50 = 0u;
                    v23 = [planeCopy objectForKeyedSubscript:v22];
                    allKeys4 = [v23 allKeys];

                    v25 = [allKeys4 countByEnumeratingWithState:&v49 objects:v66 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v50;
                      do
                      {
                        for (j = 0; j != v26; ++j)
                        {
                          if (*v50 != v27)
                          {
                            objc_enumerationMutation(allKeys4);
                          }

                          [v7 addObject:*(*(&v49 + 1) + 8 * j)];
                        }

                        v26 = [allKeys4 countByEnumeratingWithState:&v49 objects:v66 count:16];
                      }

                      while (v26);
                    }
                  }

                  v19 = [allKeys3 countByEnumeratingWithState:&v53 objects:v67 count:16];
                }

                while (v19);
              }

              v14 = v44 + 1;
            }

            while (v44 + 1 != v43);
            v43 = [v41 countByEnumeratingWithState:&v57 objects:v68 count:16];
          }

          while (v43);
        }

        v10 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v39);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  allKeys5 = [planeCopy allKeys];
  v30 = [allKeys5 countByEnumeratingWithState:&v45 objects:v65 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v46;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(allKeys5);
        }

        v34 = *(*(&v45 + 1) + 8 * k);
        if (([v7 containsObject:v34] & 1) == 0)
        {
          [planeCopy removeObjectForKey:v34];
        }
      }

      v31 = [allKeys5 countByEnumeratingWithState:&v45 objects:v65 count:16];
    }

    while (v31);
  }

  return planeCopy;
}

+ (id)getKeyboardPlaneKeys:(id)keys keys:(id)a4 inPlane:(id)plane
{
  v121[13] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v99 = a4;
  planeCopy = plane;
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  shouldShowDictationKey = [keysCopy shouldShowDictationKey];
  shouldShowGlobeKey = [keysCopy shouldShowGlobeKey];
  _layout = [activeInstance _layout];
  globeKeyDisplaysAsEmojiKey = [_layout globeKeyDisplaysAsEmojiKey];

  _layout2 = [activeInstance _layout];
  showsDedicatedEmojiKeyAlongsideGlobeButton = [_layout2 showsDedicatedEmojiKeyAlongsideGlobeButton];

  keyplaneView = [activeInstance keyplaneView];
  factory = [keyplaneView factory];
  [factory dynamicInsets];
  v94 = v12;
  v95 = v11;
  v90 = v14;
  v91 = v13;
  v15 = objc_opt_new();
  if ([v99 count])
  {
    v16 = 0;
    v86 = globeKeyDisplaysAsEmojiKey ^ 1 | showsDedicatedEmojiKeyAlongsideGlobeButton;
    while (1)
    {
      v98 = v16;
      v104 = [v99 objectAtIndexedSubscript:?];
      name = [v104 name];
      v18 = [keysCopy changeKeyNameToGenericCharacter:name];

      name2 = [v104 name];
      lowercaseString = [name2 lowercaseString];
      if ([lowercaseString hasPrefix:@"copy-"])
      {
        goto LABEL_6;
      }

      name3 = [v104 name];
      lowercaseString2 = [name3 lowercaseString];
      if ([lowercaseString2 hasPrefix:@"cut-"])
      {
        break;
      }

      name4 = [v104 name];
      lowercaseString3 = [name4 lowercaseString];
      v27 = [lowercaseString3 hasPrefix:@"paste-"];

      if (v27)
      {
        goto LABEL_7;
      }

      representedString = v18;
      if (v18)
      {
LABEL_9:
        v100 = planeCopy;
        v101 = representedString;
        if (([(__CFString *)representedString isEqualToString:@"Dictation"]& 1) != 0)
        {
          visible = shouldShowDictationKey;
        }

        else if ([(__CFString *)representedString isEqualToString:@"🌐"])
        {
          if ((v86 & 1) == 0)
          {

            v101 = @"Emoji";
          }

          visible = shouldShowGlobeKey;
        }

        else
        {
          visible = [v104 visible];
        }

        [v104 frame];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        UIRectGetCenter();
        [self centerOfKey:? withOffset:?];
        v41 = v40;
        v43 = v42;
        UIRectGetCenter();
        [self centerOfKey:? withOffset:?];
        v45 = v44;
        v47 = v46;
        v102 = [keysCopy convertRepresentedStringsIfNecessary:v101];
        v121[0] = v102;
        v120[0] = @"key";
        v120[1] = @"keyname";
        name5 = [v104 name];
        v121[1] = name5;
        v121[2] = @"tap";
        v120[2] = @"action";
        v120[3] = @"x";
        v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v41];
        v121[3] = v96;
        v120[4] = @"y";
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v43];
        v121[4] = v48;
        v120[5] = @"rect";
        v49 = [MEMORY[0x277CCAE60] valueWithCGRect:{v33, v35, v37, v39}];
        v121[5] = v49;
        v121[6] = v100;
        v120[6] = @"plane";
        v120[7] = @"more-after";
        cache = [v104 cache];
        v51 = [cache objectForKey:@"more-after"];
        v52 = v51;
        v53 = &unk_2880299D0;
        if (v51)
        {
          v53 = v51;
        }

        v121[7] = v53;
        v121[8] = @"basekey";
        v120[8] = @"type";
        v120[9] = @"visible";
        v54 = MEMORY[0x277CBEC28];
        if (visible)
        {
          v54 = MEMORY[0x277CBEC38];
        }

        v121[9] = v54;
        v120[10] = @"secondaryDisplayString";
        secondaryDisplayStrings = [v104 secondaryDisplayStrings];
        v56 = secondaryDisplayStrings;
        v57 = &stru_288014100;
        if (secondaryDisplayStrings)
        {
          v57 = secondaryDisplayStrings;
        }

        v121[10] = v57;
        v120[11] = @"edgeInsets";
        v58 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v95, v94, v91, v90}];
        v121[11] = v58;
        v120[12] = @"centerOfGlyph";
        v59 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v45, v47}];
        v121[12] = v59;
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:13];

        [v15 setValue:v60 forKey:v102];
        v114 = 0;
        v115 = &v114;
        v116 = 0x2020000000;
        v117 = 0;
        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = __65__TypistKeyboardDataInProcess_getKeyboardPlaneKeys_keys_inPlane___block_invoke;
        v113[3] = &unk_279DF4710;
        v113[4] = &v114;
        [TypistKeyboardUtilities runOnMainThread:v113];
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice userInterfaceIdiom] == 1)
        {
          currentDevice2 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice2 userInterfaceIdiom] == 1)
          {
            v63 = *(v115 + 24);

            if ((v63 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_32:
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            currentDevice = [v104 secondaryDisplayStrings];
            v64 = [currentDevice countByEnumeratingWithState:&v109 objects:v119 count:16];
            if (v64)
            {
              v65 = *v110;
              do
              {
                for (i = 0; i != v64; ++i)
                {
                  if (*v110 != v65)
                  {
                    objc_enumerationMutation(currentDevice);
                  }

                  v67 = [@"⊎" stringByAppendingString:*(*(&v109 + 1) + 8 * i)];
                  [v15 setValue:v60 forKey:v67];
                }

                v64 = [currentDevice countByEnumeratingWithState:&v109 objects:v119 count:16];
              }

              while (v64);
            }
          }

          else
          {
          }

LABEL_42:
          if ([keysCopy isTenKey])
          {
            [keysCopy setupTenKey:v15 forKey:v104 keyName:v102 planeName:v100];
          }

          else if (([keysCopy isTenKey] & 1) == 0 && objc_msgSend(keysCopy, "isKanaKeyboard"))
          {
            currentDevice3 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice3 userInterfaceIdiom] == 1)
            {
              v69 = *(v115 + 24);

              if ((v69 & 1) == 0)
              {
                [keysCopy setup50OnFlick:v15 forKey:v104 keyName:v102 planeName:v100];
              }
            }

            else
            {
            }
          }

          _Block_object_dispose(&v114, 8);

          goto LABEL_51;
        }

        goto LABEL_32;
      }

      if (![planeCopy isEqual:@"second-alternate"] || (objc_msgSend(v104, "secondaryRepresentedStrings"), v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 == 0, v28, v29))
      {
        representedString = [v104 representedString];
      }

      else
      {
        secondaryRepresentedStrings = [v104 secondaryRepresentedStrings];
        v31 = [secondaryRepresentedStrings objectAtIndexedSubscript:0];

        representedString = v31;
      }

LABEL_8:
      if (representedString)
      {
        goto LABEL_9;
      }

LABEL_51:

      v70 = [v99 count];
      v16 = v98 + 1;
      if (v70 <= v98 + 1)
      {
        goto LABEL_54;
      }
    }

LABEL_6:
LABEL_7:
    representedString = [v104 name];

    goto LABEL_8;
  }

LABEL_54:
  v71 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v72 = v15;
  v73 = [v72 countByEnumeratingWithState:&v105 objects:v118 count:16];
  if (v73)
  {
    v74 = *v106;
    do
    {
      for (j = 0; j != v73; ++j)
      {
        if (*v106 != v74)
        {
          objc_enumerationMutation(v72);
        }

        [v71 appendFormat:@"[%@]", *(*(&v105 + 1) + 8 * j)];
      }

      v73 = [v72 countByEnumeratingWithState:&v105 objects:v118 count:16];
    }

    while (v73);
  }

  TYLog(@"Plane: %@, Keys -> %@", v76, v77, v78, v79, v80, v81, v82, planeCopy, v71);

  return v72;
}

void *__65__TypistKeyboardDataInProcess_getKeyboardPlaneKeys_keys_inPlane___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)updateCachedKeyplaneKeycaps:(id)keycaps
{
  v25 = *MEMORY[0x277D85DE8];
  keycapsCopy = keycaps;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = keycapsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        displayString = [v11 displayString];
        if (displayString)
        {
          v13 = displayString;
          interactionType = [v11 interactionType];

          if (interactionType != 10)
          {
            _showSmallDisplayKeyplane = [MEMORY[0x277D75698] _showSmallDisplayKeyplane];
            displayString2 = [v11 displayString];
            v17 = displayString2;
            if ((_showSmallDisplayKeyplane & 1) == 0)
            {
              v18 = [displayString2 uppercaseStringWithLocale:currentLocale];

              v17 = v18;
            }

            [v4 addObject:v17];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (CGPoint)centerOfKey:(CGPoint)key withOffset:(CGPoint)offset
{
  v4 = key.x + offset.x;
  v5 = key.y + offset.y;
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  _layout = [activeInstance _layout];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v22 = 0;
  v23 = 0;
  v21 = &unk_2701AD026;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__TypistKeyboardDataInProcess_centerOfKey_withOffset___block_invoke;
  v13[3] = &unk_279DF4BA0;
  v15 = &v18;
  v8 = _layout;
  v14 = v8;
  v16 = v4;
  v17 = v5;
  [TypistKeyboardUtilities runOnMainThread:v13];
  v9 = v19[4];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  v11 = v9;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

void __54__TypistKeyboardDataInProcess_centerOfKey_withOffset___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) layer];
  [v5 convertPoint:0 toLayer:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
}

+ (id)addKeyboardGestureKeys:(id)keys keys:(id)a4 inPlane:(id)plane addTo:(id)to
{
  v120[1] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v9 = a4;
  planeCopy = plane;
  toCopy = to;
  v90 = v9;
  v92 = planeCopy;
  if (!v9 || !planeCopy)
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"[addKeyboardGestureKeys] - FAILURE - keys or planeName is missing!", v11, v12, v13, v14, v15, v16);
    goto LABEL_53;
  }

  activeInstance = [MEMORY[0x277D75678] activeInstance];
  keyplaneView = [activeInstance keyplaneView];
  factory = [keyplaneView factory];
  [factory dynamicInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __73__TypistKeyboardDataInProcess_addKeyboardGestureKeys_keys_inPlane_addTo___block_invoke;
  v111[3] = &unk_279DF4710;
  v111[4] = &v112;
  [TypistKeyboardUtilities runOnMainThread:v111];
  v91 = 0;
LABEL_4:
  if ([v90 count] > v91)
  {
    v95 = [v90 objectAtIndexedSubscript:?];
    name = [v95 name];
    representedString = [keysCopy changeKeyNameToGenericCharacter:name];

    if (!representedString)
    {
      if (![v92 isEqual:@"second-alternate"] || (objc_msgSend(v95, "secondaryRepresentedStrings"), v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
      {
        representedString = [v95 representedString];
      }

      else
      {
        secondaryRepresentedStrings = [v95 secondaryRepresentedStrings];
        representedString = [secondaryRepresentedStrings objectAtIndexedSubscript:0];
      }
    }

    secondaryRepresentedStrings2 = [v95 secondaryRepresentedStrings];
    if ([secondaryRepresentedStrings2 count])
    {
      if ([v95 displayTypeHint] == 10)
      {

LABEL_13:
        secondaryRepresentedStrings3 = [v95 secondaryRepresentedStrings];
LABEL_23:
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        obj = secondaryRepresentedStrings3;
        v36 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
        if (!v36)
        {
          goto LABEL_39;
        }

        v97 = 0;
        v93 = *v108;
        while (1)
        {
          v94 = v36;
          for (i = 0; i != v94; ++i)
          {
            if (*v108 != v93)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v107 + 1) + 8 * i);
            v39 = [obj count];
            if (v39 == 1)
            {
              v102 = @"↓";
              v98 = @"flick-down";
LABEL_35:
              v48 = [toCopy objectForKey:representedString];
              v49 = [v48 objectForKeyedSubscript:@"x"];
              [v49 floatValue];
              v51 = v50;
              v52 = [toCopy objectForKey:representedString];
              v53 = [v52 objectForKeyedSubscript:@"y"];
              [v53 floatValue];
              v55 = v54;

              LODWORD(v56) = 1118175232;
              [keysCopy calculateCoordinatesForFlickGesture:v102 direction:v51 offset:{v55, v56}];
              v58 = v57;
              v60 = v59;
              v117[0] = @"key";
              v61 = [keysCopy convertRepresentedStringsIfNecessary:v38];
              v118[0] = v61;
              v117[1] = @"keyname";
              name2 = [v95 name];
              v118[1] = name2;
              v118[2] = representedString;
              v117[2] = @"basekey";
              v117[3] = @"action";
              v118[3] = v98;
              v117[4] = @"x";
              v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v58];
              v118[4] = v63;
              v117[5] = @"y";
              v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v60];
              v118[5] = v64;
              v117[6] = @"rect";
              v65 = MEMORY[0x277CCAE60];
              [v95 frame];
              v66 = [v65 valueWithCGRect:?];
              v118[6] = v66;
              v118[7] = v92;
              v117[7] = @"plane";
              v117[8] = @"type";
              v118[8] = @"gesture";
              v117[9] = @"edgeInsets";
              v67 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v18, v20, v22, v24}];
              v118[9] = v67;
              v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:10];
              v69 = [keysCopy convertRepresentedStringsIfNecessary:v38];
              v70 = [(__CFString *)v102 stringByAppendingString:v69];
              [toCopy setValue:v68 forKey:v70];

              ++v97;
              continue;
            }

            if (v39 == 2)
            {
              v46 = @"↙";
              if (v97)
              {
                v47 = @"flick-down-left";
              }

              else
              {
                v46 = @"↘";
                v47 = @"flick-down-right";
              }

              v102 = v46;
              v98 = v47;
              goto LABEL_35;
            }

            TYLogl(OS_LOG_TYPE_ERROR, @"Too many secondaryRepresentedStrings on key '%@'. Unable to determine gesture direction.", v40, v41, v42, v43, v44, v45, representedString);
          }

          v36 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
          if (!v36)
          {
LABEL_39:

            ++v91;
            goto LABEL_4;
          }
        }
      }

      if ([v95 displayType] == 7)
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice userInterfaceIdiom] == 1)
        {
          v32 = *(v113 + 24);

          if ((v32 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_20:
          gestureKey = [v95 gestureKey];

          if (gestureKey)
          {
            gestureKey2 = [v95 gestureKey];
            representedString2 = [gestureKey2 representedString];
            v120[0] = representedString2;
            secondaryRepresentedStrings3 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:1];
          }

          else
          {
            secondaryRepresentedStrings3 = 0;
          }

          goto LABEL_23;
        }
      }
    }

    goto LABEL_20;
  }

  v71 = objc_opt_new();
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v72 = toCopy;
  v73 = [v72 countByEnumeratingWithState:&v103 objects:v116 count:16];
  if (v73)
  {
    v74 = *v104;
    do
    {
      for (j = 0; j != v73; ++j)
      {
        if (*v104 != v74)
        {
          objc_enumerationMutation(v72);
        }

        v76 = *(*(&v103 + 1) + 8 * j);
        if (([v76 hasPrefix:@"↓"] & 1) != 0 || (objc_msgSend(v76, "hasPrefix:", @"↘") & 1) != 0 || objc_msgSend(v76, "hasPrefix:", @"flick-down-left"))
        {
          v77 = [v72 objectForKeyedSubscript:v76];
          v78 = [v77 objectForKeyedSubscript:@"basekey"];
          [v71 appendFormat:@"[%@{%@}]", v76, v78];
        }
      }

      v73 = [v72 countByEnumeratingWithState:&v103 objects:v116 count:16];
    }

    while (v73);
  }

  TYLog(@"Plane: %@, Gesture keys -> %@", v79, v80, v81, v82, v83, v84, v85, v92, v71);
  _Block_object_dispose(&v112, 8);

LABEL_53:

  return toCopy;
}

void *__73__TypistKeyboardDataInProcess_addKeyboardGestureKeys_keys_inPlane_addTo___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)addKeyboardPopupKeys:(id)keys keys:(id)a4 inPlane:(id)plane addTo:(id)to keyplaneKeycaps:(id)keycaps
{
  v129 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v11 = a4;
  planeCopy = plane;
  toCopy = to;
  keycapsCopy = keycaps;
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  keyplaneView = [activeInstance keyplaneView];
  factory = [keyplaneView factory];
  [factory dynamicInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  _layout = [activeInstance _layout];
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__4;
  v122 = __Block_byref_object_dispose__4;
  v123 = 0;
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 0;
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __87__TypistKeyboardDataInProcess_addKeyboardPopupKeys_keys_inPlane_addTo_keyplaneKeycaps___block_invoke;
  v109[3] = &unk_279DF4BC8;
  v112 = &v118;
  v81 = _layout;
  v110 = v81;
  v88 = planeCopy;
  v111 = v88;
  v113 = &v114;
  [TypistKeyboardUtilities runOnMainThread:v109];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v131) <= 1194.0)
  {
    v79 = 0;
  }

  else
  {
    v79 = *(v115 + 24) ^ 1;
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v11;
  v84 = [obj countByEnumeratingWithState:&v105 objects:v128 count:16];
  if (v84)
  {
    v83 = *v106;
    do
    {
      for (i = 0; i != v84; ++i)
      {
        if (*v106 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v91 = *(*(&v105 + 1) + 8 * i);
        representedString = [v91 representedString];
        string = [MEMORY[0x277CCAB68] string];
        if (![representedString length])
        {
          goto LABEL_37;
        }

        if ([v91 displayType] == 7)
        {
          secondaryRepresentedStrings = [v91 secondaryRepresentedStrings];
          if (![secondaryRepresentedStrings count])
          {
            goto LABEL_14;
          }

          isShiftKeyplane = [v119[5] isShiftKeyplane];

          if (isShiftKeyplane)
          {
            secondaryRepresentedStrings = [v91 secondaryRepresentedStrings];
            firstObject = [secondaryRepresentedStrings firstObject];

            representedString = firstObject;
LABEL_14:
          }
        }

        if ([self generatePopupKeySubtrees:keysCopy key:v91 plane:v119[5] layout:v81 keyplaneKeycaps:keycapsCopy])
        {
          v26 = [toCopy objectForKeyedSubscript:representedString];
          v27 = v26 == 0;

          if (!v27)
          {
            subtrees = [v91 subtrees];
            if ([subtrees count] == 1)
            {
              subtrees2 = [v91 subtrees];
              v30 = [subtrees2 objectAtIndexedSubscript:0];
              secondaryDisplayStrings = [v30 secondaryDisplayStrings];
              v32 = secondaryDisplayStrings != 0;

              if (v32 & v79)
              {
                goto LABEL_37;
              }
            }

            else
            {
            }

            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            subtrees3 = [v91 subtrees];
            v94 = [subtrees3 countByEnumeratingWithState:&v101 objects:v127 count:16];
            if (v94)
            {
              v93 = *v102;
              v90 = subtrees3;
              do
              {
                for (j = 0; j != v94; ++j)
                {
                  if (*v102 != v93)
                  {
                    objc_enumerationMutation(v90);
                  }

                  v35 = *(*(&v101 + 1) + 8 * j);
                  representedString2 = [v35 representedString];
                  if (([representedString2 isEqualToString:representedString] & 1) == 0)
                  {
                    [v35 frame];
                    UIRectGetCenter();
                    [self centerOfKey:? withOffset:?];
                    v38 = v37;
                    v40 = v39;
                    v126[0] = representedString2;
                    v125[0] = @"key";
                    v125[1] = @"keyname";
                    name = [v35 name];
                    v126[1] = name;
                    v126[2] = @"drag";
                    v125[2] = @"action";
                    v125[3] = @"x";
                    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v38];
                    v126[3] = v42;
                    v125[4] = @"y";
                    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v40];
                    v126[4] = v43;
                    v125[5] = @"rect";
                    v44 = MEMORY[0x277CCAE60];
                    [v35 frame];
                    v45 = [v44 valueWithCGRect:?];
                    v126[5] = v45;
                    v126[6] = @"popover";
                    v125[6] = @"type";
                    v125[7] = @"basekey";
                    v126[7] = representedString;
                    v126[8] = v88;
                    v125[8] = @"plane";
                    v125[9] = @"more-after";
                    cache = [v91 cache];
                    v47 = [cache objectForKey:@"more-after"];
                    v48 = v47;
                    v49 = &unk_2880299D0;
                    if (v47)
                    {
                      v49 = v47;
                    }

                    v126[9] = v49;
                    v125[10] = @"edgeInsets";
                    v50 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v14, v16, v18, v20}];
                    v126[10] = v50;
                    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:11];

                    v52 = [toCopy objectForKeyedSubscript:representedString2];
                    v53 = v52 == 0;

                    if (v53)
                    {
                      [toCopy setValue:v51 forKey:representedString2];
                      [string appendString:representedString2];
                    }

                    else
                    {
                      keyboardID = [keysCopy keyboardID];
                      v55 = [keyboardID hasPrefix:@"am"];

                      if (v55)
                      {
                        v56 = [@"‍" stringByAppendingString:representedString2];
                        [toCopy setValue:v51 forKey:v56];

                        v57 = [@"‍" stringByAppendingString:representedString2];
                        [string appendString:v57];
                      }
                    }
                  }
                }

                subtrees3 = v90;
                v94 = [v90 countByEnumeratingWithState:&v101 objects:v127 count:16];
              }

              while (v94);
            }
          }
        }

LABEL_37:
      }

      v84 = [obj countByEnumeratingWithState:&v105 objects:v128 count:16];
    }

    while (v84);
  }

  v96 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v58 = toCopy;
  v59 = [v58 countByEnumeratingWithState:&v97 objects:v124 count:16];
  if (v59)
  {
    v60 = *v98;
    do
    {
      for (k = 0; k != v59; ++k)
      {
        if (*v98 != v60)
        {
          objc_enumerationMutation(v58);
        }

        v62 = *(*(&v97 + 1) + 8 * k);
        v63 = [v58 objectForKeyedSubscript:v62];
        v64 = [v63 objectForKeyedSubscript:@"type"];
        v65 = [v64 isEqualToString:@"popover"];

        if (v65)
        {
          v66 = [v58 objectForKeyedSubscript:v62];
          v67 = [v66 objectForKeyedSubscript:@"basekey"];
          [v96 appendFormat:@"[%@{%@}]", v62, v67];
        }
      }

      v59 = [v58 countByEnumeratingWithState:&v97 objects:v124 count:16];
    }

    while (v59);
  }

  TYLog(@"Plane: %@, Popup keys -> %@", v68, v69, v70, v71, v72, v73, v74, v88, v96);
  _Block_object_dispose(&v114, 8);
  _Block_object_dispose(&v118, 8);

  return v58;
}

void *__87__TypistKeyboardDataInProcess_addKeyboardPopupKeys_keys_inPlane_addTo_keyplaneKeycaps___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyplaneNamed:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

+ (BOOL)generatePopupKeySubtrees:(id)subtrees key:(id)key plane:(id)plane layout:(id)layout keyplaneKeycaps:(id)keycaps
{
  subtreesCopy = subtrees;
  keyCopy = key;
  planeCopy = plane;
  layoutCopy = layout;
  keycapsCopy = keycaps;
  state = [keyCopy state];
  if (keyCopy && ([self downActionFlagsForKey:keyCopy plane:planeCopy keyplaneKeycaps:keycapsCopy] & 0x1000F8000) != 0)
  {
    [self showPopupVariantsForKey:subtreesCopy key:keyCopy plane:planeCopy keyplaneKeycaps:keycapsCopy];
  }

  subtrees = [keyCopy subtrees];
  if (subtrees)
  {
    state2 = [keyCopy state];

    if (state2 == 16)
    {
      selectedVariantIndex = [keyCopy selectedVariantIndex];
      subtrees = [keyCopy highlightedVariantsList];
      [keyCopy setSelectedVariantIndex:0];
      [keyCopy setHighlightedVariantsList:0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __89__TypistKeyboardDataInProcess_generatePopupKeySubtrees_key_plane_layout_keyplaneKeycaps___block_invoke;
      v23[3] = &unk_279DF4AB0;
      v21 = keyCopy;
      v24 = v21;
      v25 = layoutCopy;
      v26 = planeCopy;
      [TypistKeyboardUtilities runOnMainThread:v23];
      [v21 setSelectedVariantIndex:selectedVariantIndex];
      [v21 setHighlightedVariantsList:subtrees];

      LOBYTE(subtrees) = 1;
    }

    else
    {
      LOBYTE(subtrees) = 0;
    }
  }

  [keyCopy setState:state];

  return subtrees;
}

void __89__TypistKeyboardDataInProcess_generatePopupKeySubtrees_key_plane_layout_keyplaneKeycaps___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dynamicLayout];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v3 preparePopupVariantsForKey:v4 onKeyplane:v5];
  }

  else
  {
    v8 = [v3 currentKeyplaneView];
    v6 = [v8 factory];
    v7 = [v6 traitsForKey:*(a1 + 32) onKeyplane:*(a1 + 48)];
  }
}

+ (void)showPopupVariantsForKey:(id)key key:(id)a4 plane:(id)plane keyplaneKeycaps:(id)keycaps
{
  v120 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v10 = a4;
  planeCopy = plane;
  keycapsCopy = keycaps;
  v89 = v10;
  if (!v10 || [v10 state] == 16)
  {
    goto LABEL_93;
  }

  representedString = [v10 representedString];
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  v79 = UIKeyboardGetCurrentUILanguage();
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v85 = [self downActionFlagsForKey:v10 plane:planeCopy keyplaneKeycaps:keycapsCopy];
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke_2;
  v101[3] = &unk_279DF4BF0;
  v103 = &v114;
  v72 = activeInstance;
  v102 = v72;
  v104 = &v110;
  v105 = &v106;
  [TypistKeyboardUtilities runOnMainThread:v101];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v13 = *(v107 + 24);
  }

  else
  {
    v13 = 1;
  }

  v80 = v13;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v121) <= 1194.0)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(v107 + 24);
  }

  if ((v85 & 0x8000) != 0)
  {
    v17 = UIKeyboardGetCurrentInputMode();

    v18 = representedString;
    v19 = v18;
    if ((v85 & 0x80000) != 0)
    {
      componentName = [planeCopy componentName];
      v19 = [v18 stringByAppendingFormat:@"-%@", componentName];
    }

    if ([v89 displayType] == 7)
    {
      secondaryRepresentedStrings = [v89 secondaryRepresentedStrings];
      v22 = [secondaryRepresentedStrings count] == 0;

      if (!v22)
      {
        secondaryRepresentedStrings2 = [v89 secondaryRepresentedStrings];
        firstObject = [secondaryRepresentedStrings2 firstObject];
        v25 = [v19 stringByAppendingString:firstObject];

        v19 = v25;
      }
    }

    v26 = UIKeyboardRomanAccentVariants();
    if ((v15 & 1) == 0 && [v89 displayType] == 7 && objc_msgSend(v89, "interactionType") == 2 && objc_msgSend(v89, "variantType") != 3)
    {
      if (*(v115 + 24) == 1 && *(v111 + 24) != 1)
      {
        secondaryRepresentedStrings3 = [v89 secondaryRepresentedStrings];
        v64 = [secondaryRepresentedStrings3 objectAtIndex:0];
        v65 = v64;
        if (v64)
        {
          v66 = v64;
        }

        else
        {
          representedString2 = [v89 representedString];
          v66 = [representedString2 substringFromIndex:1];
        }

        if ((v85 & 0x80000) != 0)
        {
          componentName2 = [planeCopy componentName];
          v69 = [v18 stringByAppendingFormat:@"-%@", componentName2];

          v66 = v69;
        }

        v16 = UIKeyboardRomanAccentVariants();

        v26 = v66;
      }

      else
      {
        v16 = [self _variantsByAppendingDualStringKey:v89 toVariants:v26];
      }
    }

    else
    {
      v16 = v26;
    }
  }

  else
  {
    if (v85 & 0x40000) == 0 || (v115[3] & v15)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v19 = UIKeyboardCurrencyVariants();
    if (!((v19 != 0) | v15 & 1))
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      secondaryRepresentedStrings4 = [v10 secondaryRepresentedStrings];
      v56 = [secondaryRepresentedStrings4 countByEnumeratingWithState:&v97 objects:v119 count:16];
      if (v56)
      {
        v57 = *v98;
LABEL_69:
        v58 = 0;
        while (1)
        {
          if (*v98 != v57)
          {
            objc_enumerationMutation(secondaryRepresentedStrings4);
          }

          v19 = UIKeyboardCurrencyVariants();
          if (v19)
          {
            break;
          }

          if (v56 == ++v58)
          {
            v56 = [secondaryRepresentedStrings4 countByEnumeratingWithState:&v97 objects:v119 count:16];
            if (v56)
            {
              goto LABEL_69;
            }

            goto LABEL_75;
          }
        }
      }

      else
      {
LABEL_75:
        v19 = 0;
      }
    }

    if (v19)
    {
      v17 = v79;
      if (v15)
      {
LABEL_79:
        v16 = v19;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = UIKeyboardGetCurrentInputMode();

      v19 = UIKeyboardCurrencyVariants();
      if (v15)
      {
        goto LABEL_79;
      }
    }

    v16 = [self _variantsByAppendingDualStringKey:v89 toVariants:v19];
  }

LABEL_24:
  v79 = v17;
LABEL_25:
  v76 = [v16 objectForKey:*MEMORY[0x277D76C40]];
  v74 = [v16 objectForKey:*MEMORY[0x277D76C38]];
  v73 = v16;
  if (v16 && [v76 count])
  {
    v81 = [MEMORY[0x277CBEB18] arrayWithArray:v76];
    v83 = [MEMORY[0x277CBEB18] arrayWithArray:v74];
    v70 = [v16 objectForKey:*MEMORY[0x277D76C30]];
    if (v81 && v83 && v70)
    {
      v27 = [v70 isEqualToString:*MEMORY[0x277D6FFB8]];
      if (v27 & 1) != 0 || (v27 = [v70 isEqualToString:*MEMORY[0x277D6FFC0]], (v27) || (v27 = objc_msgSend(v70, "isEqualToString:", *MEMORY[0x277D6FFB0]), v27))
      {
        __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke(v27, v81);
        __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke(v28, v83);
      }

      v29 = [v81 count];
      if (v29 <= [v83 count])
      {
        v30 = v81;
      }

      else
      {
        v30 = v83;
      }

      v78 = [v30 count];
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke_3;
      v95[3] = &unk_279DF4650;
      v96 = v72;
      [TypistKeyboardUtilities runOnMainThread:v95];
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      representedString3 = [v89 representedString];
      if ([v89 displayType] == 7 && objc_msgSend(representedString, "length") >= 2)
      {
        v94 = [representedString characterAtIndex:0];
        v32 = [MEMORY[0x277CCACA8] stringWithCharacters:&v94 length:1];

        representedString3 = v32;
      }

      if (v78)
      {
        v33 = 0;
        v34 = 1;
        while (1)
        {
          v35 = [v83 objectAtIndex:v33];
          if (([planeCopy isShiftKeyplane] & 1) != 0 || !objc_msgSend(MEMORY[0x277D75698], "_showSmallDisplayKeyplane"))
          {
            v36 = [v35 uppercaseStringWithLocale:currentLocale];
          }

          else
          {
            v36 = [v35 lowercaseStringWithLocale:currentLocale];
          }

          v37 = v36;
          v38 = (v85 & 0x40000) != 0 ? v35 : v36;
          v39 = v38;
          displayString = [v89 displayString];
          if (([displayString isEqual:v39] & 1) != 0 || !objc_msgSend(keycapsCopy, "containsObject:", v37) || objc_msgSend(v89, "variantType") == 9)
          {
            break;
          }

          keyboardID = [keyCopy keyboardID];
          v54 = [keyboardID hasPrefix:@"am"];

          if (v54)
          {
            goto LABEL_53;
          }

LABEL_62:

          if (v78 == ++v33)
          {
            goto LABEL_81;
          }
        }

LABEL_53:
        v41 = [v81 objectAtIndex:v33];
        v42 = [v41 isEqual:representedString3];
        v43 = 2;
        if (!v42)
        {
          v43 = v34;
        }

        v82 = v43;
        if (v80 & 1 | ((v42 & 1) == 0))
        {
          v44 = [v89 copy];
          [v44 setRepresentedString:v41];
          [v44 setDisplayString:v35];
          [v44 setDisplayType:0];
          v45 = MEMORY[0x277CCACA8];
          name = [v89 name];
          representedString4 = [v44 representedString];
          v48 = [v45 stringWithFormat:@"%@/%@", name, representedString4];
          [v44 setName:v48];

          [v44 setOverrideDisplayString:0];
          v49 = [v35 length];
          v50 = array;
          if (v49 == 1)
          {
            v51 = [v35 characterAtIndex:0];
            v50 = array2;
            if (v51 != 170)
            {
              v52 = [v35 characterAtIndex:0];
              v50 = array;
              if (v52 == 186)
              {
                v50 = array2;
              }
            }
          }

          [v50 addObject:v44];

          v34 = v82;
        }

        goto LABEL_62;
      }

      v34 = 1;
LABEL_81:
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v59 = array2;
      v60 = [v59 countByEnumeratingWithState:&v90 objects:v118 count:16];
      if (v60)
      {
        v61 = *v91;
        do
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v91 != v61)
            {
              objc_enumerationMutation(v59);
            }

            [array addObject:*(*(&v90 + 1) + 8 * i)];
          }

          v60 = [v59 countByEnumeratingWithState:&v90 objects:v118 count:16];
        }

        while (v60);
      }

      if ([array count] >= v34)
      {
        [v89 updateVariantTypeForActions:v85];
        [v89 setVariantPopupBias:v70];
        [v89 setSubtrees:array];
        [v89 setState:16];
      }
    }
  }

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v114, 8);

LABEL_93:
}

void __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v2 = [v8 count];
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = v2 >> 1;
    v5 = v2 - 1;
    do
    {
      v6 = [v8 objectAtIndex:v3];
      v7 = [v8 objectAtIndex:v5];
      [v8 replaceObjectAtIndex:v3 withObject:v7];

      [v8 replaceObjectAtIndex:v5 withObject:v6];
      ++v3;
      --v5;
    }

    while (v4 != v3);
  }
}

void *__81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isShifted];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) isAutoShifted];
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void __81__TypistKeyboardDataInProcess_showPopupVariantsForKey_key_plane_keyplaneKeycaps___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) autocorrectPrompt];

  if (v2)
  {
    v3 = *(a1 + 32);

    [v3 removeAutocorrectPromptAndCandidateList];
  }
}

+ (unint64_t)downActionFlagsForKey:(id)key plane:(id)plane keyplaneKeycaps:(id)keycaps
{
  keyCopy = key;
  planeCopy = plane;
  keycapsCopy = keycaps;
  if (![keyCopy visible])
  {
    goto LABEL_63;
  }

  interactionType = [keyCopy interactionType];
  variantType = [keyCopy variantType];
  v13 = 5;
  if (interactionType == 15 || interactionType == 13)
  {
    goto LABEL_64;
  }

  if (interactionType == 4)
  {
    v13 = 69;
    goto LABEL_64;
  }

  if ((interactionType - 1) > 1)
  {
    if (interactionType > 9)
    {
      if (interactionType > 0x28)
      {
        goto LABEL_45;
      }

      if (((1 << interactionType) & 0x10000031000) != 0)
      {
        goto LABEL_28;
      }

      if (interactionType == 14)
      {
        v13 = 20;
        goto LABEL_64;
      }

      if (interactionType != 38)
      {
LABEL_45:
        if (interactionType == 10)
        {
          v13 = 536870916;
          goto LABEL_64;
        }

        if (interactionType == 11)
        {
          v13 = 36;
          goto LABEL_64;
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (interactionType > 6)
      {
        if (interactionType == 7)
        {
          v13 = 1048581;
          goto LABEL_64;
        }

        if (interactionType == 9)
        {
          v13 = 4229;
          goto LABEL_64;
        }

        goto LABEL_60;
      }

      if (interactionType != 3)
      {
        if (interactionType == 6)
        {
          if ([MEMORY[0x277D75678] rivenTranslationPreference])
          {
            v13 = 133;
          }

          else
          {
            v13 = 5;
          }

          goto LABEL_64;
        }

LABEL_60:
        if ((interactionType & 0xFFFFFFFE) != 0x14)
        {
          if ((interactionType - 24) <= 0xD)
          {
            v13 = qword_2701A44E8[interactionType - 24];
            goto LABEL_64;
          }

LABEL_63:
          v13 = 0;
          goto LABEL_64;
        }

LABEL_28:
        v13 = 5;
        goto LABEL_64;
      }
    }

    v13 = 128;
    goto LABEL_64;
  }

  v14 = variantType;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__TypistKeyboardDataInProcess_downActionFlagsForKey_plane_keyplaneKeycaps___block_invoke;
  v23[3] = &unk_279DF4710;
  v23[4] = &v24;
  [TypistKeyboardUtilities runOnMainThread:v23];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v28) <= 1194.0 || (v25[3] & 1) != 0 || [keyCopy displayType] != 7)
  {

    v13 = 5;
  }

  else
  {

    if (v14 == 3)
    {
      v13 = 5;
    }

    else
    {
      v13 = 32901;
    }
  }

  if (v14 > 6)
  {
    if (v14 <= 8)
    {
      if (v14 == 7)
      {
        v16 = 65664;
        goto LABEL_53;
      }

      v13 = 557189;
      goto LABEL_54;
    }

    if (v14 == 9)
    {
      v16 = 2155872261;
      goto LABEL_53;
    }

    if (v14 != 10)
    {
      goto LABEL_37;
    }

LABEL_41:
    v16 = 8421376;
    goto LABEL_53;
  }

  if (v14 > 3)
  {
    if (v14 == 4)
    {
      v16 = 131200;
      goto LABEL_53;
    }

    if (v14 != 5)
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (v14 != 1)
  {
    if (v14 == 3)
    {
      v16 = 262272;
LABEL_53:
      v13 |= v16;
      goto LABEL_54;
    }

LABEL_37:
    if ((v14 - 11) > 1)
    {
      if ([self keyHasAccentedVariants:keyCopy plane:planeCopy keyplaneKeycaps:keycapsCopy])
      {
        name = [keyCopy name];
        v22 = [name hasPrefix:@"Assist"];

        if ((v22 & 1) == 0)
        {
          v13 = 32901;
        }
      }

      goto LABEL_54;
    }

    v16 = 0x100000080;
    goto LABEL_53;
  }

  v13 = 32901;
LABEL_54:
  name2 = [keyCopy name];
  if ([name2 hasPrefix:@"NumberPad-"])
  {
    name3 = [keyCopy name];
    v19 = [name3 hasSuffix:@"-0-Plus"];

    if (v19)
    {
      v13 |= 0x80uLL;
    }
  }

  else
  {
  }

  _Block_object_dispose(&v24, 8);
LABEL_64:

  return v13;
}

void *__75__TypistKeyboardDataInProcess_downActionFlagsForKey_plane_keyplaneKeycaps___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D75678] isFloating];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)_variantsByAppendingDualStringKey:(id)key toVariants:(id)variants
{
  v31[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  variantsCopy = variants;
  if ([keyCopy displayType] == 7)
  {
    secondaryDisplayStrings = [keyCopy secondaryDisplayStrings];
    v9 = [secondaryDisplayStrings objectAtIndex:0];
    v10 = v9;
    if (v9)
    {
      v29 = v9;
    }

    else
    {
      displayString = [keyCopy displayString];
      v29 = [displayString substringFromIndex:1];
    }

    secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
    v13 = [secondaryRepresentedStrings objectAtIndex:0];
    v14 = v13;
    if (v13)
    {
      v28 = v13;
    }

    else
    {
      representedString = [keyCopy representedString];
      v28 = [representedString substringFromIndex:1];
    }

    v16 = *MEMORY[0x277D76C38];
    v17 = [variantsCopy objectForKey:*MEMORY[0x277D76C38]];
    v18 = *MEMORY[0x277D76C40];
    v19 = [variantsCopy objectForKey:*MEMORY[0x277D76C40]];
    v20 = *MEMORY[0x277D76C30];
    v21 = [variantsCopy objectForKey:*MEMORY[0x277D76C30]];
    v22 = [self appendingSecondaryStringToVariantsTop:v17 secondaryString:v29 withDirection:v21];

    v23 = [variantsCopy objectForKey:v20];
    v24 = [self appendingSecondaryStringToVariantsTop:v19 secondaryString:v28 withDirection:v23];

    v30[0] = v20;
    v25 = [variantsCopy objectForKey:v20];
    v31[0] = v25;
    v31[1] = v22;
    v30[1] = v16;
    v30[2] = v18;
    v31[2] = v24;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

    variantsCopy = v26;
  }

  return variantsCopy;
}

+ (id)appendingSecondaryStringToVariantsTop:(id)top secondaryString:(id)string withDirection:(id)direction
{
  stringCopy = string;
  directionCopy = direction;
  v9 = [top mutableCopy];
  v10 = [v9 indexOfObject:stringCopy];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 removeObjectAtIndex:v10];
  }

  if ([directionCopy isEqualToString:*MEMORY[0x277D6FFB8]])
  {
    [v9 addObject:stringCopy];
  }

  else
  {
    [v9 insertObject:stringCopy atIndex:0];
  }

  return v9;
}

+ (BOOL)keyHasAccentedVariants:(id)variants plane:(id)plane keyplaneKeycaps:(id)keycaps
{
  variantsCopy = variants;
  planeCopy = plane;
  keycapsCopy = keycaps;
  name = [variantsCopy name];
  v11 = [name hasPrefix:@"NumberPad"];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    representedString = [variantsCopy representedString];
    if ([variantsCopy variantType] == 8)
    {
      componentName = [planeCopy componentName];
      v17 = [representedString stringByAppendingFormat:@"-%@", componentName];

      representedString = v17;
    }

    if ([variantsCopy displayType] == 7)
    {
      secondaryRepresentedStrings = [variantsCopy secondaryRepresentedStrings];
      v19 = [secondaryRepresentedStrings count];

      if (v19)
      {
        secondaryRepresentedStrings2 = [variantsCopy secondaryRepresentedStrings];
        firstObject = [secondaryRepresentedStrings2 firstObject];
        v22 = [representedString stringByAppendingString:firstObject];

        representedString = v22;
      }
    }

    if (representedString && ([v13 containsObject:representedString] & 1) == 0)
    {
      [v13 addObject:representedString];
      v23 = UIKeyboardGetCurrentInputMode();
      v24 = UIKeyboardRomanAccentVariants();

      v25 = [v24 objectForKey:*MEMORY[0x277D76C40]];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __76__TypistKeyboardDataInProcess_keyHasAccentedVariants_plane_keyplaneKeycaps___block_invoke;
      v29[3] = &unk_279DF4C18;
      v30 = keycapsCopy;
      v26 = [v25 indexesOfObjectsPassingTest:v29];
      v27 = [v25 objectsAtIndexes:v26];

      if ([v27 count])
      {
        [v14 addObject:representedString];
      }
    }

    v12 = [v14 containsObject:representedString];
  }

  return v12;
}

+ (id)setOneHandedKeyboardHandBias:(id)bias
{
  biasCopy = bias;
  lowercaseString = [biasCopy lowercaseString];
  v5 = [lowercaseString isEqualToString:@"left"];

  if (v5)
  {
    v6 = @"Left";
  }

  else
  {
    lowercaseString2 = [biasCopy lowercaseString];
    v8 = [lowercaseString2 isEqualToString:@"right"];

    if (v8)
    {
      v6 = @"Right";
    }

    else
    {
      v6 = @"None";
    }
  }

  mEMORY[0x277D756A0] = [MEMORY[0x277D756A0] sharedPreferencesController];
  v10 = *MEMORY[0x277D6F7C8];
  v11 = [mEMORY[0x277D756A0] valueForPreferenceKey:*MEMORY[0x277D6F7C8]];

  TYLog(@"Changing HandBias for One-Handed Keyboard: Current=%@ ChangeTo=%@", v12, v13, v14, v15, v16, v17, v18, v11, v6);
  if ([v11 isEqualToString:v6])
  {
    TYLog(@"HandBias for One-Handed Keyboard is already set to %@", v19, v20, v21, v22, v23, v24, v25, v6, v43);
  }

  else
  {
    mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
    [mEMORY[0x277D6F470] updateKeyboardHandBias:v6];

    mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
    [mEMORY[0x277D6F470]2 synchronizePreferences];

    mEMORY[0x277D756A0]2 = [MEMORY[0x277D756A0] sharedPreferencesController];
    v6 = [mEMORY[0x277D756A0]2 valueForPreferenceKey:v10];

    v36 = &stru_288014100;
    if ([(__CFString *)v6 isEqualToString:v11])
    {
      v37 = 0.0;
      do
      {
        v38 = v6;
        [TypistKeyboardUtilities waitFor:0.2];
        mEMORY[0x277D6F470]3 = [MEMORY[0x277D6F470] sharedPreferencesController];
        [mEMORY[0x277D6F470]3 synchronizePreferences];

        mEMORY[0x277D756A0]3 = [MEMORY[0x277D756A0] sharedPreferencesController];
        v6 = [mEMORY[0x277D756A0]3 valueForPreferenceKey:v10];

        v37 = v37 + 0.2;
        if ([(__CFString *)v6 isEqualToString:v11])
        {
          v41 = v37 < 10.0;
        }

        else
        {
          v41 = 0;
        }
      }

      while (v41);
      if (v37 >= 10.0)
      {
        v36 = @"[Timeout...]";
      }
    }

    TYLog(@"HandBias for One-Handed Keyboard is changed to %@  %@", v29, v30, v31, v32, v33, v34, v35, v6, v36);
  }

  return v6;
}

+ (BOOL)_activeInputModesContainsInputMode:(id)mode
{
  v38 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__4;
  v35 = __Block_byref_object_dispose__4;
  v36 = 0;
  v4 = 10.0;
  do
  {
    [TypistKeyboardUtilities waitFor:0.2];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __66__TypistKeyboardDataInProcess__activeInputModesContainsInputMode___block_invoke;
    v30[3] = &unk_279DF4710;
    v30[4] = &v31;
    [TypistKeyboardUtilities runOnMainThread:v30];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = v32[5];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v6)
    {
      v7 = *v27;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v5);
          }

          identifier = [*(*(&v26 + 1) + 8 * i) identifier];
          v10 = [identifier isEqualToString:modeCopy];

          if (v10)
          {
            TYLog(@"Active input mode list now contains %@", v11, v12, v13, v14, v15, v16, v17, modeCopy);

            v24 = 1;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v4 = v4 + -0.2;
  }

  while (v4 > 0.0);
  TYLogl(OS_LOG_TYPE_ERROR, @"Timed out while waiting for activeInputMode to contain %@", v18, v19, v20, v21, v22, v23, modeCopy);
  v24 = 0;
LABEL_13:
  _Block_object_dispose(&v31, 8);

  return v24;
}

void __66__TypistKeyboardDataInProcess__activeInputModesContainsInputMode___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D75688] sharedInputModeController];
  v2 = [v5 activeInputModes];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (int)getWubiEnumeration:(id)enumeration
{
  v3 = getWubiEnumeration__wubiOnceToken;
  enumerationCopy = enumeration;
  if (v3 != -1)
  {
    +[TypistKeyboardDataInProcess getWubiEnumeration:];
  }

  v5 = [getWubiEnumeration__wubiDictionary valueForKey:enumerationCopy];

  intValue = [v5 intValue];
  return intValue;
}

void __50__TypistKeyboardDataInProcess_getWubiEnumeration___block_invoke()
{
  v0 = getWubiEnumeration__wubiDictionary;
  getWubiEnumeration__wubiDictionary = &unk_28802A618;
}

+ (int)getShuangpinEnumeration:(id)enumeration
{
  v3 = getShuangpinEnumeration__shuangpinOnceToken;
  enumerationCopy = enumeration;
  if (v3 != -1)
  {
    +[TypistKeyboardDataInProcess getShuangpinEnumeration:];
  }

  v5 = [getShuangpinEnumeration__shuangpinSchemaDictionary valueForKey:enumerationCopy];

  intValue = [v5 intValue];
  return intValue;
}

void __55__TypistKeyboardDataInProcess_getShuangpinEnumeration___block_invoke()
{
  v0 = getShuangpinEnumeration__shuangpinSchemaDictionary;
  getShuangpinEnumeration__shuangpinSchemaDictionary = &unk_28802A640;
}

+ (BOOL)shouldShowDictationKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TypistKeyboardDataInProcess_shouldShowDictationKey__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __53__TypistKeyboardDataInProcess_shouldShowDictationKey__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75678] activeInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 shouldShowDictationKey];
}

+ (BOOL)shouldShowGlobeKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__TypistKeyboardDataInProcess_shouldShowGlobeKey__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __49__TypistKeyboardDataInProcess_shouldShowGlobeKey__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75678] activeInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 shouldShowInternationalKey];
}

+ (id)getRepresentedStringFromKey:(id)key
{
  keyCopy = key;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__TypistKeyboardDataInProcess_getRepresentedStringFromKey___block_invoke;
  v7[3] = &unk_279DF4B78;
  v9 = &v10;
  v4 = keyCopy;
  v8 = v4;
  [TypistKeyboardUtilities runOnMainThread:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __59__TypistKeyboardDataInProcess_getRepresentedStringFromKey___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277D75678] activeInstance];
  v2 = [v7 _layout];
  v3 = [v2 baseKeyForString:*(a1 + 32)];
  v4 = [v3 representedString];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (CGPoint)floatingKeyboardDraggablePoint
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_2701AD026;
  v11 = *MEMORY[0x277CBF348];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__TypistKeyboardDataInProcess_floatingKeyboardDraggablePoint__block_invoke;
  v6[3] = &unk_279DF4710;
  v6[4] = &v7;
  [TypistKeyboardUtilities runOnMainThread:v6];
  v2 = v8[4];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

void __61__TypistKeyboardDataInProcess_floatingKeyboardDraggablePoint__block_invoke(uint64_t a1)
{
  v15 = [MEMORY[0x277D75678] activeInstance];
  v2 = [MEMORY[0x277D75658] activeKeyboard];
  [v2 _floatingKeyboardDraggableRect];
  UIRectGetCenter();
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [v7 delegate];
  v9 = [v8 window];
  v10 = [v9 rootViewController];
  v11 = [v10 view];
  [v15 convertPoint:v11 toView:{v4, v6}];
  v12 = *(*(a1 + 32) + 8);
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
}

+ (BOOL)isCandidateCellVisible:(id)visible
{
  visibleCopy = visible;
  if (visibleCopy)
  {
    NSClassFromString(&cfstr_Uikeyboardcand_0.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Uikeyboardcand_1.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Tuicandidatece.isa), (objc_opt_isKindOfClass()))
    {
      LODWORD(self) = [visibleCopy isHidden] ^ 1;
    }

    else
    {
      superview = [visibleCopy superview];
      LOBYTE(self) = [self isCandidateCellVisible:superview];
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end