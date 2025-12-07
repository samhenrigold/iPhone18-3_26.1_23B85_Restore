@interface CBPowerSource
- (BOOL)combinedPublish;
- (BOOL)hasAllComponents;
- (BOOL)isAggregateComponent;
- (BOOL)isAppleDevice;
- (CBPowerSource)init;
- (CBPowerSource)initWithCoder:(id)coder;
- (CBPowerSource)initWithDictionary:(id)dictionary error:(id *)error;
- (CBPowerSource)initWithPowerSourceDetails:(id)details internalFlags:(unsigned int)flags;
- (CBPowerSource)initWithXPCObject:(id)object error:(id *)error;
- (id)componentWithPartID:(unsigned __int16)d;
- (id)description;
- (id)dictionaryRepresentation;
- (int)publish;
- (uint64_t)dictionaryRepresentation;
- (unsigned)_updateAggregateWithComponent:(id)component;
- (unsigned)updateWithCBPowerSource:(id)source;
- (void)_setPartName;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
- (void)invalidate;
- (void)invalidateComponentWithPartID:(unsigned __int16)d;
- (void)releaseSource;
- (void)removeBatteryInfo;
- (void)removeFlags;
- (void)setInternalFlags:(unsigned int)flags;
- (void)updatePartID;
@end

@implementation CBPowerSource

- (BOOL)isAggregateComponent
{
  v2 = self->_partID - 1;
  if (v2 < 4u)
  {
    accessoryCategory = 0xEu >> (v2 & 0xF);
    return accessoryCategory & 1;
  }

  accessoryCategory = self->_accessoryCategory;
  if (accessoryCategory == 1)
  {
    return accessoryCategory & 1;
  }

  return accessoryCategory == 4 && self->_groupID != 0;
}

- (void)_setPartName
{
  if (!self->_partName && self->_name && [(CBPowerSource *)self isAggregateComponent]&& self->_partID - 2 <= 2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", self->_name, off_1E811E058[(self->_partID - 2)]];
    partName = self->_partName;
    self->_partName = v3;

    MEMORY[0x1EEE66BB8](v3, partName);
  }
}

- (id)description
{
  internalFlags = self->_internalFlags;
  v103[0] = 0;
  NSAppendPrintF(v103, "CBPowerSource");
  v4 = v103[0];
  v5 = v4;
  if ((internalFlags & 8) != 0)
  {
    v102 = v4;
    NSAppendPrintF_safe(&v102, " Mock");
    v6 = v102;

    v5 = v6;
  }

  v7 = self->_name;
  v8 = v7;
  if (v7)
  {
    v101 = v5;
    NSAppendPrintF_safe(&v101, " Nm '%@'", v7);
    v9 = v101;

    v5 = v9;
  }

  sourceID = self->_sourceID;
  if (sourceID)
  {
    v100 = v5;
    NSAppendPrintF_safe(&v100, ", SID %ld", sourceID);
    v11 = v100;

    v5 = v11;
  }

  accessoryCategory = self->_accessoryCategory;
  if (self->_accessoryCategory)
  {
    v99 = v5;
    if (accessoryCategory > 0xC)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = *(&off_1E811DF98 + accessoryCategory - 1);
    }

    NSAppendPrintF_safe(&v99, ", AcCa %@", v13);
    v14 = v99;

    v5 = v14;
  }

  v15 = self->_accessoryID;
  v16 = v15;
  if (v15)
  {
    v98 = v5;
    NSAppendPrintF_safe(&v98, ", AcID %@", v15);
    v17 = v98;

    v5 = v17;
  }

  v18 = self->_groupID;
  v19 = v18;
  if (v18)
  {
    v97 = v5;
    NSAppendPrintF_safe(&v97, ", GID %@", v18);
    v20 = v97;

    v5 = v20;
  }

  familyCode = self->_familyCode;
  if (familyCode)
  {
    v96 = v5;
    NSAppendPrintF_safe(&v96, ", FC %ld", familyCode);
    v22 = v96;

    v5 = v22;
  }

  partID = self->_partID;
  if (self->_partID)
  {
    v95 = v5;
    if (partID > 6)
    {
      v24 = 0;
    }

    else
    {
      v24 = off_1E811E028[partID - 1];
    }

    NSAppendPrintF_safe(&v95, ", PaID %@", v24);
    v25 = v95;

    v5 = v25;
  }

  productID = self->_productID;
  if (productID)
  {
    v94 = v5;
    if (productID <= 21759)
    {
      switch(productID)
      {
        case 8194:
          v27 = "AirPods1,1";
          goto LABEL_89;
        case 8195:
          v27 = "PowerBeats3,1";
          goto LABEL_89;
        case 8196:
        case 8199:
        case 8200:
        case 8225:
        case 8226:
        case 8227:
        case 8234:
        case 8235:
        case 8236:
        case 8237:
        case 8238:
          goto LABEL_47;
        case 8197:
          v27 = "BeatsX1,1";
          goto LABEL_89;
        case 8198:
          v27 = "BeatsSolo3,1";
          goto LABEL_89;
        case 8201:
          v27 = "BeatsStudio3,2";
          goto LABEL_89;
        case 8202:
          v27 = "Device1,8202";
          goto LABEL_89;
        case 8203:
          v27 = "PowerbeatsPro1,1";
          goto LABEL_89;
        case 8204:
          v27 = "BeatsSoloPro1,1";
          goto LABEL_89;
        case 8205:
          v27 = "Powerbeats4,1";
          goto LABEL_89;
        case 8206:
          v27 = "AirPodsPro1,1";
          goto LABEL_89;
        case 8207:
          v27 = "AirPods1,3";
          goto LABEL_89;
        case 8208:
          v27 = "Device1,8208";
          goto LABEL_89;
        case 8209:
          v27 = "BeatsStudioBuds1,1";
          goto LABEL_89;
        case 8210:
          v27 = "Device1,8210";
          goto LABEL_89;
        case 8211:
          v27 = "Device1,8211";
          goto LABEL_89;
        case 8212:
          v27 = "Device1,8212";
          goto LABEL_89;
        case 8213:
          v27 = "Device1,8213";
          goto LABEL_89;
        case 8214:
          v27 = "BeatsStudioBuds1,2";
          goto LABEL_89;
        case 8215:
          v27 = "BeatsStudioPro1,1";
          goto LABEL_89;
        case 8216:
          v27 = "Device1,8216";
          goto LABEL_89;
        case 8217:
          v27 = "Device1,8217";
          goto LABEL_89;
        case 8218:
          v27 = "Device1,8218";
          goto LABEL_89;
        case 8219:
          v27 = "Device1,8219";
          goto LABEL_89;
        case 8220:
          v27 = "Device1,8220";
          goto LABEL_89;
        case 8221:
          v27 = "Powerb3,1";
          goto LABEL_89;
        case 8222:
          v27 = "Device1,8222";
          goto LABEL_89;
        case 8223:
          v27 = "Device1,8223";
          goto LABEL_89;
        case 8224:
          v27 = "Device1,8224";
          goto LABEL_89;
        case 8228:
          v27 = "Device1,8228";
          goto LABEL_89;
        case 8229:
          v27 = "Device1,8229";
          goto LABEL_89;
        case 8230:
          v27 = "Device1,8230";
          goto LABEL_89;
        case 8231:
          v27 = "AirPods3,4";
          goto LABEL_89;
        case 8232:
          v27 = "Device1,8232";
          goto LABEL_89;
        case 8233:
          v27 = "Device1,8233";
          goto LABEL_89;
        case 8239:
          v27 = "Device1,8239";
          goto LABEL_89;
        default:
          if (productID == 614)
          {
            v27 = "ATVRemote1,1";
          }

          else
          {
            if (productID != 621)
            {
              goto LABEL_47;
            }

            v27 = "ATVRemote1,2";
          }

          break;
      }

      goto LABEL_89;
    }

    if (productID > 28943)
    {
      if (productID <= 29714)
      {
        if (productID == 28944)
        {
          v27 = "AudioAccessory1,2";
          goto LABEL_89;
        }

        if (productID == 29455)
        {
          v27 = "AppleTV11,1";
          goto LABEL_89;
        }
      }

      else
      {
        switch(productID)
        {
          case 29715:
            v27 = "AudioAccessory5,1";
            goto LABEL_89;
          case 65533:
            v27 = "HeGn";
            goto LABEL_89;
          case 65534:
            v27 = "ApGn";
            goto LABEL_89;
        }
      }
    }

    else if (productID <= 28419)
    {
      if (productID == 21760)
      {
        v27 = "Device1,21760";
        goto LABEL_89;
      }

      if (productID == 22034)
      {
        v27 = "Device1,22034";
        goto LABEL_89;
      }
    }

    else
    {
      switch(productID)
      {
        case 28420:
          v27 = "AppleTV5,3";
          goto LABEL_89;
        case 28936:
          v27 = "AppleTV6,2";
          goto LABEL_89;
        case 28943:
          v27 = "AudioAccessory1,1";
LABEL_89:
          NSAppendPrintF_safe(&v94, ", PID 0x%04X (%s)", productID, v27);
          v28 = v94;

          v5 = v28;
          goto LABEL_90;
      }
    }

LABEL_47:
    v27 = "?";
    goto LABEL_89;
  }

LABEL_90:
  vendorID = self->_vendorID;
  if (!self->_vendorID)
  {
    goto LABEL_106;
  }

  v93 = v5;
  v30 = "Apple";
  if (vendorID > 300)
  {
    if (vendorID > 1451)
    {
      if (vendorID == 1452)
      {
        goto LABEL_105;
      }

      if (vendorID == 2956)
      {
        v30 = "SmartTech";
        goto LABEL_105;
      }
    }

    else if (vendorID == 301 || vendorID == 1356)
    {
      v30 = "Sony";
      goto LABEL_105;
    }

LABEL_104:
    v30 = "?";
    goto LABEL_105;
  }

  if (vendorID == 6)
  {
    v30 = "MS";
    goto LABEL_105;
  }

  if (vendorID != 76)
  {
    if (vendorID == 196)
    {
      v30 = "LG";
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_105:
  NSAppendPrintF_safe(&v93, ", VID 0x%04X (%s)", vendorID, v30);
  v31 = v93;

  v5 = v31;
LABEL_106:
  vendorIDSource = self->_vendorIDSource;
  if (self->_vendorIDSource)
  {
    v33 = "?";
    if (vendorIDSource == 1)
    {
      v33 = "Bluetooth";
    }

    if (vendorIDSource == 2)
    {
      v34 = "USB";
    }

    else
    {
      v34 = v33;
    }

    v92 = v5;
    NSAppendPrintF_safe(&v92, ", VIDSrc %s", v34);
    v35 = v92;

    v5 = v35;
  }

  temperature = self->_temperature;
  if (temperature)
  {
    v91 = v5;
    NSAppendPrintF_safe(&v91, ", Temp %ld", temperature);
    v37 = v91;

    v5 = v37;
  }

  v38 = self->_type;
  v39 = v38;
  if (v38)
  {
    v90 = v5;
    NSAppendPrintF_safe(&v90, ", Type '%@'", v38);
    v40 = v90;

    v5 = v40;
  }

  v41 = self->_transportType;
  v42 = v41;
  if (v41)
  {
    v89 = v5;
    NSAppendPrintF_safe(&v89, ", TPT %@", v41);
    v43 = v89;

    v5 = v43;
  }

  if (self->_changeFlags)
  {
    v88 = v5;
    v44 = CUPrintFlags32();
    NSAppendPrintF_safe(&v88, ", CF %@", v44);
    v45 = v88;

    v5 = v45;
  }

  if (self->_internalFlags)
  {
    v87 = v5;
    v46 = CUPrintFlags32();
    NSAppendPrintF_safe(&v87, ", IF %@", v46);
    v47 = v87;

    v5 = v47;
  }

  if (self->_accessoryID)
  {
    v86 = v5;
    if (self->_present)
    {
      v48 = "yes";
    }

    else
    {
      v48 = "no";
    }

    NSAppendPrintF_safe(&v86, ", Present %s", v48);
    v49 = v86;

    v5 = v49;
  }

  maxCapacity = self->_maxCapacity;
  if (maxCapacity)
  {
    v85 = v5;
    NSAppendPrintF_safe(&v85, ", MaxC %hhu%%", maxCapacity);
    v51 = v85;

    v5 = v51;
  }

  if ([(CBPowerSource *)self isAggregateComponent])
  {
    v84 = v5;
    if ([(CBPowerSource *)self isAggregateComponent])
    {
      v52 = "yes";
    }

    else
    {
      v52 = "no";
    }

    NSAppendPrintF_safe(&v84, ", AggC %s", v52);
    v53 = v84;

    v5 = v53;
  }

  if (self->_batteryInfo)
  {
    v54 = HIBYTE(self->_batteryInfo) & 7;
    if ((v54 - 1) > 1)
    {
      v82 = v5;
      v55 = &v82;
      NSAppendPrintF_safe(&v82, ", Battery %u%% (%s)");
    }

    else
    {
      v83 = v5;
      v55 = &v83;
      NSAppendPrintF_safe(&v83, ", Battery %s%u%%");
    }

    v56 = *v55;

    v5 = v56;
  }

  if (self->_partID == 1)
  {
    v81 = v5;
    hasAllComponents = [(CBPowerSource *)self hasAllComponents];
    v58 = @"N";
    if (hasAllComponents)
    {
      v58 = @"Y";
    }

    NSAppendPrintF_safe(&v81, ", Components (%@):", v58);
    v59 = v81;

    v60 = 0;
    v61 = 1;
    v5 = v59;
    do
    {
      componentMap = self->_componentMap;
      v65 = v61;
      v66 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v61];
      v67 = [(NSMutableDictionary *)componentMap objectForKeyedSubscript:v66];

      if (v67)
      {
        if (v60)
        {
          v80 = v5;
          NSAppendPrintF(&v80, ",");
          v68 = v80;

          v5 = v68;
        }

        batteryInfo = [v67 batteryInfo];
        if (batteryInfo)
        {
          v70 = (batteryInfo >> 8) & 7;
          v71 = "";
          if (v70 == 2)
          {
            v71 = "-";
          }

          v72 = v70 == 1;
          v73 = "+";
          if (!v72)
          {
            v73 = v71;
          }

          v79 = v5;
          if (v61 > 6u)
          {
            v74 = 0;
          }

          else
          {
            v74 = off_1E811E028[v61 - 1];
          }

          NSAppendPrintF_safe(&v79, " %@ %s%u%%", v74, v73, (((batteryInfo & 0x7F) / 100.0) * 100.0));
          v75 = v79;

          v5 = v75;
        }

        if ([v67 changeFlags])
        {
          v78 = v5;
          v62 = CUPrintFlags32();
          NSAppendPrintF_safe(&v78, ", CF %@", v62);
          v63 = v78;

          v60 = 1;
          v5 = v63;
        }

        else
        {
          v60 = 1;
        }
      }

      ++v61;
    }

    while (v65 < 6);
  }

  v76 = v5;

  return v5;
}

- (void)removeFlags
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = self->_internalFlags & 8;
  self->_changeFlags = 0;
  self->_internalFlags = v2;
  if (self->_partID == 1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    allValues = [(NSMutableDictionary *)self->_componentMap allValues];
    v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v8 + 1) + 8 * v7++) removeFlags];
        }

        while (v5 != v7);
        v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)dealloc
{
  [(CBPowerSource *)self invalidate];
  v3.receiver = self;
  v3.super_class = CBPowerSource;
  [(CBPowerSource *)&v3 dealloc];
}

- (void)invalidate
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CBPowerSource *)selfCopy releaseSource];
  if (selfCopy->_partID == 1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [(NSMutableDictionary *)selfCopy->_componentMap allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          unsignedIntValue = [v8 unsignedIntValue];
          [v3 addObject:v8];
          [(CBPowerSource *)selfCopy invalidateComponentWithPartID:unsignedIntValue];
        }

        v5 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v11)
    {
      v12 = *v15;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [(NSMutableDictionary *)selfCopy->_componentMap setObject:0 forKeyedSubscript:*(*(&v14 + 1) + 8 * j), v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)releaseSource
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_psID)
  {
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    IOPSReleasePowerSource();
    v2 = obj;
    obj->_psID = 0;
  }

  objc_sync_exit(v2);
}

- (CBPowerSource)init
{
  if (!self)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = 0;
    v4.super_class = CBPowerSource;
    return [(CBPowerSource *)&v4 init];
  }

  return self;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (self->_accessoryCategory)
  {
    xpc_dictionary_set_uint64(objectCopy, "aCat", self->_accessoryCategory);
  }

  accessoryID = self->_accessoryID;
  v7 = v5;
  uTF8String = [(NSString *)accessoryID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v7, "id", uTF8String);
  }

  appearanceValue = self->_appearanceValue;
  if (appearanceValue)
  {
    xpc_dictionary_set_uint64(v7, "aprV", appearanceValue);
  }

  if (self->_batteryInfo)
  {
    xpc_dictionary_set_uint64(v7, "batI", self->_batteryInfo);
  }

  v10 = self->_componentMap;
  v11 = v10;
  if (v10)
  {
    allValues = [(NSMutableDictionary *)v10 allValues];

    if (allValues)
    {
      allValues2 = [(NSMutableDictionary *)v11 allValues];
      CUXPCEncodeNSArrayOfObjects();
    }
  }

  if (self->_deviceType)
  {
    xpc_dictionary_set_uint64(v7, "dvTy", self->_deviceType);
  }

  familyCode = self->_familyCode;
  if (familyCode)
  {
    xpc_dictionary_set_int64(v7, "famC", familyCode);
  }

  groupID = self->_groupID;
  v16 = v7;
  uTF8String2 = [(NSString *)groupID UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v16, "grID", uTF8String2);
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(v16, "intF", internalFlags);
  }

  lowWarnLevel = self->_lowWarnLevel;
  if (lowWarnLevel)
  {
    xpc_dictionary_set_int64(v16, "lwLv", lowWarnLevel);
  }

  maxCapacity = self->_maxCapacity;
  if (maxCapacity != 0.0)
  {
    xpc_dictionary_set_double(v16, "mxCp", maxCapacity);
  }

  name = self->_name;
  v22 = v16;
  uTF8String3 = [(NSString *)name UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v22, "nm", uTF8String3);
  }

  if (self->_partID)
  {
    xpc_dictionary_set_uint64(v22, "ptID", self->_partID);
  }

  partName = self->_partName;
  v25 = v22;
  uTF8String4 = [(NSString *)partName UTF8String];
  if (uTF8String4)
  {
    xpc_dictionary_set_string(v25, "ptNm", uTF8String4);
  }

  if (self->_present)
  {
    xpc_dictionary_set_BOOL(v25, "psPr", 1);
  }

  productID = self->_productID;
  if (productID)
  {
    xpc_dictionary_set_uint64(v25, "pid", productID);
  }

  sourceID = self->_sourceID;
  if (sourceID)
  {
    xpc_dictionary_set_int64(v25, "psID", sourceID);
  }

  temperature = self->_temperature;
  if (temperature)
  {
    xpc_dictionary_set_int64(v25, "pTmp", temperature);
  }

  transportType = self->_transportType;
  v31 = v25;
  uTF8String5 = [(NSString *)transportType UTF8String];
  if (uTF8String5)
  {
    xpc_dictionary_set_string(v31, "hciT", uTF8String5);
  }

  type = self->_type;
  xdict = v31;
  uTF8String6 = [(NSString *)type UTF8String];
  if (uTF8String6)
  {
    xpc_dictionary_set_string(xdict, "pTyp", uTF8String6);
  }

  if (self->_vendorID)
  {
    xpc_dictionary_set_uint64(xdict, "vid", self->_vendorID);
  }

  if (self->_vendorIDSource)
  {
    xpc_dictionary_set_uint64(xdict, "vidS", self->_vendorIDSource);
  }
}

- (CBPowerSource)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:5];
  v7 = [v4 setWithArray:{v6, v11, v12, v13, v14}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"cbPS"];

  v9 = [(CBPowerSource *)self initWithDictionary:v8 error:0];
  return v9;
}

- (CBPowerSource)initWithDictionary:(id)dictionary error:(id *)error
{
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    self = [(CBPowerSource *)self initWithXPCObject:v12 error:error];
    selfCopy = self;
  }

  else if (error)
  {
    CBErrorF(-6700, "CBPowerSource convert XPC dict failed", v6, v7, v8, v9, v10, v11, v15);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(CBPowerSource *)self dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [coderCopy encodeObject:dictionaryRepresentation forKey:@"cbPS"];
  }
}

- (CBPowerSource)initWithPowerSourceDetails:(id)details internalFlags:(unsigned int)flags
{
  v4 = *&flags;
  v73 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  if (!self)
  {
    v71.receiver = 0;
    v71.super_class = CBPowerSource;
    self = [(CBPowerSource *)&v71 init];
  }

  v7 = v4 & 4;
  v8 = 2 * v7;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = v9;
  if (v9)
  {
    self->_partID = CBPowerSourcePartIDFromString(v9);
    v8 |= 1u;
  }

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (v11)
  {
    objc_storeStrong(&self->_accessoryID, v11);
    v8 |= 1u;
  }

  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (!v12)
  {

    accessoryCategory = self->_accessoryCategory;
    if (accessoryCategory <= 6)
    {
      goto LABEL_9;
    }

LABEL_20:
    if (accessoryCategory <= 9)
    {
      if (accessoryCategory == 7)
      {
        v14 = 24;
        goto LABEL_32;
      }

      if (accessoryCategory == 8)
      {
        v14 = 25;
        goto LABEL_32;
      }
    }

    else
    {
      switch(accessoryCategory)
      {
        case 10:
          v14 = 19;
          goto LABEL_32;
        case 11:
          v14 = 49;
          goto LABEL_32;
        case 12:
          v14 = 42;
          goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  v15 = v12;
  self->_accessoryCategory = CBPowerSourceAccessoryCategoryFromString(v12);
  v8 |= 1u;

  accessoryCategory = self->_accessoryCategory;
  if (accessoryCategory > 6)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (accessoryCategory <= 3)
  {
    if (!accessoryCategory)
    {
      goto LABEL_33;
    }

    if (accessoryCategory == 3)
    {
      v14 = 26;
      goto LABEL_32;
    }

LABEL_31:
    v14 = 0;
    goto LABEL_32;
  }

  if (accessoryCategory == 4)
  {
    v14 = 20;
    goto LABEL_32;
  }

  if (accessoryCategory == 5)
  {
    v14 = 16;
    goto LABEL_32;
  }

  if (accessoryCategory != 6)
  {
    goto LABEL_31;
  }

  v14 = 51;
LABEL_32:
  self->_deviceType = v14;
  v8 |= 1u;
LABEL_33:
  CFStringGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  if (v16)
  {
    objc_storeStrong(&self->_groupID, v16);
    v8 |= 1u;
  }

  [(CBPowerSource *)self setInternalFlags:v4];
  v17 = NSDictionaryGetNSNumber();
  v18 = v17;
  if (v17)
  {
    self->_lowWarnLevel = [v17 integerValue];
    v8 |= 1u;
  }

  CFDictionaryGetDouble();
  v20 = v19;
  maxCapacity = self->_maxCapacity;
  v22 = v20 != maxCapacity;
  if (v20 == maxCapacity)
  {
    if (maxCapacity > 0.0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    maxCapacity = v20;
  }

  if (maxCapacity <= 0.0)
  {
    maxCapacity = 100.0;
  }

  self->_maxCapacity = maxCapacity;
LABEL_43:
  CFStringGetTypeID();
  v23 = CFDictionaryGetTypedValue();
  if (v23)
  {
    objc_storeStrong(&self->_name, v23);
    v24 = v8 | 1;
  }

  else
  {
    v24 = v8 | v22;
  }

  CFStringGetTypeID();
  v25 = CFDictionaryGetTypedValue();
  if (v25)
  {
    objc_storeStrong(&self->_partName, v25);
    v24 |= 1u;
  }

  if (!self->_partName)
  {
    [(CBPowerSource *)self _setPartName];
  }

  self->_present = 1;
  v26 = NSDictionaryGetNSNumber();
  v27 = v26;
  if (v26)
  {
    self->_productID = [v26 int64ValueSafe];
    v24 |= 1u;
  }

  v28 = NSDictionaryGetNSNumber();
  v29 = v28;
  if (v28)
  {
    self->_sourceID = [v28 integerValue];
    v24 |= 1u;
  }

  v30 = NSDictionaryGetNSNumber();
  v31 = v30;
  if (v30)
  {
    self->_temperature = [v30 integerValue];
    v24 |= 1u;
  }

  CFStringGetTypeID();
  v32 = CFDictionaryGetTypedValue();
  if (v32)
  {
    objc_storeStrong(&self->_transportType, v32);
    v24 |= 1u;
  }

  transportType = self->_transportType;
  if (transportType)
  {
    v34 = transportType;
    if (v34 == @"USB" || (v35 = v34, v36 = [(__CFString *)v34 isEqual:@"USB"], v35, v36))
    {
      self->_vendorIDSource = 2;
      v37 = 1;
      goto LABEL_64;
    }
  }

  else
  {
    self->_transportType = @"Bluetooth";
  }

  v37 = 0;
LABEL_64:
  CFStringGetTypeID();
  v38 = CFDictionaryGetTypedValue();
  if (v38)
  {
    objc_storeStrong(&self->_type, v38);
    v24 |= 1u;
  }

  v39 = NSDictionaryGetNSNumber();
  v40 = v39;
  if (v39)
  {
    self->_vendorID = [v39 int64ValueSafe];
    v24 |= 1u;
  }

  v41 = NSDictionaryGetNSNumber();
  v42 = v41;
  if (v41)
  {
    self->_vendorIDSource = [v41 int64ValueSafe];
    v24 |= 1u;
  }

  CFDictionaryGetDouble();
  if (v20 <= 0.0)
  {
    v44 = 0;
  }

  else
  {
    v44 = (v43 / v20 * 100.0);
  }

  if (v44 >= 100)
  {
    v45 = 100;
  }

  else
  {
    v45 = v44;
  }

  v46 = v45 & ~(v45 >> 31);
  if (self->_partID != 1)
  {
    if (CFDictionaryGetInt64())
    {
      v47 = 3;
    }

    else
    {
      v47 = v37;
    }

    if (CFDictionaryGetInt64())
    {
      v47 = 1;
    }

    if (CFDictionaryGetInt64())
    {
      v47 = 5;
    }

    if (CFDictionaryGetInt64())
    {
      v37 = 4;
    }

    else
    {
      v37 = v47;
    }

    if (v44 >= 1)
    {
      if (!v37)
      {
        LOWORD(v37) = 2;
      }

      if (![(CBPowerSource *)self isAggregateComponent])
      {
        CFStringGetTypeID();
        v48 = CFDictionaryGetTypedValue();
        v49 = v48;
        if (v48 == @"USB" || v48 && (v50 = [(__CFString *)v48 isEqual:@"USB"], v49, v50))
        {
          LOWORD(v37) = 1;
        }
      }
    }
  }

  self->_batteryInfo = v46 | (v37 << 8);
  v51 = v24 | 2;
  if (self->_partID == 1)
  {
    if (!self->_componentMap)
    {
      v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
      componentMap = self->_componentMap;
      self->_componentMap = v52;
    }

    CFArrayGetTypeID();
    v54 = CFDictionaryGetTypedValue();
    selfCopy = v54;
    if (v54)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v56 = [(CBPowerSource *)v54 countByEnumeratingWithState:&v67 objects:v72 count:16];
      if (v56)
      {
        v57 = v56;
        v66 = v24 | 2;
        v58 = *v68;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v68 != v58)
            {
              objc_enumerationMutation(selfCopy);
            }

            v60 = [[CBPowerSource alloc] initWithPowerSourceDetails:*(*(&v67 + 1) + 8 * i) internalFlags:2];
            v61 = self->_componentMap;
            v62 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[CBPowerSource partID](v60, "partID")}];
            [(NSMutableDictionary *)v61 setObject:v60 forKeyedSubscript:v62];
          }

          v57 = [(CBPowerSource *)selfCopy countByEnumeratingWithState:&v67 objects:v72 count:16];
        }

        while (v57);
        v51 = v66;
      }
    }
  }

  else
  {
    if (!v7 || ![(CBPowerSource *)self isAggregateComponent])
    {
      goto LABEL_112;
    }

    selfCopy = self;
    self = objc_alloc_init(CBPowerSource);
    [(CBPowerSource *)self setPartID:1];
    v63 = [(CBPowerSource *)self _updateAggregateWithComponent:selfCopy];

    v51 |= v63;
  }

LABEL_112:
  if (v7)
  {
    v64 = v51;
  }

  else
  {
    v64 = 0;
  }

  self->_changeFlags = v64;

  return self;
}

- (void)invalidateComponentWithPartID:(unsigned __int16)d
{
  if (self->_partID == 1 && self->_componentMap)
  {
    dCopy = d;
    v6 = [(CBPowerSource *)self componentWithPartID:?];
    if (v6)
    {
      v9 = v6;
      [v6 invalidate];
      componentMap = self->_componentMap;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:dCopy];
      [(NSMutableDictionary *)componentMap setObject:0 forKeyedSubscript:v8];

      v6 = v9;
    }
  }
}

- (BOOL)hasAllComponents
{
  if (self->_partID != 1)
  {
    return 1;
  }

  if (!self->_componentMap)
  {
    return 0;
  }

  v3 = [(CBPowerSource *)self componentWithPartID:2];
  v4 = [(CBPowerSource *)self componentWithPartID:3];
  v5 = [(CBPowerSource *)self componentWithPartID:4];
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v3)
  {
    v9 = 0;
  }

  if (((1 << (LOBYTE(self->_productID) - 2)) & 0x207C7BB7FF9BLL) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (self->_productID - 8194 <= 0x2D)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (void)setInternalFlags:(unsigned int)flags
{
  v14 = *MEMORY[0x1E69E9840];
  self->_internalFlags = flags;
  if (self->_partID == 1)
  {
    v3 = *&flags;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    allValues = [(NSMutableDictionary *)self->_componentMap allValues];
    v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v9 + 1) + 8 * v8++) setInternalFlags:v3];
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)isAppleDevice
{
  vendorID = self->_vendorID;
  if (vendorID == 1452)
  {
    return self->_vendorIDSource == 2;
  }

  if (vendorID == 76)
  {
    return self->_vendorIDSource == 1;
  }

  return 0;
}

- (void)removeBatteryInfo
{
  v12 = *MEMORY[0x1E69E9840];
  self->_batteryInfo = 0;
  if (self->_partID == 1)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    allValues = [(NSMutableDictionary *)self->_componentMap allValues];
    v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v7 + 1) + 8 * v6++) setBatteryInfo:0];
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (void)updatePartID
{
  if ([(CBPowerSource *)self isAggregateComponent]&& self->_partID == 5 && self->_accessoryCategory == 4)
  {
    self->_partID = 4;
  }
}

- (int)publish
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((selfCopy->_internalFlags & 8) == 0 && !selfCopy->_changeFlags)
  {
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    goto LABEL_39;
  }

  if (selfCopy->_partID == 1)
  {
    if ([(CBPowerSource *)selfCopy hasAllComponents]&& [(CBPowerSource *)selfCopy combinedPublish])
    {
      v3 = [(CBPowerSource *)selfCopy componentWithPartID:2];
      v4 = v3;
      if (v3)
      {
        [v3 releaseSource];
      }

      v5 = [(CBPowerSource *)selfCopy componentWithPartID:3];
      v6 = v5;
      if (v5)
      {
        [v5 releaseSource];
      }

      v7 = 1;
    }

    else
    {
      [(CBPowerSource *)selfCopy releaseSource];
      v8 = [(CBPowerSource *)selfCopy componentWithPartID:2];
      v9 = v8;
      if (v8)
      {
        [v8 setChangeFlags:{selfCopy->_changeFlags | objc_msgSend(v8, "changeFlags")}];
        [v9 publish];
      }

      v10 = [(CBPowerSource *)selfCopy componentWithPartID:3];
      v6 = v10;
      if (v10)
      {
        [v10 setChangeFlags:{selfCopy->_changeFlags | objc_msgSend(v10, "changeFlags")}];
        [v6 publish];
      }

      v7 = 0;
    }

    v11 = [(CBPowerSource *)selfCopy componentWithPartID:4];
    v12 = v11;
    if (v11)
    {
      [v11 setChangeFlags:{selfCopy->_changeFlags | objc_msgSend(v11, "changeFlags")}];
      [v12 publish];
    }

    if ((v7 & 1) == 0)
    {
LABEL_39:
      v13 = 0;
      goto LABEL_40;
    }
  }

  if (!selfCopy->_psID && (v13 = IOPSCreatePowerSource()) != 0)
  {
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else
  {
    dictionaryRepresentation = [(CBPowerSource *)selfCopy dictionaryRepresentation];
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v13 = IOPSSetPowerSourceDetails();
    if (v13 && gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

LABEL_40:
  objc_sync_exit(selfCopy);

  return v13;
}

- (id)dictionaryRepresentation
{
  v57 = *MEMORY[0x1E69E9840];
  batteryInfo = self->_batteryInfo;
  if (self->_batteryInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = v4;
    v6 = @"Audio Battery Case";
    switch(self->_accessoryCategory)
    {
      case 0u:
        goto LABEL_16;
      case 1u:
        goto LABEL_15;
      case 2u:
        v6 = @"Battery Case";
        goto LABEL_15;
      case 3u:
        v6 = @"Game Controller";
        goto LABEL_15;
      case 4u:
        v6 = @"Headphone";
        goto LABEL_15;
      case 5u:
        v6 = @"Headset";
        goto LABEL_15;
      case 6u:
        v6 = @"HearingAid";
        goto LABEL_15;
      case 7u:
        v6 = @"Keyboard";
        goto LABEL_15;
      case 8u:
        v6 = @"Mouse";
        goto LABEL_15;
      case 9u:
        v6 = @"Pencil";
        goto LABEL_15;
      case 0xAu:
        v6 = @"Speaker";
        goto LABEL_15;
      case 0xBu:
        v6 = @"Trackpad";
        goto LABEL_15;
      case 0xCu:
        v6 = @"Watch";
        goto LABEL_15;
      default:
        v6 = @"Unknown";
LABEL_15:
        [v4 setObject:v6 forKeyedSubscript:@"Accessory Category"];
LABEL_16:
        accessoryID = self->_accessoryID;
        if (accessoryID)
        {
          [v5 setObject:accessoryID forKeyedSubscript:@"Accessory Identifier"];
        }

        if (self->_partID == 1 && [(CBPowerSource *)self hasAllComponents]&& [(CBPowerSource *)self combinedPublish])
        {
          v8 = [(CBPowerSource *)self componentWithPartID:2];
          v9 = v8;
          if (v8)
          {
            dictionaryRepresentation = [v8 dictionaryRepresentation];
            if (dictionaryRepresentation)
            {
              v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v11 addObject:dictionaryRepresentation];
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }

          v12 = [(CBPowerSource *)self componentWithPartID:3];
          v13 = v12;
          if (v12)
          {
            dictionaryRepresentation2 = [v12 dictionaryRepresentation];
            if (dictionaryRepresentation2)
            {
              if (!v11)
              {
                v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v11 addObject:dictionaryRepresentation2];
            }
          }

          if (v11)
          {
            [v5 setObject:v11 forKeyedSubscript:@"Combined Parts"];
          }
        }

        v15 = (batteryInfo >> 8) & 7;
        CFArrayGetTypeID();
        v16 = CFDictionaryGetTypedValue();
        v17 = v16;
        if (v16)
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v18 = [v16 countByEnumeratingWithState:&v51 objects:v56 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v52;
            LODWORD(v21) = 100;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v52 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v23 = NSDictionaryGetNSNumber();
                intValue = [v23 intValue];
                if (intValue >= v21)
                {
                  v21 = v21;
                }

                else
                {
                  v21 = intValue;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
            }

            while (v19);
          }

          else
          {
            v21 = 100;
          }
        }

        else
        {
          v21 = (((batteryInfo & 0x7F) / 100.0) * 100.0);
        }

        v25 = [MEMORY[0x1E696AD98] numberWithInt:v21];
        [v5 setObject:v25 forKeyedSubscript:@"Current Capacity"];

        v26 = [MEMORY[0x1E696AD98] numberWithInt:v15 == 5];
        [v5 setObject:v26 forKeyedSubscript:@"Dynamic End of Charging Engaged"];

        groupID = self->_groupID;
        if (groupID)
        {
          [v5 setObject:groupID forKeyedSubscript:@"Group Identifier"];
        }

        v29 = v15 == 1 || v15 == 4;
        v30 = [MEMORY[0x1E696AD98] numberWithInt:v29];
        [v5 setObject:v30 forKeyedSubscript:@"Is Charging"];

        maxCapacity = self->_maxCapacity;
        if (maxCapacity <= 0.0)
        {
          v32 = v21 == 100;
        }

        else
        {
          v32 = maxCapacity == v21;
        }

        v33 = [MEMORY[0x1E696AD98] numberWithBool:v32];
        [v5 setObject:v33 forKeyedSubscript:@"Is Charged"];

        v34 = [MEMORY[0x1E696AD98] numberWithBool:self->_present];
        [v5 setObject:v34 forKeyedSubscript:@"Is Present"];

        v35 = [MEMORY[0x1E696AD98] numberWithInteger:self->_lowWarnLevel];
        [v5 setObject:v35 forKeyedSubscript:@"Low Warn Level"];

        v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxCapacity];
        [v5 setObject:v36 forKeyedSubscript:@"Max Capacity"];

        if ((self->_internalFlags & 8) != 0)
        {
          [v5 setObject:&unk_1F40209A8 forKeyedSubscript:@"Mock"];
        }

        name = self->_name;
        if (name)
        {
          [v5 setObject:name forKeyedSubscript:@"Name"];
        }

        v38 = [MEMORY[0x1E696AD98] numberWithInt:v15 == 4];
        [v5 setObject:v38 forKeyedSubscript:@"Optimized Battery Charging Engaged"];

        v39 = 0;
        partID = self->_partID;
        if (partID <= 2)
        {
          if (!self->_partID)
          {
            goto LABEL_80;
          }

          if (partID == 1)
          {
            v39 = @"Combined";
          }

          else if (partID == 2)
          {
            v39 = @"Left";
          }
        }

        else if (self->_partID > 4u)
        {
          if (partID == 5)
          {
            v39 = @"Other";
          }

          else if (partID == 6)
          {
            v39 = @"Single";
          }
        }

        else if (partID == 3)
        {
          v39 = @"Right";
        }

        else if (partID == 4)
        {
          v39 = @"Case";
        }

        [v5 setObject:v39 forKeyedSubscript:@"Part Identifier"];
LABEL_80:
        partName = self->_partName;
        if (partName)
        {
          [v5 setObject:partName forKeyedSubscript:@"Part Name"];
        }

        if (self->_productID)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          [v5 setObject:v42 forKeyedSubscript:@"Product ID"];
        }

        if (self->_sourceID)
        {
          v43 = [MEMORY[0x1E696AD98] numberWithInteger:?];
          [v5 setObject:v43 forKeyedSubscript:@"Power Source ID"];
        }

        if (((v15 == 1) & ![(CBPowerSource *)self isAggregateComponent]) != 0)
        {
          v44 = @"AC Power";
        }

        else
        {
          v44 = @"Battery Power";
        }

        [v5 setObject:v44 forKeyedSubscript:@"Power Source State"];
        [v5 setObject:&unk_1F40209C0 forKeyedSubscript:@"Time to Full Charge"];
        if (self->_temperature)
        {
          v45 = [MEMORY[0x1E696AD98] numberWithInteger:?];
          [v5 setObject:v45 forKeyedSubscript:@"Temperature"];
        }

        transportType = self->_transportType;
        if (transportType)
        {
          [v5 setObject:transportType forKeyedSubscript:@"Transport Type"];
        }

        type = self->_type;
        if (type)
        {
          [v5 setObject:type forKeyedSubscript:@"Type"];
        }

        if (self->_vendorID)
        {
          v48 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
          [v5 setObject:v48 forKeyedSubscript:@"Vendor ID"];
        }

        if (self->_vendorIDSource)
        {
          v49 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
          [v5 setObject:v49 forKeyedSubscript:@"Vendor ID Source"];
        }

        break;
    }
  }

  else
  {
    [(CBPowerSource *)self dictionaryRepresentation];
    v5 = v55;
  }

  return v5;
}

- (unsigned)updateWithCBPowerSource:(id)source
{
  v97 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  changeFlags = self->_changeFlags;
  if (![sourceCopy isAggregateComponent] || self->_partID != 1)
  {
    accessoryCategory = [sourceCopy accessoryCategory];
    if (accessoryCategory && accessoryCategory != self->_accessoryCategory)
    {
      self->_accessoryCategory = accessoryCategory;
      changeFlags |= 1u;
    }

    appearanceValue = [sourceCopy appearanceValue];
    if (appearanceValue && appearanceValue != self->_appearanceValue)
    {
      self->_appearanceValue = appearanceValue;
      changeFlags |= 1u;
    }

    accessoryID = [sourceCopy accessoryID];
    v10 = accessoryID;
    if (accessoryID)
    {
      accessoryID = self->_accessoryID;
      v12 = accessoryID;
      v13 = accessoryID;
      v14 = v13;
      if (v12 == v13)
      {
      }

      else
      {
        if (!v13)
        {

          goto LABEL_21;
        }

        v15 = [(NSString *)v12 isEqual:v13];

        if ((v15 & 1) == 0)
        {
LABEL_21:
          objc_storeStrong(&self->_accessoryID, v10);
          changeFlags |= 1u;
          batteryInfo = [sourceCopy batteryInfo];
          if (self->_partID != 1)
          {
LABEL_22:
            if (batteryInfo == self->_batteryInfo)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

LABEL_17:
          v17 = ((batteryInfo & 0x7F) / 100.0);
          if (!v17 || 100 * v17 >= 100 * ((self->_batteryInfo & 0x7F) / 100.0))
          {
LABEL_24:
            groupID = [sourceCopy groupID];
            v19 = groupID;
            if (groupID)
            {
              groupID = self->_groupID;
              v21 = groupID;
              v22 = groupID;
              v23 = v22;
              if (v21 == v22)
              {
              }

              else
              {
                if (!v22)
                {

                  goto LABEL_55;
                }

                v24 = [(NSString *)v21 isEqual:v22];

                if ((v24 & 1) == 0)
                {
LABEL_55:
                  objc_storeStrong(&self->_groupID, v19);
                  changeFlags |= 1u;
                  internalFlags = [sourceCopy internalFlags];
                  if (internalFlags == self->_internalFlags)
                  {
LABEL_32:
                    lowWarnLevel = [sourceCopy lowWarnLevel];
                    lowWarnLevel = self->_lowWarnLevel;
                    v90 = v19;
                    v91 = v10;
                    if (lowWarnLevel)
                    {
                      if (lowWarnLevel == lowWarnLevel)
                      {
LABEL_38:
                        [sourceCopy maxCapacity];
                        v29 = changeFlags | 1;
                        v30 = maxCapacity > 0.0 && maxCapacity != self->_maxCapacity;
                        if (v30)
                        {
                          v31 = changeFlags | 1;
                        }

                        else
                        {
                          maxCapacity = self->_maxCapacity;
                          v31 = changeFlags;
                        }

                        if (v30 || maxCapacity <= 0.0)
                        {
                          if (maxCapacity <= 0.0)
                          {
                            maxCapacity = 100.0;
                          }

                          self->_maxCapacity = maxCapacity;
                        }

                        name = [sourceCopy name];
                        v33 = name;
                        if (name)
                        {
                          name = self->_name;
                          v35 = name;
                          v36 = name;
                          v37 = name;
                          v38 = v37;
                          if (v36 == v37)
                          {

                            v33 = v35;
                          }

                          else
                          {
                            if (!v37)
                            {

                              v33 = v35;
                              goto LABEL_58;
                            }

                            v39 = [(NSString *)v36 isEqual:v37];

                            v33 = v35;
                            if ((v39 & 1) == 0)
                            {
LABEL_58:
                              objc_storeStrong(&self->_name, v33);
                              v31 = v29;
                              partID = [sourceCopy partID];
                              if (!partID)
                              {
                                goto LABEL_61;
                              }

LABEL_59:
                              if (partID != self->_partID)
                              {
                                self->_partID = partID;
                                v31 = v29;
                              }

LABEL_61:
                              partName = [sourceCopy partName];
                              v42 = partName;
                              if (partName)
                              {
                                partName = self->_partName;
                                v44 = partName;
                                v45 = partName;
                                v46 = partName;
                                v47 = v46;
                                if (v45 == v46)
                                {
                                }

                                else
                                {
                                  if (!v46)
                                  {

                                    goto LABEL_73;
                                  }

                                  v48 = [(NSString *)v45 isEqual:v46];

                                  if ((v48 & 1) == 0)
                                  {
LABEL_73:
                                    v42 = v44;
                                    objc_storeStrong(&self->_partName, v44);
                                    v31 |= 1u;
                                    if (!self->_partName)
                                    {
LABEL_74:
                                      [(CBPowerSource *)self _setPartName];
                                      present = [sourceCopy present];
                                      if (self->_present != present)
                                      {
LABEL_75:
                                        self->_present = present;
                                        v31 |= 1u;
                                        productID = [sourceCopy productID];
                                        if (!productID)
                                        {
                                          goto LABEL_78;
                                        }

                                        goto LABEL_76;
                                      }

LABEL_70:
                                      productID = [sourceCopy productID];
                                      if (!productID)
                                      {
                                        goto LABEL_78;
                                      }

LABEL_76:
                                      if (productID != self->_productID)
                                      {
                                        self->_productID = productID;
                                        v31 |= 1u;
                                      }

LABEL_78:
                                      sourceID = [sourceCopy sourceID];
                                      if (sourceID && sourceID != self->_sourceID)
                                      {
                                        self->_sourceID = sourceID;
                                      }

                                      temperature = [sourceCopy temperature];
                                      if (temperature && temperature != self->_temperature)
                                      {
                                        self->_temperature = temperature;
                                        v31 |= 1u;
                                      }

                                      transportType = [sourceCopy transportType];
                                      v54 = transportType;
                                      if (transportType)
                                      {
                                        transportType = self->_transportType;
                                        v56 = transportType;
                                        v57 = transportType;
                                        v58 = v57;
                                        if (v56 != v57)
                                        {
                                          v59 = v33;
                                          v60 = v54;
                                          if (v57)
                                          {
                                            v61 = [(NSString *)v56 isEqual:v57];

                                            if (v61)
                                            {
                                              v54 = v60;
                                              goto LABEL_95;
                                            }
                                          }

                                          else
                                          {
                                          }

                                          v54 = v60;
                                          objc_storeStrong(&self->_transportType, v60);
                                          v31 |= 1u;
LABEL_95:
                                          v33 = v59;
                                          v62 = self->_transportType;
                                          if (!v62)
                                          {
LABEL_96:
                                            self->_transportType = @"Bluetooth";

                                            type = [sourceCopy type];
                                            if (!type)
                                            {
                                              goto LABEL_102;
                                            }

LABEL_97:
                                            type = self->_type;
                                            v65 = type;
                                            v66 = type;
                                            v67 = v66;
                                            if (v65 != v66)
                                            {
                                              v88 = v42;
                                              v68 = v33;
                                              v69 = v54;
                                              if (v66)
                                              {
                                                v70 = [(NSString *)v65 isEqual:v66];

                                                if (v70)
                                                {
LABEL_107:
                                                  v54 = v69;
                                                  v33 = v68;
                                                  v42 = v88;
                                                  v71 = self->_type;
                                                  if (!v71)
                                                  {
LABEL_108:
                                                    self->_type = @"Accessory Source";

                                                    vendorID = [sourceCopy vendorID];
                                                    if (!vendorID)
                                                    {
                                                      goto LABEL_111;
                                                    }

                                                    goto LABEL_109;
                                                  }

LABEL_103:
                                                  vendorID = [sourceCopy vendorID];
                                                  if (!vendorID)
                                                  {
                                                    goto LABEL_111;
                                                  }

LABEL_109:
                                                  if (vendorID != self->_vendorID)
                                                  {
                                                    self->_vendorID = vendorID;
                                                    v31 |= 1u;
                                                  }

LABEL_111:
                                                  vendorIDSource = [sourceCopy vendorIDSource];
                                                  if (vendorIDSource && vendorIDSource != self->_vendorIDSource)
                                                  {
                                                    self->_vendorIDSource = vendorIDSource;
                                                    v31 |= 1u;
                                                  }

                                                  if (((self->_batteryInfo == 0) & ((v31 & 2) >> 1)) != 0)
                                                  {
                                                    v6 = v31 | 0x10;
                                                  }

                                                  else
                                                  {
                                                    v6 = v31;
                                                  }

                                                  if ([sourceCopy partID] == 1 && self->_partID == 1)
                                                  {
                                                    v86 = v54;
                                                    v87 = v33;
                                                    v89 = v42;
                                                    v94 = 0u;
                                                    v95 = 0u;
                                                    v92 = 0u;
                                                    v93 = 0u;
                                                    components = [sourceCopy components];
                                                    allValues = [components allValues];

                                                    v76 = [allValues countByEnumeratingWithState:&v92 objects:v96 count:16];
                                                    if (v76)
                                                    {
                                                      v77 = v76;
                                                      v78 = *v93;
                                                      do
                                                      {
                                                        for (i = 0; i != v77; ++i)
                                                        {
                                                          if (*v93 != v78)
                                                          {
                                                            objc_enumerationMutation(allValues);
                                                          }

                                                          v80 = *(*(&v92 + 1) + 8 * i);
                                                          v81 = -[CBPowerSource componentWithPartID:](self, "componentWithPartID:", [v80 partID]);
                                                          v82 = v81;
                                                          if (v81)
                                                          {
                                                            [v81 setChangeFlags:0];
                                                          }

                                                          v6 |= [(CBPowerSource *)self _updateAggregateWithComponent:v80];
                                                        }

                                                        v77 = [allValues countByEnumeratingWithState:&v92 objects:v96 count:16];
                                                      }

                                                      while (v77);
                                                    }

                                                    v84 = v90;
                                                    v83 = v91;
                                                    v33 = v87;
                                                    v42 = v89;
                                                    v54 = v86;
                                                    self->_changeFlags = v6;
                                                    self->_present = (v6 & 0x10) == 0;
                                                    if (!v6)
                                                    {
                                                      goto LABEL_135;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v84 = v90;
                                                    v83 = v91;
                                                    self->_changeFlags = v6;
                                                    self->_present = (v6 & 0x10) == 0;
                                                    if (!v6)
                                                    {
LABEL_135:

                                                      goto LABEL_136;
                                                    }
                                                  }

                                                  if (![(CBPowerSource *)self isAggregateComponent]&& gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
                                                  {
                                                    [CBPowerSource updateWithCBPowerSource:];
                                                  }

                                                  goto LABEL_135;
                                                }
                                              }

                                              else
                                              {
                                              }

                                              objc_storeStrong(&self->_type, type);
                                              v31 |= 1u;
                                              goto LABEL_107;
                                            }

LABEL_102:
                                            v71 = self->_type;
                                            if (!v71)
                                            {
                                              goto LABEL_108;
                                            }

                                            goto LABEL_103;
                                          }

LABEL_91:
                                          type = [sourceCopy type];
                                          if (!type)
                                          {
                                            goto LABEL_102;
                                          }

                                          goto LABEL_97;
                                        }
                                      }

                                      v62 = self->_transportType;
                                      if (!v62)
                                      {
                                        goto LABEL_96;
                                      }

                                      goto LABEL_91;
                                    }

LABEL_69:
                                    present = [sourceCopy present];
                                    if (self->_present != present)
                                    {
                                      goto LABEL_75;
                                    }

                                    goto LABEL_70;
                                  }
                                }

                                v42 = v44;
                              }

                              if (!self->_partName)
                              {
                                goto LABEL_74;
                              }

                              goto LABEL_69;
                            }
                          }
                        }

                        partID = [sourceCopy partID];
                        if (!partID)
                        {
                          goto LABEL_61;
                        }

                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      if (lowWarnLevel)
                      {
                        goto LABEL_38;
                      }

                      lowWarnLevel = 20;
                    }

                    self->_lowWarnLevel = lowWarnLevel;
                    goto LABEL_38;
                  }

LABEL_31:
                  [(CBPowerSource *)self setInternalFlags:internalFlags];
                  goto LABEL_32;
                }
              }
            }

            internalFlags = [sourceCopy internalFlags];
            if (internalFlags == self->_internalFlags)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

LABEL_23:
          self->_batteryInfo = batteryInfo;
          changeFlags |= 2u;
          goto LABEL_24;
        }
      }
    }

    batteryInfo = [sourceCopy batteryInfo];
    if (self->_partID != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v6 = [(CBPowerSource *)self _updateAggregateWithComponent:sourceCopy];
LABEL_136:

  return v6;
}

- (CBPowerSource)initWithXPCObject:(id)object error:(id *)error
{
  v90 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v88.receiver = self;
  v88.super_class = CBPowerSource;
  v13 = [(CBPowerSource *)&v88 init];
  if (!v13)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v73 = "CBPowerSource super init failed";
LABEL_58:
    CBErrorF(-6756, v73, v7, v8, v9, v10, v11, v12, v74);
    *error = v71 = 0;
    goto LABEL_52;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v73 = "XPC non-dict";
    goto LABEL_58;
  }

  v89 = 0;
  v14 = OUTLINED_FUNCTION_1_1();
  v19 = OUTLINED_FUNCTION_4_0(v14, v15, v16, v17, v18);
  if (v19 == 6)
  {
    v13->_accessoryCategory = v89;
  }

  else if (v19 == 5)
  {
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_59;
  }

  v89 = 0;
  OUTLINED_FUNCTION_1_1();
  v20 = CUXPCDecodeUInt64RangedEx();
  if (v20 == 6)
  {
    v13->_appearanceValue = v89;
  }

  else if (v20 == 5)
  {
    goto LABEL_59;
  }

  v89 = 0;
  v21 = OUTLINED_FUNCTION_1_1();
  v26 = OUTLINED_FUNCTION_4_0(v21, v22, v23, v24, v25);
  if (v26 == 6)
  {
    v13->_batteryInfo = v89;
    goto LABEL_13;
  }

  if (v26 == 5)
  {
LABEL_59:
    v71 = 0;
    goto LABEL_52;
  }

LABEL_13:
  v87 = 0;
  objc_opt_class();
  CUXPCDecodeNSArrayOfClass();
  v89 = 0;
  OUTLINED_FUNCTION_1_1();
  v27 = CUXPCDecodeUInt64RangedEx();
  if (v27 == 6)
  {
    v13->_deviceType = v89;
  }

  else if (v27 == 5)
  {
    goto LABEL_53;
  }

  v89 = 0;
  v34 = OUTLINED_FUNCTION_2_2(v27, "famC", v28, v29, v30, v31, v32, v33, v74, v78, v82, v83, v84, v85, v86);
  if (v34 == 6)
  {
    v13->_familyCode = v89;
  }

  else if (v34 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  v89 = 0;
  OUTLINED_FUNCTION_1_1();
  v35 = CUXPCDecodeUInt64RangedEx();
  if (v35 == 6)
  {
    v13->_internalFlags = v89;
  }

  else if (v35 == 5)
  {
    goto LABEL_53;
  }

  v89 = 0;
  v42 = OUTLINED_FUNCTION_2_2(v35, "lwLv", v36, v37, v38, v39, v40, v41, v75, v79, v82, v83, v84, v85, v86);
  if (v42 == 6)
  {
    v13->_lowWarnLevel = v89;
  }

  else if (v42 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  v89 = 0;
  v43 = OUTLINED_FUNCTION_1_1();
  v48 = OUTLINED_FUNCTION_4_0(v43, v44, v45, v46, v47);
  if (v48 == 6)
  {
    v13->_partID = v89;
  }

  else if (v48 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_53;
  }

  v89 = 0;
  OUTLINED_FUNCTION_1_1();
  v49 = CUXPCDecodeUInt64RangedEx();
  if (v49 == 6)
  {
    v13->_productID = v89;
  }

  else if (v49 == 5)
  {
    goto LABEL_53;
  }

  v89 = 0;
  v56 = OUTLINED_FUNCTION_2_2(v49, "psID", v50, v51, v52, v53, v54, v55, v76, v80, v82, v83, v84, v85, v86);
  if (v56 == 6)
  {
    v13->_sourceID = v89;
  }

  else if (v56 == 5)
  {
    goto LABEL_53;
  }

  v89 = 0;
  v63 = OUTLINED_FUNCTION_2_2(v56, "pTmp", v57, v58, v59, v60, v61, v62, v77, v81, v82, v83, v84, v85, v86);
  if (v63 == 6)
  {
    v13->_temperature = v89;
  }

  else if (v63 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  v89 = 0;
  v64 = OUTLINED_FUNCTION_1_1();
  v69 = OUTLINED_FUNCTION_4_0(v64, v65, v66, v67, v68);
  if (v69 == 6)
  {
    v13->_vendorID = v89;
  }

  else if (v69 == 5)
  {
    goto LABEL_53;
  }

  v89 = 0;
  OUTLINED_FUNCTION_1_1();
  v70 = CUXPCDecodeUInt64RangedEx();
  if (v70 != 6)
  {
    if (v70 != 5)
    {
      goto LABEL_50;
    }

LABEL_53:
    v71 = 0;
    goto LABEL_51;
  }

  v13->_vendorIDSource = v89;
LABEL_50:
  v71 = v13;
LABEL_51:

LABEL_52:
  return v71;
}

- (BOOL)combinedPublish
{
  if (self->_partID != 1)
  {
    return 0;
  }

  v3 = [(CBPowerSource *)self componentWithPartID:2];
  v4 = v3;
  if (v3)
  {
    if (![v3 batteryInfo])
    {

      return 0;
    }

    batteryInfo = [v4 batteryInfo];
  }

  else
  {
    batteryInfo = 0;
  }

  v6 = [(CBPowerSource *)self componentWithPartID:3];
  v7 = v6;
  if (!v6)
  {
    batteryInfo2 = 0;
    goto LABEL_10;
  }

  if (![v6 batteryInfo])
  {

    return 0;
  }

  batteryInfo2 = [v7 batteryInfo];
LABEL_10:

  v9 = OUTLINED_FUNCTION_7_0(batteryInfo & 0x7F);
  v11 = ((batteryInfo2 & 0x7F) / v10) * v10;
  if (v9 >= v11)
  {
    v12 = v9 - v11;
  }

  else
  {
    v12 = v11 - v9;
  }

  if ((((batteryInfo2 >> 8) ^ (batteryInfo >> 8)) & 7) != 0)
  {
    v13 = (((batteryInfo >> 8) & 5) == 1) ^ (((batteryInfo2 >> 8) & 5) != 1);
  }

  else
  {
    v13 = 1;
  }

  return v12 < 10.0 && v13;
}

- (id)componentWithPartID:(unsigned __int16)d
{
  componentMap = self->_componentMap;
  if (componentMap)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:d];
    componentMap = [componentMap objectForKeyedSubscript:v4];
  }

  return componentMap;
}

- (unsigned)_updateAggregateWithComponent:(id)component
{
  v130 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  if (self->_partID != 1)
  {
    v101 = 0;
    goto LABEL_185;
  }

  if (!self->_componentMap)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    componentMap = self->_componentMap;
    self->_componentMap = v5;
  }

  v7 = componentCopy;
  if (![v7 partID])
  {
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v101 = 0;
    goto LABEL_184;
  }

  [v7 updatePartID];
  changeFlags = self->_changeFlags;
  partID = [v7 partID];
  v10 = [(CBPowerSource *)self componentWithPartID:partID];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_alloc_init(CBPowerSource);
    [(CBPowerSource *)v11 setChangeFlags:[(CBPowerSource *)v11 changeFlags]| 8];
    changeFlags |= 4u;
  }

  v12 = [(CBPowerSource *)v11 updateWithCBPowerSource:v7];
  v13 = self->_componentMap;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:partID];
  [(NSMutableDictionary *)v13 setObject:v11 forKeyedSubscript:v14];

  v15 = partID & 0xFFFE;
  accessoryCategory = [v7 accessoryCategory];
  if (accessoryCategory)
  {
    v17 = v15 != 2 || accessoryCategory == self->_accessoryCategory;
    v18 = v17;
    if (!self->_accessoryCategory || !v18)
    {
      self->_accessoryCategory = accessoryCategory;
      changeFlags |= 1u;
    }
  }

  accessoryID = [v7 accessoryID];
  v107 = v15;
  v106 = accessoryID;
  if (accessoryID)
  {
    v20 = accessoryID;
    accessoryID = self->_accessoryID;
    if (!accessoryID)
    {
      goto LABEL_23;
    }

    if (v15 == 2)
    {
      v13 = accessoryID;
      v22 = accessoryID;
      OUTLINED_FUNCTION_5_2();
      if (v17)
      {

        goto LABEL_24;
      }

      v23 = OUTLINED_FUNCTION_8_0();

      v20 = v106;
      if ((v23 & 1) == 0)
      {
LABEL_23:
        objc_storeStrong(&self->_accessoryID, v20);
        changeFlags |= 1u;
      }
    }
  }

LABEL_24:
  appearanceValue = [v7 appearanceValue];
  v108 = v7;
  if (appearanceValue && appearanceValue != self->_appearanceValue)
  {
    self->_appearanceValue = appearanceValue;
    changeFlags |= 1u;
  }

  v104 = v11;
  v105 = componentCopy;
  v25 = OUTLINED_FUNCTION_7_0(self->_batteryInfo & 0x7F);
  if (v25 >= 100)
  {
    v26 = 100;
  }

  else
  {
    v26 = v25;
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 100;
  }

  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  allValues = [(NSMutableDictionary *)self->_componentMap allValues];
  v29 = [allValues countByEnumeratingWithState:&v118 objects:v129 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v119;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v119 != v31)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v118 + 1) + 8 * i);
        if (([(NSMutableDictionary *)v13 changeFlags]& 0x10) == 0)
        {
          v33 = ((([(NSMutableDictionary *)v13 batteryInfo]& 0x7F) / 100.0) * 100.0);
          if (v27 >= v33)
          {
            v27 = v33;
          }
        }
      }

      v30 = [allValues countByEnumeratingWithState:&v118 objects:v129 count:16];
    }

    while (v30);
  }

  if (v27 == v25)
  {
    v7 = v108;
    v34 = changeFlags;
  }

  else
  {
    if (v27 >= 100)
    {
      v35 = 100;
    }

    else
    {
      v35 = v27;
    }

    self->_batteryInfo = self->_batteryInfo & 0x700 | v35 & ~(v35 >> 31);
    v34 = changeFlags | 1;
    v7 = v108;
  }

  deviceType = [v7 deviceType];
  if (deviceType && deviceType != self->_deviceType)
  {
    self->_deviceType = deviceType;
    v34 |= 1u;
  }

  v110 = v34;
  groupID = [v7 groupID];
  location = self;
  v103 = groupID;
  if (!groupID)
  {
    goto LABEL_78;
  }

  v38 = groupID;
  groupID = self->_groupID;
  v40 = groupID;
  v41 = groupID;
  v13 = v41;
  if (v40 == v41)
  {
  }

  else
  {
    if (v41)
    {
      allValues = [(NSMutableDictionary *)v40 isEqual:v41];

      if (allValues)
      {
        goto LABEL_78;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_groupID, v38);
    OUTLINED_FUNCTION_0_4();
    memset(v117, 0, sizeof(v117));
    allValues2 = [(NSMutableDictionary *)self->_componentMap allValues];
    v43 = [(NSMutableDictionary *)allValues2 countByEnumeratingWithState:v117 objects:v128 count:16];
    if (v43)
    {
      v44 = v43;
      while (1)
      {
        for (j = 0; j != v44; ++j)
        {
          OUTLINED_FUNCTION_4_2();
          if (!v17)
          {
            objc_enumerationMutation(allValues2);
          }

          v46 = *(*(&v117[0] + 1) + 8 * j);
          changeFlags = [v46 changeFlags];
          if ((changeFlags & 0x10) == 0)
          {
            allValues = [v46 groupID];
            v13 = v40;
            v49 = allValues;
            OUTLINED_FUNCTION_5_2();
            if (v17)
            {

              continue;
            }

            if (!allValues)
            {

LABEL_71:
              [v46 setGroupID:v13];
              changeFlags = [v46 setChangeFlags:{objc_msgSend(v46, "changeFlags") | 1}];
              continue;
            }

            v50 = OUTLINED_FUNCTION_8_0();

            if ((v50 & 1) == 0)
            {
              goto LABEL_71;
            }
          }
        }

        v44 = OUTLINED_FUNCTION_9(changeFlags, v48, v117, v128);
        if (!v44)
        {
          v40 = allValues2;
          v7 = v108;
          goto LABEL_76;
        }
      }
    }

    v40 = allValues2;
LABEL_76:
    self = location;
  }

LABEL_78:
  internalFlags = [v7 internalFlags];
  memset(v116, 0, sizeof(v116));
  allValues3 = [(NSMutableDictionary *)self->_componentMap allValues];
  if ([allValues3 countByEnumeratingWithState:v116 objects:v127 count:16])
  {
    do
    {
      OUTLINED_FUNCTION_4_2();
      if (!v17)
      {
        objc_enumerationMutation(allValues3);
      }

      if ((OUTLINED_FUNCTION_10(*(&v116[0] + 1)) & 0x10) == 0)
      {
        internalFlags = [(NSMutableDictionary *)v13 internalFlags]| internalFlags;
      }

      OUTLINED_FUNCTION_6_0();
    }

    while (!v17 || OUTLINED_FUNCTION_9(v53, v54, v116, v127));
  }

  if (internalFlags != self->_internalFlags)
  {
    [(CBPowerSource *)self setInternalFlags:internalFlags];
  }

  lowWarnLevel = [v7 lowWarnLevel];
  memset(v115, 0, sizeof(v115));
  allValues4 = [(NSMutableDictionary *)self->_componentMap allValues];
  if ([allValues4 countByEnumeratingWithState:v115 objects:v126 count:16])
  {
    do
    {
      OUTLINED_FUNCTION_4_2();
      if (!v17)
      {
        objc_enumerationMutation(allValues4);
      }

      if ((OUTLINED_FUNCTION_10(*(&v115[0] + 1)) & 0x10) == 0 && [(NSMutableDictionary *)v13 lowWarnLevel]< lowWarnLevel)
      {
        lowWarnLevel = [(NSMutableDictionary *)v13 lowWarnLevel];
      }

      OUTLINED_FUNCTION_6_0();
    }

    while (!v17 || OUTLINED_FUNCTION_9(v57, v58, v115, v126));
  }

  lowWarnLevel = self->_lowWarnLevel;
  if (lowWarnLevel)
  {
    if (lowWarnLevel != lowWarnLevel)
    {
      self->_lowWarnLevel = lowWarnLevel;
      OUTLINED_FUNCTION_0_4();
    }
  }

  else if (!lowWarnLevel)
  {
    self->_lowWarnLevel = 20;
  }

  memset(v114, 0, sizeof(v114));
  allValues5 = [(NSMutableDictionary *)self->_componentMap allValues];
  if ([allValues5 countByEnumeratingWithState:v114 objects:v125 count:16])
  {
    v61 = 2.22507386e-308;
    do
    {
      OUTLINED_FUNCTION_4_2();
      if (!v17)
      {
        objc_enumerationMutation(allValues5);
      }

      if ((OUTLINED_FUNCTION_10(*(&v114[0] + 1)) & 0x10) == 0)
      {
        [(NSMutableDictionary *)v13 maxCapacity];
        if (v61 <= v62)
        {
          [(NSMutableDictionary *)v13 maxCapacity];
          v61 = v63;
        }
      }

      OUTLINED_FUNCTION_6_0();
    }

    while (!v17 || [allValues5 countByEnumeratingWithState:v114 objects:v125 count:16]);

    if (v61 != 2.22507386e-308 && v61 != self->_maxCapacity)
    {
      self->_maxCapacity = v61;
      OUTLINED_FUNCTION_0_4();
    }
  }

  else
  {
  }

  name = [v7 name];
  v66 = name;
  if (!name)
  {
    goto LABEL_125;
  }

  name = self->_name;
  if (!name)
  {
    goto LABEL_123;
  }

  if (v107 == 2)
  {
    v13 = name;
    v68 = name;
    OUTLINED_FUNCTION_5_2();
    if (v17)
    {

      goto LABEL_124;
    }

    v69 = OUTLINED_FUNCTION_8_0();

    if ((v69 & 1) == 0)
    {
LABEL_123:
      objc_storeStrong(&self->_name, v66);
      OUTLINED_FUNCTION_0_4();
    }
  }

LABEL_124:
  v7 = v108;
LABEL_125:
  if (self->_partID != 1)
  {
    self->_partID = 1;
    OUTLINED_FUNCTION_0_4();
  }

  memset(v113, 0, sizeof(v113));
  allValues6 = [(NSMutableDictionary *)self->_componentMap allValues];
  v71 = [allValues6 countByEnumeratingWithState:v113 objects:v124 count:16];
  v72 = v71;
  if (v71)
  {
    while (1)
    {
      OUTLINED_FUNCTION_4_2();
      if (!v17)
      {
        objc_enumerationMutation(allValues6);
      }

      if (([**(&v113[0] + 1) changeFlags] & 0x10) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_6_0();
      if (v17)
      {
        v75 = OUTLINED_FUNCTION_9(v73, v74, v113, v124);
        v72 = v75;
        if (!v75)
        {
          goto LABEL_136;
        }
      }
    }

    v72 = 1;
  }

LABEL_136:

  if (self->_present != v72)
  {
    self->_present = v72;
    OUTLINED_FUNCTION_0_4();
  }

  if ([v7 partID] != 4)
  {
    productID = [v7 productID];
    if (productID)
    {
      if (productID != self->_productID)
      {
        self->_productID = productID;
        OUTLINED_FUNCTION_0_4();
      }
    }
  }

  if (self->_sourceID)
  {
    memset(v112, 0, sizeof(v112));
    allValues7 = [(NSMutableDictionary *)self->_componentMap allValues];
    if ([allValues7 countByEnumeratingWithState:v112 objects:v123 count:16])
    {
      do
      {
        OUTLINED_FUNCTION_4_2();
        if (!v17)
        {
          objc_enumerationMutation(allValues7);
        }

        if ((OUTLINED_FUNCTION_10(*(&v112[0] + 1)) & 0x10) == 0 && ([(NSMutableDictionary *)v13 partID]== 2 || [(NSMutableDictionary *)v13 partID]== 3))
        {
          [(NSMutableDictionary *)v13 setSourceID:0];
        }

        OUTLINED_FUNCTION_6_0();
      }

      while (!v17 || OUTLINED_FUNCTION_9(v78, v79, v112, v123));
    }
  }

  transportType = [v7 transportType];
  v81 = transportType;
  if (!transportType)
  {
    goto LABEL_161;
  }

  transportType = self->_transportType;
  p_transportType = &self->_transportType;
  v82 = transportType;
  if (!transportType)
  {
    goto LABEL_159;
  }

  if (v107 == 2)
  {
    v85 = transportType;
    v86 = v82;
    OUTLINED_FUNCTION_5_2();
    if (v17)
    {

      goto LABEL_160;
    }

    v87 = OUTLINED_FUNCTION_8_0();

    if ((v87 & 1) == 0)
    {
LABEL_159:
      objc_storeStrong(p_transportType, v81);
      OUTLINED_FUNCTION_0_4();
    }
  }

LABEL_160:
  v7 = v108;
LABEL_161:
  type = [v7 type];
  v89 = type;
  if (!type)
  {
    goto LABEL_168;
  }

  type = location->_type;
  if (!type)
  {
    goto LABEL_166;
  }

  if (v107 == 2)
  {
    v91 = type;
    v92 = type;
    OUTLINED_FUNCTION_5_2();
    if (v17)
    {

      goto LABEL_167;
    }

    v93 = OUTLINED_FUNCTION_8_0();

    if ((v93 & 1) == 0)
    {
LABEL_166:
      objc_storeStrong(&location->_type, v89);
      OUTLINED_FUNCTION_0_4();
    }
  }

LABEL_167:
  v7 = v108;
LABEL_168:
  vendorID = [v7 vendorID];
  if (vendorID && vendorID != location->_vendorID)
  {
    location->_vendorID = vendorID;
    OUTLINED_FUNCTION_0_4();
  }

  vendorIDSource = [v7 vendorIDSource];
  if (vendorIDSource && vendorIDSource != location->_vendorIDSource)
  {
    location->_vendorIDSource = vendorIDSource;
    OUTLINED_FUNCTION_0_4();
  }

  memset(v111, 0, sizeof(v111));
  allValues8 = [(NSMutableDictionary *)location->_componentMap allValues];
  v97 = [allValues8 countByEnumeratingWithState:v111 objects:v122 count:16];
  if (v97)
  {
    v98 = v97;
    do
    {
      for (k = 0; k != v98; ++k)
      {
        OUTLINED_FUNCTION_4_2();
        if (!v17)
        {
          objc_enumerationMutation(allValues8);
        }

        v12 |= [*(*(&v111[0] + 1) + 8 * k) changeFlags];
      }

      v98 = [allValues8 countByEnumeratingWithState:v111 objects:v122 count:16];
    }

    while (v98);
  }

  v100 = v110 | 4;
  if ((v12 & 0x18) == 0)
  {
    v100 = v110;
  }

  v101 = v100 | v12 & 0x1E;
  location->_changeFlags = v101;

  componentCopy = v105;
LABEL_184:

LABEL_185:
  return v101;
}

- (uint64_t)dictionaryRepresentation
{
  if (gLogCategory_CBPowerSource <= 30)
  {
    if (gLogCategory_CBPowerSource != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *a2 = 0;
  return result;
}

@end