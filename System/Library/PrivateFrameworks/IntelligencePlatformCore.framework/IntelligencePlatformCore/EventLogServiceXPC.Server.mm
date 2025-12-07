@interface EventLogServiceXPC.Server
- (void)logEndWithId:(int64_t)id timestamp:(id)timestamp dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)payload completion:(id)completion;
- (void)logInstantWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)self0 completion:(id)self1;
- (void)logStartWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent completion:(id)completion;
@end

@implementation EventLogServiceXPC.Server

- (void)logStartWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent completion:(id)completion
{
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_1C4EF9C78();
  sub_1C4F01138();
  *(swift_allocObject() + 16) = v13;
  selfCopy = self;
  EventLogServiceXPC.Server.logStart(withId:timestamp:name:parent:completion:)();

  (*(v10 + 8))(v12, v9);
}

- (void)logEndWithId:(int64_t)id timestamp:(id)timestamp dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)payload completion:(id)completion
{
  idCopy = id;
  v30 = sub_1C4EF9CD8();
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _Block_copy(completion);
  sub_1C4EF9C78();
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v15 = sub_1C4F01678();
  v27 = sub_1C4F01138();
  v17 = v16;
  if (variant)
  {
    v18 = sub_1C4F01138();
    variant = v19;
  }

  else
  {
    v18 = 0;
  }

  payloadCopy = payload;
  selfCopy = self;
  v22 = sub_1C4EF9A68();
  v24 = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = v28;
  EventLogServiceXPC.Server.logEnd(withId:timestamp:dependencies:payloadType:payloadVariant:payload:completion:)(idCopy, v14, v15, v27, v17, v18, variant, v22, v24, sub_1C478812C, v25, v26, v27, v28, idCopy, v30, v31, v32, v33, v34, v35, v36, v37);

  sub_1C4434000(v22, v24);

  (*(v12 + 8))(v14, v30);
}

- (void)logInstantWithId:(int64_t)id timestamp:(id)timestamp name:(id)name parent:(int64_t)parent dependencies:(id)dependencies payloadType:(id)type payloadVariant:(id)variant payload:(id)self0 completion:(id)self1
{
  idCopy = id;
  parentCopy = parent;
  variantCopy = variant;
  v13 = sub_1C4EF9CD8();
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _Block_copy(completion);
  sub_1C4EF9C78();
  v30 = sub_1C4F01138();
  v31 = v16;
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v17 = sub_1C4F01678();
  v28 = sub_1C4F01138();
  v19 = v18;
  if (variant)
  {
    v20 = sub_1C4F01138();
    variantCopy = v21;
  }

  else
  {
    v20 = 0;
  }

  payloadCopy = payload;
  selfCopy = self;
  v24 = sub_1C4EF9A68();
  v26 = v25;

  v27 = swift_allocObject();
  *(v27 + 16) = v29;
  EventLogServiceXPC.Server.logInstant(withId:timestamp:name:parent:dependencies:payloadType:payloadVariant:payload:completion:)(idCopy, v15, v30, v31, parentCopy, v17, v28, v19, v20, variantCopy, v24, v26, sub_1C47880C0, v27, v28, v29, v30, v31, idCopy, parentCopy, v34, v35, v36, v37, v38, v39);

  sub_1C4434000(v24, v26);

  (*(v34 + 8))(v15, v35);
}

@end