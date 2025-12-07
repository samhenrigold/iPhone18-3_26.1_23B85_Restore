@interface NSData(FPFileMetadataSerialization)
+ (id)fp_dataWithFavoriteRank:()FPFileMetadataSerialization;
+ (id)fp_dataWithLastUsedDate:()FPFileMetadataSerialization;
- (id)fp_favoriteRank;
- (id)fp_lastUsedDate;
@end

@implementation NSData(FPFileMetadataSerialization)

+ (id)fp_dataWithLastUsedDate:()FPFileMetadataSerialization
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  [a3 timeIntervalSince1970];
  v6[0] = v3;
  v6[1] = 0;
  if ((fpfs_serialize_last_use_date(v6, v7, 0x10uLL, 1) & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:16];
  }

  return v4;
}

- (id)fp_lastUsedDate
{
  v3[0] = 0;
  v3[1] = 0;
  if ((fpfs_deserialize_last_use_date(v3, [self bytes], objc_msgSend(self, "length"), 1) & 0x80000000) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3[0]];
  }

  return v1;
}

+ (id)fp_dataWithFavoriteRank:()FPFileMetadataSerialization
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = fpfs_serialize_favorite_rank([a3 unsignedLongLongValue], &v6, 0x80uLL);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v6 length:v3];
  }

  return v4;
}

- (id)fp_favoriteRank
{
  v4 = 0;
  v1 = fpfs_deserialize_favorite_rank(&v4, [self bytes], objc_msgSend(self, "length"));
  v2 = 0;
  if ((v1 & 0x80000000) == 0 && v4)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  }

  return v2;
}

@end