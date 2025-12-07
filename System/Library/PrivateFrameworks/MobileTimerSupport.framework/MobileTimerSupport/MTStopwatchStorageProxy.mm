@interface MTStopwatchStorageProxy
- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)getStopwatchesWitchCompletion:(id)completion;
- (void)setSystemReady;
@end

@implementation MTStopwatchStorageProxy

- (void)getStopwatchesWitchCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_22D7EB8DC;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_22D81B4F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v8;
  v11[5] = v9;
  v11[6] = self;
  selfCopy = self;
  sub_22D75D890(0, 0, v7, &unk_22D825C80, v11);
}

- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = sub_22D81B4F8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = self;
  v17[5] = stopwatch;
  v17[6] = lap;
  v17[7] = source;
  v17[8] = sub_22D7EBBF0;
  v17[9] = v15;
  lapCopy = lap;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v13, &unk_22D825C60, v17);
}

- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_22D7EBBF0;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = stopwatch;
  v15[6] = v12;
  v15[7] = v13;
  v15[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v11, &unk_22D825C58, v15);
}

- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_22D7EBBF0;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = stopwatch;
  v15[6] = v12;
  v15[7] = v13;
  v15[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v11, &unk_22D825C50, v15);
}

- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_22D7EBBF0;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = stopwatch;
  v15[6] = v12;
  v15[7] = v13;
  v15[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v11, &unk_22D825C48, v15);
}

- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_22D7EBBF0;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = stopwatch;
  v15[6] = v12;
  v15[7] = v13;
  v15[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v11, &unk_22D825C40, v15);
}

- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_22D7EBBF0;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = stopwatch;
  v15[6] = v12;
  v15[7] = v13;
  v15[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v11, &unk_22D825C38, v15);
}

- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_22D7EB76C;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = stopwatch;
  v15[6] = v12;
  v15[7] = v13;
  v15[8] = source;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D75D890(0, 0, v11, &unk_22D825C30, v15);
}

- (void)setSystemReady
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_22D81B4F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_22D7BD9C8(0, 0, v5, &unk_22D825C18, v7);

  sub_22D764440(v5, &unk_27DA01FF0, &qword_22D81FC70);
}

@end