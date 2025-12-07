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
  if (objc_msgSend_isObjectArchivePath_(self, v17, pathCopy))
  {
    v22.receiver = self;
    v22.super_class = TSPFilePackageConverter;
    v19 = [(TSPPackageConverter *)&v22 newWriteChannelAtPath:pathCopy lastModificationDate:dateCopy size:size CRC:v10 packageWriter:writerCopy error:error];
  }

  else
  {
    v19 = objc_msgSend_newRawDataWriteChannelForRelativePath_originalLastModificationDate_originalSize_originalCRC_forceCalculatingSizeAndCRCForPreservingLastModificationDate_(writerCopy, v18, pathCopy, dateCopy, size, v10, 0);
  }

  v20 = v19;

  return v20;
}

- (BOOL)isValid
{
  v3 = objc_msgSend_package(self, a2, v2);
  v6 = objc_msgSend_zipArchive(v3, v4, v5);
  isValidPackageAtZipArchive = objc_msgSend_isValidPackageAtZipArchive_(TSPFilePackage, v7, v6);

  return isValidPackageAtZipArchive;
}

@end