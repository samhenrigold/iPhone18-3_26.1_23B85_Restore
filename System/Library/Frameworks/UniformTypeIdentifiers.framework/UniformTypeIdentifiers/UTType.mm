@interface UTType
+ (NSArray)typesWithTag:(NSString *)tag tagClass:(NSString *)tagClass conformingToType:(UTType *)supertype;
+ (UTType)_typeOfCurrentDevice;
+ (UTType)exportedTypeWithIdentifier:(NSString *)identifier;
+ (UTType)exportedTypeWithIdentifier:(NSString *)identifier conformingToType:(UTType *)parentType;
+ (UTType)importedTypeWithIdentifier:(NSString *)identifier;
+ (UTType)importedTypeWithIdentifier:(NSString *)identifier conformingToType:(UTType *)parentType;
+ (UTType)typeWithTag:(NSString *)tag tagClass:(NSString *)tagClass conformingToType:(UTType *)supertype;
+ (id)_exportedTypeWithIdentifier:(id)identifier bundle:(id)bundle conformingToType:(id)type;
+ (id)_importedTypeWithIdentifier:(id)identifier bundle:(id)bundle conformingToType:(id)type;
+ (id)_typeOfItemAtFileURL:(id)l error:(id *)error;
+ (id)_typeOfPromiseAtFileURL:(id)l error:(id *)error;
+ (id)_typeWithBluetoothProductID:(unsigned int)d vendorID:(unsigned __int16)iD;
+ (id)_typeWithDeviceModelCode:(id)code;
+ (id)_typeWithDeviceModelCode:(id)code enclosureColor:(UTHardwareColor)color;
+ (id)_typeWithDeviceModelCodeWithoutResolvingCurrentDevice:(id)device;
+ (id)_typeWithIdentifier:(id)identifier constantIndex:(int64_t)index error:(id *)error;
+ (id)_typeWithTypeRecord:(id)record detachTypeRecord:(BOOL)typeRecord findConstant:(BOOL)constant;
+ (id)_typesWithIdentifiers:(id)identifiers;
+ (void)_enumerateAllDeclaredTypesUsingBlock:(id)block;
+ (void)_unrealizeAllCoreTypes;
- (BOOL)_getPreferredEnclosureColor:(UTHardwareColor *)color;
- (BOOL)_isCoreType;
- (BOOL)_isExported;
- (BOOL)_isImported;
- (BOOL)_isWildcard;
- (BOOL)conformsToType:(UTType *)type;
- (BOOL)isDeclared;
- (BOOL)isDynamic;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPublicType;
- (BOOL)isSubtypeOfType:(UTType *)type;
- (BOOL)isSupertypeOfType:(UTType *)type;
- (NSDictionary)_kindStringDictionary;
- (NSDictionary)_localizedDescriptionDictionary;
- (NSDictionary)tags;
- (NSNumber)version;
- (NSOrderedSet)_parentTypes;
- (NSSet)_childTypes;
- (NSSet)_subtypes;
- (NSSet)supertypes;
- (NSString)_kindString;
- (NSString)identifier;
- (NSString)localizedDescription;
- (NSURL)referenceAccessoryURL;
- (NSURL)referenceURL;
- (UTType)initWithCoder:(id)coder;
- (id)_initWithTypeRecord:(id)record;
- (id)_kindStringWithPreferredLocalizations:(id)localizations;
- (id)_localizedDescriptionWithPreferredLocalizations:(id)localizations;
- (id)_preferredTagOfClass:(id)class;
- (id)debugDescription;
- (unint64_t)_getEnclosureColors:(UTHardwareColor *)colors count:(unint64_t)count;
- (unint64_t)hash;
- (void)_setDefaultHandlerToApplicationRecord:(id)record completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UTType

- (unint64_t)hash
{
  identifier = [(UTType *)self identifier];
  HashCode = _UTIdentifierGetHashCode(identifier);

  return HashCode;
}

- (NSString)identifier
{
  _typeRecord = [(UTType *)self _typeRecord];
  identifier = [_typeRecord identifier];

  return identifier;
}

- (BOOL)isDeclared
{
  _typeRecord = [(UTType *)self _typeRecord];
  isDeclared = [_typeRecord isDeclared];

  return isDeclared;
}

- (BOOL)isDynamic
{
  _typeRecord = [(UTType *)self _typeRecord];
  isDynamic = [_typeRecord isDynamic];

  return isDynamic;
}

+ (UTType)_typeOfCurrentDevice
{
  v16[2] = *MEMORY[0x1E69E9840];
  LOBYTE(v14) = 0;
  if (qword_1ED40DB98 != -1)
  {
    dispatch_once(&qword_1ED40DB98, &__block_literal_global_42);
  }

  if (_MergedGlobals != 1)
  {
    goto LABEL_19;
  }

  v2 = getenv("__UTModelCodeOverride");
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = getenv("__UTEnclosureColorOverride");
  if (!v4)
  {
    v10 = 0;
    LOBYTE(v9) = 0;
    v11 = 0;
    if (!v3)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v5 = v4;
  if (!strchr(v4, 44))
  {
    v11 = strtoll(v5, 0, 0) << 32;
    v10 = 1;
    LOBYTE(v9) = 1;
    if (!v3)
    {
      goto LABEL_17;
    }

LABEL_18:
    v14 = v11 | v9;
    v15 = v10;
    v12 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(v3, &v14, 3);

    goto LABEL_22;
  }

  memset(v16, 0, 12);
  if (sscanf(v5, "%u,%u,%u", v16, &v16[0].u8[4], &v16[1]) < 3)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v6 = vand_s8(*(v16 + 4), 0xFF000000FFLL);
    v7.i64[0] = v6.u32[0];
    v7.i64[1] = v6.u32[1];
    v8 = vshlq_u64(v7, xmmword_1AC1BBC50);
    v9 = vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] | (v16[0].u8[0] << 32);
    v10 = 1;
  }

  v11 = v9;
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (qword_1ED40DB90 != -1)
  {
    dispatch_once(&qword_1ED40DB90, &__block_literal_global);
  }

  v12 = qword_1ED40DB88;
LABEL_22:

  return v12;
}

void __48__UTType_DeviceModelCodes___typeOfCurrentDevice__block_invoke()
{
  v2[0] = 0;
  v2[8] = 0;
  v0 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(0, v2, 3);
  v1 = qword_1ED40DB88;
  qword_1ED40DB88 = v0;
}

- (NSDictionary)tags
{
  _typeRecord = [(UTType *)self _typeRecord];
  tagSpecification = [_typeRecord tagSpecification];
  _expensiveDictionaryRepresentation = [tagSpecification _expensiveDictionaryRepresentation];
  v5 = _expensiveDictionaryRepresentation;
  if (_expensiveDictionaryRepresentation)
  {
    v6 = _expensiveDictionaryRepresentation;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

+ (id)_typeWithDeviceModelCode:(id)code
{
  if (!code)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTModelCode.mm" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"modelCode != nil"}];
  }

  v9[0] = 0;
  v9[8] = 0;
  v4 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(code, v9, 1);

  return v4;
}

+ (id)_typeWithDeviceModelCode:(id)code enclosureColor:(UTHardwareColor)color
{
  if (!code)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTModelCode.mm" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"modelCode != nil"}];
  }

  colorCopy = color;
  v12 = 1;
  v6 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(code, &colorCopy, 1);

  return v6;
}

+ (id)_typeWithDeviceModelCodeWithoutResolvingCurrentDevice:(id)device
{
  if (!device)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTModelCode.mm" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"modelCode != nil"}];
  }

  v9[0] = 0;
  v9[8] = 0;
  v4 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCodeAndHardwareColorWithoutResolvingCurrentDevice(device, v9);

  return v4;
}

- (BOOL)_getPreferredEnclosureColor:(UTHardwareColor *)color
{
  if (!color)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTModelCode.mm" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"outEnclosureColor != NULL"}];
  }

  return [(UTType *)self _getEnclosureColors:color count:1]== 1;
}

- (unint64_t)_getEnclosureColors:(UTHardwareColor *)colors count:(unint64_t)count
{
  v48 = *MEMORY[0x1E69E9840];
  if (colors)
  {
    if (count)
    {
      goto LABEL_3;
    }

    return 0;
  }

  countCopy = count;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UTModelCode.mm" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"outEnclosureColors != NULL"}];

  count = countCopy;
  if (!countCopy)
  {
    return 0;
  }

LABEL_3:
  countCopy2 = count;
  if (![(UTType *)self conformsToType:&off_1ED40D980])
  {
    v9 = 0;
    goto LABEL_31;
  }

  identifier = [(UTType *)self identifier];
  v7 = [identifier rangeOfString:@"-" options:4];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [identifier substringFromIndex:v7 + v8];
    v11 = [v10 length];
    v12 = 0;
    v13 = &byte_1E796E902;
    v14 = 160;
    do
    {
      v15 = *(v13 - 10);
      if (v15)
      {
        if (CFEqual(v15, v10))
        {
          countCopy = (*(v13 - 2) << 24) | (*(v13 - 1) << 32) | (*v13 << 40);
          if ((v12 & 1) == 0)
          {
            v12 = 1;
          }
        }
      }

      v13 += 16;
      v14 -= 16;
    }

    while (v14);
    if ((v12 & 1) != 0 || v11 < 3)
    {
      if ((v12 & 1) != 0 || v11 - 3 < 0xFFFFFFFFFFFFFFFELL)
      {
        v16 = 0;
        v9 = 0;
        if ((v12 & 1) == 0)
        {
LABEL_29:

          goto LABEL_30;
        }

LABEL_26:
        *colors = (v16 | (countCopy << 8));
        v9 = 1;
        goto LABEL_29;
      }

      v17 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v10];
      v46[0] = -1;
      v18 = [v17 scanLongLong:v46];
      v19 = v46[0];
      if (v46[0] >> 31)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      if (v20 == 1)
      {

        countCopy = v19 << 24;
        v16 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v45 = 0;
      LODWORD(v46[0]) = 0;
      if (sscanf([v10 UTF8String], "%x%n", v46, &v45) == 1 && v45 == 6)
      {
        v16 = 0;
        countCopy = bswap64(v46[0] & 0xFFFFFF) >> 16;
        goto LABEL_26;
      }
    }

    v9 = 0;
    goto LABEL_29;
  }

  v9 = 0;
LABEL_30:

LABEL_31:
  if (v9 >= countCopy2)
  {
    return 1;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  tags = [(UTType *)self tags];
  v22 = [tags objectForKeyedSubscript:@"com.apple.device-model-code"];

  v23 = [v22 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v23)
  {
    v24 = *v42;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v41 + 1) + 8 * i);
        v28 = [v26 rangeOfString:@"@ECOLOR="];
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = v27;
          v30 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v26];
          [v30 setCharactersToBeSkipped:0];
          [v30 setScanLocation:v28 + v29];
          memset(v46, 0, 12);
          if ([v30 scanInt:v46])
          {
            if ([v30 scanString:@" intoString:{", 0}] && objc_msgSend(v30, "scanInt:", v46 + 4) && objc_msgSend(v30, "scanString:intoString:", @",", 0) && objc_msgSend(v30, "scanInt:", &v46[1]))
            {
              v31 = vand_s8(vmax_s32(*(v46 + 4), 0), 0xFF000000FFLL);
              v32.i64[0] = v31.u32[0];
              v32.i64[1] = v31.u32[1];
              v33 = vshlq_u64(v32, xmmword_1AC1BBC50);
              v34 = vorrq_s8(vdupq_laneq_s64(v33, 1), v33).u64[0];
              v35 = (LOBYTE(v46[0]) & ~(SLODWORD(v46[0]) >> 31));
            }

            else
            {
              v35 = LODWORD(v46[0]);
              v34 = 1;
            }

            colors[v9++] = (v34 | (v35 << 32));
            if (v9 >= countCopy2)
            {

              goto LABEL_52;
            }
          }
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_52:

  return v9;
}

+ (id)_typeWithBluetoothProductID:(unsigned int)d vendorID:(unsigned __int16)iD
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d:%d", iD, *&d];
  isDeclared = [UTType typeWithTag:v5 tagClass:@"public.bluetooth-vendor-product-id" conformingToType:&off_1ED40D7C0];
  v7 = isDeclared;
  if (isDeclared)
  {
    isDeclared = [isDeclared isDeclared];
    if (isDeclared)
    {
      v8 = v7;
      v9 = v8;
      goto LABEL_81;
    }
  }

  v10 = UniformTypeIdentifiers::Accessory::log(isDeclared);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    dCopy2 = d;
    _os_log_error_impl(&dword_1AC1AE000, v10, OS_LOG_TYPE_ERROR, "Failed to find type for bluetooth device '%d'", buf, 8u);
  }

  if (d > 21759)
  {
    if (d > 28943)
    {
      if (d <= 29714)
      {
        if (d == 28944)
        {
          v11 = "AudioAccessory1,2";
          goto LABEL_74;
        }

        if (d == 29455)
        {
          v11 = "AppleTV11,1";
          goto LABEL_74;
        }
      }

      else
      {
        switch(d)
        {
          case 0x7413u:
            v11 = "AudioAccessory5,1";
            goto LABEL_74;
          case 0xFFFDu:
            v11 = "HeGn";
            goto LABEL_74;
          case 0xFFFEu:
            v11 = "ApGn";
            goto LABEL_74;
        }
      }
    }

    else if (d <= 28419)
    {
      if (d == 21760)
      {
        v11 = "Device1,21760";
        goto LABEL_74;
      }

      if (d == 22034)
      {
        v11 = "Device1,22034";
        goto LABEL_74;
      }
    }

    else
    {
      switch(d)
      {
        case 0x6F04u:
          v11 = "AppleTV5,3";
          goto LABEL_74;
        case 0x7108u:
          v11 = "AppleTV6,2";
          goto LABEL_74;
        case 0x710Fu:
          v11 = "AudioAccessory1,1";
          goto LABEL_74;
      }
    }
  }

  else
  {
    if (d > 8193)
    {
      switch(d)
      {
        case 0x2002u:
          v11 = "AirPods1,1";
          break;
        case 0x2003u:
          v11 = "PowerBeats3,1";
          break;
        case 0x2005u:
          v11 = "BeatsX1,1";
          break;
        case 0x2006u:
          v11 = "BeatsSolo3,1";
          break;
        case 0x2009u:
          v11 = "BeatsStudio3,2";
          break;
        case 0x200Au:
          v11 = "Device1,8202";
          break;
        case 0x200Bu:
          v11 = "PowerbeatsPro1,1";
          break;
        case 0x200Cu:
          v11 = "BeatsSoloPro1,1";
          break;
        case 0x200Du:
          v11 = "Powerbeats4,1";
          break;
        case 0x200Eu:
          v11 = "AirPodsPro1,1";
          break;
        case 0x200Fu:
          v11 = "AirPods1,3";
          break;
        case 0x2010u:
          v11 = "Device1,8208";
          break;
        case 0x2011u:
          v11 = "BeatsStudioBuds1,1";
          break;
        case 0x2012u:
          v11 = "Device1,8210";
          break;
        case 0x2013u:
          v11 = "Device1,8211";
          break;
        case 0x2014u:
          v11 = "Device1,8212";
          break;
        case 0x2015u:
          v11 = "Device1,8213";
          break;
        case 0x2016u:
          v11 = "BeatsStudioBuds1,2";
          break;
        case 0x2017u:
          v11 = "BeatsStudioPro1,1";
          break;
        case 0x2018u:
          v11 = "Device1,8216";
          break;
        case 0x2019u:
          v11 = "Device1,8217";
          break;
        case 0x201Au:
          v11 = "Device1,8218";
          break;
        case 0x201Bu:
          v11 = "Device1,8219";
          break;
        case 0x201Cu:
          v11 = "Device1,8220";
          break;
        case 0x201Du:
          v11 = "Powerb3,1";
          break;
        case 0x201Eu:
          v11 = "Device1,8222";
          break;
        case 0x201Fu:
          v11 = "Device1,8223";
          break;
        case 0x2020u:
          v11 = "Device1,8224";
          break;
        case 0x2024u:
          v11 = "Device1,8228";
          break;
        case 0x2025u:
          v11 = "Device1,8229";
          break;
        case 0x2026u:
          v11 = "Device1,8230";
          break;
        case 0x2027u:
          v11 = "AirPods3,4";
          break;
        case 0x2028u:
          v11 = "Device1,8232";
          break;
        case 0x2029u:
          v11 = "Device1,8233";
          break;
        case 0x202Fu:
          v11 = "Device1,8239";
          break;
        default:
          goto LABEL_73;
      }

      goto LABEL_74;
    }

    switch(d)
    {
      case 0u:
        v11 = "Invalid";
        goto LABEL_74;
      case 0x266u:
        v11 = "ATVRemote1,1";
        goto LABEL_74;
      case 0x26Du:
        v11 = "ATVRemote1,2";
        goto LABEL_74;
    }
  }

LABEL_73:
  v11 = "?";
LABEL_74:
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
  v8 = [UTType _typeWithDeviceModelCodeWithoutResolvingCurrentDevice:v12];

  if (v8 && (v13 = [v8 isDeclared], v13))
  {
    v9 = v8;
  }

  else
  {
    v14 = UniformTypeIdentifiers::Accessory::log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      dCopy2 = d;
      _os_log_impl(&dword_1AC1AE000, v14, OS_LOG_TYPE_DEFAULT, "Failed to find type for bluetooth device '%d' via model code", buf, 8u);
    }

    v9 = 0;
  }

LABEL_81:

  return v9;
}

- (NSString)localizedDescription
{
  _typeRecord = [(UTType *)self _typeRecord];
  localizedDescription = [_typeRecord localizedDescription];

  return localizedDescription;
}

- (NSNumber)version
{
  _typeRecord = [(UTType *)self _typeRecord];
  version = [_typeRecord version];

  return version;
}

- (NSURL)referenceURL
{
  _typeRecord = [(UTType *)self _typeRecord];
  referenceURL = [_typeRecord referenceURL];

  return referenceURL;
}

- (BOOL)isPublicType
{
  _typeRecord = [(UTType *)self _typeRecord];
  isInPublicDomain = [_typeRecord isInPublicDomain];

  return isInPublicDomain;
}

+ (void)_enumerateAllDeclaredTypesUsingBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  if (!block)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  enumerator = [MEMORY[0x1E69636B0] enumerator];
  v5 = [enumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = *v16;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(enumerator);
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      v9 = objc_autoreleasePoolPush();
      v10 = [UTType _typeWithTypeRecord:v8 detachTypeRecord:1 findConstant:1];
      if (v10)
      {
        (*(block + 2))(block, v10, &v19);
      }

      v11 = v19;
      objc_autoreleasePoolPop(v9);
      if (v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [enumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

+ (id)_typesWithIdentifiers:(id)identifiers
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  identifiersCopy = identifiers;
  v4 = [identifiersCopy countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = __UTFindCoreTypesConstantWithIdentifier(v8, 0x7FFFFFFFFFFFFFFFuLL);
        if ([v9 _isRealized])
        {
          v10 = v32[5];
          if (!v10)
          {
            v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
            v12 = v32[5];
            v32[5] = v11;

            v10 = v32[5];
          }

          [v10 setObject:v9 forKeyedSubscript:v8];
          if (!v5)
          {
            v5 = [identifiersCopy mutableCopy];
          }

          [v5 removeObject:v8];
        }
      }

      v4 = [identifiersCopy countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v4);

    if (v5)
    {
      v13 = [v5 count];
      v14 = v5;
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }
  }

  else
  {

    v5 = 0;
  }

  v14 = identifiersCopy;
LABEL_19:
  v15 = [MEMORY[0x1E69636B0] typeRecordsWithIdentifiers:v14];
  v16 = v15;
  if (v15)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __32__UTType__typesWithIdentifiers___block_invoke;
    v23[3] = &unk_1E796E9E0;
    v26 = &v31;
    v17 = v15;
    v24 = v17;
    v25 = identifiersCopy;
    [v17 enumerateKeysAndObjectsUsingBlock:v23];
    if (qword_1ED40DC18 != -1)
    {
      dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
    }

    if (_MergedGlobals_2 == 1)
    {
      v18 = [v17 count];
      v19 = v18;
      if (v18)
      {
        if (v18 > 0x80)
        {
          v37 = 0;
          std::vector<UTTypeRecord *>::vector[abi:ne200100](&__p, v18, &v37);
        }

        bzero(&__p, 0x400uLL);
        [v17 getObjects:&__p andKeys:0 count:v19];
        _UTDetachTypeRecords(&__p, v19);
      }
    }
  }

LABEL_29:
  v20 = v32[5];
  if (v20)
  {
    v21 = [v20 copy];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F8];
  }

  _Block_object_dispose(&v31, 8);

  return v21;
}

void __32__UTType__typesWithIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [UTType _typeWithTypeRecord:a3 detachTypeRecord:0 findConstant:1];
  if (v5)
  {
    v13 = v5;
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v9 = [*(a1 + 40) member:a2];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = a2;
    }

    v12 = v11;

    [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKeyedSubscript:v12];
    v5 = v13;
  }
}

- (id)_localizedDescriptionWithPreferredLocalizations:(id)localizations
{
  if (!localizations)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"preferredLocalizations != nil"}];
  }

  _typeRecord = [(UTType *)self _typeRecord];
  v6 = [_typeRecord localizedDescriptionWithPreferredLocalizations:localizations];

  return v6;
}

- (NSDictionary)_localizedDescriptionDictionary
{
  identifier = [(UTType *)self identifier];
  v3 = _UTTypeCopyDescriptionLocalizationDictionary();

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (NSString)_kindString
{
  identifier = [(UTType *)self identifier];
  v3 = _UTTypeCopyKindStringForNonMaterializedItem();

  return v3;
}

- (id)_kindStringWithPreferredLocalizations:(id)localizations
{
  if (!localizations)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"preferredLocalizations != nil"}];
  }

  identifier = [(UTType *)self identifier];
  v5 = _UTTypeCopyKindStringForNonMaterializedItem();

  return v5;
}

- (NSDictionary)_kindStringDictionary
{
  identifier = [(UTType *)self identifier];
  v3 = _UTTypeCopyKindStringDictionaryForNonMaterializedItem();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

+ (id)_typeOfItemAtFileURL:(id)l error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v6 = [l getResourceValue:&v14 forKey:*MEMORY[0x1E695DAA0] error:error];
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v9 = error == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v7 == 0)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A998];
    v16[0] = l;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v11 initWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:v12];
  }

  return v8;
}

+ (id)_typeOfPromiseAtFileURL:(id)l error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (([l isFileURL] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"promiseURL.fileURL"}];

    if (!error)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (error)
  {
LABEL_3:
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E696A998];
    v13[0] = l;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *error = [v8 initWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:v9];
  }

  return 0;
}

- (NSOrderedSet)_parentTypes
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v4 = objc_autoreleasePoolPush();
  _typeRecord = [(UTType *)self _typeRecord];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __22__UTType__parentTypes__block_invoke;
  v19[3] = &unk_1E796EA08;
  v6 = v3;
  v20 = v6;
  [_typeRecord enumerateParentTypesWithBlock:v19];

  v7 = v6;
  if (qword_1ED40DC18 != -1)
  {
    dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
  }

  if (_MergedGlobals_2 == 1)
  {
    v8 = [v7 count];
    if (v8)
    {
      if (v8 > 0x80)
      {
        v25[0] = 0;
        std::vector<UTTypeRecord *>::vector[abi:ne200100](__p, v8, v25);
      }

      bzero(v25, 0x400uLL);
      *__p = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:__p objects:v26 count:16];
      if (v10)
      {
        v11 = 0;
        v12 = *v22;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(__p[1] + i);
            v15 = v14;
            if ((v14 & 0x8000000000000000) == 0 && [v14 _constantIndex] < 0)
            {
              _typeRecord2 = [v15 _typeRecord];
              if (_typeRecord2)
              {
                v25[v11++] = _typeRecord2;
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:__p objects:v26 count:16];
        }

        while (v10);

        if (v11)
        {
          _UTDetachTypeRecords(v25, v11);
        }
      }

      else
      {
      }
    }
  }

  objc_autoreleasePoolPop(v4);
  v17 = [v7 copy];

  return v17;
}

void __22__UTType__parentTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [UTType _typeWithTypeRecord:a2 detachTypeRecord:0 findConstant:1];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (NSSet)_childTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_autoreleasePoolPush();
  _typeRecord = [(UTType *)self _typeRecord];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __21__UTType__childTypes__block_invoke;
  v9[3] = &unk_1E796EA08;
  v6 = v3;
  v10 = v6;
  [_typeRecord enumerateChildTypesWithBlock:v9];

  UniformTypeIdentifiers::Type::detachTypeRecordsInTypes<NSMutableSet<UTType *> * {__strong}>(v6);
  objc_autoreleasePoolPop(v4);
  v7 = [v6 copy];

  return v7;
}

void __21__UTType__childTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [UTType _typeWithTypeRecord:a2 detachTypeRecord:0 findConstant:1];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (NSSet)_subtypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_autoreleasePoolPush();
  _typeRecord = [(UTType *)self _typeRecord];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __19__UTType__subtypes__block_invoke;
  v9[3] = &unk_1E796EA08;
  v6 = v3;
  v10 = v6;
  [_typeRecord enumerateDescendantsWithBlock:v9];

  UniformTypeIdentifiers::Type::detachTypeRecordsInTypes<NSMutableSet<UTType *> * {__strong}>(v6);
  objc_autoreleasePoolPop(v4);
  v7 = [v6 copy];

  return v7;
}

void __19__UTType__subtypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [UTType _typeWithTypeRecord:a2 detachTypeRecord:0 findConstant:1];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)_isExported
{
  _typeRecord = [(UTType *)self _typeRecord];
  isExported = [_typeRecord isExported];

  return isExported;
}

- (BOOL)_isImported
{
  _typeRecord = [(UTType *)self _typeRecord];
  isImported = [_typeRecord isImported];

  return isImported;
}

- (BOOL)_isWildcard
{
  _typeRecord = [(UTType *)self _typeRecord];
  isWildcard = [_typeRecord isWildcard];

  return isWildcard;
}

- (BOOL)_isCoreType
{
  _typeRecord = [(UTType *)self _typeRecord];
  v3 = _typeRecord;
  if (_typeRecord)
  {
    isCoreType = [_typeRecord isCoreType];
  }

  else
  {
    isCoreType = 0;
  }

  return isCoreType;
}

+ (id)_typeWithTypeRecord:(id)record detachTypeRecord:(BOOL)typeRecord findConstant:(BOOL)constant
{
  typeRecordCopy = typeRecord;
  recordCopy = record;
  if (!record)
  {
    goto LABEL_8;
  }

  constantCopy = constant;
  v8 = _UTTaggedTypeCreate(record);
  if (v8)
  {
    goto LABEL_12;
  }

  if (!constantCopy || ([record identifier], v9 = objc_claimAutoreleasedReturnValue(), __UTFindCoreTypesConstantWithIdentifier(v9, 0x7FFFFFFFFFFFFFFFuLL), v8 = objc_claimAutoreleasedReturnValue(), v9, !v8))
  {
LABEL_8:
    v10 = [[UTType alloc] _initWithTypeRecord:recordCopy];
    if (typeRecordCopy && recordCopy)
    {
      v8 = v10;
      _UTDetachTypeRecords(&recordCopy, 1);
    }

    else
    {
      v8 = v10;
    }

    goto LABEL_12;
  }

  if (_UTCoreTypesConstantSetTypeRecordIfNil(v8, recordCopy) && typeRecordCopy)
  {
    _UTDetachTypeRecords(&recordCopy, 1);
  }

LABEL_12:

  return v8;
}

- (id)_initWithTypeRecord:(id)record
{
  v7.receiver = self;
  v7.super_class = UTType;
  v4 = [(UTType *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_typeRecord, record);
  }

  return v5;
}

+ (void)_unrealizeAllCoreTypes
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = _UTGetAllCoreTypesConstants();
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) _unrealize];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)_preferredTagOfClass:(id)class
{
  _typeRecord = [(UTType *)self _typeRecord];
  v5 = [_typeRecord preferredTagOfClass:class];

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  identifier = [(UTType *)self identifier];
  isDynamic = [(UTType *)self isDynamic];
  isDeclared = [(UTType *)self isDeclared];
  v8 = @"not ";
  if (isDynamic)
  {
    v9 = &stru_1F20ECC30;
  }

  else
  {
    v9 = @"not ";
  }

  if (isDeclared)
  {
    v8 = &stru_1F20ECC30;
  }

  v10 = [v3 initWithFormat:@"<%@ %p> %@ (%@dynamic, %@declared)", Class, self, identifier, v9, v8];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(equalCopy) = 1;
  }

  else
  {
    equalCopy = equal;
    if (equal)
    {
      if (objc_opt_isKindOfClass())
      {
        identifier = [(UTType *)self identifier];
        identifier2 = [equalCopy identifier];
        LOBYTE(equalCopy) = _UTIdentifiersAreEqual(identifier, identifier2);
      }

      else
      {
        LOBYTE(equalCopy) = 0;
      }
    }
  }

  return equalCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = [(UTType *)self identifier];
  [coder encodeObject:? forKey:?];

  [coder encodeInteger:-[UTType _constantIndex](self forKey:{"_constantIndex"), @"constantIndex"}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[UTType isDeclared](self, "isDeclared")}];
  [coder encodeObject:? forKey:?];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UTType isDynamic](self, "isDynamic")}];
  [coder encodeObject:? forKey:?];
}

- (UTType)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x1E69E9840];
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"declared"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"dynamic"];
  if (_NSIsNSString())
  {
    if (object_getClass(self) == UTType && (v20 = __UTFindCoreTypesConstantWithIdentifier(v5, [coder decodeIntegerForKey:@"constantIndex"])) != 0)
    {
      v14 = v20;
    }

    else
    {
      if (!v6 || ((v8 = [v6 BOOLValue], !v7) ? (v9 = 1) : (v9 = v8), (v9 & 1) != 0 || (objc_msgSend(v7, "BOOLValue") & 1) != 0))
      {
        v10 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:v5];
      }

      else
      {
        v10 = [MEMORY[0x1E69636B0] typeRecordWithPotentiallyUndeclaredIdentifier:v5];
      }

      v11 = v10;
      v25 = v10;
      if (v10)
      {
        v12 = _UTTaggedTypeCreate(v10);
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [(UTType *)self _initWithTypeRecord:v11];
          if (v14)
          {
            _UTDetachTypeRecords(&v25, 1);
          }
        }

        v22 = v25;
      }

      else
      {

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30[0] = *MEMORY[0x1E696A278];
        v30[1] = @"UTIdentifier";
        v31[0] = @"Unrecognized type identifier.";
        v31[1] = v5;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
        v23 = [v21 initWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v22];
        [coder failWithError:v23];

        v14 = 0;
      }
    }
  }

  else
  {

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    if (v5)
    {
      v28[0] = *MEMORY[0x1E696A278];
      v28[1] = @"UTIdentifier";
      v29[0] = @"Type identifier was not a string.";
      v29[1] = v5;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
      v17 = [v15 initWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v16];
      [coder failWithError:v17];
    }

    else
    {
      v26 = *MEMORY[0x1E696A278];
      v27 = @"Type identifier was not encoded.";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v19 = [v15 initWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:v18];
      [coder failWithError:v19];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)conformsToType:(UTType *)type
{
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:623 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  if (self == type)
  {
    return 1;
  }

  identifier = [(UTType *)self identifier];
  identifier2 = [(UTType *)type identifier];
  v7 = _UTIdentifiersAreEqual(identifier, identifier2);

  if (v7)
  {
    return 1;
  }

  _typeRecord = [(UTType *)self _typeRecord];
  identifier3 = [(UTType *)type identifier];
  v8 = [_typeRecord conformsToTypeIdentifier:identifier3];

  return v8;
}

- (BOOL)isSupertypeOfType:(UTType *)type
{
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:641 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  return [(UTType *)type isSubtypeOfType:self];
}

- (BOOL)isSubtypeOfType:(UTType *)type
{
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:648 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  if (self == type)
  {
    return 0;
  }

  identifier = [(UTType *)self identifier];
  identifier2 = [(UTType *)type identifier];
  v7 = !_UTIdentifiersAreEqual(identifier, identifier2) && [(UTType *)self conformsToType:type];

  return v7;
}

- (NSSet)supertypes
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  _typeRecord = [(UTType *)self _typeRecord];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __33__UTType_Conformance__supertypes__block_invoke;
  v17[3] = &unk_1E796EA08;
  v5 = v3;
  v18 = v5;
  [_typeRecord enumeratePedigreeWithBlock:v17];

  v6 = [v5 copy];
  if (qword_1ED40DC18 != -1)
  {
    dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
  }

  if (_MergedGlobals_2 == 1)
  {
    v7 = [v6 count];
    if (v7)
    {
      if (v7 > 0x80)
      {
        v23[0] = 0;
        std::vector<UTTypeRecord *>::vector[abi:ne200100](__p, v7, v23);
      }

      bzero(v23, 0x400uLL);
      *__p = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:__p objects:v24 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v20;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(__p[1] + i);
            v14 = v13;
            if ((v13 & 0x8000000000000000) == 0 && [v13 _constantIndex] < 0)
            {
              _typeRecord2 = [v14 _typeRecord];
              if (_typeRecord2)
              {
                v23[v10++] = _typeRecord2;
              }
            }
          }

          v9 = [v8 countByEnumeratingWithState:__p objects:v24 count:16];
        }

        while (v9);

        if (v10)
        {
          _UTDetachTypeRecords(v23, v10);
        }
      }

      else
      {
      }
    }
  }

  return v6;
}

void __33__UTType_Conformance__supertypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [UTType _typeWithTypeRecord:a2 detachTypeRecord:0 findConstant:1];
  [*(a1 + 32) addObject:v5];

  objc_autoreleasePoolPop(v4);
}

+ (UTType)typeWithTag:(NSString *)tag tagClass:(NSString *)tagClass conformingToType:(UTType *)supertype
{
  if (tag)
  {
    if (tagClass)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:695 description:{@"Invalid parameter not satisfying: %@", @"tag != nil"}];

    if (tagClass)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:696 description:{@"Invalid parameter not satisfying: %@", @"tagClass != nil"}];

LABEL_3:
  if (UniformTypeIdentifiers::Type::isTagValid(tag, tagClass, tag))
  {
    v10 = MEMORY[0x1E69636B0];
    identifier = [(UTType *)supertype identifier];
    v12 = [v10 typeRecordWithTag:tag ofClass:tagClass conformingToIdentifier:identifier];

    if (v12)
    {
      v13 = [UTType _typeWithTypeRecord:v12 detachTypeRecord:1 findConstant:1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (NSArray)typesWithTag:(NSString *)tag tagClass:(NSString *)tagClass conformingToType:(UTType *)supertype
{
  v32 = *MEMORY[0x1E69E9840];
  if (tag)
  {
    if (tagClass)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:711 description:{@"Invalid parameter not satisfying: %@", @"tag != nil"}];

    if (tagClass)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:712 description:{@"Invalid parameter not satisfying: %@", @"tagClass != nil"}];

LABEL_3:
  if (!UniformTypeIdentifiers::Type::isTagValid(tag, tagClass, tag))
  {
    goto LABEL_20;
  }

  v10 = MEMORY[0x1E69636B0];
  identifier = [(UTType *)supertype identifier];
  v12 = [v10 typeRecordsWithTag:tag ofClass:tagClass conformingToIdentifier:identifier];

  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v15)
  {
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [UTType _typeWithTypeRecord:*(*(&v25 + 1) + 8 * i) detachTypeRecord:0 findConstant:1];
        [v13 addObject:v18];
      }

      v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = [v13 copy];
  if (qword_1ED40DC18 != -1)
  {
    dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
  }

  if (_MergedGlobals_2 == 1)
  {
    v20 = [v14 count];
    v21 = v20;
    if (v20)
    {
      if (v20 > 0x80)
      {
        v29 = 0;
        std::vector<UTTypeRecord *>::vector[abi:ne200100](&__p, v20, &v29);
      }

      bzero(&__p, 0x400uLL);
      [v14 getObjects:&__p range:{0, v21}];
      _UTDetachTypeRecords(&__p, v21);
    }
  }

  if (!v19)
  {
LABEL_20:
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

+ (UTType)exportedTypeWithIdentifier:(NSString *)identifier
{
  v5 = __UTGetDeclarationStatusFromInfoPlist(identifier, 1, 0, v3);
  if (v5)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 1, 0, v5);
  }

  return UniformTypeIdentifiers::Type::getExportedType(identifier, 0, v6, v7);
}

+ (UTType)exportedTypeWithIdentifier:(NSString *)identifier conformingToType:(UTType *)parentType
{
  if (!parentType)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:751 description:{@"Invalid parameter not satisfying: %@", @"parentType != nil"}];
  }

  v6 = __UTGetDeclarationStatusFromInfoPlist(identifier, 1, 0, v4);
  if (v6)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 1, 0, v6);
  }

  return UniformTypeIdentifiers::Type::getExportedType(identifier, 0, v7, v8);
}

+ (UTType)importedTypeWithIdentifier:(NSString *)identifier
{
  v5 = __UTGetDeclarationStatusFromInfoPlist(identifier, 0, 0, v3);
  if (v5)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 0, 0, v5);
  }

  return UniformTypeIdentifiers::Type::getImportedType(identifier, 0, 0, v6);
}

+ (UTType)importedTypeWithIdentifier:(NSString *)identifier conformingToType:(UTType *)parentType
{
  if (!parentType)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:765 description:{@"Invalid parameter not satisfying: %@", @"parentType != nil"}];
  }

  v7 = __UTGetDeclarationStatusFromInfoPlist(identifier, 0, 0, v4);
  if (v7)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 0, 0, v7);
  }

  return UniformTypeIdentifiers::Type::getImportedType(identifier, &parentType->super.isa, 0, v8);
}

+ (id)_exportedTypeWithIdentifier:(id)identifier bundle:(id)bundle conformingToType:(id)type
{
  v8 = __UTGetDeclarationStatusFromInfoPlist(identifier, 1, bundle, v5);
  if (v8)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 1, bundle, v8);
  }

  return UniformTypeIdentifiers::Type::getExportedType(identifier, bundle, v9, v10);
}

+ (id)_importedTypeWithIdentifier:(id)identifier bundle:(id)bundle conformingToType:(id)type
{
  v9 = __UTGetDeclarationStatusFromInfoPlist(identifier, 0, bundle, v5);
  if (v9)
  {
    __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(identifier, 0, bundle, v9);
  }

  return UniformTypeIdentifiers::Type::getImportedType(identifier, type, bundle, v10);
}

+ (id)_typeWithIdentifier:(id)identifier constantIndex:(int64_t)index error:(id *)error
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTType.mm" lineNumber:916 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  if (self == UTType)
  {
    v9 = __UTFindCoreTypesConstantWithIdentifier(identifier, index);
    if (v9)
    {
      goto LABEL_8;
    }

    v13 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:identifier];
    if (v13)
    {
      v9 = [UTType _typeWithTypeRecord:v13 detachTypeRecord:1 findConstant:0];
    }

    else
    {
      v9 = 0;
    }

    if (!error)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [self typeWithIdentifier:identifier];
    if (!error)
    {
      goto LABEL_8;
    }
  }

  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16[0] = *MEMORY[0x1E696A278];
    v16[1] = @"UTIdentifier";
    v17[0] = @"Unrecognized type identifier.";
    v17[1] = identifier;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    *error = [v10 initWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v11];

    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (NSURL)referenceAccessoryURL
{
  _typeRecord = [(UTType *)self _typeRecord];
  referenceAccessoryURL = [_typeRecord referenceAccessoryURL];

  if (referenceAccessoryURL)
  {
    v4 = [UTType _typeOfItemAtFileURL:referenceAccessoryURL error:0];
    v5 = [UTType typeWithIdentifier:@"com.apple.arkit.referenceaccessory"];
    v6 = [v4 conformsToType:v5];

    if ((v6 & 1) == 0)
    {

      referenceAccessoryURL = 0;
    }
  }

  return referenceAccessoryURL;
}

- (void)_setDefaultHandlerToApplicationRecord:(id)record completionHandler:(id)handler
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  _typeRecord = [(UTType *)self _typeRecord];
  [defaultWorkspace setDefaultHandlerForTypeRecord:_typeRecord toApplicationRecord:record completionHandler:handler];
}

@end