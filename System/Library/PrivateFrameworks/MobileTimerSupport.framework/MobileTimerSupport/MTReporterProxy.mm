@interface MTReporterProxy
- (void)didCreateLiveActivityForAlarm:(id)alarm withId:(id)id date:(id)date;
- (void)didPostNotificationForAlarm:(id)alarm fullNotificationId:(id)id shortNotificationId:(id)notificationId;
- (void)didRenderSceneForAlarm:(id)alarm withType:(id)type;
- (void)didRetrieveDeliveredNotificationForAlarm:(id)alarm date:(id)date;
- (void)didUpdateAudioReporterId:(unint64_t)id;
- (void)processFiredAlarm:(id)alarm;
@end

@implementation MTReporterProxy

- (void)processFiredAlarm:(id)alarm
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_22D81B4F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = alarm;
  alarmCopy = alarm;
  selfCopy = self;
  sub_22D75D890(0, 0, v7, &unk_22D820A88, v9);
}

- (void)didPostNotificationForAlarm:(id)alarm fullNotificationId:(id)id shortNotificationId:(id)notificationId
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  if (alarm)
  {
    alarm = sub_22D81B2C8();
    v13 = v12;
    if (id)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (notificationId)
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!id)
  {
    goto LABEL_6;
  }

LABEL_3:
  id = sub_22D81B2C8();
  v15 = v14;
  if (!notificationId)
  {
    goto LABEL_7;
  }

LABEL_4:
  notificationId = sub_22D81B2C8();
  v17 = v16;
LABEL_8:
  selfCopy = self;
  v19 = sub_22D81B4F8();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = selfCopy;
  v20[5] = id;
  v20[6] = v15;
  v20[7] = notificationId;
  v20[8] = v17;
  v20[9] = alarm;
  v20[10] = v13;
  sub_22D75D890(0, 0, v11, &unk_22D820A80, v20);
}

- (void)didRetrieveDeliveredNotificationForAlarm:(id)alarm date:(id)date
{
  selfCopy = self;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22D81A8C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = sub_22D81B2C8();
  v16 = v15;
  sub_22D81A878();
  v17 = sub_22D81B4F8();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  (*(v8 + 16))(v11, v13, v7);
  v18 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = selfCopy;
  *(v19 + 4) = selfCopy;
  *(v19 + 5) = v14;
  *(v19 + 6) = v16;
  (*(v8 + 32))(&v19[v18], v11, v7);
  v21 = v20;
  sub_22D75D890(0, 0, v6, &unk_22D820A78, v19);

  (*(v8 + 8))(v13, v7);
}

- (void)didCreateLiveActivityForAlarm:(id)alarm withId:(id)id date:(id)date
{
  selfCopy = self;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_22D81A8C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = sub_22D81B2C8();
  v27 = v16;
  v28 = v15;
  v17 = sub_22D81B2C8();
  v19 = v18;
  sub_22D81A878();
  v20 = sub_22D81B4F8();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  (*(v9 + 16))(v12, v14, v8);
  v21 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v28;
  v24 = selfCopy;
  *(v22 + 4) = selfCopy;
  *(v22 + 5) = v23;
  *(v22 + 6) = v27;
  *(v22 + 7) = v17;
  *(v22 + 8) = v19;
  (*(v9 + 32))(&v22[v21], v12, v8);
  v25 = v24;
  sub_22D75D890(0, 0, v7, &unk_22D820A70, v22);

  (*(v9 + 8))(v14, v8);
}

- (void)didRenderSceneForAlarm:(id)alarm withType:(id)type
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_22D81B2C8();
  v10 = v9;
  v11 = sub_22D81B2C8();
  v13 = v12;
  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v8;
  v15[6] = v10;
  v15[7] = v11;
  v15[8] = v13;
  selfCopy = self;
  sub_22D75D890(0, 0, v7, &unk_22D820A68, v15);
}

- (void)didUpdateAudioReporterId:(unint64_t)id
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_22D81B4F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = id;
  selfCopy = self;
  sub_22D75D890(0, 0, v7, &unk_22D820A38, v9);
}

@end