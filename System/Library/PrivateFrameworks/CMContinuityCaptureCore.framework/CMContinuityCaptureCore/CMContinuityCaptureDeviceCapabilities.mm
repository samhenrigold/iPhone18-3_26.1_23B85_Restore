@interface CMContinuityCaptureDeviceCapabilities
+ (BOOL)avcaptureDeviceSupportsBackgroundReplacement:(id)replacement;
+ (BOOL)avcaptureDeviceSupportsCenterStage:(id)stage;
+ (BOOL)avcaptureDeviceSupportsPortraitEffect:(id)effect;
+ (BOOL)avcaptureDeviceSupportsReactionEffects:(id)effects;
+ (BOOL)avcaptureDeviceSupportsStudioLighting:(id)lighting;
+ (id)_resolvedControlsForEntityType:(int64_t)type;
+ (id)_resolvedStreamFormatsForEntityType:(int64_t)type requireManualFramingSupport:(BOOL)support;
+ (id)capabilitiesForEntityType:(int64_t)type;
- (BOOL)supportsControlWithName:(id)name;
- (CMContinuityCaptureDeviceCapabilities)initWithDictionaryRepresentation:(id)representation;
- (CMContinuityCaptureDeviceCapabilities)initWithEntityType:(int64_t)type streamFormats:(id)formats manualFramingSupportedStreamFormats:(id)streamFormats controls:(id)controls;
- (NSString)debugDescription;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation CMContinuityCaptureDeviceCapabilities

- (CMContinuityCaptureDeviceCapabilities)initWithEntityType:(int64_t)type streamFormats:(id)formats manualFramingSupportedStreamFormats:(id)streamFormats controls:(id)controls
{
  formatsCopy = formats;
  streamFormatsCopy = streamFormats;
  controlsCopy = controls;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureDeviceCapabilities;
  v14 = [(CMContinuityCaptureDeviceCapabilities *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_entityType = type;
    objc_storeStrong(&v14->_streamFormats, formats);
    objc_storeStrong(&v15->_manualFramingSupportedStreamFormats, streamFormats);
    objc_storeStrong(&v15->_controls, controls);
  }

  return v15;
}

- (CMContinuityCaptureDeviceCapabilities)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v7 = [representationCopy objectForKeyedSubscript:?];

  if (!v7)
  {
    obj = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [(CMContinuityCaptureDeviceCapabilities *)obj initWithDictionaryRepresentation:v37, v38];
    }

    goto LABEL_46;
  }

  v8 = [representationCopy objectForKeyedSubscript:?];
  [v8 integerValue];

  v9 = [representationCopy objectForKeyedSubscript:?];

  if (!v9)
  {
    obj = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [(CMContinuityCaptureDeviceCapabilities *)obj initWithDictionaryRepresentation:v39, v40];
    }

LABEL_46:
    selfCopy2 = 0;
LABEL_48:
    v35 = array3;
    goto LABEL_41;
  }

  selfCopy = self;
  v45 = array2;
  [representationCopy objectForKeyedSubscript:?];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v10 = [NSObject countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    do
    {
      v13 = 0;
      do
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * v13);
        v15 = [[CMContinuityCaptureStreamFormat alloc] initWithDictionaryRepresentation:?];
        if (v15)
        {
          [array addObject:?];
        }

        else
        {
          v16 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v14;
            _os_log_error_impl(&dword_242545000, v16, OS_LOG_TYPE_ERROR, "Could not create stream format: %@", buf, 0xCu);
          }
        }

        v13 = (v13 + 1);
      }

      while (v11 != v13);
      v11 = [NSObject countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    }

    while (v11);
  }

  v17 = [representationCopy objectForKeyedSubscript:?];
  v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
  if (v18)
  {
    v19 = v18;
    v20 = MEMORY[0];
    do
    {
      v21 = 0;
      do
      {
        if (MEMORY[0] != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(8 * v21);
        v23 = [[CMContinuityCaptureStreamFormat alloc] initWithDictionaryRepresentation:?];
        if (v23)
        {
          [v45 addObject:?];
        }

        else
        {
          v24 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v22;
            _os_log_error_impl(&dword_242545000, v24, OS_LOG_TYPE_ERROR, "Could not create manual framing supported stream format: %@", buf, 0xCu);
          }
        }

        v21 = (v21 + 1);
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v19);
  }

  selfCopy2 = [representationCopy objectForKeyedSubscript:?];

  if (!selfCopy2)
  {
    [CMContinuityCaptureDeviceCapabilities initWithDictionaryRepresentation:v17];
    self = selfCopy;
    array2 = v45;
    goto LABEL_48;
  }

  v41 = representationCopy;
  v26 = [representationCopy objectForKeyedSubscript:?];
  v27 = [v26 countByEnumeratingWithState:? objects:? count:?];
  v28 = array3;
  if (v27)
  {
    v29 = v27;
    v30 = MEMORY[0];
    do
    {
      v31 = 0;
      do
      {
        if (MEMORY[0] != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(8 * v31);
        v33 = [[CMContinuityCaptureControl alloc] initWithDictionaryRepresentation:?];
        if (v33)
        {
          [v28 addObject:?];
        }

        else
        {
          v34 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v32;
            _os_log_error_impl(&dword_242545000, v34, OS_LOG_TYPE_ERROR, "Could not create control: %@", buf, 0xCu);
          }

          v28 = array3;
        }

        v31 = (v31 + 1);
      }

      while (v29 != v31);
      v29 = [v26 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v29);
  }

  array2 = v45;
  v35 = v28;
  self = [CMContinuityCaptureDeviceCapabilities initWithEntityType:selfCopy streamFormats:"initWithEntityType:streamFormats:manualFramingSupportedStreamFormats:controls:" manualFramingSupportedStreamFormats:? controls:?];

  selfCopy2 = self;
  representationCopy = v41;
LABEL_41:

  return selfCopy2;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v8 = self->_streamFormats;
  v9 = [NSArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        dictionaryRepresentation = [*(8 * i) dictionaryRepresentation];
        [array addObject:?];
      }

      v10 = [NSArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v10);
  }

  [dictionary setObject:? forKeyedSubscript:?];
  v14 = self->_manualFramingSupportedStreamFormats;
  v15 = [NSArray countByEnumeratingWithState:v14 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v15)
  {
    v16 = v15;
    v17 = MEMORY[0];
    do
    {
      for (j = 0; j != v16; j = (j + 1))
      {
        if (MEMORY[0] != v17)
        {
          objc_enumerationMutation(v14);
        }

        dictionaryRepresentation2 = [*(8 * j) dictionaryRepresentation];
        [array2 addObject:?];
      }

      v16 = [NSArray countByEnumeratingWithState:v14 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v16);
  }

  if ([array2 count])
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v20 = self->_controls;
  v21 = [NSArray countByEnumeratingWithState:v20 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0];
    do
    {
      for (k = 0; k != v22; k = (k + 1))
      {
        if (MEMORY[0] != v23)
        {
          objc_enumerationMutation(v20);
        }

        dictionaryRepresentation3 = [*(8 * k) dictionaryRepresentation];
        [array3 addObject:?];
      }

      v22 = [NSArray countByEnumeratingWithState:v20 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v22);
  }

  [dictionary setObject:? forKeyedSubscript:?];

  return dictionary;
}

+ (id)_resolvedStreamFormatsForEntityType:(int64_t)type requireManualFramingSupport:(BOOL)support
{
  supportCopy = support;
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  typeCopy = type;
  if (type == 3)
  {
    v9 = 0;
LABEL_17:
    obj = v56;
    v61 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (!v61)
    {
      goto LABEL_61;
    }

    v60 = MEMORY[0];
    v59 = v9;
    while (1)
    {
      v30 = 0;
      do
      {
        if (MEMORY[0] != v60)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v30;
        v31 = *(8 * v30);
        pixelFormat = [v31 pixelFormat];
        width = [v31 width];
        height = [v31 height];
        v64 = v31;
        maxFrameRate = [v31 maxFrameRate];
        formats = [(CMContinuityCaptureStreamFormat *)v9 formats];
        v33 = [formats countByEnumeratingWithState:? objects:? count:?];
        if (v33)
        {
          v34 = v33;
          v65 = formats;
          p_super = 0;
          v67 = MEMORY[0];
          do
          {
            for (i = 0; i != v34; i = (i + 1))
            {
              if (MEMORY[0] != v67)
              {
                objc_enumerationMutation(v65);
              }

              v37 = *(8 * i);
              if (!supportCopy || ([*(8 * i) isCenterStageSupported] & 1) != 0 || objc_msgSend(v37, "isCenterStageSupportedForContinuityCamera"))
              {
                MediaSubType = CMFormatDescriptionGetMediaSubType([v37 formatDescription]);
                Dimensions = CMVideoFormatDescriptionGetDimensions([v37 formatDescription]);
                v40 = supportCopy;
                if (supportCopy)
                {
                  videoFrameRateRangeForCenterStageForContinuityCamera = [v37 videoFrameRateRangeForCenterStageForContinuityCamera];
                }

                else
                {
                  videoSupportedFrameRateRanges = [v37 videoSupportedFrameRateRanges];
                  videoFrameRateRangeForCenterStageForContinuityCamera = [videoSupportedFrameRateRanges firstObject];
                }

                v43 = Dimensions;
                v44 = Dimensions >> 32;
                [videoFrameRateRangeForCenterStageForContinuityCamera minFrameRate];
                [videoFrameRateRangeForCenterStageForContinuityCamera maxFrameRate];
                v46 = v45;
                v49 = pixelFormat != MediaSubType || v43 != width || v44 != height || maxFrameRate > v46;
                if (!v49 && (!p_super || -[NSObject maxFrameRate](p_super, "maxFrameRate") == v46 && ([v37 isVideoHDRSupported] & 1) != 0 || -[NSObject maxFrameRate](p_super, "maxFrameRate") > v46))
                {
                  v50 = [CMContinuityCaptureStreamFormat alloc];
                  name = [v64 name];
                  if (v64)
                  {
                    [&buf minimumSupportedVersion];
                  }

                  else
                  {
                    buf = 0uLL;
                    v77 = 0;
                  }

                  v52 = [CMContinuityCaptureStreamFormat initWithName:v50 width:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" height:typeCopy pixelFormat:&buf minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];

                  p_super = &v52->super;
                }

                supportCopy = v40;
              }
            }

            v34 = [v65 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v34);

          v9 = v59;
          if (p_super)
          {
            [v57 addObject:?];
            goto LABEL_59;
          }
        }

        else
        {
        }

        p_super = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v64;
          _os_log_error_impl(&dword_242545000, p_super, OS_LOG_TYPE_ERROR, "Could not resolved stream format: %@", &buf, 0xCu);
        }

LABEL_59:

        v30 = v62 + 1;
      }

      while ((v62 + 1) != v61);
      v61 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (!v61)
      {
LABEL_61:

        v53 = v57;
        [v57 sortUsingComparator:?];
        goto LABEL_62;
      }
    }
  }

  if (type == 2)
  {
    v7 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:? mediaType:? position:?];
    v77 = 0;
    buf = 1uLL;
    v8 = [CMContinuityCaptureStreamFormat initWithName:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" width:2 height:&buf pixelFormat:? minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];
    [v56 addObject:?];
LABEL_16:

    v9 = v7;
    goto LABEL_17;
  }

  if (type != 1)
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureDeviceCapabilities _resolvedStreamFormatsForEntityType:type requireManualFramingSupport:&v8->super];
    }

    v7 = 0;
    goto LABEL_16;
  }

  if (_os_feature_enabled_impl())
  {
    v6 = *MEMORY[0x277CE5878];
    v79 = *MEMORY[0x277CE5848];
    v80 = v6;
  }

  else
  {
    v78 = *MEMORY[0x277CE5878];
  }

  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  CMContinuityCaptureDevicePosition(v9, v10);
  v11 = [MEMORY[0x277CE5AD0] discoverySessionWithDeviceTypes:? mediaType:? position:?];
  v12 = v11;
  if (v11)
  {
    devices = [v11 devices];
    if (devices)
    {
      v14 = devices;
      devices2 = [v12 devices];
      v16 = [devices2 count];

      if (v16)
      {
        devices3 = [v12 devices];
        v70 = [devices3 objectAtIndexedSubscript:?];

        v77 = 0;
        buf = 1uLL;
        v72 = [CMContinuityCaptureStreamFormat initWithName:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" width:1 height:&buf pixelFormat:? minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];
        [v56 addObject:?];
        v18 = [CMContinuityCaptureStreamFormat alloc];
        v77 = 0;
        buf = 1uLL;
        v68 = [CMContinuityCaptureStreamFormat initWithName:v18 width:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" height:1 pixelFormat:&buf minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];
        [v56 addObject:?];
        v19 = [CMContinuityCaptureStreamFormat alloc];
        v77 = 0;
        buf = 1uLL;
        v66 = [CMContinuityCaptureStreamFormat initWithName:v19 width:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" height:1 pixelFormat:&buf minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];
        [v56 addObject:?];
        v20 = [CMContinuityCaptureStreamFormat alloc];
        v77 = 0;
        buf = 1uLL;
        v21 = [CMContinuityCaptureStreamFormat initWithName:v20 width:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" height:1 pixelFormat:&buf minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];
        [v56 addObject:?];
        v22 = [CMContinuityCaptureStreamFormat alloc];
        v77 = 0;
        buf = 1uLL;
        v74 = supportCopy;
        v23 = [CMContinuityCaptureStreamFormat initWithName:v22 width:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" height:1 pixelFormat:&buf minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];
        [v56 addObject:?];
        v24 = [CMContinuityCaptureStreamFormat alloc];
        v77 = 0;
        buf = 1uLL;
        v25 = [CMContinuityCaptureStreamFormat initWithName:v24 width:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" height:1 pixelFormat:&buf minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];
        [v56 addObject:?];
        v26 = [CMContinuityCaptureStreamFormat alloc];
        v77 = 0;
        buf = 1uLL;
        v8 = v9;
        v27 = [CMContinuityCaptureStreamFormat initWithName:v26 width:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" height:1 pixelFormat:&buf minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];
        [v56 addObject:?];
        v28 = [CMContinuityCaptureStreamFormat alloc];
        v77 = 0;
        buf = 1uLL;
        v7 = v70;
        v29 = [CMContinuityCaptureStreamFormat initWithName:v28 width:"initWithName:width:height:pixelFormat:minFrameRate:maxFrameRate:entity:minimumSupportedVersion:" height:1 pixelFormat:&buf minFrameRate:? maxFrameRate:? entity:? minimumSupportedVersion:?];
        [v56 addObject:?];

        supportCopy = v74;
        goto LABEL_16;
      }
    }
  }

  [CMContinuityCaptureDeviceCapabilities _resolvedStreamFormatsForEntityType:v12 requireManualFramingSupport:?];
  v53 = v57;
LABEL_62:

  v54 = [v53 copy];

  return v54;
}

uint64_t __105__CMContinuityCaptureDeviceCapabilities__resolvedStreamFormatsForEntityType_requireManualFramingSupport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 width];
  if (v6 < [v5 width])
  {
    goto LABEL_2;
  }

  v8 = [v4 width];
  if (v8 > [v5 width])
  {
LABEL_4:
    v7 = 1;
    goto LABEL_5;
  }

  v10 = [v4 height];
  if (v10 >= [v5 height])
  {
    v11 = [v4 height];
    if (v11 > [v5 height])
    {
      goto LABEL_4;
    }

    v12 = [v4 minFrameRate];
    if (v12 >= [v5 minFrameRate])
    {
      v13 = [v4 minFrameRate];
      if (v13 <= [v5 minFrameRate])
      {
        v14 = [v4 maxFrameRate];
        if (v14 >= [v5 maxFrameRate])
        {
          v15 = [v4 maxFrameRate];
          v7 = v15 > [v5 maxFrameRate];
          goto LABEL_5;
        }

        goto LABEL_2;
      }

      goto LABEL_4;
    }
  }

LABEL_2:
  v7 = -1;
LABEL_5:

  return v7;
}

+ (id)_resolvedControlsForEntityType:(int64_t)type
{
  array = [MEMORY[0x277CBEB18] array];
  if (type != 2)
  {
    if (type != 1)
    {
      goto LABEL_45;
    }

    if (_os_feature_enabled_impl())
    {
      v6 = *MEMORY[0x277CE5878];
      v97 = *MEMORY[0x277CE5848];
      v98 = v6;
    }

    else
    {
      v96 = *MEMORY[0x277CE5878];
    }

    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    CMContinuityCaptureDevicePosition(v7, v8);
    v93 = [MEMORY[0x277CE5AD0] discoverySessionWithDeviceTypes:? mediaType:? position:?];
    if (!v93 || ([v93 devices], (v9 = objc_claimAutoreleasedReturnValue()) == 0) || (v10 = v9, objc_msgSend(v93, "devices"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, !v12))
    {
      [CMContinuityCaptureDeviceCapabilities _resolvedControlsForEntityType:?];
      firstObject = v94;
LABEL_43:

      goto LABEL_44;
    }

    v83 = v7;
    devices = [v93 devices];
    firstObject = [devices firstObject];

    v15 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:? mediaType:? position:?];
    v16 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:? mediaType:? position:?];
    v17 = [self avcaptureDeviceSupportsCenterStage:?];
    v92 = v16;
    v18 = [self avcaptureDeviceSupportsCenterStage:?];
    v86 = v15;
    if ((v17 & 1) != 0 || v18)
    {
      v87 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v84 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v81 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v19 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      selfCopy = self;
      v20 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v21 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v22 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v23 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v24 = firstObject;
      v25 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v26 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v94 = xmmword_2425D8240;
      v95 = 1;
      v27 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];

      v15 = v86;
      firstObject = v24;

      self = selfCopy;
    }

    DeviceClass = GestaltGetDeviceClass();
    v94 = xmmword_2425D8240;
    v95 = 1;
    v88 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v91 = v29;
    if (DeviceClass == 3)
    {
      if (v92 && !v15)
      {
        [array addObject:?];
        goto LABEL_21;
      }
    }

    else if (v92)
    {
      [array addObject:?];
      v30 = MEMORY[0x277CCABB0];
      [v92 manualFramingMinZoomFactor];
      v31 = [v30 numberWithDouble:?];
      [v90 setObject:? forKeyedSubscript:?];

      v32 = MEMORY[0x277CCABB0];
      [v92 manualFramingMaxZoomFactor];
      v33 = [v32 numberWithDouble:?];
      [v90 setObject:? forKeyedSubscript:?];

      v34 = MEMORY[0x277CCABB0];
      [v92 manualFramingDefaultZoomFactor];
      v35 = [v34 numberWithDouble:?];
      [v90 setObject:? forKeyedSubscript:?];

      v36 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:1];
      [v29 setObject:? forKeyedSubscript:?];
    }

    if (v15)
    {
      v94 = xmmword_2425D8240;
      v95 = 1;
      v38 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v39 = MEMORY[0x277CCABB0];
      [v15 manualFramingMinZoomFactor];
      v40 = [v39 numberWithDouble:?];
      [v90 setObject:? forKeyedSubscript:?];

      v41 = MEMORY[0x277CCABB0];
      [v15 manualFramingMaxZoomFactor];
      v42 = [v41 numberWithDouble:?];
      [v90 setObject:? forKeyedSubscript:?];

      v43 = MEMORY[0x277CCABB0];
      [v15 manualFramingDefaultZoomFactor];
      v44 = [v43 numberWithDouble:?];
      [v90 setObject:? forKeyedSubscript:?];

      v45 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:2];
      [v91 setObject:? forKeyedSubscript:?];

      v29 = v91;
    }

LABEL_21:
    if ([v29 count])
    {
      v47 = [CMContinuityCaptureControl alloc];
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      v94 = xmmword_2425D8240;
      v95 = 1;
      v49 = [CMContinuityCaptureControl initWithName:v47 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];

      [array addObject:?];
    }

    v95 = 0;
    v94 = 1uLL;
    v50 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
    [array addObject:?];
    if (([self avcaptureDeviceSupportsFlash:?] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsFlash:"))
    {
      v95 = 0;
      v94 = 1uLL;
      v51 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
    }

    v52 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
    [array addObject:?];
    v85 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
    [array addObject:?];
    v95 = 0;
    v94 = 1uLL;
    v82 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
    [array addObject:?];
    supportedMetadataObjectIdentifiers = [v92 supportedMetadataObjectIdentifiers];
    if ([supportedMetadataObjectIdentifiers containsObject:?])
    {
    }

    else
    {
      supportedMetadataObjectIdentifiers2 = [v15 supportedMetadataObjectIdentifiers];
      v55 = [supportedMetadataObjectIdentifiers2 containsObject:?];

      if (!v55)
      {
        goto LABEL_30;
      }
    }

    v95 = 0;
    v94 = 1uLL;
    v56 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
    [array addObject:?];

LABEL_30:
    v95 = 0;
    v94 = 1uLL;
    v80 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
    [array addObject:?];
    if (([self avcaptureDeviceSupportsPortraitEffect:?] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsPortraitEffect:"))
    {
      v57 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v58 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v95 = 0;
      v94 = 1uLL;
      v59 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
    }

    v95 = 0;
    v94 = 1uLL;
    v79 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
    [array addObject:?];
    if (([self avcaptureDeviceSupportsStudioLighting:?] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsStudioLighting:"))
    {
      v60 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v61 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v95 = 0;
      v94 = 1uLL;
      v62 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
    }

    if (([self avcaptureDeviceSupportsReactionEffects:?] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsReactionEffects:"))
    {
      v77 = v52;
      v63 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v78 = firstObject;
      v64 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v65 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v66 = v50;
      selfCopy2 = self;
      v68 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v69 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v94 = xmmword_2425D8090;
      v95 = 1;
      v70 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];

      v52 = v77;
      self = selfCopy2;
      v50 = v66;

      firstObject = v78;
      v15 = v86;
    }

    if (([self avcaptureDeviceSupportsBackgroundReplacement:?] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsBackgroundReplacement:"))
    {
      v71 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v72 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
      v95 = 0;
      v94 = 1uLL;
      v73 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
      [array addObject:?];
    }

    v95 = 0;
    v94 = 1uLL;
    v74 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
    [array addObject:?];

    v7 = v83;
    goto LABEL_43;
  }

  v95 = 0;
  v94 = 1uLL;
  v7 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
  [array addObject:?];
LABEL_44:

LABEL_45:
  v75 = [array copy];

  return v75;
}

+ (BOOL)avcaptureDeviceSupportsStudioLighting:(id)lighting
{
  formats = [lighting formats];
  v4 = [formats countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(8 * i);
        if ([v8 isStudioLightSupported] & 1) != 0 || (objc_msgSend(v8, "isStudioLightingSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:? objects:? count:?];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)avcaptureDeviceSupportsReactionEffects:(id)effects
{
  formats = [effects formats];
  v4 = [formats countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(8 * i);
        if ([v8 reactionEffectsSupported] & 1) != 0 || (objc_msgSend(v8, "reactionEffectsSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:? objects:? count:?];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)avcaptureDeviceSupportsBackgroundReplacement:(id)replacement
{
  formats = [replacement formats];
  v4 = [formats countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(8 * i);
        if ([v8 isBackgroundReplacementSupported] & 1) != 0 || (objc_msgSend(v8, "isBackgroundReplacementSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:? objects:? count:?];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)avcaptureDeviceSupportsCenterStage:(id)stage
{
  formats = [stage formats];
  v4 = [formats countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(8 * i);
        if ([v8 isCenterStageSupported] & 1) != 0 || (objc_msgSend(v8, "isCenterStageSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:? objects:? count:?];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)avcaptureDeviceSupportsPortraitEffect:(id)effect
{
  formats = [effect formats];
  v4 = [formats countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(8 * i);
        if ([v8 isBackgroundBlurSupported] & 1) != 0 || (objc_msgSend(v8, "isBackgroundBlurSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:? objects:? count:?];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (BOOL)supportsControlWithName:(id)name
{
  nameCopy = name;
  controls = [(CMContinuityCaptureDeviceCapabilities *)self controls];
  v6 = [controls countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(controls);
        }

        name = [*(8 * i) name];
        v10 = [name isEqualToString:?];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [controls countByEnumeratingWithState:? objects:? count:?];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSString)debugDescription
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v6 = self->_streamFormats;
  v7 = [NSArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        name = [*(8 * i) name];
        [array addObject:?];
      }

      v8 = [NSArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v8);
  }

  v12 = self->_manualFramingSupportedStreamFormats;
  v13 = [NSArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0];
    do
    {
      for (j = 0; j != v14; j = (j + 1))
      {
        if (MEMORY[0] != v15)
        {
          objc_enumerationMutation(v12);
        }

        name2 = [*(8 * j) name];
        [array2 addObject:?];
      }

      v14 = [NSArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v14);
  }

  v18 = self->_controls;
  v19 = [NSArray countByEnumeratingWithState:v18 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0];
    do
    {
      for (k = 0; k != v20; k = (k + 1))
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(v18);
        }

        name3 = [*(8 * k) name];
        [array3 addObject:?];
      }

      v20 = [NSArray countByEnumeratingWithState:v18 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v20);
  }

  v24 = MEMORY[0x277CCACA8];
  entityType = self->_entityType;
  v26 = [array componentsJoinedByString:?];
  v27 = [array2 componentsJoinedByString:?];
  v28 = [array3 componentsJoinedByString:?];
  v29 = [v24 stringWithFormat:entityType, v26, v27, v28];

  return v29;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureDeviceCapabilities *)self debugDescription];
  v7 = [v3 stringWithFormat:v5, self, v6];

  return v7;
}

+ (id)capabilitiesForEntityType:(int64_t)type
{
  if (AVGestaltGetBoolAnswer() && (type != 2 || ([MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:? mediaType:? position:?], v5 = objc_claimAutoreleasedReturnValue(), v5, v5)))
  {
    v6 = [self _resolvedStreamFormatsForEntityType:? requireManualFramingSupport:?];
    v7 = [self _resolvedStreamFormatsForEntityType:? requireManualFramingSupport:?];
    v8 = [self _resolvedControlsForEntityType:?];
    v9 = [objc_alloc(objc_opt_class()) initWithEntityType:? streamFormats:? manualFramingSupportedStreamFormats:? controls:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initWithDictionaryRepresentation:(void *)a1 .cold.1(void *a1)
{
  v3 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v3))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

+ (void)_resolvedStreamFormatsForEntityType:(void *)a1 requireManualFramingSupport:.cold.1(void *a1)
{
  v3 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v3))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

+ (void)_resolvedStreamFormatsForEntityType:(int)a1 requireManualFramingSupport:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "Unexpected entity type: %d", v2, 8u);
}

+ (void)_resolvedControlsForEntityType:(void *)a1 .cold.1(void *a1)
{
  v3 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v3))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  *a1 = v1;
}

@end