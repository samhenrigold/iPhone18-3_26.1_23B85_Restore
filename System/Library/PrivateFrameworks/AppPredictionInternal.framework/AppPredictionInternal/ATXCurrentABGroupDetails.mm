@interface ATXCurrentABGroupDetails
- (ATXCurrentABGroupDetails)init;
- (ATXCurrentABGroupDetails)initWithAssetMapping:(id)mapping;
- (id)abGroupIdentifierForConsumerSubType:(unsigned __int8)type;
- (id)abGroupIdentifierForFilename:(id)filename;
- (id)finalSubScoreForConsumerSubType:(unsigned __int8)type;
- (void)loadAssetFromAssetMapping:(id)mapping;
- (void)setABGroupFromFilename:(id)filename subType:(unsigned __int8)type filenameToABGroup:(id)group;
- (void)setFinalSubscore:(id)subscore subType:(unsigned __int8)type;
@end

@implementation ATXCurrentABGroupDetails

- (ATXCurrentABGroupDetails)init
{
  mEMORY[0x277CEB3A0] = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
  v4 = [(ATXCurrentABGroupDetails *)self initWithAssetMapping:mEMORY[0x277CEB3A0]];

  return v4;
}

- (ATXCurrentABGroupDetails)initWithAssetMapping:(id)mapping
{
  mappingCopy = mapping;
  v11.receiver = self;
  v11.super_class = ATXCurrentABGroupDetails;
  v5 = [(ATXCurrentABGroupDetails *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_new();
    subTypeToABGroup = v5->_subTypeToABGroup;
    v5->_subTypeToABGroup = v6;

    v8 = objc_opt_new();
    subTypeToFinalSubscore = v5->_subTypeToFinalSubscore;
    v5->_subTypeToFinalSubscore = v8;

    [(ATXCurrentABGroupDetails *)v5 loadAssetFromAssetMapping:mappingCopy];
  }

  return v5;
}

- (void)loadAssetFromAssetMapping:(id)mapping
{
  mappingCopy = mapping;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CEBCF0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ATXCurrentABGroupDetails_loadAssetFromAssetMapping___block_invoke;
  v9[3] = &unk_2785A1068;
  v10 = mappingCopy;
  selfCopy = self;
  v12 = v5;
  v7 = v5;
  v8 = mappingCopy;
  [v6 iterConsumerSubTypesWithBlock:v9];
}

void __54__ATXCurrentABGroupDetails_loadAssetFromAssetMapping___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) getAssetFileAndSubscoreForConsumerSubType:a2];
  v4 = *(a1 + 40);
  v5 = [v8 second];
  [v4 setFinalSubscore:v5 subType:a2];

  v6 = *(a1 + 40);
  v7 = [v8 first];
  [v6 setABGroupFromFilename:v7 subType:a2 filenameToABGroup:*(a1 + 48)];
}

- (void)setFinalSubscore:(id)subscore subType:(unsigned __int8)type
{
  typeCopy = type;
  subscoreCopy = subscore;
  if (!subscoreCopy)
  {
    v7 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
    v8 = __atxlog_handle_default(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXCurrentABGroupDetails setFinalSubscore:v7 subType:v8];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"'subscore' value not specified for consumerSubType of '%@'", v7}];
    subscoreCopy = @"TotalScore";
  }

  subTypeToFinalSubscore = [(ATXCurrentABGroupDetails *)self subTypeToFinalSubscore];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
  [subTypeToFinalSubscore setObject:subscoreCopy forKeyedSubscript:v10];
}

- (void)setABGroupFromFilename:(id)filename subType:(unsigned __int8)type filenameToABGroup:(id)group
{
  typeCopy = type;
  v23 = *MEMORY[0x277D85DE8];
  filenameCopy = filename;
  groupCopy = group;
  v10 = [groupCopy objectForKeyedSubscript:filenameCopy];

  if (!v10)
  {
    v11 = [(ATXCurrentABGroupDetails *)self abGroupIdentifierForFilename:filenameCopy];
    [groupCopy setObject:v11 forKeyedSubscript:filenameCopy];
  }

  v12 = [groupCopy objectForKeyedSubscript:filenameCopy];
  subTypeToABGroup = [(ATXCurrentABGroupDetails *)self subTypeToABGroup];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
  [subTypeToABGroup setObject:v12 forKeyedSubscript:v14];

  v16 = __atxlog_handle_default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [groupCopy objectForKeyedSubscript:filenameCopy];
    v18 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
    v19 = 138412546;
    v20 = v17;
    v21 = 2112;
    v22 = v18;
    _os_log_debug_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEBUG, "_ATXAppPredictor ABGroup set to %@ for consumerSubType of '%@'", &v19, 0x16u);
  }
}

- (id)abGroupIdentifierForFilename:(id)filename
{
  filenameCopy = filename;
  v4 = objc_alloc(MEMORY[0x277CEB3C8]);
  abGroupOverride = [MEMORY[0x277CEB2B8] abGroupOverride];
  v6 = [v4 initWithAssetsForResource:filenameCopy ofType:@"plplist" specifiedABGroup:abGroupOverride];

  if (!v6)
  {
    v8 = __atxlog_handle_default(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(ATXCurrentABGroupDetails *)filenameCopy abGroupIdentifierForFilename:v8];
    }
  }

  groupIdentifier = [v6 groupIdentifier];
  v10 = groupIdentifier;
  if (groupIdentifier)
  {
    abGroupNilString = groupIdentifier;
  }

  else
  {
    abGroupNilString = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v12 = abGroupNilString;

  return v12;
}

- (id)abGroupIdentifierForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  subTypeToABGroup = [(ATXCurrentABGroupDetails *)self subTypeToABGroup];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
  v6 = [subTypeToABGroup objectForKeyedSubscript:v5];

  return v6;
}

- (id)finalSubScoreForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  subTypeToFinalSubscore = [(ATXCurrentABGroupDetails *)self subTypeToFinalSubscore];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
  v6 = [subTypeToFinalSubscore objectForKeyedSubscript:v5];

  return v6;
}

- (void)setFinalSubscore:(uint64_t)a1 subType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "'subscore' value not specified for consumerSubType of '%@'", &v2, 0xCu);
}

- (void)abGroupIdentifierForFilename:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Couldn't find file %@", &v2, 0xCu);
}

@end