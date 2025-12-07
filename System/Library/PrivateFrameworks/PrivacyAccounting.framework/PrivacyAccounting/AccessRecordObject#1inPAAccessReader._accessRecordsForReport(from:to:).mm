@interface AccessRecordObject#1inPAAccessReader._accessRecordsForReport(from:to:)
- (NSNumber)accessCount;
- (NSString)accessorBundleID;
- (NSString)identifier;
- (_TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject)init;
- (int64_t)timing;
@end

@implementation AccessRecordObject#1inPAAccessReader._accessRecordsForReport(from:to:)

- (NSString)identifier
{

  v2 = sub_1DF27BB08();

  return v2;
}

- (NSString)accessorBundleID
{

  v2 = sub_1DF27BB08();

  return v2;
}

- (int64_t)timing
{
  v3 = type metadata accessor for AccessRecord.Timing(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record;
  v8 = type metadata accessor for AccessRecord(0);
  sub_1DF27AB94(&v7[*(v8 + 28)], v6, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1DF27AA08(v6, type metadata accessor for AccessRecord.Timing);
      return 2;
    }

    else
    {
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
      v12 = sub_1DF27BA98();
      v13 = *(*(v12 - 8) + 8);
      v13(&v6[v11], v12);
      v13(v6, v12);
      return 3;
    }
  }

  else
  {
    sub_1DF27AA08(v6, type metadata accessor for AccessRecord.Timing);
    return 1;
  }
}

- (NSNumber)accessCount
{
  v2 = self + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record;
  v3 = type metadata accessor for AccessRecord(0);
  initWithUnsignedInteger_ = 0;
  v5 = &v2[*(v3 + 32)];
  if ((v5[8] & 1) == 0)
  {
    initWithUnsignedInteger_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  }

  return initWithUnsignedInteger_;
}

- (_TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end