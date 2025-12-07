@interface TSTimeErrorSequence
+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)timestamps timeError:(int64_t *)error count:(int64_t)count;
- (BOOL)exportTimeErrorsToDirectoryURL:(id)l withFilename:(id)filename;
- (TSTimeErrorSequence)initWithTimeErrors:(id)errors;
- (id)generatePythonScriptWithOutputPath:(id)path fileName:(id)name titleName:(id)titleName plotPath:(id)plotPath showPlot:(BOOL)plot;
@end

@implementation TSTimeErrorSequence

+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)timestamps timeError:(int64_t *)error count:(int64_t)count
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (timestamps && error && count >= 1)
  {
    do
    {
      ++timestamps;
      ++error;
      v9 = [TSTimeErrorValue initWithTimestamp:"initWithTimestamp:andError:" andError:?];
      [v8 addObject:?];

      --count;
    }

    while (count);
  }

  v10 = [objc_alloc(objc_opt_class()) initWithTimeErrors:?];

  return v10;
}

- (TSTimeErrorSequence)initWithTimeErrors:(id)errors
{
  errorsCopy = errors;
  v9.receiver = self;
  v9.super_class = TSTimeErrorSequence;
  v5 = [(TSTimeErrorSequence *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:?];
    timeErrors = v5->_timeErrors;
    v5->_timeErrors = v6;
  }

  return v5;
}

- (id)generatePythonScriptWithOutputPath:(id)path fileName:(id)name titleName:(id)titleName plotPath:(id)plotPath showPlot:(BOOL)plot
{
  plotCopy = plot;
  pathCopy = path;
  plotPathCopy = plotPath;
  v13 = MEMORY[0x277CCAB68];
  titleNameCopy = titleName;
  nameCopy = name;
  string = [v13 string];
  [string appendFormat:?];
  if (pathCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:pathCopy, nameCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:nameCopy, v19];
  }
  v17 = ;

  [string appendFormat:v17];
  [string appendFormat:titleNameCopy];

  if (plotPathCopy)
  {
    [string appendFormat:plotPathCopy];
  }

  if (plotCopy)
  {
    [string appendString:?];
  }

  return string;
}

- (BOOL)exportTimeErrorsToDirectoryURL:(id)l withFilename:(id)filename
{
  lCopy = l;
  filenameCopy = filename;
  if ([lCopy isFileURL])
  {
    path = [lCopy path];
    v9 = [path stringByAppendingPathComponent:?];

    v10 = fopen([v9 UTF8String], "w");
    v11 = v10 != 0;
    if (v10)
    {
      v12 = v10;
      v19 = v10 != 0;
      v20 = v9;
      fwrite("time,time error\n", 0x10uLL, 1uLL, v10);
      timeErrors = [(TSTimeErrorSequence *)self timeErrors];
      v14 = [timeErrors countByEnumeratingWithState:? objects:? count:?];
      if (v14)
      {
        v15 = v14;
        v16 = MEMORY[0];
        do
        {
          for (i = 0; i != v15; i = (i + 1))
          {
            if (MEMORY[0] != v16)
            {
              objc_enumerationMutation(timeErrors);
            }

            fprintf(v12, "%llu,%lld\n", [*(8 * i) timestamp], objc_msgSend(*(8 * i), "error"));
          }

          v15 = [timeErrors countByEnumeratingWithState:? objects:? count:?];
        }

        while (v15);
      }

      fclose(v12);
      v9 = v20;
      v11 = v19;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end