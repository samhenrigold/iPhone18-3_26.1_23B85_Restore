@interface TSPFilePackageConverter
- (BOOL)isValid;
- (id)newWriteChannelAtPath:(id)path lastModificationDate:(id)date size:(unint64_t)size CRC:(unsigned int)c packageWriter:(id)writer error:(id *)error;
@end

@implementation TSPFilePackageConverter

- (id)newWriteChannelAtPath:(id)path lastModificationDate:(id)date size:(unint64_t)size CRC:(unsigned int)c packageWriter:(id)writer error:(id *)error
{
  v10 = *&c;
  pathCopy = path;
  dateCopy = date;
  writerCopy = writer;
  if ([(TSPPackageConverter *)self isObjectArchivePath:pathCopy])
  {
    v20.receiver = self;
    v20.super_class = TSPFilePackageConverter;
    v17 = [(TSPPackageConverter *)&v20 newWriteChannelAtPath:pathCopy lastModificationDate:dateCopy size:size CRC:v10 packageWriter:writerCopy error:error];
  }

  else
  {
    v17 = [writerCopy newRawDataWriteChannelForRelativePath:pathCopy originalLastModificationDate:dateCopy originalSize:size originalCRC:v10 forceCalculatingSizeAndCRCForPreservingLastModificationDate:0];
  }

  v18 = v17;

  return v18;
}

- (BOOL)isValid
{
  package = [(TSPPackageConverter *)self package];
  zipArchive = [package zipArchive];
  v4 = [TSPFilePackage isValidPackageAtZipArchive:zipArchive];

  return v4;
}

@end