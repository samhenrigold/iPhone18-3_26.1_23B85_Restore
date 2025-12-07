@interface CUSPAKEM2
- (CUSPAKEM2)initWithDictionary:(id)dictionary error:(id *)error;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation CUSPAKEM2

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"confirmV";
  confirmVData = self->_confirmVData;
  data = confirmVData;
  if (!confirmVData)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v9[1] = @"shareV";
  v10[0] = data;
  shareVData = self->_shareVData;
  data2 = shareVData;
  if (!shareVData)
  {
    data2 = [MEMORY[0x1E695DEF0] data];
  }

  v10[1] = data2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (shareVData)
  {
    if (confirmVData)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (confirmVData)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v7;
}

- (CUSPAKEM2)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = CUSPAKEM2;
  v7 = [(CUSPAKEM2 *)&v15 init];
  if (v7)
  {
    v14 = -6700;
    TypeID = CFDataGetTypeID();
    v9 = CFDictionaryGetTypedValue(dictionaryCopy, @"confirmV", TypeID, &v14);
    if (v9)
    {
      objc_storeStrong(&v7->_confirmVData, v9);
      v10 = CFDataGetTypeID();
      v11 = CFDictionaryGetTypedValue(dictionaryCopy, @"shareV", v10, &v14);
      if (v11)
      {
        objc_storeStrong(&v7->_shareVData, v11);
        v12 = v7;
      }

      else if (error)
      {
        NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "get shareV failed: %d", v14);
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "get confirmV failed: %d", v14);
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (error)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "super init failed");
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end