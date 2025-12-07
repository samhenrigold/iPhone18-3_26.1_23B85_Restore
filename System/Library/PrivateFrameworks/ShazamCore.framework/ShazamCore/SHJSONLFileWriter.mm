@interface SHJSONLFileWriter
+ (id)dataForJSONObject:(id)object error:(id *)error;
+ (id)dataForJSONObjects:(id)objects compression:(int)compression error:(id *)error;
+ (int64_t)dataCompressionFromAlgorithm:(int)algorithm;
- (BOOL)closeWithError:(id *)error;
- (BOOL)writeObject:(id)object error:(id *)error;
- (SHJSONLFileWriter)initWithDestination:(id)destination compression:(int)compression;
- (id)streamForWritingToURL:(id)l withCompression:(int)compression;
- (void)linkDataStream:(id)stream;
@end

@implementation SHJSONLFileWriter

- (SHJSONLFileWriter)initWithDestination:(id)destination compression:(int)compression
{
  v4 = *&compression;
  destinationCopy = destination;
  v13.receiver = self;
  v13.super_class = SHJSONLFileWriter;
  v8 = [(SHJSONLFileWriter *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_destination, destination);
    v10 = [(SHJSONLFileWriter *)v9 streamForWritingToURL:v9->_destination withCompression:v4];
    outputStream = v9->_outputStream;
    v9->_outputStream = v10;
  }

  return v9;
}

- (BOOL)writeObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [objc_opt_class() dataForJSONObject:objectCopy error:error];

  if (v7)
  {
    outputStream = [(SHJSONLFileWriter *)self outputStream];
    v9 = [outputStream processData:v7 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)closeWithError:(id *)error
{
  outputStream = [(SHJSONLFileWriter *)self outputStream];
  LOBYTE(error) = [outputStream closeWithError:error];

  return error;
}

+ (int64_t)dataCompressionFromAlgorithm:(int)algorithm
{
  if (algorithm <= 773)
  {
    if ((algorithm - 256) < 2)
    {
      return 1;
    }

    if (algorithm == 517)
    {
      return 3;
    }

LABEL_10:
    v15 = v4;
    v16 = v3;
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"The compression type is unsupported", v6, v5, v15, v16, v7, v8];
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  if (algorithm != 2049)
  {
    if (algorithm == 774)
    {
      return 2;
    }

    goto LABEL_10;
  }

  return 0;
}

+ (id)dataForJSONObjects:(id)objects compression:(int)compression error:(id *)error
{
  v6 = *&compression;
  v24 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  data = [MEMORY[0x277CBEB28] data];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = objectsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [self dataForJSONObject:*(*(&v19 + 1) + 8 * i) error:{error, v19}];
        if (!v15)
        {

          goto LABEL_12;
        }

        v16 = v15;
        [data appendData:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if ([data compressUsingAlgorithm:objc_msgSend(self error:{"dataCompressionFromAlgorithm:", v6), error}])
  {
    v17 = data;
  }

  else
  {
LABEL_12:
    v17 = 0;
  }

  return v17;
}

+ (id)dataForJSONObject:(id)object error:(id *)error
{
  objectCopy = object;
  data = [MEMORY[0x277CBEB28] data];
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:objectCopy options:8 error:error];
  if (v7)
  {
    [data appendData:v7];
    v8 = [@"\n" dataUsingEncoding:4];
    [data appendData:v8];

    v9 = data;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)streamForWritingToURL:(id)l withCompression:(int)compression
{
  v4 = *&compression;
  v11[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = [[SHDataStreamOutput alloc] initWithDestination:lCopy];

  if (v4)
  {
    v8 = [[SHDataCompression alloc] initForCompressionWithAlgorithm:v4];
    v11[0] = v8;
    v11[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    [(SHJSONLFileWriter *)self linkDataStream:v9];
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (void)linkDataStream:(id)stream
{
  streamCopy = stream;
  if ([streamCopy count])
  {
    v3 = 0;
    do
    {
      if (v3 == [streamCopy count] - 1)
      {
        break;
      }

      v4 = v3 + 1;
      v5 = [streamCopy objectAtIndexedSubscript:v3 + 1];
      v6 = [streamCopy objectAtIndexedSubscript:v3];
      [v6 setNext:v5];

      v3 = v4;
    }

    while ([streamCopy count] > v4);
  }
}

@end