@interface SFSiriWordTimingInfo
+ (id)serializableArrayWithTimingInfoArray:(id)array;
+ (id)timingInfoArrayWithSerializableArray:(id)array;
- (SFSiriWordTimingInfo)initWithDictionary:(id)dictionary;
- (_NSRange)textRange;
- (id)dictionary;
@end

@implementation SFSiriWordTimingInfo

+ (id)serializableArrayWithTimingInfoArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dictionary = [*(*(&v12 + 1) + 8 * i) dictionary];
        [v4 addObject:dictionary];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)timingInfoArrayWithSerializableArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [SFSiriWordTimingInfo alloc];
          v12 = [(SFSiriWordTimingInfo *)v11 initWithDictionary:v10, v14];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (SFSiriWordTimingInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SFSiriWordTimingInfo;
  v5 = [(SFSiriWordTimingInfo *)&v9 init];
  if (v5)
  {
    CFDictionaryGetDouble();
    v5->_timeOffset = v6;
    v5->_textRange.location = CFDictionaryGetInt64Ranged();
    v5->_textRange.length = CFDictionaryGetInt64Ranged();
    v7 = v5;
  }

  return v5;
}

- (id)dictionary
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"t";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeOffset];
  v9[0] = v3;
  v8[1] = @"o";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_textRange.location];
  v9[1] = v4;
  v8[2] = @"l";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_textRange.length];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end