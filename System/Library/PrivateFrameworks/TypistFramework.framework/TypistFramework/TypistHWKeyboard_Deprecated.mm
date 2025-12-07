@interface TypistHWKeyboard_Deprecated
+ (id)_determineAppropriatePropertyDictionaryForHWModelStr:(id)str;
+ (id)_getModifierMaskMap;
+ (id)keyboardCountryCodes;
+ (id)modifierCharMap;
+ (unsigned)_convertCountryCodeToHIDKeyboardType:(unsigned __int8)type;
+ (unsigned)_convertGSKeyboardTypeToIOHIDKeyboardType:(unsigned __int8)type;
+ (unsigned)_convertHIDKeyboardTypeToGSKeyboardType:(unsigned int)type;
- (TypistHWKeyboard_Deprecated)initWithCountryCode:(id)code;
- (TypistHWKeyboard_Deprecated)initWithCountryCode:(id)code andPropertyDictionaryAtPath:(id)path;
- (id)generateKeystrokeStream:(id)stream;
- (id)generateKeystrokeStream:(id)stream position:(int *)position;
- (void)_insertKey:(unsigned __int16)key gsKeyInfo:(id *)info;
- (void)_setupCharacterToKeycodeMap;
- (void)detach:(id)detach;
- (void)pressAndHoldKey:(id)key completion:(id)completion;
- (void)releaseKeyPressWithCompletion:(id)completion;
- (void)typeKeyStrokeStream:(id)stream;
- (void)typeString:(id)string completion:(id)completion;
@end

@implementation TypistHWKeyboard_Deprecated

- (TypistHWKeyboard_Deprecated)initWithCountryCode:(id)code andPropertyDictionaryAtPath:(id)path
{
  codeCopy = code;
  pathCopy = path;
  if (pathCopy)
  {
    [(TypistHWKeyboard_Deprecated *)self setEmulatedModel:pathCopy];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 pathForResource:pathCopy ofType:@"plist"];

    v10 = MEMORY[0x277CBEB38];
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v9];
    v12 = [v10 dictionaryWithDictionary:v11];

    [v12 setValue:codeCopy forKey:@"CountryCode"];
    v13 = IOHIDUserDeviceCreate();
    v14 = +[TypistHWKeyboard_Deprecated _convertCountryCodeToHIDKeyboardType:](TypistHWKeyboard_Deprecated, "_convertCountryCodeToHIDKeyboardType:", [codeCopy unsignedIntValue]);
    v15 = [TypistHWKeyboard_Deprecated _convertHIDKeyboardTypeToGSKeyboardType:v14];
    [(TypistHWKeyboard_Deprecated *)self setHidKeyboardType:v14];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __79__TypistHWKeyboard_Deprecated_initWithCountryCode_andPropertyDictionaryAtPath___block_invoke;
    v29[3] = &unk_279DF4710;
    v29[4] = &v30;
    [TypistKeyboardUtilities runOnMainThread:v29];
    TYLog(@"HWKeyboardEumlator: Layout: %@, keyboardType: %u", v16, v17, v18, v19, v20, v21, v22, v31[3], v15);
    [(TypistHWKeyboard_Deprecated *)self setEmulatedKeyboard:v13];
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TypistHWKeyboard_Deprecated *)self setCharacterToKeycodeMap:v23];

    [(TypistHWKeyboard_Deprecated *)self setHardwareKeyboard:GSKeyboardCreate()];
    [(TypistHWKeyboard_Deprecated *)self setKeyboardCountryCode:codeCopy];
    v24 = dispatch_group_create();
    [(TypistHWKeyboard_Deprecated *)self setGroup:v24];

    v25 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v26 = dispatch_queue_create("TypistHWKeyboard.queue", v25);
    dispatch_async(v26, &__block_literal_global_7);

    [(TypistHWKeyboard_Deprecated *)self setTypistHWKeyboardQueue:v26];
    [(TypistHWKeyboard_Deprecated *)self _setupCharacterToKeycodeMap];
    [codeCopy unsignedIntValue];
    GSEventSetHardwareKeyboardAttachedWithCountryCodeAndType();
    [(TypistHWKeyboard_Deprecated *)self emulatedKeyboard];
    CFRunLoopGetMain();
    IOHIDUserDeviceScheduleWithRunLoop();
    [(TypistHWKeyboard_Deprecated *)self setTypeInterval:0.02];
    selfCopy = self;
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TypistHWKeyboard_Deprecated)initWithCountryCode:(id)code
{
  codeCopy = code;
  v5 = [TypistKeyboardUtilities getMobileGestalt:@"HWModelStr"];
  v6 = [TypistHWKeyboard_Deprecated _determineAppropriatePropertyDictionaryForHWModelStr:v5];

  v7 = [(TypistHWKeyboard_Deprecated *)self initWithCountryCode:codeCopy andPropertyDictionaryAtPath:v6];
  return v7;
}

- (void)detach:(id)detach
{
  detachCopy = detach;
  group = [(TypistHWKeyboard_Deprecated *)self group];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__TypistHWKeyboard_Deprecated_detach___block_invoke;
  v7[3] = &unk_279DF4CF8;
  v7[4] = self;
  v8 = detachCopy;
  v6 = detachCopy;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], v7);
}

+ (id)_determineAppropriatePropertyDictionaryForHWModelStr:(id)str
{
  strCopy = str;
  if ([strCopy caseInsensitiveCompare:@"J207"] && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J208") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J217") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J218"))
  {
    if ([strCopy caseInsensitiveCompare:@"J98A"] && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J99A") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J120") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J121"))
    {
      if ([strCopy caseInsensitiveCompare:@"J127"] && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J128") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J210") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J211") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J96") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J97"))
      {
        if ([strCopy caseInsensitiveCompare:@"J317"] && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J318") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J317x") && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J318x"))
        {
          if ([strCopy caseInsensitiveCompare:@"J320"] && objc_msgSend(strCopy, "caseInsensitiveCompare:", @"J321"))
          {
            v4 = 0;
          }

          else
          {
            v4 = @"R98";
          }
        }

        else
        {
          v4 = @"R88";
        }
      }

      else
      {
        v4 = @"B259";
      }
    }

    else
    {
      v4 = @"B249";
    }
  }

  else
  {
    v4 = @"R119";
  }

  return v4;
}

+ (unsigned)_convertGSKeyboardTypeToIOHIDKeyboardType:(unsigned __int8)type
{
  if (type == 202)
  {
    typeCopy = 0;
  }

  else
  {
    typeCopy = type;
  }

  if (type == 203)
  {
    v4 = 1;
  }

  else
  {
    v4 = typeCopy;
  }

  if (type == 207)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

+ (unsigned)_convertHIDKeyboardTypeToGSKeyboardType:(unsigned int)type
{
  v3 = 0xCFCBCAu >> (8 * type);
  if (type >= 3)
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (id)modifierCharMap
{
  if (modifierCharMap_onceToken != -1)
  {
    +[TypistHWKeyboard_Deprecated modifierCharMap];
  }

  v3 = modifierCharMap_modifierCharMap;

  return v3;
}

- (void)_insertKey:(unsigned __int16)key gsKeyInfo:(id *)info
{
  keyCopy = key;
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0;
  [(TypistHWKeyboard_Deprecated *)self hardwareKeyboard];
  GSKeyboardTranslateKeyExtended();
  [(TypistHWKeyboard_Deprecated *)self hardwareKeyboard:&v30];
  GSKeyboardTranslateKeyExtended();
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{info->var5, &v30, v35, &info->var8, info->var9}];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:info->var7];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v35];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:info->var9];
  TYLog(@"keyCode: %#x, characters: %@, unmodifiedCharacters: %@, shiftModifiedCharacters: %@, markedCharacters: %@ \n", v11, v12, v13, v14, v15, v16, v17, keyCopy, v7, v8, v9, v10);

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:info->var7];

  if (v18)
  {
    characterToKeycodeMap = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
    v33[0] = @"keyCode";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:keyCopy];
    v33[1] = @"modifier";
    v34[0] = v20;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v34[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:info->var7];
    [characterToKeycodeMap setObject:v22 forKey:v23];
  }

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:v35];

  if (v24)
  {
    characterToKeycodeMap2 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
    v31[0] = @"keyCode";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:keyCopy];
    v31[1] = @"modifier";
    v32[0] = v26;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:2];
    v32[1] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:v35];
    [characterToKeycodeMap2 setObject:v28 forKey:v29];
  }
}

- (void)_setupCharacterToKeycodeMap
{
  v65[2] = *MEMORY[0x277D85DE8];
  v43 = malloc_type_calloc(1uLL, 0xA2uLL, 0x10000402B2F1F51uLL);
  v3 = 4;
  while (v3 <= 0x2Au)
  {
    if (v3 == 40)
    {
      characterToKeycodeMap = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
      v60[0] = @"keyCode";
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:40];
      v60[1] = @"modifier";
      v61[0] = v5;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
      v61[1] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
      v8 = characterToKeycodeMap;
      v9 = v7;
      v10 = @"⏎";
      goto LABEL_13;
    }

    if (v3 != 41)
    {
      if (v3 != 42)
      {
        goto LABEL_17;
      }

      characterToKeycodeMap = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
      v62[0] = @"keyCode";
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:42];
      v62[1] = @"modifier";
      v63[0] = v5;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
      v63[1] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
      v8 = characterToKeycodeMap;
      v9 = v7;
      v10 = @"⌫";
      goto LABEL_13;
    }

    characterToKeycodeMap2 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
    v64[0] = @"keyCode";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:41];
    v64[1] = @"modifier";
    v65[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v65[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
    [characterToKeycodeMap2 setObject:v14 forKey:@"␛"];

LABEL_14:
    v15 = v3++;
    if (v15 >= 0x39)
    {
      goto LABEL_19;
    }
  }

  if (v3 == 43)
  {
    characterToKeycodeMap = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
    v58[0] = @"keyCode";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:43];
    v58[1] = @"modifier";
    v59[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v59[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    v8 = characterToKeycodeMap;
    v9 = v7;
    v10 = @"⇥";
    goto LABEL_13;
  }

  if (v3 == 44)
  {
    characterToKeycodeMap = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
    v54[0] = @"keyCode";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:44];
    v54[1] = @"modifier";
    v55[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v55[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
    v8 = characterToKeycodeMap;
    v9 = v7;
    v10 = @" ";
LABEL_13:
    [v8 setObject:v9 forKey:v10];

    goto LABEL_14;
  }

  if (v3 != 57)
  {
LABEL_17:
    [(TypistHWKeyboard_Deprecated *)self _insertKey:v3 gsKeyInfo:v43];
    goto LABEL_14;
  }

  characterToKeycodeMap3 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v56[0] = @"keyCode";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:57];
  v56[1] = @"modifier";
  v57[0] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v57[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  [characterToKeycodeMap3 setObject:v19 forKey:@"⇪"];

LABEL_19:
  if ([(TypistHWKeyboard_Deprecated *)self hidKeyboardType]== 2)
  {
    v20 = v43;
    [(TypistHWKeyboard_Deprecated *)self _insertKey:135 gsKeyInfo:v43];
    v21 = 137;
    goto LABEL_23;
  }

  v20 = v43;
  if ([(TypistHWKeyboard_Deprecated *)self hidKeyboardType]== 1)
  {
    v21 = 100;
LABEL_23:
    [(TypistHWKeyboard_Deprecated *)self _insertKey:v21 gsKeyInfo:v20];
  }

  characterToKeycodeMap4 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v52[0] = @"keyCode";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:79];
  v52[1] = @"modifier";
  v53[0] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v53[1] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  [characterToKeycodeMap4 setObject:v25 forKey:@"→"];

  characterToKeycodeMap5 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v50[0] = @"keyCode";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:80];
  v50[1] = @"modifier";
  v51[0] = v27;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v51[1] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  [characterToKeycodeMap5 setObject:v29 forKey:@"←"];

  characterToKeycodeMap6 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v48[0] = @"keyCode";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:81];
  v48[1] = @"modifier";
  v49[0] = v31;
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v49[1] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [characterToKeycodeMap6 setObject:v33 forKey:@"↓"];

  characterToKeycodeMap7 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v46[0] = @"keyCode";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:82];
  v46[1] = @"modifier";
  v47[0] = v35;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v47[1] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  [characterToKeycodeMap7 setObject:v37 forKey:@"↑"];

  characterToKeycodeMap8 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
  v44[0] = @"keyCode";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v45[0] = v39;
  v44[1] = @"modifier";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v45[1] = v40;
  v44[2] = @"globeKey";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:2];
  v45[2] = v41;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
  [characterToKeycodeMap8 setObject:v42 forKey:@"⌨"];

  free(v20);
}

- (id)generateKeystrokeStream:(id)stream position:(int *)position
{
  v58[1] = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v7 = *position;
  if ([streamCopy length] <= v7)
  {
    v56[0] = @"keyCode";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v56[1] = @"modifier";
    v57[0] = v8;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    v57[1] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v58[0] = v14;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
  }

  else
  {
    v8 = +[TypistHWKeyboard_Deprecated modifierCharMap];
    v48 = [streamCopy characterAtIndex:*position];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [MEMORY[0x277CCACA8] stringWithCharacters:&v48 length:1];
    v11 = [v8 objectForKey:v10];

    if (v11)
    {
      v40 = v9;
      ++*position;
      v12 = [(TypistHWKeyboard_Deprecated *)self generateKeystrokeStream:streamCopy position:position];
      unsignedShortValue = [v11 unsignedShortValue];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (v15)
      {
        v16 = v15;
        v42 = v11;
        v37 = v8;
        v38 = streamCopy;
        v17 = 0;
        v18 = *v45;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v45 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v44 + 1) + 8 * i);
            v21 = [v20 objectForKey:{@"keyCode", v37}];
            v17 |= [v21 unsignedShortValue];

            v22 = [v20 objectForKey:@"modifier"];
            unsignedShortValue |= [v22 unsignedShortValue];
          }

          v16 = [v14 countByEnumeratingWithState:&v44 objects:v55 count:16];
        }

        while (v16);
        v8 = v37;
        streamCopy = v38;
        v11 = v42;
      }

      else
      {
        LOWORD(v17) = 0;
      }

      v53[0] = @"keyCode";
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
      v53[1] = @"modifier";
      v54[0] = v25;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:unsignedShortValue];
      v54[1] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
      v9 = v40;
    }

    else
    {
      characterToKeycodeMap = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
      v24 = [MEMORY[0x277CCACA8] stringWithCharacters:&v48 length:1];
      v14 = [characterToKeycodeMap objectForKey:v24];

      if (v14)
      {
        [v9 addObject:v14];
      }

      else
      {
        v43 = [MEMORY[0x277CCACA8] stringWithCharacters:&v48 length:1];
        [(TypistHWKeyboard_Deprecated *)self hardwareKeyboard];
        GSKeyboardHWKeyboardNormalizeInput();
        characterToKeycodeMap2 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
        v41 = [characterToKeycodeMap2 objectForKey:v43];

        v51[0] = @"keyCode";
        v39 = [v41 objectForKey:?];
        v51[1] = @"modifier";
        v52[0] = v39;
        v29 = +[TypistHWKeyboard_Deprecated _getModifierMaskMap];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
        [v29 objectForKey:v30];
        v32 = v31 = v8;
        v52[1] = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];

        v8 = v31;
        characterToKeycodeMap3 = [(TypistHWKeyboard_Deprecated *)self characterToKeycodeMap];
        v35 = [MEMORY[0x277CCACA8] stringWithCharacters:&v48 length:1];
        [characterToKeycodeMap3 setObject:v33 forKey:v35];

        [v9 addObject:v33];
      }

      v49[0] = @"keyCode";
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
      v49[1] = @"modifier";
      v50[0] = v25;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
      v50[1] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
      v11 = 0;
    }

    [v9 addObject:v27];
  }

  return v9;
}

- (id)generateKeystrokeStream:(id)stream
{
  v4 = [stream stringByReplacingOccurrencesOfString:@"\t" withString:@"⇥"];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"⏎"];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0;
  if ([v5 length])
  {
    do
    {
      v7 = [(TypistHWKeyboard_Deprecated *)self generateKeystrokeStream:v5 position:&v11];
      [v6 addObjectsFromArray:v7];
      v8 = [v7 count];
      v11 = v8 + v11 - 1;

      v9 = v11;
    }

    while ([v5 length] > v9);
  }

  return v6;
}

- (void)typeKeyStrokeStream:(id)stream
{
  v31 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = stream;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 objectForKey:@"modifier"];
        unsignedShortValue = [v9 unsignedShortValue];

        v11 = [v8 objectForKey:@"keyCode"];
        unsignedShortValue2 = [v11 unsignedShortValue];

        v13 = [v8 objectForKey:@"globeKey"];
        if (v13)
        {
          v14 = [v8 objectForKey:@"globeKey"];
          unsignedShortValue3 = [v14 unsignedShortValue];
        }

        else
        {
          unsignedShortValue3 = 0;
        }

        v16 = MEMORY[0x277CCACC8];
        [(TypistHWKeyboard_Deprecated *)self typeInterval];
        [v16 sleepForTimeInterval:?];
        v23 = 1;
        v24 = unsignedShortValue;
        v25 = 0;
        v26 = unsignedShortValue2;
        v27 = 0;
        v28 = 0;
        v29 = unsignedShortValue3;
        [(TypistHWKeyboard_Deprecated *)self emulatedKeyboard];
        IOHIDUserDeviceHandleReport();
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v5);
  }

  v17 = MEMORY[0x277CCACC8];
  [(TypistHWKeyboard_Deprecated *)self typeInterval];
  [v17 sleepForTimeInterval:?];
}

- (void)typeString:(id)string completion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
  group = [(TypistHWKeyboard_Deprecated *)self group];
  typistHWKeyboardQueue = [(TypistHWKeyboard_Deprecated *)self TypistHWKeyboardQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TypistHWKeyboard_Deprecated_typeString_completion___block_invoke;
  block[3] = &unk_279DF4D20;
  v13 = stringCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = stringCopy;
  dispatch_group_async(group, typistHWKeyboardQueue, block);
}

- (void)pressAndHoldKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  group = [(TypistHWKeyboard_Deprecated *)self group];
  typistHWKeyboardQueue = [(TypistHWKeyboard_Deprecated *)self TypistHWKeyboardQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TypistHWKeyboard_Deprecated_pressAndHoldKey_completion___block_invoke;
  block[3] = &unk_279DF4D20;
  v13 = keyCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = keyCopy;
  dispatch_group_async(group, typistHWKeyboardQueue, block);
}

- (void)releaseKeyPressWithCompletion:(id)completion
{
  completionCopy = completion;
  group = [(TypistHWKeyboard_Deprecated *)self group];
  typistHWKeyboardQueue = [(TypistHWKeyboard_Deprecated *)self TypistHWKeyboardQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__TypistHWKeyboard_Deprecated_releaseKeyPressWithCompletion___block_invoke;
  v8[3] = &unk_279DF4CF8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_group_async(group, typistHWKeyboardQueue, v8);
}

+ (id)_getModifierMaskMap
{
  v39[16] = *MEMORY[0x277D85DE8];
  v25 = MEMORY[0x277CBEB38];
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v38[0] = v37;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
  v39[0] = v36;
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x20000];
  v38[1] = v35;
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:2];
  v39[1] = v34;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x80000];
  v38[2] = v33;
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:4];
  v39[2] = v32;
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x100000];
  v38[3] = v31;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1];
  v39[3] = v30;
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x10000];
  v38[4] = v29;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:8];
  v39[4] = v28;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:655360];
  v38[5] = v27;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:6];
  v39[5] = v24;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1179648];
  v38[6] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:3];
  v39[6] = v22;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:196608];
  v38[7] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:10];
  v39[7] = v20;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1572864];
  v38[8] = v19;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:5];
  v39[8] = v18;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:589824];
  v38[9] = v17;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:12];
  v39[9] = v16;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1114112];
  v38[10] = v15;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:9];
  v39[10] = v14;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1703936];
  v38[11] = v13;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:7];
  v39[11] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:720896];
  v38[12] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:14];
  v39[12] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1245184];
  v38[13] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:11];
  v39[13] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1638400];
  v38[14] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:13];
  v39[14] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1769472];
  v38[15] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:15];
  v39[15] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:16];
  v26 = [v25 dictionaryWithDictionary:v11];

  return v26;
}

+ (id)keyboardCountryCodes
{
  if (keyboardCountryCodes_onceToken != -1)
  {
    +[TypistHWKeyboard_Deprecated keyboardCountryCodes];
  }

  v3 = keyboardCountryCodes_keyboardCountryCodes;

  return v3;
}

+ (unsigned)_convertCountryCodeToHIDKeyboardType:(unsigned __int8)type
{
  if (type > 29)
  {
    return type != 30 && type != 33;
  }

  if (type != 15)
  {
    return type != 16;
  }

  return 2;
}

@end