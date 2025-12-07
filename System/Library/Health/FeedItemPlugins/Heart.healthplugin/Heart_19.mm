unint64_t sub_29D8AC344()
{
  result = qword_2A17B3A30;
  if (!qword_2A17B3A30)
  {
    sub_29D9331D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3A30);
  }

  return result;
}

uint64_t sub_29D8AC39C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8AC534(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D8AC40C(uint64_t a1, uint64_t a2)
{
  sub_29D8AC534(0, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8AC4A0(uint64_t a1, uint64_t a2)
{
  sub_29D8AC534(0, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D8AC534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_29D8AC5D0(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

unint64_t sub_29D8AC70C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D8ACCE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D8AC73C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7573;
  v5 = 0xED0000656C69666FLL;
  v6 = 0x725068746C616568;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEC0000006D6F6F52;
  v8 = 0x6570795461746164;
  if (v2 != 3)
  {
    v8 = 0x684368746C616568;
    v7 = 0xEF7473696C6B6365;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6573776F7262;
  if (v2 != 1)
  {
    v10 = 0x6163696669746F6ELL;
    v9 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_29D8AC84C()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D8AC950(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D8ACA40(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D8ACB40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D8ACD2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D8ACB70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C69546ELL;
  v4 = 0x6F69746F6D6F7270;
  v5 = 0xEF7473696C6B6365;
  v6 = 0x684368746C616568;
  v7 = 0xE800000000000000;
  v8 = 0x6B6E694C70656564;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6570795461746164;
    v3 = 0xEC0000006D6F6F52;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_29D8ACC34()
{
  result = qword_2A17B7340;
  if (!qword_2A17B7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7340);
  }

  return result;
}

unint64_t sub_29D8ACC8C()
{
  result = qword_2A17B7348;
  if (!qword_2A17B7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7348);
  }

  return result;
}

unint64_t sub_29D8ACCE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29D8ACD2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D8ACD98()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D8ACE38()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D8ACEDC()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

id sub_29D8ACF80()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D939D28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D8AD070()
{
  sub_29D719C5C(0);
  v0 = sub_29D934548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D951A30;
  v37 = v4;
  v5 = v4 + v3;
  *v5 = sub_29D8ACF80();
  *(v5 + 8) = 0;
  v6 = *(v1 + 104);
  (v6)(v5, *MEMORY[0x29EDC1608], v0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v7 = (v5 + v2);
  *v7 = sub_29D9334A8();
  v7[1] = v8;
  (v6)(v5 + v2, *MEMORY[0x29EDC1610], v0);
  v9 = (v5 + 2 * v2);
  *v9 = sub_29D9334A8();
  v9[1] = v10;
  v9[2] = 0;
  v38 = *MEMORY[0x29EDC15D0];
  v6(v9);
  v11 = v5 + 3 * v2;
  *v11 = sub_29D9334A8();
  *(v11 + 8) = v12;
  *(v11 + 16) = 0;
  v13 = *MEMORY[0x29EDC1630];
  (v6)(v11, v13, v0);
  v14 = v5 + 4 * v2;
  *v14 = sub_29D9334A8();
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  (v6)(v14, v13, v0);
  v16 = v5 + 5 * v2;
  *v16 = sub_29D9334A8();
  *(v16 + 8) = v17;
  *(v16 + 16) = 0;
  (v6)(v16, v13, v0);
  v18 = (v5 + 6 * v2);
  *v18 = sub_29D9334A8();
  v18[1] = v19;
  v18[2] = 0;
  (v6)(v18, v38, v0);
  v20 = v5 + 7 * v2;
  *v20 = sub_29D9334A8();
  *(v20 + 8) = v21;
  *(v20 + 16) = 0;
  (v6)(v20, v13, v0);
  v22 = v5 + 8 * v2;
  *v22 = sub_29D9334A8();
  *(v22 + 8) = v23;
  *(v22 + 16) = 0;
  (v6)(v22, v13, v0);
  v24 = v5 + 9 * v2;
  *v24 = sub_29D9334A8();
  *(v24 + 8) = v25;
  *(v24 + 16) = 0;
  (v6)(v24, v13, v0);
  v26 = (v5 + 10 * v2);
  *v26 = sub_29D9334A8();
  v26[1] = v27;
  v26[2] = 0;
  (v6)(v26, v38, v0);
  v28 = v5 + 11 * v2;
  *v28 = sub_29D9334A8();
  *(v28 + 8) = v29;
  *(v28 + 16) = 0;
  (v6)(v28, v13, v0);
  v30 = v5 + 12 * v2;
  *v30 = sub_29D9334A8();
  *(v30 + 8) = v31;
  *(v30 + 16) = 0;
  (v6)(v30, v13, v0);
  v32 = (v5 + 13 * v2);
  *v32 = sub_29D9334A8();
  v32[1] = v33;
  v32[2] = 0;
  (v6)(v32, v38, v0);
  v34 = v5 + 14 * v2;
  *v34 = sub_29D9334A8();
  *(v34 + 8) = v35;
  *(v34 + 16) = 0;
  (v6)(v34, v13, v0);
  return v37;
}

void sub_29D8AD830(char a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4)
{
  v5 = v4;
  v42 = a3;
  ObjectType = swift_getObjectType();
  sub_29D8AF64C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v39 - v11;
  v13 = sub_29D9336F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v39 - v20;
  sub_29D6D962C(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29D8AF4F0(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D8AF64C);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2BF10);
    v23 = sub_29D937878();
    v24 = sub_29D93A288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315394;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v23, v24, "[%s.%s]: Failed to construct deep link URL to go to detail room", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    if (v42)
    {
      v47 = v42;
      v48 = a4;
      aBlock = MEMORY[0x29EDCA5F8];
      v44 = 1107296256;
      v45 = sub_29D6C1F10;
      v46 = &unk_2A244C108;
      v30 = _Block_copy(&aBlock);
    }

    else
    {
      v30 = 0;
    }

    [v5 dismissViewControllerAnimated:1 completion:v30];
    _Block_release(v30);
  }

  else
  {
    v39 = a4;
    v40 = v5;
    v31 = *(v14 + 32);
    v31(v21, v12, v13);
    if ((a1 & 1) != 0 && *(v40 + OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_navigateToDetailRoomUponOnboardingCompletion) == 1)
    {
      (*(v14 + 16))(v18, v21, v13);
      v32 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v33 = (v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      v31((v34 + v32), v18, v13);
      v35 = (v34 + v33);
      v36 = v42;
      v37 = v39;
      *v35 = v42;
      v35[1] = v37;
      *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      v47 = sub_29D8AF550;
      v48 = v34;
      aBlock = MEMORY[0x29EDCA5F8];
      v44 = 1107296256;
      v45 = sub_29D6C1F10;
      v46 = &unk_2A244C180;
      v38 = _Block_copy(&aBlock);
      sub_29D695554(v36, v37);

      [v40 dismissViewControllerAnimated:1 completion:v38];
    }

    else
    {
      if (v42)
      {
        v47 = v42;
        v48 = v39;
        aBlock = MEMORY[0x29EDCA5F8];
        v44 = 1107296256;
        v45 = sub_29D6C1F10;
        v46 = &unk_2A244C130;
        v38 = _Block_copy(&aBlock);
      }

      else
      {
        v38 = 0;
      }

      [v40 dismissViewControllerAnimated:1 completion:v38];
    }

    _Block_release(v38);
    (*(v14 + 8))(v21, v13);
  }
}

void sub_29D8ADE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D8AF604(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey, &unk_29D93F538);
  v9 = sub_29D939C58();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v12[4] = sub_29D73F1B0;
  v12[5] = v10;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D73C804;
  v12[3] = &unk_2A244C1D0;
  v11 = _Block_copy(v12);
  sub_29D695554(a2, a3);

  [v7 openURL:v8 options:v9 completionHandler:v11];
  _Block_release(v11);
}

void sub_29D8AE0A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A244C0E0;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D8AE17C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A244C0B8;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

void sub_29D8AE24C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingIntroViewController(0));

  v4 = sub_29D8A4A78(v3);

  v5 = &v4[qword_2A17B71C8];
  *v5 = v1;
  *(v5 + 1) = &off_2A244C068;
  v16 = v4;
  v6 = v1;

  sub_29D936978();
  v7 = &v6[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D940030;
    *(v10 + 32) = v16;
    v11 = *(v8 + 24);
    v12 = v16;
    v11(v10, 0, ObjectType, v8);

    sub_29D936978();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v7 + 1);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 8))(v14, v13);
    sub_29D936978();
    if (v15)
    {
      [v15 setDelegate_];
    }
  }
}

void sub_29D8AE424(unsigned __int8 a1)
{
  v2 = v1;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return;
    }

    v7 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingNeedWayToMeasureViewController(0));

    v5 = sub_29D89E5FC(v8);
    v6 = &off_2A244BBB0;
  }

  else if (a1)
  {
    v9 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingBPCuffAccessViewController(0));

    v5 = sub_29D8454B0(v10);
    v6 = &off_2A2448840;
  }

  else
  {
    v3 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingIntroViewController(0));

    v5 = sub_29D8A4A78(v4);
    v6 = &off_2A244BCA0;
  }

  swift_getObjectType();
  v11 = v6[3];
  v12 = v2;
  v17 = v5;
  v11(v2, &off_2A244C068);

  v13 = &v12[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 1);
    swift_getObjectType();
    memset(v18, 0, sizeof(v18));
    v15 = *(v14 + 32);
    v16 = v17;
    v15();
    sub_29D936978();

    sub_29D8AF4F0(v18, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D6C5040);
  }

  else
  {
  }
}

void sub_29D8AE650()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_healthStore);
  v2 = v0 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  v31 = *(v2 + 8);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_provenance);
  v32 = *(v0 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_source);
  v4 = type metadata accessor for BloodPressureJournalCreationMainViewController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator] = 0;
  *&v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController____lazy_storage___bpjControl] = 0;
  v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_navigateToDetailRoomUponCompletion] = 1;
  *&v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_healthStore] = v1;
  type metadata accessor for BloodPressureJournalBestPracticesManager();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v8 = v1;
  v9 = sub_29D939D28();
  v10 = [v7 initWithCategory:2 domainName:v9 healthStore:v8];

  *(v6 + 24) = v10;
  type metadata accessor for BloodPressureJournalCreationModel(0);
  v11 = swift_allocObject();
  v36 = 0;
  v37 = 1;
  sub_29D8AF64C(0, &unk_2A17B73A0, type metadata accessor for HKHRBloodPressureJournalType, MEMORY[0x29EDC9C68]);
  v12 = v8;

  sub_29D938398();
  v13 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_morningReminderTime;
  if (qword_2A17B0C48 != -1)
  {
    swift_once();
  }

  v14 = sub_29D9339F8();
  v15 = sub_29D69C6C0(v14, qword_2A17B4D48);
  v16 = *(*(v14 - 8) + 16);
  v16(v11 + v13, v15, v14);
  v17 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_eveningReminderTime;
  if (qword_2A17B0C50 != -1)
  {
    swift_once();
  }

  v18 = sub_29D69C6C0(v14, qword_2A17B4D60);
  v16(v11 + v17, v18, v14);
  v19 = v11 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v11 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___eventSubmissionManager) = 0;
  *(v11 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities) = 0;
  *(v11 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_healthStore) = v12;
  *(v11 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bestPracticesManager) = v6;
  *(v11 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_provenance) = v3;
  *(v11 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_flowType) = 0;
  type metadata accessor for BloodPressureJournalCreationViewControllerFactory();
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_provenance] = v3;
  v40.receiver = v5;
  v40.super_class = v4;

  v38 = v4;
  v39 = &off_2A2443630;
  v36 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  v21 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
  swift_beginAccess();
  v22 = v36;
  sub_29D89BB10(&v36, v11 + v21);
  swift_endAccess();
  [v22 setModalPresentationStyle_];
  [v22 setModalInPresentation_];
  v23 = type metadata accessor for BloodPressureJournalCreationCoordinator();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController];
  if (Strong)
  {
    *(v25 + 1) = 0;
    *(swift_unknownObjectWeakInit() + 8) = v31;
    swift_unknownObjectWeakAssign();
    *&v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_model] = v11;
    *&v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_vcFactory] = v20;
    *&v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_healthStore] = v12;
    v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_isInNavigationController] = 1;
    v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_source] = v32;
    v34.receiver = v24;
    v34.super_class = v23;
    v26 = v12;

    swift_unknownObjectRetain();

    v27 = objc_msgSendSuper2(&v34, sel_init);
    sub_29D73CE68();
    swift_unknownObjectRelease_n();

    v28 = v27;
  }

  else
  {
    *(v25 + 1) = v31;
    *(swift_unknownObjectWeakInit() + 8) = &off_2A2443640;
    swift_unknownObjectWeakAssign();
    *&v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_model] = v11;
    *&v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_vcFactory] = v20;
    *&v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_healthStore] = v12;
    v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_isInNavigationController] = 0;
    v24[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_source] = v32;
    v35.receiver = v24;
    v35.super_class = v23;
    v29 = v12;

    v27 = v22;

    v28 = objc_msgSendSuper2(&v35, sel_init);
    sub_29D73CE68();
  }

  v30 = *&v22[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator];
  *&v22[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator] = v28;
}

uint64_t sub_29D8AEC18(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  ObjectType = swift_getObjectType();

  return sub_29D8AF1D8(a1 & 1, a2, v9, a4, a6, ObjectType, a5);
}

void sub_29D8AEC90(char a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_29D8AF64C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v39[-v13];
  if (a1)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    sub_29D69C6C0(v15, qword_2A1A2C008);
    v16 = a4;
    v17 = sub_29D937878();
    v18 = sub_29D93A2A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = sub_29D93AF08();
      v23 = sub_29D6C2364(v21, v22, &v40);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_29D6C2364(0xD00000000000001ALL, 0x800000029D9694F0, &v40);
      *(v19 + 22) = 2080;
      ObjectType = swift_getObjectType();
      v39[7] = (*(a5 + 8))(ObjectType, a5);
      v25 = sub_29D939DA8();
      v27 = sub_29D6C2364(v25, v26, &v40);

      *(v19 + 24) = v27;
      *(v19 + 32) = 2080;
      v28 = sub_29D939DA8();
      v30 = sub_29D6C2364(v28, v29, &v40);

      *(v19 + 34) = v30;
      _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    sub_29D8AF6B0(v16);
  }

  else
  {
    if (a3 - 2 >= 2)
    {
      if (a3)
      {
        v38 = *(*(a2 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_model) + 16);
        if (v38 == 2 || (v38 & 1) != 0)
        {
          sub_29D8AE650();
          return;
        }

        v37 = 2;
      }

      else
      {
        v37 = 1;
      }

      sub_29D8AE424(v37);
      return;
    }

    v31 = a2 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v31 + 8);
      v33 = a3 == 3;
      v34 = swift_getObjectType();
      v35 = HKHRBloodPressureDetailRoomBaseLink();
      sub_29D9336D8();

      v36 = sub_29D9336F8();
      (*(*(v36 - 8) + 56))(v14, 0, 1, v36);
      (*(v32 + 40))(v33, v14, 0, 0, v34, v32);
      sub_29D936978();
      sub_29D8AF4F0(v14, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D8AF64C);
    }
  }
}

id sub_29D8AF0F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D8AF1C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8AF1D8(char a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v11 = sub_29D939968();
  v30 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D939998();
  v15 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v19 = sub_29D93A468();
  v20 = swift_allocObject();
  *(v20 + 16) = a1 & 1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v22 = v27;
  v21 = v28;
  *(v20 + 40) = a4;
  *(v20 + 48) = v22;
  *(v20 + 56) = v21;
  aBlock[4] = sub_29D8AF5EC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244C220;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  v25 = a4;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D8AF604(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D8AF64C(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v18, v14, v23);
  _Block_release(v23);

  (*(v30 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v29);
}

uint64_t sub_29D8AF4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29D8AF550()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_29D8ADE0C(v0 + v2, v6, v7, v8);
}

uint64_t sub_29D8AF604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D8AF64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D8AF6B0(void *a1)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v2 = sub_29D939D28();

  v5 = [objc_opt_self() alertControllerWithTitle:0 message:v2 preferredStyle:{1, 0xE000000000000000}];

  sub_29D9334A8();
  v3 = sub_29D939D28();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:{0, 0xE000000000000000}];

  [v5 addAction_];
  [a1 presentViewController:v5 animated:1 completion:0];
}

id sub_29D8AF95C(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v8.receiver = v6;
  v8.super_class = type metadata accessor for ElectrocardiogramOnboardingSessionSimulationHeroView();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_29D8AF9B4()
{
  v1 = *v0;
  sub_29D939D68();
  sub_29D9343D8();

  *(swift_allocObject() + 16) = v1;
  *(swift_allocObject() + 16) = v1;
  sub_29D6AD3EC(0);
  sub_29D8B0C54(&qword_2A1A22328, sub_29D6AD3EC, MEMORY[0x29EDB8AD8]);
  sub_29D938438();
}

uint64_t sub_29D8AFB24(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v7);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v8, qword_2A1A2BF58);
  sub_29D6A0A20(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_29D6B1204(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v12[1] = 0;
  sub_29D9371C8();
}

uint64_t sub_29D8AFCA4(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_29D93AA18();

  v10 = 91;
  v11 = 0xE100000000000000;
  v7 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v7);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D96C050);
  MEMORY[0x29ED6A240](0xD000000000000011, 0x800000029D96C0D0);
  sub_29D6A0A20(a1, v6);
  v8 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v8);

  return v10;
}

uint64_t sub_29D8AFDE4(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v4, qword_2A1A2BF58);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = a2;
    v6 = v3;
    sub_29D9371E8();
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v7, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a2;
    sub_29D9371C8();
  }
}

uint64_t sub_29D8AFF64(void *a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D96C050);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D96C080);
  v4 = a1;
  sub_29D6A0CD0();
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 91;
}

uint64_t sub_29D8B006C(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D96C050);
  MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D96C0B0);
  return 91;
}

uint64_t sub_29D8B0134(uint64_t a1)
{
  v3 = *v1;
  sub_29D6A08F8(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v7);
  sub_29D939D68();
  v8 = sub_29D9343E8();

  v12[1] = v8;
  sub_29D6A0A20(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_29D6B1204(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  sub_29D8B0BE8(0);
  sub_29D8B0C54(&qword_2A17B1958, sub_29D8B0BE8, MEMORY[0x29EDB8AD8]);
  sub_29D938478();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D8B0360(void **a1, uint64_t a2, uint64_t a3)
{
  sub_29D6A08F8(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v9);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v12, qword_2A1A2BF58);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a3;
    v21 = 0;
    v14 = v11;
    sub_29D9371E8();
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v15, qword_2A1A2BF58);
    sub_29D6A0A20(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    sub_29D6B1204(v10, v18 + v16);
    *(v18 + v17) = a3;
    v21 = 0;
    sub_29D9371C8();
  }
}

uint64_t sub_29D8B058C(void *a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96BFD0);
  MEMORY[0x29ED6A240](0xD000000000000020, 0x800000029D96C000);
  v4 = a1;
  sub_29D6A0CD0();
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 91;
}

uint64_t sub_29D8B0694(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v25 - v10;
  sub_29D6A08F8(0);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v25 - v18;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_29D93AA18();

  v25 = 91;
  v26 = 0xE100000000000000;
  v20 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v20);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96BFD0);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D96C030);
  sub_29D6A0A20(a1, v19);
  sub_29D6A0A20(v19, v16);
  if ((*(v4 + 48))(v16, 1, v3) == 1)
  {
    v21 = 0xE300000000000000;
    v22 = 7104878;
  }

  else
  {
    (*(v4 + 32))(v11, v16, v3);
    (*(v4 + 16))(v8, v11, v3);
    v22 = sub_29D939DA8();
    v21 = v23;
    (*(v4 + 8))(v11, v3);
  }

  sub_29D6A0D34(v19);
  MEMORY[0x29ED6A240](v22, v21);

  return v25;
}

uint64_t sub_29D8B0944()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D8B09A8()
{
  sub_29D8B0AB8(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8AF9B4();
  sub_29D8B0C54(&qword_2A1A226C0, sub_29D8B0AB8, MEMORY[0x29EDB88B8]);
  v6 = sub_29D938418();
  (*(v2 + 8))(v5, v1);
  return v6;
}

void sub_29D8B0AB8(uint64_t a1)
{
  if (!qword_2A1A226B8)
  {
    sub_29D6AD3EC(255);
    sub_29D8B0C54(&qword_2A1A22328, sub_29D6AD3EC, MEMORY[0x29EDB8AD8]);
    v1 = sub_29D938098();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A226B8);
    }
  }
}

uint64_t sub_29D8B0B4C(void **a1)
{
  sub_29D6A08F8(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8B0360(a1, v1 + v5, v6);
}

void sub_29D8B0BE8(uint64_t a1)
{
  if (!qword_2A17B1950)
  {
    sub_29D6A0CD0();
    v1 = sub_29D938358();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1950);
    }
  }
}

uint64_t sub_29D8B0C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D8B0CDC()
{
  sub_29D6A08F8(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D8B0E0C(uint64_t (*a1)(unint64_t, uint64_t))
{
  sub_29D6A08F8(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v4, v5);
}

uint64_t type metadata accessor for AFibBurdenOnboardingShouldKnowViewController(uint64_t a1)
{
  result = qword_2A17B73C8;
  if (!qword_2A17B73C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8B0F4C(char a1)
{
  v2 = v1;
  *(v1 + qword_2A17B73B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D77C524(0);
  sub_29D935398();
  *(swift_allocObject() + 16) = xmmword_29D944EA0;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243DF90);
  v4 = sub_29D939F18();

  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = a1;
  sub_29D6AA360(&unk_2A243DFB0);
  sub_29D939D68();

  sub_29D935388();
  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243E000);
  v6 = sub_29D939F18();

  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_29D6AA360(&unk_2A243E020);
  sub_29D939D68();

  sub_29D935388();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243E070);
  v8 = sub_29D939F18();

  v9 = HKUIJoinStringsForAutomationIdentifier();

  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29D6AA360(aThree);
  sub_29D939D68();

  sub_29D935388();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243E0E0);
  v10 = sub_29D939F18();

  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29D6AA360(aFour);
  sub_29D939D68();

  sub_29D935388();
  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243E150);
  v12 = sub_29D939F18();

  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (!v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_29D6AA360(aFive);
  sub_29D939D68();

  sub_29D935388();
  *(v2 + qword_2A17B73C0) = v15 & 1;
  sub_29D9334A8();
  if (v15)
  {
    sub_29D936B68();
  }

  else
  {
    v14 = [sub_29D936B68() navigationItem];
    [v14 setRightBarButtonItem_];
  }
}

void sub_29D8B1650()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AFibBurdenOnboardingShouldKnowViewController(0);
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v2 = v0[qword_2A17B73C0];
  if (v2 == 1)
  {
  }

  v3 = [v0 navigationItem];
  [v3 setBackButtonDisplayMode_];

  v4 = [v1 headerView];
  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000017, 0x800000029D959570);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D957120);
  v5 = sub_29D939D28();

  [v4 setAccessibilityIdentifier_];

  if (v2)
  {
    sub_29D88BBC8(&unk_2A243F728);
    v6 = sub_29D939F18();

    v7 = HKUIJoinStringsForAutomationIdentifier();

    if (v7)
    {
      sub_29D6AA360(aContinuebutton_4);
      sub_29D939D68();

      sub_29D936C58();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29D936C68();
  }
}

void sub_29D8B18BC(void *a1)
{
  v1 = a1;
  sub_29D8B1650();
}

uint64_t sub_29D8B1904()
{
  v1 = v0 + qword_2A17B73B8;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &off_2A244C398, ObjectType, v3);

    return sub_29D936978();
  }

  return result;
}

void sub_29D8B199C(char *a1)
{
  v2 = &a1[qword_2A17B73B8];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

id sub_29D8B1A9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingShouldKnowViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8B1B20(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B73B8 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D8B1B6C()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

void sub_29D8B1CA0(void *a1)
{
  v1 = a1;
  sub_29D8B1B6C();
}

void sub_29D8B1CE8(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

uint64_t type metadata accessor for CardioFitnessHealthChecklistSettingsState(uint64_t a1)
{
  result = qword_2A17B73D8;
  if (!qword_2A17B73D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8B1DC8(uint64_t a1)
{
  sub_29D9346E8();
  if (v1 <= 0x3F)
  {
    sub_29D8B1E64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D8B1E64()
{
  if (!qword_2A17B3628)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3628);
    }
  }
}

uint64_t sub_29D8B1EB4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29D8B1EEC(void *a1, int a2)
{
  v30 = a2;
  v3 = MEMORY[0x29EDC9E88];
  sub_29D8B5188(0, &qword_2A17B74A0, sub_29D8B48D8, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.OffCodingKeys, MEMORY[0x29EDC9E88]);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v27 = &v23 - v6;
  sub_29D8B5188(0, &qword_2A17B74A8, sub_29D8B492C, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.OnCodingKeys, v3);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v23 - v9;
  sub_29D8B5188(0, &qword_2A17B74B0, sub_29D8B4980, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.DisabledCodingKeys, v3);
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v23 - v13;
  sub_29D8B5188(0, &qword_2A17B74B8, sub_29D8B49D4, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.CodingKeys, v3);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v23 - v19;
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B49D4();
  sub_29D93AED8();
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_29D8B492C();
      sub_29D93ACA8();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v33 = 2;
      sub_29D8B48D8();
      v21 = v27;
      sub_29D93ACA8();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_29D8B4980();
    sub_29D93ACA8();
    (*(v23 + 8))(v14, v24);
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_29D8B22E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a5;
  v14[1] = a4;
  sub_29D8B5188(0, &qword_2A17B7548, sub_29D8B5134, &type metadata for CardioFitnessHealthChecklistSettingsState.Footer.Link.CodingKeys, MEMORY[0x29EDC9E88]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v14 - v10;
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B5134();
  sub_29D93AED8();
  v16 = 0;
  v12 = v14[3];
  sub_29D93ACE8();
  if (!v12)
  {
    v15 = 1;
    sub_29D93ACE8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_29D8B2484(void *a1)
{
  v3 = v1;
  sub_29D8B5188(0, &qword_2A17B7450, sub_29D8B47DC, &type metadata for CardioFitnessHealthChecklistSettingsState.Footer.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v13 - v9;
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B47DC();
  sub_29D93AED8();
  LOBYTE(v13[0]) = 0;
  sub_29D93ACE8();
  if (!v2)
  {
    v11 = *(v3 + 32);
    v13[0] = *(v3 + 16);
    v13[1] = v11;
    v14 = 1;
    sub_29D8B4884();
    sub_29D93ACD8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D8B2634(void *a1)
{
  v3 = v1;
  sub_29D8B5188(0, &qword_2A17B7418, sub_29D8B3628, &type metadata for CardioFitnessHealthChecklistSettingsState.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v16 - v9;
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B3628();
  sub_29D93AED8();
  LOBYTE(v16[0]) = *v3;
  v19 = 0;
  sub_29D8B37E4();
  sub_29D93AD18();
  if (!v2)
  {
    v11 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
    LOBYTE(v16[0]) = 1;
    sub_29D9346E8();
    sub_29D87D9B0(&qword_2A17B1D68, MEMORY[0x29EDC1778]);
    sub_29D93AD18();
    v16[0] = *&v3[*(v11 + 24)];
    v19 = 2;
    sub_29D8B1E64();
    sub_29D8B3838(&qword_2A17B7428, MEMORY[0x29EDC99B8], MEMORY[0x29EDC9A48]);
    sub_29D93AD18();
    v12 = &v3[*(v11 + 28)];
    v13 = *(v12 + 1);
    v16[0] = *v12;
    v16[1] = v13;
    v14 = *(v12 + 2);
    v17 = *(v12 + 1);
    v18 = v14;
    v19 = 3;
    sub_29D8B3898();
    sub_29D93AD18();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_29D8B28E8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_29D9346E8();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8B5188(0, &qword_2A17B73F0, sub_29D8B3628, &type metadata for CardioFitnessHealthChecklistSettingsState.CodingKeys, MEMORY[0x29EDC9E80]);
  v28 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B3628();
  v29 = v10;
  v15 = v30;
  sub_29D93AEC8();
  if (v15)
  {
    sub_29D69417C(a1);
  }

  else
  {
    v16 = v6;
    v30 = v11;
    v18 = v25;
    v17 = v26;
    v19 = v27;
    v35 = 0;
    sub_29D8B367C();
    sub_29D93AC88();
    *v14 = v31;
    LOBYTE(v31) = 1;
    sub_29D87D9B0(&qword_2A17B1D10, MEMORY[0x29EDC1788]);
    sub_29D93AC88();
    (*(v17 + 32))(&v14[v30[5]], v16, v19);
    sub_29D8B1E64();
    v35 = 2;
    sub_29D8B3838(&qword_2A17B7408, MEMORY[0x29EDC99E8], MEMORY[0x29EDC9A78]);
    sub_29D93AC88();
    *&v14[v30[6]] = v31;
    v35 = 3;
    sub_29D8B36D0();
    sub_29D93AC88();
    (*(v18 + 8))(v29, v28);
    v20 = v32;
    v21 = &v14[v30[7]];
    *v21 = v31;
    *(v21 + 1) = v20;
    v22 = v34;
    *(v21 + 1) = v33;
    *(v21 + 2) = v22;
    sub_29D8B3724(v14, v24);
    sub_29D69417C(a1);
    sub_29D8B3788(v14);
  }
}

uint64_t sub_29D8B2D44()
{
  v1 = 28271;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t sub_29D8B2D8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D8B3C70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D8B2DB4(uint64_t a1)
{
  v2 = sub_29D8B49D4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B2DF0(uint64_t a1)
{
  v2 = sub_29D8B49D4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B2E2C(uint64_t a1)
{
  v2 = sub_29D8B4980();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B2E68(uint64_t a1)
{
  v2 = sub_29D8B4980();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B2EA4(uint64_t a1)
{
  v2 = sub_29D8B48D8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B2EE0(uint64_t a1)
{
  v2 = sub_29D8B48D8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B2F1C(uint64_t a1)
{
  v2 = sub_29D8B492C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B2F58(uint64_t a1)
{
  v2 = sub_29D8B492C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B2F94@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_29D8B3D80(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_29D8B2FE0()
{
  result = qword_2A17B73E8;
  if (!qword_2A17B73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B73E8);
  }

  return result;
}

uint64_t sub_29D8B3034()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 1954047348;
  }
}

void sub_29D8B3060(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_29D93AD78() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_29D8B313C(uint64_t a1)
{
  v2 = sub_29D8B5134();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B3178(uint64_t a1)
{
  v2 = sub_29D8B5134();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B31B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_29D8B4394(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_29D8B3204(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_29D93AD78(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_29D93AD78();
    }
  }

  return result;
}

uint64_t sub_29D8B32A8()
{
  if (*v0)
  {
    return 1802398060;
  }

  else
  {
    return 1954047348;
  }
}

void sub_29D8B32CC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_29D93AD78() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_29D8B33A8(uint64_t a1)
{
  v2 = sub_29D8B47DC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B33E4(uint64_t a1)
{
  v2 = sub_29D8B47DC();

  return MEMORY[0x2A1C73280](a1, v2);
}

double sub_29D8B3420@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_29D8B45A8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

BOOL sub_29D8B347C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_29D8B38EC(v7, v8);
}

unint64_t sub_29D8B34C4()
{
  v1 = 0x7453686374697773;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x7265746F6F66;
  }

  if (*v0)
  {
    v1 = 0x73696C6B63656863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D8B3554@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D8B4FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D8B357C(uint64_t a1)
{
  v2 = sub_29D8B3628();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B35B8(uint64_t a1)
{
  v2 = sub_29D8B3628();

  return MEMORY[0x2A1C73280](a1, v2);
}

unint64_t sub_29D8B3628()
{
  result = qword_2A17B73F8;
  if (!qword_2A17B73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B73F8);
  }

  return result;
}

unint64_t sub_29D8B367C()
{
  result = qword_2A17B7400;
  if (!qword_2A17B7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7400);
  }

  return result;
}

unint64_t sub_29D8B36D0()
{
  result = qword_2A17B7410;
  if (!qword_2A17B7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7410);
  }

  return result;
}

uint64_t sub_29D8B3724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8B3788(uint64_t a1)
{
  v2 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D8B37E4()
{
  result = qword_2A17B7420;
  if (!qword_2A17B7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7420);
  }

  return result;
}

uint64_t sub_29D8B3838(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D8B1E64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D8B3898()
{
  result = qword_2A17B7430;
  if (!qword_2A17B7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7430);
  }

  return result;
}

BOOL sub_29D8B38EC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_29D93AD78(), result = 0, (v5 & 1) != 0))
  {
    v8 = a1[2];
    v7 = a1[3];
    v10 = a1[4];
    v9 = a1[5];
    v12 = a2[2];
    v11 = a2[3];
    v14 = a2[4];
    v13 = a2[5];
    if (v7)
    {
      if (v11)
      {
        if (v8 == v12 && v7 == v11 || (sub_29D93AD78() & 1) != 0)
        {
          if (v10 == v14 && v9 == v13)
          {
            sub_29D8B3BE8(v12, v11, v10, v9);
            sub_29D8B3BE8(v8, v7, v10, v9);

            sub_29D8B3C2C(v8, v7, v10, v9);
            return 1;
          }

          v19 = sub_29D93AD78();
          sub_29D8B3BE8(v12, v11, v14, v13);
          sub_29D8B3BE8(v8, v7, v10, v9);

          sub_29D8B3C2C(v8, v7, v10, v9);
          return (v19 & 1) != 0;
        }

        sub_29D8B3BE8(v12, v11, v14, v13);
        sub_29D8B3BE8(v8, v7, v10, v9);

        v15 = v8;
        v16 = v7;
        v17 = v10;
        v18 = v9;
LABEL_16:
        sub_29D8B3C2C(v15, v16, v17, v18);
        return 0;
      }
    }

    else if (!v11)
    {
      return 1;
    }

    sub_29D8B3BE8(v12, v11, v14, v13);
    sub_29D8B3BE8(v8, v7, v10, v9);
    sub_29D8B3C2C(v8, v7, v10, v9);
    v15 = v12;
    v16 = v11;
    v17 = v14;
    v18 = v13;
    goto LABEL_16;
  }

  return result;
}

BOOL sub_29D8B3B1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  v6 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  if (sub_29D9346D8() & 1) != 0 && (sub_29D696F08(*&a1[*(v6 + 24)], *&a2[*(v6 + 24)]))
  {
    v7 = &a1[*(v6 + 28)];
    v8 = *(v7 + 2);
    v13[1] = *(v7 + 1);
    v13[2] = v8;
    v13[0] = *v7;
    v9 = &a2[*(v6 + 28)];
    v10 = *(v9 + 2);
    v14[1] = *(v9 + 1);
    v14[2] = v10;
    v14[0] = *v9;
    return sub_29D8B38EC(v13, v14);
  }

  else
  {
    return 0;
  }
}

double sub_29D8B3BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_29D935E88();

    sub_29D935E88();
  }

  return result;
}

double sub_29D8B3C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29D8B3C70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28271 && a2 == 0xE200000000000000 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D93AD78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29D8B3D80(void *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29D8B5188(0, &qword_2A17B7460, sub_29D8B48D8, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.OffCodingKeys, MEMORY[0x29EDC9E80]);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v40 = &v33 - v5;
  sub_29D8B5188(0, &qword_2A17B7470, sub_29D8B492C, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.OnCodingKeys, v2);
  v38 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v39 = &v33 - v8;
  sub_29D8B5188(0, &qword_2A17B7480, sub_29D8B4980, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.DisabledCodingKeys, v2);
  v10 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v33 - v12;
  sub_29D8B5188(0, &qword_2A17B7490, sub_29D8B49D4, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.CodingKeys, v2);
  v15 = v14;
  v41 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v33 - v17;
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B49D4();
  v19 = v42;
  sub_29D93AEC8();
  if (!v19)
  {
    v20 = v13;
    v42 = v10;
    v21 = v39;
    v22 = v40;
    v23 = sub_29D93AC98();
    v24 = (2 * *(v23 + 16)) | 1;
    v43 = v23;
    v44 = v23 + 32;
    v45 = 0;
    v46 = v24;
    v25 = sub_29D8741F4();
    v26 = v18;
    if (v25 == 3 || v45 != v46 >> 1)
    {
      v28 = sub_29D93AA78();
      v13 = swift_allocError();
      v30 = v29;
      sub_29D6CA748(0);
      *v30 = &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState;
      sub_29D93AC18();
      sub_29D93AA58();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x29EDC9DB8], v28);
      swift_willThrow();
      (*(v41 + 8))(v18, v15);
    }

    else
    {
      v13 = v25;
      if (v25)
      {
        v27 = v41;
        if (v25 != 1)
        {
          LODWORD(v42) = v25;
          v47 = 2;
          sub_29D8B48D8();
          sub_29D93AC08();
          (*(v36 + 8))(v22, v37);
          (*(v27 + 8))(v26, v15);
          sub_29D936978();
          v13 = v42;
          goto LABEL_9;
        }

        v47 = 1;
        sub_29D8B492C();
        sub_29D93AC08();
        (*(v35 + 8))(v21, v38);
        (*(v27 + 8))(v26, v15);
      }

      else
      {
        v47 = 0;
        sub_29D8B4980();
        sub_29D93AC08();
        v32 = v41;
        (*(v34 + 8))(v20, v42);
        (*(v32 + 8))(v18, v15);
      }
    }

    sub_29D936978();
  }

LABEL_9:
  sub_29D69417C(a1);
  return v13;
}

uint64_t sub_29D8B4394(void *a1)
{
  sub_29D8B5188(0, &qword_2A17B7538, sub_29D8B5134, &type metadata for CardioFitnessHealthChecklistSettingsState.Footer.Link.CodingKeys, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B5134();
  sub_29D93AEC8();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_29D93AC58();
    v12 = 1;
    sub_29D93AC58();
    (*(v5 + 8))(v8, v4);
  }

  sub_29D69417C(a1);
  return v9;
}

void sub_29D8B45A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_29D8B5188(0, &qword_2A17B7438, sub_29D8B47DC, &type metadata for CardioFitnessHealthChecklistSettingsState.Footer.CodingKeys, MEMORY[0x29EDC9E80]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v16 - v8;
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B47DC();
  sub_29D93AEC8();
  if (v2)
  {
    sub_29D69417C(a1);
  }

  else
  {
    v10 = v18;
    LOBYTE(v19) = 0;
    v11 = sub_29D93AC58();
    v13 = v12;
    v14 = v11;
    v21 = 1;
    sub_29D8B4830();
    sub_29D93AC48();
    (*(v6 + 8))(v9, v5);
    v16 = v20;
    v17 = v19;
    sub_29D69417C(a1);
    *v10 = v14;
    *(v10 + 8) = v13;
    v15 = v16;
    *(v10 + 16) = v17;
    *(v10 + 32) = v15;
  }
}

unint64_t sub_29D8B47DC()
{
  result = qword_2A17B7440;
  if (!qword_2A17B7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7440);
  }

  return result;
}

unint64_t sub_29D8B4830()
{
  result = qword_2A17B7448;
  if (!qword_2A17B7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7448);
  }

  return result;
}

unint64_t sub_29D8B4884()
{
  result = qword_2A17B7458;
  if (!qword_2A17B7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7458);
  }

  return result;
}

unint64_t sub_29D8B48D8()
{
  result = qword_2A17B7468;
  if (!qword_2A17B7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7468);
  }

  return result;
}

unint64_t sub_29D8B492C()
{
  result = qword_2A17B7478;
  if (!qword_2A17B7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7478);
  }

  return result;
}

unint64_t sub_29D8B4980()
{
  result = qword_2A17B7488;
  if (!qword_2A17B7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7488);
  }

  return result;
}

unint64_t sub_29D8B49D4()
{
  result = qword_2A17B7498;
  if (!qword_2A17B7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7498);
  }

  return result;
}

unint64_t sub_29D8B4A9C()
{
  result = qword_2A17B74C0;
  if (!qword_2A17B74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74C0);
  }

  return result;
}

unint64_t sub_29D8B4AF4()
{
  result = qword_2A17B74C8;
  if (!qword_2A17B74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74C8);
  }

  return result;
}

unint64_t sub_29D8B4B4C()
{
  result = qword_2A17B74D0;
  if (!qword_2A17B74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74D0);
  }

  return result;
}

unint64_t sub_29D8B4BA4()
{
  result = qword_2A17B74D8;
  if (!qword_2A17B74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74D8);
  }

  return result;
}

unint64_t sub_29D8B4BFC()
{
  result = qword_2A17B74E0;
  if (!qword_2A17B74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74E0);
  }

  return result;
}

unint64_t sub_29D8B4C54()
{
  result = qword_2A17B74E8;
  if (!qword_2A17B74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74E8);
  }

  return result;
}

unint64_t sub_29D8B4CAC()
{
  result = qword_2A17B74F0;
  if (!qword_2A17B74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74F0);
  }

  return result;
}

unint64_t sub_29D8B4D04()
{
  result = qword_2A17B74F8;
  if (!qword_2A17B74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74F8);
  }

  return result;
}

unint64_t sub_29D8B4D5C()
{
  result = qword_2A17B7500;
  if (!qword_2A17B7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7500);
  }

  return result;
}

unint64_t sub_29D8B4DB4()
{
  result = qword_2A17B7508;
  if (!qword_2A17B7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7508);
  }

  return result;
}

unint64_t sub_29D8B4E0C()
{
  result = qword_2A17B7510;
  if (!qword_2A17B7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7510);
  }

  return result;
}

unint64_t sub_29D8B4E64()
{
  result = qword_2A17B7518;
  if (!qword_2A17B7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7518);
  }

  return result;
}

unint64_t sub_29D8B4EBC()
{
  result = qword_2A17B7520;
  if (!qword_2A17B7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7520);
  }

  return result;
}

unint64_t sub_29D8B4F14()
{
  result = qword_2A17B7528;
  if (!qword_2A17B7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7528);
  }

  return result;
}

unint64_t sub_29D8B4F6C()
{
  result = qword_2A17B7530;
  if (!qword_2A17B7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7530);
  }

  return result;
}

uint64_t sub_29D8B4FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7453686374697773 && a2 == 0xEB00000000657461;
  if (v4 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73696C6B63656863 && a2 == 0xEF73757461745374 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000029D96C170 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_29D93AD78();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_29D8B5134()
{
  result = qword_2A17B7540;
  if (!qword_2A17B7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7540);
  }

  return result;
}

void sub_29D8B5188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_29D8B5204()
{
  result = qword_2A17B7550;
  if (!qword_2A17B7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7550);
  }

  return result;
}

unint64_t sub_29D8B525C()
{
  result = qword_2A17B7558;
  if (!qword_2A17B7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7558);
  }

  return result;
}

unint64_t sub_29D8B52B4()
{
  result = qword_2A17B7560;
  if (!qword_2A17B7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7560);
  }

  return result;
}

uint64_t sub_29D8B530C(char a1, char a2, char a3, char a4, char a5)
{
  v11 = *v5;
  sub_29D8B5C1C(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v19 - v14;
  v16 = sub_29D93A028();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  *(v17 + 35) = a4 & 1;
  *(v17 + 36) = a5;
  *(v17 + 40) = v5;
  *(v17 + 48) = v11;

  sub_29D6BEBA4(0, 0, v15, &unk_29D952D20, v17);
}

id sub_29D8B5490(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 24);
  }

  else
  {
    v4 = HKLogHeartRateCategory();
    v5 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v4 healthDataSource:*(v1 + 16)];

    v6 = *(v1 + 24);
    *(v1 + 24) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_29D8B5520(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v8 + 144) = v10;
  *(v8 + 152) = v11;
  *(v8 + 197) = a8;
  *(v8 + 196) = a7;
  *(v8 + 195) = a6;
  *(v8 + 194) = a5;
  *(v8 + 193) = a4;
  return MEMORY[0x2A1C73D48](sub_29D8B555C, 0, 0);
}

uint64_t sub_29D8B555C(uint64_t a1)
{
  v2 = *(v1 + 197);
  v3 = *(v1 + 196);
  v4 = *(v1 + 195);
  v5 = *(v1 + 193);
  v6 = [HKPreferredRegulatoryDomainProvider() currentEstimate];
  *(v1 + 160) = v6;
  sub_29D936978();
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsEvent();
  v7 = swift_allocObject();
  *(v1 + 168) = v7;
  *(v7 + 16) = v5;
  *(v7 + 18) = v4;
  *(v7 + 24) = v6;
  *(v7 + 32) = v3 & 1;
  *(v7 + 33) = v2;
  v8 = sub_29D8B5490(v6);
  *(v1 + 176) = v8;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 192;
  *(v1 + 24) = sub_29D8B5720;
  v9 = swift_continuation_init();
  sub_29D6ACB00(0);
  *(v1 + 136) = v10;
  *(v1 + 80) = MEMORY[0x29EDCA5F8];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_29D8D0FE0;
  *(v1 + 104) = &unk_2A244C858;
  *(v1 + 112) = v9;

  [v8 submitEvent:v7 completion:v1 + 80];

  return MEMORY[0x2A1C73CC0](v1 + 16);
}

uint64_t sub_29D8B5720()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_29D8B58A8;
  }

  else
  {

    v2 = sub_29D8B5838;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D8B5838()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D8B58A8(uint64_t a1)
{
  v22 = v1;
  v2 = v1[22];
  swift_willThrow();

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = v1[23];
  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = v3;
  v6 = sub_29D937878();
  v7 = sub_29D93A288();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[23];
  v10 = v1[20];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136446466;
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] [Onboarding Analytics] Failed to submit analytics with error: %@", v11, 0x16u);
    sub_29D6ACA3C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    sub_29D69417C(v13);
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  else
  {
  }

  v19 = v1[1];

  return v19();
}

uint64_t sub_29D8B5B08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v12 = *(v1 + 35);
  v6 = *(v1 + 36);
  v7 = *(v1 + 34);
  v8 = *(v1 + 33);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29D6AC948;

  return sub_29D8B5520(a1, v4, v5, v9, v8, v7, v12, v6);
}

void sub_29D8B5C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D8B5CC8(uint64_t a1)
{
  sub_29D8B87C8(319, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D8B5D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_29D8B87C8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v23 = &v20 - v5;
  sub_29D8B8F24(0, &qword_2A17B75D0, sub_29D8B8B48, &type metadata for RelatedSampleTypesCacheObject.DataTypeState.CodingKeys, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v22 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D9339F8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8B48();
  v16 = v24;
  sub_29D93AEC8();
  if (!v16)
  {
    v17 = v22;
    sub_29D8B8F8C(&qword_2A17B1558, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
    v18 = v23;
    sub_29D93AC48();
    (*(v17 + 8))(v10, v7);
    sub_29D6A0A84(v18, v14);
    sub_29D8B8898(v14, v21, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
  }

  sub_29D69417C(a1);
  return sub_29D8B8EC4(v14, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
}

uint64_t sub_29D8B608C(void *a1)
{
  sub_29D8B8F24(0, &qword_2A17B7640, sub_29D8B8E70, &type metadata for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState.CodingKeys, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - v7;
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8E70();
  sub_29D93AED8();
  v12 = 0;
  sub_29D93ACE8();
  if (!v1)
  {
    type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState(0);
    v11 = 1;
    type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
    sub_29D8B8F8C(&qword_2A17B7648, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState, &unk_29D952DA4);
    sub_29D93AD18();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_29D8B6274(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  MEMORY[0x2A1C7C4A8](v25, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8B8F24(0, &qword_2A17B7628, sub_29D8B8E70, &type metadata for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState.CodingKeys, MEMORY[0x29EDC9E80]);
  v26 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState(0);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8E70();
  v14 = v27;
  sub_29D93AEC8();
  if (v14)
  {
    sub_29D69417C(a1);
  }

  else
  {
    v27 = a1;
    v15 = v24;
    v29 = 0;
    v16 = v26;
    *v13 = sub_29D93AC58();
    v13[1] = v17;
    v21 = v13;
    v22 = v17;
    v28 = 1;
    sub_29D8B8F8C(&qword_2A17B7638, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState, &unk_29D952DCC);
    sub_29D93AC88();
    (*(v15 + 8))(v9, v16);
    v18 = *(v10 + 20);
    v19 = v21;
    sub_29D8B8900(v5, v21 + v18, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    sub_29D8B8898(v19, v23, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
    sub_29D69417C(v27);
    sub_29D8B8EC4(v19, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
  }
}

void sub_29D8B65EC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616470557473616CLL && a2 == 0xEF65746144646574)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29D8B667C(uint64_t a1)
{
  v2 = sub_29D8B8B48();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B66B8(uint64_t a1)
{
  v2 = sub_29D8B8B48();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B670C(void *a1)
{
  sub_29D8B8F24(0, &qword_2A17B75E0, sub_29D8B8B48, &type metadata for RelatedSampleTypesCacheObject.DataTypeState.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8B48();
  sub_29D93AED8();
  sub_29D9339F8();
  sub_29D8B8F8C(&qword_2A17B1538, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
  sub_29D93ACD8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D8B68C8()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_29D8B6904(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_29D93AD78() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_29D8B69E4(uint64_t a1)
{
  v2 = sub_29D8B8E70();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B6A20(uint64_t a1)
{
  v2 = sub_29D8B8E70();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29D8B6AA8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000029D96C240 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_29D8B6B3C(uint64_t a1)
{
  v2 = sub_29D8B8774();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B6B78(uint64_t a1)
{
  v2 = sub_29D8B8774();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29D8B6BB4(void *a1, uint64_t a2)
{
  sub_29D8B882C(0);
  v67 = v5;
  v7 = MEMORY[0x2A1C7C4A8](v5, v6);
  v66 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v7, v9);
  v65 = &v51 - v10;
  v11 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState(0);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v62 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8B8F24(0, &qword_2A17B75A8, sub_29D8B8774, &type metadata for RelatedSampleTypesCacheObject.CodingKeys, MEMORY[0x29EDC9E88]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v56 = &v51 - v18;
  v19 = *(a2 + 16);
  v20 = MEMORY[0x29EDCA190];
  if (v19)
  {
    v52 = v16;
    v53 = v15;
    v54 = a1;
    v55 = v2;
    v71 = MEMORY[0x29EDCA190];
    sub_29D7EE8D8(0, v19, 0);
    v70 = v71;
    v21 = a2 + 64;
    v22 = sub_29D93A898();
    v23 = 0;
    v24 = *(a2 + 36);
    v57 = a2 + 72;
    v58 = v19;
    v59 = v24;
    v60 = a2 + 64;
    v61 = a2;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(a2 + 32))
    {
      v26 = v22 >> 6;
      if ((*(v21 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_23;
      }

      if (v24 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v68 = v23;
      v69 = 1 << v22;
      v27 = v67;
      v28 = *(v67 + 48);
      v29 = *(a2 + 56);
      v30 = (*(a2 + 48) + 16 * v22);
      v32 = *v30;
      v31 = v30[1];
      v33 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
      v34 = v65;
      sub_29D8B8898(v29 + *(*(v33 - 8) + 72) * v22, &v65[v28], type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v35 = v66;
      *v66 = v32;
      *(v35 + 8) = v31;
      v36 = *(v27 + 48);
      sub_29D8B8900(&v34[v28], v35 + v36, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v37 = v62;
      sub_29D8B8898(v35 + v36, &v62[*(v64 + 20)], type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      *v37 = v32;
      v37[1] = v31;
      swift_bridgeObjectRetain_n();
      sub_29D8B8EC4(v35, sub_29D8B882C);
      v38 = v70;
      v71 = v70;
      v40 = *(v70 + 16);
      v39 = *(v70 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_29D7EE8D8((v39 > 1), v40 + 1, 1);
        v38 = v71;
      }

      *(v38 + 16) = v40 + 1;
      v41 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v70 = v38;
      sub_29D8B8900(v37, v38 + v41 + *(v63 + 72) * v40, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
      a2 = v61;
      v25 = 1 << *(v61 + 32);
      if (v22 >= v25)
      {
        goto LABEL_25;
      }

      v21 = v60;
      v42 = *(v60 + 8 * v26);
      if ((v42 & v69) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v24) = v59;
      if (v59 != *(v61 + 36))
      {
        goto LABEL_27;
      }

      v43 = v42 & (-2 << (v22 & 0x3F));
      if (v43)
      {
        v25 = __clz(__rbit64(v43)) | v22 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v44 = v26 << 6;
        v45 = v26 + 1;
        v46 = (v57 + 8 * v26);
        while (v45 < (v25 + 63) >> 6)
        {
          v48 = *v46++;
          v47 = v48;
          v44 += 64;
          ++v45;
          if (v48)
          {
            sub_29D703574(v22, v59, 0);
            v25 = __clz(__rbit64(v47)) + v44;
            goto LABEL_4;
          }
        }

        sub_29D703574(v22, v59, 0);
      }

LABEL_4:
      v23 = v68 + 1;
      v22 = v25;
      if (v68 + 1 == v58)
      {
        a1 = v54;
        v16 = v52;
        v15 = v53;
        v20 = v70;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v71 = v20;
    swift_getKeyPath();
    sub_29D8B87C8(0, &qword_2A17B7588, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, MEMORY[0x29EDC9A40]);
    sub_29D8B8968();
    v49 = sub_29D939E98();

    sub_29D693E2C(a1, a1[3]);
    sub_29D8B8774();
    v50 = v56;
    sub_29D93AED8();
    v71 = v49;
    sub_29D8B89F0(&qword_2A17B75B8, &qword_2A17B75C0, &unk_29D95307C, MEMORY[0x29EDC9A48]);
    sub_29D93AD18();
    (*(v16 + 8))(v50, v15);
  }
}

uint64_t sub_29D8B71E0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_29D8B8258(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_29D8B7228(uint64_t a1, uint64_t a2)
{
  v99 = sub_29D9339F8();
  v4 = *(v99 - 8);
  MEMORY[0x2A1C7C4A8](v99, v5);
  v85 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29D8B87C8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v79 - v10;
  sub_29D6B0ABC(0);
  v97 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v96 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v79 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v95 = &v79 - v26;
  sub_29D8B87C8(0, &qword_2A17B75C8, sub_29D8B882C, v7);
  v29 = MEMORY[0x2A1C7C4A8](v27 - 8, v28);
  v31 = (&v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x2A1C7C4A8](v29, v32);
  v98 = (&v79 - v34);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v91 = v24;
  v92 = v17;
  v93 = v15;
  v94 = a2;
  v84 = v11;
  v35 = 0;
  v87 = a1;
  v38 = *(a1 + 64);
  v37 = a1 + 64;
  v36 = v38;
  v39 = 1 << *(v37 - 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v36;
  v80 = (v39 + 63) >> 6;
  v81 = v37;
  v89 = v31;
  v90 = (v4 + 48);
  v82 = (v4 + 32);
  v83 = (v4 + 8);
  while (1)
  {
    v42 = v92;
    if (!v41)
    {
      break;
    }

    v43 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v44 = v43 | (v35 << 6);
    v46 = v93;
    v45 = v94;
LABEL_16:
    v51 = (*(v87 + 48) + 16 * v44);
    v52 = *v51;
    v53 = v51[1];
    v54 = v95;
    sub_29D8B8898(*(v87 + 56) + *(v92 + 72) * v44, v95, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    sub_29D8B882C(0);
    v56 = v55;
    v57 = *(v55 + 48);
    *v31 = v52;
    v31[1] = v53;
    sub_29D8B8900(v54, v31 + v57, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    (*(*(v56 - 8) + 56))(v31, 0, 1, v56);
    sub_29D935E88();
LABEL_17:
    v58 = v98;
    sub_29D8B8AB4(v31, v98);
    sub_29D8B882C(0);
    v59 = (*(*(v56 - 8) + 48))(v58, 1, v56);
    v60 = v59 == 1;
    if (v59 == 1)
    {
      return v60;
    }

    v61 = v58;
    v63 = *v58;
    v62 = v58[1];
    v64 = v91;
    sub_29D8B8900(v61 + *(v56 + 48), v91, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    v65 = sub_29D6907F0(v63, v62);
    LOBYTE(v63) = v66;

    if ((v63 & 1) == 0)
    {
      v77 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState;
      v78 = v64;
      goto LABEL_30;
    }

    v67 = *(v45 + 56) + *(v42 + 72) * v65;
    v68 = v96;
    sub_29D8B8898(v67, v96, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    v69 = *(v97 + 48);
    sub_29D6A0A20(v68, v46);
    sub_29D6A0A20(v64, v46 + v69);
    v70 = *v90;
    v71 = v99;
    if ((*v90)(v46, 1, v99) == 1)
    {
      sub_29D8B8EC4(v68, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      sub_29D8B8EC4(v64, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      if (v70(v46 + v69, 1, v99) != 1)
      {
        goto LABEL_29;
      }

      result = sub_29D6A0D34(v46);
      v31 = v89;
    }

    else
    {
      v88 = v41;
      v72 = v84;
      sub_29D6A0A20(v46, v84);
      if (v70(v46 + v69, 1, v71) == 1)
      {
        sub_29D8B8EC4(v68, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
        sub_29D8B8EC4(v64, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
        (*v83)(v72, v71);
LABEL_29:
        v77 = sub_29D6B0ABC;
        v78 = v46;
LABEL_30:
        sub_29D8B8EC4(v78, v77);
        return 0;
      }

      v73 = v46 + v69;
      v74 = v85;
      (*v82)(v85, v73, v71);
      sub_29D8B8F8C(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
      v86 = sub_29D939CF8();
      v75 = *v83;
      (*v83)(v74, v71);
      sub_29D8B8EC4(v68, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      sub_29D8B8EC4(v64, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v75(v72, v71);
      result = sub_29D6A0D34(v46);
      v41 = v88;
      v31 = v89;
      if ((v86 & 1) == 0)
      {
        return v60;
      }
    }
  }

  if (v80 <= v35 + 1)
  {
    v47 = v35 + 1;
  }

  else
  {
    v47 = v80;
  }

  v48 = v47 - 1;
  v46 = v93;
  v45 = v94;
  while (1)
  {
    v49 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v49 >= v80)
    {
      sub_29D8B882C(0);
      v56 = v76;
      (*(*(v76 - 8) + 56))(v31, 1, 1, v76);
      v41 = 0;
      v35 = v48;
      goto LABEL_17;
    }

    v50 = *(v81 + 8 * v49);
    ++v35;
    if (v50)
    {
      v41 = (v50 - 1) & v50;
      v44 = __clz(__rbit64(v50)) | (v49 << 6);
      v35 = v49;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_29D8B79FC(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73F6F0(0);
  v14 = MEMORY[0x2A1C7C4A8](v12, v13);
  v17 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_23;
  }

  v59 = v3;
  v60 = v8;
  v18 = a2;
  v19 = *(v14 + 48);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  v64 = a1;
  v58 = v20;
  sub_29D8B8898(a1 + v20, &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D73F6F0);
  v21 = v17[1];
  v67 = *v17;
  v22 = v67;
  v68 = v21;
  v61 = v19;
  sub_29D8B8900(v17 + v19, v11, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
  v23 = *a3;
  v25 = sub_29D6907F0(v22, v21);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v24;
  if (v23[3] >= v28)
  {
    if (v18)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_29D693480();
      if ((v29 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_29D6913D4(v28, v18 & 1);
  v30 = sub_29D6907F0(v22, v21);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    if ((v29 & 1) == 0)
    {
LABEL_13:
      v34 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v35 = (v34[6] + 16 * v25);
      *v35 = v22;
      v35[1] = v21;
      v36 = v34[7];
      v60 = *(v60 + 72);
      sub_29D8B8900(v11, v36 + v60 * v25, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v37 = v34[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v34[2] = v39;
        v40 = v64;
        if (v63 != 1)
        {
          v41 = v64 + v62 + v58;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_29D8B8898(v41, v17, sub_29D73F6F0);
            v43 = v17[1];
            v67 = *v17;
            v44 = v67;
            v68 = v43;
            sub_29D8B8900(v17 + v61, v11, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
            v45 = *a3;
            v46 = sub_29D6907F0(v44, v43);
            v48 = v45[2];
            v49 = (v47 & 1) == 0;
            v38 = __OFADD__(v48, v49);
            v50 = v48 + v49;
            if (v38)
            {
              goto LABEL_24;
            }

            v51 = v47;
            if (v45[3] < v50)
            {
              sub_29D6913D4(v50, 1);
              v46 = sub_29D6907F0(v44, v43);
              if ((v51 & 1) != (v52 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v51)
            {
              goto LABEL_10;
            }

            v53 = *a3;
            *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v54 = (v53[6] + 16 * v46);
            *v54 = v44;
            v54[1] = v43;
            sub_29D8B8900(v11, v53[7] + v60 * v46, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
            v55 = v53[2];
            v38 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v53[2] = v56;
            v41 += v62;
            v40 = v64;
            if (v63 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v32 = swift_allocError();
    swift_willThrow();
    v69 = v32;
    v33 = v32;
    sub_29D6A0CD0();
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_29D8B8EC4(v11, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_29D93ADC8();
  __break(1u);
LABEL_28:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD00000000000001BLL, 0x800000029D96C210);
  sub_29D93AB08();
  MEMORY[0x29ED6A240](39, 0xE100000000000000);
  sub_29D93AB28();
  __break(1u);
}

BOOL sub_29D8B7F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8B87C8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v23 - v11;
  sub_29D6B0ABC(0);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_29D6A0A20(a1, v17);
  sub_29D6A0A20(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_29D6A0A20(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_29D8B8F8C(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
      v21 = sub_29D939CF8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_29D6A0D34(v17);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_29D8B8EC4(v17, sub_29D6B0ABC);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_29D6A0D34(v17);
  return 1;
}

uint64_t sub_29D8B8258(void *a1)
{
  v2 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState(0);
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D73F6F0(0);
  v8 = v7;
  v46 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D8B8F24(0, &qword_2A17B7578, sub_29D8B8774, &type metadata for RelatedSampleTypesCacheObject.CodingKeys, MEMORY[0x29EDC9E80]);
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v37 - v14;
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8774();
  v16 = v45;
  sub_29D93AEC8();
  v17 = v16;
  if (v16)
  {
    sub_29D69417C(a1);
    return v8;
  }

  v18 = v42;
  v45 = v8;
  sub_29D8B87C8(0, &qword_2A17B7588, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, MEMORY[0x29EDC9A40]);
  sub_29D8B89F0(&qword_2A17B7590, &qword_2A17B7598, &unk_29D9530A4, MEMORY[0x29EDC9A78]);
  v19 = v44;
  sub_29D93AC88();
  v21 = v47;
  v22 = *(v47 + 16);
  if (v22)
  {
    v38 = v15;
    v39 = 0;
    v40 = a1;
    v47 = MEMORY[0x29EDCA190];
    v23 = v21;
    sub_29D7EE888(0, v22, 0);
    v24 = v47;
    v25 = *(v18 + 80);
    v37 = v23;
    v26 = v23 + ((v25 + 32) & ~v25);
    v27 = *(v18 + 72);
    v28 = v41;
    do
    {
      sub_29D8B8898(v26, v6, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
      v29 = *(v45 + 48);
      v30 = v6[1];
      *v11 = *v6;
      v11[1] = v30;
      sub_29D8B8900(v6 + *(v28 + 20), v11 + v29, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v47 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_29D7EE888((v31 > 1), v32 + 1, 1);
        v28 = v41;
        v24 = v47;
      }

      *(v24 + 16) = v32 + 1;
      sub_29D8B8900(v11, v24 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32, sub_29D73F6F0);
      v26 += v27;
      --v22;
    }

    while (v22);

    v17 = v39;
    a1 = v40;
    v33 = v44;
    v15 = v38;
    if (*(v24 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v33 = v19;

    if (*(MEMORY[0x29EDCA190] + 16))
    {
LABEL_11:
      sub_29D6942F0(0);
      v34 = sub_29D93ABA8();
      goto LABEL_14;
    }
  }

  v34 = MEMORY[0x29EDCA198];
LABEL_14:
  v35 = v43;
  v47 = v34;
  v36 = sub_29D935E88();
  sub_29D8B79FC(v36, 1, &v47);
  if (!v17)
  {
    (*(v35 + 8))(v15, v33);

    v8 = v47;
    sub_29D69417C(a1);
    return v8;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_29D8B8774()
{
  result = qword_2A17B7580;
  if (!qword_2A17B7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7580);
  }

  return result;
}

void sub_29D8B87C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D8B882C(uint64_t a1)
{
  if (!qword_2A17B75A0)
  {
    type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B75A0);
    }
  }
}

uint64_t sub_29D8B8898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8B8900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D8B8968()
{
  result = qword_2A17B75B0;
  if (!qword_2A17B75B0)
  {
    sub_29D8B87C8(255, &qword_2A17B7588, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B75B0);
  }

  return result;
}

uint64_t sub_29D8B89F0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D8B87C8(255, &qword_2A17B7588, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, MEMORY[0x29EDC9A40]);
    sub_29D8B8F8C(a2, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D8B8AB4(uint64_t a1, uint64_t a2)
{
  sub_29D8B87C8(0, &qword_2A17B75C8, sub_29D8B882C, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D8B8B48()
{
  result = qword_2A17B75D8;
  if (!qword_2A17B75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B75D8);
  }

  return result;
}

uint64_t sub_29D8B8BE4(uint64_t a1)
{
  result = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D8B8C64()
{
  result = qword_2A17B75F8;
  if (!qword_2A17B75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B75F8);
  }

  return result;
}

unint64_t sub_29D8B8CBC()
{
  result = qword_2A17B7600;
  if (!qword_2A17B7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7600);
  }

  return result;
}

unint64_t sub_29D8B8D14()
{
  result = qword_2A17B7608;
  if (!qword_2A17B7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7608);
  }

  return result;
}

unint64_t sub_29D8B8D6C()
{
  result = qword_2A17B7610;
  if (!qword_2A17B7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7610);
  }

  return result;
}

unint64_t sub_29D8B8DC4()
{
  result = qword_2A17B7618;
  if (!qword_2A17B7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7618);
  }

  return result;
}

unint64_t sub_29D8B8E1C()
{
  result = qword_2A17B7620;
  if (!qword_2A17B7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7620);
  }

  return result;
}

unint64_t sub_29D8B8E70()
{
  result = qword_2A17B7630;
  if (!qword_2A17B7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7630);
  }

  return result;
}

uint64_t sub_29D8B8EC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D8B8F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D8B8F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D8B8FE8()
{
  result = qword_2A17B7650;
  if (!qword_2A17B7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7650);
  }

  return result;
}

unint64_t sub_29D8B9040()
{
  result = qword_2A17B7658;
  if (!qword_2A17B7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7658);
  }

  return result;
}

unint64_t sub_29D8B9098()
{
  result = qword_2A17B7660;
  if (!qword_2A17B7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7660);
  }

  return result;
}

uint64_t sub_29D8B914C(uint64_t a1)
{
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16[-v10];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A2BE98;
  (*(v4 + 16))(v8, v11, v3);
  sub_29D935E88();
  v13 = v12;
  sub_29D933A98();
  v14 = sub_29D939D98();
  (*(v4 + 8))(v11, v3);
  return v14;
}

uint64_t sub_29D8B93C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1 + v5, v6);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_29D8B9490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_29D8BB990(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A0A20(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_29D6A0D34(v10);
  }

  (*(v12 + 32))(v15, v10, v11);
  v17 = *a4;
  swift_beginAccess();
  (*(v12 + 24))(a3 + v17, v15, v11);
  swift_endAccess();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_29D8B9678()
{
  sub_29D9364E8();
  sub_29D93A348();
  sub_29D935D48();
  sub_29D93A368();
  sub_29D936748();
  return sub_29D93A358();
}

uint64_t sub_29D8B96E0()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v16[-v7];
  if (sub_29D935F28())
  {
    sub_29D935CC8();
    sub_29D935CA8();
    v9 = *(v1 + 8);
    v9(v5, v0);
    v10 = sub_29D935CE8();
    *(v11 + 16) = 0x4024000000000000;
    v10(v16, 0);
    sub_29D935F18();
    v12 = sub_29D935CF8();
    sub_29D936978();
    v9(v8, v0);
  }

  else
  {
    sub_29D935CB8();
    v13 = sub_29D935CE8();
    *(v14 + 16) = 0x4024000000000000;
    v13(v16, 0);
    sub_29D935F18();
    v12 = sub_29D935CF8();
    sub_29D936978();
    (*(v1 + 8))(v8, v0);
  }

  return v12;
}

uint64_t sub_29D8B98D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v5 = sub_29D933A58();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8BB990(0, &qword_2A17B7090, MEMORY[0x29EDC23D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v47 = &v43 - v10;
  v11 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v13 = sub_29D939D18();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v43 - v20;
  if (sub_29D939D68() == a1 && v22 == a2)
  {

    if (sub_29D933DA8())
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = sub_29D93AD78();

    if ((v24 & 1) == 0 || sub_29D933DA8())
    {
LABEL_7:
      if (sub_29D939D68() == a1 && v25 == a2)
      {
      }

      else
      {
        v32 = sub_29D93AD78();

        if ((v32 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (sub_29D933DA8() == 1)
      {
        sub_29D939D08();
        if (qword_2A1A242C0 != -1)
        {
          swift_once();
        }

        v33 = qword_2A1A2BE98;
        (*(v14 + 16))(v18, v21, v13);
        sub_29D935E88();
        v34 = v33;
        sub_29D933A98();
        sub_29D939D98();
        (*(v14 + 8))(v21, v13);
        v49 = 0x74497265746F6F46;
        v50 = 0xEB000000005F6D65;
        v35 = v44;
        sub_29D933A48();
        v36 = sub_29D933A18();
        v38 = v37;
        (*(v45 + 8))(v35, v46);
        MEMORY[0x29ED6A240](v36, v38);

        v39 = sub_29D936768();
        v40 = v48;
        v48[3] = v39;
        v40[4] = sub_29D8BB9F4(&qword_2A17B76B8, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A0]);
        sub_29D693F78(v40);
        return sub_29D936758();
      }

LABEL_19:
      v41 = sub_29D935268();
      v42 = v48;
      v48[3] = v41;
      v42[4] = sub_29D8BB9F4(&qword_2A17B76B0, MEMORY[0x29EDC1EC0], MEMORY[0x29EDC1EB8]);
      sub_29D693F78(v42);
      return sub_29D935258();
    }
  }

  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v26 = qword_2A1A2BE98;
  (*(v14 + 16))(v18, v21, v13);
  sub_29D935E88();
  v27 = v26;
  sub_29D933A98();
  sub_29D939D98();
  (*(v14 + 8))(v21, v13);
  v28 = sub_29D935D58();
  (*(*(v28 - 8) + 56))(v47, 1, 1, v28);
  v29 = sub_29D935D78();
  v30 = v48;
  v48[3] = v29;
  v30[4] = sub_29D8BB9F4(&qword_2A17B76C0, MEMORY[0x29EDC23E0], MEMORY[0x29EDC23C8]);
  sub_29D693F78(v30);
  return sub_29D935D68();
}

void sub_29D8B9FCC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BloodPressureJournalCreationNotificationSettingsCollectionViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D8BA184(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for BloodPressureJournalCreationNotificationSettingsViewController(0);
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v2 = sub_29D939D28();
}

void sub_29D8BA210()
{
  v1 = v0;
  sub_29D933F18();
  sub_29D933F08();
  v7 = sub_29D933EF8();

  if ([v7 authorizationStatus] == 1)
  {
    v2 = swift_allocObject();
    v2[2] = v1;
    v3 = v1;
    v6 = sub_29D79AB4C(sub_29D8BBA3C, v2);
    [v3 presentViewController:v6 animated:1 completion:0];

    v4 = v6;
LABEL_8:

    return;
  }

  sub_29D7B7874(5, 0);
  v5 = *&v0[qword_2A17B7678];
  if (!v5)
  {
    v4 = v7;
    goto LABEL_8;
  }

  swift_unknownObjectRetain();
  sub_29D8BA75C(v1, v5, &off_2A244CA58, 1);

  sub_29D936978();
}

uint64_t sub_29D8BA374(char *a1)
{
  result = sub_29D7B7874(5, 0);
  v3 = *&a1[qword_2A17B7678];
  if (v3)
  {
    swift_unknownObjectRetain();
    sub_29D8BA75C(a1, v3, &off_2A244CA58, 1);

    return sub_29D936978();
  }

  return result;
}

void sub_29D8BA3FC(void *a1)
{
  v1 = a1;
  sub_29D8BA210();
}

uint64_t sub_29D8BA474()
{
  sub_29D936978();
}

id sub_29D8BA4CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D8BA50C(uint64_t a1)
{
  sub_29D936978();
}

uint64_t sub_29D8BA560(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B7678);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D8BA57C(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = &off_2A24440F8;
  *(v5 + 32) = a2;
  *(v5 + 40) = 3;
  *(v5 + 48) = ObjectType;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_29D8BBA44;
  *(v6 + 24) = v5;
  v7 = a2;
  v8 = a1;

  sub_29D7B6860(sub_29D8BBA58, v6);
}

void sub_29D8BA680(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a2;
  v6 = a1;
  sub_29D9383C8();

  if (v8)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  sub_29D73E1F4(v7, v6, &off_2A24496B0, v5, 0, ObjectType);
}

void sub_29D8BA75C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = a2;
  v10 = a1;
  sub_29D73E1F4(2, v10, a3, v9, a4, ObjectType);
}

uint64_t sub_29D8BA7F0(uint64_t a1)
{
  v92 = *MEMORY[0x29EDCA608];
  v2 = sub_29D933A58();
  v84 = *(v2 - 8);
  v85 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v83 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v81 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29D939D18();
  v79 = *(v82 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v82, v8);
  v76 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v75 = v63 - v12;
  v13 = MEMORY[0x29EDC9C68];
  sub_29D8BB990(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = v63 - v16;
  sub_29D8BB990(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v13);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v21 = v63 - v20;
  v22 = sub_29D935188();
  v23 = *(v22 - 8);
  v24 = v23;
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v77 = v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = v63 - v29;
  sub_29D8B914C(a1);
  v31 = sub_29D9339F8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v73 = v31;
  v72 = v33;
  v71 = v32 + 56;
  (v33)(v21, 1, 1);
  v34 = sub_29D9379E8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v70 = v34;
  v69 = v36;
  v68 = v35 + 56;
  (v36)(v17, 1, 1);
  swift_retain_n();
  v78 = v17;
  v74 = v21;
  sub_29D935178();
  v37 = MEMORY[0x29EDC9E90];
  sub_29D8BB990(0, &qword_2A17B1108, sub_29D6944FC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v89 = xmmword_29D93DDB0;
  *(inited + 16) = xmmword_29D93DDB0;
  sub_29D8BB990(0, &qword_2A17B7698, MEMORY[0x29EDC1E38], v37);
  v40 = v39;
  v41 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v67 = *(v23 + 72);
  v42 = swift_allocObject();
  *(v42 + 16) = v89;
  v86 = v30;
  v87 = v24;
  v43 = *(v24 + 16);
  v88 = v22;
  v66 = v43;
  v43(v42 + v41, v30, v22);
  *(inited + 32) = v42;
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = a1;
  sub_29D9383C8();

  if ((v91 & 1) != 0 || v90)
  {
    v53 = v87;
    v52 = v88;
  }

  else
  {
    v64 = v41;
    v65 = v40;
    v44 = v75;
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v45 = qword_2A1A2BE98;
    v63[1] = unk_2A1A2BEA0;
    v46 = v79;
    v47 = v82;
    (*(v79 + 16))(v76, v44, v82);
    sub_29D935E88();
    v48 = v45;
    sub_29D933A98();
    sub_29D939D98();
    (*(v46 + 8))(v44, v47);
    v72(v74, 1, 1, v73);
    v69(v78, 1, 1, v70);
    swift_retain_n();
    v49 = v77;
    sub_29D935178();
    v50 = v64;
    v51 = swift_allocObject();
    *(v51 + 16) = v89;
    v52 = v88;
    v66(v51 + v50, v49, v88);
    inited = sub_29D68FC70(1, 2, 1, inited);
    v53 = v87;
    (*(v87 + 8))(v49, v52);
    *(inited + 16) = 2;
    *(inited + 40) = v51;
  }

  sub_29D775FB4(inited);

  v90 = 0x3C53447961727241;
  v91 = 0xE800000000000000;
  v54 = v83;
  sub_29D933A48();
  v55 = sub_29D933A18();
  v57 = v56;
  (*(v84 + 8))(v54, v85);
  MEMORY[0x29ED6A240](v55, v57);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  sub_29D9351D8();
  swift_allocObject();
  sub_29D9351E8();
  sub_29D935588();

  sub_29D7E9A60(0);
  sub_29D8BB9F4(&qword_2A17B5500, sub_29D7E9A60, MEMORY[0x29EDC1E90]);
  sub_29D9355B8();

  sub_29D7E9B2C(0);
  sub_29D8BB9F4(&qword_2A17B5508, sub_29D7E9B2C, MEMORY[0x29EDC2110]);
  v58 = sub_29D9355D8();

  sub_29D935F88();
  sub_29D8BB990(0, &qword_2A17B1088, sub_29D8BB854, MEMORY[0x29EDC9E90]);
  v59 = swift_allocObject();
  *(v59 + 16) = v89;
  v60 = sub_29D8BB9F4(&qword_2A17B76A0, sub_29D8BB8B4, MEMORY[0x29EDC1E08]);
  *(v59 + 32) = v58;
  *(v59 + 40) = v60;

  sub_29D935FA8();
  v61 = sub_29D936D88();

  (*(v53 + 8))(v86, v52);
  return v61;
}

uint64_t sub_29D8BB314(unint64_t a1, char a2)
{
  v4 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v19[-v13];
  if ((a2 & 1) != 0 || a1 >= 2)
  {
    return 0;
  }

  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A2BE98;
  (*(v7 + 16))(v11, v14, v6);
  sub_29D935E88();
  v17 = v16;
  sub_29D933A98();
  v18 = sub_29D939D98();
  (*(v7 + 8))(v14, v6);
  return v18;
}

uint64_t sub_29D8BB554(uint64_t a1)
{
  v3 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v20 - v12;
  v14 = (v1 + qword_2A17B7678);
  *v14 = 0;
  v14[1] = 0;
  v21 = v1;
  *(v1 + qword_2A17B7680) = a1;
  v15 = objc_allocWithZone(type metadata accessor for BloodPressureJournalCreationNotificationSettingsCollectionViewController(0));

  sub_29D8BA7F0(v16);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A2BE98;
  (*(v6 + 16))(v10, v13, v5);
  sub_29D935E88();
  v18 = v17;
  sub_29D933A98();
  sub_29D939D98();
  (*(v6 + 8))(v13, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  sub_29D8BB314(v22, v23);
  sub_29D7406DC();
  return sub_29D936A98();
}

unint64_t sub_29D8BB854()
{
  result = qword_2A17B1090;
  if (!qword_2A17B1090)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1090);
  }

  return result;
}

void sub_29D8BB8B4(uint64_t a1)
{
  if (!qword_2A17B76A8)
  {
    sub_29D7E9B2C(255);
    sub_29D8BB9F4(&qword_2A17B5508, sub_29D7E9B2C, MEMORY[0x29EDC2110]);
    v1 = sub_29D935158();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B76A8);
    }
  }
}

void sub_29D8BB990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8BB9F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CardioFitnessChartSection(uint64_t a1)
{
  result = qword_2A17B76C8;
  if (!qword_2A17B76C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8BBB24(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D9356A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935678();
  v7 = sub_29D935608();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void *sub_29D8BBC58()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_29D8BBC80()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_29D8BBCAC(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 8);
  v6 = [a1 healthStore];
  v7 = [objc_allocWithZone(HKHRCardioFitnessDataSource) initWithHealthStore:v6 classificationsAvailable:v5 & 1];

  [a1 registerInteractiveChartViewControllerProvider:v7 typeIdentifier:*MEMORY[0x29EDBA970]];
  if (*(v3 + 40))
  {
    v8 = sub_29D93A5C8();
  }

  else
  {
    v8 = 0;
  }

  sub_29D8BC178();
  v9 = sub_29D935FC8();

  return v9;
}

uint64_t sub_29D8BBDCC(uint64_t a1)
{
  v2 = sub_29D877E38();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29D8BBE20()
{
  result = qword_2A17B76D8;
  if (!qword_2A17B76D8)
  {
    type metadata accessor for CardioFitnessChartSection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B76D8);
  }

  return result;
}

uint64_t sub_29D8BBE88(void *a1, char a2, void *a3)
{
  v6 = sub_29D933A58();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v21[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8BC124(0, &qword_2A17B54F0, MEMORY[0x29EDC2240]);
  sub_29D9359D8();
  v11 = swift_allocObject();
  v20 = xmmword_29D93DDB0;
  *(v11 + 16) = xmmword_29D93DDB0;
  sub_29D8BC124(0, &qword_2A17B1138, sub_29D6FC5F4);
  v12 = swift_allocObject();
  *(v12 + 16) = v20;
  *(v12 + 56) = &type metadata for CardioFitnessChartItem;
  *(v12 + 64) = sub_29D877BB8();
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = a3;
  *(v13 + 56) = 0;
  v14 = a3;
  v15 = a1;
  sub_29D9359B8();
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(v21, "MutableArray<");
  HIWORD(v21[1]) = -4864;
  sub_29D933A48();
  v16 = sub_29D933A18();
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x29ED6A240](v16, v18);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  return sub_29D935B28();
}

void sub_29D8BC124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93AD48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D8BC178()
{
  result = qword_2A17B76E0;
  if (!qword_2A17B76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B76E0);
  }

  return result;
}

uint64_t type metadata accessor for HypertensionNotificationsConfirmDetailsDataSource(uint64_t a1)
{
  result = qword_2A17B7700;
  if (!qword_2A17B7700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8BC270()
{
  v79 = *v0;
  v76 = sub_29D9359D8();
  v73 = *(v76 - 8);
  v74 = v76 - 8;
  v75 = v73;
  v2 = MEMORY[0x2A1C7C4A8](v76 - 8, v1);
  v72 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v86 = v68 - v5;
  v6 = sub_29D935298();
  v85 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6, v7);
  v84 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v83 = v68 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v78 = v68 - v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v68 - v17;
  v19 = sub_29D933A58();
  v81 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (v0 + qword_2A17B76E8);
  *v24 = 6645569;
  v24[1] = 0xE300000000000000;
  v25 = (v0 + qword_2A17B76F0);
  *v25 = 0x69736F6E67616944;
  v25[1] = 0xE900000000000073;
  *(v0 + qword_2A17B76F8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(v87, "MutableArray<");
  HIWORD(v87[1]) = -4864;
  sub_29D933A48();
  v26 = sub_29D933A18();
  v28 = v27;
  v29 = *(v20 + 8);
  v80 = v20 + 8;
  v82 = v29;
  v29(v23, v19);
  MEMORY[0x29ED6A240](v26, v28);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  v30 = sub_29D935B28();
  v31 = (v30 + qword_2A17B76E8);
  v32 = *(v30 + qword_2A17B76E8);
  v33 = *(v30 + qword_2A17B76E8 + 8);
  v34 = v30;
  v69 = v30;

  sub_29D935E88();
  v71 = v18;
  sub_29D8BC9D4(0, v32, v33);

  v36 = *v31;
  v35 = v31[1];
  sub_29D935E88();
  v37 = v78;
  sub_29D8BCB38(0, v36, v35);

  v70 = MEMORY[0x29EDC9E90];
  sub_29D8BE30C(0, &qword_2A17B1138, sub_29D6FC5F4, MEMORY[0x29EDC9E90]);
  v68[1] = v38;
  v39 = swift_allocObject();
  v77 = xmmword_29D93F680;
  *(v39 + 16) = xmmword_29D93F680;
  *(v39 + 56) = v6;
  v40 = sub_29D8BE2B4();
  *(v39 + 64) = v40;
  v41 = sub_29D693F78((v39 + 32));
  v42 = *(v85 + 16);
  v42(v41, v18, v6);
  *(v39 + 96) = v6;
  *(v39 + 104) = v40;
  v43 = sub_29D693F78((v39 + 72));
  v42(v43, v37, v6);
  sub_29D933A48();
  sub_29D933A18();
  v82(v23, v81);
  sub_29D9359C8();
  v44 = (v34 + qword_2A17B76F0);
  v45 = *(v34 + qword_2A17B76F0);
  v46 = *(v34 + qword_2A17B76F0 + 8);
  sub_29D935E88();
  v47 = v83;
  sub_29D8BC9D4(0, v45, v46);

  v48 = *v44;
  v49 = v44[1];
  sub_29D935E88();
  v50 = v84;
  sub_29D8BCB38(0, v48, v49);

  v51 = swift_allocObject();
  *(v51 + 16) = v77;
  *(v51 + 56) = v6;
  *(v51 + 64) = v40;
  v52 = sub_29D693F78((v51 + 32));
  v42(v52, v47, v6);
  *(v51 + 96) = v6;
  *(v51 + 104) = v40;
  v53 = sub_29D693F78((v51 + 72));
  v42(v53, v50, v6);
  sub_29D933A48();
  sub_29D933A18();
  v82(v23, v81);
  v54 = v72;
  sub_29D9359C8();
  sub_29D8BE30C(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], v70);
  v55 = *(v73 + 72);
  v56 = v75;
  v57 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v77;
  v59 = v58 + v57;
  v60 = v56;
  v61 = *(v56 + 16);
  v62 = v86;
  v63 = v76;
  v61(v59, v86, v76);
  v61(v59 + v55, v54, v63);
  v64 = v69;
  sub_29D935B38();

  v65 = *(v60 + 8);
  v65(v54, v63);
  v66 = *(v85 + 8);
  v66(v84, v6);
  v66(v83, v6);
  v65(v62, v63);
  v66(v78, v6);
  v66(v71, v6);
  return v64;
}

uint64_t sub_29D8BC9D4(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x6D6574497365592ELL, 0xE800000000000000);
  sub_29D93AA18();

  MEMORY[0x29ED6A240](a2, a3);
  return sub_29D935288();
}

uint64_t sub_29D8BCB38(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x6D6574496F4E2ELL, 0xE700000000000000);
  sub_29D93AA18();

  MEMORY[0x29ED6A240](a2, a3);
  return sub_29D935288();
}

uint64_t sub_29D8BCC9C(__n128 a1)
{
  v2 = *v1;
  sub_29D8BE30C(0, &qword_2A17B7710, MEMORY[0x29EDC1ED8], MEMORY[0x29EDC9C68]);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v100 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v104 = &v90 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v108 = &v90 - v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v90 - v14;
  v16 = sub_29D935298();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v99 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v101 = &v90 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v107 = &v90 - v26;
  MEMORY[0x2A1C7C4A8](v25, v27);
  v109 = &v90 - v28;
  v29 = sub_29D933DB8();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v105 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v106 = &v90 - v36;
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v40 = &v90 - v39;
  MEMORY[0x2A1C7C4A8](v38, v41);
  v43 = &v90 - v42;
  MEMORY[0x29ED64160](1, 0);
  MEMORY[0x29ED64160](0, 0);
  sub_29D9355E8();
  sub_29D6FC5F4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v50 = *(v30 + 8);
    v50(v40, v29);
    v50(v43, v29);
    v51.n128_f64[0] = (*(v17 + 56))(v15, 1, 1, v16);
    return sub_29D8BE228(v15, v51);
  }

  v97 = v30;
  v98 = v29;
  v102 = v43;
  v103 = *(v17 + 56);
  v103(v15, 0, 1, v16);
  v44 = *(v17 + 32);
  v44(v109, v15, v16);
  v96 = v1;
  sub_29D9355E8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v17 + 8))(v109, v16);
    v53 = v98;
    v54 = *(v97 + 8);
    v54(v40, v98);
    v54(v102, v53);
    v55 = v108;
    v56.n128_f64[0] = v103(v108, 1, 1, v16);
    return sub_29D8BE228(v55, v56);
  }

  v92 = v2;
  v93 = v40;
  v94 = v17;
  v95 = v17 + 56;
  v45 = v108;
  v103(v108, 0, 1, v16);
  v44(v107, v45, v16);
  v46 = sub_29D935278() & 1;
  v47 = sub_29D935278();
  v48 = v16;
  v91 = v44;
  v90 = v17 + 32;
  if (v46 == (v47 & 1))
  {
    v49 = 2;
  }

  else
  {
    v49 = sub_29D935278() & 1;
  }

  v57 = v102;
  v58 = v105;
  v59 = v106;
  MEMORY[0x29ED64160](1, 1);
  MEMORY[0x29ED64160](0, 1);
  sub_29D9355E8();
  v60 = v104;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = v60;
    v71 = v98;
    v72 = *(v97 + 8);
    v72(v58, v98);
    v72(v59, v71);
    v73 = *(v94 + 8);
    v73(v107, v48);
    v73(v109, v48);
    v72(v93, v71);
    v72(v57, v71);
    v103(v70, 1, 1, v48);
    return sub_29D8BE228(v70, v74);
  }

  LODWORD(v108) = v49;
  v61 = v103;
  v103(v60, 0, 1, v48);
  v62 = v58;
  v63 = v101;
  v64 = v91;
  v91(v101, v60, v48);
  sub_29D9355E8();
  v65 = v100;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = v65;
    v75 = *(v94 + 8);
    v75(v63, v48);
    v76 = v98;
    v77 = *(v97 + 8);
    v77(v62, v98);
    v77(v106, v76);
    v75(v107, v48);
    v75(v109, v48);
    v77(v93, v76);
    v77(v102, v76);
    v74.n128_f64[0] = v61(v70, 1, 1, v48);
    return sub_29D8BE228(v70, v74);
  }

  v61(v65, 0, 1, v48);
  v66 = v99;
  v64(v99, v65, v48);
  v67 = sub_29D935278() & 1;
  v68 = v63;
  if (v67 == (sub_29D935278() & 1))
  {
    v69 = 2;
  }

  else
  {
    v69 = sub_29D935278() & 1;
  }

  v78 = v105;
  v79 = v108;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  *(Strong + qword_2A17B18C0) = v79;
  *(Strong + qword_2A17B18C8) = v69;
  v81 = *(Strong + qword_2A17B18D0);
  if (v81)
  {
    v83 = v79 != 2 && v69 != 2;
    [v81 setEnabled_];
    sub_29D936978();
LABEL_25:
    v84 = *(v94 + 8);
    v84(v66, v48);
    v84(v68, v48);
    v85 = v98;
    v86 = *(v97 + 8);
    v86(v78, v98);
    v86(v106, v85);
    v84(v107, v48);
    v84(v109, v48);
    v86(v93, v85);
    return (v86)(v102, v85);
  }

  v87 = *(v94 + 8);
  v87(v66, v48);
  v87(v68, v48);
  v88 = v98;
  v89 = *(v97 + 8);
  v89(v78, v98);
  v89(v106, v88);
  v87(v107, v48);
  v87(v109, v48);
  v89(v93, v88);
  v89(v102, v88);
  return sub_29D936978();
}

uint64_t sub_29D8BD730()
{

  v1 = v0 + qword_2A17B76F8;

  return sub_29D68B77C(v1);
}

uint64_t sub_29D8BD788()
{
  v0 = sub_29D935BA8();

  sub_29D68B77C(v0 + qword_2A17B76F8);

  return swift_deallocClassInstance();
}

uint64_t sub_29D8BD818()
{
  sub_29D935D18();
  sub_29D93A1E8();
  sub_29D935DE8();
  return sub_29D93A1E8();
}

uint64_t sub_29D8BD868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D771308(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29D933DA8();
  v10 = *(v5 + 56);
  *v8 = v9;
  v11 = sub_29D934B78();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8 + v10, a1, v11);
  if ((*(v12 + 88))(v8 + v10, v11) != *MEMORY[0x29EDC1B58])
  {
    goto LABEL_6;
  }

  if (v9 != 1)
  {
    if (!v9)
    {
      if (qword_2A17B0D68 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_29D771370(v8);
  }

  if (qword_2A17B0D68 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  sub_29D9334A8();
  v14 = sub_29D937B88();
  v15 = MEMORY[0x29EDC7800];
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  sub_29D693F78(a2);
  sub_29D937B08();
  sub_29D935E88();
  sub_29D937B48();
  sub_29D718DF8();
  sub_29D93A658();
  v16 = sub_29D937A98();
  sub_29D937A58();
  v16(v19, 0);
  v17 = [objc_opt_self() labelColor];
  v18 = sub_29D937A98();
  sub_29D937A68();
  v18(v19, 0);

  return (*(v12 + 8))(v8 + v10, v11);
}

double sub_29D8BDCC8(uint64_t a1)
{
  v2 = sub_29D933DB8();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8BE30C(0, &qword_2A17B7710, MEMORY[0x29EDC1ED8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v41 - v7;
  v9 = sub_29D935298();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v41 - v17;
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v41 - v20;
  sub_29D9355E8();
  sub_29D6FC5F4();
  v22 = swift_dynamicCast();
  v23 = *(v10 + 56);
  if ((v22 & 1) == 0)
  {
    v26.n128_f64[0] = v23(v8, 1, 1, v9);
    sub_29D8BE228(v8, v26);
    return result;
  }

  v23(v8, 0, 1, v9);
  (*(v10 + 32))(v21, v8, v9);
  if (sub_29D935278())
  {
    goto LABEL_7;
  }

  v24 = sub_29D933DA8();
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = &qword_2A17B76F0;
      goto LABEL_9;
    }

LABEL_7:
    (*(v10 + 8))(v21, v9);
    return result;
  }

  v25 = &qword_2A17B76E8;
LABEL_9:
  v28 = (v1 + *v25);
  v29 = v28[1];
  v44 = *v28;
  sub_29D935E88();
  v30 = sub_29D933D88();
  if (v30 == 1)
  {
    sub_29D8BCB38(1, v44, v29);
    v49 = v9;
    v43 = sub_29D8BE2B4();
    v50 = v43;
    v36 = sub_29D693F78(v48);
    v37 = *(v10 + 16);
    v41 = v10 + 16;
    v42 = v37;
    v37(v36, v18, v9);
    sub_29D935B88();
    sub_29D69417C(v48);
    sub_29D8BC9D4(0, v44, v29);

    v33 = sub_29D933DA8();
    v34 = v45;
    v35 = 0;
    goto LABEL_13;
  }

  if (!v30)
  {
    sub_29D8BC9D4(1, v44, v29);
    v49 = v9;
    v43 = sub_29D8BE2B4();
    v50 = v43;
    v31 = sub_29D693F78(v48);
    v32 = *(v10 + 16);
    v41 = v10 + 16;
    v42 = v32;
    v32(v31, v18, v9);
    sub_29D935B88();
    sub_29D69417C(v48);
    sub_29D8BCB38(0, v44, v29);

    v33 = sub_29D933DA8();
    v34 = v45;
    v35 = 1;
LABEL_13:
    MEMORY[0x29ED64160](v35, v33);
    v49 = v9;
    v50 = v43;
    v38 = sub_29D693F78(v48);
    v42(v38, v14, v9);
    sub_29D935B88();
    sub_29D69417C(v48);
    sub_29D8BCC9C(v39);
    (*(v46 + 8))(v34, v47);
    v40 = *(v10 + 8);
    v40(v14, v9);
    v40(v18, v9);
    v40(v21, v9);
    return result;
  }

  (*(v10 + 8))(v21, v9);

  return result;
}

uint64_t sub_29D8BE228(uint64_t a1, __n128 a2)
{
  sub_29D8BE30C(0, &qword_2A17B7710, MEMORY[0x29EDC1ED8], MEMORY[0x29EDC9C68]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D8BE2B4()
{
  result = qword_2A17B7718;
  if (!qword_2A17B7718)
  {
    sub_29D935298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7718);
  }

  return result;
}

void sub_29D8BE30C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8BE370(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_29D8BE38C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D8BE3D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29D8BE424(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, double *a8@<X8>)
{
  v9 = a6;
  v16 = sub_29D937D68();
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v37[0] = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D937CB8();
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v21 = sub_29D937CF8();
  MEMORY[0x2A1C7C4A8](v21 - 8, v22);
  if (a3)
  {
    v23 = sub_29D8BE7E0(a5, v9, a7);
  }

  else
  {
    v23 = a1;
    v24 = a2;
  }

  v25 = sub_29D8BEBE0(a4, a5, v9, a7, v23, v24);
  if (v25)
  {
    v26 = v25;
    v27 = sub_29D8BFFA8(v25);
    sub_29D8C02BC(0);
    *(a8 + 5) = v28;
    *(a8 + 6) = sub_29D8C0A88(&qword_2A17B7758, sub_29D8C02BC, MEMORY[0x29EDB86F8]);
    sub_29D693F78(a8 + 2);
    *&v37[1] = v27;
    sub_29D74D930();
    sub_29D937CC8();
    v29 = swift_allocObject();
    *(v29 + 16) = a5;
    *(v29 + 24) = v9;
    *(v29 + 32) = a7;
    *(v29 + 40) = v26;
    v30 = a5;
    v31 = a7;
    sub_29D935E88();
    sub_29D937CA8();
    sub_29D937D58();
    sub_29D8C0350(0, &qword_2A17B7748, sub_29D70ABCC, sub_29D8C03D0);
    sub_29D8C0468();
    sub_29D937F88();
    sub_29D8C060C(v26);
    v33 = v32;
    v35 = v34;
  }

  else
  {
    sub_29D937CA8();
    sub_29D937D58();
    sub_29D937CE8();
    sub_29D8BFCD0(0);
    *(a8 + 5) = v36;
    *(a8 + 6) = sub_29D8C0A88(&qword_2A17B7738, sub_29D8BFCD0, MEMORY[0x29EDB86F8]);
    sub_29D693F78(a8 + 2);
    sub_29D8C0350(0, &qword_2A17B7728, MEMORY[0x29EDB8550], MEMORY[0x29EDB86C8]);
    sub_29D8BFD64();
    sub_29D937F98();
    v33 = 0;
    v35 = 0;
  }

  *a8 = v33;
  *(a8 + 1) = v35;
}

double sub_29D8BE7E0(void *a1, char a2, uint64_t a3)
{
  if (!a2)
  {
    v10 = [objc_opt_self() sleepDurationNoDataRange];
    v11 = [objc_opt_self() secondUnit];
    sub_29D8BE908(v11);
    v3 = v12;

    return v3;
  }

  v3 = 0.0;
  if (a2 == 1)
  {
    v5 = a1;
    v6 = [v5 hk:1 axisScalingRuleForChartSizeClass:a3 unitController:?];
    if (v6)
    {
      v7 = [v6 noDataStartingRange];
      if (v7)
      {
        v8 = v7;
        sub_29D8BEA80();
        v3 = v9;

        sub_29D936978();
        return v3;
      }

      sub_29D936978();
    }
  }

  return v3;
}

void sub_29D8BE908(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [v2 minValue];
  if (v5 && (v6 = v5, [v5 doubleValueForUnit_], v8 = v7, v6, (v9 = objc_msgSend(v2, sel_maxValue)) != 0))
  {
    v10 = v9;
    [v9 doubleValueForUnit_];
    v12 = v11;

    if (v8 > v12)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v13, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    sub_29D9371F8();
  }
}

void sub_29D8BEA80()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 minValue];
  if (v2 && (v3 = v2, [v2 doubleValue], v5 = v4, v3, (v6 = objc_msgSend(v0, sel_maxValue)) != 0))
  {
    v7 = v6;
    [v6 doubleValue];
    v9 = v8;

    if (v5 > v9)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v10, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    sub_29D9371F8();
  }
}

uint64_t sub_29D8BEBE0(uint64_t a1, void *a2, unsigned __int8 a3, void *a4, double a5, double a6)
{
  if (a3 >= 2u)
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDC4420]) init];
    v11 = 0;
  }

  else
  {
    v8 = a2;
    v9 = [v8 hk:a4 dimensionForChartAxisWithUnitController:?];
    if (!v9)
    {
      v9 = [objc_allocWithZone(MEMORY[0x29EDC4420]) init];
    }

    swift_unknownObjectRetain();
    v10 = [v8 chartingRules];
    v11 = [v10 axisScalingRule];

    v12 = [a4 unitForDisplayType_];
    if (v12)
    {
      if (v11 && ([v11 respondsToSelector_] & 1) != 0)
      {
        [v11 setUnit_];
      }
    }
  }

  v13 = sub_29D93A048();
  v14 = sub_29D93A048();
  v15 = [objc_opt_self() valueRangeWithMinValue:v13 maxValue:v14];

  if (v11)
  {
    v16 = [v11 yValueRangeForRange:v15 zoomLevel:3];
  }

  else
  {
    v16 = v15;
  }

  v17 = v16;
  v18 = [v16 minValue];
  v19 = [v17 maxValue];
  v20 = [objc_opt_self() valueRangeWithMinValue:v18 maxValue:v19];

  v21 = [objc_opt_self() ticksAndLabelsForRangeInModelCoordinates:v20 maximumLabelCount:a1 endingOptions:0 dimension:v9];
  sub_29D936978();
  if (v21)
  {
    sub_29D69567C(0, &qword_2A17B7770, 0x29EDC4418);
    v22 = sub_29D939F38();

    sub_29D936978();
    sub_29D936978();
  }

  else
  {

    sub_29D936978();
    sub_29D936978();
    return 0;
  }

  return v22;
}

uint64_t sub_29D8BEEE8@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v95 = a4;
  v96 = a5;
  v94 = a3;
  v93 = a2;
  sub_29D8C0A0C(0, &qword_2A17B7760, sub_29D70ABCC, sub_29D8C03D0);
  v9 = v8;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v83 - v11;
  v87 = sub_29D937BE8();
  v86 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87, v13);
  v99 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C03D0(0);
  v89 = v15;
  v88 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v103 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v102 = &v83 - v20;
  v21 = sub_29D937E18();
  MEMORY[0x2A1C7C4A8](v21 - 8, v22);
  v23 = sub_29D937E48();
  MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  sub_29D70AD94(0);
  v26 = v25;
  v92 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70ACCC(0);
  v97 = *(v30 - 8);
  v98 = v30;
  MEMORY[0x2A1C7C4A8](v30, v31);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70ABCC(0);
  v85 = v34;
  v84 = *(v34 - 8);
  v36 = MEMORY[0x2A1C7C4A8](v34, v35);
  v101 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v105 = &v83 - v39;
  v40 = sub_29D937FF8();
  v91 = a6;
  v90 = v9;
  v100 = v12;
  v104 = a1;
  if (v40)
  {
    v41 = sub_29D937FF8();
    v42 = sub_29D937FE8();
    if (__OFSUB__(v42, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v41 == v42 - 1)
    {
      v43 = sub_29D9398F8();
    }

    else
    {
      v43 = sub_29D939918();
    }
  }

  else
  {
    v43 = sub_29D939908();
  }

  MEMORY[0x2A1C7C4A8](v43, v44);
  sub_29D937E38();
  sub_29D937E08();
  sub_29D70ADF8(0);
  v81 = v45;
  v82 = sub_29D70AEA8();
  v79 = sub_29D8C081C;
  v80 = &v75;
  LOBYTE(v78) = 0;
  v77 = 0;
  LOBYTE(v76) = 0;
  v75 = 0x4010000000000000;
  sub_29D937D18();
  if (qword_2A17B0CA0 != -1)
  {
    swift_once();
  }

  v107 = qword_2A17D0D18;
  v46 = sub_29D8C0A88(&qword_2A17B2B80, sub_29D70AD94, MEMORY[0x29EDB8618]);
  v47 = MEMORY[0x29EDBCA98];
  v48 = MEMORY[0x29EDBCA88];
  sub_29D937EB8();
  (*(v92 + 8))(v29, v26);
  a6 = v99;
  if (qword_2A17B0CA8 != -1)
  {
    swift_once();
  }

  v107 = v26;
  v108 = v47;
  v109 = v46;
  v110 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v98;
  sub_29D937EC8();
  (*(v97 + 8))(v33, v49);
  v50 = sub_29D937FF8();
  v12 = v100;
  if (!v50)
  {
    goto LABEL_14;
  }

  v51 = sub_29D937FF8();
  v52 = sub_29D937FE8();
  if (__OFSUB__(v52, 1))
  {
    goto LABEL_23;
  }

  if (v51 != v52 - 1)
  {
    if (qword_2A17B0C98 == -1)
    {
LABEL_18:
      v53 = &xmmword_2A17D0CF0;
      goto LABEL_19;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

LABEL_14:
  if (qword_2A17B0C90 != -1)
  {
    swift_once();
  }

  v53 = &xmmword_2A17D0CC8;
LABEL_19:
  v54 = *v53;
  v55 = *(v53 + 2);
  v56 = *(v53 + 4);
  v57 = *(v53 + 1);
  v58 = sub_29D935E88();
  v107 = v54;
  v108 = v57;
  v109 = v55;
  v110 = v58;
  v111 = v56;
  sub_29D937BD8();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v106 = qword_2A17D0CC0;
  v59 = v102;
  v60 = v87;
  sub_29D937EB8();
  (*(v86 + 8))(a6, v60);
  v61 = v84;
  v104 = *(v84 + 16);
  v62 = v101;
  v63 = v85;
  v104(v101, v105, v85);
  v64 = v88;
  v65 = *(v88 + 16);
  v66 = v103;
  v67 = v59;
  v68 = v89;
  v65(v103, v67, v89);
  v104(v12, v62, v63);
  v69 = v90;
  v70 = *(v90 + 48);
  v65(&v12[v70], v66, v68);
  v71 = v91;
  (*(v61 + 32))(v91, v12, v63);
  (*(v64 + 32))(&v71[*(v69 + 48)], &v12[v70], v68);
  v72 = *(v64 + 8);
  v72(v102, v68);
  v73 = *(v61 + 8);
  v73(v105, v63);
  v72(v103, v68);
  return (v73)(v101, v63);
}

uint64_t sub_29D8BF870@<X0>(unint64_t a1@<X3>, uint64_t a2@<X8>)
{
  result = sub_29D937FD8();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_29D8C0830(a1, v12);
    sub_29D69AB60();
    v5 = sub_29D9392F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    result = swift_getKeyPath();
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v11;
    *(a2 + 32) = result;
    *(a2 + 40) = 0x4000000000000000;
  }

  return result;
}

uint64_t sub_29D8BF934@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  sub_29D8C0A0C(0, &qword_2A17B7768, MEMORY[0x29EDB8550], MEMORY[0x29EDB86C8]);
  v41 = v1 - 8;
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v40 = &v35 - v3;
  v4 = sub_29D937EE8();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v39 = sub_29D937F08();
  v36 = *(v39 - 8);
  v6 = v36;
  v8 = MEMORY[0x2A1C7C4A8](v39, v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v35 - v12;
  v14 = sub_29D937BE8();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v22 = &v35 - v21;
  v38 = &v35 - v21;
  sub_29D937BD8();
  sub_29D937ED8();
  v37 = v13;
  sub_29D937EF8();
  v23 = *(v15 + 16);
  v23(v19, v22, v14);
  v24 = *(v6 + 16);
  v25 = v39;
  v24(v10, v13, v39);
  v26 = v40;
  v23(v40, v19, v14);
  v27 = v41;
  v28 = *(v41 + 56);
  v24(&v26[v28], v10, v25);
  v29 = v42;
  (*(v15 + 32))(v42, v26, v14);
  v30 = *(v27 + 56);
  v31 = v36;
  (*(v36 + 32))(v29 + v30, &v26[v28], v25);
  v32 = *(v31 + 8);
  v32(v37, v25);
  v33 = *(v15 + 8);
  v33(v38, v14);
  v32(v10, v25);
  return (v33)(v19, v14);
}

void sub_29D8BFCD0(uint64_t a1)
{
  if (!qword_2A17B7720)
  {
    sub_29D8C0350(255, &qword_2A17B7728, MEMORY[0x29EDB8550], MEMORY[0x29EDB86C8]);
    sub_29D8BFD64();
    v1 = sub_29D937FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7720);
    }
  }
}

unint64_t sub_29D8BFD64()
{
  result = qword_2A17B7730;
  if (!qword_2A17B7730)
  {
    sub_29D8C0350(255, &qword_2A17B7728, MEMORY[0x29EDB8550], MEMORY[0x29EDB86C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7730);
  }

  return result;
}

uint64_t sub_29D8BFE14(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000011, 0x800000029D96C760);
  MEMORY[0x29ED6A240](0xD000000000000028, 0x800000029D96C780);
  return 91;
}

uint64_t sub_29D8BFEDC(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x61526465736F6C63, 0xED0000292865676ELL);
  MEMORY[0x29ED6A240](0xD000000000000028, 0x800000029D96C780);
  return 91;
}

double sub_29D8BFFA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 1.0; v2; i = 1.0)
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v6 = MEMORY[0x29ED6AE30](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 text];
      if (v9)
      {
        v10 = v9;
        sub_29D939D68();

        v11 = sub_29D939E28();

        if (v11 >= 1)
        {
          v12 = [v7 location];
          sub_29D93A868();
          sub_29D936978();
          sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
          if (swift_dynamicCast())
          {
            [v27 doubleValue];
            v14 = v13;

            if (v8 == v2)
            {
              return i;
            }
          }

          else
          {

            v14 = 0.0;
            if (v8 == v2)
            {
              return i;
            }
          }

          for (j = v4 + 5; ; ++j)
          {
            v16 = j - 4;
            if (v5)
            {
              v17 = MEMORY[0x29ED6AE30](j - 4, a1);
            }

            else
            {
              if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v17 = *(a1 + 8 * j);
            }

            v18 = v17;
            v19 = j - 3;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v20 = [v17 text];
            if (v20)
            {
              v21 = v20;
              sub_29D939D68();

              v22 = sub_29D939E28();

              if (v22 > 0)
              {
                v23 = [v18 location];
                sub_29D93A868();
                sub_29D936978();
                if (swift_dynamicCast())
                {
                  [v27 doubleValue];
                  v25 = v24;

                  return v25 - v14;
                }

                else
                {

                  return 0.0 - v14;
                }
              }
            }

            if (v19 == v2)
            {
              return i;
            }
          }

          break;
        }
      }

      ++v4;
      if (v8 == v2)
      {
        return i;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v2 = sub_29D93A928();
  }

  return i;
}

void sub_29D8C02BC(uint64_t a1)
{
  if (!qword_2A17B7740)
  {
    sub_29D8C0350(255, &qword_2A17B7748, sub_29D70ABCC, sub_29D8C03D0);
    sub_29D8C0468();
    v1 = sub_29D937FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7740);
    }
  }
}

void sub_29D8C0350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D937BF8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D8C03D0(uint64_t a1)
{
  if (!qword_2A17B2B48)
  {
    sub_29D937BE8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2B48);
    }
  }
}

unint64_t sub_29D8C0468()
{
  result = qword_2A17B7750;
  if (!qword_2A17B7750)
  {
    sub_29D8C0350(255, &qword_2A17B7748, sub_29D70ABCC, sub_29D8C03D0);
    sub_29D70ACCC(255);
    sub_29D70AD94(255);
    sub_29D8C0A88(&qword_2A17B2B80, sub_29D70AD94, MEMORY[0x29EDB8618]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D937BE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7750);
  }

  return result;
}

void sub_29D8C060C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return;
  }

  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = a1;
      v5 = MEMORY[0x29ED6AE30](0);
      if (__OFSUB__(v1, 1))
      {
        goto LABEL_23;
      }

      v6 = MEMORY[0x29ED6AE30](v1 - 1, v16);
      goto LABEL_8;
    }

    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      break;
    }

    v3 = v1 - 1;
    if (__OFSUB__(v1, 1))
    {
      goto LABEL_21;
    }

    if (v3 >= v2)
    {
      goto LABEL_22;
    }

    v4 = *(a1 + 32 + 8 * v3);
    v5 = *(a1 + 32);
    v6 = v4;
LABEL_8:
    v7 = v6;
    v8 = [v5 location];
    sub_29D93A868();
    sub_29D936978();
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    if (swift_dynamicCast())
    {
      [v17 doubleValue];
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [v7 location];
    sub_29D93A868();
    sub_29D936978();
    if (swift_dynamicCast())
    {
      [v17 doubleValue];
      v13 = v12;

      v14 = v13;
    }

    else
    {

      v14 = 0.0;
    }

    if (v10 > v14)
    {
      __break(1u);
LABEL_16:
      v15 = a1;
      v1 = sub_29D93A928();
      a1 = v15;
      if (v1)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_29D8C0830(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v5 = 0;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x29ED6AE30](v5, a1);
      }

      else
      {
        if (v5 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 location];
      sub_29D93A868();
      sub_29D936978();
      sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
      if (swift_dynamicCast())
      {
        [v17 doubleValue];
        v11 = v10;
      }

      else
      {
        v11 = 0.0;
      }

      v12 = [v7 text];
      if (v12)
      {
        v13 = v12;
        v14 = sub_29D939D68();

        if (vabdd_f64(v11, a2) <= 2.22044605e-16)
        {
          return v14;
        }
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

void sub_29D8C0A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D8C0A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D8C0AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D8C0B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29D8C0BFC(uint64_t a1)
{
  sub_29D9346E8();
  if (v1 <= 0x3F)
  {
    sub_29D8C23F8(319, &qword_2A17B7788, &type metadata for HypertensionNotificationsSettingsViewModel.Header, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29D8C0D98(319, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D8C0CEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D8C0D34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29D8C0D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D8C0E00(uint64_t a1)
{
  sub_29D8C23F8(319, &qword_2A1A22290, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D8C0D98(319, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D8C0ED0(uint64_t a1, char a2)
{
  v3 = sub_29D9346E8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x29EDC1760])
  {
    sub_29D8C23F8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_29D93F680;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    *(v9 + 32) = sub_29D9334A8();
    *(v9 + 40) = v10;
  }

  else
  {
    if (v8 != *MEMORY[0x29EDC1768])
    {
      (*(v4 + 8))(v7, v3);
      return MEMORY[0x29EDCA190];
    }

    sub_29D8C23F8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_29D93F680;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v11 = sub_29D9334A8();
    v13 = v12;

    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
  }

  *(v9 + 48) = sub_29D9334A8();
  *(v9 + 56) = v14;
  return v9;
}

uint64_t sub_29D8C1254@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  v7 = sub_29D9346E8();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v72 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v74 = v65 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = v65 - v17;
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = v65 - v20;
  sub_29D8C0D98(0, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = v65 - v24;
  v26 = sub_29D9349A8();
  v27 = *(v26 - 8);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v31 = v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a2;
  v78 = a3;
  v32 = v29;
  sub_29D76C9EC();
  v73 = a1;
  sub_29D934D08();
  v75 = v27;
  if ((*(v27 + 48))(v25, 1, v32) == 1)
  {
    sub_29D8C1A24(v25);
    return sub_29D8C20E4(v76);
  }

  else
  {
    (*(v75 + 32))(v31, v25, v32);
    sub_29D934958();
    v34 = *(v8 + 104);
    (v34)(v18, *MEMORY[0x29EDC1750], v7);
    v35 = v32;
    v36 = sub_29D9346D8();
    v71 = v8;
    v37 = *(v8 + 8);
    v37(v18, v7);
    v37(v21, v7);
    if (v36)
    {
      sub_29D8C1A9C(v76);
      return (*(v75 + 8))(v31, v35);
    }

    else
    {
      v70 = v35;
      sub_29D934958();
      (v34)(v18, *MEMORY[0x29EDC1758], v7);
      v38 = sub_29D9346D8();
      v37(v18, v7);
      v37(v21, v7);
      if (v38)
      {
        v39 = sub_29D937198();
        sub_29D8C1D6C(v39 & 1, v76);
        return (*(v75 + 8))(v31, v70);
      }

      else
      {
        sub_29D934958();
        sub_29D934958();
        LODWORD(v68) = *MEMORY[0x29EDC1760];
        v34(v18);
        v40 = sub_29D9346D8();
        v37(v18, v7);
        v37(v21, v7);
        if (v40)
        {
          v69 = 1;
        }

        else
        {
          v41 = MEMORY[0x29EDC1768];
          sub_29D934958();
          (v34)(v18, *v41, v7);
          v69 = sub_29D9346D8();
          v37(v18, v7);
          v37(v21, v7);
        }

        v67 = v34;
        sub_29D934958();
        v42 = v68;
        (v34)(v18, v68, v7);
        v43 = sub_29D9346D8();
        v37(v18, v7);
        v37(v21, v7);
        v44 = sub_29D937198();
        v73 = sub_29D8380A0();
        if (v73)
        {
          if (v43)
          {
            v45 = v42;
          }

          else
          {
            v45 = *MEMORY[0x29EDC1768];
          }

          v46 = v72;
          v67(v72, v45, v7);
          v68 = sub_29D8C0ED0(v46, v44 & 1);
          sub_29D9347C8();
          v66 = sub_29D9347A8();
          v67 = v47;
          v37(v46, v7);
        }

        else
        {
          v67 = 0;
          v68 = 0;
          v66 = 0;
        }

        v48 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
        v49 = v76;
        v50 = (v76 + v48[9]);
        if (qword_2A17B0D68 != -1)
        {
          swift_once();
        }

        v72 = qword_2A17D0F10;
        v65[1] = qword_2A17D0F20;
        v65[2] = *algn_2A17D0F18;
        v51 = sub_29D9334A8();
        v53 = v52;
        v54 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
        v55 = *(v54 + 24);
        sub_29D935E88();
        v56 = HKHRHypertensionNotificationsDetailRoomBaseLink();
        sub_29D9336D8();

        v57 = sub_29D9336F8();
        (*(*(v57 - 8) + 56))(v50 + v55, 0, 1, v57);
        *v50 = v51;
        v50[1] = v53;
        v50[2] = v51;
        v50[3] = v53;
        (*(*(v54 - 8) + 56))(v50, 0, 1, v54);
        (*(v71 + 32))(v49, v74, v7);
        *(v49 + v48[5]) = v69 & 1;
        *(v49 + v48[6]) = 1;
        v58 = (v49 + v48[7]);
        v59 = sub_29D9334A8();
        v61 = v60;
        result = (*(v75 + 8))(v31, v70);
        *v58 = v59;
        v58[1] = v61;
        v62 = (v49 + v48[8]);
        v63 = v68;
        *v62 = v73;
        v62[1] = v63;
        v64 = v67;
        v62[2] = v66;
        v62[3] = v64;
      }
    }
  }

  return result;
}

uint64_t sub_29D8C1A24(uint64_t a1)
{
  sub_29D8C0D98(0, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D8C1A9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A17B0D68 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v2 = sub_29D9334A8();
    v4 = v3;
    v5 = sub_29D934968();
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = *(v5 + 16);
    if (!v7)
    {
      v2 = 0;
LABEL_9:

      v4 = 0xE000000000000000;
      break;
    }

    v2 = 0;
    v8 = 0;
    v9 = (v5 + 40);
    while (v8 < *(v6 + 16))
    {
      ++v8;
      v10 = *(v9 - 1);
      v11 = *v9;
      sub_29D935E88();
      sub_29D935E88();
      MEMORY[0x29ED6A240](10, 0xE100000000000000);
      sub_29D935E88();
      MEMORY[0x29ED6A240](v10, v11);

      v9 += 2;
      if (v7 == v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  v12 = *MEMORY[0x29EDC1750];
  v13 = sub_29D9346E8();
  (*(*(v13 - 8) + 104))(a1, v12, v13);
  v14 = sub_29D8C22CC(v2, v4);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v22 = v21[9];
  v23 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
  (*(*(v23 - 8) + 56))(a1 + v22, 1, 1, v23);
  *(a1 + v21[5]) = 0;
  *(a1 + v21[6]) = 0;
  v24 = (a1 + v21[7]);
  result = sub_29D9334A8();
  *v24 = result;
  v24[1] = v26;
  v27 = (a1 + v21[8]);
  *v27 = v14;
  v27[1] = v16;
  v27[2] = v18;
  v27[3] = v20;
  return result;
}

uint64_t sub_29D8C1D6C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9346E8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v11 = *(v5 + 104);
  v35 = v31 - v12;
  v11();
  v36 = sub_29D8380A0();
  if (v36)
  {
    (v11)(v9, *MEMORY[0x29EDC1768], v4);
    v34 = sub_29D8C0ED0(v9, a1 & 1);
    sub_29D9347C8();
    v13 = sub_29D9347A8();
    v32 = v14;
    v33 = v13;
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
  }

  v37 = v4;
  v15 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v16 = v15[9];
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v17 = (a2 + v16);
  v31[0] = qword_2A17D0F20;
  v31[1] = qword_2A17D0F10;
  v18 = sub_29D9334A8();
  v20 = v19;
  v21 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
  v22 = *(v21 + 24);
  sub_29D935E88();
  v23 = HKHRHypertensionNotificationsDetailRoomBaseLink();
  sub_29D9336D8();

  v24 = sub_29D9336F8();
  (*(*(v24 - 8) + 56))(v17 + v22, 0, 1, v24);
  *v17 = v18;
  v17[1] = v20;
  v17[2] = v18;
  v17[3] = v20;
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  (*(v5 + 32))(a2, v35, v37);
  *(a2 + v15[5]) = 0;
  *(a2 + v15[6]) = 1;
  v25 = (a2 + v15[7]);
  result = sub_29D9334A8();
  *v25 = result;
  v25[1] = v27;
  v28 = (a2 + v15[8]);
  v29 = v33;
  v30 = v34;
  *v28 = v36;
  v28[1] = v30;
  v28[2] = v29;
  v28[3] = v32;
  return result;
}

uint64_t sub_29D8C20E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1750];
  v3 = sub_29D9346E8();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v4 = sub_29D9334A8();
  v6 = sub_29D8C22CC(v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v14 = v13[9];
  v15 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  *(a1 + v13[5]) = 0;
  *(a1 + v13[6]) = 0;
  v16 = (a1 + v13[7]);
  result = sub_29D9334A8();
  *v16 = result;
  v16[1] = v18;
  v19 = (a1 + v13[8]);
  *v19 = v6;
  v19[1] = v8;
  v19[2] = v10;
  v19[3] = v12;
  return result;
}

id sub_29D8C22CC(uint64_t a1, uint64_t a2)
{
  result = sub_29D8380A0();
  if (result)
  {
    v3 = result;
    sub_29D8C23F8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_29D93DDB0;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    *(v4 + 32) = sub_29D9334A8();
    *(v4 + 40) = v5;
    sub_29D935E88();
    return v3;
  }

  return result;
}

void sub_29D8C23F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D8C2448(uint64_t a1)
{
  v2 = sub_29D934178();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C2D8C(0);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934358();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC(0);
  v15 = MEMORY[0x2A1C7C4A8](v13, v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v41 - v19;
  sub_29D934188();
  sub_29D693E2C(v50, v50[3]);
  v21 = sub_29D934118();
  v22 = *MEMORY[0x29EDBA6B0];
  v48 = a1;
  sub_29D9341D8();
  sub_29D8C3B00(v20, v17, sub_29D69BECC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29D7CA238(v17);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    (*(v9 + 32))(v12, v17, v8);
    v23 = sub_29D934348();
    v24 = v25;
    (*(v9 + 8))(v12, v8);
  }

  v26 = sub_29D8FC9F4(v22, v23, v24);

  if (v26)
  {
    v27 = sub_29D6B74EC();
  }

  else
  {
    sub_29D9371A8();
    v28 = v42;
    sub_29D938348();
    sub_29D8C3B68(&qword_2A17B1B60, sub_29D8C2D8C, MEMORY[0x29EDB8AC8]);
    v29 = v44;
    v27 = sub_29D938418();

    (*(v43 + 8))(v28, v29);
  }

  sub_29D7CA238(v20);
  sub_29D69417C(v50);
  if (qword_2A1A23BA8 != -1)
  {
    swift_once();
  }

  v30 = v47;
  v31 = sub_29D69C6C0(v47, qword_2A1A2BE20);
  v32 = OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_domain;
  v33 = v46;
  v34 = *(v46 + 16);
  v35 = v49;
  v34(v49 + OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_domain, v31, v30);
  v36 = v45;
  v34(v45, v35 + v32, v30);
  v37 = v48;
  v38 = sub_29D8C2DE8(v48, v36, v27);

  v39 = sub_29D9341E8();
  (*(*(v39 - 8) + 8))(v37, v39);
  (*(v33 + 8))(v36, v30);
  *(v35 + OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_publisher) = v38;
  return v35;
}

uint64_t sub_29D8C2938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a3;
  v25 = a1;
  sub_29D6C36D8(0);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36A4(0);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v12 = sub_29D934178();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D9341E8();
  MEMORY[0x2A1C7C4A8](v17, v18);
  (*(v20 + 16))(&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (*(v13 + 16))(v16, v24, v12);
  sub_29D8C3B00(v25, v9, sub_29D6C36D8);
  sub_29D938338();
  v21 = sub_29D934228();
  v22 = MEMORY[0x29EDC38C8];
  a4[3] = v21;
  a4[4] = v22;
  sub_29D693F78(a4);
  sub_29D8C3B68(&qword_2A1A22360, sub_29D6C36A4, MEMORY[0x29EDB8AB8]);
  return sub_29D934218();
}

uint64_t sub_29D8C2BFC()
{
  v1 = OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenRescindedGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A23890;
  if (!qword_2A1A23890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8C2D10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D8C2DC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D7C3634();
  *a1 = result;
  return result;
}

uint64_t sub_29D8C2DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v60 = a1;
  sub_29D8C3648(0);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D934178();
  v70 = *(v7 - 8);
  v71 = v7;
  v72 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v69 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29D9341E8();
  v63 = *(v67 - 8);
  v68 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v67, v10);
  v66 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C37BC(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C3858(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C38EC(0);
  v25 = *(v24 - 8);
  v61 = v24;
  v62 = v25;
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C36DC(0);
  v74 = *(v29 - 8);
  v75 = v29;
  MEMORY[0x2A1C7C4A8](v29, v30);
  v64 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D9341B8();
  v76 = a3;
  sub_29D6B7D8C(0);
  v65 = MEMORY[0x29EDB8A00];
  sub_29D8C3B68(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D938468();
  v33 = MEMORY[0x29EDB8908];
  v59 = MEMORY[0x29EDB8908];
  sub_29D8C3B68(&qword_2A1A225F8, sub_29D8C37BC, MEMORY[0x29EDB8908]);
  sub_29D7C3F08();
  sub_29D938558();
  (*(v14 + 8))(v17, v13);
  *(swift_allocObject() + 16) = v32;
  sub_29D6C36D8(0);
  sub_29D8C3B68(&qword_2A1A22660, sub_29D8C3858, MEMORY[0x29EDB88F0]);
  v34 = v32;
  sub_29D938468();

  (*(v20 + 8))(v23, v19);
  sub_29D8C3B68(&qword_2A1A22548, sub_29D8C38EC, v33);
  v35 = v61;
  v36 = sub_29D938418();
  v58 = v36;

  (*(v62 + 8))(v28, v35);
  v76 = v36;
  v37 = v63;
  v39 = v66;
  v38 = v67;
  (*(v63 + 16))(v66, v60, v67);
  v41 = v69;
  v40 = v70;
  v42 = v71;
  (*(v70 + 16))(v69, v73, v71);
  v43 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v44 = v40;
  v45 = (v68 + *(v40 + 80) + v43) & ~*(v40 + 80);
  v46 = swift_allocObject();
  (*(v37 + 32))(v46 + v43, v39, v38);
  v47 = v64;
  (*(v44 + 32))(v46 + v45, v41, v42);
  sub_29D8C3788(0);
  sub_29D6CE0BC();
  sub_29D8C3B68(&qword_2A1A22438, sub_29D8C3788, v65);
  sub_29D938468();

  LOBYTE(v37) = sub_29D934198();
  sub_29D8C3B68(&qword_2A1A22630, sub_29D8C36DC, v59);
  if (v37)
  {
    v48 = v75;
    v49 = sub_29D938418();
  }

  else
  {
    v50 = v55;
    v48 = v75;
    sub_29D938498();
    sub_29D8C3B68(&qword_2A1A22498, sub_29D8C3648, MEMORY[0x29EDB8940]);
    v51 = v57;
    v49 = sub_29D938418();
    (*(v56 + 8))(v50, v51);
  }

  (*(v74 + 8))(v47, v48);
  v76 = v49;
  sub_29D6C320C(0);
  sub_29D8C3B68(&qword_2A1A24AE0, sub_29D6C320C, MEMORY[0x29EDB8A00]);
  v52 = sub_29D938418();

  return v52;
}

void sub_29D8C3648(uint64_t a1)
{
  if (!qword_2A1A22490)
  {
    sub_29D8C36DC(255);
    sub_29D8C3B68(&qword_2A1A22630, sub_29D8C36DC, MEMORY[0x29EDB8908]);
    v1 = sub_29D938128();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22490);
    }
  }
}

void sub_29D8C36DC(uint64_t a1)
{
  if (!qword_2A1A22628)
  {
    sub_29D8C3788(255);
    sub_29D6CE0BC();
    sub_29D8C3B68(&qword_2A1A22438, sub_29D8C3788, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22628);
    }
  }
}

void sub_29D8C37BC(uint64_t a1)
{
  if (!qword_2A1A225F0)
  {
    sub_29D6B7D8C(255);
    sub_29D8C3B68(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A225F0);
    }
  }
}

void sub_29D8C3858(uint64_t a1)
{
  if (!qword_2A1A22658)
  {
    sub_29D8C37BC(255);
    sub_29D8C3B68(&qword_2A1A225F8, sub_29D8C37BC, MEMORY[0x29EDB8908]);
    v1 = sub_29D9380D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22658);
    }
  }
}

void sub_29D8C38EC(uint64_t a1)
{
  if (!qword_2A1A22540)
  {
    sub_29D8C3858(255);
    sub_29D6C36D8(255);
    sub_29D8C3B68(&qword_2A1A22660, sub_29D8C3858, MEMORY[0x29EDB88F0]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22540);
    }
  }
}

uint64_t sub_29D8C39A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_29D934178() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_29D8C2938(a1, v2 + v6, v9, a2);
}

void sub_29D8C3A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D8C3B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8C3B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D8C3BB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29D8C5D20();
    v2 = sub_29D93ABA8();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  sub_29D935E88();
  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_29D6945AC(*(a1 + 56) + 40 * v12, v30);
        *&v29 = v14;
        *(&v29 + 1) = v15;
        v26[2] = v29;
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v16 = v29;
        sub_29D6959E8(v27, v22);
        sub_29D745508();
        sub_29D935E88();
        swift_dynamicCast();
        sub_29D6940E0(&v23, v25);
        sub_29D6940E0(v25, v26);
        sub_29D6940E0(v26, &v24);
        v17 = sub_29D6907F0(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          sub_29D69417C(v9);
          sub_29D6940E0(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_29D6940E0(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_29D8C3EF0(void *a1)
{
  v3 = [a1 healthDataSource];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 environmentDataSource];
    v6 = sub_29D8C4FC0(v4, v5);
    if (v1)
    {
      sub_29D936978();
    }

    else
    {
      v15 = v6;

      sub_29D8C3BB0(v15);
      sub_29D936978();
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = sub_29D937878();
    v9 = sub_29D93A298();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_29D93AF08();
      v14 = sub_29D6C2364(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_29D677000, v8, v9, "[%s] Tried to create a payload with a dataSource containing nil healthDataSource", v10, 0xCu);
      sub_29D69417C(v11);
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    sub_29D73F010(MEMORY[0x29EDCA190]);
  }
}

uint64_t sub_29D8C41F0()
{

  return swift_deallocClassInstance();
}

double sub_29D8C424C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_29D6907F0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29D693138();
      v10 = v12;
    }

    sub_29D6959E8((*(v10 + 56) + 40 * v8), a3);
    sub_29D9184D8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_29D8C42F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_29D6907F0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29D6932D4();
      v10 = v12;
    }

    sub_29D6940E0((*(v10 + 56) + 32 * v8), a3);
    sub_29D918694(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_29D8C439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x29EDC99B0];
  v30 = MEMORY[0x29EDC99B0];
  v31 = MEMORY[0x29EDC99D8];
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_29D6907F0(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      sub_29D69417C(v20);
      return sub_29D6959E8(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v16, a5 & 1);
  v22 = sub_29D6907F0(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = sub_29D693DDC(&v29, v10);
  MEMORY[0x2A1C7C4A8](v24, v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_29D8C4DC8(v13, a3, a4, *v26, v26[1], v19);
  sub_29D935E88();
  return sub_29D69417C(&v29);
}

uint64_t sub_29D8C458C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x29EDC9BA8];
  v25 = MEMORY[0x29EDC9BC8];
  v9 = *a5;
  v11 = sub_29D6907F0(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_29D69417C(v18);
      return sub_29D6959E8(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v14, a4 & 1);
  v20 = sub_29D6907F0(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_29D693DDC(&v23, MEMORY[0x29EDC9BA8]);
  sub_29D8C4D34(v11, a2, a3, *v22, v17);
  sub_29D935E88();
  return sub_29D69417C(&v23);
}

uint64_t sub_29D8C46F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_29D6B73CC();
  v30 = v10;
  v31 = sub_29D6B7418();
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_29D6907F0(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      sub_29D69417C(v20);
      return sub_29D6959E8(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v16, a4 & 1);
  v22 = sub_29D6907F0(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = sub_29D693DDC(&v29, v10);
  MEMORY[0x2A1C7C4A8](v24, v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_29D8C4C84(v13, a2, a3, *v26, v19);
  sub_29D935E88();
  return sub_29D69417C(&v29);
}

uint64_t sub_29D8C48EC(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x29EDC9A98];
  v25 = MEMORY[0x29EDC9AB0];
  v9 = *a5;
  v11 = sub_29D6907F0(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_29D69417C(v18);
      return sub_29D6959E8(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v14, a4 & 1);
  v20 = sub_29D6907F0(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_29D693DDC(&v23, MEMORY[0x29EDC9A98]);
  sub_29D8C4E58(v11, a2, a3, *v22, v17);
  sub_29D935E88();
  return sub_29D69417C(&v23);
}

uint64_t sub_29D8C4A50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v14 = sub_29D693F78(&v33);
  (*(*(a6 - 8) + 32))(v14, a1, a6);
  v15 = *a5;
  v17 = sub_29D6907F0(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      sub_29D69417C(v24);
      return sub_29D6959E8(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v20, a4 & 1);
  v26 = sub_29D6907F0(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = sub_29D693DDC(&v33, v34);
  MEMORY[0x2A1C7C4A8](v28, v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_29D8C4EE8(v17, a2, a3, v30, v23, a6, a7);
  sub_29D935E88();
  return sub_29D69417C(&v33);
}

uint64_t sub_29D8C4C84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_29D6B73CC();
  v17 = sub_29D6B7418();
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_29D6959E8(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_29D8C4D34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x29EDC9BA8];
  v13 = MEMORY[0x29EDC9BC8];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29D6959E8(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_29D8C4DC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x29EDC99B0];
  v14 = MEMORY[0x29EDC99D8];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_29D6959E8(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_29D8C4E58(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x29EDC9A98];
  v13 = MEMORY[0x29EDC9AB0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29D6959E8(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_29D8C4EE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_29D693F78(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_29D6959E8(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_29D8C4FC0(uint64_t a1, void *a2)
{
  v106 = a1;
  v3 = v2;
  v5 = *v2;
  v6 = MEMORY[0x29EDCA198];
  v105 = v5;
  v113 = MEMORY[0x29EDCA198];
  v7 = sub_29D939D68();
  v9 = v8;
  v10 = [a2 activePairedDeviceProductType];
  v11 = MEMORY[0x29EDC99D8];
  if (v10)
  {
    v12 = v10;
    v104 = v7;
    v13 = MEMORY[0x29EDC99B0];
    v14 = sub_29D939D68();
    v16 = v15;

    v111 = v13;
    v112 = v11;
    *&v110 = v14;
    *(&v110 + 1) = v16;
    sub_29D6959E8(&v110, v108);
    LOBYTE(v14) = swift_isUniquelyReferenced_nonNull_native();
    v107 = v6;
    v17 = sub_29D693DDC(v108, v109);
    MEMORY[0x2A1C7C4A8](v17, v17);
    v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19);
    sub_29D8C4A50(v19, v104, v9, v14, &v107, v13, v11);

    sub_29D69417C(v108);
    v113 = v107;
  }

  else
  {
    sub_29D8C424C(v7, v9, &v110);

    sub_29D745454(&v110);
  }

  v104 = sub_29D939D68();
  v22 = v21;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v23 = sub_29D937898();
  sub_29D69C6C0(v23, qword_2A1A2C008);
  v24 = sub_29D93A2F8();
  v111 = sub_29D6B73CC();
  v112 = sub_29D6B7418();
  *&v110 = v24;
  sub_29D6959E8(&v110, v108);
  v25 = v113;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v107 = v25;
  v27 = sub_29D693DDC(v108, v109);
  MEMORY[0x2A1C7C4A8](v27, v27);
  v29 = (&v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  sub_29D8C46F4(*v29, v104, v22, isUniquelyReferenced_nonNull_native, &v107);

  sub_29D69417C(v108);
  v31 = v107;
  v113 = v107;
  v32 = sub_29D939D68();
  v34 = v33;
  v35 = sub_29D93A308();
  v36 = MEMORY[0x29EDC99B0];
  v111 = MEMORY[0x29EDC99B0];
  v37 = MEMORY[0x29EDC99D8];
  v112 = MEMORY[0x29EDC99D8];
  *&v110 = v35;
  *(&v110 + 1) = v38;
  sub_29D6959E8(&v110, v108);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v31;
  v40 = sub_29D693DDC(v108, v109);
  MEMORY[0x2A1C7C4A8](v40, v40);
  v42 = (&v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  sub_29D8C439C(*v42, v42[1], v32, v34, v39, &v107);

  sub_29D69417C(v108);
  v44 = v107;
  v45 = *(v3 + 16);
  v111 = MEMORY[0x29EDC9A98];
  v112 = MEMORY[0x29EDC9AB0];
  LOBYTE(v110) = v45;
  sub_29D6959E8(&v110, v108);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v44;
  v47 = sub_29D693DDC(v108, v109);
  sub_29D8C48EC(*v47, 0x72616F626E4F7369, 0xEE004E5448646564, v46, &v107);
  sub_29D69417C(v108);
  v48 = v107;
  v113 = v107;
  v49 = v3[4];
  if (v49)
  {
    v50 = v3[3];
    v111 = v36;
    v112 = v37;
    *&v110 = v50;
    *(&v110 + 1) = v49;
    sub_29D6959E8(&v110, v108);
    sub_29D935E88();
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v48;
    v52 = sub_29D693DDC(v108, v109);
    MEMORY[0x2A1C7C4A8](v52, v52);
    v54 = &v103 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v54);
    sub_29D8C4A50(v54, 0x546C616E72756F6ALL, 0xEB00000000657079, v51, &v107, v36, v37);
    sub_29D69417C(v108);
    v113 = v107;
  }

  else
  {
    sub_29D8C424C(0x546C616E72756F6ALL, 0xEB00000000657079, &v110);
    sub_29D745454(&v110);
  }

  v56 = MEMORY[0x29EDC9BA8];
  v57 = MEMORY[0x29EDC9BC8];
  if (v3[6])
  {
    sub_29D8C424C(0xD00000000000001ALL, 0x800000029D96CA30, &v110);
    sub_29D745454(&v110);
  }

  else
  {
    v58 = v3[5];
    v111 = MEMORY[0x29EDC9BA8];
    v112 = MEMORY[0x29EDC9BC8];
    *&v110 = v58;
    sub_29D6959E8(&v110, v108);
    v59 = v113;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v59;
    v61 = sub_29D693DDC(v108, v109);
    MEMORY[0x2A1C7C4A8](v61, v61);
    v63 = &v103 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v63);
    sub_29D8C4A50(v63, 0xD00000000000001ALL, 0x800000029D96CA30, v60, &v107, v56, v57);
    sub_29D69417C(v108);
    v113 = v107;
  }

  if (v3[8])
  {
    sub_29D8C424C(0xD000000000000018, 0x800000029D96CA50, &v110);
    sub_29D745454(&v110);
    v65 = v113;
  }

  else
  {
    v66 = v3[7];
    v111 = v56;
    v112 = v57;
    *&v110 = v66;
    sub_29D6959E8(&v110, v108);
    v67 = v113;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v67;
    v69 = sub_29D693DDC(v108, v109);
    MEMORY[0x2A1C7C4A8](v69, v69);
    v71 = &v103 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v71);
    sub_29D8C4A50(v71, 0xD000000000000018, 0x800000029D96CA50, v68, &v107, v56, v57);
    sub_29D69417C(v108);
    v65 = v107;
  }

  v73 = v3[9];
  v111 = v56;
  v112 = v57;
  *&v110 = v73;
  sub_29D6959E8(&v110, v108);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v65;
  v75 = sub_29D693DDC(v108, v109);
  sub_29D8C458C(*v75, 0xD000000000000023, 0x800000029D95B510, v74, &v107);
  sub_29D69417C(v108);
  v76 = v107;
  v113 = v107;
  if (v3[11])
  {
    sub_29D8C424C(0xD000000000000019, 0x800000029D96CA70, &v110);
    sub_29D745454(&v110);
  }

  else
  {
    v77 = v3[10];
    v111 = v56;
    v112 = v57;
    *&v110 = v77;
    sub_29D6959E8(&v110, v108);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v76;
    v79 = sub_29D693DDC(v108, v109);
    MEMORY[0x2A1C7C4A8](v79, v79);
    v81 = &v103 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v81);
    sub_29D8C4A50(v81, 0xD000000000000019, 0x800000029D96CA70, v78, &v107, v56, v57);
    sub_29D69417C(v108);
    v113 = v107;
  }

  v83 = MEMORY[0x29EDC99D8];
  v84 = *(v3 + 89);
  v85 = MEMORY[0x29EDC99B0];
  if (v84 > 2)
  {
    if (v84 == 3)
    {
      v86 = 0xE700000000000000;
      v87 = 0x656C69666F7270;
    }

    else if (v84 == 4)
    {
      v86 = 0xEC0000006E6F6974;
      v87 = 0x6163696669746F6ELL;
    }

    else
    {
      v86 = 0xE700000000000000;
      v87 = 0x6E776F6E6B6E75;
    }
  }

  else if (*(v3 + 89))
  {
    if (v84 == 1)
    {
      v86 = 0xE600000000000000;
      v87 = 0x686372616573;
    }

    else
    {
      v86 = 0xE700000000000000;
      v87 = 0x676E6972616873;
    }
  }

  else
  {
    v86 = 0xE700000000000000;
    v87 = 0x7972616D6D7573;
  }

  v111 = MEMORY[0x29EDC99B0];
  v112 = MEMORY[0x29EDC99D8];
  *&v110 = v87;
  *(&v110 + 1) = v86;
  sub_29D6959E8(&v110, v108);
  v88 = v113;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v88;
  v90 = sub_29D693DDC(v108, v109);
  MEMORY[0x2A1C7C4A8](v90, v90);
  v92 = (&v103 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v93 + 16))(v92);
  sub_29D8C439C(*v92, v92[1], 0x6E616E65766F7270, 0xEA00000000006563, v89, &v107);
  sub_29D69417C(v108);
  v94 = v107;
  v95 = sub_29D79D70C(*(v3 + 90));
  v111 = v85;
  v112 = v83;
  *&v110 = v95;
  *(&v110 + 1) = v96;
  sub_29D6959E8(&v110, v108);
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v94;
  v98 = sub_29D693DDC(v108, v109);
  MEMORY[0x2A1C7C4A8](v98, v98);
  v100 = (&v103 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v101 + 16))(v100);
  sub_29D8C439C(*v100, v100[1], 1701869940, 0xE400000000000000, v97, &v107);
  sub_29D69417C(v108);
  return v107;
}

void sub_29D8C5D20()
{
  if (!qword_2A17B1128)
  {
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1128);
    }
  }
}

id sub_29D8C5D84(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v10 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v11 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v12 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *&v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint] = 0;
  v13 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_urlDestination;
  v14 = sub_29D9336F8();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  (*(*(v15 - 8) + 56))(&v4[v13], 0, 2, v15);
  *&v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore] = 0;
  v16 = &v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item];
  v17 = type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v20.receiver = v4;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29D8C6528();
  sub_29D8C6B3C();

  return v18;
}

uint64_t sub_29D8C5FCC()
{
  v1 = v0;
  v2 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D8C8C28(0, &qword_2A17B7808, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v45[-v8];
  v10 = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item;
  swift_beginAccess();
  sub_29D8C8DB8(v1 + v15, &v46, &qword_2A17B1830, sub_29D69F188);
  if (!v48)
  {
    goto LABEL_18;
  }

  sub_29D69F188();
  v16 = swift_dynamicCast();
  (*(v11 + 56))(v9, v16 ^ 1u, 1, v10);
  v17 = *(v11 + 48);
  v11 += 48;
  if (v17(v9, 1, v10) == 1)
  {
LABEL_19:
    sub_29D8C8E24(v9, &qword_2A17B7808, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_29D93AA18();
    swift_getObjectType();
    v42 = sub_29D93AF08();
    v44 = v43;

    v46 = v42;
    v47 = v44;
    MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D96CBD0);
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  sub_29D8C8E80(v9, v14);
  v18 = v14[2];
  v19 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore);
  *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore) = v18;
  v20 = v18;

  v9 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel);
  v21 = sub_29D939D28();
  v22 = &off_29F357000;
  [v9 setText_];

  v23 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel);
  if (v14[8])
  {
    v24 = sub_29D939D28();
  }

  else
  {
    v24 = 0;
  }

  [v23 setText_];

  v25 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView);
  v26 = [v9 font];
  if (!v26)
  {
    __break(1u);
LABEL_18:
    sub_29D8C8E24(&v46, &qword_2A17B1830, sub_29D69F188);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_19;
  }

  v27 = v26;
  v28 = sub_29D713B00(v26);

  [v25 setImage_];
  v29 = [v25 image];
  v30 = v29;
  if (v29)
  {
  }

  [v25 setHidden_];
  v31 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  v32 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel);
  v33 = v14[13];
  v34 = v32;
  if (v33)
  {
    v22 = &off_29F357000;
    v33 = sub_29D939D28();
  }

  [v32 v22[176]];

  sub_29D8C8C7C(v14 + *(v10 + 52), v5);
  v35 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_urlDestination;
  swift_beginAccess();
  sub_29D8C8EE4(v5, v1 + v35);
  swift_endAccess();
  v36 = [*(v1 + v31) text];
  v37 = v36;
  if (v36)
  {
  }

  v38 = v37 == 0;
  v39 = v37 != 0;
  v40 = v38;
  [*(v1 + v31) setHidden_];
  sub_29D8C814C(v39);
  sub_29D8C8504([v25 isHidden] ^ 1);
  return sub_29D8C9114(v14, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
}

void sub_29D8C6528()
{
  v1 = v0;
  v2 = sub_29D9350C8();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C8C28(0, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v43 = &v38 - v10;
  v11 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v41 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView];
  v13 = v41;
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  [*&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [v0 contentView];
  [v15 addSubview_];

  v16 = [v1 contentView];
  [v16 addSubview_];

  v17 = [v1 contentView];
  [v17 addSubview_];

  v18 = [v1 contentView];
  [v18 addSubview_];

  [v11 setAdjustsFontForContentSizeCategory_];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v19 = sub_29D93A658();
  [v11 setFont_];

  [v11 setNumberOfLines_];
  [v12 &selRef_childViewControllers];
  v20 = sub_29D93A658();
  [v12 setFont_];

  v21 = objc_opt_self();
  v22 = [v21 secondaryLabelColor];
  [v12 setTextColor_];

  v23 = v42;
  [v12 setNumberOfLines_];
  LODWORD(v24) = 1148846080;
  v25 = v43;
  [v41 setContentCompressionResistancePriority:0 forAxis:v24];
  [*&v1[v14] setAdjustsFontForContentSizeCategory_];
  v26 = *&v1[v14];
  v27 = sub_29D93A658();
  [v26 setFont_];

  v28 = *&v1[v14];
  v29 = [v21 systemBlueColor];
  [v28 setTextColor_];

  [*&v1[v14] setUserInteractionEnabled_];
  v30 = [objc_allocWithZone(MEMORY[0x29EDC7D28]) initWithTarget:v1 action:sel_linkTapped];
  [*&v1[v14] addGestureRecognizer_];
  sub_29D9379D8();
  v31 = sub_29D9379E8();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v25, 0, 1, v31);
  v33 = MEMORY[0x29ED6A980](v25);
  MEMORY[0x29ED6A970](v33);
  if ((*(v32 + 48))(v23, 1, v31))
  {
    v34 = MEMORY[0x29EDC77B8];
    sub_29D8C8DB8(v23, v25, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
    MEMORY[0x29ED6A980](v25);

    sub_29D8C8E24(v23, &qword_2A17B1848, v34);
  }

  else
  {
    v36 = v38;
    v35 = v39;
    v37 = v40;
    (*(v39 + 104))(v38, *MEMORY[0x29EDC1D60], v40);
    sub_29D9350A8();
    (*(v35 + 8))(v36, v37);
    sub_29D9379B8();
    MEMORY[0x29ED6A980](v23);
  }
}

void sub_29D8C6B3C()
{
  v1 = [v0 contentView];
  v2 = [v1 bottomAnchor];

  v3 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  v4 = [*(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel) bottomAnchor];
  v5 = [v2 constraintEqualToAnchor:v4 constant:15.0];

  v6 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint);
  v62 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint;
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint) = v5;

  v7 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel);
  v8 = [v7 leadingAnchor];
  v9 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView);
  v10 = [v9 trailingAnchor];
  v11 = [v8 &selRef_dataProvider + 6];

  v12 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint;
  v13 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint);
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint) = v11;

  v61 = v3;
  v14 = [*(v0 + v3) topAnchor];
  v63 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel);
  v15 = [v63 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  v17 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint);
  v64 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint;
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint) = v16;

  sub_29D6A0C58();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D946510;
  v19 = [v9 leadingAnchor];
  v20 = [v0 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:16.0];
  *(v18 + 32) = v22;
  v23 = [v9 firstBaselineAnchor];
  v24 = [v7 firstBaselineAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v18 + 40) = v25;
  v26 = [v7 topAnchor];
  v27 = [v0 &selRef_dateForKey_completion_];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:15.0];
  *(v18 + 48) = v29;
  v30 = *(v0 + v12);
  if (!v30)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v18 + 56) = v30;
  v31 = v30;
  v32 = [v7 trailingAnchor];
  v33 = [v0 &selRef_dateForKey_completion_];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintLessThanOrEqualToAnchor:v34 constant:-16.0];
  *(v18 + 64) = v35;
  v36 = [v63 &selRef_irregularHeartRhythmFooterLinkTitle];
  v37 = [v7 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v18 + 72) = v38;
  v39 = [v63 leadingAnchor];
  v40 = [v0 &selRef_dateForKey_completion_];
  v41 = [v40 leadingAnchor];

  v42 = [v39 constraintEqualToAnchor:v41 constant:16.0];
  *(v18 + 80) = v42;
  v43 = [v63 trailingAnchor];
  v44 = [v0 &selRef_dateForKey_completion_];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45 constant:-16.0];
  *(v18 + 88) = v46;
  v47 = *&v64[v0];
  if (!v47)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v18 + 96) = v47;
  v48 = *(v0 + v61);
  v49 = v47;
  v50 = [v48 leadingAnchor];
  v51 = [v0 &selRef_dateForKey_completion_];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52 constant:16.0];
  *(v18 + 104) = v53;
  v54 = [*(v0 + v61) trailingAnchor];
  v55 = [v0 &selRef_dateForKey_completion_];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56 constant:-16.0];
  *(v18 + 112) = v57;
  v58 = *(v0 + v62);
  if (!v58)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v59 = objc_opt_self();
  *(v18 + 120) = v58;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v60 = v58;
  v65 = sub_29D939F18();

  [v59 activateConstraints_];
}

void sub_29D8C7220()
{
  ObjectType = swift_getObjectType();
  v117 = sub_29D934C58();
  v112 = *(v117 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v117, v1);
  v114 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v111 = &v103 - v5;
  sub_29D8C8C28(0, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v109 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v103 - v11;
  v13 = sub_29D9371A8();
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_29D9346E8();
  v118 = *(v115 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v115, v17);
  v113 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v116 = &v103 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v26 = &v103 - v25;
  v28 = MEMORY[0x2A1C7C4A8](v24, v27);
  v108 = &v103 - v29;
  MEMORY[0x2A1C7C4A8](v28, v30);
  v119 = &v103 - v31;
  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v33 = v32;
  v34 = *(v32 - 8);
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v38 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36, v39);
  v41 = &v103 - v40;
  v42 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  MEMORY[0x2A1C7C4A8](v42 - 8, v43);
  v45 = &v103 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_urlDestination;
  swift_beginAccess();
  sub_29D8C8C7C(&v0[v46], v45);
  v47 = (*(v34 + 48))(v45, 2, v33);
  if (v47)
  {
    if (v47 == 1)
    {
      v48 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore];
      if (v48)
      {
        v49 = *MEMORY[0x29EDBA6F0];
        v50 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
        v103 = v48;
        v51 = [v50 initWithFeatureIdentifier:v49 healthStore:?];
        v52 = *MEMORY[0x29EDC1768];
        v53 = *(v118 + 104);
        v54 = v115;
        v53(v119, v52, v115);
        sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
        v104 = v51;
        sub_29D937278();
        v105 = v0;
        ObjectType = v53;
        v120 = sub_29D67BF28;
        v121 = 0;
        sub_29D76C9EC();
        sub_29D934D08();
        v65 = v109;
        sub_29D8C8DB8(v12, v109, &qword_2A1A24720, MEMORY[0x29EDC1948]);
        v66 = sub_29D9349A8();
        v67 = *(v66 - 8);
        v68 = (*(v67 + 48))(v65, 1, v66);
        if (v68 == 1)
        {
          v69 = v65;
          v70 = MEMORY[0x29EDC1948];
          sub_29D8C8E24(v12, &qword_2A1A24720, MEMORY[0x29EDC1948]);
          (*(v106 + 8))(v16, v107);
          v71 = v118;
          v72 = v119;
          (*(v118 + 8))(v119, v54);
          sub_29D8C8E24(v69, &qword_2A1A24720, v70);
          v73 = v108;
          ObjectType(v108, v52, v54);
          (*(v71 + 32))(v72, v73, v54);
        }

        else
        {
          sub_29D934958();
          sub_29D8C8E24(v12, &qword_2A1A24720, MEMORY[0x29EDC1948]);
          (*(v106 + 8))(v16, v107);
          v74 = v118;
          v72 = v119;
          (*(v118 + 8))(v119, v54);
          (*(v67 + 8))(v65, v66);
          v75 = *(v74 + 32);
          v76 = v108;
          v75(v108, v26, v54);
          v75(v72, v76, v54);
        }

        v77 = v117;
        v78 = v54;
        v80 = v111;
        v79 = v112;
        v81 = v116;
        v82 = v118;
        v83 = *(v118 + 16);
        v83(v116, v72, v78);
        (*(v79 + 104))(v80, *MEMORY[0x29EDC1BF0], v77);
        v84 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsViewController(0));
        v85 = v77;
        v86 = v113;
        v83(v113, v81, v78);
        v87 = v114;
        (*(v79 + 16))(v114, v80, v85);
        v88 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(0));
        v62 = v103;
        v89 = sub_29D7BB5B4(v86, v87, v62);
        sub_29D8C8CE0();
        v90 = v89;
        v91 = sub_29D9365D8();
        v92 = qword_2A17B0D68;
        v93 = v91;
        if (v92 != -1)
        {
          swift_once();
        }

        sub_29D9334A8();
        v94 = sub_29D939D28();

        [v93 setTitle_];

        static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243F798);
        swift_arrayDestroy();
        v95 = sub_29D939D28();

        [v93 setAccessibilityIdentifier_];

        (*(v79 + 8))(v80, v117);
        v96 = *(v82 + 8);
        v96(v116, v78);
        v97 = [objc_allocWithZone(MEMORY[0x29EDC7B80]) initWithRootViewController_];

        v98 = [v105 viewController];
        if (v98)
        {
          v99 = v98;
          [v98 presentViewController:v97 animated:1 completion:0];

          v96(v119, v78);
          return;
        }

        v96(v119, v78);

        goto LABEL_21;
      }
    }

    else
    {
      v61 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore];
      if (v61)
      {
        v62 = v61;
        v63 = [v0 viewController];
        if (v63)
        {
          v64 = v63;
          sub_29D73ADB0(v63, v62);

          return;
        }

LABEL_21:

        return;
      }
    }

    v120 = 0;
    v121 = 0xE000000000000000;
    sub_29D93AA18();
    swift_getObjectType();
    v100 = sub_29D93AF08();
    v102 = v101;

    v120 = v100;
    v121 = v102;
    MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D96CBD0);
    sub_29D93AB28();
    __break(1u);
  }

  else
  {
    sub_29D8C8D38(v45, v41);
    v55 = [objc_opt_self() defaultWorkspace];
    if (v55)
    {
      v56 = v55;
      sub_29D8C8DB8(v41, v38, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
      v57 = sub_29D9336F8();
      v58 = *(v57 - 8);
      v59 = 0;
      if ((*(v58 + 48))(v38, 1, v57) != 1)
      {
        v59 = sub_29D9336B8();
        (*(v58 + 8))(v38, v57);
      }

      sub_29D73F010(MEMORY[0x29EDCA190]);
      v60 = sub_29D939C58();

      [v56 openSensitiveURL:v59 withOptions:v60];
    }

    sub_29D8C8E24(v41, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  }
}

void sub_29D8C814C(char a1)
{
  sub_29D6A0C58();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D941B10;
  v4 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint;
  v5 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint];
  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v3;
  *(v3 + 32) = v5;
  v7 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint;
  v8 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint];
  if (!v8)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = objc_opt_self();
  *(v6 + 40) = v8;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v10 = v5;
  v11 = v8;
  v12 = sub_29D939F18();

  [v9 deactivateConstraints_];

  if (a1)
  {
    v13 = [v1 contentView];
    v14 = [v13 bottomAnchor];

    v15 = [*&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel] bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:15.0];
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel];
    v18 = [v17 text];
    if (v18)
    {
    }

    else
    {
      v17 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel];
    }

    v15 = v17;
    v19 = [v1 contentView];
    v20 = [v19 bottomAnchor];

    v14 = [v15 &selRef_name + 5];
    v16 = [v20 constraintEqualToAnchor:v14 constant:15.0];
  }

  v21 = *&v1[v4];
  *&v1[v4] = v16;

  v22 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel];
  v23 = [v22 text];
  if (v23)
  {
  }

  else
  {
    v22 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel];
  }

  v24 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel];
  v25 = v22;
  v26 = [v24 topAnchor];
  v27 = [v25 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  v29 = *&v1[v7];
  *&v1[v7] = v28;

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29D941B10;
  v31 = *&v1[v4];
  if (!v31)
  {
    goto LABEL_19;
  }

  *(v30 + 32) = v31;
  v32 = *&v1[v7];
  if (!v32)
  {
LABEL_20:
    __break(1u);
    return;
  }

  *(v30 + 40) = v32;
  v33 = v31;
  v34 = v32;
  v35 = sub_29D939F18();

  [v9 activateConstraints_];
}

void sub_29D8C8504(char a1)
{
  sub_29D6A0C58();
  v3 = swift_allocObject();
  v19[1] = 3;
  *(v3 + 16) = xmmword_29D940030;
  v4 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint;
  v5 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint];
  if (!v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = objc_opt_self();
  *(v6 + 32) = v5;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v8 = v5;
  v9 = sub_29D939F18();

  [v7 deactivateConstraints_];

  v10 = [*&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel] leadingAnchor];
  if (a1)
  {
    v11 = [*&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView] trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:{3.0, 1}];
  }

  else
  {
    v13 = [v1 contentView];
    v11 = [v13 leadingAnchor];

    v12 = [v10 constraintEqualToAnchor:v11 constant:{16.0, 1}];
  }

  v14 = v12;

  v15 = *&v1[v4];
  *&v1[v4] = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = *v19;
  v17 = *&v1[v4];
  if (!v17)
  {
    goto LABEL_10;
  }

  *(v16 + 32) = v17;
  v18 = v17;
  v20 = sub_29D939F18();

  [v7 activateConstraints_];
}