@interface DUIngestableFiletypes
+ (BOOL)isFileURLSupported:(id)supported;
+ (NSArray)emlFileExtensions;
+ (NSArray)iWorkFileExtensions;
+ (NSArray)jsonFileExtensions;
+ (NSArray)officeFileExtensions;
+ (NSArray)pdfFileExtensions;
+ (NSArray)txtFileExtensions;
+ (NSArray)wrappedSupportedUTTypes;
+ (NSString)icloudFileExtension;
@end

@implementation DUIngestableFiletypes

+ (NSArray)wrappedSupportedUTTypes
{
  static DUIngestableFiletypes.wrappedSupportedUTTypes.getter();
  sub_249D21F40();
  v2 = sub_249D21FD0();

  return v2;
}

+ (BOOL)isFileURLSupported:(id)supported
{
  v3 = sub_249D21E00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249D21DF0();
  v7 = static DUIngestableFiletypes.isFileURLSupported(_:)();
  (*(v4 + 8))(v6, v3);
  return v7;
}

+ (NSString)icloudFileExtension
{
  v2 = sub_249D21F90();

  return v2;
}

+ (NSArray)officeFileExtensions
{
  v2 = sub_249D21FD0();

  return v2;
}

+ (NSArray)iWorkFileExtensions
{
  v2 = sub_249D21FD0();

  return v2;
}

+ (NSArray)pdfFileExtensions
{
  v2 = sub_249D21FD0();

  return v2;
}

+ (NSArray)jsonFileExtensions
{
  v2 = sub_249D21FD0();

  return v2;
}

+ (NSArray)txtFileExtensions
{
  v2 = sub_249D21FD0();

  return v2;
}

+ (NSArray)emlFileExtensions
{
  v2 = sub_249D21FD0();

  return v2;
}

@end