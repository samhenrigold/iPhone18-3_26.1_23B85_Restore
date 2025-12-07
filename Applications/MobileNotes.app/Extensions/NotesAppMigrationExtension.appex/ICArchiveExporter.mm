@interface ICArchiveExporter
+ (ICArchiveExporter)exporterForHandoffToPages;
+ (ICArchiveExporter)exporterForMarkdown;
- (BOOL)removeArchiveAt:(id)at error:(id *)error;
- (id)createArchiveForObjects:(id)objects progress:(id)progress error:(id *)error;
@end

@implementation ICArchiveExporter

+ (ICArchiveExporter)exporterForHandoffToPages
{
  sub_10001C5F0();

  return v2;
}

+ (ICArchiveExporter)exporterForMarkdown
{
  sub_10001C720();

  return v2;
}

- (id)createArchiveForObjects:(id)objects progress:(id)progress error:(id *)error
{
  v7 = sub_1000847C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
  v11 = sub_100085208();
  progressCopy = progress;
  selfCopy = self;
  sub_10001B668(v11, progressCopy, v10);

  sub_1000846F8(v14);
  v16 = v15;
  (*(v8 + 8))(v10, v7);

  return v16;
}

- (BOOL)removeArchiveAt:(id)at error:(id *)error
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084768();
  selfCopy = self;
  sub_100069D50(v8);
  (*(v6 + 8))(v8, v5);

  return 1;
}

@end