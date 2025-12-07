@interface GTFileWriterSession
+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
@end

@implementation GTFileWriterSession

+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  entriesCopy = entries;
  [optionsCopy compressionAlgorithm];
  v12 = [objc_opt_class() sessionWithFileEntries:entriesCopy relativeToURL:lCopy options:optionsCopy error:error];

  return v12;
}

@end