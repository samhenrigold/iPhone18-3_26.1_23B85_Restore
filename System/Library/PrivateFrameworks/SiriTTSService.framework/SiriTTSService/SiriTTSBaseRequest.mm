@interface SiriTTSBaseRequest
- (NSURL)outputPath;
- (id)didReportInstrument;
- (void)encodeWithCoder:(id)coder;
- (void)setDidReportInstrument:(id)instrument;
- (void)setOutputPath:(id)path;
@end

@implementation SiriTTSBaseRequest

- (void)setDidReportInstrument:(id)instrument
{
  v4 = _Block_copy(instrument);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B1A96D2C;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1B1AD6170(v4, v5);
}

- (NSURL)outputPath
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1B1B0FC30();
  v5 = sub_1B1C2C1C8();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    v6 = sub_1B1C2C118();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

- (void)setOutputPath:(id)path
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (path)
  {
    sub_1B1C2C168();
    v8 = sub_1B1C2C1C8();
    v9 = 0;
  }

  else
  {
    v8 = sub_1B1C2C1C8();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  selfCopy = self;
  sub_1B1B0FD20(v7);
}

- (id)didReportInstrument
{
  v2 = sub_1B1B10820();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B1B18B50;
    v6[3] = &block_descriptor_2;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1A99C9C(coderCopy);
}

@end