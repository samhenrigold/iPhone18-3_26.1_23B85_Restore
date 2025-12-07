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
  colorCopy = color;
  v6 = *&asset;
  if (case)
  {
    [self _bluetoothProductIDToCaseAsset:? withColor:?];
  }

  else
  {
    [self _bluetoothProductIDToAsset:? withColor:?];
  }
  v7 = ;
  if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6D98, "+[AAAssetHelper bluetoothProductIDToAsset:withColor:isCase:]", 30, "Asset found for PID: %u with color code: %lu. Asset name: %@ ", v6, colorCopy, v7);
  }

  return v7;
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
    if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F2D68(v3);
    }

    v3 = 8217;
    goto LABEL_15;
  }

  if (asset == 8228)
  {
    if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F2DAC();
    }

    v3 = 8212;
  }

LABEL_15:
  v4 = [[NSString alloc] initWithFormat:@"Banner-PID-%u", v3];

  return v4;
}

+ (id)_bluetoothProductIDToAsset:(unsigned int)asset withColor:(unsigned __int8)color
{
  colorCopy = color;
  v5 = *&asset;
  if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6D98, "+[AAAssetHelper _bluetoothProductIDToAsset:withColor:]", 30, "Finding Asset for PID: %u with color code: %u", v5, colorCopy);
  }

  v7 = [self _productHasColors:v5];
  if ((v7 & 1) == 0)
  {
    if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F2DF4(v5);
    }

    goto LABEL_25;
  }

  if (colorCopy == 255)
  {
    if (dword_1002F6D98 <= 30)
    {
      if (dword_1002F6D98 != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        sub_1001F2E34(v7, v8, v9);
      }
    }

    goto LABEL_25;
  }

  if (![self _productColorAssetExists:v5 withColor:colorCopy])
  {
    if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6D98, "+[AAAssetHelper _bluetoothProductIDToAsset:withColor:]", 30, "Asset for PID: %u does not exist for color %u, using default colored asset", v5, colorCopy);
    }

LABEL_25:
    colorCopy = [self _bluetoothProductDefaultAsset:v5];
    goto LABEL_26;
  }

  if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6D98, "+[AAAssetHelper _bluetoothProductIDToAsset:withColor:]", 30, "Asset for PID: %u exist in color %u", v5, colorCopy);
  }

  v10 = [self _bluetoothProductIDToAsset:v5];
  colorCopy = [v10 stringByAppendingFormat:@"-%u", colorCopy];

LABEL_26:

  return colorCopy;
}

+ (id)_bluetoothProductIDToCaseAsset:(unsigned int)asset withColor:(unsigned __int8)color
{
  colorCopy = color;
  v5 = *&asset;
  if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6D98, "+[AAAssetHelper _bluetoothProductIDToCaseAsset:withColor:]", 30, "Finding Case Asset for PID: %u with color code: %u", v5, colorCopy);
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
      if (dword_1002F6D98 > 30)
      {
        v9 = 8212;
        goto LABEL_21;
      }

      if (dword_1002F6D98 != -1)
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

  if (dword_1002F6D98 > 30)
  {
    v9 = 8217;
    goto LABEL_21;
  }

  if (dword_1002F6D98 != -1)
  {
    v8 = 8217;
LABEL_14:
    LogPrintF(&dword_1002F6D98, "+[AAAssetHelper _bluetoothProductIDToCaseAsset:withColor:]", 30, "Using PID: %u instead of %u", v8, v5);
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
  v11 = [self _productCaseHasColors:v9];
  if (v11)
  {
    if (colorCopy == 255)
    {
      if (dword_1002F6D98 <= 30)
      {
        if (dword_1002F6D98 != -1 || (v11 = _LogCategory_Initialize(), v11))
        {
          sub_1001F2E90(v11, v12, v13);
        }
      }
    }

    else
    {
      if ([self _productColorAssetExists:v9 withColor:colorCopy])
      {
        if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6D98, "+[AAAssetHelper _bluetoothProductIDToCaseAsset:withColor:]", 30, "Case Asset for PID: %u exist in color %u", v9, colorCopy);
        }

        colorCopy = [[NSString alloc] initWithFormat:@"Banner-PID-%u-%u-Case", v9, colorCopy];
        goto LABEL_42;
      }

      if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6D98, "+[AAAssetHelper _bluetoothProductIDToCaseAsset:withColor:]", 30, "Case Asset for PID: %u does not exist for color %u, using default color", v9, colorCopy);
      }
    }

    colorCopy = [self _bluetoothProductIDToCaseDefaultAsset:v9];
    goto LABEL_42;
  }

  if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F2E50(v9);
  }

  colorCopy = [[NSString alloc] initWithFormat:@"Banner-PID-%u-Case", v9, v16];
LABEL_42:

  return colorCopy;
}

+ (id)_bluetoothProductIDToCaseDefaultAsset:(unsigned int)asset
{
  v3 = *&asset;
  v4 = [self _getDefaultColorCode:?];
  if (v4 == 255)
  {
    if (dword_1002F6D98 <= 90 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F2EAC(v3);
    }

    v5 = [[NSString alloc] initWithFormat:@"Banner-PID-%u-default-Case", v3, v7];
  }

  else
  {
    v5 = [[NSString alloc] initWithFormat:@"Banner-PID-%u-%u-Case", v3, v4];
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