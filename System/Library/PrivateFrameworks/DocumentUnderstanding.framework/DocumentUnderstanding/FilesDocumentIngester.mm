@interface FilesDocumentIngester
+ (id)getEffectiveFileExtensionForURLWithFileURL:(id)l;
+ (id)readTextFromImageOn:(id)on;
@end

@implementation FilesDocumentIngester

+ (id)getEffectiveFileExtensionForURLWithFileURL:(id)l
{
  v3 = sub_232CE8C00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE8BB0();
  sub_232C1EE24(v6);
  (*(v4 + 8))(v6, v3);
  v7 = sub_232CE9D20();

  return v7;
}

+ (id)readTextFromImageOn:(id)on
{
  sub_232CE9D50();
  static FilesDocumentIngester.readTextFromImage(on:)();
  v4 = v3;

  if (v4)
  {
    v5 = sub_232CE9D20();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end