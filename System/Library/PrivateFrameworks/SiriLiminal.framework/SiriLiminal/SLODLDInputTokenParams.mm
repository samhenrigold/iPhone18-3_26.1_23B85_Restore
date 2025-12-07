@interface SLODLDInputTokenParams
- (SLODLDInputTokenParams)initWithShape:(id)shape;
- (void)_initWithDefaults;
- (void)populateWithTokens:(id)tokens error:(id *)error;
@end

@implementation SLODLDInputTokenParams

- (void)populateWithTokens:(id)tokens error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  shape = self->_shape;
  if (shape)
  {
    if ([(NSArray *)shape count]> 1)
    {
      v13 = [(NSArray *)self->_shape objectAtIndexedSubscript:1];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__SLODLDInputTokenParams_populateWithTokens_error___block_invoke;
      v17[3] = &unk_279C0E860;
      v17[4] = self;
      v17[5] = unsignedIntegerValue;
      [tokensCopy enumerateObjectsUsingBlock:v17];
      v15 = [tokensCopy count];
      if (v15 < unsignedIntegerValue)
      {
        v16 = v15;
        do
        {
          [(NSMutableArray *)self->_mlInputIds setObject:&unk_2878A76C0 atIndexedSubscript:v16];
          [(NSMutableArray *)self->_mlTypeIds setObject:&unk_2878A76C0 atIndexedSubscript:v16];
          [(NSMutableArray *)self->_mlAttnMask setObject:&unk_2878A76C0 atIndexedSubscript:v16];
          [(NSMutableArray *)self->_mlPadMask setObject:&unk_2878A76D0 atIndexedSubscript:v16++];
        }

        while (unsignedIntegerValue != v16);
      }
    }

    else if (error)
    {
      v8 = objc_alloc(MEMORY[0x277CCA9B8]);
      v18 = *MEMORY[0x277CCA450];
      v19 = @"Index in toeken shape is not valid";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v19;
      v11 = &v18;
LABEL_7:
      v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
      *error = [v8 initWithDomain:@"com.apple.sl" code:116 userInfo:v12];
    }
  }

  else if (error)
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Toekn shape not initialized";
    v9 = MEMORY[0x277CBEAC0];
    v10 = v21;
    v11 = &v20;
    goto LABEL_7;
  }
}

void *__51__SLODLDInputTokenParams_populateWithTokens_error___block_invoke(void *result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (result[5] <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v6 = result;
    [*(result[4] + 8) setObject:a2 atIndexedSubscript:a3];
    [*(v6[4] + 16) setObject:&unk_2878A76D0 atIndexedSubscript:a3];
    [*(v6[4] + 24) setObject:&unk_2878A76D0 atIndexedSubscript:a3];
    v7 = *(v6[4] + 32);

    return [v7 setObject:&unk_2878A76C0 atIndexedSubscript:a3];
  }

  return result;
}

- (void)_initWithDefaults
{
  v3 = [(NSArray *)self->_shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedIntegerValue];
  mlInputIds = self->_mlInputIds;
  self->_mlInputIds = v5;

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedIntegerValue];
  mlTypeIds = self->_mlTypeIds;
  self->_mlTypeIds = v7;

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedIntegerValue];
  mlAttnMask = self->_mlAttnMask;
  self->_mlAttnMask = v9;

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedIntegerValue];
  mlPadMask = self->_mlPadMask;
  self->_mlPadMask = v11;

  if (unsignedIntegerValue)
  {
    for (i = 0; i != unsignedIntegerValue; ++i)
    {
      [(NSMutableArray *)self->_mlInputIds setObject:&unk_2878A76C0 atIndexedSubscript:i];
      [(NSMutableArray *)self->_mlTypeIds setObject:&unk_2878A76C0 atIndexedSubscript:i];
      [(NSMutableArray *)self->_mlAttnMask setObject:&unk_2878A76C0 atIndexedSubscript:i];
      [(NSMutableArray *)self->_mlPadMask setObject:&unk_2878A76D0 atIndexedSubscript:i];
    }
  }
}

- (SLODLDInputTokenParams)initWithShape:(id)shape
{
  v17 = *MEMORY[0x277D85DE8];
  shapeCopy = shape;
  v12.receiver = self;
  v12.super_class = SLODLDInputTokenParams;
  v6 = [(SLODLDInputTokenParams *)&v12 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([shapeCopy count] == 2)
  {
    objc_storeStrong(&v6->_shape, shape);
    [(SLODLDInputTokenParams *)v6 _initWithDefaults];
LABEL_4:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v10 = v8;
    v11 = [shapeCopy count];
    *buf = 136315394;
    v14 = "[SLODLDInputTokenParams initWithShape:]";
    v15 = 2048;
    v16 = v11;
    _os_log_error_impl(&dword_26754E000, v10, OS_LOG_TYPE_ERROR, "%s Expected 2D array, got %lu, not running model", buf, 0x16u);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end