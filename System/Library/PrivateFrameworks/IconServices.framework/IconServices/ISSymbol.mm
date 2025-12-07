@interface ISSymbol
+ (id)_generateVariantKeyFromOptions:(unint64_t)options;
+ (id)symbolForType:(id)type;
+ (id)symbolForTypeIdentifier:(id)identifier withResolutionStrategy:(int64_t)strategy variantOptions:(unint64_t)options error:(id *)error;
+ (id)symbolForURL:(id)l;
@end

@implementation ISSymbol

+ (id)symbolForURL:(id)l
{
  lCopy = l;
  if ([lCopy __is_isApplication])
  {
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithURL:lCopy allowPlaceholder:1 error:0];
  }

  else
  {
    if (![lCopy __is_isAppExtension])
    {
      v5 = 0;
      goto LABEL_10;
    }

    v4 = [objc_alloc(MEMORY[0x1E69635D0]) initWithURL:lCopy error:0];
  }

  v5 = v4;
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      iconDictionary = [v5 iconDictionary];
      __is_typeIdentifier = [iconDictionary _IF_stringForKey:0x1F1A4F300];

      if (__is_typeIdentifier)
      {
        v8 = [v5 URL];
        v9 = [(IFSymbol *)[ISSymbol alloc] initWithSymbolName:__is_typeIdentifier bundleURL:v8];

        goto LABEL_11;
      }
    }
  }

LABEL_10:
  __is_typeIdentifier = [lCopy __is_typeIdentifier];
  v9 = [ISSymbol symbolForType:__is_typeIdentifier];
LABEL_11:

  return v9;
}

+ (id)symbolForType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    typeCopy = *MEMORY[0x1E6963800];
  }

  v10 = 0;
  v5 = [self symbolForTypeIdentifier:typeCopy withResolutionStrategy:0 variantOptions:1 error:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5)
  {
    v8 = _ISDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ISSymbol *)typeCopy symbolForType:v7, v8];
    }

    v5 = [(IFSymbol *)[ISSymbol alloc] initWithSymbolName:@"questionmark.square" bundleURL:0];
  }

  return v5;
}

+ (id)symbolForTypeIdentifier:(id)identifier withResolutionStrategy:(int64_t)strategy variantOptions:(unint64_t)options error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v11 = [self _generateVariantKeyFromOptions:options];
    v12 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:identifierCopy];
    v13 = v12;
    v14 = 0;
    if (strategy <= 1)
    {
      if (!strategy)
      {
        v15 = [v12 _IS_symbolProvidingRecordWithVariantKey:v11 allowNonVariantMatch:0];
        goto LABEL_20;
      }

      if (strategy != 1)
      {
        goto LABEL_26;
      }

      v18 = [v12 _IS_symbolProvidingRecordWithVariantKey:v11 allowNonVariantMatch:0 preferHeroOverBaseSymbol:1];
      v14 = v18;
      if (v11)
      {
        goto LABEL_21;
      }

      _IS_symbolHeroName = [v18 _IS_symbolHeroName];
      if (!_IS_symbolHeroName)
      {
LABEL_22:
        _IS_symbolName = [v14 _IS_symbolName];
LABEL_23:
        v21 = _IS_symbolName;
        if (_IS_symbolName)
        {
          goto LABEL_24;
        }

LABEL_26:
        if (!error)
        {
          v17 = 0;
          goto LABEL_31;
        }

        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to find symbol using type id: %@. Options: %lu, strategy: %ld", identifierCopy, options, strategy, *MEMORY[0x1E696A578]];
        v27 = v24;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.iconServices.symbol-error" code:-1 userInfo:v21];
        *error = v17 = 0;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }
    }

    else
    {
      switch(strategy)
      {
        case 2:
          v20 = [v12 _IS_symbolProvidingRecordWithVariantKey:v11 allowNonVariantMatch:1];
          break;
        case 4:
          v20 = v12;
          break;
        case 3:
          v15 = v12;
LABEL_20:
          v14 = v15;
          if (v11)
          {
LABEL_21:
            _IS_symbolName = [v14 _IS_symbolNameForVariantKey:v11];
            goto LABEL_23;
          }

          goto LABEL_22;
        default:
          goto LABEL_26;
      }

      v14 = v20;
      _IS_symbolHeroName = [v20 _IS_symbolNameForVariantKey:v11];
      if (!_IS_symbolHeroName)
      {
        goto LABEL_22;
      }
    }

    v21 = _IS_symbolHeroName;
LABEL_24:
    if ([v14 isCoreType])
    {
      iconResourceBundleURL = 0;
    }

    else
    {
      iconResourceBundleURL = [v14 iconResourceBundleURL];
    }

    v17 = [(IFSymbol *)[ISSymbol alloc] initWithSymbolName:v21 bundleURL:iconResourceBundleURL];

    goto LABEL_30;
  }

  if (!error)
  {
    v17 = 0;
    goto LABEL_33;
  }

  v28 = *MEMORY[0x1E696A578];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid type id"];
  v29[0] = v16;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

  [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.iconServices.symbol-error" code:-2 userInfo:v11];
  *error = v17 = 0;
LABEL_32:

LABEL_33:

  return v17;
}

+ (id)_generateVariantKeyFromOptions:(unint64_t)options
{
  v20 = *MEMORY[0x1E69E9840];
  if (options)
  {
    v12 = 0;
  }

  else
  {
    if (_generateVariantKeyFromOptions__onceToken != -1)
    {
      +[ISSymbol _generateVariantKeyFromOptions:];
    }

    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = _generateVariantKeyFromOptions__orderedOptions;
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
          if (([v10 unsignedIntegerValue] & options) != 0)
          {
            v11 = [_generateVariantKeyFromOptions__optionsToKeyPieces objectForKeyedSubscript:v10];
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v12 = [v4 componentsJoinedByString:@"."];
    }

    else
    {
      v13 = _ISDefaultLog(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ISSymbol _generateVariantKeyFromOptions:v13];
      }

      v12 = 0;
    }
  }

  return v12;
}

void __43__ISSymbol__generateVariantKeyFromOptions___block_invoke()
{
  v6[33] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F1A65340;
  v5[1] = &unk_1F1A65358;
  v6[0] = @"fill";
  v6[1] = @"landscape";
  v5[2] = &unk_1F1A65370;
  v5[3] = &unk_1F1A65388;
  v6[2] = @"slash";
  v6[3] = @"radio_leftright";
  v5[4] = &unk_1F1A653A0;
  v5[5] = &unk_1F1A653B8;
  v6[4] = @"apps";
  v6[5] = @"righttoleft";
  v5[6] = &unk_1F1A653D0;
  v5[7] = &unk_1F1A653E8;
  v6[6] = @"badge_play";
  v6[7] = @"badge_plus";
  v5[8] = &unk_1F1A65400;
  v5[9] = &unk_1F1A65418;
  v6[8] = @"badge_minus";
  v6[9] = @"badge_checkmark";
  v5[10] = &unk_1F1A65430;
  v5[11] = &unk_1F1A65448;
  v6[10] = @"badge_xmark";
  v6[11] = @"badge_questionmark";
  v5[12] = &unk_1F1A65460;
  v5[13] = &unk_1F1A65478;
  v6[12] = @"badge_exclamationmark";
  v6[13] = @"arrow_forward";
  v5[14] = &unk_1F1A65490;
  v5[15] = &unk_1F1A654A8;
  v6[14] = @"arrow_turnupforward";
  v6[15] = @"lock_locked";
  v5[16] = &unk_1F1A654C0;
  v5[17] = &unk_1F1A654D8;
  v6[16] = @"lock_unlocked";
  v6[17] = @"camerarear";
  v5[18] = &unk_1F1A654F0;
  v5[19] = &unk_1F1A65508;
  v6[18] = @"sideright";
  v6[19] = @"exclamationmark";
  v5[20] = &unk_1F1A65520;
  v5[21] = &unk_1F1A65538;
  v6[20] = @"figurerun";
  v6[21] = @"watchface";
  v5[22] = &unk_1F1A65550;
  v5[23] = &unk_1F1A65568;
  v6[22] = @"left";
  v6[23] = @"right";
  v5[24] = &unk_1F1A65580;
  v5[25] = &unk_1F1A65598;
  v6[24] = @"chargingcase";
  v6[25] = @"radio_forward";
  v5[26] = &unk_1F1A655B0;
  v5[27] = &unk_1F1A655C8;
  v6[26] = @"homepod";
  v6[27] = @"homepodmini";
  v5[28] = &unk_1F1A655E0;
  v5[29] = &unk_1F1A655F8;
  v6[28] = @"appletv";
  v6[29] = @"imac";
  v5[30] = &unk_1F1A65610;
  v5[31] = &unk_1F1A65628;
  v6[30] = @"laptop";
  v6[31] = @"speaker";
  v5[32] = &unk_1F1A65640;
  v6[32] = @"tv";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:33];
  v1 = _generateVariantKeyFromOptions__optionsToKeyPieces;
  _generateVariantKeyFromOptions__optionsToKeyPieces = v0;

  v2 = [_generateVariantKeyFromOptions__optionsToKeyPieces allKeys];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];
  v4 = _generateVariantKeyFromOptions__orderedOptions;
  _generateVariantKeyFromOptions__orderedOptions = v3;
}

+ (void)symbolForType:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1A77B8000, a3, OS_LOG_TYPE_ERROR, "Failed to find symbol with type %@. Error: %@.", &v6, 0x16u);
}

@end