@interface CUSPAKEM1
- (CUSPAKEM1)initWithDictionary:(id)dictionary error:(id *)error;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation CUSPAKEM1

- (NSDictionary)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"shareP";
  sharePData = self->_sharePData;
  data = sharePData;
  if (!sharePData)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v7[0] = data;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  if (!sharePData)
  {
  }

  return v4;
}

- (CUSPAKEM1)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CUSPAKEM1;
  v7 = [(CUSPAKEM1 *)&v13 init];
  if (v7)
  {
    v12 = -6700;
    TypeID = CFDataGetTypeID();
    v9 = CFDictionaryGetTypedValue(dictionaryCopy, @"shareP", TypeID, &v12);
    if (v9)
    {
      objc_storeStrong(&v7->_sharePData, v9);
      v10 = v7;
    }

    else if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "get sharePData failed: %d", v12);
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else if (error)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "super init failed");
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end