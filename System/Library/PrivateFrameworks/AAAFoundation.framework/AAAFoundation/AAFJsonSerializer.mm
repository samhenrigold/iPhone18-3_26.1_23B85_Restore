@interface AAFJsonSerializer
- (id)_dataFromDictionary:(id)dictionary error:(id *)error;
- (id)mediaTypes;
@end

@implementation AAFJsonSerializer

- (id)mediaTypes
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"application/json";
  v4[1] = @"text/x-json";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_dataFromDictionary:(id)dictionary error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryCopy])
  {
    error = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryCopy options:1 error:error];
  }

  else if (error)
  {
    dictionaryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"JSON cannot be formed from dictionary: %@", dictionaryCopy];
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = dictionaryCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 errorWithDomain:@"AAFSerializationError" code:-701 userInfo:v8];

    error = 0;
  }

  return error;
}

@end