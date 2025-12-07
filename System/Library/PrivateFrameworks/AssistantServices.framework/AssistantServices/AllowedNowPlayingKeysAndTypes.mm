@interface AllowedNowPlayingKeysAndTypes
@end

@implementation AllowedNowPlayingKeysAndTypes

void ___AllowedNowPlayingKeysAndTypes_block_invoke()
{
  v20[22] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = *MEMORY[0x1E69B0F60];
  v19[0] = *MEMORY[0x1E69B0F20];
  v19[1] = v6;
  v20[0] = v1;
  v20[1] = v1;
  v7 = *MEMORY[0x1E69B1030];
  v19[2] = *MEMORY[0x1E69B0F70];
  v19[3] = v7;
  v20[2] = v0;
  v20[3] = v0;
  v8 = *MEMORY[0x1E69B0E58];
  v19[4] = *MEMORY[0x1E69B0E40];
  v19[5] = v8;
  v20[4] = v0;
  v20[5] = v0;
  v9 = *MEMORY[0x1E69B0FA0];
  v19[6] = *MEMORY[0x1E69B0FA8];
  v19[7] = v9;
  v20[6] = v4;
  v20[7] = v1;
  v10 = *MEMORY[0x1E69B0F80];
  v19[8] = *MEMORY[0x1E69B1048];
  v19[9] = v10;
  v20[8] = v1;
  v20[9] = v1;
  v11 = *MEMORY[0x1E69B1080];
  v19[10] = *MEMORY[0x1E69B1078];
  v19[11] = v11;
  v20[10] = v1;
  v20[11] = v1;
  v12 = *MEMORY[0x1E69B0F00];
  v19[12] = *MEMORY[0x1E69B1070];
  v19[13] = v12;
  v20[12] = v4;
  v20[13] = v0;
  v13 = *MEMORY[0x1E69B0E98];
  v19[14] = *MEMORY[0x1E69B0EA0];
  v19[15] = v13;
  v20[14] = v0;
  v20[15] = v2;
  v14 = *MEMORY[0x1E69B0EE8];
  v19[16] = *MEMORY[0x1E69B0EC8];
  v19[17] = v14;
  v20[16] = v2;
  v20[17] = v1;
  v15 = *MEMORY[0x1E69B1028];
  v19[18] = *MEMORY[0x1E69B0EF0];
  v19[19] = v15;
  v20[18] = v1;
  v20[19] = v5;
  v16 = *MEMORY[0x1E69B0FD8];
  v19[20] = *MEMORY[0x1E69B0EB8];
  v19[21] = v16;
  v20[20] = v3;
  v20[21] = v1;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:22];
  v18 = _AllowedNowPlayingKeysAndTypes_schema;
  _AllowedNowPlayingKeysAndTypes_schema = v17;
}

@end