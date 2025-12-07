@interface BlastDoorTranscriptBackgroundCommandTypeWrapper
- (BlastDoorBackgroundRequestInfo)request;
- (BlastDoorBackgroundUpdateInfo)refresh;
- (BlastDoorBackgroundUpdateInfo)requestResponse;
- (BlastDoorBackgroundUpdateInfo)update;
- (BlastDoorTranscriptBackgroundCommandTypeWrapper)init;
- (NSString)description;
- (unint64_t)type;
@end

@implementation BlastDoorTranscriptBackgroundCommandTypeWrapper

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, 0x122uLL);
  memcpy(v6, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, sizeof(v6));
  sub_21430865C(__dst, v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (unint64_t)type
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, 0x122uLL);
  v2 = sub_2143215E0(__dst);
  sub_213FBF540(__dst);
  return v2;
}

- (BlastDoorBackgroundUpdateInfo)update
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, sizeof(__dst));
  memcpy(v13, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, 0x122uLL);
  if (sub_2143215E0(v13))
  {
    v3 = 0;
  }

  else
  {
    v4 = sub_213FBF540(v13);
    updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
    v6 = objc_allocWithZone(updated);
    memcpy(&v6[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v4, 0x122uLL);
    memcpy(v11, __dst, 0x122uLL);
    v7 = sub_213FBF540(v11);
    sub_2143087B4(v7, v10);
    v9.receiver = v6;
    v9.super_class = updated;
    v3 = [(BlastDoorTranscriptBackgroundCommandTypeWrapper *)&v9 init];
  }

  return v3;
}

- (BlastDoorBackgroundUpdateInfo)refresh
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, sizeof(__dst));
  memcpy(v13, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, 0x122uLL);
  if (sub_2143215E0(v13) == 1)
  {
    v3 = sub_213FBF540(v13);
    updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
    v5 = objc_allocWithZone(updated);
    memcpy(&v5[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v3, 0x122uLL);
    memcpy(v11, __dst, 0x122uLL);
    v6 = sub_213FBF540(v11);
    sub_2143087B4(v6, v10);
    v9.receiver = v5;
    v9.super_class = updated;
    v7 = [(BlastDoorTranscriptBackgroundCommandTypeWrapper *)&v9 init];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BlastDoorBackgroundRequestInfo)request
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, sizeof(__dst));
  memcpy(v19, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, 0x122uLL);
  if (sub_2143215E0(v19) == 2)
  {
    v3 = sub_213FBF540(v19);
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = type metadata accessor for _ObjCBackgroundRequestInfoWrapper();
    v15 = *v3;
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo];
    *v9 = v15;
    *(v9 + 2) = v4;
    *(v9 + 3) = v5;
    v9[32] = v6;
    memcpy(v17, __dst, 0x122uLL);
    v10 = sub_213FBF540(v17);
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);

    sub_213FDC9D0(v11, v12);
    v16.receiver = v8;
    v16.super_class = v7;
    v13 = [(BlastDoorTranscriptBackgroundCommandTypeWrapper *)&v16 init];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BlastDoorBackgroundUpdateInfo)requestResponse
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, sizeof(__dst));
  memcpy(v13, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType, 0x122uLL);
  if (sub_2143215E0(v13) == 3)
  {
    v3 = sub_213FBF540(v13);
    updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
    v5 = objc_allocWithZone(updated);
    memcpy(&v5[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v3, 0x122uLL);
    memcpy(v11, __dst, 0x122uLL);
    v6 = sub_213FBF540(v11);
    sub_2143087B4(v6, v10);
    v9.receiver = v5;
    v9.super_class = updated;
    v7 = [(BlastDoorTranscriptBackgroundCommandTypeWrapper *)&v9 init];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BlastDoorTranscriptBackgroundCommandTypeWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end