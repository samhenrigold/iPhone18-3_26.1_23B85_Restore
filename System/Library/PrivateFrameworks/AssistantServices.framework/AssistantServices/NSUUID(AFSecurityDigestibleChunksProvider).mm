@interface NSUUID(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSUUID(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v9[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ((a3 & 1) == 0)
    {
      v8 = (v6 + 16);
      (*(v6 + 2))(v6, AFSecurityDigestibleChunksProviderType, 4);
      strcpy(v9, "{NSUUID=#}");
      (*v8)(v7, v9, 11);
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
    }

    v9[0] = 0;
    v9[1] = 0;
    [self getUUIDBytes:v9];
    (*(v7 + 2))(v7, v9, 16);
    if ((a3 & 1) == 0)
    {
      (*(v7 + 2))(v7, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }
}

@end