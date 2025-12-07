@interface NSData(SiriUIFoundationAdditions)
- (id)sruif_dataByCompressingWithGzip;
- (void)sruif_dataByCompressingWithGzip;
@end

@implementation NSData(SiriUIFoundationAdditions)

- (id)sruif_dataByCompressingWithGzip
{
  memset(&v7.total_out, 0, 72);
  v7.avail_in = [self length];
  if (deflateInit2_(&v7, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [NSData(SiriUIFoundationAdditions) sruif_dataByCompressingWithGzip];
    }

    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB28] dataWithLength:{deflateBound(&v7, objc_msgSend(self, "length"))}];
    do
    {
      mutableBytes = [v2 mutableBytes];
      v7.next_out = (mutableBytes + v7.total_out);
      v4 = [v2 length];
      v7.avail_out = v4 - LODWORD(v7.total_out);
      v5 = deflate(&v7, 4);
    }

    while (!v5);
    if (v5 != 1)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [NSData(SiriUIFoundationAdditions) sruif_dataByCompressingWithGzip];
      }

      v2 = 0;
    }

    deflateEnd(&v7);
    [v2 setLength:v7.total_out];
  }

  return v2;
}

- (void)sruif_dataByCompressingWithGzip
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26951F000, v0, v1, "%s Error deflating NSData: %{public}s (zlib error=%{public}d)", v2);
}

@end