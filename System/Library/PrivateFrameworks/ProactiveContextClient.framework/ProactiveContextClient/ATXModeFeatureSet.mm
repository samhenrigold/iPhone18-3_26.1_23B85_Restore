@interface ATXModeFeatureSet
- (ATXModeFeatureSet)init;
- (ATXModeFeatureSet)initWithCoder:(id)coder;
- (ATXModeFeatureSet)initWithDictionary:(id)dictionary;
- (BOOL)BOOLValueForFeatureType:(int)type;
- (id)description;
- (id)dictionaryRepresentation;
- (id)stringForFeatureType:(int)type;
- (id)valueForFeatureType:(int)type;
- (void)_enumerateFeaturesUsingBlock:(id)block;
- (void)mergeWithFeatures:(id)features;
- (void)setNullForFeatureType:(int)type;
- (void)setString:(id)string forFeatureType:(int)type;
- (void)setValue:(BOOL)value forBinaryFeatureOfType:(int)type;
- (void)setValue:(id)value forFeatureType:(int)type;
@end

@implementation ATXModeFeatureSet

- (ATXModeFeatureSet)init
{
  v7.receiver = self;
  v7.super_class = ATXModeFeatureSet;
  v2 = [(ATXModeFeatureSet *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    features = v2->_features;
    v2->_features = v3;

    v5 = v2;
  }

  return v2;
}

- (ATXModeFeatureSet)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ATXModeFeatureSet;
  v5 = [(ATXModeFeatureSet *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    features = v5->_features;
    v5->_features = v6;

    v8 = v5;
  }

  return v5;
}

- (void)setValue:(BOOL)value forBinaryFeatureOfType:(int)type
{
  v4 = *&type;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:value];
  [(ATXModeFeatureSet *)self setValue:v6 forFeatureType:v4];
}

- (void)setValue:(id)value forFeatureType:(int)type
{
  v4 = *&type;
  v8 = [value copy];
  features = self->_features;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)features setObject:v8 forKeyedSubscript:v7];
}

- (void)setNullForFeatureType:(int)type
{
  v3 = *&type;
  null = [MEMORY[0x277CBEB68] null];
  features = self->_features;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [(NSMutableDictionary *)features setObject:null forKeyedSubscript:v6];
}

- (void)setString:(id)string forFeatureType:(int)type
{
  v4 = *&type;
  v8 = [string copy];
  features = self->_features;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)features setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)BOOLValueForFeatureType:(int)type
{
  v3 = [(ATXModeFeatureSet *)self valueForFeatureType:*&type];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)valueForFeatureType:(int)type
{
  v3 = *&type;
  features = self->_features;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [(NSMutableDictionary *)features objectForKeyedSubscript:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self->_features;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)stringForFeatureType:(int)type
{
  v3 = *&type;
  features = self->_features;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [(NSMutableDictionary *)features objectForKeyedSubscript:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self->_features;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_enumerateFeaturesUsingBlock:(id)block
{
  blockCopy = block;
  features = self->_features;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ATXModeFeatureSet__enumerateFeaturesUsingBlock___block_invoke;
  v7[3] = &unk_279AB8290;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)features enumerateKeysAndObjectsUsingBlock:v7];
}

void __50__ATXModeFeatureSet__enumerateFeaturesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  (*(v6 + 16))(v6, [a2 intValue], v7, a4);
}

- (void)mergeWithFeatures:(id)features
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__ATXModeFeatureSet_mergeWithFeatures___block_invoke;
  v3[3] = &unk_279AB82B8;
  v3[4] = self;
  [features _enumerateFeaturesUsingBlock:v3];
}

void __39__ATXModeFeatureSet_mergeWithFeatures___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setValue:v5 forFeatureType:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setString:v5 forFeatureType:a2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) setNullForFeatureType:a2];
      }
    }
  }
}

- (id)dictionaryRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = objc_opt_new();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ATXModeFeatureSet_dictionaryRepresentation__block_invoke;
  v5[3] = &unk_279AB82E0;
  v5[4] = &v6;
  [(ATXModeFeatureSet *)self _enumerateFeaturesUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__ATXModeFeatureSet_dictionaryRepresentation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 copy];
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (a2 >= 0x1D)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];
  }

  else
  {
    v6 = off_279AB8300[a2];
  }

  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  dictionaryRepresentation = [(ATXModeFeatureSet *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", dictionaryRepresentation];

  return v4;
}

- (ATXModeFeatureSet)initWithCoder:(id)coder
{
  v29[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"fs"];

  if (!v10)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = __atxlog_handle_modes(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ATXModeFeatureSet *)coderCopy initWithCoder:v14];
      }

      goto LABEL_10;
    }

    v22 = [coderCopy containsValueForKey:@"fs"];
    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    if (v22)
    {
      v28 = *MEMORY[0x277CCA450];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"archive contains illegal nil value for key %@", @"fs"];
      v29[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v18 = v23;
      v19 = -1;
    }

    else
    {
      v26 = *MEMORY[0x277CCA450];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ not present", @"fs"];
      v27 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v18 = v23;
      v19 = -2;
    }

LABEL_9:
    v20 = [v18 initWithDomain:@"com.apple.duetexpertd.modes" code:v19 userInfo:v17];

    [coderCopy failWithError:v20];
LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ maps to unexpected class", @"fs"];
    v25 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v18 = v15;
    v19 = -3;
    goto LABEL_9;
  }

  self = [(ATXModeFeatureSet *)self initWithDictionary:v10];
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_260C9F000, a2, OS_LOG_TYPE_ERROR, "ATXModeFeatureSet: error initWithCoder: %@", &v4, 0xCu);
}

@end