@interface BlastDoorAttributionInfo
- (BlastDoorAttributionInfo)init;
- (BlastDoorAttributionInfo_PreviewGenerationConstraints)previewGenerationConstraints;
- (NSString)description;
- (double)previewGenerationSizeHeight;
- (double)previewGenerationSizeWidth;
- (unint64_t)adamID;
@end

@implementation BlastDoorAttributionInfo

- (NSString)description
{
  v2 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 136];
  v3 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 104];
  v25 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 120];
  v26 = v2;
  v4 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 136];
  v27 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 152];
  v5 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 72];
  v6 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 40];
  v21 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 56];
  v22 = v5;
  v7 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 72];
  v8 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 104];
  v23 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 88];
  v24 = v8;
  v9 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 8];
  v18[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo);
  v18[1] = v9;
  v10 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 40];
  v12 = *(&self->super.isa + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo);
  v11 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 8];
  v19 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 24];
  v20 = v10;
  v16[8] = v25;
  v16[9] = v4;
  v16[10] = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 152];
  v16[4] = v21;
  v16[5] = v7;
  v16[6] = v23;
  v16[7] = v3;
  v16[0] = v12;
  v16[1] = v11;
  v28 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 168];
  v17 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 168];
  v16[2] = v19;
  v16[3] = v6;
  sub_2142E4A90(v18, v15);
  sub_2146D9608();
  v13 = sub_2146D9588();

  return v13;
}

- (unint64_t)adamID
{
  if (self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo])
  {
    return 0;
  }

  else
  {
    return *(&self->super.isa + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo);
  }
}

- (double)previewGenerationSizeHeight
{
  result = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 80];
  if (self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 88])
  {
    return 0.0;
  }

  return result;
}

- (double)previewGenerationSizeWidth
{
  result = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 96];
  if (self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 104])
  {
    return 0.0;
  }

  return result;
}

- (BlastDoorAttributionInfo_PreviewGenerationConstraints)previewGenerationConstraints
{
  v2 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 128];
  v11 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 112];
  v12 = v2;
  v13 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 144];
  v14 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 160];
  v3 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 168];
  if ((v3 & 0xFF00) == 0x200)
  {
    v4 = 0;
  }

  else
  {
    v5 = type metadata accessor for _ObjCAttributionInfo_PreviewGenerationConstraintsWrapper();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
    v8 = v12;
    *v7 = v11;
    *(v7 + 1) = v8;
    *(v7 + 2) = v13;
    *(v7 + 6) = v14;
    *(v7 + 28) = v3;
    v10.receiver = v6;
    v10.super_class = v5;
    v4 = [(BlastDoorAttributionInfo *)&v10 init];
  }

  return v4;
}

- (BlastDoorAttributionInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end