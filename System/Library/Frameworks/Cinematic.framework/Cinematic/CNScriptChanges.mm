@interface CNScriptChanges
+ (id)_changesFromInternal:(id)internal;
- (CNScriptChanges)initWithDataRepresentation:(NSData *)dataRepresentation;
- (NSArray)addedDetectionTracks;
- (NSArray)userDecisions;
- (NSData)dataRepresentation;
- (float)fNumber;
- (id)_initWithInternalChanges:(id)changes;
@end

@implementation CNScriptChanges

- (id)_initWithInternalChanges:(id)changes
{
  changesCopy = changes;
  v9.receiver = self;
  v9.super_class = CNScriptChanges;
  v5 = [(CNScriptChanges *)&v9 init];
  if (v5)
  {
    v6 = [changesCopy copy];
    internalChanges = v5->_internalChanges;
    v5->_internalChanges = v6;
  }

  return v5;
}

+ (id)_changesFromInternal:(id)internal
{
  internalCopy = internal;
  v5 = [[self alloc] _initWithInternalChanges:internalCopy];

  return v5;
}

- (CNScriptChanges)initWithDataRepresentation:(NSData *)dataRepresentation
{
  v23[4] = *MEMORY[0x277D85DE8];
  v4 = dataRepresentation;
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v23[2] = objc_opt_class();
  v23[3] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v6 = MEMORY[0x277CCAAC8];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v22 = 0;
  v8 = [v6 unarchivedObjectOfClasses:v7 fromData:v4 error:&v22];

  v9 = v22;
  if (v9)
  {
    v11 = _CNLogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CNScriptChanges initWithDataRepresentation:];
    }

    selfCopy = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v14 = _CNLogSystem(isKindOfClass);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CNScriptChanges initWithDataRepresentation:v8];
      }
    }

    v11 = [v8 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if ((v15 & 1) == 0)
    {
      v16 = _CNLogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CNScriptChanges initWithDataRepresentation:v11];
      }
    }

    integerValue = [v11 integerValue];
    if (integerValue == 1)
    {
      v18 = [v8 objectForKeyedSubscript:@"scriptChanges"];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();
      if ((v19 & 1) == 0)
      {
        v20 = _CNLogSystem(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [CNScriptChanges initWithDataRepresentation:v18];
        }
      }

      self = [(CNScriptChanges *)self _initWithInternalChanges:v18];
      selfCopy = self;
    }

    else
    {
      v18 = _CNLogSystem(integerValue);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CNScriptChanges initWithDataRepresentation:];
      }

      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (NSData)dataRepresentation
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"version";
  v11[1] = @"scriptChanges";
  v12[0] = &unk_284A07070;
  internalChanges = [(CNScriptChanges *)self internalChanges];
  v12[1] = internalChanges;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v10 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    v7 = _CNLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CNScriptChanges dataRepresentation];
    }

    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (float)fNumber
{
  internalChanges = [(CNScriptChanges *)self internalChanges];
  v3 = [internalChanges objectForKeyedSubscript:*MEMORY[0x277D3E910]];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (NSArray)userDecisions
{
  internalChanges = [(CNScriptChanges *)self internalChanges];
  v3 = [internalChanges objectForKeyedSubscript:@"user_decisions"];

  v4 = [MEMORY[0x277D3E838] _mutableDecisionsWithCinematographyDictionaries:v3];
  v5 = [CNDecision _takeDecisionsFromInternal:v4];

  return v5;
}

- (NSArray)addedDetectionTracks
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  internalChanges = [(CNScriptChanges *)self internalChanges];
  v5 = [internalChanges objectForKeyedSubscript:@"user_tracks"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277D3E860]);
        v13 = [v12 _initWithCinematographyDictionary:{v11, v17}];
        v14 = [CNDetectionTrack _trackFromInternal:v13];
        [array addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [array copy];

  return v15;
}

- (void)initWithDataRepresentation:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithDataRepresentation:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithDataRepresentation:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end