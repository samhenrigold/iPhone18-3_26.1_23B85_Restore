@interface ULAudioOdometryProvider
- (ULAudioOdometryProvider)init;
- (ULAudioOdometryProvider)initWithQueue:(id)queue;
- (void)startWithUpdateInterval:(double)interval handler:(id)handler completionHandler:;
- (void)stopWithCompletionHandler:(id)handler;
@end

@implementation ULAudioOdometryProvider

- (ULAudioOdometryProvider)initWithQueue:(id)queue
{
  queueCopy = queue;
  swift_defaultActor_initialize();
  *&self->audioAccessoryManager[32] = 0;
  *self->odometryTask = 0;
  *self->odometryHandler = 0;
  v5 = [objc_allocWithZone(MEMORY[0x277CC1C20]) init];
  *&self->audioAccessoryManager[16] = sub_2591E928C();
  *&self->audioAccessoryManager[24] = &off_286A5FC80;
  *&self->_anon_60[8] = v5;
  *&self->odometryHandler[8] = queueCopy;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioOdometryProvider();
  return [(ULAudioOdometryProvider *)&v7 init];
}

- (void)startWithUpdateInterval:(double)interval handler:(id)handler completionHandler:
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = _Block_copy(v5);
  v14 = swift_allocObject();
  *(v14 + 16) = interval;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_259212920();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_259225EC8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_259225ED0;
  v17[5] = v16;

  sub_2591F2F9C(0, 0, v11, &unk_259225ED8, v17);
}

- (void)stopWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_259212920();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_259225EA8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_259225EB0;
  v12[5] = v11;

  sub_2591F2F9C(0, 0, v7, &unk_259226200, v12);
}

- (ULAudioOdometryProvider)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end