@interface StorageInspectorReport
+ (id)createFromData:(id)data error:(id *)error;
- (NSString)description;
- (_TtC14IMDPersistence22StorageInspectorReport)init;
- (id)encodeToData:(id *)data;
@end

@implementation StorageInspectorReport

- (NSString)description
{
  selfCopy = self;
  sub_1B7C75B18();

  v3 = sub_1B7CFEA30();

  return v3;
}

- (_TtC14IMDPersistence22StorageInspectorReport)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport) = 0;
  v3 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  v4 = sub_1B7CFDFF0();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for StorageInspectorReport(0);
  return [(StorageInspectorReport *)&v6 init];
}

- (id)encodeToData:(id *)data
{
  sub_1B7CFDC10();
  swift_allocObject();
  selfCopy = self;
  sub_1B7CFDC00();
  type metadata accessor for StorageInspectorReport(0);
  sub_1B7C77334(&qword_1EBA52E38, type metadata accessor for StorageInspectorReport, &protocol conformance descriptor for StorageInspectorReport);
  v5 = sub_1B7CFDBF0();
  v7 = v6;

  v8 = sub_1B7CFE010();
  sub_1B7C204B0(v5, v7);

  return v8;
}

+ (id)createFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = sub_1B7CFE020();
  v7 = v6;

  sub_1B7CFDBE0();
  swift_allocObject();
  sub_1B7CFDBD0();
  type metadata accessor for StorageInspectorReport(0);
  sub_1B7C77334(&qword_1EBA52E40, type metadata accessor for StorageInspectorReport, &protocol conformance descriptor for StorageInspectorReport);
  sub_1B7CFDBC0();
  sub_1B7C204B0(v5, v7);

  return v9;
}

@end