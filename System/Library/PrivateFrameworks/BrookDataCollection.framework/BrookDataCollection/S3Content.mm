@interface S3Content
- (NSData)gzipContent;
- (NSString)mimeType;
- (S3Content)initWithContent:(id)content filename:(id)filename bucket:(id)bucket gzip:(BOOL)gzip;
- (id)_gzipCompressData:(id)data;
- (void)setContent:(id)content;
@end

@implementation S3Content

- (S3Content)initWithContent:(id)content filename:(id)filename bucket:(id)bucket gzip:(BOOL)gzip
{
  contentCopy = content;
  filenameCopy = filename;
  bucketCopy = bucket;
  v17.receiver = self;
  v17.super_class = S3Content;
  v14 = [(S3Content *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_content, content);
    objc_storeStrong(&v15->_filename, filename);
    objc_storeStrong(&v15->_bucket, bucket);
    v15->_gzip = gzip;
  }

  return v15;
}

- (NSString)mimeType
{
  if (self->_gzip)
  {
    return @"application/zlib";
  }

  else
  {
    return @"text/plain";
  }
}

- (void)setContent:(id)content
{
  objc_storeStrong(&self->_content, content);
  contentCopy = content;
  gzipContentCache = self->_gzipContentCache;
  self->_gzipContentCache = 0;
}

- (NSData)gzipContent
{
  gzip = self->_gzip;
  gzipContentCache = self->_gzipContentCache;
  if (gzip && gzipContentCache == 0)
  {
    v6 = [(S3Content *)self _gzipCompressData:self->_content];
    v7 = self->_gzipContentCache;
    self->_gzipContentCache = v6;

    gzipContentCache = self->_gzipContentCache;
    if (!gzipContentCache)
    {
      [S3Content gzipContent];
    }
  }

  return gzipContentCache;
}

- (id)_gzipCompressData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
  memset(&v9, 0, sizeof(v9));
  if (deflateInit2_(&v9, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v9.avail_in = [dataCopy length];
    v9.next_in = [dataCopy bytes];
    do
    {
      v9.avail_out = 0x4000;
      v9.next_out = v10;
      v6 = deflate(&v9, 4);
      if (v6 == -2)
      {
        [S3Content _gzipCompressData:];
      }

      v7 = v6;
      [v4 appendBytes:v10 length:{0x4000 - v9.avail_out, v9.next_in}];
    }

    while (!v9.avail_out);
    if (v9.avail_in)
    {
      [S3Content _gzipCompressData:];
    }

    if (v7 != 1)
    {
      [S3Content _gzipCompressData:];
    }

    deflateEnd(&v9);
    v5 = v4;
  }

  return v5;
}

@end