@interface NSData(Compression)
- (id)inflate:()Compression error:;
- (void)inflateGzipWithError:()Compression;
- (void)inflateLZRawWithError:()Compression;
@end

@implementation NSData(Compression)

- (id)inflate:()Compression error:
{
  if (a3 == 1)
  {
    v4 = [self inflateGzipWithError:a4];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v4 = [self inflateLZRawWithError:a4];
  }

  a2 = v4;
LABEL_6:

  return a2;
}

- (void)inflateLZRawWithError:()Compression
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
  v6 = compression_decode_buffer([v5 mutableBytes], objc_msgSend(v5, "length"), objc_msgSend(self, "bytes"), objc_msgSend(self, "length"), 0, COMPRESSION_LZ4_RAW);
  if (v6)
  {
    a3 = [v5 subdataWithRange:{0, v6}];
  }

  else
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[NSData(Compression) inflateLZRawWithError:]";
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Failed to unzip", buf, 0xCu);
    }

    if (a3)
    {
      v10 = *MEMORY[0x277CCA450];
      v11 = @"Failed to decompress data";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      *a3 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v8];

      a3 = 0;
    }
  }

  return a3;
}

- (void)inflateGzipWithError:()Compression
{
  v36[1] = *MEMORY[0x277D85DE8];
  if (![self length])
  {
    a3 = self;
    goto LABEL_30;
  }

  v5 = [self length];
  v6 = [self length];
  v7 = [MEMORY[0x277CBEB28] dataWithLength:v5 + (v6 >> 1)];
  v24.avail_in = [self length];
  v24.zalloc = 0;
  v24.zfree = 0;
  v24.total_out = 0;
  if (inflateInit2_(&v24, 47, "1.2.12", 112))
  {
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[NSData(Compression) inflateGzipWithError:]";
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - Failed to inflate (gzip inflateInit2())", buf, 0xCu);
    }

    if (!a3)
    {
      goto LABEL_29;
    }

    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Failed to decompress data";
    v9 = MEMORY[0x277CBEAC0];
    v10 = v36;
    v11 = &v35;
    goto LABEL_28;
  }

  v12 = v6 >> 1;
  do
  {
    total_out = v24.total_out;
    if (total_out >= [v7 length])
    {
      [v7 increaseLengthBy:v12];
    }

    mutableBytes = [v7 mutableBytes];
    v24.next_out = (mutableBytes + v24.total_out);
    v15 = [v7 length];
    v24.avail_out = v15 - LODWORD(v24.total_out);
    v16 = inflate(&v24, 2);
  }

  while (!v16);
  v17 = v16;
  if (v16 != 1)
  {
    v18 = ABSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[NSData(Compression) inflateGzipWithError:]";
      v33 = 1024;
      v34 = v17;
      _os_log_impl(&dword_242072000, v18, OS_LOG_TYPE_DEFAULT, "%s - Failed to inflate (gzip inflate()): %d", buf, 0x12u);
    }

    if (a3)
    {
      v29 = *MEMORY[0x277CCA450];
      v30 = @"Failed to decompress data";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a3 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v19];
    }

    if (!inflateEnd(&v24))
    {
      v21 = ABSLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = "[NSData(Compression) inflateGzipWithError:]";
        _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s - Failed to inflate (!done)", buf, 0xCu);
      }

      if (!a3)
      {
        goto LABEL_29;
      }

      v25 = *MEMORY[0x277CCA450];
      v26 = @"Failed to decompress data";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v26;
      v11 = &v25;
LABEL_28:
      v22 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
      *a3 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v22];

      a3 = 0;
      goto LABEL_29;
    }

LABEL_20:
    v20 = ABSLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[NSData(Compression) inflateGzipWithError:]";
      _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "%s - Failed to inflate (gzip inflatedEnd())", buf, 0xCu);
    }

    if (!a3)
    {
      goto LABEL_29;
    }

    v27 = *MEMORY[0x277CCA450];
    v28 = @"Failed to decompress data";
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v28;
    v11 = &v27;
    goto LABEL_28;
  }

  if (inflateEnd(&v24))
  {
    goto LABEL_20;
  }

  [v7 setLength:v24.total_out];
  a3 = [MEMORY[0x277CBEA90] dataWithData:v7];
LABEL_29:

LABEL_30:

  return a3;
}

@end