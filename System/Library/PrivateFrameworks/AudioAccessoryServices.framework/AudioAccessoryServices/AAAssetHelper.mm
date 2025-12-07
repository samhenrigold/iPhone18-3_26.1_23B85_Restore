@interface AAAssetHelper
+ (BOOL)_productColorAssetExists:(unsigned int)exists withColor:(unsigned __int8)color;
+ (id)_bluetoothProductDefaultAsset:(unsigned int)asset;
+ (id)_bluetoothProductIDToAsset:(unsigned int)asset;
+ (id)_bluetoothProductIDToAsset:(unsigned int)asset withColor:(unsigned __int8)color;
+ (id)_bluetoothProductIDToCaseAsset:(unsigned int)asset withColor:(unsigned __int8)color;
+ (id)_bluetoothProductIDToCaseDefaultAsset:(unsigned int)asset;
+ (id)bluetoothProductIDToAsset:(unsigned int)asset withColor:(unsigned __int8)color isCase:(BOOL)case;
+ (unsigned)_getDefaultColorCode:(unsigned int)code;
@end

@implementation AAAssetHelper

+ (id)bluetoothProductIDToAsset:(unsigned int)asset withColor:(unsigned __int8)color isCase:(BOOL)case
{
  if (case)
  {
    [self _bluetoothProductIDToCaseAsset:? withColor:?];
  }

  else
  {
    [self _bluetoothProductIDToAsset:? withColor:?];
  }
  v5 = ;
  if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v5;
}

+ (id)_bluetoothProductDefaultAsset:(unsigned int)asset
{
  v3 = *&asset;
  v5 = [self _bluetoothProductIDToAsset:?];
  if (![self _productHasColors:v3] || (v6 = objc_msgSend(self, "_getDefaultColorCode:", v3), v6 == 255))
  {
    v7 = v5;
  }

  else
  {
    v7 = [v5 stringByAppendingFormat:@"-%u", v6];
  }

  v8 = v7;

  return v8;
}

+ (id)_bluetoothProductIDToAsset:(unsigned int)asset
{
  v3 = *&asset;
  if (asset <= 8223)
  {
    if (asset != 8219 && asset != 8222)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (asset == 8224)
  {
LABEL_11:
    if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
    {
      +[AAAssetHelper _bluetoothProductIDToAsset:];
    }

    v3 = 8217;
    goto LABEL_15;
  }

  if (asset == 8228)
  {
    if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
    {
      +[AAAssetHelper _bluetoothProductIDToAsset:];
    }

    v3 = 8212;
  }

LABEL_15:
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Banner-PID-%u", v3];

  return v4;
}

+ (id)_bluetoothProductIDToAsset:(unsigned int)asset withColor:(unsigned __int8)color
{
  colorCopy = color;
  v5 = *&asset;
  if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
  {
    v10 = v5;
    v12 = colorCopy;
    LogPrintF();
  }

  if (([self _productHasColors:{v5, v10, v12}] & 1) == 0)
  {
    if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
    {
      +[AAAssetHelper _bluetoothProductIDToAsset:withColor:];
    }

    goto LABEL_25;
  }

  if (colorCopy == 255)
  {
    if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
    {
      +[AAAssetHelper _bluetoothProductIDToAsset:withColor:];
    }

    goto LABEL_25;
  }

  if (![self _productColorAssetExists:v5 withColor:colorCopy])
  {
    if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
    {
      v11 = v5;
      v13 = colorCopy;
      LogPrintF();
    }

LABEL_25:
    colorCopy = [self _bluetoothProductDefaultAsset:{v5, v11, v13}];
    goto LABEL_26;
  }

  if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
  {
    v11 = v5;
    v13 = colorCopy;
    LogPrintF();
  }

  v7 = [self _bluetoothProductIDToAsset:{v5, v11, v13}];
  colorCopy = [v7 stringByAppendingFormat:@"-%u", colorCopy];

LABEL_26:

  return colorCopy;
}

+ (id)_bluetoothProductIDToCaseAsset:(unsigned int)asset withColor:(unsigned __int8)color
{
  colorCopy = color;
  v5 = *&asset;
  if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
  {
    v13 = v5;
    v15 = colorCopy;
    LogPrintF();
  }

  if ((v5 - 8213) > 0xF)
  {
    goto LABEL_17;
  }

  v7 = 1 << (v5 - 21);
  if ((v7 & 0xAC0) == 0)
  {
    if ((v7 & 0x8009) != 0)
    {
      if (gLogCategory_AAAssetHelper > 30)
      {
        v9 = 8212;
        goto LABEL_21;
      }

      if (gLogCategory_AAAssetHelper != -1)
      {
        v8 = 8212;
        goto LABEL_14;
      }

      v10 = _LogCategory_Initialize();
      v8 = 8212;
      goto LABEL_20;
    }

LABEL_17:
    v9 = v5;
    goto LABEL_21;
  }

  if (gLogCategory_AAAssetHelper > 30)
  {
    v9 = 8217;
    goto LABEL_21;
  }

  if (gLogCategory_AAAssetHelper != -1)
  {
    v8 = 8217;
LABEL_14:
    v13 = v8;
    v15 = v5;
    LogPrintF();
    v9 = v8;
    goto LABEL_21;
  }

  v10 = _LogCategory_Initialize();
  v8 = 8217;
LABEL_20:
  v9 = v8;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_21:
  if ([self _productCaseHasColors:{v9, v13, v15}])
  {
    if (colorCopy == 255)
    {
      if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
      {
        +[AAAssetHelper _bluetoothProductIDToCaseAsset:withColor:];
      }
    }

    else
    {
      if ([self _productColorAssetExists:v9 withColor:colorCopy])
      {
        if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        colorCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Banner-PID-%u-%u-Case", v9, colorCopy];
        goto LABEL_42;
      }

      if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
      {
        v14 = v9;
        v16 = colorCopy;
        LogPrintF();
      }
    }

    colorCopy = [self _bluetoothProductIDToCaseDefaultAsset:{v9, v14, v16}];
    goto LABEL_42;
  }

  if (gLogCategory_AAAssetHelper <= 30 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
  {
    +[AAAssetHelper _bluetoothProductIDToCaseAsset:withColor:];
  }

  colorCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Banner-PID-%u-Case", v9, v16];
LABEL_42:

  return colorCopy;
}

+ (id)_bluetoothProductIDToCaseDefaultAsset:(unsigned int)asset
{
  v3 = *&asset;
  v4 = [self _getDefaultColorCode:?];
  if (v4 == 255)
  {
    if (gLogCategory_AAAssetHelper <= 90 && (gLogCategory_AAAssetHelper != -1 || _LogCategory_Initialize()))
    {
      +[AAAssetHelper _bluetoothProductIDToCaseDefaultAsset:];
    }

    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Banner-PID-%u-default-Case", v3, v7];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Banner-PID-%u-%u-Case", v3, v4];
  }

  return v5;
}

+ (unsigned)_getDefaultColorCode:(unsigned int)code
{
  result = -1;
  if (code > 8220)
  {
    if (code <= 8228)
    {
      if (code != 8221)
      {
        v4 = code == 8223;
        v5 = 19;
LABEL_16:
        if (v4)
        {
          return v5;
        }

        else
        {
          return -1;
        }
      }

      return 1;
    }

    if (code == 8239)
    {
      return 10;
    }

    if (code == 8230)
    {
      return 1;
    }

    if (code != 8229)
    {
      return result;
    }

    return 0;
  }

  if (code <= 8213)
  {
    if (code - 8209 >= 2)
    {
      v4 = code == 8202;
      v5 = 16;
      goto LABEL_16;
    }

    return 1;
  }

  if (code == 8214)
  {
    return 0;
  }

  if (code == 8215 || code == 8218)
  {
    return 1;
  }

  return result;
}

+ (BOOL)_productColorAssetExists:(unsigned int)exists withColor:(unsigned __int8)color
{
  if (exists <= 8217)
  {
    if (exists > 8209)
    {
      if (exists == 8210)
      {
        if (color < 0xAu)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (exists != 8214)
        {
          if (exists != 8215 || color >= 0xEu)
          {
            goto LABEL_38;
          }

          v4 = 13050;
          goto LABEL_37;
        }

        if (color < 5u)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_38;
    }

    if (exists != 8202)
    {
      if (exists != 8209 || color != 1)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    if (color >= 0x12u)
    {
      goto LABEL_38;
    }

    v4 = 229388;
    goto LABEL_37;
  }

  if (exists > 8228)
  {
    if (exists == 8229)
    {
      if (color < 7u)
      {
        v4 = 103;
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (exists != 8230)
    {
      if (exists == 8239)
      {
        v5 = color - 10;
        goto LABEL_27;
      }

      goto LABEL_38;
    }

    if (color >= 7u)
    {
      goto LABEL_38;
    }

    v4 = 94;
LABEL_37:
    v6 = v4 >> color;
    return v6 & 1;
  }

  if (exists == 8218)
  {
    if (color < 0xAu)
    {
      v4 = 982;
      goto LABEL_37;
    }

LABEL_38:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (exists != 8221)
  {
    if (exists != 8223 || (color - 18) >= 5)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v5 = color - 1;
LABEL_27:
  if (v5 >= 4u)
  {
    goto LABEL_38;
  }

LABEL_32:
  LOBYTE(v6) = 1;
  return v6 & 1;
}

@end