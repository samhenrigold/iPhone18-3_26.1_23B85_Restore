@interface HFCameraEventDebugLogger
+ (NSURL)debugLogDirectory;
- (HFCameraEventDebugLogger)initWithCameraProfile:(id)profile;
- (void)logEvents:(NSArray *)events toJSONWithDebugLogType:(unint64_t)type completionHandler:(id)handler;
- (void)logFetchEventsToJSONWithDateInterval:(NSDateInterval *)interval limit:(unint64_t)limit ascending:(BOOL)ascending reason:(NSString *)reason playheadPosition:(NSDate *)position completionHandler:(id)handler;
- (void)removeExistingFilesWithCompletionHandler:(id)handler;
@end

@implementation HFCameraEventDebugLogger

- (HFCameraEventDebugLogger)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  swift_defaultActor_initialize();
  *self->cameraProfile = 0;
  *self->fetchCounter = 0;
  *self->updateCounter = sub_20D9D5DF8(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval;
  v7 = sub_20DD63484();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *&self->_anon_60[8] = profile;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CameraEventDebugLogger(0);
  return [(HFCameraEventDebugLogger *)&v9 init];
}

+ (NSURL)debugLogDirectory
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  swift_getObjCClassMetadata();
  static CameraEventDebugLogger.debugLogDirectory.getter(v4);
  v5 = sub_20DD63514();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = 0;
  if (v7 != 1)
  {
    v9 = sub_20DD634D4();
    (*(v6 + 8))(v4, v5);
    v8 = v9;
  }

  return v8;
}

- (void)removeExistingFilesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD94DD0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD94DD8;
  v12[5] = v11;

  sub_20DAB35AC(0, 0, v7, &unk_20DD94DE0, v12);
}

- (void)logFetchEventsToJSONWithDateInterval:(NSDateInterval *)interval limit:(unint64_t)limit ascending:(BOOL)ascending reason:(NSString *)reason playheadPosition:(NSDate *)position completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = interval;
  *(v19 + 24) = limit;
  *(v19 + 32) = ascending;
  *(v19 + 40) = reason;
  *(v19 + 48) = position;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = sub_20DD65114();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_20DD94DB0;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_20DD94DB8;
  v22[5] = v21;
  intervalCopy = interval;
  reasonCopy = reason;
  positionCopy = position;

  sub_20DAB35AC(0, 0, v17, &unk_20DD94DC0, v22);
}

- (void)logEvents:(NSArray *)events toJSONWithDebugLogType:(unint64_t)type completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = events;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20DD65114();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20DD94D88;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20DD94D90;
  v16[5] = v15;
  eventsCopy = events;

  sub_20DAB35AC(0, 0, v11, &unk_20DD95520, v16);
}

@end