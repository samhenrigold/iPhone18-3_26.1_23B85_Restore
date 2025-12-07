@interface SASelfLogger
- (SASelfLogger)init;
- (id)collectVMCPUStatsWithStage:(int64_t)stage requestId:(id)id;
- (id)getSiriRequestUUIDFor:(id)for;
- (void)emitMWTCheckPointWithMwtCheckpoint:(int64_t)checkpoint requestId:(id)id timeStamp:(unint64_t)stamp;
- (void)emitMWTMusicMetadata:(id)metadata requestId:(id)id;
- (void)emitVMCPUStatsWithVmCpuStatsData:(id)data;
@end

@implementation SASelfLogger

- (void)emitMWTCheckPointWithMwtCheckpoint:(int64_t)checkpoint requestId:(id)id timeStamp:(unint64_t)stamp
{
  v8 = sub_2664DE4A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE488();
  selfCopy = self;
  v13 = sub_266475DC8(checkpoint, v11);
  if (v13)
  {
    v14 = v13;
    [(*((*MEMORY[0x277D85000] & selfCopy->super.isa) + 0x50))() emitMessage:v13 timestamp:stamp];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
}

- (id)getSiriRequestUUIDFor:(id)for
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_2664E02C8();
  sub_2664DE448();

  v6 = sub_2664DE4A8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_2664DE478();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (void)emitMWTMusicMetadata:(id)metadata requestId:(id)id
{
  v6 = sub_2664DE4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE488();
  metadataCopy = metadata;
  selfCopy = self;
  sub_26646C500(metadataCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)emitVMCPUStatsWithVmCpuStatsData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = sub_2664DE2F8();
  v7 = v6;

  sub_26646DD6C(v5, v7);
  sub_266348774(v5, v7);
}

- (id)collectVMCPUStatsWithStage:(int64_t)stage requestId:(id)id
{
  v5 = sub_2664DE4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE488();
  v9 = sub_2664765F8(stage, v8);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = 0;
  if (v11 >> 60 != 15)
  {
    v13 = sub_2664DE2E8();
    sub_2662B79A8(v9, v11);
    v12 = v13;
  }

  return v12;
}

- (SASelfLogger)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriAudioSelfLogger();
  return [(SASelfLogger *)&v3 init];
}

@end