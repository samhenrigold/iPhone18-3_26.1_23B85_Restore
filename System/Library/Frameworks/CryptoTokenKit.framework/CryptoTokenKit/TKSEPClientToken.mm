@interface TKSEPClientToken
+ (BOOL)handlesTokenID:(id)d;
+ (id)builtinTokenIDs;
- (TKSEPClientToken)initWithTokenID:(id)d;
@end

@implementation TKSEPClientToken

+ (id)builtinTokenIDs
{
  if (builtinTokenIDs_onceToken != -1)
  {
    +[TKSEPClientToken builtinTokenIDs];
  }

  v3 = builtinTokenIDs_tokenIDs;

  return v3;
}

void __35__TKSEPClientToken_builtinTokenIDs__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (+[TKSEPKey hasSEP])
  {
    v0 = *MEMORY[0x1E697AED0];
    v7 = *MEMORY[0x1E697AEE0];
    v8 = v0;
    v1 = MEMORY[0x1E695DEC8];
    v2 = &v7;
    v3 = 2;
  }

  else
  {
    v6 = *MEMORY[0x1E697AED0];
    v1 = MEMORY[0x1E695DEC8];
    v2 = &v6;
    v3 = 1;
  }

  v4 = [v1 arrayWithObjects:v2 count:{v3, v6, v7, v8}];
  v5 = builtinTokenIDs_tokenIDs;
  builtinTokenIDs_tokenIDs = v4;
}

+ (BOOL)handlesTokenID:(id)d
{
  dCopy = d;
  v4 = [[TKTokenID alloc] initWithTokenID:dCopy];

  classID = [(TKTokenID *)v4 classID];
  v6 = [classID isEqualToString:*MEMORY[0x1E697AEE0]];

  return v6;
}

- (TKSEPClientToken)initWithTokenID:(id)d
{
  v4.receiver = self;
  v4.super_class = TKSEPClientToken;
  return [(TKClientToken *)&v4 _initWithTokenID:d];
}

@end