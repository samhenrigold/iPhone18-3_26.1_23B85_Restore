@interface CARDisplayInfo
- (BOOL)_showsInstrumentsWithIdentifier:(id)identifier isPrimaryDisplay:(BOOL)display;
- (BOOL)hasPunchThroughWithIdentifier:(id)identifier;
- (BOOL)hasVideoStreamWithIdentifier:(id)identifier;
- (BOOL)updateStreamsWithPhysicalDisplayDictionary:(id)dictionary displayPluginDictionary:(id)pluginDictionary;
- (CARDisplayInfo)initWithLogicalScreenDictionary:(id)dictionary isPrimaryDisplay:(BOOL)display;
- (CARDisplayInfo)initWithPhysicalScreenDictionary:(id)dictionary;
- (CARDisplayInfo)initWithPhysicalScreenDictionary:(id)dictionary displayPluginDictionary:(id)pluginDictionary;
- (CGPoint)originForScreenInfoIdentifier:(id)identifier;
- (CGSize)physicalSize;
- (CGSize)pixelSize;
- (NSSet)punchThroughIdentifiers;
- (NSSet)videoStreamIdentifiers;
- (id)description;
- (id)punchThroughWithIdentifier:(id)identifier;
- (id)videoStreamWithIdentifier:(id)identifier;
- (void)_updateOEMViews:(id)views;
- (void)updateStreams:(id)streams;
@end

@implementation CARDisplayInfo

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CARDisplayInfo)initWithPhysicalScreenDictionary:(id)dictionary displayPluginDictionary:(id)pluginDictionary
{
  dictionaryCopy = dictionary;
  pluginDictionaryCopy = pluginDictionary;
  v30.receiver = self;
  v30.super_class = CARDisplayInfo;
  v8 = [(CARDisplayInfo *)&v30 init];
  v9 = v8;
  if (!v8)
  {
LABEL_32:
    v25 = v9;
    goto LABEL_33;
  }

  v10 = CRSizeFromAirPlayDictionary(dictionaryCopy, &v8->_pixelSize.width);
  if ((v10 & 1) == 0)
  {
    v14 = CarGeneralLogging(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

    goto LABEL_23;
  }

  v11 = CRPhysicalSizeFromAirPlayDictionary(dictionaryCopy, &v9->_physicalSize.width);
  if ((v11 & 1) == 0)
  {
    v14 = CarGeneralLogging(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

    goto LABEL_23;
  }

  objc_opt_class();
  v12 = [pluginDictionaryCopy objectForKey:@"uid"];
  if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = CarGeneralLogging(v15);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

LABEL_23:

    goto LABEL_24;
  }

  v16 = [v13 copy];
  identifier = v9->_identifier;
  v9->_identifier = v16;

  objc_opt_class();
  v18 = [dictionaryCopy objectForKey:@"properties"];
  if (v18 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __75__CARDisplayInfo_initWithPhysicalScreenDictionary_displayPluginDictionary___block_invoke;
  v28[3] = &unk_1E82FCDB0;
  v20 = v9;
  v29 = v20;
  [v19 enumerateObjectsUsingBlock:v28];
  v20->_supportsDDPContent = 1;
  v21 = [(CARDisplayInfo *)v20 updateStreamsWithPhysicalDisplayDictionary:dictionaryCopy displayPluginDictionary:pluginDictionaryCopy];
  v22 = v21;
  if (v21)
  {
    objc_opt_class();
    v23 = [pluginDictionaryCopy objectForKey:@"automakerInputStreams"];
    if (v23 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      [(CARDisplayInfo *)v20 _updateOEMViews:v24];
    }

    else
    {
      oemPunchThroughs = v20->_oemPunchThroughs;
      v20->_oemPunchThroughs = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v24 = CarGeneralLogging(v21);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }
  }

  if (v22)
  {
    goto LABEL_32;
  }

LABEL_24:
  v25 = 0;
LABEL_33:

  return v25;
}

void __75__CARDisplayInfo_initWithPhysicalScreenDictionary_displayPluginDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  v7 = v4;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    v4 = v7;
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:@"CarPlay"])
  {
    v6 = 9;
  }

  else if ([v5 isEqualToString:@"Instrument Cluster"])
  {
    v6 = 11;
  }

  else if ([v5 isEqualToString:@"Map"])
  {
    v6 = 12;
  }

  else if ([v5 isEqualToString:@"additionalContent"])
  {
    v6 = 8;
  }

  else
  {
    if (![v5 isEqualToString:@"showsInstruments"])
    {
      goto LABEL_18;
    }

    v6 = 13;
  }

  *(*(a1 + 32) + v6) = 1;
LABEL_18:
}

- (CARDisplayInfo)initWithPhysicalScreenDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = CARDisplayInfo;
  v5 = [(CARDisplayInfo *)&v28 init];
  v6 = v5;
  if (!v5)
  {
LABEL_36:
    v23 = v6;
    goto LABEL_37;
  }

  v7 = CRSizeFromAirPlayDictionary(dictionaryCopy, &v5->_pixelSize.width);
  if ((v7 & 1) == 0)
  {
    v11 = CarGeneralLogging(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

    goto LABEL_27;
  }

  v8 = CRPhysicalSizeFromAirPlayDictionary(dictionaryCopy, &v6->_physicalSize.width);
  if ((v8 & 1) == 0)
  {
    v11 = CarGeneralLogging(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

    goto LABEL_27;
  }

  objc_opt_class();
  v9 = [dictionaryCopy objectForKey:@"uid"];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = CarGeneralLogging(v12);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

LABEL_27:

    goto LABEL_28;
  }

  v13 = [v10 copy];
  identifier = v6->_identifier;
  v6->_identifier = v13;

  objc_opt_class();
  v15 = [dictionaryCopy objectForKey:@"properties"];
  if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __51__CARDisplayInfo_initWithPhysicalScreenDictionary___block_invoke;
  v26[3] = &unk_1E82FCDB0;
  v17 = v6;
  v27 = v17;
  [v16 enumerateObjectsUsingBlock:v26];
  objc_opt_class();
  v18 = [dictionaryCopy objectForKey:@"initialVideoStreams"];
  if (v18 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    [(CARDisplayInfo *)v17 updateStreams:v19];
    objc_opt_class();
    v21 = [dictionaryCopy objectForKey:@"automakerInputStreams"];
    if (v21 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      [(CARDisplayInfo *)v17 _updateOEMViews:v22];
    }

    else
    {
      oemPunchThroughs = v17->_oemPunchThroughs;
      v17->_oemPunchThroughs = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v22 = CarGeneralLogging(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }
  }

  if (v19)
  {
    goto LABEL_36;
  }

LABEL_28:
  v23 = 0;
LABEL_37:

  return v23;
}

void __51__CARDisplayInfo_initWithPhysicalScreenDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  v7 = v4;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    v4 = v7;
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:@"CarPlay"])
  {
    v6 = 9;
LABEL_16:
    *(*(a1 + 32) + v6) = 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"Instrument Cluster"])
  {
    v6 = 11;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"Map"])
  {
    v6 = 12;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"DPManaged"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"DDPManaged"))
  {
    v6 = 10;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"additionalContent"])
  {
    v6 = 8;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"showsInstruments"])
  {
    v6 = 13;
    goto LABEL_16;
  }

LABEL_17:
}

- (CARDisplayInfo)initWithLogicalScreenDictionary:(id)dictionary isPrimaryDisplay:(BOOL)display
{
  displayCopy = display;
  v25[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = CARDisplayInfo;
  v7 = [(CARDisplayInfo *)&v24 init];
  if (!v7)
  {
LABEL_20:
    v20 = v7;
    goto LABEL_21;
  }

  v8 = CRSizeFromDictionary([dictionaryCopy objectForKey:*MEMORY[0x1E6962440]], (v7 + 56));
  if (v8)
  {
    v9 = CRSizeFromDictionary([dictionaryCopy objectForKey:*MEMORY[0x1E6962438]], (v7 + 40));
    if (v9)
    {
      objc_opt_class();
      v10 = [dictionaryCopy objectForKey:@"ScreenID"];
      if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v14 = [v11 copy];
        v15 = *(v7 + 2);
        *(v7 + 2) = v14;

        v7[9] = 1;
        *(v7 + 11) = 257;
        v7[13] = [v7 _showsInstrumentsWithIdentifier:v11 isPrimaryDisplay:displayCopy];
        v16 = [[CARStreamInfo alloc] initWithStreamInfoDictionary:dictionaryCopy];
        v17 = v16;
        v18 = MEMORY[0x1E695E0F0];
        if (v16)
        {
          v25[0] = v16;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
        }

        else
        {
          v19 = MEMORY[0x1E695E0F0];
        }

        v21 = *(v7 + 4);
        *(v7 + 4) = v19;

        v22 = *(v7 + 3);
        *(v7 + 3) = v18;

        goto LABEL_20;
      }

      v12 = CarGeneralLogging(v13);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
      }
    }

    else
    {
      v12 = CarGeneralLogging(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
      }
    }
  }

  else
  {
    v12 = CarGeneralLogging(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }
  }

  v20 = 0;
LABEL_21:

  return v20;
}

- (id)punchThroughWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  oemPunchThroughs = [(CARDisplayInfo *)self oemPunchThroughs];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__CARDisplayInfo_punchThroughWithIdentifier___block_invoke;
  v9[3] = &unk_1E82FCDD8;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [oemPunchThroughs bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __45__CARDisplayInfo_punchThroughWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)hasPunchThroughWithIdentifier:(id)identifier
{
  v3 = [(CARDisplayInfo *)self punchThroughWithIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (NSSet)punchThroughIdentifiers
{
  oemPunchThroughs = [(CARDisplayInfo *)self oemPunchThroughs];
  v3 = [oemPunchThroughs bs_map:&__block_literal_global_18];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (id)videoStreamWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  streams = [(CARDisplayInfo *)self streams];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__CARDisplayInfo_videoStreamWithIdentifier___block_invoke;
  v9[3] = &unk_1E82FCC50;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [streams bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __44__CARDisplayInfo_videoStreamWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)hasVideoStreamWithIdentifier:(id)identifier
{
  v3 = [(CARDisplayInfo *)self videoStreamWithIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (NSSet)videoStreamIdentifiers
{
  streams = [(CARDisplayInfo *)self streams];
  v3 = [streams bs_map:&__block_literal_global_97];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = CARDisplayInfo;
  v4 = [(CARDisplayInfo *)&v12 description];
  identifier = self->_identifier;
  v6 = BSStringFromCGSize();
  v7 = BSStringFromCGSize();
  if ([(CARDisplayInfo *)self supportsAdditionalContent])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(CARDisplayInfo *)self showsInstruments])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"%@ {identifier: %@, physicalSize: %@, pixelSize: %@, additionalContent: %@, showsInstruments: %@}", v4, identifier, v6, v7, v8, v9];

  return v10;
}

- (BOOL)updateStreamsWithPhysicalDisplayDictionary:(id)dictionary displayPluginDictionary:(id)pluginDictionary
{
  v55 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  pluginDictionaryCopy = pluginDictionary;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKey:@"initialVideoStreams"];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  v11 = [pluginDictionaryCopy objectForKey:@"managedVideoStreams"];
  if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    selfCopy = self;
    v36 = pluginDictionaryCopy;
    v37 = dictionaryCopy;
    v14 = CarGeneralLogging(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C81FC000, v14, OS_LOG_TYPE_INFO, "Using ManagedVideoStreams array", buf, 2u);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v34 = v9;
    obj = v9;
    v41 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v41)
    {
      v39 = *v49;
      v40 = v12;
      do
      {
        v15 = 0;
        do
        {
          if (*v49 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v43 = v15;
          v16 = *(*(&v48 + 1) + 8 * v15);
          objc_opt_class();
          v42 = v16;
          v17 = [v16 objectForKey:@"uuid"];
          if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v19 = v12;
          v20 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v45;
            while (2)
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v45 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v44 + 1) + 8 * i);
                objc_opt_class();
                v25 = [v24 objectForKey:@"uuid"];
                if (v25 && (objc_opt_isKindOfClass() & 1) != 0)
                {
                  v26 = v25;
                }

                else
                {
                  v26 = 0;
                }

                v27 = [v26 isEqual:v18];
                if (v27)
                {
                  v28 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v42];
                  [v28 addEntriesFromDictionary:v24];
                  [array addObject:v28];

                  goto LABEL_35;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

LABEL_35:

          v15 = v43 + 1;
          v12 = v40;
        }

        while (v43 + 1 != v41);
        v41 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v41);
    }

    pluginDictionaryCopy = v36;
    dictionaryCopy = v37;
    v9 = v34;
    self = selfCopy;
  }

  if ([array count])
  {
    selfCopy3 = self;
    v30 = array;
LABEL_42:
    [(CARDisplayInfo *)selfCopy3 updateStreams:v30];
    v31 = 1;
    goto LABEL_43;
  }

  if (v9)
  {
    selfCopy3 = self;
    v30 = v9;
    goto LABEL_42;
  }

  v33 = CarGeneralLogging(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
  }

  v31 = 0;
LABEL_43:

  return v31;
}

- (void)updateStreams:(id)streams
{
  v4 = MEMORY[0x1E695DF70];
  streamsCopy = streams;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__CARDisplayInfo_updateStreams___block_invoke;
  v10[3] = &unk_1E82FCC00;
  v11 = v6;
  v7 = v6;
  [streamsCopy enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];
  streams = self->_streams;
  self->_streams = v8;
}

void __32__CARDisplayInfo_updateStreams___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [[CARStreamInfo alloc] initWithDictionary:v4];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }

    v6 = v4;
  }

  else
  {

    v6 = CarGeneralLogging(v7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __32__CARDisplayInfo_updateStreams___block_invoke_cold_1(v6, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (CGPoint)originForScreenInfoIdentifier:(id)identifier
{
  identifierCopy = identifier;
  streams = [(CARDisplayInfo *)self streams];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__CARDisplayInfo_originForScreenInfoIdentifier___block_invoke;
  v14[3] = &unk_1E82FCC50;
  v15 = identifierCopy;
  v6 = identifierCopy;
  v7 = [streams bs_firstObjectPassingTest:v14];

  if (v7)
  {
    [v7 origin];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

uint64_t __48__CARDisplayInfo_originForScreenInfoIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateOEMViews:(id)views
{
  v4 = MEMORY[0x1E695DF70];
  viewsCopy = views;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__CARDisplayInfo__updateOEMViews___block_invoke;
  v10[3] = &unk_1E82FCC00;
  v11 = v6;
  v7 = v6;
  [viewsCopy enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];
  oemPunchThroughs = self->_oemPunchThroughs;
  self->_oemPunchThroughs = v8;
}

void __34__CARDisplayInfo__updateOEMViews___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [[CAROEMPunchThrough alloc] initWithDictionary:v4];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }

    v6 = v4;
  }

  else
  {

    v6 = CarGeneralLogging(v7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __34__CARDisplayInfo__updateOEMViews___block_invoke_cold_1(v6, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (BOOL)_showsInstrumentsWithIdentifier:(id)identifier isPrimaryDisplay:(BOOL)display
{
  displayCopy = display;
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (displayCopy)
  {
    v7 = CarGeneralLogging(identifierCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Setting showsInstruments to NO for primary display with identifier: %@", &v16, 0xCu);
    }

    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = +[CRCarPlayCapabilities capabilitiesIdentifier];
    v7 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v9];

    userInfo = [v7 userInfo];
    v11 = [userInfo objectForKey:@"showsInstrumentsIdentifier"];

    if (v11)
    {
      v8 = [v6 isEqualToString:v11];
      v13 = CarGeneralLogging(v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"NO";
        if (v8)
        {
          v14 = @"YES";
        }

        v16 = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_1C81FC000, v13, OS_LOG_TYPE_DEFAULT, "Found a cluster display identifier in capabilities for secondary screen with identifier %@, setting showsInstruments to %@", &v16, 0x16u);
      }
    }

    else
    {
      v13 = CarGeneralLogging(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1C81FC000, v13, OS_LOG_TYPE_DEFAULT, "No cluster display identifier found in capabilities for secondary screen with identifier %@, setting showsInstruments to YES", &v16, 0xCu);
      }

      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (CGSize)physicalSize
{
  width = self->_physicalSize.width;
  height = self->_physicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end