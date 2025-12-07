@interface BYGreenController
- (BOOL)_shouldWriteInformedDefaultPlist;
- (BOOL)_shouldWriteInitialPlist;
- (BOOL)_skuRegionCodeIsAmbiguous;
- (BOOL)_writeFilesWithPlist:(id)plist desiredPlistState:(int)state;
- (BOOL)_writePlistForLocaleRegionCode:(id)code desiredPlistState:(int)state;
- (BYGreenController)init;
- (id)_extractGreenValuesForEffectivePlace:(unint64_t)place desiredPlistState:(int)state;
- (id)_skuRegionCode;
- (int)_readPlistState;
- (unint64_t)_effectivePlaceForLocaleRegionCode:(id)code;
- (void)_skuRegionCode;
- (void)writeInformedDefaultPlistIfNecessaryForLocaleRegionCode:(id)code;
- (void)writeInitialPlistIfNecessary;
@end

@implementation BYGreenController

- (BYGreenController)init
{
  v6.receiver = self;
  v6.super_class = BYGreenController;
  v2 = [(BYGreenController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    relevantGreenKeys = v2->_relevantGreenKeys;
    v2->_relevantGreenKeys = &unk_1F30A78B0;

    [(BYGreenController *)v3 setPlistStateCache:0xFFFFFFFFLL];
  }

  return v3;
}

- (void)writeInitialPlistIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(BYGreenController *)self _shouldWriteInitialPlist])
  {
    _skuRegionCodeIsAmbiguous = [(BYGreenController *)self _skuRegionCodeIsAmbiguous];
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    countryCode = [autoupdatingCurrentLocale countryCode];
    v6 = [(BYGreenController *)self _writePlistForLocaleRegionCode:countryCode desiredPlistState:!_skuRegionCodeIsAmbiguous];

    v8 = _BYLoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "green file initial did write with success %d", v9, 8u);
    }
  }
}

- (void)writeInformedDefaultPlistIfNecessaryForLocaleRegionCode:(id)code
{
  v11 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  if ([(BYGreenController *)self _shouldWriteInformedDefaultPlist])
  {
    v5 = [(BYGreenController *)self _writePlistForLocaleRegionCode:codeCopy desiredPlistState:1];
    v6 = _BYLoggingFacility([(BYGreenController *)self setPlistStateCache:1]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = codeCopy;
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "green write informed defaults completed for %@ with success %d", &v7, 0x12u);
    }
  }
}

- (int)_readPlistState
{
  v16 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _greenPlistFilePath = [(BYGreenController *)self _greenPlistFilePath];
  v5 = [defaultManager fileExistsAtPath:_greenPlistFilePath];

  if (v5)
  {
    v7 = MEMORY[0x1E695DF20];
    _greenPlistFilePath2 = [(BYGreenController *)self _greenPlistFilePath];
    v9 = [v7 dictionaryWithContentsOfFile:_greenPlistFilePath2];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = [v9 objectForKeyedSubscript:@"state"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v11 intValue];
      }

      else
      {
        intValue = 0;
      }
    }

    else
    {
      intValue = 0;
    }

    v13 = _BYLoggingFacility(isKindOfClass);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 67109120;
      v15[1] = intValue;
      _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, "green file already exists with state %d", v15, 8u);
    }
  }

  else
  {
    v9 = _BYLoggingFacility(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "green file does not exist", v15, 2u);
    }

    intValue = 0;
  }

  return intValue;
}

- (BOOL)_shouldWriteInitialPlist
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _greenPlistFilePath = [(BYGreenController *)self _greenPlistFilePath];
  v5 = [defaultManager fileExistsAtPath:_greenPlistFilePath];

  if (v5)
  {
    v7 = MEMORY[0x1E695DF20];
    _greenPlistFilePath2 = [(BYGreenController *)self _greenPlistFilePath];
    v9 = [v7 dictionaryWithContentsOfFile:_greenPlistFilePath2];

    v10 = [v9 objectForKey:@"state"];
    v11 = v10 == 0;

    v13 = _BYLoggingFacility(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v14)
      {
        v20 = 0;
        v15 = "green file already exists with state key";
        v16 = &v20;
LABEL_10:
        _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
      }
    }

    else if (v14)
    {
      *buf = 0;
      v15 = "green file already exists without state key";
      v16 = buf;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v9 = _BYLoggingFacility(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "green file does not exist", v18, 2u);
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)_shouldWriteInformedDefaultPlist
{
  v8 = *MEMORY[0x1E69E9840];
  plistStateCache = [(BYGreenController *)self plistStateCache];
  LODWORD(_readPlistState) = plistStateCache;
  if (plistStateCache == -1)
  {
    _readPlistState = [(BYGreenController *)self _readPlistState];
    plistStateCache = [(BYGreenController *)self setPlistStateCache:_readPlistState];
  }

  if (_readPlistState >= 2)
  {
    v5 = _BYLoggingFacility(plistStateCache);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = _readPlistState;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "green write informed defaults unnecessary. already in state %d", v7, 8u);
    }
  }

  return _readPlistState < 2;
}

- (BOOL)_writePlistForLocaleRegionCode:(id)code desiredPlistState:(int)state
{
  v4 = *&state;
  v6 = [(BYGreenController *)self _extractGreenValuesForEffectivePlace:[(BYGreenController *)self _effectivePlaceForLocaleRegionCode:code] desiredPlistState:*&state];
  LOBYTE(v4) = [(BYGreenController *)self _writeFilesWithPlist:v6 desiredPlistState:v4];

  return v4;
}

- (BOOL)_writeFilesWithPlist:(id)plist desiredPlistState:(int)state
{
  v32 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  if (plistCopy)
  {
    v30 = 0;
    v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:plistCopy format:200 options:0 error:&v30];
    v23 = v30;
    if (v7)
    {
      _greenPlistFilePath = [(BYGreenController *)self _greenPlistFilePath];
      v22 = [v7 writeToFile:_greenPlistFilePath options:268435457 error:0];
    }

    else
    {
      v22 = 0;
    }

    v10 = state << 6;
    v29 = state << 6;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    selfCopy = self;
    v11 = self->_relevantGreenKeys;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [plistCopy objectForKey:*(*(&v25 + 1) + 8 * i)];
          bOOLValue = [v17 BOOLValue];

          if (bOOLValue)
          {
            v10 |= 1 << v14;
            v29 = v10;
          }

          ++v14;
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v13);
    }

    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v29 length:1];
    _greenBinaryFilePath = [(BYGreenController *)selfCopy _greenBinaryFilePath];
    [v19 writeToFile:_greenBinaryFilePath atomically:1];

    v9 = v22;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_extractGreenValuesForEffectivePlace:(unint64_t)place desiredPlistState:(int)state
{
  v4 = *&state;
  if (place > 2)
  {
    v5 = @"dict4";
  }

  else
  {
    v5 = off_1E7D032C0[place];
  }

  v6 = [(p *)&unk_1F30A7980 objectForKey:v5];
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 mutableCopy];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [v9 setObject:v10 forKeyedSubscript:@"state"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_skuRegionCode
{
  v7 = 0;
  v2 = MGCopyAnswerWithError();
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E696AEC0] stringWithString:v2];
    CFRelease(v3);
  }

  else
  {
    v5 = _BYLoggingFacility(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BYGreenController *)&v7 _skuRegionCode];
    }

    v4 = &stru_1F309EFF0;
  }

  return v4;
}

- (BOOL)_skuRegionCodeIsAmbiguous
{
  _skuRegionCode = [(BYGreenController *)self _skuRegionCode];
  if ([_skuRegionCode isEqualToString:@"ZP"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [_skuRegionCode isEqualToString:&stru_1F309EFF0];
  }

  return v3;
}

- (unint64_t)_effectivePlaceForLocaleRegionCode:(id)code
{
  codeCopy = code;
  _skuRegionCode = [(BYGreenController *)self _skuRegionCode];
  if ([_skuRegionCode isEqualToString:@"CH"])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_7;
  }

  if ([_skuRegionCode isEqualToString:@"TA"])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_7;
  }

  if ([_skuRegionCode isEqualToString:@"ZA"])
  {
    goto LABEL_6;
  }

  if (([_skuRegionCode isEqualToString:@"ZP"] & 1) == 0 && !objc_msgSend(_skuRegionCode, "isEqualToString:", &stru_1F309EFF0))
  {
    v6 = 3;
    goto LABEL_7;
  }

  if ([codeCopy isEqualToString:@"CN"])
  {
    goto LABEL_2;
  }

  if ([codeCopy isEqualToString:@"TW"])
  {
    goto LABEL_4;
  }

  if ([codeCopy isEqualToString:@"HK"])
  {
LABEL_6:
    v6 = 2;
    goto LABEL_7;
  }

  if ([codeCopy isEqualToString:@"MO"])
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

LABEL_7:

  return v6;
}

- (void)_skuRegionCode
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "green region code MG returned NULL; %d", v3, 8u);
}

@end