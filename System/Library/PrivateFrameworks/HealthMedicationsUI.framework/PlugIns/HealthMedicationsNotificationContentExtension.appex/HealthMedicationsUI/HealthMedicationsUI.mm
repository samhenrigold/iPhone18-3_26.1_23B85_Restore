id sub_1000019B4()
{
  _s51HealthMedicationsNotificationContentExtensionBundleCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100010910 = result;
  return result;
}

id sub_100001A08()
{
  if (qword_100010900 != -1)
  {
    swift_once();
  }

  v1 = qword_100010910;
  qword_100010918 = qword_100010910;
  unk_100010920 = 0x617A696C61636F4CLL;
  qword_100010928 = 0xEB00000000656C62;

  return v1;
}

id sub_100001A90()
{
  v1 = OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setTimeStyle:1];
    [v4 setDateStyle:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100001B2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter] = 0;
  v7 = [objc_opt_self() hk_currentDeviceHas4InchScreen];
  v8 = 16.0;
  if (v7)
  {
    v8 = 8.0;
  }

  *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_margin] = v8;
  *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel] = 0;
  *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView] = 0;
  v9 = [objc_allocWithZone(HKHealthStore) init];
  sub_100006568();
  swift_allocObject();
  v10 = v9;
  *&v4[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_scheduleItemDataSource] = sub_100006558();
  sub_100006538();
  v11 = v10;
  *&v4[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_medicationDataSource] = sub_100006528();
  if (a2)
  {
    v12 = sub_1000065A8();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v4;
  v15.super_class = type metadata accessor for NotificationViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

id sub_100001E20()
{
  v1 = OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel;
  v2 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10000629C(0, &qword_100010898, UIFont_ptr);
    v6 = sub_1000066A8();
    [v5 setFont:v6];

    [v5 setAdjustsFontForContentSizeCategory:1];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100001F3C()
{
  v1 = OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView;
  v2 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView);
  }

  else
  {
    sub_100006250(0, &qword_100010850, &type metadata for Swift.AnyObject + 8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100006CB0;
    *(v4 + 32) = sub_100001E20();
    v5 = objc_allocWithZone(UIStackView);
    sub_10000629C(0, &qword_100010888, UIView_ptr);
    isa = sub_100006608().super.isa;

    v7 = [v5 initWithArrangedSubviews:isa];

    [v7 setAxis:0];
    [v7 setAlignment:3];
    [v7 setDistribution:0];
    [v7 setSpacing:0.0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1000020A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  sub_100005DB0(0, &qword_100010870, &type metadata accessor for MedicationVisualizationConfig, &type metadata accessor for Optional);
  __chkstk_darwin();
  v58 = &v54 - v4;
  sub_100005DB0(0, &qword_100010878, &type metadata accessor for Locale, &type metadata accessor for Optional);
  __chkstk_darwin();
  v6 = &v54 - v5;
  v7 = sub_100001A90();
  isa = sub_100006478().super.isa;
  v9 = [v7 stringFromDate:isa];

  v10 = sub_1000065B8();
  v12 = v11;

  v13 = sub_100001E20();
  v14 = sub_1000064A8();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  if (qword_100010908 != -1)
  {
    swift_once();
  }

  v15 = qword_100010918;
  v16 = xmmword_100010920;
  sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100006CC0;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100005820();
  *(v17 + 32) = v10;
  *(v17 + 40) = v12;
  v56 = v12;

  v53._countAndFlagsBits = 0xE000000000000000;
  v68._object = 0x8000000100007290;
  v68._countAndFlagsBits = 0xD00000000000002CLL;
  v18.super.isa = v15;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  sub_100006468(v68, v16, v18, v69, 0, v53);
  if (*(v17 + 16))
  {
    sub_1000065C8();
  }

  sub_100005E14(v6, &qword_100010878, &type metadata accessor for Locale);
  v19 = sub_1000065A8();

  [v13 setText:v19];

  sub_100006250(0, &qword_100010850, &type metadata for Swift.AnyObject + 8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100006CB0;
  *(v20 + 32) = sub_100001F3C();
  v65 = v20;
  v21 = v55;
  v22 = *(v55 + 16);
  if (v22)
  {
    v54 = v3;
    v59 = _swiftEmptyArrayStorage;
    sub_10000548C(0, v22, 0);
    v57 = sub_100006658();
    v23 = v59;
    v24 = (v21 + 40);
    do
    {
      v25 = v23;
      v26 = *(v24 - 8);
      v27 = *v24;
      sub_100006648();
      sub_100006638();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v64 = v27;
      sub_10000629C(0, &qword_100010880, HKMedicationUserDomainConcept_ptr);
      sub_100006578();
      v28 = v58;
      sub_100006698();
      sub_100005F38(v28, v26, v66);

      v23 = v25;
      v59 = v25;
      v30 = v25[2];
      v29 = v25[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_10000548C((v29 > 1), v30 + 1, 1);
        v23 = v59;
      }

      v23[2] = v31;
      v32 = &v23[5 * v30];
      v33 = v66[0];
      v34 = v66[1];
      v32[8] = v67;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v24 += 2;
      --v22;
    }

    while (v22);
    v3 = v54;
LABEL_14:
    v35 = (v23 + 8);
    do
    {
      v37 = *(v35 - 3);
      v38 = *(v35 - 2);
      v39 = *(v35 - 1);
      v40 = *v35;
      v59 = *(v35 - 4);
      v36 = v59;
      v60 = v37;
      v61 = v38;
      v62 = v39;
      v63 = v40;
      v41 = v40;
      v42 = v36;
      v43 = v37;
      v44 = v38;
      v45 = v39;
      sub_100002898();
      sub_1000065F8();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100006618();
      }

      v35 += 5;
      sub_100006628();

      --v31;
    }

    while (v31);
    if (!(v65 >> 62))
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v23 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage[2];
  if (v31)
  {
    goto LABEL_14;
  }

  if (!(v20 >> 62))
  {
LABEL_19:

    sub_100006748();
    sub_10000629C(0, &qword_100010888, UIView_ptr);
    goto LABEL_20;
  }

LABEL_23:
  sub_10000629C(0, &qword_100010888, UIView_ptr);

  sub_100006718();

LABEL_20:
  v46 = objc_allocWithZone(UIStackView);
  sub_10000629C(0, &qword_100010888, UIView_ptr);
  v47 = sub_100006608().super.isa;

  v48 = [v46 initWithArrangedSubviews:v47];

  [v48 setAxis:1];
  [v48 setAlignment:1];
  [v48 setDistribution:0];
  [v48 setSpacing:8.0];
  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = [v3 view];
  if (v49)
  {
    v50 = v49;

    [v50 addSubview:v48];

    v51 = *&v3[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_margin];
    v52 = [v3 view];
    [v48 hk_alignConstraintsWithView:v52 insets:{v51, v51, v51, v51}];
  }

  else
  {
    __break(1u);
  }
}

id sub_100002898()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    sub_100006250(0, &qword_100010850, &type metadata for Swift.AnyObject + 8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100006CD0;
    *(v3 + 32) = sub_100004C80();
    *(v3 + 40) = sub_100005150();
    v4 = objc_allocWithZone(UIStackView);
    sub_10000629C(0, &qword_100010888, UIView_ptr);
    isa = sub_100006608().super.isa;

    v6 = [v4 initWithArrangedSubviews:isa];

    [v6 setAxis:0];
    [v6 setAlignment:3];
    [v6 setDistribution:0];
    [v6 setSpacing:8.0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *(v0 + 24);
    v2 = v6;

    v1 = 0;
    *(v0 + 24) = v6;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_1000029F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v15;
  v8[12] = a7;
  v11 = sub_100006498();
  v8[15] = v11;
  v8[16] = *(v11 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = sub_100006658();
  v8[19] = sub_100006648();
  v12 = swift_task_alloc();
  v8[20] = v12;
  *v12 = v8;
  v12[1] = sub_100002B28;

  return (MedicationScheduleItemDataSource.unloggedScheduleItems(for:))(a5, a6);
}

uint64_t sub_100002B28(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  v5 = sub_100006638();
  v3[23] = v5;
  v3[24] = v4;
  if (v1)
  {
    v6 = sub_1000035E4;
  }

  else
  {
    v6 = sub_100002C8C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100002C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[21];
  if (v4 >> 62)
  {
    v5 = sub_100006728();
    v3[25] = v5;
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = sub_1000066F8();
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        v7 = v3[21];
        v23 = v3[25];
        v3[26] = v6;
        v3[27] = v5;
        v3[28] = _swiftEmptyArrayStorage;
        if (!v23)
        {

          swift_unknownObjectWeakInit();

          v5 = sub_100003130;
          a2 = 0;
          a3 = 0;

          return _swift_task_switch(v5, a2, a3);
        }
      }

      else
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return _swift_task_switch(v5, a2, a3);
        }

        v7 = v3[21];
        v8 = *(v7 + 32);
        v3[26] = v6;
        v3[27] = v8;
        v3[28] = _swiftEmptyArrayStorage;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = sub_1000066F8();
LABEL_10:
        v3[29] = v9;
        v3[30] = 1;
        v10 = sub_1000064E8();
        v12 = v11;
        v3[31] = v11;
        v24 = (&async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:) + async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:));
        v13 = swift_task_alloc();
        v3[32] = v13;
        *v13 = v3;
        v13[1] = sub_100002FD0;

        return v24(v10, v12);
      }

      if (*(v6 + 16))
      {

        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3[25] = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v15 = v3[12];

  v16 = sub_100006688();
  sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100006CC0;
  v3[11] = v15;
  sub_1000057DC();
  v18 = sub_1000065D8();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100005820();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_10000629C(0, &qword_100010848, OS_os_log_ptr);
  v21 = sub_1000066B8();
  sub_100006588(v16, &_mh_execute_header, v21, "[%{public}@] Failed to load unlogged schedule items", 51, 2, v17);

  v22 = v3[1];

  return v22();
}

uint64_t sub_100002FD0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {

    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_100003814;
  }

  else
  {
    v4[35] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1000033A4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100003130()
{
  *(v0 + 272) = sub_100006648();
  v2 = sub_100006638();

  return _swift_task_switch(sub_1000031BC, v2, v1);
}

uint64_t sub_1000031BC()
{

  sub_100006648();
  sub_100006638();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[28];
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    sub_1000064F8();
    sub_1000020A0(v4, v2);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();
  v7 = v0[23];
  v8 = v0[24];

  return _swift_task_switch(sub_100003330, v7, v8);
}

uint64_t sub_100003330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000033A4()
{
  v1 = *(v0 + 280);
  if (!v1)
  {
    v11 = *(v0 + 240);
    v12 = *(v0 + 200);

    if (v11 != v12)
    {
      v10 = *(v0 + 240);
      goto LABEL_13;
    }

LABEL_9:

    swift_unknownObjectWeakInit();

    v7 = sub_100003130;
    v13 = 0;
    v8 = 0;

    return _swift_task_switch(v7, v13, v8);
  }

  v2 = sub_1000064D8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 224);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1000055D0(0, *(v4 + 2) + 1, 1, *(v0 + 224));
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1000055D0((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v9 = &v4[16 * v6];
  v9[32] = v2 & 1;
  *(v9 + 5) = v1;
  v10 = *(v0 + 240);
  *(v0 + 224) = v4;
  if (v10 == *(v0 + 200))
  {
    goto LABEL_9;
  }

LABEL_13:
  v13 = *(v0 + 168);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v7 = sub_1000066F8();
  }

  else
  {
    if (v10 >= *(*(v0 + 208) + 16))
    {
LABEL_22:
      __break(1u);
      return _swift_task_switch(v7, v13, v8);
    }
  }

  *(v0 + 232) = v7;
  *(v0 + 240) = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = sub_1000064E8();
  v16 = v15;
  *(v0 + 248) = v15;
  v19 = (&async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:) + async function pointer to dispatch thunk of MedicationDataSource.fetchMedication(identifier:));
  v17 = swift_task_alloc();
  *(v0 + 256) = v17;
  *v17 = v0;
  v17[1] = sub_100002FD0;

  return v19(v14, v16);
}

uint64_t sub_1000035E4()
{
  v1 = v0[12];

  v2 = sub_100006688();
  sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100006CE0;
  v0[8] = v1;
  sub_1000057DC();
  v4 = sub_1000065D8();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100005820();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  swift_getErrorValue();
  v8 = *(v0[3] - 8);
  swift_task_alloc();
  (*(v8 + 16))();
  v9 = sub_1000065D8();
  v11 = v10;

  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v7;
  *(v3 + 72) = v9;
  *(v3 + 80) = v11;
  sub_10000629C(0, &qword_100010848, OS_os_log_ptr);
  v12 = sub_1000066B8();
  sub_100006588(v2, &_mh_execute_header, v12, "[%{public}@] Failed to load schedule item or medications with error: [%{public}@]", 81, 2, v3);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100003814()
{

  v1 = v0[12];

  v2 = sub_100006688();
  sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100006CE0;
  v0[8] = v1;
  sub_1000057DC();
  v4 = sub_1000065D8();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100005820();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  swift_getErrorValue();
  v8 = *(v0[3] - 8);
  swift_task_alloc();
  (*(v8 + 16))();
  v9 = sub_1000065D8();
  v11 = v10;

  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v7;
  *(v3 + 72) = v9;
  *(v3 + 80) = v11;
  sub_10000629C(0, &qword_100010848, OS_os_log_ptr);
  v12 = sub_1000066B8();
  sub_100006588(v2, &_mh_execute_header, v12, "[%{public}@] Failed to load schedule item or medications with error: [%{public}@]", 81, 2, v3);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100003A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100005DB0(0, &qword_100010820, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000061D0(a3, v24 - v9, &qword_100010820, &type metadata accessor for TaskPriority);
  v11 = sub_100006678();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100005E14(v10, &qword_100010820, &type metadata accessor for TaskPriority);
  }

  else
  {
    sub_100006668();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100006638();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000065E8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100005E14(a3, &qword_100010820, &type metadata accessor for TaskPriority);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005E14(a3, &qword_100010820, &type metadata accessor for TaskPriority);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_100003DA0(void *a1)
{
  sub_100005DB0(0, &qword_100010820, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin();
  v106 = v93 - v2;
  v3 = sub_1000064C8();
  v104 = *(v3 - 8);
  v105 = v3;
  __chkstk_darwin();
  v103 = v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006498();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 request];
  v10 = [v9 content];

  v11 = [v10 categoryIdentifier];
  if (!v11)
  {
    sub_1000065B8();
    v11 = sub_1000065A8();
  }

  sub_1000065B8();
  v12 = objc_allocWithZone(NSUserDefaults);
  v13 = sub_1000065A8();

  v14 = [v12 initWithSuiteName:v13];

  if (v14)
  {
    v15 = v14;
    sub_100006488();
    isa = sub_100006478().super.isa;
    (*(v6 + 8))(v8, v5);
    [v15 setObject:isa forKey:HKMedicationsReminderNotificationLastShownDateKey];
  }

  v17 = [objc_opt_self() isNotMissedCategory:v11];

  if (v17)
  {
    v18 = [a1 request];
    v19 = [v18 content];

    v20 = [v19 userInfo];
    v21 = sub_100006598();

    v108 = sub_1000065B8();
    v109 = v22;
    sub_1000066E8();
    if (*(v21 + 16) && (v23 = sub_1000056E0(v110), (v24 & 1) != 0))
    {
      sub_100005874(*(v21 + 56) + 32 * v23, v111);
      sub_100005724(v110);

      if (swift_dynamicCast())
      {
        v98 = v108;
        v97 = v109;
        v25 = [a1 request];
        v26 = [v25 content];

        v27 = [v26 userInfo];
        v28 = sub_100006598();

        v108 = sub_1000065B8();
        v109 = v29;
        sub_1000066E8();
        if (*(v28 + 16) && (v30 = sub_1000056E0(v110), (v31 & 1) != 0))
        {
          sub_100005874(*(v28 + 56) + 32 * v30, v111);
          sub_100005724(v110);

          sub_10000629C(0, &qword_100010860, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v32 = v108;
            v33 = [v108 BOOLValue];

            if (v33)
            {
              v34 = "ION_SKIP_ALL_TEXT";
              v35._countAndFlagsBits = 0xD000000000000033;
              v36 = 1;
LABEL_19:
              if (qword_100010908 != -1)
              {
                countAndFlagsBits = v35._countAndFlagsBits;
                swift_once();
                v35._countAndFlagsBits = countAndFlagsBits;
              }

              v43 = qword_100010918;
              v44 = xmmword_100010920;
              v90._countAndFlagsBits = 0xE000000000000000;
              v35._object = (v34 | 0x8000000000000000);
              v94 = *(&xmmword_100010920 + 1);
              v95 = xmmword_100010920;
              v45.super.isa = qword_100010918;
              v96 = qword_100010918;
              v114._countAndFlagsBits = 0;
              v114._object = 0xE000000000000000;
              v93[2] = sub_100006468(v35, xmmword_100010920, v45, v114, 0, v90);
              v93[1] = v46;

              v47 = v36 == 0;
              if (v36)
              {
                v48._countAndFlagsBits = 0xD000000000000031;
              }

              else
              {
                v48._countAndFlagsBits = 0xD00000000000002DLL;
              }

              if (v36)
              {
                v49 = "ION_REMIND_ME_TEXT";
              }

              else
              {
                v49 = "NOTIFICATION_ACTION_RECORD_TEXT";
              }

              v91._countAndFlagsBits = 0xE000000000000000;
              v50 = &HKMedicationsNotificationActionIdentifierSkipRawValue;
              if (!v47)
              {
                v50 = &HKMedicationsNotificationActionIdentifierSkipAllRawValue;
              }

              v93[3] = v50;
              v48._object = (v49 | 0x8000000000000000);
              v51.super.isa = v43;
              v115._countAndFlagsBits = 0;
              v115._object = 0xE000000000000000;
              v93[5] = sub_100006468(v48, v44, v51, v115, 0, v91);
              v93[4] = v52;

              sub_100006250(0, &qword_100010850, &type metadata for Swift.AnyObject + 8);
              v99 = swift_allocObject();
              *(v99 + 16) = xmmword_100006CF0;
              sub_1000065B8();
              v54 = v103;
              v53 = v104;
              v55 = *(v104 + 104);
              v100 = v104 + 104;
              v102 = v55;
              v56 = v105;
              v55(v103, enum case for Symbol.checkmark(_:), v105);
              sub_1000064B8();
              v104 = *(v53 + 8);
              (v104)(v54, v56);
              v57 = sub_1000065A8();

              v101 = objc_opt_self();
              v58 = [v101 iconWithSystemImageName:v57];

              v59 = sub_1000065A8();

              v60 = sub_1000065A8();

              v61 = objc_opt_self();
              v62 = [v61 actionWithIdentifier:v59 title:v60 options:1 icon:v58];

              v63 = v99;
              *(v99 + 32) = v62;
              sub_1000065B8();
              v102(v54, enum case for Symbol.xmark(_:), v56);
              sub_1000064B8();
              (v104)(v54, v56);
              v64 = sub_1000065A8();

              v65 = [v101 iconWithSystemImageName:v64];

              v66 = sub_1000065A8();

              v67 = sub_1000065A8();

              v68 = [v61 actionWithIdentifier:v66 title:v67 options:1 icon:v65];

              *(v63 + 40) = v68;
              v69 = HKMedicationsNotificationActionIdentifierSnoozeRawValue;
              v92._countAndFlagsBits = 0xE000000000000000;
              v112._countAndFlagsBits = 0xD000000000000032;
              v112._object = 0x80000001000070E0;
              v113.value._countAndFlagsBits = v95;
              v113.value._object = v94;
              v70.super.isa = v96;
              v116._countAndFlagsBits = 0;
              v116._object = 0xE000000000000000;
              sub_100006468(v112, v113, v70, v116, 0, v92);
              v102(v54, enum case for Symbol.clock(_:), v56);
              sub_1000064B8();
              (v104)(v54, v56);
              v71 = sub_1000065A8();

              v72 = [v101 iconWithSystemImageName:v71];

              v73 = sub_1000065A8();
              v74 = v99;

              v75 = [v61 actionWithIdentifier:v69 title:v73 options:1 icon:v72];

              *(v74 + 48) = v75;
              v76 = v107;
              v77 = [v107 extensionContext];
              if (v77)
              {
                v78 = v77;
                sub_10000629C(0, &qword_100010858, UNNotificationAction_ptr);
                v79 = sub_100006608().super.isa;

                [v78 setNotificationActions:v79];
              }

              else
              {
              }

              ObjectType = swift_getObjectType();
              v81 = sub_100006678();
              v82 = v106;
              (*(*(v81 - 8) + 56))(v106, 1, 1, v81);
              v83 = *&v76[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_scheduleItemDataSource];
              v84 = *&v76[OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_medicationDataSource];
              sub_100006658();

              v85 = v76;
              v86 = sub_100006648();
              v87 = swift_allocObject();
              v87[2] = v86;
              v87[3] = &protocol witness table for MainActor;
              v88 = v98;
              v87[4] = v83;
              v87[5] = v88;
              v87[6] = v97;
              v87[7] = ObjectType;
              v87[8] = v84;
              v87[9] = v85;
              sub_100003A58(0, 0, v82, &unk_100006D98, v87);

              goto LABEL_16;
            }
          }
        }

        else
        {

          sub_100005724(v110);
        }

        v36 = 0;
        v34 = "ule item identifier:";
        v35._countAndFlagsBits = 0xD00000000000002FLL;
        goto LABEL_19;
      }
    }

    else
    {

      sub_100005724(v110);
    }

    v37 = sub_100006688();
    sub_100005DB0(0, &qword_100010828, sub_100005778, &type metadata accessor for _ContiguousArrayStorage);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100006CC0;
    v110[0] = swift_getObjectType();
    sub_1000057DC();
    v39 = sub_1000065D8();
    v41 = v40;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_100005820();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    sub_10000629C(0, &qword_100010848, OS_os_log_ptr);
    v42 = sub_1000066B8();
    sub_100006588(v37, &_mh_execute_header, v42, "[%{public}@] Received notification without schedule item identifier:", 68, 2, v38);

    v14 = v42;
  }

LABEL_16:
}

id sub_100004BAC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NotificationViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100004C80()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [objc_allocWithZone(sub_100006518()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    *v0 = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

id sub_100004D00()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = *(v0 + 8);
  }

  else
  {
    v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setNumberOfLines:0];
    v4 = objc_opt_self();
    v5 = [v4 labelColor];
    [v3 setTextColor:v5];

    v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
    [v3 setFont:v6];

    [v3 setNumberOfLines:0];
    [v3 setLineBreakMode:4];
    v7 = [v4 labelColor];
    [v3 setTextColor:v7];

    v8 = v3;
    v9 = [v4 systemBackgroundColor];
    [v8 setBackgroundColor:v9];

    [v8 setAdjustsFontForContentSizeCategory:1];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    *(v0 + 8) = v8;
    v2 = v8;
    v1 = 0;
  }

  v10 = v1;
  return v2;
}

id sub_100004ED8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setNumberOfLines:0];
    v4 = objc_opt_self();
    v5 = [v4 labelColor];
    [v3 setTextColor:v5];

    v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v3 setFont:v6];

    [v3 setNumberOfLines:0];
    [v3 setLineBreakMode:4];
    v7 = [v4 secondaryLabelColor];
    [v3 setTextColor:v7];

    v8 = v3;
    v9 = [v4 systemBackgroundColor];
    [v8 setBackgroundColor:v9];

    [v8 setAdjustsFontForContentSizeCategory:1];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (qword_100010908 != -1)
    {
      swift_once();
    }

    v10.super.isa = qword_100010918;
    v14._countAndFlagsBits = 0xE000000000000000;
    v15._object = 0x80000001000072C0;
    v15._countAndFlagsBits = 0xD000000000000035;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_100006468(v15, xmmword_100010920, v10, v16, 0, v14);
    v11 = sub_1000065A8();

    [v8 setText:v11];

    *(v0 + 16) = v8;
    v2 = v8;
    v1 = 0;
  }

  v12 = v1;
  return v2;
}

id sub_100005150()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_100006250(0, &qword_100010850, &type metadata for Swift.AnyObject + 8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100006CB0;
    *(v3 + 32) = sub_100004D00();
    v4 = objc_allocWithZone(UIStackView);
    sub_10000629C(0, &qword_100010888, UIView_ptr);
    isa = sub_100006608().super.isa;

    v6 = [v4 initWithArrangedSubviews:isa];

    [v6 setAxis:1];
    [v6 setAlignment:1];
    [v6 setDistribution:0];
    [v6 setSpacing:8.0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    *(v0 + 32) = v6;
    v2 = v6;
    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_10000529C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005394;

  return v6(a1);
}

uint64_t sub_100005394()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_10000548C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000054AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000054AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006250(0, &qword_100010890, &type metadata for MedicationStackViewItem);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000055D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006250(0, &qword_100010868, &type metadata for MedicationAndLastDose);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000056E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000066C8(*(v2 + 40));

  return sub_100005C8C(a1, v4);
}

unint64_t sub_100005778()
{
  result = qword_100010830;
  if (!qword_100010830)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100010830);
  }

  return result;
}

unint64_t sub_1000057DC()
{
  result = qword_100010838;
  if (!qword_100010838)
  {
    type metadata accessor for NotificationViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100010838);
  }

  return result;
}

unint64_t sub_100005820()
{
  result = qword_100010840;
  if (!qword_100010840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010840);
  }

  return result;
}

uint64_t sub_100005874(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000058D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100005928()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000059EC;

  return sub_1000029F4(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1000059EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005AE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005B18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006464;

  return sub_10000529C(a1, v4);
}

uint64_t sub_100005BD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000059EC;

  return sub_10000529C(a1, v4);
}

unint64_t sub_100005C8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005D54(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000066D8();
      sub_100005724(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_100005DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100005E14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100005DB0(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100005E84()
{
  *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___dateFormatter) = 0;
  v1 = [objc_opt_self() hk_currentDeviceHas4InchScreen];
  v2 = 16.0;
  if (v1)
  {
    v2 = 8.0;
  }

  *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController_margin) = v2;
  *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabel) = 0;
  *(v0 + OBJC_IVAR____TtC45HealthMedicationsNotificationContentExtension26NotificationViewController____lazy_storage___scheduledForLabelStackView) = 0;
  sub_100006708();
  __break(1u);
}

double sub_100005F38@<D0>(uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_100005DB0(0, &qword_100010870, &type metadata accessor for MedicationVisualizationConfig, &type metadata accessor for Optional);
  __chkstk_darwin();
  v9 = &v26 - v8;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v10 = sub_100004D00();
  v11 = sub_1000065A8();

  [v10 setText:v11];

  v12 = sub_100004C80();
  v13 = [v12 widthAnchor];

  v14 = [v13 constraintEqualToConstant:40.0];
  [v14 setActive:1];

  v15 = sub_100004C80();
  v16 = [v15 heightAnchor];

  v17 = sub_100004C80();
  v18 = [v17 widthAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  if (a4)
  {
    v20 = sub_100005150();
    v21 = sub_100004ED8();
    [v20 addArrangedSubview:v21];
  }

  v22 = sub_100004C80();
  sub_1000061D0(a3, v9, &qword_100010870, &type metadata accessor for MedicationVisualizationConfig);
  sub_100006508();

  sub_100005E14(a3, &qword_100010870, &type metadata accessor for MedicationVisualizationConfig);
  v23 = v28;
  result = *&v26;
  v25 = v27;
  *a5 = v26;
  *(a5 + 16) = v25;
  *(a5 + 32) = v23;
  return result;
}

uint64_t sub_1000061D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100005DB0(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100006250(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_100006738();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000629C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_1000062E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000062F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100006354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_1000063C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000063CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}