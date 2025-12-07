@interface NSError(ChronoServices)
+ (id)badResponseForFunction:()ChronoServices;
+ (id)badResponseFromServer;
+ (id)chs_initWithErrorCode:()ChronoServices;
+ (id)decodingError:()ChronoServices;
+ (id)encodingError:()ChronoServices;
+ (id)invalidControlDefinition;
+ (id)serverUnavailable;
@end

@implementation NSError(ChronoServices)

+ (id)chs_initWithErrorCode:()ChronoServices
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [self alloc];
  v9 = *MEMORY[0x1E696A278];
  if ((a3 - 1) > 7)
  {
    v5 = &stru_1F0A56DE8;
  }

  else
  {
    v5 = off_1E7454740[a3 - 1];
  }

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 initWithDomain:@"CHSErrorDomain" code:a3 userInfo:v6];

  return v7;
}

+ (id)encodingError:()ChronoServices
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696ABC0];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error encoding: %@", v3, *MEMORY[0x1E696A578]];
  v9[1] = *MEMORY[0x1E696A278];
  v10[0] = v5;
  v10[1] = @"Server Unavailable";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v4 errorWithDomain:@"CHSErrorDomain" code:9 userInfo:v6];

  return v7;
}

+ (id)decodingError:()ChronoServices
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696ABC0];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error decoding: %@", v3, *MEMORY[0x1E696A578]];
  v9[1] = *MEMORY[0x1E696A278];
  v10[0] = v5;
  v10[1] = @"Server Unavailable";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v4 errorWithDomain:@"CHSErrorDomain" code:9 userInfo:v6];

  return v7;
}

+ (id)serverUnavailable
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v1 = *MEMORY[0x1E696A278];
  v5[0] = *MEMORY[0x1E696A578];
  v5[1] = v1;
  v6[0] = @"Unable to obtain the remote target";
  v6[1] = @"Server Unavailable";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = [v0 errorWithDomain:@"CHSErrorDomain" code:1 userInfo:v2];

  return v3;
}

+ (id)invalidControlDefinition
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v1 = *MEMORY[0x1E696A278];
  v5[0] = *MEMORY[0x1E696A578];
  v5[1] = v1;
  v6[0] = @"Invalid control definition (missing intent).";
  v6[1] = @"Invalid control definition";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = [v0 errorWithDomain:@"CHSErrorDomain" code:7 userInfo:v2];

  return v3;
}

+ (id)badResponseFromServer
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v5[0] = *MEMORY[0x1E696A578];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad response from server"];
  v5[1] = *MEMORY[0x1E696A278];
  v6[0] = v1;
  v6[1] = @"Bad response";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = [v0 errorWithDomain:@"CHSErrorDomain" code:8 userInfo:v2];

  return v3;
}

+ (id)badResponseForFunction:()ChronoServices
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696ABC0];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad response from server: %@", v3, *MEMORY[0x1E696A578]];
  v9[1] = *MEMORY[0x1E696A278];
  v10[0] = v5;
  v10[1] = @"Bad response";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v4 errorWithDomain:@"CHSErrorDomain" code:8 userInfo:v6];

  return v7;
}

@end