@interface NSData
- (id)dbg_gzipDeflate;
- (id)dbg_gzipDeflateWithLevel:(int)level windowBits:(int)bits memLevel:(int)memLevel;
- (id)dbg_gzipInflate;
- (id)dbg_gzipInflateIfCompressed;
- (id)dbg_gzipInflateWithWindowBits:(int)bits;
@end

@implementation NSData

- (id)dbg_gzipInflateIfCompressed
{
  if ([(NSData *)self dbg_isGzipped])
  {
    selfCopy = [(NSData *)self dbg_gzipInflate];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)dbg_gzipInflate
{
  v3 = DebugHierarchyGzipOSLog(self);
  v4 = os_signpost_id_make_with_pointer(v3, self);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v9 = 134217984;
    v10 = [(NSData *)self length];
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Inflate", "Begin with size: %{xcode:size-in-bytes}lu", &v9, 0xCu);
  }

  v7 = [(NSData *)self dbg_gzipInflateWithWindowBits:47];

  return v7;
}

- (id)dbg_gzipInflateWithWindowBits:(int)bits
{
  if (![(NSData *)self length])
  {
    selfCopy = self;
    goto LABEL_26;
  }

  v5 = [(NSData *)self length];
  v6 = [(NSData *)self length];
  v7 = [NSMutableData dataWithLength:v5 + (v6 >> 1)];
  v29.avail_in = [(NSData *)self length:[(NSData *)self bytes]];
  v29.zalloc = 0;
  v29.zfree = 0;
  v29.total_out = 0;
  v8 = inflateInit2_(&v29, bits, "1.2.12", 112);
  if (!v8)
  {
    v14 = v6 >> 1;
    do
    {
      total_out = v29.total_out;
      if (total_out >= [v7 length])
      {
        [v7 increaseLengthBy:v14];
      }

      mutableBytes = [v7 mutableBytes];
      v29.next_out = &mutableBytes[v29.total_out];
      v17 = [v7 length];
      v29.avail_out = v17 - LODWORD(v29.total_out);
      v18 = inflate(&v29, 2);
    }

    while (!v18);
    if (v18 == 1)
    {
      v19 = inflateEnd(&v29);
      if (!v19)
      {
        [v7 setLength:v29.total_out];
        selfCopy = [NSData dataWithData:v7];
        v20 = DebugHierarchyGzipOSLog(selfCopy);
        v21 = os_signpost_id_make_with_pointer(v20, self);
        v22 = v20;
        v12 = v22;
        if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          v23 = [(NSData *)selfCopy length];
          *buf = 134217984;
          *&buf[4] = v23;
          _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_END, v21, "Inflate", "Completed with size: %{xcode:size-in-bytes}lu", buf, 0xCu);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v19 = inflateEnd(&v29);
      if (!v19)
      {
        v26 = DebugHierarchyGzipOSLog(v19);
        v10 = os_signpost_id_make_with_pointer(v26, self);
        v27 = v26;
        v12 = v27;
        if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v27))
        {
          goto LABEL_24;
        }

        *buf = 67109120;
        goto LABEL_23;
      }
    }

    v24 = DebugHierarchyGzipOSLog(v19);
    v10 = os_signpost_id_make_with_pointer(v24, self);
    v25 = v24;
    v12 = v25;
    if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v25))
    {
      goto LABEL_24;
    }

    *buf = 67109120;
    goto LABEL_23;
  }

  v9 = DebugHierarchyGzipOSLog(v8);
  v10 = os_signpost_id_make_with_pointer(v9, self);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v11))
  {
    goto LABEL_24;
  }

  *buf = 67109120;
LABEL_23:
  _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_END, v10, "Inflate", "Completed with size: %{xcode:size-in-bytes}d", buf, 8u);
LABEL_24:
  selfCopy = 0;
LABEL_25:

LABEL_26:

  return selfCopy;
}

- (id)dbg_gzipDeflate
{
  v3 = DebugHierarchyGzipOSLog(self);
  v4 = os_signpost_id_make_with_pointer(v3, self);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v9 = 134217984;
    v10 = [(NSData *)self length];
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Deflate", "Begin with size: %{xcode:size-in-bytes}lu", &v9, 0xCu);
  }

  v7 = [(NSData *)self dbg_gzipDeflateWithLevel:2 windowBits:31 memLevel:9];

  return v7;
}

- (id)dbg_gzipDeflateWithLevel:(int)level windowBits:(int)bits memLevel:(int)memLevel
{
  if ([(NSData *)self length])
  {
    memset(&strm.avail_in, 0, 104);
    strm.next_in = [(NSData *)self bytes];
    strm.avail_in = [(NSData *)self length];
    v9 = deflateInit2_(&strm, level, 8, bits, memLevel, 0, "1.2.12", 112);
    if (v9)
    {
      v10 = DebugHierarchyGzipOSLog(v9);
      v11 = os_signpost_id_make_with_pointer(v10, self);
      v12 = v10;
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v27 = 67109120;
        LODWORD(v28) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_END, v11, "Deflate", "Completed with size: %{xcode:size-in-bytes}d", &v27, 8u);
      }

      selfCopy = 0;
      v15 = v13;
    }

    else
    {
      v15 = [NSMutableData dataWithLength:0x4000];
      do
      {
        total_out = strm.total_out;
        if (total_out >= [v15 length])
        {
          [v15 increaseLengthBy:0x4000];
        }

        mutableBytes = [v15 mutableBytes];
        strm.next_out = &mutableBytes[strm.total_out];
        v22 = [v15 length];
        strm.avail_out = v22 - LODWORD(strm.total_out);
        deflate(&strm, 4);
      }

      while (!strm.avail_out);
      deflateEnd(&strm);
      [v15 setLength:strm.total_out];
      selfCopy = [NSData dataWithData:v15];
      v23 = DebugHierarchyGzipOSLog(selfCopy);
      v24 = os_signpost_id_make_with_pointer(v23, self);
      v25 = v23;
      v13 = v25;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        v27 = 134217984;
        v28 = [(NSData *)selfCopy length];
        _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_END, v24, "Deflate", "Completed with size: %{xcode:size-in-bytes}lu", &v27, 0xCu);
      }
    }
  }

  else
  {
    v16 = DebugHierarchyGzipOSLog(0);
    v17 = os_signpost_id_make_with_pointer(v16, self);
    v18 = v16;
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      strm.next_in = 67109120;
      _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_INTERVAL_END, v17, "Deflate", "Completed with size: %{xcode:size-in-bytes}d", &strm, 8u);
    }

    selfCopy = self;
  }

  return selfCopy;
}

@end