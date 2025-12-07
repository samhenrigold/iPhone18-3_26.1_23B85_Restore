void sub_21BCA0C1C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "Checklist row refresh loaded", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = *a1;
  if (*a1)
  {

    sub_21BE08538();
    v14 = v13;
    v15 = sub_21BE28DAC();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    sub_21BE28D7C();

    v16 = sub_21BE28D6C();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v12;
    v17[5] = v14;
    sub_21BBA932C(0, 0, v4, &unk_21BE3DA18, v17);
  }

  else
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    sub_21BE2726C();
    __break(1u);
  }
}

void sub_21BCA0ED4(void *a1)
{
  if (*a1)
  {

    sub_21BE02DB4();
  }

  else
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    sub_21BE2726C();
    __break(1u);
  }
}

void sub_21BCA0F74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *a2;
  if (*a2)
  {
    v7 = sub_21BE28DAC();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_21BE28D7C();
    swift_retain_n();
    v8 = sub_21BE28D6C();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_21BBA932C(0, 0, v5, &unk_21BE3DA10, v9);
  }

  else
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    sub_21BE2726C();
    __break(1u);
  }
}

uint64_t objectdestroyTm_12()
{

  sub_21BB47CE0(*(v0 + 32), *(v0 + 40));

  sub_21BB47CE0(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_21BCA11F4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BCA123C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BE07A8C(a1, v4, v5, v6);
}

uint64_t sub_21BCA12F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BE07154(a1, v4, v5, v7, v6);
}

uint64_t sub_21BCA13B0()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D07F38], v0);
  MEMORY[0x21CF01150](v3);
  (*(v1 + 8))(v3, v0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();

  return v6;
}

unint64_t sub_21BCA157C()
{
  result = qword_27CDB8C70;
  if (!qword_27CDB8C70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8C60, &qword_21BE3DAA8);
    v4[0] = sub_21BCA1608();
    v4[1] = sub_21BCA16C0();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB8C70);
  }

  return result;
}

unint64_t sub_21BCA1608()
{
  result = qword_27CDB8C78;
  if (!qword_27CDB8C78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8C80, &qword_21BE3DAB8);
    v4[0] = sub_21BB3B038(&qword_27CDB8C88, &qword_27CDB8C90, &qword_21BE3DAC0, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8C78);
  }

  return result;
}

unint64_t sub_21BCA16C0()
{
  result = qword_27CDBCD90;
  if (!qword_27CDBCD90)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBCD90);
  }

  return result;
}

unint64_t sub_21BCA1744()
{
  result = qword_27CDB8CA0;
  if (!qword_27CDB8CA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8C68, &qword_21BE3DAB0);
    v4[0] = sub_21BCA16C0();
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8CA0);
  }

  return result;
}

unint64_t sub_21BCA1818()
{
  result = qword_27CDB6A60;
  if (!qword_27CDB6A60)
  {
    v3 = sub_21BB3A2A4(255, &qword_280BD6980, 0x277D08248);
    result = swift_getWitnessTable(protocol conformance descriptor for FAFamilyCircle, v3, v0, v1);
    atomic_store(result, &qword_27CDB6A60);
  }

  return result;
}

uint64_t sub_21BCA1888(uint64_t a1, int a2)
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

uint64_t sub_21BCA18D0(uint64_t result, int a2, int a3)
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

uint64_t sub_21BCA193C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v27 = a4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CC8, &qword_21BE3DBF0);
  MEMORY[0x28223BE20](v26);
  v8 = (v24 - v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CD0, &qword_21BE3DBF8);
  MEMORY[0x28223BE20](v25);
  v10 = v24 - v9;
  v11 = sub_21BE2664C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = a3;
  sub_21BCA2960(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
  sub_21BE25F1C();

  if (*(a3 + 16))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v16 = a2 & 1;
    *(v15 + 24) = a2 & 1;
    *(v15 + 32) = a3;

    v17 = CUIKAppTintColor();
    v18 = sub_21BE2826C();
    v24[0] = swift_getKeyPath();
    v28 = v18;
    v19 = sub_21BE26F3C();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v16;
    *(v20 + 32) = a3;
    v24[1] = v11;
    v21 = (v8 + *(v26 + 36));
    sub_21BE2701C();

    sub_21BE28D8C();
    *v21 = &unk_21BE3DC70;
    v21[1] = v20;
    *v8 = sub_21BCA2330;
    v8[1] = v15;
    v8[2] = v24[0];
    v8[3] = v19;
    sub_21BCA244C(v8, v10);
    swift_storeEnumTagMultiPayload();
    sub_21BCA2960(&qword_27CDB8CD8, MEMORY[0x277CF7B20], MEMORY[0x277CF7B18]);
    sub_21BCA2184();
    sub_21BE2784C();
    return sub_21BCA24BC(v8);
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2 & 1;
    *(v23 + 32) = a3;

    sub_21BE2663C();
    (*(v12 + 16))(v10, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_21BCA2960(&qword_27CDB8CD8, MEMORY[0x277CF7B20], MEMORY[0x277CF7B18]);
    sub_21BCA2184();
    sub_21BE2784C();
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_21BCA1D9C(void *a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_21BE261BC();
    sub_21BC51D50(a1, 0xD000000000000031, 0x800000021BE5ADE0);
    (*(v9 + 8))(v11, v8);
    sub_21BCA2544(0, a3, a4 & 1);
  }

  else
  {

    sub_21BCA2544(a1 & 1, a3, a4 & 1);
  }
}

uint64_t sub_21BCA1EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  sub_21BE28D7C();
  v3[4] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_21BCA1F84, v5, v4);
}

uint64_t sub_21BCA1F84()
{
  v1 = [*(v0[3] + 24) primaryAppleAccountSource];
  if (v1)
  {
    v2 = v0[3];

    if (*(v2 + 16))
    {
      v3 = v0[3];
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v3;
      *(v4 + 24) = 0;
      v0[2] = v3;
      sub_21BCA2960(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel, byte_21BE35698);
      sub_21BE25F0C();
    }

    else
    {
      *(v2 + 16) = 0;
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_21BC187C4;

    return sub_21BBF9350();
  }
}

unint64_t sub_21BCA2184()
{
  result = qword_27CDB8CE0;
  if (!qword_27CDB8CE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8CC8, &qword_21BE3DBF0);
    v4[0] = sub_21BCA2240();
    v4[1] = sub_21BCA2960(&qword_27CDB5058, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8CE0);
  }

  return result;
}

unint64_t sub_21BCA2240()
{
  result = qword_27CDB8CE8;
  if (!qword_27CDB8CE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8CF0, &qword_21BE3DC28);
    v4[0] = sub_21BBA6C54();
    v4[1] = sub_21BCA22CC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8CE8);
  }

  return result;
}

unint64_t sub_21BCA22CC()
{
  result = qword_27CDB8CF8;
  if (!qword_27CDB8CF8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8D00, &qword_21BE3DC30);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v3, v0, v1);
    atomic_store(result, &qword_27CDB8CF8);
  }

  return result;
}

uint64_t sub_21BCA2348@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x21CF02600]();
  *a1 = result;
  return result;
}

uint64_t sub_21BCA23A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BCA1EEC(v2, v3, v4);
}

uint64_t sub_21BCA244C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CC8, &qword_21BE3DBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCA24BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CC8, &qword_21BE3DBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21BCA2544(char a1, uint64_t a2, char a3)
{
  v6 = sub_21BE2754C();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v8;
    v16 = a3;
    v17 = v6;
    v18 = a1;
    v19 = v15;
    *v15 = 67109120;
    *(v15 + 4) = v18 & 1;
    _os_log_impl(&dword_21BB35000, v13, v14, "Calendar flow completed, user added new calendar: %{BOOL}d", v15, 8u);
    v20 = v19;
    a1 = v18;
    v6 = v17;
    a3 = v16;
    v8 = v25;
    MEMORY[0x21CF05C50](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);

  if ((a3 & 1) == 0)
  {
    sub_21BE28FEC();
    v21 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v26 + 8))(v8, v6);
    a2 = v28[0];
  }

  swift_beginAccess();
  if (*(a2 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v24 - 2) = a2;
    *(&v24 - 8) = 0;
    v27 = a2;
    sub_21BCA2960(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();

    if ((a1 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *(a2 + 16) = 0;

    if ((a1 & 1) == 0)
    {
      return;
    }
  }

  v23 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EC8 != -1)
  {
    swift_once();
  }

  [v23 postNotificationName:qword_27CDB7E78 object:0];
}

uint64_t sub_21BCA2960(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BCA29A8()
{
  result = qword_27CDB8D08;
  if (!qword_27CDB8D08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8D10, &unk_21BE3DCA0);
    v4[0] = sub_21BCA2960(&qword_27CDB8CD8, MEMORY[0x277CF7B20], MEMORY[0x277CF7B18]);
    v4[1] = sub_21BCA2184();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB8D08);
  }

  return result;
}

unint64_t sub_21BCA2A64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_21BB414D0(&v22, v24);
        sub_21BB414D0(v24, v25);
        sub_21BB414D0(v25, &v23);
        result = sub_21BBB3108(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_21BB414D0(&v23, v11);
          v8 = v12;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_21BB414D0(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_21BCA2CBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
    v1 = sub_21BE297DC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
LABEL_8:
  if (!v4)
  {
    goto LABEL_10;
  }

  do
  {
    v9 = v7;
LABEL_13:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_21BB3A35C(*(a1 + 56) + 40 * v11, v36);
    *&v35 = v13;
    *(&v35 + 1) = v14;
    v32 = v35;
    v33[0] = v36[0];
    v33[1] = v36[1];
    v34 = v37;
    v15 = v35;
    sub_21BC27210(v33, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D30, &qword_21BE3DF28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
    swift_dynamicCast();
    v29 = v26;
    v30 = v27;
    v31 = v28;
    v25 = v26;
    v26 = v27;
    *&v27 = v28;
    result = sub_21BBB3108(v15, *(&v15 + 1));
    if (v16)
    {
      *(v1[6] + 16 * result) = v15;
      v8 = result;

      result = sub_21BCA6258(&v25, v1[7] + 40 * v8);
      v7 = v9;
      goto LABEL_8;
    }

    if (v1[2] >= v1[3])
    {
      goto LABEL_20;
    }

    *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v1[6] + 16 * result) = v15;
    v17 = v1[7] + 40 * result;
    v18 = v25;
    v19 = v26;
    *(v17 + 32) = v27;
    *v17 = v18;
    *(v17 + 16) = v19;
    v20 = v1[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v1[2] = v22;
    v7 = v9;
  }

  while (v4);
LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_21BCA2F6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
        swift_dynamicCast();
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v24 = v25;
        v25 = v26;
        *&v26 = v27;
        result = sub_21BBB3108(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          result = sub_21BCA6258(&v24, v2[7] + 40 * v10);
          v8 = v11;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          v18 = v2[7] + 40 * result;
          v19 = v24;
          v20 = v25;
          *(v18 + 32) = v26;
          *v18 = v19;
          *(v18 + 16) = v20;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_21BCA31D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D28, &unk_21BE45710);
        swift_dynamicCast();
        sub_21BB414D0(&v22, v24);
        sub_21BB414D0(v24, v25);
        sub_21BB414D0(v25, &v23);
        result = sub_21BBB3108(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_21BB414D0(&v23, v11);
          v8 = v12;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_21BB414D0(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21BCA3434(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F8, &qword_21BE3BE50);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21BB3DCD4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_21BB414D0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_21BB414D0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_21BB414D0(v31, v32);
    result = sub_21BE2956C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_21BB414D0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

FamilyCircleUI::AnalyticsType_optional __swiftcall AnalyticsType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE299AC();

  v5 = 0;
  v6 = 46;
  switch(v3)
  {
    case 0:
      goto LABEL_63;
    case 1:
      v5 = 1;
      goto LABEL_63;
    case 2:
      v5 = 2;
      goto LABEL_63;
    case 3:
      v5 = 3;
      goto LABEL_63;
    case 4:
      v5 = 4;
      goto LABEL_63;
    case 5:
      v5 = 5;
      goto LABEL_63;
    case 6:
      v5 = 6;
      goto LABEL_63;
    case 7:
      v5 = 7;
      goto LABEL_63;
    case 8:
      v5 = 8;
      goto LABEL_63;
    case 9:
      v5 = 9;
      goto LABEL_63;
    case 10:
      v5 = 10;
      goto LABEL_63;
    case 11:
      v5 = 11;
      goto LABEL_63;
    case 12:
      v5 = 12;
      goto LABEL_63;
    case 13:
      v5 = 13;
      goto LABEL_63;
    case 14:
      v5 = 14;
      goto LABEL_63;
    case 15:
      v5 = 15;
      goto LABEL_63;
    case 16:
      v5 = 16;
      goto LABEL_63;
    case 17:
      v5 = 17;
      goto LABEL_63;
    case 18:
      v5 = 18;
      goto LABEL_63;
    case 19:
      v5 = 19;
      goto LABEL_63;
    case 20:
      v5 = 20;
      goto LABEL_63;
    case 21:
      v5 = 21;
      goto LABEL_63;
    case 22:
      v5 = 22;
      goto LABEL_63;
    case 23:
      v5 = 23;
      goto LABEL_63;
    case 24:
      v5 = 24;
      goto LABEL_63;
    case 25:
      v5 = 25;
      goto LABEL_63;
    case 26:
      v5 = 26;
      goto LABEL_63;
    case 27:
      v5 = 27;
      goto LABEL_63;
    case 28:
      v5 = 28;
      goto LABEL_63;
    case 29:
      v5 = 29;
      goto LABEL_63;
    case 30:
      v5 = 30;
      goto LABEL_63;
    case 31:
      v5 = 31;
      goto LABEL_63;
    case 32:
      v5 = 32;
      goto LABEL_63;
    case 33:
      v5 = 33;
      goto LABEL_63;
    case 34:
      v5 = 34;
      goto LABEL_63;
    case 35:
      v5 = 35;
      goto LABEL_63;
    case 36:
      v5 = 36;
      goto LABEL_63;
    case 37:
      v5 = 37;
      goto LABEL_63;
    case 38:
      v5 = 38;
      goto LABEL_63;
    case 39:
      v5 = 39;
      goto LABEL_63;
    case 40:
      v5 = 40;
      goto LABEL_63;
    case 41:
      v5 = 41;
      goto LABEL_63;
    case 42:
      v5 = 42;
      goto LABEL_63;
    case 43:
      v5 = 43;
      goto LABEL_63;
    case 44:
      v5 = 44;
      goto LABEL_63;
    case 45:
      v5 = 45;
LABEL_63:
      v6 = v5;
      break;
    case 46:
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    default:
      v6 = 64;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AnalyticsType.rawValue.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 1:
    case 0xA:
    case 0x10:
    case 0x15:
    case 0x17:
    case 0x1D:
    case 0x23:
    case 0x26:
      result = 0xD000000000000030;
      break;
    case 3:
    case 8:
    case 0xF:
      result = 0xD00000000000002DLL;
      break;
    case 4:
    case 0x21:
      result = 0xD00000000000002FLL;
      break;
    case 5:
    case 0x11:
    case 0x13:
    case 0x2E:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 9:
    case 0x14:
    case 0x16:
    case 0x24:
    case 0x3C:
      result = 0xD000000000000033;
      break;
    case 0xB:
    case 0xC:
      result = 0xD00000000000002ELL;
      break;
    case 0xD:
      result = 0xD00000000000002CLL;
      break;
    case 0xE:
      result = 0xD000000000000020;
      break;
    case 0x12:
    case 0x1A:
    case 0x29:
      result = 0xD000000000000029;
      break;
    case 0x18:
    case 0x27:
      result = 0xD000000000000036;
      break;
    case 0x19:
    case 0x22:
    case 0x33:
      result = 0xD000000000000037;
      break;
    case 0x1B:
    case 0x25:
      result = 0xD000000000000035;
      break;
    case 0x1C:
    case 0x1E:
    case 0x3D:
      result = 0xD000000000000032;
      break;
    case 0x1F:
    case 0x20:
      result = 0xD000000000000038;
      break;
    case 0x28:
    case 0x2F:
    case 0x30:
      result = 0xD000000000000026;
      break;
    case 0x2A:
      result = 0xD00000000000002ALL;
      break;
    case 0x2B:
      result = 0xD00000000000001CLL;
      break;
    case 0x2C:
      result = 0xD000000000000022;
      break;
    case 0x31:
    case 0x3B:
      result = 0xD00000000000003BLL;
      break;
    case 0x32:
      result = 0xD00000000000003ALL;
      break;
    case 0x34:
      result = 0xD000000000000055;
      break;
    case 0x35:
      result = 0xD000000000000054;
      break;
    case 0x36:
      result = 0xD000000000000039;
      break;
    case 0x37:
      result = 0xD000000000000047;
      break;
    case 0x38:
    case 0x3A:
    case 0x3F:
      result = 0xD000000000000040;
      break;
    case 0x39:
      result = 0xD000000000000045;
      break;
    case 0x3E:
      result = 0xD00000000000003CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BCA3E18()
{
  v0 = AnalyticsType.rawValue.getter();
  v2 = v1;
  if (v0 == AnalyticsType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21BE2995C();
  }

  return v5 & 1;
}

uint64_t sub_21BCA3EB4()
{
  sub_21BE29ACC();
  AnalyticsType.rawValue.getter();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BCA3F1C(uint64_t a1)
{
  AnalyticsType.rawValue.getter();
  sub_21BE28ABC();
}

uint64_t sub_21BCA3F80(uint64_t a1)
{
  sub_21BE29ACC();
  AnalyticsType.rawValue.getter();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BCA3FF0@<X0>(unint64_t *a1@<X8>)
{
  result = AnalyticsType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BCA4018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = sub_21BE263AC();

  if (v7)
  {
    if (a2)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = a2;
      *(v8 + 24) = a3;
      v9 = sub_21BCA6378;
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = sub_21BBB94E4;
      *(v12 + 24) = v3;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_21BCA62C8;
      *(v8 + 24) = v12;

      v9 = sub_21BCA62F4;
    }

    v13 = v9;
    v10 = swift_allocObject();
    *(v10 + 16) = v13;
    *(v10 + 24) = v8;
    v11 = sub_21BCA62FC;
  }

  else
  {
    sub_21BB5AEC4(a2, a3);
    v10 = 0;
    v11 = sub_21BCA42BC;
  }

  v15 = *(v4 + 16);
  v14 = *(v4 + 24);
  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  sub_21BB5AEC4(v15, v14);
  return v4;
}

void sub_21BCA4174(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v9 = *a2;
  v8 = a2[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  LOBYTE(a3) = a3(v6, v7, sub_21BCA6334, v10);

  *a4 = a3 & 1;
}

uint64_t sub_21BCA421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, void *, void *))
{
  v12[0] = a1;
  v12[1] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v11[0] = sub_21BCA6304;
  v11[1] = v8;

  a5(&v10, v12, v11);

  return v10;
}

uint64_t sub_21BCA42BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21BE289CC();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21BCA437C;
  v10[3] = &block_descriptor_23;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

id sub_21BCA437C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_21BC893E8();
    v4 = sub_21BE288EC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t static FamilyAnalytics.testableFamilyAnalytics(withEnvironment:sendFunction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FamilyAnalytics();
  v6 = swift_allocObject();

  sub_21BB3D80C(a2, a3);
  sub_21BCA4018(a1, a2, a3);
  if (sub_21BE263AC())
  {
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    qword_27CDB8D18 = v6;
  }

  return v6;
}

uint64_t sub_21BCA44F4()
{
  sub_21BE263BC();
  sub_21BE2639C();
  type metadata accessor for FamilyAnalytics();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = sub_21BE263AC();

  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = sub_21BBB94E4;
    *(v2 + 24) = v0;
    *(v0 + 16) = sub_21BCA6374;
    *(v0 + 24) = v2;
  }

  else
  {
    *(v0 + 16) = sub_21BCA42BC;
    *(v0 + 24) = 0;
  }

  result = sub_21BB5AEC4(0, 0);
  qword_27CDB8D18 = v0;
  return result;
}

uint64_t static FamilyAnalytics.shared.getter()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21BCA4624@<X0>(void *a1@<X8>)
{
  if (qword_27CDB4F68 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CDB8D18;
}

double sub_21BCA4694(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27CDB4F68;

  if (v2 != -1)
  {
    swift_once();
  }

  qword_27CDB8D18 = v1;

  return result;
}

double sub_21BCA4708(uint64_t a1, uint64_t a2)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v7 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v7, v5);

  return result;
}

double sub_21BCA4838(char a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v5 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x800000021BE5A7B0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;

  v3 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v5, v3);

  return result;
}

double sub_21BCA4954(char a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v5 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6E61696472617567;
  *(inited + 40) = 0xEF64656C67676F54;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;

  v3 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v5, v3);

  return result;
}

double sub_21BCA4A78()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000021BE5AE20;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);

  return result;
}

double sub_21BCA4B90()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000021BE5AE40;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);

  return result;
}

double sub_21BCA4CA8()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000021BE56CE0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);

  return result;
}

double sub_21BCA4DC0()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000021BE55FF0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);

  return result;
}

double sub_21BCA4ED8(char a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v5 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x800000021BE5AE60;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;

  v3 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v5, v3);

  return result;
}

double sub_21BCA4FF4()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000021BE588A0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);

  return result;
}

double sub_21BCA5128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v23[0] = 41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE381E0;
  *(inited + 32) = 1701667182;
  v17 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 88) = 0x79547265626D656DLL;
  *(inited + 96) = 0xEA00000000006570;
  v18 = MEMORY[0x277D83B88];
  *(inited + 56) = a2;
  *(inited + 128) = v18;
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a3;
  *(inited + 144) = 0x695468636E75616CLL;
  *(inited + 152) = 0xEA0000000000656DLL;
  *(inited + 184) = v18;
  *(inited + 192) = &protocol witness table for Int;
  *(inited + 160) = a4;
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x800000021BE584B0;
  *(inited + 240) = v18;
  *(inited + 248) = &protocol witness table for Int;
  *(inited + 216) = a6;
  *(inited + 256) = 0xD000000000000011;
  *(inited + 264) = 0x800000021BE584D0;
  *(inited + 296) = v18;
  *(inited + 304) = &protocol witness table for Int;
  *(inited + 272) = a5;
  *(inited + 312) = 0xD000000000000018;
  *(inited + 320) = 0x800000021BE584F0;
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = &protocol witness table for Bool;
  *(inited + 328) = a7 & 1;
  strcpy((inited + 368), "triggeredTime");
  *(inited + 382) = -4864;
  *(inited + 408) = v18;
  *(inited + 416) = &protocol witness table for Int;
  *(inited + 384) = a8;
  *(inited + 424) = 0x6574617473;
  *(inited + 432) = 0xE500000000000000;
  *(inited + 464) = v17;
  *(inited + 472) = &protocol witness table for String;
  *(inited + 440) = a9;
  *(inited + 448) = a10;

  v19 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(v23, v19);

  return result;
}

double sub_21BCA53BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v10 = 42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  *(inited + 32) = 1701667182;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v7 = MEMORY[0x277D83B88];
  strcpy((inited + 88), "triggeredTime");
  *(inited + 102) = -4864;
  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a3;

  v8 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v10, v8);

  return result;
}

double sub_21BCA5538(uint64_t a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v4 = 40;

  v2 = sub_21BCA2CBC(a1);
  sub_21BCA55DC(&v4, v2);

  return result;
}

void sub_21BCA55DC(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = qword_27CDB4E68;

  if (v11 != -1)
  {
    swift_once();
  }

  v29 = xmmword_27CDD41C8;
  v30 = MEMORY[0x277D837D0];
  v31 = &protocol witness table for String;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = a2;
  sub_21BC7F814(&v29, 0x74616C5072657375, 0xEC0000006D726F66, isUniquelyReferenced_nonNull_native);
  sub_21BD52CFC(v28);
  v14 = v13;

  if (v14)
  {
    v15 = *(v3 + 16);
    if (v15)
    {
      v16 = *(v3 + 24);
      LOBYTE(v29) = v10;
      v17 = AnalyticsType.rawValue.getter();
      v19 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = v14;

      v15(v17, v19, sub_21BCA636C, v20);
      sub_21BB5AEC4(v15, v16);
    }

    else
    {
    }
  }

  else
  {
    sub_21BE2614C();

    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FDC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v29 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE5AF30, &v29);
      *(v23 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
      v25 = sub_21BE2891C();
      v27 = sub_21BB3D81C(v25, v26, &v29);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_21BB35000, v21, v22, "%s, failed to cast payload %s as? [String: NSObject]", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t FamilyAnalytics.__deallocating_deinit()
{
  sub_21BB5AEC4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

double sub_21BCA59D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v17 = 45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  v11 = inited;
  *(inited + 16) = xmmword_21BE362A0;
  *(inited + 32) = 0x72656469766F7270;
  v12 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0x737574617473;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = a3 & 1;
  *(inited + 144) = 0x6E6F73616572;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 184) = v12;
  *(inited + 192) = &protocol witness table for String;
  v13 = 0x6F73616572206F6ELL;
  if (a5)
  {
    v13 = a4;
  }

  v14 = 0xE90000000000006ELL;
  if (a5)
  {
    v14 = a5;
  }

  *(inited + 160) = v13;
  *(inited + 168) = v14;

  v15 = sub_21BBB5E60(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v17, v15);

  return result;
}

void sub_21BCA5BA8(char *a1, unint64_t a2)
{
  v3 = *a1;
  LOBYTE(v11) = *a1;
  if (AnalyticsType.rawValue.getter() == 0xD00000000000001CLL && 0x800000021BE55090 == v4)
  {
    goto LABEL_3;
  }

  v5 = sub_21BE2995C();

  if ((v5 & 1) == 0)
  {
    LOBYTE(v11) = v3;
    if (AnalyticsType.rawValue.getter() == 0xD000000000000022 && 0x800000021BE550B0 == v9)
    {
LABEL_3:

      goto LABEL_5;
    }

    v10 = sub_21BE2995C();

    if ((v10 & 1) == 0)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_21BE295EC();
      MEMORY[0x21CF03CA0](0xD00000000000001CLL, 0x800000021BE5AEC0);
      sub_21BE2977C();
      goto LABEL_7;
    }
  }

LABEL_5:
  if (a2 > 0x64)
  {
    sub_21BE295EC();

    v11 = 0xD000000000000027;
    v12 = 0x800000021BE5AEE0;
    v6 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v6);

LABEL_7:
    MEMORY[0x21CF01210](v11, v12, 0xD000000000000010, 0x800000021BE573A0, 500);

    swift_willThrow();
    return;
  }

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  LOBYTE(v11) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x746E6563726570;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a2;

  v8 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v11, v8);
}

unint64_t sub_21BCA5E88()
{
  result = qword_27CDB8D20;
  if (!qword_27CDB8D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnalyticsType, &type metadata for AnalyticsType, v0, v1);
    atomic_store(result, &qword_27CDB8D20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC1)
  {
    goto LABEL_17;
  }

  if (a2 + 63 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 63) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 63;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 63;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 63;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v8 = v6 - 64;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC1)
  {
    v4 = 0;
  }

  if (a2 > 0xC0)
  {
    v5 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 63;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21BCA6258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCA6304@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_21BCA637C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FAAMSWebView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v6 = swift_allocBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D90, &qword_21BE3E0E8);
  sub_21BE283FC();
  type metadata accessor for FAAMSWebViewModel(0);
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE2864C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D98, &qword_21BE3E0F0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8DA0, &qword_21BE3E0F8);
  sub_21BE2699C();
  sub_21BCA8E60(&qword_27CDB8DA8, MEMORY[0x277CEE820], MEMORY[0x277CEE818]);
  v12[2] = v7;
  v12[3] = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21BE271BC();
  sub_21BCA8EA8(v1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  sub_21BCA8F0C(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8DB0, &qword_21BE3E110) + 36));
  sub_21BE2701C();
  result = sub_21BE28D8C();
  *v10 = &unk_21BE3E108;
  v10[1] = v9;
  return result;
}

uint64_t sub_21BCA6648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = sub_21BE2699C();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x28223BE20](v9);
  v41 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8DA0, &qword_21BE3E0F8);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x28223BE20](v12);
  v42 = &v27 - v14;
  v15 = swift_projectBox();
  v16 = *(v3 + 16);
  v16(v8, v15, v2);
  sub_21BE2862C();
  v17 = *(v3 + 8);
  v17(v8, v2);
  sub_21BCA8558();

  sub_21BE2698C();
  v33 = v15;
  v34 = v16;
  v16(v6, v15, v2);
  v29 = v3 + 16;
  sub_21BE2863C();
  v17(v6, v2);
  swift_getKeyPath();
  sub_21BE2865C();

  v17(v8, v2);
  v31 = v3 + 8;
  v32 = v17;
  v27 = v45;
  v28 = v46;
  v16(v6, v15, v2);
  sub_21BE2862C();
  v17(v6, v2);
  v18 = *(v43 + 64);

  v30 = sub_21BCA8E60(&qword_27CDB8DA8, MEMORY[0x277CEE820], MEMORY[0x277CEE818]);

  v19 = v28;
  v20 = v36;
  v21 = v41;
  sub_21BE27DEC();

  (*(v37 + 8))(v21, v20);
  v34(v6, v33, v2);
  sub_21BE2863C();
  v22 = v32;
  v32(v6, v2);
  swift_getKeyPath();
  sub_21BE2865C();

  v22(v8, v2);
  v23 = v46;

  v43 = v20;
  v44 = v30;
  swift_getOpaqueTypeConformance2();
  v24 = v38;
  v25 = v42;
  sub_21BE27DDC();

  return (*(v39 + 8))(v25, v24);
}

id sub_21BCA6B80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F1C();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_21BCA6C38(uint64_t a1, int a2, uint64_t a3)
{
  v28 = a3;
  LODWORD(v3) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26[-v7];
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE260FC();
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FBC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v3;
    v3 = a1;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_21BB35000, v13, v14, "Handling AMSWebView authenticate sheet", v15, 2u);
    v17 = v16;
    a1 = v3;
    LOBYTE(v3) = v27;
    MEMORY[0x21CF05C50](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v18 = swift_projectBox();
  (*(v6 + 16))(v8, v18, v5);
  v19 = (v6 + 8);
  if (v3)
  {
    sub_21BE2862C();
    (*v19)(v8, v5);
    v20 = v29;
    swift_getKeyPath();
    v29 = v20;
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
    sub_21BE25F1C();

    v22 = *(v20 + 24);
    v21 = *(v20 + 32);
    sub_21BB3D80C(v22, v21);

    if (!v22)
    {
      return;
    }

    v23 = 0;
    v24 = a1;
  }

  else
  {
    sub_21BE2862C();
    (*v19)(v8, v5);
    v25 = v29;
    swift_getKeyPath();
    v29 = v25;
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
    sub_21BE25F1C();

    v22 = *(v25 + 24);
    v21 = *(v25 + 32);
    sub_21BB3D80C(v22, v21);

    if (!v22)
    {
      return;
    }

    v23 = a1;
    v24 = 0;
  }

  v22(v23, v24);
  sub_21BB5AEC4(v22, v21);
}

id sub_21BCA6FCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F1C();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_21BCA7084(uint64_t a1, int a2, uint64_t a3)
{
  v28 = a3;
  LODWORD(v3) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26[-v7];
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE260FC();
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FBC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v3;
    v3 = a1;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_21BB35000, v13, v14, "Handling AMSWebView alert dialog", v15, 2u);
    v17 = v16;
    a1 = v3;
    LOBYTE(v3) = v27;
    MEMORY[0x21CF05C50](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v18 = swift_projectBox();
  (*(v6 + 16))(v8, v18, v5);
  v19 = (v6 + 8);
  if (v3)
  {
    sub_21BE2862C();
    (*v19)(v8, v5);
    v20 = v29;
    swift_getKeyPath();
    v29 = v20;
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
    sub_21BE25F1C();

    v22 = *(v20 + 48);
    v21 = *(v20 + 56);
    sub_21BB3D80C(v22, v21);

    if (!v22)
    {
      return;
    }

    v23 = 0;
    v24 = a1;
  }

  else
  {
    sub_21BE2862C();
    (*v19)(v8, v5);
    v25 = v29;
    swift_getKeyPath();
    v29 = v25;
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
    sub_21BE25F1C();

    v22 = *(v25 + 48);
    v21 = *(v25 + 56);
    sub_21BB3D80C(v22, v21);

    if (!v22)
    {
      return;
    }

    v23 = a1;
    v24 = 0;
  }

  v22(v23, v24);
  sub_21BB5AEC4(v22, v21);
}

uint64_t sub_21BCA7418(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = type metadata accessor for FAAMSWebView(0);
  v2[10] = swift_task_alloc();
  v3 = sub_21BE26A4C();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  sub_21BE28D7C();
  v2[17] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v2[18] = v6;
  v2[19] = v5;

  return MEMORY[0x2822009F8](sub_21BCA75A4, v6, v5);
}

uint64_t sub_21BCA75A4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[8];
  v5 = v0[9];
  v6 = swift_projectBox();
  (*(v2 + 16))(v1, v6, v3);
  sub_21BE2862C();
  (*(v2 + 8))(v1, v3);
  v0[20] = sub_21BCA8558();

  v7 = *(v5 + 20);
  v10 = (*MEMORY[0x277CEE828] + MEMORY[0x277CEE828]);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_21BCA76D4;

  return v10(v4 + v7);
}

uint64_t sub_21BCA76D4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_21BCA7870;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_21BCA77F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BCA77F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCA7870()
{
  v29 = v0;
  v1 = v0[22];
  v2 = v0[10];
  v3 = v0[8];

  sub_21BE260FC();
  sub_21BCA8EA8(v3, v2);
  v4 = v1;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = v0[12];
    v9 = v0[10];
    v26 = v0[11];
    v27 = v0[13];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315394;
    v12 = sub_21BE25AFC();
    v14 = v13;
    sub_21BCA9048(v9);
    v15 = sub_21BB3D81C(v12, v14, &v28);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v16 = sub_21BE29A5C();
    v18 = sub_21BB3D81C(v16, v17, &v28);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_21BB35000, v5, v6, "Error loading url %s: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);

    (*(v8 + 8))(v27, v26);
  }

  else
  {
    v19 = v0[22];
    v21 = v0[12];
    v20 = v0[13];
    v23 = v0[10];
    v22 = v0[11];

    sub_21BCA9048(v23);
    (*(v21 + 8))(v20, v22);
  }

  v24 = v0[1];

  return v24();
}

void *sub_21BCA7AF0()
{
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F1C();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_21BCA7B98(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_27CDB8D68, 0x277CEE3E0);
  v5 = v4;
  v6 = a1;
  v7 = sub_21BE2940C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_21BCA7D28()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F1C();

  v1 = *(v0 + 24);
  sub_21BB3D80C(v1, *(v3 + 32));
  return v1;
}

uint64_t sub_21BCA7DDC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F1C();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21BCA91E0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21BB3D80C(v4, v5);
}

double sub_21BCA7EC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_21BCA9214;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21BB3D80C(v2, v3);
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F0C();
  sub_21BB5AEC4(v5, v4);

  return result;
}

void *sub_21BCA8024()
{
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F1C();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_21BCA80CC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_27CDB8D60, 0x277CEE488);
  v5 = v4;
  v6 = a1;
  v7 = sub_21BE2940C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_21BCA825C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F1C();

  v1 = *(v0 + 48);
  sub_21BB3D80C(v1, *(v3 + 56));
  return v1;
}

uint64_t sub_21BCA8310@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F1C();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21BCA8BB0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21BB3D80C(v4, v5);
}

double sub_21BCA83FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_21BCA8BAC;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21BB3D80C(v2, v3);
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F0C();
  sub_21BB5AEC4(v5, v4);

  return result;
}

id sub_21BCA8558()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21BCA85B8(v0);
    *(v0 + 72) = v1;
  }

  return v1;
}

id sub_21BCA85B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D50, &qword_21BE3DFD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_21BE2697C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_retain_n();
  sub_21BE2696C();
  v9 = *(a1 + 64);
  v10 = objc_opt_self();
  v11 = v9;
  result = [v10 defaultStore];
  if (result)
  {
    v13 = result;
    v14 = [result aa_primaryAppleAccount];

    (*(v6 + 16))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_21BE269BC();
    swift_allocObject();
    v15 = sub_21BE269AC();
    (*(v6 + 8))(v8, v5);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCA8814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *))
{
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel, byte_21BE3DFB8);
  sub_21BE25F0C();

  v9 = a1;
  return a7(a1);
}

uint64_t sub_21BCA8904()
{
  sub_21BB5AEC4(*(v0 + 24), *(v0 + 32));

  sub_21BB5AEC4(*(v0 + 48), *(v0 + 56));

  v1 = OBJC_IVAR____TtC14FamilyCircleUIP33_8CDB69FC747B401FE9C44263105E581E17FAAMSWebViewModel___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21BCA89F8(uint64_t a1)
{
  result = sub_21BE25F5C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BCA8B60()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  sub_21BB3D80C(v1, v3);
  return sub_21BB5AEC4(v4, v5);
}

uint64_t sub_21BCA8BF8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  sub_21BB3D80C(v1, v3);
  return sub_21BB5AEC4(v4, v5);
}

uint64_t sub_21BCA8C44(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

void sub_21BCA8C80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

void sub_21BCA8CB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_21BCA8D38(uint64_t a1)
{
  sub_21BB3A2A4(319, &qword_280BD6900, 0x277CEE3F8);
  if (v1 <= 0x3F)
  {
    sub_21BE25B9C();
    if (v2 <= 0x3F)
    {
      sub_21BCA8DE4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BCA8DE4(uint64_t a1)
{
  if (!qword_27CDB8D80)
  {
    type metadata accessor for FAAMSWebViewModel(255);
    v1 = sub_21BE2842C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB8D80);
    }
  }
}

uint64_t sub_21BCA8E60(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BCA8EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FAAMSWebView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCA8F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FAAMSWebView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCA8F70()
{
  v2 = *(type metadata accessor for FAAMSWebView(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BCA7418(v4, v0 + v3);
}

uint64_t sub_21BCA9048(uint64_t a1)
{
  v2 = type metadata accessor for FAAMSWebView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BCA90BC()
{
  result = qword_27CDB8DB8;
  if (!qword_27CDB8DB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8DB0, &qword_21BE3E110);
    v4[0] = sub_21BCA9178();
    v4[1] = sub_21BCA8E60(&qword_27CDB5058, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8DB8);
  }

  return result;
}

unint64_t sub_21BCA9178()
{
  result = qword_27CDB8DC0;
  if (!qword_27CDB8DC0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8DC8, &qword_21BE3E118);
    result = swift_getWitnessTable(MEMORY[0x277CDDA18], v3, v0, v1);
    atomic_store(result, &qword_27CDB8DC0);
  }

  return result;
}

uint64_t sub_21BCA9268(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21BCA92D4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21BCA9374;
}

void sub_21BCA9374(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *ScreenTimePasscodeController.__allocating_init(passcodeControllerType:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener;
  *&v5[v6] = [objc_allocWithZone(type metadata accessor for ScreentimePasscodeListener(0)) init];
  v5[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening] = 0;
  v7 = &v5[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_passcodeControllerType];
  *v7 = a1;
  v7[1] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener] + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  *(v9 + 8) = &protocol witness table for ScreenTimePasscodeController;
  swift_unknownObjectWeakAssign();
  return v8;
}

char *ScreenTimePasscodeController.init(passcodeControllerType:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for ScreentimePasscodeListener(0)) init];
  v2[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening] = 0;
  v6 = &v2[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_passcodeControllerType];
  *v6 = a1;
  v6[1] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ScreenTimePasscodeController();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener] + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  *(v8 + 8) = &protocol witness table for ScreenTimePasscodeController;
  swift_unknownObjectWeakAssign();
  return v7;
}

uint64_t sub_21BCA95F4()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_passcodeControllerType);
  v10 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_passcodeControllerType + 8);
  v11 = (*(v10 + 8))(v9, v10);
  if (v11)
  {
    sub_21BE261CC();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FFC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v12, v13, "ST enabled, calling PIN UI", v14, 2u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    sub_21BCA98C4();
    (*(v10 + 16))(v9, v10);
  }

  else
  {
    sub_21BE261CC();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "ST disabled, skipping PIN UI", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v18 = v1 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(v1, 1, ObjectType, v19);
      swift_unknownObjectRelease();
    }
  }

  return v11 & 1;
}

uint64_t sub_21BCA98C4()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening;
  if ((*(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening) & 1) == 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener);
    v8 = [objc_opt_self() defaultCenter];
    [v8 addObserver:v7 selector:sel_handleRestrictionsPINNotification_ name:*MEMORY[0x277D4BDE8] object:0 suspensionBehavior:4];

    *(v0 + v6) = 1;
    sub_21BE261CC();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "Started listening for ST passcode events", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_21BCA9A7C()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening;
  if (*(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening) == 1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener);
    v8 = [objc_opt_self() defaultCenter];
    [v8 removeObserver:v7 name:*MEMORY[0x277D4BDE8] object:0];

    *(v0 + v6) = 0;
    sub_21BE261CC();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "Stopped listening for ST passcode events", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

id ScreenTimePasscodeController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenTimePasscodeController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimePasscodeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BCA9D70(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_21BE261CC();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_21BB35000, v9, v10, "ST passcode state changed to: %ld", v11, 0xCu);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (v8 == 1)
    {
      sub_21BCA9A7C();
      v13 = v2 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(v2, 1, ObjectType, v14);
    }

    else
    {
      sub_21BCA9A7C();
      v16 = v2 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v17 = *(v16 + 8);
      v18 = swift_getObjectType();
      (*(v17 + 16))(v2, v18, v17);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21BCAA0F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BCAA140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BCAA1C8()
{
  v0 = sub_21BE278CC();
  __swift_allocate_value_buffer(v0, qword_27CDB8DF0);
  __swift_project_value_buffer(v0, qword_27CDB8DF0);
  return sub_21BE278AC();
}

uint64_t sub_21BCAA214()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v10, &qword_27CDB5C50, &qword_21BE33490);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_21BCAA370@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v3 = swift_allocBox();
  sub_21BCAA214();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE2864C();
  v4 = *(v1 + 9);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  if ((v4 & 0x100) != 0)
  {
    v23 = sub_21BE2599C();
    v25 = v24;

    v26 = [v6 bundleForClass_];
    v27 = sub_21BE2599C();
    v29 = v28;

    *&v57 = v27;
    *(&v57 + 1) = v29;
    v30 = sub_21BE28B8C();
    v32 = v31;
    v33 = sub_21BCAE31C();
    v54 = &type metadata for ContactItem;
    v55 = sub_21BCAE444();
    v56 = 0;
    v53 = v4;
    v43 = v23;
    v44 = v25;
    v45 = 0;
    v46 = 0;
    v47 = v30;
    v48 = v32;
    v49 = v33;
    v50 = sub_21BCAE414;
    v51 = v3;
    v52 = 0;
    sub_21BBC7A18(&v43, v41);
    v42 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();

    sub_21BE2784C();
    sub_21BBC7A74(&v43);
  }

  else
  {
    v8 = sub_21BE2599C();
    v39 = v9;
    v40 = v8;

    v10 = [v6 &selRef:ObjCClassFromMetadata :0x800000021BE5B140 launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    v11 = sub_21BE2599C();
    v13 = v12;

    *&v57 = v11;
    *(&v57 + 1) = v13;
    v14 = sub_21BE28B8C();
    v16 = v15;
    v17 = sub_21BCAE31C();
    v18 = v3;

    v19 = [v6 bundleForClass_];
    v20 = sub_21BE2599C();
    v22 = v21;

    v54 = &type metadata for ContactItem;
    v55 = sub_21BCAE444();
    v56 = 0;
    v53 = v4;
    v43 = v40;
    v44 = v39;
    v45 = v14;
    v46 = v16;
    v47 = v17;
    v48 = sub_21BCAE414;
    v49 = v18;
    v50 = v20;
    v51 = v22;
    v52 = 0;
    sub_21BBC7968(&v43, v41);
    v42 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    sub_21BBC79C4(&v43);
  }

  v34 = v64;
  *(a1 + 96) = v63;
  *(a1 + 112) = v34;
  *(a1 + 128) = v65;
  v35 = v60;
  *(a1 + 32) = v59;
  *(a1 + 48) = v35;
  v36 = v62;
  *(a1 + 64) = v61;
  *(a1 + 80) = v36;
  v37 = v58;
  *a1 = v57;
  *(a1 + 16) = v37;

  return result;
}

double sub_21BCAA840(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - v4;
  v6 = swift_projectBox();
  (*(v3 + 16))(v5, v6, v2);
  sub_21BE2862C();
  (*(v3 + 8))(v5, v2);
  v7 = v10[3];
  swift_beginAccess();
  if (*(v7 + 25) == 1)
  {
    *(v7 + 25) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v7;
    LOBYTE(v10[-1]) = 1;
    v10[2] = v7;
    sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BCAAA40()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v15)
  {
    v2 = sub_21BE2905C();
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {
    v14 = v1;
    if (i)
    {
      v1 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x21CF047C0](v1, v2);
        }

        else
        {
          if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v4 = *(v2 + 8 * v1 + 32);
        }

        v5 = v4;
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v7 = [v4 contact];
        if (v7)
        {

          sub_21BE296BC();
          sub_21BE296EC();
          sub_21BE296FC();
          sub_21BE296CC();
        }

        else
        {
        }

        ++v1;
        if (v6 == i)
        {
          v1 = v14;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E60, &qword_21BE3E390);
    sub_21BE2840C();
    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CF047C0](v8, v2);
      }

      else
      {
        if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v10 = *(v2 + 8 * v8 + 32);
      }

      v11 = v10;
      v1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v10 contact];
      if (v12)
      {
        v9 = v12;
      }

      else
      {
        sub_21BE296BC();
        sub_21BE296EC();
        sub_21BE296FC();
        sub_21BE296CC();
      }

      ++v8;
      if (v1 == i)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_29:

  return sub_21BE2840C();
}

uint64_t sub_21BCAAD1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v48 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E08, &qword_21BE3E2E0);
  MEMORY[0x28223BE20](v50);
  v49 = v48 - v10;
  v52 = swift_allocBox();
  v12 = v11;
  sub_21BCAA214();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE2864C();
  v13 = sub_21BCAA370(v55);
  (*(v4 + 16))(v7, v12, v3, v13);
  sub_21BE2863C();
  v14 = *(v4 + 8);
  v14(v7, v3);
  swift_getKeyPath();
  sub_21BE2865C();

  v14(v9, v3);
  v48[3] = v54;
  v15 = swift_allocObject();
  v16 = v1[5];
  *(v15 + 80) = v1[4];
  *(v15 + 96) = v16;
  *(v15 + 112) = v1[6];
  v17 = v1[1];
  *(v15 + 16) = *v1;
  *(v15 + 32) = v17;
  v18 = v1[3];
  *(v15 + 48) = v1[2];
  *(v15 + 64) = v18;
  *(v15 + 128) = v52;
  sub_21BCABE7C(v1, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BD0, &qword_21BE3E310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E10, &qword_21BE3E318);
  sub_21BBC2448();
  v19 = v49;
  sub_21BB3B038(&qword_27CDB8E18, &qword_27CDB8E10, &qword_21BE3E318, MEMORY[0x277CDDA18]);
  sub_21BE2812C();

  sub_21BB3A4CC(v55, &qword_27CDB5BD0, &qword_21BE3E310);
  v20 = swift_allocObject();
  v21 = v1[5];
  *(v20 + 5) = v1[4];
  *(v20 + 6) = v21;
  *(v20 + 7) = v1[6];
  v22 = v1[1];
  *(v20 + 1) = *v1;
  *(v20 + 2) = v22;
  v23 = v1[3];
  *(v20 + 3) = v1[2];
  *(v20 + 4) = v23;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E20, &qword_21BE3E320) + 36);
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_21BCABE7C(v2, v55);
  v26 = [ObjCClassFromMetadata defaultCenter];
  if (qword_280BD7030 != -1)
  {
    swift_once();
  }

  v27 = v19 + v24;
  sub_21BE2935C();

  v28 = type metadata accessor for ActiveStateChange(0);
  v29 = (v27 + *(v28 + 20));
  *v29 = sub_21BCABEB4;
  v29[1] = v20;
  v30 = (v27 + *(v28 + 24));
  *v30 = 0xD00000000000002ALL;
  v30[1] = 0x800000021BE5B0F0;
  v31 = swift_allocObject();
  v32 = v2[5];
  v31[5] = v2[4];
  v31[6] = v32;
  v31[7] = v2[6];
  v33 = v2[1];
  v31[1] = *v2;
  v31[2] = v33;
  v34 = v2[3];
  v31[3] = v2[2];
  v31[4] = v34;
  v35 = (v19 + *(v50 + 36));
  *v35 = sub_21BCAEAAC;
  v35[1] = v31;
  v35[2] = 0;
  v35[3] = 0;
  v53[0] = v2[5];
  sub_21BCABE7C(v2, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E28, &qword_21BE3E328);
  sub_21BE283FC();
  v36 = v55[0];
  *&v53[0] = v55[0];
  v37 = swift_allocObject();
  v38 = v2[5];
  v37[5] = v2[4];
  v37[6] = v38;
  v37[7] = v2[6];
  v39 = v2[1];
  v37[1] = *v2;
  v37[2] = v39;
  v40 = v2[3];
  v37[3] = v2[2];
  v37[4] = v40;
  sub_21BCABE7C(v2, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E30, &qword_21BE3E330);
  sub_21BCABEE0();
  sub_21BCAC0C4();
  v41 = v51;
  sub_21BE281BC();

  sub_21BB4E0F8(v19);
  v42 = swift_allocObject();
  v43 = v2[5];
  v42[5] = v2[4];
  v42[6] = v43;
  v42[7] = v2[6];
  v44 = v2[1];
  v42[1] = *v2;
  v42[2] = v44;
  v45 = v2[3];
  v42[3] = v2[2];
  v42[4] = v45;
  sub_21BCABE7C(v2, v55);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E58, &unk_21BE3E338);
  v47 = (v41 + *(result + 36));
  *v47 = 0;
  v47[1] = 0;
  v47[2] = sub_21BCAC1F4;
  v47[3] = v42;
  return result;
}

uint64_t sub_21BCAB3AC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E68, &qword_21BE3E398);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BCAE260();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21BE271BC();
}

uint64_t sub_21BCAB4EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E60, &qword_21BE3E390);
  sub_21BE2841C();
  sub_21BE2841C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E28, &qword_21BE3E328);
  sub_21BE2841C();
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyCircleStore(0);
  sub_21BBC7324(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);

  *&v4 = sub_21BE270CC();
  *(&v4 + 1) = v2;
  *v5 = *v6;
  *&v5[8] = *&v6[8];
  *&v5[24] = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BCAE260();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  v7 = *&v5[16];
  v8 = *&v6[8];
  v9 = *v6;
  v10 = *&v6[16];
  *v6 = v4;
  *&v6[16] = *v5;
  return sub_21BCAE2BC(v6);
}

uint64_t sub_21BCAB760(uint64_t a1)
{
  v1 = sub_21BE278CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6660, &qword_21BE33470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  if (qword_27CDB4F70 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_27CDB8DF0);
  (*(v2 + 16))(v4, v9, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  sub_21BE26EDC();
  v10 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF02AD0](v8, v5, v10);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21BCAB9CC(uint64_t a1)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();

  return sub_21BE2845C();
}

double sub_21BCABAD0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_21BE2862C();
  (*(v2 + 8))(v4, v1);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 25))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 0;
    v9[2] = v6;
    sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 25) = 0;
  }

  return result;
}

void *sub_21BCABCD0(void *result, void *a2, uint64_t a3)
{
  if (*result)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    sub_21BCAAA40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    return sub_21BE2840C();
  }

  return result;
}

void sub_21BCABD48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v2 == 1)
  {
    sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
    v1 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_27CDB4EF8 != -1)
    {
      swift_once();
    }

    [v1 postNotificationName:qword_27CDB7EA0 object:0];
  }
}

unint64_t sub_21BCABEE0()
{
  result = qword_27CDB8E38;
  if (!qword_27CDB8E38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E08, &qword_21BE3E2E0);
    v4[0] = sub_21BCABF6C();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8E38);
  }

  return result;
}

unint64_t sub_21BCABF6C()
{
  result = qword_27CDB8E40;
  if (!qword_27CDB8E40)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E20, &qword_21BE3E320);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BD0, &qword_21BE3E310);
    v4[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E10, &qword_21BE3E318);
    v4[4] = sub_21BBC2448();
    v4[5] = sub_21BB3B038(&qword_27CDB8E18, &qword_27CDB8E10, &qword_21BE3E318, MEMORY[0x277CDDA18]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BBC7324(&qword_27CDB5C18, type metadata accessor for ActiveStateChange, byte_21BE49A18);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8E40);
  }

  return result;
}

unint64_t sub_21BCAC0C4()
{
  result = qword_27CDB8E48;
  if (!qword_27CDB8E48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E30, &qword_21BE3E330);
    v4[0] = sub_21BB3CC48(&qword_27CDB8E50, &qword_280BD8A40, 0x277D08268, MEMORY[0x277D85380]);
    result = swift_getWitnessTable(MEMORY[0x277D84F50], v3, v4);
    atomic_store(result, &qword_27CDB8E48);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_21BCAC1FC@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C70, &unk_21BE3E470);
  v123 = *(v3 - 8);
  v124 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v134 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v133 = &v119 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0);
  MEMORY[0x28223BE20](v7);
  v125 = &v119 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E98, &qword_21BE3E480);
  v121 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v126 = &v119 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EA0, &qword_21BE3E488);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v132 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v131 = &v119 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v119 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v119 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EA8, &qword_21BE3E490);
  MEMORY[0x28223BE20](v20);
  v22 = &v119 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EB0, &qword_21BE3E498);
  v129 = *(v23 - 8);
  v130 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v128 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v119 - v26;
  *v22 = sub_21BE2770C();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EB8, &qword_21BE3E4A0);
  sub_21BCACEBC(&v22[*(v28 + 44)]);
  sub_21BB3B038(&qword_27CDB8EC0, &qword_27CDB8EA8, &qword_21BE3E490, MEMORY[0x277CE1198]);
  v127 = v27;
  v29 = a1;
  sub_21BE285EC();
  v137 = *(a1 + 16);
  v138 = *(a1 + 32);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EC8, &unk_21BE3E4A8);
  MEMORY[0x21CF036E0](v140);
  if (v140[0] >> 62)
  {
    v31 = sub_21BE2951C();
    v29 = a1;
  }

  else
  {
    v31 = *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v136 = v19;
  if (v31)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v34 = sub_21BE2599C();
    v35 = v30;
    v37 = v36;

    *&v137 = v34;
    *(&v137 + 1) = v37;
    sub_21BB41FA4();
    v38 = sub_21BE27DBC();
    v40 = v39;
    LOBYTE(v37) = v41;
    v43 = v42;
    v44 = *(v7 + 36);
    v45 = v7;
    v46 = v29;
    v47 = v125;
    v48 = &v125[v44];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
    v120 = v9;
    v50 = *(v49 + 28);
    v51 = sub_21BE27D7C();
    (*(*(v51 - 8) + 56))(v48 + v50, 1, 1, v51);
    KeyPath = swift_getKeyPath();
    *v48 = KeyPath;
    v29 = v46;
    v7 = v45;
    *v47 = v38;
    *(v47 + 1) = v40;
    v53 = v37 & 1;
    v30 = v35;
    v47[16] = v53;
    *(v47 + 3) = v43;
    MEMORY[0x28223BE20](KeyPath);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8ED0, &qword_21BE3E4E8);
    sub_21BC12B48();
    sub_21BCAE688();
    v54 = v126;
    v19 = v136;
    sub_21BE285EC();
    v9 = v120;
    v55 = v121;
    (*(v121 + 32))(v19, v54, v120);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v55 = v121;
  }

  v57 = *(v55 + 56);
  v57(v19, v56, 1, v9);
  v137 = *(v29 + 40);
  v138 = *(v29 + 56);
  MEMORY[0x21CF036E0](v140, v30);
  if (v140[0] >> 62)
  {
    v82 = sub_21BE2951C();

    if (v82)
    {
      goto LABEL_8;
    }

LABEL_11:
    v81 = 1;
    v80 = &selRef_bundleURL;
    goto LABEL_12;
  }

  v58 = *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v58)
  {
    goto LABEL_11;
  }

LABEL_8:
  type metadata accessor for ConfirmChildAgeViewModel();
  v59 = swift_getObjCClassFromMetadata();
  v60 = [objc_opt_self() bundleForClass_];
  v61 = sub_21BE2599C();
  v63 = v62;

  *&v137 = v61;
  *(&v137 + 1) = v63;
  sub_21BB41FA4();
  v64 = sub_21BE27DBC();
  v66 = v65;
  LOBYTE(v63) = v67;
  v121 = v55 + 56;
  v69 = v68;
  v70 = *(v7 + 36);
  v120 = v57;
  v71 = v125;
  v72 = v55;
  v73 = v9;
  v74 = &v125[v70];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
  v119 = v7;
  v76 = *(v75 + 28);
  v77 = sub_21BE27D7C();
  (*(*(v77 - 8) + 56))(v74 + v76, 1, 1, v77);
  v78 = swift_getKeyPath();
  *v74 = v78;
  v9 = v73;
  *v71 = v64;
  *(v71 + 1) = v66;
  v71[16] = v63 & 1;
  *(v71 + 3) = v69;
  MEMORY[0x28223BE20](v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8ED0, &qword_21BE3E4E8);
  sub_21BC12B48();
  sub_21BCAE688();
  v79 = v126;
  v57 = v120;
  v80 = &selRef_bundleURL;
  sub_21BE285EC();
  (*(v72 + 32))(v135, v79, v73);
  v81 = 0;
LABEL_12:
  v83 = v135;
  v57(v135, v81, 1, v9);
  type metadata accessor for ConfirmChildAgeViewModel();
  v84 = swift_getObjCClassFromMetadata();
  v85 = [objc_opt_self() v80[363]];
  v86 = sub_21BE2599C();
  v88 = v87;

  *&v137 = v86;
  *(&v137 + 1) = v88;
  sub_21BB41FA4();
  v89 = sub_21BE27DBC();
  v91 = v90;
  LOBYTE(v88) = v92;
  sub_21BE27CCC();
  v93 = v83;
  v94 = sub_21BE27D9C();
  v96 = v95;
  v98 = v97;
  v100 = v99;

  sub_21BBC7C7C(v89, v91, v88 & 1);

  *&v137 = v94;
  *(&v137 + 1) = v96;
  LOBYTE(v138) = v98 & 1;
  v139 = v100;
  v101 = v133;
  sub_21BE2861C();
  v102 = v128;
  v103 = *(v129 + 16);
  v104 = v130;
  v103(v128, v127, v130);
  v105 = v131;
  sub_21BBA3854(v136, v131, &qword_27CDB8EA0, &qword_21BE3E488);
  sub_21BBA3854(v93, v132, &qword_27CDB8EA0, &qword_21BE3E488);
  v106 = v123;
  v107 = *(v123 + 16);
  v108 = v101;
  v109 = v124;
  v107(v134, v108, v124);
  v110 = v122;
  v103(v122, v102, v104);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EE8, &unk_21BE3E4F0);
  sub_21BBA3854(v105, &v110[v111[12]], &qword_27CDB8EA0, &qword_21BE3E488);
  v112 = v132;
  sub_21BBA3854(v132, &v110[v111[16]], &qword_27CDB8EA0, &qword_21BE3E488);
  v113 = &v110[v111[20]];
  v114 = v134;
  v107(v113, v134, v109);
  v115 = *(v106 + 8);
  v115(v133, v109);
  sub_21BB3A4CC(v135, &qword_27CDB8EA0, &qword_21BE3E488);
  sub_21BB3A4CC(v136, &qword_27CDB8EA0, &qword_21BE3E488);
  v116 = v130;
  v117 = *(v129 + 8);
  v117(v127, v130);
  v115(v114, v109);
  sub_21BB3A4CC(v112, &qword_27CDB8EA0, &qword_21BE3E488);
  sub_21BB3A4CC(v131, &qword_27CDB8EA0, &qword_21BE3E488);
  return (v117)(v128, v116);
}

uint64_t sub_21BCACEBC@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0);
  v1 = MEMORY[0x28223BE20](v102);
  v104 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v103 = &v85 - v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CC8, &unk_21BE398A0);
  MEMORY[0x28223BE20](v90);
  v5 = &v85 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CD0, &qword_21BE3E530);
  MEMORY[0x28223BE20](v96);
  v94 = &v85 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF8, &qword_21BE3E538);
  MEMORY[0x28223BE20](v92);
  v99 = &v85 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8F00, &qword_21BE3E540);
  v8 = MEMORY[0x28223BE20](v97);
  v101 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v98 = &v85 - v11;
  MEMORY[0x28223BE20](v10);
  v100 = &v85 - v12;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v91 = objc_opt_self();
  v95 = ObjCClassFromMetadata;
  v14 = [v91 bundleForClass_];
  v15 = sub_21BE2599C();
  v17 = v16;

  *&v109 = v15;
  *(&v109 + 1) = v17;
  v93 = sub_21BB41FA4();
  v18 = sub_21BE27DBC();
  v20 = v19;
  LOBYTE(v17) = v21;
  sub_21BE27C0C();
  v22 = sub_21BE27D9C();
  v24 = v23;
  LOBYTE(ObjCClassFromMetadata) = v25;

  sub_21BBC7C7C(v18, v20, v17 & 1);

  v86 = sub_21BE27D8C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_21BBC7C7C(v22, v24, ObjCClassFromMetadata & 1);

  LOBYTE(v20) = sub_21BE27B8C();
  v32 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v20)
  {
    v32 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v29 & 1;
  v108 = v29 & 1;
  v107 = 0;
  v42 = &v5[*(v90 + 36)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
  v43 = *(v90 + 28);
  v88 = sub_21BE27D7C();
  v44 = *(v88 - 8);
  v87 = *(v44 + 56);
  v89 = v44 + 56;
  v87(v42 + v43, 1, 1, v88);
  *v42 = swift_getKeyPath();
  *v5 = v86;
  *(v5 + 1) = v27;
  v5[16] = v41;
  *(v5 + 3) = v31;
  v5[32] = v32;
  *(v5 + 5) = v34;
  *(v5 + 6) = v36;
  *(v5 + 7) = v38;
  *(v5 + 8) = v40;
  v5[72] = 0;
  v45 = sub_21BE2832C();
  KeyPath = swift_getKeyPath();
  v47 = v94;
  sub_21BBB7D84(v5, v94, &qword_27CDB7CC8, &unk_21BE398A0);
  v48 = (v47 + *(v96 + 36));
  *v48 = KeyPath;
  v48[1] = v45;
  v49 = v99;
  sub_21BBB7D84(v47, v99, &qword_27CDB7CD0, &qword_21BE3E530);
  *(v49 + *(v92 + 36)) = 256;
  sub_21BE2869C();
  sub_21BE2725C();
  v50 = v49;
  v51 = v98;
  sub_21BBB7D84(v50, v98, &qword_27CDB8EF8, &qword_21BE3E538);
  v52 = (v51 + *(v97 + 36));
  v53 = v114;
  v52[4] = v113;
  v52[5] = v53;
  v52[6] = v115;
  v54 = v110;
  *v52 = v109;
  v52[1] = v54;
  v55 = v112;
  v52[2] = v111;
  v52[3] = v55;
  v56 = v100;
  sub_21BBB7D84(v51, v100, &qword_27CDB8F00, &qword_21BE3E540);
  v57 = [v91 bundleForClass_];
  v58 = sub_21BE2599C();
  v60 = v59;

  v106[0] = v58;
  v106[1] = v60;
  v61 = sub_21BE27DBC();
  v63 = v62;
  LOBYTE(v60) = v64;
  sub_21BE27CCC();
  v65 = sub_21BE27D9C();
  v67 = v66;
  LOBYTE(KeyPath) = v68;

  sub_21BBC7C7C(v61, v63, v60 & 1);

  sub_21BE2832C();
  v69 = sub_21BE27D4C();
  v71 = v70;
  v73 = v72;
  v75 = v74;

  sub_21BBC7C7C(v65, v67, KeyPath & 1);

  v76 = v103;
  v77 = &v103[*(v102 + 36)];
  v87(v77 + *(v90 + 28), 1, 1, v88);
  *v77 = swift_getKeyPath();
  *v76 = v69;
  *(v76 + 8) = v71;
  *(v76 + 16) = v73 & 1;
  *(v76 + 24) = v75;
  v78 = v101;
  sub_21BBA3854(v56, v101, &qword_27CDB8F00, &qword_21BE3E540);
  v79 = v104;
  sub_21BBA3854(v76, v104, &qword_27CDB5CE8, &unk_21BE363C0);
  v80 = v105;
  sub_21BBA3854(v78, v105, &qword_27CDB8F00, &qword_21BE3E540);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8F08, &qword_21BE3E578);
  v82 = v80 + v81[12];
  *v82 = 0;
  *(v82 + 8) = 1;
  sub_21BBA3854(v79, v80 + v81[16], &qword_27CDB5CE8, &unk_21BE363C0);
  v83 = v80 + v81[20];
  *v83 = 0;
  *(v83 + 8) = 1;
  sub_21BB3A4CC(v76, &qword_27CDB5CE8, &unk_21BE363C0);
  sub_21BB3A4CC(v56, &qword_27CDB8F00, &qword_21BE3E540);
  sub_21BB3A4CC(v79, &qword_27CDB5CE8, &unk_21BE363C0);
  return sub_21BB3A4CC(v78, &qword_27CDB8F00, &qword_21BE3E540);
}

uint64_t sub_21BCAD804(uint64_t a1)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EC8, &unk_21BE3E4A8);
  MEMORY[0x21CF036E0](&v9, v2);
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  sub_21BCAE768(a1, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190, MEMORY[0x277D83980]);
  sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268, MEMORY[0x277D85378]);
  sub_21BCAE70C();
  return sub_21BE285BC();
}

uint64_t sub_21BCAD988(uint64_t a1)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EC8, &unk_21BE3E4A8);
  MEMORY[0x21CF036E0](&v9, v2);
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  sub_21BCAE768(a1, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190, MEMORY[0x277D83980]);
  sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268, MEMORY[0x277D85378]);
  sub_21BCAE70C();
  return sub_21BE285BC();
}

uint64_t sub_21BCADB0C@<X0>(void **a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
  sub_21BE2856C();
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyPictureStore(0);
  sub_21BBC7324(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore, protocol conformance descriptor for AsyncStore<A>);

  result = sub_21BE270CC();
  *a3 = v4;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = result;
  a3[5] = v6;
  return result;
}

uint64_t sub_21BCADC2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E88, &qword_21BE3E468);
  sub_21BB3B038(&qword_27CDB8E90, &qword_27CDB8E88, &qword_21BE3E468, MEMORY[0x277CE14C0]);
  return sub_21BE27D1C();
}

uint64_t sub_21BCADCF4(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
  return sub_21BE2854C();
}

__n128 sub_21BCADD58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2771C();
  v23 = 1;
  v5 = sub_21BE275DC();
  v22 = 0;
  sub_21BCADEB8(a1, &v17);
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  sub_21BBA3854(&v24, &v15, &qword_27CDB5DE0, &qword_21BE337F0);
  sub_21BB3A4CC(v28, &qword_27CDB5DE0, &qword_21BE337F0);
  *&v21[7] = v24;
  *&v21[23] = v25;
  *&v21[39] = v26;
  *&v21[55] = v27;
  v6 = v22;
  v7 = v23;
  v8 = *a1;
  v17 = *(a1 + 8);
  *&v18 = *(a1 + 24);
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
  sub_21BE2856C();
  v10 = *v21;
  *(a2 + 57) = *&v21[16];
  v11 = *&v21[48];
  *(a2 + 73) = *&v21[32];
  *(a2 + 89) = v11;
  result = v15;
  v13 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = v6;
  v14 = *&v21[63];
  *(a2 + 41) = v10;
  *(a2 + 104) = v14;
  *(a2 + 112) = v9;
  *(a2 + 120) = result;
  *(a2 + 136) = v13;
  return result;
}

uint64_t sub_21BCADEB8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27CDB4E58 != -1)
  {
    v21 = a1;
    swift_once();
    a1 = v21;
  }

  if (byte_27CDD41B0)
  {
    v3 = 48.0;
  }

  else
  {
    v3 = 46.0;
  }

  v4 = *a1;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v22 = v4;
  v23 = sub_21BE2727C();
  v24 = v5;
  sub_21BCAE8D0(v22);
  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  sub_21BE2832C();
  v11 = sub_21BE27D4C();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v6, v8, v10 & 1);

  *a2 = v3;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v24;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15 & 1;
  *(a2 + 56) = v17;
  v18 = v23;
  v19 = v22;
  sub_21BBA4A38(v11, v13, v15 & 1);

  sub_21BBC7C7C(v11, v13, v15 & 1);
}

uint64_t sub_21BCAE0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v14 = *(v1 + 24);
  v6 = v14;
  v15 = v4;
  v16 = *(v1 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *(v7 + 48) = *(v1 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 48) = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v17 = 0;
  *a1 = 1;
  *(a1 + 8) = sub_21BCAE8C8;
  *(a1 + 16) = v8;
  *(a1 + 24) = sub_21BCAE868;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 0;
  v10 = v3;
  sub_21BBC7C94(&v15, v13);

  sub_21BBA3854(&v14, v13, &qword_27CDB8E30, &qword_21BE3E330);
  sub_21BBA3854(&v16, v13, &qword_27CDB8F20, &unk_21BE3E660);
  v11 = v10;
  sub_21BBC7C94(&v15, v13);

  sub_21BBA3854(&v14, v13, &qword_27CDB8E30, &qword_21BE3E330);
  return sub_21BBA3854(&v16, v13, &qword_27CDB8F20, &unk_21BE3E660);
}

unint64_t sub_21BCAE260()
{
  result = qword_27CDB8E70;
  if (!qword_27CDB8E70)
  {
    result = swift_getWitnessTable(byte_21BE3E418, &type metadata for ListOfContacts, v0, v1);
    atomic_store(result, &qword_27CDB8E70);
  }

  return result;
}

id sub_21BCAE31C()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

unint64_t sub_21BCAE444()
{
  result = qword_27CDB8E78;
  if (!qword_27CDB8E78)
  {
    result = swift_getWitnessTable(byte_21BE44D0C, &type metadata for ContactItem, v0, v1);
    atomic_store(result, &qword_27CDB8E78);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21BCAE4BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21BCAE504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BCAE568()
{
  result = qword_27CDB8E80;
  if (!qword_27CDB8E80)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E58, &unk_21BE3E338);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E08, &qword_21BE3E2E0);
    v4[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E30, &qword_21BE3E330);
    v4[4] = sub_21BCABEE0();
    v4[5] = sub_21BCAC0C4();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8E80);
  }

  return result;
}

unint64_t sub_21BCAE688()
{
  result = qword_27CDB8ED8;
  if (!qword_27CDB8ED8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8ED0, &qword_21BE3E4E8);
    v4[0] = sub_21BCAE70C();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27CDB8ED8);
  }

  return result;
}

unint64_t sub_21BCAE70C()
{
  result = qword_27CDB8EE0;
  if (!qword_27CDB8EE0)
  {
    result = swift_getWitnessTable(byte_21BE3E5E0, &type metadata for FamilyMemberContactCell, v0, v1);
    atomic_store(result, &qword_27CDB8EE0);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21BCAE8D0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  v3 = [a1 contact];
  if (v3)
  {
    v4 = 1000;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
    v6 = [a1 firstName];
    [v5 setFirstName_];

    v7 = [a1 lastName];
    [v5 setLastName_];

    v3 = v5;
    v4 = 0;
  }

  v8 = v3;
  [v2 setStyle_];
  v9 = [v2 stringFromContact_];

  if (v9)
  {
    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = sub_21BB41E7C(v10, v12);
  v15 = v14;

  if (v15)
  {
  }

  else
  {
    v16 = [a1 appleID];
    if (v16)
    {
      v17 = v16;
      v13 = sub_21BE28A0C();
    }

    else
    {

      return 0;
    }
  }

  return v13;
}

uint64_t sub_21BCAEB64()
{
  v1 = v0;
  v2 = 0;
  v176 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v157 = &v141 - v4;
  v152 = sub_21BE26A4C();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v163 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for TapToRadarDraft(0);
  v153 = *(v150 - 8);
  v6 = MEMORY[0x28223BE20](v150);
  v155 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v7;
  MEMORY[0x28223BE20](v6);
  v156 = &v141 - v8;
  v9 = sub_21BE25ADC();
  v168 = *(v9 - 8);
  v169 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BE25D6C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21BE25D1C();
  v158 = *(v16 - 8);
  v159 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21BE25B9C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v147 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v146 = &v141 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v141 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v148 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v149 = &v141 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v162 = &v141 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v170 = &v141 - v35;
  MEMORY[0x28223BE20](v34);
  v165 = v20;
  v36 = *(v20 + 56);
  v167 = &v141 - v37;
  v160 = v36;
  v161 = v20 + 56;
  v36();
  v38 = UIImagePNGRepresentation(*(v1 + OBJC_IVAR___FamilySuggestionsTapToRadar_screenshot));
  v166 = v19;
  if (v38)
  {
    v143 = v13;
    v144 = v12;
    v145 = v1;
    v39 = v38;
    v40 = sub_21BE25BFC();
    v42 = v41;

    v142 = objc_opt_self();
    v43 = [v142 defaultManager];
    v44 = [v43 URLsForDirectory:13 inDomains:1];

    v45 = sub_21BE28C3C();
    if (*(v45 + 16))
    {
      i = 0;
      (*(v165 + 16))(v26, v45 + ((*(v165 + 80) + 32) & ~*(v165 + 80)), v19);

      v172 = 0;
      v173 = 0xE000000000000000;
      sub_21BE295EC();
      sub_21BE25D0C();
      sub_21BCB0370(&qword_27CDB8FD0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v46 = v159;
      v47 = sub_21BE2992C();
      v49 = v48;

      v172 = v47;
      v173 = v49;
      (*(v158 + 8))(v18, v46);
      MEMORY[0x21CF03CA0](95, 0xE100000000000000);
      sub_21BE25D5C();
      sub_21BCB0370(&unk_27CDB8FD8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v50 = v144;
      v51 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v51);

      (*(v143 + 8))(v15, v50);
      MEMORY[0x21CF03CA0](0xD00000000000001CLL, 0x800000021BE5B700);
      v53 = v168;
      v52 = v169;
      (*(v168 + 104))(v11, *MEMORY[0x277CC91D8], v169);
      sub_21BB41FA4();
      v54 = v146;
      sub_21BE25B8C();
      (*(v53 + 8))(v11, v52);

      v55 = [v142 defaultManager];
      v56 = sub_21BE25B2C();
      v172 = 0;
      LODWORD(v52) = [v55 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:0 error:&v172];

      if (v52)
      {
        v57 = v172;
        v2 = i;
      }

      else
      {
        v59 = v172;
        v60 = sub_21BE25A8C();

        swift_willThrow();
        v2 = 0;
      }

      v1 = v145;
      v61 = v40;
      sub_21BE25C0C();
      v63 = v165;
      v62 = v166;
      v58 = v170;
      if (v2)
      {

        v2 = 0;
      }

      sub_21BBBEF94(v61, v42);
      (*(v63 + 8))(v26, v62);
      v64 = v167;
      sub_21BC12FE4(v167);
      (*(v63 + 32))(v64, v54, v62);
      (v160)(v64, 0, 1, v62);
    }

    else
    {
      sub_21BBBEF94(v40, v42);

      v58 = v170;
      v1 = v145;
    }
  }

  else
  {
    v58 = v170;
  }

  v172 = 0;
  v173 = 0xE000000000000000;
  v65 = *(v1 + OBJC_IVAR___FamilySuggestionsTapToRadar_suggestions);
  if (v65 >> 62)
  {
    goto LABEL_34;
  }

  v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v2; v66; i = v2)
  {
    v2 = 0;
    v168 = v65 & 0xFFFFFFFFFFFFFF8;
    v169 = v65 & 0xC000000000000001;
    while (1)
    {
      if (v169)
      {
        v69 = MEMORY[0x21CF047C0](v2, v65);
      }

      else
      {
        if (v2 >= *(v168 + 16))
        {
          goto LABEL_33;
        }

        v69 = *(v65 + 8 * v2 + 32);
      }

      v58 = v69;
      v70 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v2)
      {
        MEMORY[0x21CF03CA0](2570, 0xE200000000000000);
      }

      v174 = 0;
      v175 = 0xE000000000000000;
      sub_21BE295EC();
      MEMORY[0x21CF03CA0](0x6974736567677553, 0xEC00000023206E6FLL);
      v171 = (v2 + 1);
      v71 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v71);

      MEMORY[0x21CF03CA0](0x79616C707369640ALL, 0xEE00203A656D614ELL);
      v72 = [v58 displayName];
      if (v72)
      {
        v73 = v72;
        v74 = sub_21BE28A0C();
        v76 = v75;
      }

      else
      {
        v76 = 0xE300000000000000;
        v74 = 7104878;
      }

      MEMORY[0x21CF03CA0](v74, v76);

      MEMORY[0x21CF03CA0](0x3A656C646E61680ALL, 0xE900000000000020);
      v77 = [v58 handle];
      if (v77)
      {
        v78 = v77;
        v79 = sub_21BE28A0C();
        v81 = v80;
      }

      else
      {
        v81 = 0xE300000000000000;
        v79 = 7104878;
      }

      MEMORY[0x21CF03CA0](v79, v81);

      MEMORY[0x21CF03CA0](0xD000000000000015, 0x800000021BE5B310);
      v82 = [v58 contact];
      if (v82)
      {
        v83 = v82;
        v84 = [v82 identifier];

        v68 = sub_21BE28A0C();
        v67 = v85;
      }

      else
      {
        v67 = 0xE300000000000000;
        v68 = 7104878;
      }

      MEMORY[0x21CF03CA0](v68, v67);

      MEMORY[0x21CF03CA0](v174, v175);

      ++v2;
      v58 = v170;
      if (v70 == v66)
      {
        v86 = v172;
        v87 = v173;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v66 = sub_21BE2951C();
  }

  v86 = 0;
  v87 = 0xE000000000000000;
LABEL_36:
  v174 = 0;
  v175 = 0xE000000000000000;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD00000000000027DLL, 0x800000021BE5B380);
  MEMORY[0x21CF03CA0](v86, v87);

  v88 = v174;
  v89 = v175;
  sub_21BBF0D04(v167, v58);
  v90 = v165;
  v91 = v166;
  v92 = (v165 + 48);
  v93 = *(v165 + 48);
  if (v93(v58, 1, v166) == 1)
  {
    sub_21BC12FE4(v58);
    v94 = MEMORY[0x277D84F90];
  }

  else
  {
    v95 = *(v90 + 32);
    v170 = v92;
    v96 = v93;
    v97 = v147;
    v95(v147, v58, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC8, qword_21BE3E6B0);
    v98 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_21BE32770;
    v99 = v97;
    v93 = v96;
    v95((v94 + v98), v99, v91);
  }

  v100 = v156;
  v101 = v150;
  v102 = &v156[*(v150 + 44)];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120);
  (*(v158 + 56))(&v102[*(v103 + 36)], 1, 1, v159);
  *v102 = 0x7349664F656D6954;
  *(v102 + 1) = 0xEB00000000657573;
  *v100 = 0x4449656C646E7542;
  *(v100 + 8) = 0xE800000000000000;
  *(v100 + 16) = 0;
  *(v100 + 24) = 0;
  *(v100 + 32) = xmmword_21BE3E680;
  *(v100 + 48) = 0x800000021BE5B600;
  *(v100 + 56) = xmmword_21BE3E690;
  strcpy((v100 + 72), "Classification");
  *(v100 + 87) = -18;
  *(v100 + 88) = 4;
  *(v100 + 96) = 0x6375646F72706552;
  *(v100 + 104) = 0xEF7974696C696269;
  *(v100 + 112) = 5;
  *(v100 + 120) = 0x656C746954;
  *(v100 + 128) = 0xE500000000000000;
  *(v100 + 136) = 0xD000000000000042;
  *(v100 + 144) = 0x800000021BE5B330;
  *(v100 + 152) = 0x7470697263736544;
  *(v100 + 160) = 0xEB000000006E6F69;
  *(v100 + 168) = v88;
  *(v100 + 176) = v89;
  *(v100 + 184) = 0x7364726F7779654BLL;
  *(v100 + 192) = 0xE800000000000000;
  *(v100 + 200) = &unk_282D867C8;
  v104 = (v100 + v101[12]);
  *v104 = 0x656D686361747441;
  v104[1] = 0xEB0000000073746ELL;
  v104[2] = v94;
  v105 = (v100 + v101[13]);
  *v105 = 0xD000000000000011;
  v105[1] = 0x800000021BE5B660;
  v106 = MEMORY[0x277D84F90];
  v105[2] = MEMORY[0x277D84F90];
  v107 = (v100 + v101[14]);
  *v107 = 0xD000000000000014;
  v107[1] = 0x800000021BE5B680;
  v107[2] = &unk_282D867F0;
  v108 = (v100 + v101[15]);
  strcpy(v108, "DeleteOnAttach");
  v108[15] = -18;
  v108[16] = 0;
  v109 = (v100 + v101[16]);
  *v109 = 0x4449656369766544;
  v109[1] = 0xE900000000000073;
  v109[2] = v106;
  v110 = v100 + v101[17];
  strcpy(v110, "DeviceClasses");
  *(v110 + 14) = -4864;
  *(v110 + 16) = v106;
  v111 = v100 + v101[18];
  strcpy(v111, "DeviceModels");
  *(v111 + 13) = 0;
  *(v111 + 14) = -5120;
  *(v111 + 16) = v106;
  v112 = (v100 + v101[19]);
  *v112 = 0xD000000000000016;
  v112[1] = 0x800000021BE5B6A0;
  v112[2] = 0;
  v113 = v100 + v101[20];
  *v113 = 0xD00000000000001ALL;
  *(v113 + 8) = 0x800000021BE5B6C0;
  *(v113 + 16) = 0;
  v114 = v100 + v101[21];
  *v114 = 0x676169446F747541;
  *(v114 + 8) = 0xEF73636974736F6ELL;
  *(v114 + 16) = 0;
  v115 = (v100 + v101[22]);
  *v115 = 0xD00000000000001BLL;
  v115[1] = 0x800000021BE5B6E0;
  v115[2] = v106;
  v116 = (v100 + v101[23]);
  *v116 = 0xD000000000000018;
  v116[1] = 0x800000021BE5B620;
  v116[2] = 0;
  v116[3] = 0;
  v117 = (v100 + v101[24]);
  *v117 = 0xD000000000000012;
  v117[1] = 0x800000021BE5B640;
  v117[2] = 0;
  v117[3] = 0;
  v118 = v162;
  v119 = i;
  sub_21BD847BC(v162);
  if (v119)
  {

    v120 = 1;
  }

  else
  {
    v120 = 0;
  }

  v121 = v163;
  v122 = v166;
  v123 = v149;
  (v160)(v118, v120, 1, v166);
  sub_21BE260DC();
  sub_21BBF0D04(v118, v123);
  v124 = sub_21BE26A2C();
  v125 = sub_21BE28FFC();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v174 = v127;
    *v126 = 136315138;
    v128 = v148;
    sub_21BBF0D04(v123, v148);
    if (v93(v128, 1, v122) == 1)
    {
      v129 = v128;
      v130 = 7104878;
      sub_21BC12FE4(v129);
      v131 = 0xE300000000000000;
    }

    else
    {
      v133 = v128;
      v130 = sub_21BE25AFC();
      v131 = v134;
      (*(v165 + 8))(v133, v122);
    }

    v132 = v157;
    sub_21BC12FE4(v123);
    v135 = sub_21BB3D81C(v130, v131, &v174);

    *(v126 + 4) = v135;
    _os_log_impl(&dword_21BB35000, v124, v125, "Opening TTR with URL %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v127);
    MEMORY[0x21CF05C50](v127, -1, -1);
    MEMORY[0x21CF05C50](v126, -1, -1);

    (*(v151 + 8))(v163, v152);
    v118 = v162;
  }

  else
  {

    sub_21BC12FE4(v123);
    (*(v151 + 8))(v121, v152);
    v132 = v157;
  }

  v136 = sub_21BE28DAC();
  (*(*(v136 - 8) + 56))(v132, 1, 1, v136);
  v137 = v155;
  sub_21BCB015C(v100, v155);
  v138 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v139 = swift_allocObject();
  *(v139 + 16) = 0;
  *(v139 + 24) = 0;
  sub_21BCB01C0(v137, v139 + v138);
  sub_21BC54908(0, 0, v132, &unk_21BE3E6A8, v139);

  sub_21BC12FE4(v118);
  sub_21BCB0314(v100);
  return sub_21BC12FE4(v167);
}

uint64_t sub_21BCAFF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD84A0C();
}

void __swiftcall FamilySuggestionsTapToRadar.init()(FamilySuggestionsTapToRadar *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_21BCB015C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCB01C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCB0224()
{
  type metadata accessor for TapToRadarDraft(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BCAFF8C();
}

uint64_t sub_21BCB0314(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BCB0370(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CommLimitsManagedCell(uint64_t a1)
{
  result = qword_27CDB8FF0;
  if (!qword_27CDB8FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCB042C(uint64_t a1)
{
  sub_21BCB04E8(319);
  if (v1 <= 0x3F)
  {
    sub_21BCB057C(319);
    if (v2 <= 0x3F)
    {
      sub_21BCB05D4();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CommLimitsItem(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BCB04E8(uint64_t a1)
{
  if (!qword_27CDB9000)
  {
    sub_21BBDAF04();
    sub_21BCB11C0(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
    v1 = sub_21BE2728C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB9000);
    }
  }
}

void sub_21BCB057C(uint64_t a1)
{
  if (!qword_27CDB56D8)
  {
    type metadata accessor for ChecklistStateVars(255);
    v1 = sub_21BE26E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB56D8);
    }
  }
}

void sub_21BCB05D4()
{
  if (!qword_280BD69C0)
  {
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD69C0);
    }
  }
}

uint64_t sub_21BCB0640()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

id sub_21BCB0780()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

id sub_21BCB0880()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v0 + *(type metadata accessor for CommLimitsManagedCell(0) + 36);
    v3 = *&v2[*(type metadata accessor for CommLimitsItem(0) + 24)];
    v4 = v1;
    v5 = [v4 profilePictureForFamilyMember:v3 pictureDiameter:36.0];
    if (v5)
    {
      v6 = v5;
      v7 = sub_21BE25BFC();
      v9 = v8;

      v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v11 = sub_21BE25BCC();
      v12 = [v10 initWithData_];

      sub_21BBBEF94(v7, v9);
    }

    else
    {

      return 0;
    }

    return v12;
  }

  else
  {
    sub_21BBDAF04();
    sub_21BCB11C0(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

void sub_21BCB09CC(void *a1)
{
  v3 = v1 + *(type metadata accessor for CommLimitsManagedCell(0) + 36);
  v4 = [*(v3 + *(type metadata accessor for CommLimitsItem(0) + 24)) dsid];
  if (v4)
  {
    if (a1)
    {
      v10 = v4;
      v5 = objc_opt_self();
      v6 = a1;
      v7 = [v5 communicationLimitsViewControllerForDSID_];
      [v6 pushViewController:v7 animated:1];

      v8 = sub_21BCB0640();
      swift_beginAccess();
      if (*(v8 + 23))
      {

        *(v8 + 23) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_21BCB11C0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
        sub_21BE25F0C();
      }
    }

    else
    {
    }
  }
}

id sub_21BCB0BE8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CommLimitsManagedCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BCB1208(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommLimitsManagedCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BCB1054(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v19 = v8;
  sub_21BE283EC();
  v9 = v17;
  v10 = v18;
  if (qword_27CDB4EA0 != -1)
  {
    swift_once();
  }

  v16 = qword_27CDB7E50;
  v11 = sub_21BCB0640();
  swift_getKeyPath();
  v17 = v11;
  sub_21BCB11C0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE25F1C();

  swift_beginAccess();
  v12 = *(v11 + 23);

  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = sub_21BCB10B8;
  *(a1 + 24) = v7;
  v13 = v16;
  *(a1 + 32) = v16;
  *(a1 + 40) = v12;

  return v13;
}

uint64_t sub_21BCB0E44@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CommLimitsManagedCell(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  v28 = a2[6];
  v29 = v10;
  v13 = a2[8];
  v14 = a2[9];
  v26 = v11;
  v27 = v13;

  v25 = sub_21BCB0780();
  sub_21BCB1208(a2, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommLimitsManagedCell);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_21BCB1054(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v17 = a1;
  v18 = sub_21BCB0880();
  v19 = *(v7 + 44);
  a3[13] = type metadata accessor for CommLimitsItem(0);
  a3[14] = sub_21BCB11C0(&qword_27CDB9008, type metadata accessor for CommLimitsItem, asc_21BE50EE8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 10);
  result = sub_21BCB1208(a2 + v19, boxed_opaque_existential_1, type metadata accessor for CommLimitsItem);
  v22 = v26;
  *a3 = v29;
  a3[1] = v22;
  v23 = v27;
  a3[2] = v28;
  a3[3] = v12;
  a3[4] = v23;
  a3[5] = v14;
  a3[6] = v25;
  a3[7] = sub_21BCB1138;
  a3[8] = v16;
  a3[9] = v18;
  a3[15] = 0;
  return result;
}

uint64_t sub_21BCB1054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsManagedCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCB10B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for CommLimitsManagedCell(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BCB0E44(a1, v6, a2);
}

uint64_t sub_21BCB11C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BCB1208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BCB1290()
{
  result = qword_27CDB9010;
  if (!qword_27CDB9010)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9018, &qword_21BE3E768);
    v4[0] = sub_21BCB131C();
    v4[1] = sub_21BCB1380();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9010);
  }

  return result;
}

unint64_t sub_21BCB131C()
{
  result = qword_27CDB9020;
  if (!qword_27CDB9020)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9028, &qword_21BE3E770);
    result = swift_getWitnessTable(byte_21BE477F8, v3, v0, v1);
    atomic_store(result, &qword_27CDB9020);
  }

  return result;
}

unint64_t sub_21BCB1380()
{
  result = qword_27CDB9030;
  if (!qword_27CDB9030)
  {
    result = swift_getWitnessTable(aIdF, &type metadata for NotifyOnConditionalAppear, v0, v1);
    atomic_store(result, &qword_27CDB9030);
  }

  return result;
}

uint64_t type metadata accessor for FamilyRowView(uint64_t a1)
{
  result = qword_27CDB9048;
  if (!qword_27CDB9048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCB1448(uint64_t a1)
{
  sub_21BCB1514(319, &qword_27CDB9058, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_21BCB1514(319, &qword_27CDB9060, MEMORY[0x277CE0358]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BCB1514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BCB1584@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D48, &qword_21BE39B88);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FamilyRowView(0);
  sub_21BBA3854(v1 + *(v10 + 20), v9, &qword_27CDB7D48, &qword_21BE39B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE26E6C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_21BCB178C(void *a1@<X8>)
{
  v46 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90B0, &qword_21BE3E8A0);
  MEMORY[0x28223BE20](v45);
  v2 = &v36 - v1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90B8, &qword_21BE3E8A8);
  MEMORY[0x28223BE20](v43);
  v44 = (&v36 - v3);
  v4 = sub_21BE2838C();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE26A4C();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_21BE25B9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21BE26E6C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  sub_21BCB1584(&v36 - v19);
  (*(v15 + 104))(v18, *MEMORY[0x277CDF3C0], v14);
  sub_21BE26E5C();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (qword_280BD86B0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  sub_21BE25B7C();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21BB3A4CC(v10, &unk_27CDB57F0, &qword_21BE328A0);
LABEL_6:
    *v2 = sub_21BE275DC();
    *(v2 + 1) = 0;
    v2[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C0, &qword_21BE3E8F8);
    sub_21BCB1F50(&v2[*(v23 + 44)]);
    sub_21BBA3854(v2, v44, &qword_27CDB90B0, &qword_21BE3E8A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C8, &qword_21BE3E900);
    sub_21BCB2D08();
    sub_21BB3B038(&qword_27CDB90D8, &qword_27CDB90B0, &qword_21BE3E8A0, MEMORY[0x277CE1138]);
    sub_21BE2784C();
    sub_21BB3A4CC(v2, &qword_27CDB90B0, &qword_21BE3E8A0);
    return;
  }

  v22 = v42;
  (*(v12 + 32))(v42, v10, v11);
  v24 = sub_21BE25BAC();
  v26 = v25;
  v27 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v28 = sub_21BE25BCC();
  v29 = [v27 initWithData_];

  sub_21BBBEF94(v24, v26);
  (*(v12 + 8))(v22, v11);
  if (!v29)
  {
    goto LABEL_6;
  }

  v30 = v29;
  sub_21BE2836C();
  v32 = v36;
  v31 = v37;
  v33 = v38;
  (*(v37 + 104))(v36, *MEMORY[0x277CE0FE0], v38);
  v34 = sub_21BE283CC();

  (*(v31 + 8))(v32, v33);
  v35 = v44;
  *v44 = v34;
  v35[1] = 0;
  *(v35 + 8) = 1;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C8, &qword_21BE3E900);
  sub_21BCB2D08();
  sub_21BB3B038(&qword_27CDB90D8, &qword_27CDB90B0, &qword_21BE3E8A0, MEMORY[0x277CE1138]);
  sub_21BE2784C();
}

uint64_t sub_21BCB1F50@<X0>(void *a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E0, &qword_21BE3E908);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E8, &qword_21BE3EFE0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v13 = sub_21BE289CC();
  [v12 initWithType_];

  sub_21BE269CC();
  sub_21BB3B038(&qword_27CDB90F0, &qword_27CDB90E0, &qword_21BE3E908, MEMORY[0x277D7EA70]);
  sub_21BE27DCC();
  (*(v2 + 8))(v4, v1);
  v14 = *(v6 + 16);
  v14(v9, v11, v5);
  v15 = v22;
  *v22 = 0;
  *(v15 + 8) = 1;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90F8, &unk_21BE3E910);
  v14(&v16[*(v17 + 48)], v9, v5);
  v18 = &v16[*(v17 + 64)];
  *v18 = 0;
  v18[8] = 1;
  v19 = *(v6 + 8);
  v19(v11, v5);
  return (v19)(v9, v5);
}

uint64_t sub_21BCB2224@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2626C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9068, &qword_21BE3E7F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  *v9 = sub_21BE275DC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9070, &qword_21BE3E800);
  sub_21BCB2408(v1, &v9[*(v10 + 44)]);
  if (*v1)
  {
    v11 = *(v1 + 8);
    v12 = *v1;
    sub_21BE2909C();
    if ((v11 - 1) < 2)
    {
      v13 = sub_21BE2625C();
    }

    else
    {
      if ((v11 - 3) >= 2)
      {
LABEL_8:

        (*(v4 + 8))(v6, v3);
        goto LABEL_9;
      }

      v13 = sub_21BE2624C();
    }

    v11 = v13;
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:
  sub_21BBB7D84(v9, a1, &qword_27CDB9068, &qword_21BE3E7F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9078, &qword_21BE3E808);
  v15 = a1 + *(result + 36);
  *v15 = v11;
  *(v15 + 8) = 0;
  return result;
}

uint64_t sub_21BCB2408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_21BE2788C();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v87 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v80 - v6;
  v7 = sub_21BE2626C();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9080, &qword_21BE3E810);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v80 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9088, &qword_21BE3E818);
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9090, &qword_21BE3E820);
  MEMORY[0x28223BE20](v84);
  v17 = &v80 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9098, &qword_21BE3E828);
  v18 = MEMORY[0x28223BE20](v85);
  v92 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v91 = &v80 - v23;
  sub_21BCB178C(v12);
  if (*a1 && (v24 = *a1, v81 = v22, v25 = v13, v26 = v24, sub_21BE2909C(), v27 = sub_21BE2620C(), v26, v13 = v25, v22 = v81, (*(v82 + 8))(v9, v83), (v27 & 1) != 0))
  {
    sub_21BE2869C();
  }

  else
  {
    sub_21BE286AC();
  }

  sub_21BE26F2C();
  sub_21BBB7D84(v12, v15, &qword_27CDB9080, &qword_21BE3E810);
  v28 = &v15[*(v13 + 36)];
  v29 = *(&v119[8] + 8);
  *v28 = *(&v119[7] + 8);
  *(v28 + 1) = v29;
  *(v28 + 2) = *(&v119[9] + 8);
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BBB7D84(v15, v17, &qword_27CDB9088, &qword_21BE3E818);
  v30 = &v17[*(v84 + 36)];
  v31 = *(&v119[15] + 8);
  *(v30 + 4) = *(&v119[14] + 8);
  *(v30 + 5) = v31;
  *(v30 + 6) = *(&v119[16] + 8);
  v32 = *(&v119[11] + 8);
  *v30 = *(&v119[10] + 8);
  *(v30 + 1) = v32;
  v33 = *(&v119[13] + 8);
  *(v30 + 2) = *(&v119[12] + 8);
  *(v30 + 3) = v33;
  sub_21BBB7D84(v17, v22, &qword_27CDB9090, &qword_21BE3E820);
  v22[*(v85 + 36)] = 1;
  sub_21BBB7D84(v22, v91, &qword_27CDB9098, &qword_21BE3E828);
  v34 = *(a1 + 8);
  v35 = *(a1 + 16);
  v36 = *(a1 + 24);
  v98 = *a1;
  LOBYTE(v99) = v34;
  v100 = v35;
  v101 = v36;
  v37 = v98;

  v38 = sub_21BC27368();
  v40 = v39;
  v41 = v98;

  v98 = v38;
  v99 = v40;
  sub_21BB41FA4();
  v42 = sub_21BE27DBC();
  v44 = v43;
  v46 = v45;
  type metadata accessor for FamilyRowView(0);
  v47 = v86;
  sub_21BD205E0(v86);
  v48 = v87;
  sub_21BE2787C();
  LOBYTE(v38) = sub_21BE2786C();
  v49 = *(v88 + 8);
  v50 = v48;
  v51 = v89;
  v49(v50, v89);
  v49(v47, v51);
  if (v38)
  {
    sub_21BE282FC();
  }

  else
  {
    sub_21BE2832C();
  }

  v52 = sub_21BE27D4C();
  v86 = v52;
  v88 = v53;
  v89 = v54;
  v56 = v55;

  sub_21BBC7C7C(v42, v44, v46 & 1);

  KeyPath = swift_getKeyPath();
  v85 = KeyPath;
  v58 = swift_getKeyPath();
  v118 = v56 & 1;
  v59 = v56 & 1;
  LODWORD(v87) = v56 & 1;
  v116 = 0;
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v119[3] + 7) = *(&v119[20] + 8);
  *(&v119[4] + 7) = *(&v119[21] + 8);
  *(&v119[5] + 7) = *(&v119[22] + 8);
  *(&v119[6] + 7) = *(&v119[23] + 8);
  *(v119 + 7) = *(&v119[17] + 8);
  *(&v119[1] + 7) = *(&v119[18] + 8);
  *(&v119[2] + 7) = *(&v119[19] + 8);
  v61 = v91;
  v60 = v92;
  sub_21BBA3854(v91, v92, &qword_27CDB9098, &qword_21BE3E828);
  v62 = v60;
  v63 = v90;
  sub_21BBA3854(v62, v90, &qword_27CDB9098, &qword_21BE3E828);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90A0, &qword_21BE3E890);
  v65 = v63 + v64[12];
  *v65 = 0;
  *(v65 + 8) = 1;
  v66 = v63 + v64[16];
  v67 = v88;
  v68 = v89;
  *&v93 = v52;
  *(&v93 + 1) = v88;
  LOBYTE(v94) = v59;
  *(&v94 + 1) = *v117;
  DWORD1(v94) = *&v117[3];
  *(&v94 + 1) = v89;
  *&v95 = KeyPath;
  *(&v95 + 1) = 1;
  LOBYTE(v96) = 0;
  *(&v96 + 1) = *v115;
  DWORD1(v96) = *&v115[3];
  *(&v96 + 1) = v58;
  v97[0] = 1;
  *&v97[1] = v119[0];
  *&v97[49] = v119[3];
  *&v97[33] = v119[2];
  *&v97[17] = v119[1];
  *&v97[112] = *(&v119[6] + 15);
  *&v97[97] = v119[6];
  *&v97[81] = v119[5];
  *&v97[65] = v119[4];
  v69 = v93;
  v70 = v94;
  v71 = v96;
  *(v66 + 32) = v95;
  *(v66 + 48) = v71;
  *v66 = v69;
  *(v66 + 16) = v70;
  v72 = *v97;
  v73 = *&v97[16];
  v74 = *&v97[48];
  *(v66 + 96) = *&v97[32];
  *(v66 + 112) = v74;
  *(v66 + 64) = v72;
  *(v66 + 80) = v73;
  v75 = *&v97[64];
  v76 = *&v97[80];
  v77 = *&v97[96];
  *(v66 + 176) = *&v97[112];
  *(v66 + 144) = v76;
  *(v66 + 160) = v77;
  *(v66 + 128) = v75;
  v78 = v63 + v64[20];
  *v78 = 0;
  *(v78 + 8) = 1;
  sub_21BBA3854(&v93, &v98, &qword_27CDB90A8, &qword_21BE3E898);
  sub_21BB3A4CC(v61, &qword_27CDB9098, &qword_21BE3E828);
  v112 = v119[4];
  v113 = v119[5];
  *v114 = v119[6];
  v108 = v119[0];
  v109 = v119[1];
  v110 = v119[2];
  v98 = v86;
  v99 = v67;
  LOBYTE(v100) = v87;
  *(&v100 + 1) = *v117;
  HIDWORD(v100) = *&v117[3];
  v101 = v68;
  v102 = v85;
  v103 = 1;
  v104 = 0;
  *v105 = *v115;
  *&v105[3] = *&v115[3];
  v106 = v58;
  v107 = 1;
  *&v114[15] = *(&v119[6] + 15);
  v111 = v119[3];
  sub_21BB3A4CC(&v98, &qword_27CDB90A8, &qword_21BE3E898);
  return sub_21BB3A4CC(v92, &qword_27CDB9098, &qword_21BE3E828);
}

unint64_t sub_21BCB2D08()
{
  result = qword_27CDB90D0;
  if (!qword_27CDB90D0)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB90C8, &qword_21BE3E900);
    v4[0] = MEMORY[0x277CE1078];
    v4[1] = MEMORY[0x277CE01B0];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB90D0);
  }

  return result;
}

unint64_t sub_21BCB2D8C()
{
  result = qword_27CDB9100;
  if (!qword_27CDB9100)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9078, &qword_21BE3E808);
    v4[0] = sub_21BB3B038(&qword_27CDB9108, &qword_27CDB9068, &qword_21BE3E7F8, MEMORY[0x277CE1138]);
    v4[1] = sub_21BCB2E44();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9100);
  }

  return result;
}

unint64_t sub_21BCB2E44()
{
  result = qword_27CDB9110;
  if (!qword_27CDB9110)
  {
    result = swift_getWitnessTable(byte_21BE49C30, &type metadata for BadgeModifier, v0, v1);
    atomic_store(result, &qword_27CDB9110);
  }

  return result;
}

id sub_21BCB2FC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryContactSetUpViewControllerWrapper.AAUICustodianSetupDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21BCB304C()
{
  result = qword_27CDB9128;
  if (!qword_27CDB9128)
  {
    result = swift_getWitnessTable(aF_1, &type metadata for RecoveryContactSetUpViewControllerWrapper, v0, v1);
    atomic_store(result, &qword_27CDB9128);
  }

  return result;
}

uint64_t sub_21BCB30AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecoveryContactSetUpViewControllerWrapper.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_21BCB30E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCB31D4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BCB3148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCB31D4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BCB31AC(uint64_t a1)
{
  sub_21BCB31D4();
  sub_21BE27ABC();
  __break(1u);
}

unint64_t sub_21BCB31D4()
{
  result = qword_27CDB9130;
  if (!qword_27CDB9130)
  {
    result = swift_getWitnessTable(byte_21BE3EA1C, &type metadata for RecoveryContactSetUpViewControllerWrapper, v0, v1);
    atomic_store(result, &qword_27CDB9130);
  }

  return result;
}

id sub_21BCB3228(uint64_t a1, void *a2, char a3)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a2;
  }

  else
  {

    sub_21BE28FEC();
    v10 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BBC9024(a2, 0);
    (*(v6 + 8))(v8, v5);
    a2 = v16;
  }

  if (a2)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CECA00]) initWithAccountManager_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9138, &qword_21BE3EAE8);
    sub_21BE27B1C();

    v12 = v16[2];
    v16[2] = v11;
    v13 = v11;

    return v13;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

_OWORD *sub_21BCB3464@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  v5 = v1[2];
  v20 = *v1;
  v21 = v4;
  v22[0] = v5;
  *(v22 + 9) = *(v1 + 41);
  v6 = *(v1 + 8);
  v23 = *(v1 + 40);
  v24 = v6;
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  sub_21BBC8120(&v24, v19);
  sub_21BBC8120(&v23, v19);
  sub_21BCB36E0(v2, v19);
  v9 = [v8 bundleForClass_];
  v10 = sub_21BE289CC();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 withConfiguration:0];

  if (v11)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v12 = [v8 bundleForClass_];
    v13 = sub_21BE2599C();
    v15 = v14;

    *(a1 + 104) = &type metadata for IcloudPlusDataItem;
    *(a1 + 112) = sub_21BBE4198();
    result = swift_allocObject();
    *(a1 + 72) = 0;
    *(a1 + 80) = result;
    v17 = v21;
    result[1] = v20;
    result[2] = v17;
    result[3] = v22[0];
    *(result + 57) = *(v22 + 9);
    v18 = v23;
    *a1 = v24;
    *(a1 + 16) = v18;
    *(a1 + 32) = v11;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = v13;
    *(a1 + 64) = v15;
    *(a1 + 120) = 0;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCB3718@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AgeRangeSharingView(0);
  sub_21BBA3854(v1 + *(v10 + 44), v9, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE27B0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21BCB3920@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_21BE283EC();
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  [objc_allocWithZone(type metadata accessor for ScreentimePasscodeListener(0)) init];
  sub_21BE283EC();
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  sub_21BE283EC();
  *(a3 + 40) = v14;
  *(a3 + 48) = v15;
  v6 = type metadata accessor for AgeRangeSharingView(0);
  v7 = v6[8];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[9];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = v6[10];
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  swift_storeEnumTagMultiPayload();
  v10 = v6[11];
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v11 = v6[12];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  result = swift_storeEnumTagMultiPayload();
  v13 = (a3 + v6[14]);
  *v13 = 0xD00000000000001DLL;
  v13[1] = 0x800000021BE5B930;
  *(a3 + v6[13]) = a2;
  *a3 = a1;
  return result;
}

uint64_t type metadata accessor for AgeRangeSharingView(uint64_t a1)
{
  result = qword_27CDB9140;
  if (!qword_27CDB9140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCB3B6C(void *a1)
{
  if (a1)
  {
    v1 = [a1 navigationController];
    if (v1)
    {
      v2 = v1;
    }
  }
}

double sub_21BCB3BE4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v96 = swift_allocBox();
  v77 = v3;
  type metadata accessor for AgeRangeSharingViewModel(0);
  v79 = sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);

  sub_21BE2864C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9168, &qword_21BE3ED30);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x28223BE20](v4);
  v88 = &v73 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9170, &unk_21BE3ED38);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v73 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5078, &unk_21BE31050);
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v94 = &v73 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9178, &qword_21BE3ED48);
  v80 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v73 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9180, &unk_21BE3ED50);
  MEMORY[0x28223BE20](v92);
  v10 = &v73 - v9;
  sub_21BCB4AFC(v1, &v73 - v9);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v82 = objc_opt_self();
  v83 = ObjCClassFromMetadata;
  v12 = [v82 bundleForClass_];
  v13 = sub_21BE2599C();
  v15 = v14;

  v105 = v13;
  v106 = v15;
  v76 = v2;
  v16 = *(v2 + 48);
  LOBYTE(v107) = *(v2 + 40);
  v108 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
  v74 = sub_21BB3B038(&qword_27CDB9188, &qword_27CDB9180, &unk_21BE3ED50, aY_2);
  v18 = sub_21BB41FA4();
  v75 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
  v19 = v96;
  sub_21BE280EC();

  v20 = sub_21BB3A4CC(v10, &qword_27CDB9180, &unk_21BE3ED50);
  v21 = v78;
  v22 = *(v78 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  (*(v22 + 16))(&v73 - v23, v77, v21);
  sub_21BE2862C();
  (*(v22 + 8))(v24, v21);
  v25 = v97;
  v26 = sub_21BE25D6C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v97 = v25;
  sub_21BE25F1C();

  v30 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  (*(v27 + 16))(v29, v25 + v30, v26);

  v31 = type metadata accessor for AgeRangeSharingView(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  sub_21BCBC8BC(v76, &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v35 = swift_allocObject();
  sub_21BCBC92C(&v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  *(v35 + ((v33 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v36 = v19;

  v97 = v92;
  v98 = MEMORY[0x277D837D0];
  v99 = v17;
  v100 = MEMORY[0x277CE0BD8];
  v101 = v74;
  v92 = v18;
  v102 = v18;
  v103 = v75;
  v104 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_21BCBEAF0(&qword_27CDB78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v39 = v95;
  v79 = v38;
  v40 = v93;
  sub_21BE281CC();

  (*(v27 + 8))(v29, v26);
  (v80[1])(v40, v39);
  sub_21BE28D7C();

  v41 = sub_21BE28D6C();
  v42 = swift_allocObject();
  v43 = MEMORY[0x277D85700];
  v42[2] = v41;
  v42[3] = v43;
  v42[4] = v36;
  v44 = sub_21BE28DAC();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = &v73 - v47;
  sub_21BE28D8C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v78 = sub_21BE2715C();
    v80 = &v73;
    v77 = *(v78 - 8);
    MEMORY[0x28223BE20](v78);
    v93 = v26;
    v76 = &v73 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_21BE295EC();

    v97 = 0xD000000000000035;
    v98 = 0x800000021BE5B970;
    v107 = 131;
    v50 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v50);

    MEMORY[0x28223BE20](v51);
    (*(v45 + 16))(&v73 - v47, &v73 - v47, v44);
    v52 = v76;
    sub_21BE2714C();
    (*(v45 + 8))(v48, v44);
    v53 = v85;
    v54 = v84;
    (*(v81 + 32))(v85, v94, v84);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5080, &qword_21BE3EDA0);
    v26 = v93;
    (*(v77 + 32))(&v53[*(v55 + 36)], v52, v78);
  }

  else
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5088, &unk_21BE31060);
    v57 = v85;
    v58 = &v85[*(v56 + 36)];
    v59 = sub_21BE2701C();
    v53 = v57;
    (*(v45 + 32))(&v58[*(v59 + 20)], &v73 - v47, v44);
    *v58 = &unk_21BE3ED98;
    *(v58 + 1) = v42;
    v54 = v84;
    (*(v81 + 32))(v57, v94, v84);
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9190, &qword_21BE3EDA8);
  v97 = v95;
  v98 = v26;
  v99 = OpaqueTypeConformance2;
  v100 = v79;
  v61 = swift_getOpaqueTypeConformance2();
  v97 = v54;
  v98 = v61;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_21BCBD140(&qword_27CDB9198, &qword_27CDB9190, &qword_21BE3EDA8, sub_21BCBCACC);
  v64 = v88;
  v65 = MEMORY[0x277D837D0];
  v66 = v87;
  sub_21BE2807C();

  (*(v86 + 8))(v53, v66);
  v67 = [v82 bundleForClass_];
  v68 = sub_21BE2599C();
  v70 = v69;

  v107 = v68;
  v108 = v70;
  v97 = v66;
  v98 = v65;
  v99 = v60;
  v100 = v62;
  v101 = MEMORY[0x277D837E0];
  v102 = v63;
  swift_getOpaqueTypeConformance2();
  v71 = v90;
  sub_21BE27E4C();

  (*(v89 + 8))(v64, v71);

  return result;
}

uint64_t sub_21BCB4AFC@<X0>(void *a1@<X0>, char *a3@<X8>)
{
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91C0, &qword_21BE3EE50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91C8, &qword_21BE3EE58);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v40 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91D0, &qword_21BE3EE60);
  v45 = *(v41 - 8);
  v12 = MEMORY[0x28223BE20](v41);
  v50 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91D8, &qword_21BE3EE68);
  v42 = *(v44 - 8);
  v16 = MEMORY[0x28223BE20](v44);
  v48 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91E0, &qword_21BE3EE70);
  v20 = sub_21BE288DC();
  v21 = sub_21BCBEAF0(&qword_27CDB91E8, MEMORY[0x277D4D7F8], MEMORY[0x277D4D7F0]);
  *&v54[0] = v20;
  *(&v54[0] + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v47 = v19;
  sub_21BE2860C();
  v52 = a1;
  sub_21BCB5C4C(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91F0, &qword_21BE3EE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91F8, &qword_21BE3EE80);
  sub_21BCBCF54();
  sub_21BCBD00C();
  v49 = v15;
  sub_21BE2861C();
  v22 = *a1;
  swift_getKeyPath();
  *&v54[0] = v22;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if ((*(v22 + 56) & 1) != 0 || *(v22 + 52) != 3)
  {
    MEMORY[0x28223BE20](v23);
    *(&v40 - 2) = a1;
    sub_21BCB6820(v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9230, &qword_21BE3EE98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9228, &qword_21BE3EE90);
    sub_21BCBD140(&qword_27CDB9238, &qword_27CDB9230, &qword_21BE3EE98, sub_21BCBD1C4);
    sub_21BCBD090();
    sub_21BE2861C();
    (*(v5 + 32))(v51, v7, v4);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v51;
  (*(v5 + 56))(v51, v24, 1, v4);
  v26 = v42;
  v27 = *(v42 + 16);
  v28 = v48;
  v29 = v44;
  v27(v48, v47, v44);
  v30 = v45;
  v40 = *(v45 + 16);
  v31 = v41;
  v40(v50, v49, v41);
  v32 = v25;
  v33 = v43;
  sub_21BBA3854(v32, v43, &qword_27CDB91C8, &qword_21BE3EE58);
  v34 = v46;
  v27(v46, v28, v29);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9280, &unk_21BE3EEC0);
  v36 = v50;
  v40(&v34[*(v35 + 48)], v50, v31);
  sub_21BBA3854(v33, &v34[*(v35 + 64)], &qword_27CDB91C8, &qword_21BE3EE58);
  sub_21BB3A4CC(v51, &qword_27CDB91C8, &qword_21BE3EE58);
  v37 = *(v30 + 8);
  v37(v49, v31);
  v38 = *(v26 + 8);
  v38(v47, v29);
  sub_21BB3A4CC(v33, &qword_27CDB91C8, &qword_21BE3EE58);
  v37(v36, v31);
  return (v38)(v48, v29);
}

uint64_t sub_21BCB5264@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for AgeRangeSharingView(0);
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_21BE288DC();
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_21BE2599C();
  v24[1] = v11;
  v24[2] = v10;

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21BE295EC();
  v12 = [v8 bundleForClass_];
  v13 = sub_21BE2599C();
  v15 = v14;

  v30 = v13;
  v31 = v15;
  MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
  v16 = [v8 bundleForClass_];
  v17 = sub_21BE2599C();
  v19 = v18;

  MEMORY[0x21CF03CA0](v17, v19);

  MEMORY[0x21CF03CA0](0xD000000000000018, 0x800000021BE5BB10);
  sub_21BE288CC();
  sub_21BCBC8BC(v26, v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v21 = swift_allocObject();
  sub_21BCBC92C(v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_21BCBEAF0(&qword_27CDB91E8, MEMORY[0x277D4D7F8], MEMORY[0x277D4D7F0]);
  v22 = v27;
  sub_21BE27E2C();

  return (*(v28 + 8))(v6, v22);
}

void *sub_21BCB5648@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92E0, &qword_21BE3F018);
  MEMORY[0x28223BE20](v33);
  v5 = v29 - v4;
  v6 = type metadata accessor for AgeRangeSharingView(0);
  v30 = *(v6 - 8);
  v7 = v30[8];
  MEMORY[0x28223BE20](v6 - 8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9210, &qword_21BE3EE88);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = v29 - v8;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_21BE2599C();
  v13 = v12;

  v14 = *v2;
  swift_getKeyPath();
  v35 = v14;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v14 + 56))
  {
    v35 = v11;
    v36 = v13;
    sub_21BB41FA4();
    *v5 = sub_21BE27DBC();
    *(v5 + 1) = v15;
    v5[16] = v16 & 1;
    *(v5 + 3) = v17;
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDB9208, &qword_27CDB9210, &qword_21BE3EE88, MEMORY[0x277CDF038]);
    return sub_21BE2784C();
  }

  else
  {
    v29[3] = *(v14 + 52);
    v37 = v11;
    v38 = v13;
    sub_21BCBC8BC(v2, v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_21BE28D7C();
    v19 = sub_21BE28D6C();
    v20 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v21 = swift_allocObject();
    v30 = a1;
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v19;
    *(v21 + 24) = v22;
    sub_21BCBC92C(v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    sub_21BCBC8BC(v2, v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = sub_21BE28D6C();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;
    sub_21BCBC92C(v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v20);
    type metadata accessor for AgeRangeGlobalState(0);
    v25 = sub_21BE2857C();
    MEMORY[0x28223BE20](v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92E8, &qword_21BE3F020);
    sub_21BCBEAF0(&qword_27CDB92F0, type metadata accessor for AgeRangeGlobalState, aM_1);
    sub_21BB3B038(&qword_27CDB92F8, &qword_27CDB92E8, &qword_21BE3F020, MEMORY[0x277CE14C0]);
    sub_21BB41FA4();
    sub_21BCBD7CC();
    v26 = v31;
    sub_21BE2849C();
    v27 = v32;
    v28 = v34;
    (*(v32 + 16))(v5, v26, v34);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDB9208, &qword_27CDB9210, &qword_21BE3EE88, MEMORY[0x277CDF038]);
    sub_21BE2784C();
    return (*(v27 + 8))(v26, v28);
  }
}

double sub_21BCB5C4C@<D0>(_OWORD *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = swift_projectBox();
  (*(v7 + 16))(v9, v10, v6);
  sub_21BE2862C();
  (*(v7 + 8))(v9, v6);
  v11 = v56;
  swift_getKeyPath();
  *&v56 = v11;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v12 = *(v11 + 81);

  if (v12)
  {
    sub_21BCBD3F8(&v56);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_21BE2599C();
    v17 = v16;

    *&v56 = v15;
    *(&v56 + 1) = v17;
    sub_21BB41FA4();
    v18 = sub_21BE27DBC();
    v20 = v19;
    v22 = v21;
    v23 = sub_21BE27C1C();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
    sub_21BE27C5C();
    sub_21BB3A4CC(v5, &qword_27CDB8858, &qword_21BE3CA18);
    v24 = sub_21BE27D9C();
    v26 = v25;
    v28 = v27;
    v42 = v29;

    sub_21BBC7C7C(v18, v20, v22 & 1);

    sub_21BE2833C();
    v43 = sub_21BE27D4C();
    v31 = v30;
    LOBYTE(v18) = v32;
    v34 = v33;

    sub_21BBC7C7C(v24, v26, v28 & 1);

    KeyPath = swift_getKeyPath();
    sub_21BE286AC();
    sub_21BE2725C();
    *&v47[23] = v50;
    *&v47[7] = v49;
    *&v47[55] = v52;
    *&v47[71] = v53;
    *&v47[87] = v54;
    *&v47[103] = v55;
    *&v47[39] = v51;
    *(&v46[4] + 9) = *&v47[64];
    *(&v46[5] + 9) = *&v47[80];
    *(&v46[6] + 9) = *&v47[96];
    *(v46 + 9) = *v47;
    *(&v46[1] + 9) = *&v47[16];
    *(&v46[2] + 9) = *&v47[32];
    v48 = v18 & 1;
    *&v44 = v43;
    *(&v44 + 1) = v31;
    LOBYTE(v45) = v18 & 1;
    *(&v45 + 1) = v34;
    *&v46[0] = KeyPath;
    BYTE8(v46[0]) = 0;
    *(&v46[7] + 1) = *(&v55 + 1);
    *(&v46[3] + 9) = *&v47[48];
    nullsub_1();
    v62 = v46[4];
    v63 = v46[5];
    v64 = v46[6];
    v65 = v46[7];
    v58 = v46[0];
    v59 = v46[1];
    v60 = v46[2];
    v61 = v46[3];
    v56 = v44;
    v57 = v45;
  }

  v36 = v63;
  a2[6] = v62;
  a2[7] = v36;
  v37 = v65;
  a2[8] = v64;
  a2[9] = v37;
  v38 = v59;
  a2[2] = v58;
  a2[3] = v38;
  v39 = v61;
  a2[4] = v60;
  a2[5] = v39;
  result = *&v56;
  v41 = v57;
  *a2 = v56;
  a2[1] = v41;
  return result;
}

void *sub_21BCB6140@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for AgeRangeSharingView(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9268, &qword_21BE3EEB0);
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v26 = &KeyPath - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9288, &qword_21BE3EF00);
  MEMORY[0x28223BE20](v32);
  v7 = &KeyPath - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9290, &qword_21BE3EF08);
  MEMORY[0x28223BE20](v28);
  v9 = &KeyPath - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9248, &qword_21BE3EEA0);
  MEMORY[0x28223BE20](v31);
  v11 = &KeyPath - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9258, &qword_21BE3EEA8);
  MEMORY[0x28223BE20](v29);
  v13 = &KeyPath - v12;
  v14 = *v1;
  swift_getKeyPath();
  v34 = v14;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v14 + 32))
  {
    if (*(v14 + 32) == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_21BCBD1C4();
      return sub_21BE2784C();
    }

    else
    {
      *v13 = sub_21BE275DC();
      *(v13 + 1) = 0;
      v13[16] = 1;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92A8, &qword_21BE3EF78);
      sub_21BCB9D6C(&v13[*(v22 + 44)]);
      sub_21BBA3854(v13, v9, &qword_27CDB9258, &qword_21BE3EEA8);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDB9250, &qword_27CDB9258, &qword_21BE3EEA8, MEMORY[0x277CE1138]);
      sub_21BCBD27C();
      sub_21BE2784C();
      sub_21BBA3854(v11, v7, &qword_27CDB9248, &qword_21BE3EEA0);
      swift_storeEnumTagMultiPayload();
      sub_21BCBD1C4();
      sub_21BE2784C();
      sub_21BB3A4CC(v11, &qword_27CDB9248, &qword_21BE3EEA0);
      return sub_21BB3A4CC(v13, &qword_27CDB9258, &qword_21BE3EEA8);
    }
  }

  else
  {
    v34 = *(v14 + 24);
    v16 = v34;
    KeyPath = swift_getKeyPath();
    sub_21BCBC8BC(v2, &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v18 = swift_allocObject();
    sub_21BCBC92C(&KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    v24 = v16;
    sub_21BCBD3B8(v16, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9298, &qword_21BE3EF70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9278, &qword_21BE3EEB8);
    sub_21BB3B038(&qword_27CDB92A0, &qword_27CDB9298, &qword_21BE3EF70, MEMORY[0x277D83980]);
    sub_21BB3B038(&qword_27CDB9270, &qword_27CDB9278, &qword_21BE3EEB8, MEMORY[0x277CDD938]);
    v19 = v26;
    sub_21BE285BC();
    v20 = v27;
    v21 = v30;
    (*(v27 + 16))(v9, v19, v30);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDB9250, &qword_27CDB9258, &qword_21BE3EEA8, MEMORY[0x277CE1138]);
    sub_21BCBD27C();
    sub_21BE2784C();
    sub_21BBA3854(v11, v7, &qword_27CDB9248, &qword_21BE3EEA0);
    swift_storeEnumTagMultiPayload();
    sub_21BCBD1C4();
    sub_21BE2784C();
    sub_21BCBD3D4(v24, 0);
    sub_21BB3A4CC(v11, &qword_27CDB9248, &qword_21BE3EEA0);
    return (*(v20 + 8))(v19, v21);
  }
}

double sub_21BCB6820@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - v3;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  *&v33 = v7;
  *(&v33 + 1) = v9;
  sub_21BB41FA4();
  v10 = sub_21BE27DBC();
  v12 = v11;
  LOBYTE(v6) = v13;
  v14 = sub_21BE27C1C();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_21BE27C5C();
  sub_21BB3A4CC(v4, &qword_27CDB8858, &qword_21BE3CA18);
  v15 = sub_21BE27D9C();
  v17 = v16;
  LOBYTE(v4) = v18;
  v30[1] = v19;

  sub_21BBC7C7C(v10, v12, v6 & 1);

  sub_21BE2833C();
  v31 = sub_21BE27D4C();
  v21 = v20;
  LOBYTE(v7) = v22;
  v24 = v23;

  sub_21BBC7C7C(v15, v17, v4 & 1);

  KeyPath = swift_getKeyPath();
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v32[1] + 7) = v34;
  *(v32 + 7) = v33;
  *(&v32[3] + 7) = v36;
  *(&v32[4] + 7) = v37;
  *(&v32[5] + 7) = v38;
  *(&v32[6] + 7) = v39;
  *(&v32[2] + 7) = v35;
  v26 = v32[5];
  *(a1 + 105) = v32[4];
  *(a1 + 121) = v26;
  *(a1 + 137) = v32[6];
  v27 = v32[1];
  *(a1 + 41) = v32[0];
  *(a1 + 57) = v27;
  result = *&v32[2];
  v29 = v32[3];
  *(a1 + 73) = v32[2];
  *a1 = v31;
  *(a1 + 8) = v21;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v24;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 152) = *(&v32[6] + 15);
  *(a1 + 89) = v29;
  return result;
}

uint64_t sub_21BCB6B68@<X0>(char *a2@<X8>)
{
  v48 = a2;
  v2 = sub_21BE271FC();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v42 = *(v49 - 8);
  v5 = MEMORY[0x28223BE20](v49);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v50 = *(v46 - 8);
  v9 = MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  v16 = sub_21BE2599C();
  v18 = v17;

  v51 = v16;
  v52 = v18;
  sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  v19 = v12;
  v41 = v12;
  v20 = v49;
  sub_21BE27FBC();
  (*(v44 + 8))(v4, v45);
  v21 = v42;
  v45 = *(v42 + 8);
  v45(v8, v20);
  v22 = [v14 bundleForClass_];
  v23 = sub_21BE2599C();
  v25 = v24;

  v51 = v23;
  v52 = v25;
  v40 = v8;
  sub_21BE2845C();
  v26 = *(v50 + 16);
  v27 = v43;
  v28 = v19;
  v29 = v46;
  v26(v43, v28, v46);
  v30 = *(v21 + 16);
  v31 = v47;
  v32 = v8;
  v33 = v49;
  v30(v47, v32, v49);
  v34 = v48;
  v26(v48, v27, v29);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v30(&v34[*(v35 + 48)], v31, v33);
  v36 = v45;
  v45(v40, v33);
  v37 = *(v50 + 8);
  v37(v41, v29);
  v36(v31, v33);
  return (v37)(v27, v29);
}

double sub_21BCB7070(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &KeyPath - v3;
  v5 = swift_projectBox();
  v22 = *(v2 + 16);
  v23 = v5;
  v22(v4, v5, v1);
  sub_21BE2862C();
  v21 = *(v2 + 8);
  v21(v4, v1);
  v6 = v24;
  LODWORD(v24) = 1;
  BYTE4(v24) = 0;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v7 = *(v6 + 72);
  v8 = *(v6 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 1;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  v20 = type metadata accessor for AgeRangeSharingViewModel;
  sub_21BCBEAF0(&qword_27CDB91B8, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  v10 = v8;
  swift_unknownObjectRetain();

  sub_21BE268AC();

  v12 = v22;
  v11 = v23;
  v22(v4, v23, v1);
  sub_21BE2862C();
  v13 = v21;
  v21(v4, v1);
  v14 = v24;
  v12(v4, v11, v1);
  sub_21BE2862C();
  v13(v4, v1);
  v15 = v24;
  swift_getKeyPath();
  v24 = v15;
  sub_21BCBEAF0(&qword_27CDB78D0, v20, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v16 = *(v15 + 52);
  LODWORD(v4) = *(v15 + 56);

  if (v4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  _s14FamilyCircleUI23SettingsAnalyticsLoggerO21logOptionUpdatedEvent24ageRangeSharingViewModel5stateyAA03AgelmnO0C_So05FAAgeL11GlobalStateVtFZ_0(v14, v17);

  return result;
}

uint64_t sub_21BCB7394@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

double sub_21BCB7474(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = sub_21BE27B0C();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE288BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE26A4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21BB35000, v15, v16, "Dismissing AgeRangeSharingView!", v17, 2u);
    MEMORY[0x21CF05C50](v17, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  type metadata accessor for AgeRangeSharingView(0);
  sub_21BD205B8(v10);
  v18 = sub_21BE2887C();
  v19 = *(v8 + 8);
  v19(v10, v7);
  if (v18)
  {
    sub_21BD205B8(v10);
    sub_21BE288AC();
    v19(v10, v7);
  }

  else
  {
    v20 = v27;
    sub_21BCB3718(v27);
    sub_21BE27AFC();
    (*(v28 + 8))(v20, v29);
  }

  v21 = swift_projectBox();
  v23 = v32;
  v22 = v33;
  (*(v32 + 16))(v4, v21, v33);
  sub_21BE2862C();
  (*(v23 + 8))(v4, v22);

  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v24, &v34);
  sub_21BD5E3E8(&v34);

  return result;
}

uint64_t sub_21BCB7880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_21BE28D7C();
  v3[8] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x2822009F8](sub_21BCB7980, v6, v5);
}

uint64_t sub_21BCB7980()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = swift_projectBox();
  v0[11] = v4;
  v5 = *(v2 + 16);
  v0[12] = v5;
  v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  sub_21BE2862C();
  v6 = *(v2 + 8);
  v0[14] = v6;
  v0[15] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v0[16] = v0[2];
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_21BCB7A88;

  return sub_21BCF8840();
}

uint64_t sub_21BCB7A88()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BCB7BCC, v3, v2);
}

uint64_t sub_21BCB7BCC()
{
  v10 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[5];

  v2(v4, v3, v5);
  sub_21BE2862C();
  v1(v4, v5);
  v6 = v0[3];
  v9 = 0;
  _s14FamilyCircleUI23SettingsAnalyticsLoggerO18logNavigationEvent24ageRangeSharingViewModel4viewyAA03AgeklmN0C_AA0pkdM0OtFZ_0(v6, &v9);

  v7 = v0[1];

  return v7();
}

__n128 sub_21BCB7CA4@<Q0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = a1[1];
  *&v71 = *a1;
  v70 = v9;
  if (sub_21BE28B6C())
  {
    v10 = swift_projectBox();
    v11 = *(v6 + 16);
    v60 = v10;
    v61 = v6 + 16;
    v59 = v11;
    v11(v8);
    sub_21BE2862C();
    v12 = *(v6 + 8);
    v63 = v6 + 8;
    v58 = v12;
    v12(v8, v5);
    v13 = v81;
    swift_getKeyPath();
    *&v81 = v13;
    sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F1C();

    v14 = *(v13 + 40);

    v65 = a3;
    if (v14 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
    {
      v62 = v8;
      v64 = v5;
      if (!i)
      {
        break;
      }

      v16 = 0;
      v69 = v14 & 0xC000000000000001;
      v68 = v14 & 0xFFFFFFFFFFFFFF8;
      v67 = v14;
      v66 = i;
      while (1)
      {
        if (v69)
        {
          v17 = MEMORY[0x21CF047C0](v16, v14);
        }

        else
        {
          if (v16 >= *(v68 + 16))
          {
            goto LABEL_27;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v5 = v17;
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v19 = [v17 bundleID];
        v20 = sub_21BE28A0C();
        v22 = v21;

        v8 = v71;
        v23 = v70;
        v24 = sub_21BE28B6C();

        if (v24)
        {
          v25 = sub_21BE28ACC();
          v26 = sub_21BCBCBAC(v25, v71, v70);
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v8 = MEMORY[0x21CF03C40](v26, v28, v30, v32);
          v23 = v33;
        }

        if (v20 == v8 && v22 == v23)
        {

LABEL_23:

          v36 = v62;
          v37 = v60;
          v38 = v64;
          v39 = v59;
          v59(v62, v60, v64);
          v40 = v5;
          sub_21BE2862C();
          v41 = v58;
          v58(v36, v38);
          v42 = v81;
          v39(v36, v37, v38);
          sub_21BE2862C();
          v41(v36, v38);
          v43 = [v40 bundleID];
          v44 = sub_21BE28A0C();
          v46 = v45;

          v47 = sub_21BCFE564(v44, v46);
          v49 = v48;

          sub_21BCBCC5C(v40, v42, v47, v49, v77);
          v50 = v77[0];
          v51 = v77[1];
          v52 = v78[0];
          v71 = *&v78[8];
          v53 = *&v78[24];

          v80 = *v78;
          v79 = *&v78[16];
          *&v74 = v50;
          *(&v74 + 1) = v51;
          *&v75[0] = v52;
          *(v75 + 8) = v71;
          *(&v75[1] + 1) = v53;
          LOBYTE(v76) = 0;

          v54 = v51;
          sub_21BBA3854(&v80, &v81, &qword_27CDBBB50, &unk_21BE333D0);
          sub_21BBA3854(&v79, &v81, &qword_27CDB7AB0, &qword_21BE39110);
          sub_21BCBCB58();
          sub_21BE2784C();

          sub_21BB3A4CC(&v80, &qword_27CDBBB50, &unk_21BE333D0);
          sub_21BB3A4CC(&v79, &qword_27CDB7AB0, &qword_21BE39110);
          goto LABEL_24;
        }

        v35 = sub_21BE2995C();

        v14 = v67;
        if (v35)
        {
          goto LABEL_23;
        }

        ++v16;
        if (v18 == v66)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_21:

    memset(v75, 0, sizeof(v75));
    v74 = 0u;
    LOBYTE(v76) = 1;
    sub_21BCBCB58();
    sub_21BE2784C();
LABEL_24:
    a3 = v65;
    v73 = v84;
    v72 = 0;
    v74 = v81;
    v75[0] = v82;
    v75[1] = v83;
    v76 = v84;
  }

  else
  {
    LOBYTE(v77[0]) = 1;
    HIBYTE(v76) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91A8, &unk_21BE3EDB0);
  sub_21BCBCACC();
  sub_21BE2784C();
  v55 = v82;
  *a3 = v81;
  *(a3 + 16) = v55;
  result = v83;
  *(a3 + 32) = v83;
  *(a3 + 48) = v84;
  return result;
}

uint64_t sub_21BCB8410(void *a1)
{
  [a1 response];
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_21BE2599C();

  return v3;
}

void sub_21BCB8518()
{
  v1 = type metadata accessor for AgeRangeSharingView(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BE26A4C();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE27B0C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE289CC();
  v12 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v12)
  {
    v13 = v12;
    v14 = sub_21BCB3718(v10);
    MEMORY[0x28223BE20](v14);
    *(&v24 - 2) = v13;
    sub_21BE27AFC();
    (*(v8 + 8))(v10, v7);
    [v13 present];
  }

  else
  {
    v25 = v4;
    v15 = v26;
    sub_21BE2614C();
    sub_21BCBC8BC(v0, v3);
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      v20 = &v3[*(v1 + 56)];
      v21 = *v20;
      v22 = v20[1];

      sub_21BCBD884(v3);
      v23 = sub_21BB3D81C(v21, v22, &v27);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_21BB35000, v16, v17, "Failed to create privacyPresenter for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x21CF05C50](v19, -1, -1);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    else
    {

      sub_21BCBD884(v3);
    }

    (*(v15 + 8))(v6, v25);
  }
}

void sub_21BCB888C(uint64_t *a1@<X2>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v3 + 56))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 52);
  }

  *a2 = v4;
}

void sub_21BCB8944(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AgeRangeSharingView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *a1;
  sub_21BCBC8BC(a4, &v26 - v11);
  sub_21BCBC8BC(v12, v10);
  v14 = (*(v7 + 80) + 20) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_21BCBC92C(v12, v15 + v14);
  v16 = objc_opt_self();
  if ([v16 isRestrictionsPasscodeSet])
  {
    sub_21BCBD884(v10);
    v18 = *(a4 + 32);
    v29 = *(a4 + 24);
    v17 = v29;
    v30 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9318, &qword_21BE3F060);
    sub_21BE283FC();
    v19 = v27;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_21BCBD820;
    *(v20 + 24) = v15;
    v21 = &v19[OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction];
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];
    *v21 = sub_21BBA5904;
    v21[1] = v20;

    sub_21BB5AEC4(v22, v23);

    v27 = v17;
    v28 = v18;
    sub_21BE283FC();
    v24 = v26;
    v25 = [objc_opt_self() defaultCenter];
    [v25 addObserver:v24 selector:sel_handleRestrictionsPINNotification_ name:*MEMORY[0x277D4BDE8] object:0 suspensionBehavior:4];

    [v16 activateRemotePINUI];
  }

  else
  {
    sub_21BCB8BF0(v13, v10);

    sub_21BCBD884(v10);
  }
}

void sub_21BCB8BF0(uint64_t a1, uint64_t *a2)
{
  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
  }

  else
  {
    v2 = *a2;
    v3 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = *(v2 + 72);
    v5 = *(v2 + 16);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    *(v6 + 32) = v4;
    *(v6 + 40) = v2;
    sub_21BCBEAF0(&qword_27CDB91B8, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    v7 = v5;
    swift_unknownObjectRetain();

    sub_21BE268AC();

    _s14FamilyCircleUI23SettingsAnalyticsLoggerO21logOptionUpdatedEvent24ageRangeSharingViewModel5stateyAA03AgelmnO0C_So05FAAgeL11GlobalStateVtFZ_0(v2, v3);
  }
}

uint64_t sub_21BCB8D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 3)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_21BE2599C();
    v17 = v16;

    *&v30 = v15;
    *(&v30 + 1) = v17;
    sub_21BB41FA4();
    v8 = sub_21BE27DBC();
    v10 = v18;
    v12 = v19 & 1;
    sub_21BBA4A38(v8, v18, v19 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
    sub_21BC0AD50();
    sub_21BE2784C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
    sub_21BC3623C();
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      v25 = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      v27 = sub_21BE2599C();
      v29 = v28;

      *&v31 = v27;
      *(&v31 + 1) = v29;
      sub_21BB41FA4();
      sub_21BE27DBC();
      sub_21BE2784C();
      sub_21BC361AC(v27, v29, v32, *(&v32 + 1));
      sub_21BC361AC(v27, v29, v32, *(&v32 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
      sub_21BC0AD50();
      sub_21BE2784C();
      sub_21BC361E8(v27, v29, v32, *(&v32 + 1), v33, SHIBYTE(v33));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
      sub_21BC3623C();
      sub_21BE2784C();
      sub_21BC362C8(v27, v29, v32, *(&v32 + 1));
      sub_21BC36304(v27, v29, v32, *(&v32 + 1), v33, SHIBYTE(v33));
      result = sub_21BC362C8(v27, v29, v32, *(&v32 + 1));
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      goto LABEL_8;
    }

    type metadata accessor for ConfirmChildAgeViewModel();
    v3 = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_21BE2599C();
    v7 = v6;

    *&v30 = v5;
    *(&v30 + 1) = v7;
    sub_21BB41FA4();
    v8 = sub_21BE27DBC();
    v10 = v9;
    v12 = v11 & 1;
    sub_21BBA4A38(v8, v9, v11 & 1);

    sub_21BE2784C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
    sub_21BC0AD50();
    sub_21BC3623C();
  }

  sub_21BE2784C();
  sub_21BBC7C7C(v8, v10, v12);

  v21 = v30;
  v22 = v32;
  v23 = v33;
  v24 = v34;
LABEL_8:
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 32) = v23;
  *(a2 + 34) = v24;
  return result;
}

uint64_t sub_21BCB9494@<X0>(uint64_t a1@<X8>)
{
  v2 = 0x1000000000000;
  if (!v1[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!v1[5])
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if (!v1[4])
  {
    v4 = 0;
  }

  return sub_21BCB8D70(v4 | *v1 | v3 | v2, a1);
}

uint64_t sub_21BCB94D8@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9308, &qword_21BE3F050);
  v40 = *(v1 - 8);
  v2 = v40;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v39 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = sub_21BE275DC();
  sub_21BCB9864(&v43);
  v21 = v44;
  v22 = v43;
  v23 = v45;
  v47 = 1;
  v46 = v44;
  *v19 = v20;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *(v19 + 24) = v22;
  v19[40] = v21;
  *(v19 + 3) = v23;
  *(v19 + 16) = 1;
  v19[68] = 1;
  v24 = sub_21BE275DC();
  sub_21BCB99AC(&v43);
  v25 = v44;
  v26 = v43;
  v27 = v45;
  v49 = 1;
  v48 = v44;
  *v17 = v24;
  *(v17 + 1) = 0;
  v17[16] = 1;
  *(v17 + 24) = v26;
  v17[40] = v25;
  *(v17 + 3) = v27;
  *(v17 + 16) = 2;
  v17[68] = 1;
  v28 = sub_21BE275DC();
  sub_21BCB9AF4(&v43);
  v29 = v44;
  v30 = v43;
  v31 = v45;
  LOBYTE(v43) = 1;
  v50 = v44;
  *v14 = v28;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *(v14 + 24) = v30;
  v14[40] = v29;
  *(v14 + 3) = v31;
  *(v14 + 16) = 3;
  v14[68] = 1;
  v32 = *(v2 + 16);
  v33 = v11;
  v41 = v11;
  v32(v11, v19, v1);
  v34 = v8;
  v32(v8, v17, v1);
  v32(v5, v14, v1);
  v35 = v42;
  v32(v42, v33, v1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9310, &qword_21BE3F058);
  v32(&v35[*(v36 + 48)], v34, v1);
  v32(&v35[*(v36 + 64)], v5, v1);
  v37 = *(v40 + 8);
  v37(v14, v1);
  v37(v17, v1);
  v37(v19, v1);
  v37(v5, v1);
  v37(v34, v1);
  return (v37)(v41, v1);
}

uint64_t sub_21BCB9864@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_21BE2837C();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_21BBA4A38(v4, v6, v8);

  sub_21BBC7C7C(v4, v6, v8);
}

uint64_t sub_21BCB99AC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_21BE2837C();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_21BBA4A38(v4, v6, v8);

  sub_21BBC7C7C(v4, v6, v8);
}

uint64_t sub_21BCB9AF4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_21BE2837C();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_21BBA4A38(v4, v6, v8);

  sub_21BBC7C7C(v4, v6, v8);
}

void sub_21BCB9C30(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  swift_getKeyPath();
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v6 = v5[80];
  swift_getKeyPath();
  sub_21BE25F1C();

  v7 = v5[81];
  swift_getKeyPath();
  sub_21BE25F1C();

  v8 = v5[82];
  *a3 = a1;
  *(a3 + 4) = v6;
  *(a3 + 5) = v7;
  *(a3 + 6) = v8;
}

uint64_t sub_21BCB9D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92B0, &unk_21BE3EF80);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_21BE26EEC();
  v9 = &v8[*(v3 + 44)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v11 = *MEMORY[0x277CDF438];
  v12 = sub_21BE26E7C();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  sub_21BBA3854(v8, v6, &qword_27CDB92B0, &unk_21BE3EF80);
  *a1 = 0;
  *(a1 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92B8, &qword_21BE3EFC0);
  sub_21BBA3854(v6, a1 + *(v13 + 48), &qword_27CDB92B0, &unk_21BE3EF80);
  v14 = a1 + *(v13 + 64);
  *v14 = 0;
  *(v14 + 8) = 1;
  sub_21BB3A4CC(v8, &qword_27CDB92B0, &unk_21BE3EF80);
  return sub_21BB3A4CC(v6, &qword_27CDB92B0, &unk_21BE3EF80);
}

void sub_21BCB9F24(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleID];
  v4 = sub_21BE28A0C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_21BCB9F7C(void **a1, uint64_t a2)
{
  v2 = [*a1 bundleID];
  v3 = sub_21BE28A0C();
  v5 = v4;

  MEMORY[0x21CF03CA0](v3, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92C0, &qword_21BE3EFC8);
  sub_21BB3B038(&qword_27CDB92C8, &qword_27CDB92C0, &qword_21BE3EFC8, MEMORY[0x277CE1138]);
  return sub_21BE270AC();
}

uint64_t sub_21BCBA0C0@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_21BE275DC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92D0, &unk_21BE3EFD0);
  return sub_21BCBA2A0(a2, (a3 + *(v5 + 44)));
}

id sub_21BCBA128(uint64_t a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return [a2 setPresentingViewController_];
  }

  else
  {
    sub_21BE2614C();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "No view controller to show privacy disclosure", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21BCBA2A0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v3 = sub_21BE2766C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E0, &qword_21BE3E908);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E8, &qword_21BE3EFE0);
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = [a1 bundleID];
  if (!v13)
  {
    sub_21BE28A0C();
    v13 = sub_21BE289CC();
  }

  [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];

  sub_21BE269CC();
  sub_21BB3B038(&qword_27CDB90F0, &qword_27CDB90E0, &qword_21BE3E908, MEMORY[0x277D7EA70]);
  sub_21BE27DCC();
  (*(v5 + 8))(v7, v4);
  sub_21BE2765C();
  sub_21BE2764C();
  v14 = [a1 bundleID];
  v15 = sub_21BE28A0C();
  v17 = v16;

  sub_21BCFE564(v15, v17);

  sub_21BE2763C();

  sub_21BE2764C();
  sub_21BE2768C();
  v63 = sub_21BE27DAC();
  v57 = v18;
  v58 = v19;
  v56 = v20;
  v21 = sub_21BCB8410(a1);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v64 = v23;
  v65 = v24;
  sub_21BB41FA4();
  v25 = sub_21BE27DBC();
  v26 = v12;
  v55 = v12;
  v28 = v27;
  v30 = v29;
  LODWORD(v64) = sub_21BE2796C();
  v31 = sub_21BE27D5C();
  v33 = v32;
  v35 = v34;
  v54 = v36;
  sub_21BBC7C7C(v25, v28, v30 & 1);

  v37 = v59;
  v38 = v60;
  v39 = *(v60 + 16);
  v40 = v26;
  v41 = v61;
  v39(v59, v40, v61);
  v42 = v56 & 1;
  LOBYTE(v64) = v56 & 1;
  v43 = v62;
  v39(v62, v37, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92D8, &qword_21BE3EFE8);
  v45 = &v43[v44[12]];
  v46 = v63;
  v47 = v57;
  v48 = v58;
  *v45 = v63;
  *(v45 + 1) = v47;
  v45[16] = v42;
  *(v45 + 3) = v48;
  v49 = &v43[v44[16]];
  *v49 = 0;
  v49[8] = 1;
  v50 = &v43[v44[20]];
  *v50 = v31;
  *(v50 + 1) = v33;
  v35 &= 1u;
  v50[16] = v35;
  *(v50 + 3) = v54;
  v51 = v47;
  sub_21BBA4A38(v46, v47, v42);

  sub_21BBA4A38(v31, v33, v35);
  v52 = *(v38 + 8);

  v52(v55, v41);
  sub_21BBC7C7C(v31, v33, v35);

  sub_21BBC7C7C(v63, v51, v64);

  return (v52)(v37, v41);
}

uint64_t sub_21BCBA7D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9320, &qword_21BE3F1A0);
  MEMORY[0x28223BE20](v22);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9328, &qword_21BE3F1A8);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9330, &unk_21BE3F1B0);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - v8;
  sub_21BCBAACC(v1, v4);
  if (*(v1 + 40))
  {
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
  }

  else
  {
    v12 = [*(v1 + 8) bundleID];
    v10 = sub_21BE28A0C();
    v11 = v13;
  }

  *&v27 = v10;
  *(&v27 + 1) = v11;
  sub_21BB3B038(&qword_27CDB9338, &qword_27CDB9320, &qword_21BE3F1A0, aY_2);
  sub_21BB41FA4();

  sub_21BE27F9C();

  sub_21BB3A4CC(v4, &qword_27CDB9320, &qword_21BE3F1A0);
  v14 = *(v1 + 8);
  v27 = *(v1 + 16);
  v15 = swift_allocObject();
  v16 = v2[1];
  *(v15 + 1) = *v2;
  *(v15 + 2) = v16;
  *(v15 + 3) = v2[2];
  (*(v23 + 32))(v9, v7, v24);
  v17 = &v9[*(v21 + 36)];
  *v17 = sub_21BCBDD50;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  sub_21BB4F9C8(v9, v25);

  v18 = v14;
  return sub_21BBA3854(&v27, v26, &qword_27CDBBB50, &unk_21BE333D0);
}

uint64_t sub_21BCBAACC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9340, &qword_21BE3F1D0);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9348, &qword_21BE3F1D8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9350, &qword_21BE3F1E0);
  v34 = *(v35 - 8);
  v10 = MEMORY[0x28223BE20](v35);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v39 = a1;
  sub_21BCBB470(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9358, &qword_21BE3F1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9228, &qword_21BE3EE90);
  sub_21BB3B038(&qword_27CDB9360, &qword_27CDB9358, &qword_21BE3F1E8, MEMORY[0x277CE1138]);
  sub_21BCBD090();
  v14 = v13;
  sub_21BE2861C();
  v15 = *a1;
  swift_getKeyPath();
  v40[0] = v15;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v15 + 48) == 1)
  {
    MEMORY[0x28223BE20](v16);
    *(&v31 - 2) = a1;
    sub_21BCBBE28(a1, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79E0, &qword_21BE3F220);
    sub_21BCBDE18();
    v17 = v32;
    sub_21BE2861C();
    v18 = v33;
    (*(v33 + 32))(v9, v17, v3);
    v19 = 0;
    v20 = v18;
  }

  else
  {
    v19 = 1;
    v20 = v33;
  }

  v21 = v9;
  (*(v20 + 56))(v9, v19, 1, v3);
  v22 = v34;
  v23 = *(v34 + 16);
  v24 = v36;
  v25 = v35;
  v23(v36, v14, v35);
  v26 = v37;
  sub_21BBA3854(v21, v37, &qword_27CDB9348, &qword_21BE3F1D8);
  v27 = v38;
  v23(v38, v24, v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9368, &qword_21BE3F218);
  sub_21BBA3854(v26, &v27[*(v28 + 48)], &qword_27CDB9348, &qword_21BE3F1D8);
  sub_21BB3A4CC(v21, &qword_27CDB9348, &qword_21BE3F1D8);
  v29 = *(v22 + 8);
  v29(v14, v25);
  sub_21BB3A4CC(v26, &qword_27CDB9348, &qword_21BE3F1D8);
  return (v29)(v24, v25);
}

double sub_21BCBAFFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE275DC();
  v16 = 1;
  sub_21BCBB104(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_21BBA3854(&v17, &v9, &qword_27CDB9380, &qword_21BE3F268);
  sub_21BB3A4CC(v22, &qword_27CDB9380, &qword_21BE3F268);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_21BCBB104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2766C();
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v25 = sub_21BE27DBC();
  v26 = v8;
  v10 = v9;
  v24 = v11;
  sub_21BE2765C();
  sub_21BE2764C();
  [*(a1 + 8) response];
  v12 = [v6 bundleForClass_];
  sub_21BE2599C();

  sub_21BE2763C();

  sub_21BE2764C();
  sub_21BE2768C();
  v13 = sub_21BE27DAC();
  v15 = v14;
  LOBYTE(v6) = v16;
  sub_21BE2796C();
  v17 = sub_21BE27D5C();
  v19 = v18;
  LOBYTE(v7) = v20;
  v22 = v21;
  sub_21BBC7C7C(v13, v15, v6 & 1);

  *a2 = v25;
  *(a2 + 8) = v10;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  *(a2 + 64) = v7 & 1;
  *(a2 + 72) = v22;
  sub_21BBA4A38(v25, v10, v24 & 1);

  sub_21BBA4A38(v17, v19, v7 & 1);

  sub_21BBC7C7C(v17, v19, v7 & 1);

  sub_21BBC7C7C(v25, v10, v24 & 1);
}

double sub_21BCBB470@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = sub_21BCBE05C(*(a1 + 8));
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (v8)
  {
    v10 = v8;
  }

  *&v37 = v9;
  *(&v37 + 1) = v10;
  sub_21BB41FA4();
  v11 = sub_21BE27DBC();
  v13 = v12;
  v15 = v14;
  v16 = sub_21BE27C1C();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_21BE27C5C();
  sub_21BB3A4CC(v6, &qword_27CDB8858, &qword_21BE3CA18);
  v17 = sub_21BE27D9C();
  v19 = v18;
  v21 = v20;
  v34[1] = v22;

  sub_21BBC7C7C(v11, v13, v15 & 1);

  sub_21BE2833C();
  v23 = sub_21BE27D4C();
  v25 = v24;
  v27 = v26;
  v35 = v28;

  sub_21BBC7C7C(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v36[1] + 7) = v38;
  *(v36 + 7) = v37;
  *(&v36[3] + 7) = v40;
  *(&v36[4] + 7) = v41;
  *(&v36[5] + 7) = v42;
  *(&v36[6] + 7) = v43;
  *(&v36[2] + 7) = v39;
  v30 = v36[5];
  *(a2 + 105) = v36[4];
  *(a2 + 121) = v30;
  *(a2 + 137) = v36[6];
  v31 = v36[1];
  *(a2 + 41) = v36[0];
  *(a2 + 57) = v31;
  result = *&v36[2];
  v33 = v36[3];
  *(a2 + 73) = v36[2];
  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 152) = *(&v36[6] + 15);
  *(a2 + 89) = v33;
  return result;
}

uint64_t sub_21BCBB74C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();
  v8 = v7;

  *&v19 = v6;
  *(&v19 + 1) = v8;
  v9 = a1[1];
  v10 = *(a1 + 1);
  v20 = *(a1 + 2);
  v21 = v10;
  v11 = swift_allocObject();
  v12 = *(a1 + 1);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 2);

  v13 = v9;
  sub_21BBA3854(&v21, v18, &qword_27CDBBB50, &unk_21BE333D0);
  sub_21BBA3854(&v20, v18, &qword_27CDB7AB0, &qword_21BE39110);
  sub_21BB41FA4();
  sub_21BE2845C();
  v19 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  LOBYTE(v5) = v18[0];
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79E0, &qword_21BE3F220);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_21BC0AE98;
  v17[2] = v15;
  return result;
}

double sub_21BCBB948(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = a1[1];
  v7 = *(a1 + 1);
  v15 = *(a1 + 2);
  v16 = v7;
  sub_21BE28D7C();

  v8 = v6;
  sub_21BBA3854(&v16, v14, &qword_27CDBBB50, &unk_21BE333D0);
  sub_21BBA3854(&v15, v14, &qword_27CDB7AB0, &qword_21BE39110);
  v9 = sub_21BE28D6C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = *(a1 + 1);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  *(v10 + 64) = *(a1 + 2);
  sub_21BC54908(0, 0, v4, &unk_21BE3F260, v10);

  return result;
}

uint64_t sub_21BCBBAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[4] = a4;
  v4[5] = sub_21BE28D7C();
  v6 = sub_21BE28D6C();
  v8 = *a4;
  v7 = a4[1];
  v4[6] = v6;
  v4[7] = v8;

  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_21BCBBB98;

  return sub_21BCFB48C(v7);
}

uint64_t sub_21BCBBB98()
{
  *(*v1 + 72) = v0;

  if (v0)
  {

    v2 = sub_21BE28D0C();
    v4 = v3;
    v5 = sub_21BCBBDC4;
  }

  else
  {
    v2 = sub_21BE28D0C();
    v4 = v6;
    v5 = sub_21BCBBCE8;
  }

  return MEMORY[0x2822009F8](v5, v2, v4);
}

uint64_t sub_21BCBBCE8()
{
  v6 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  *(v0 + 16) = *(v2 + 16);
  *(v0 + 80) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v1, &v5);
  sub_21BD5E830(&v5);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21BCBBDC4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_21BCBBE28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21BE32770;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_21BBBEFE8();
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [*(a1 + 8) bundleID];
    v8 = sub_21BE28A0C();
    v9 = v11;
  }

  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();

  v14 = [v13 bundleForClass_];
  sub_21BE2599C();

  v15 = sub_21BE289DC();
  v17 = v16;

  *&v44 = v15;
  *(&v44 + 1) = v17;
  sub_21BB41FA4();
  v18 = sub_21BE27DBC();
  v20 = v19;
  LOBYTE(ObjCClassFromMetadata) = v21;
  v22 = sub_21BE27C1C();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_21BE27C5C();
  sub_21BB3A4CC(v5, &qword_27CDB8858, &qword_21BE3CA18);
  v23 = sub_21BE27D9C();
  v25 = v24;
  v27 = v26;

  sub_21BBC7C7C(v18, v20, ObjCClassFromMetadata & 1);

  sub_21BE2833C();
  v28 = sub_21BE27D4C();
  v42 = v29;
  LOBYTE(v18) = v30;
  v32 = v31;

  sub_21BBC7C7C(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v43[1] + 7) = v45;
  *(v43 + 7) = v44;
  *(&v43[3] + 7) = v47;
  *(&v43[4] + 7) = v48;
  *(&v43[5] + 7) = v49;
  *(&v43[6] + 7) = v50;
  *(&v43[2] + 7) = v46;
  v34 = v43[5];
  v36 = v41;
  v35 = v42;
  *(v41 + 105) = v43[4];
  *(v36 + 121) = v34;
  *(v36 + 137) = v43[6];
  v37 = v43[1];
  *(v36 + 41) = v43[0];
  *(v36 + 57) = v37;
  result = *&v43[2];
  v39 = v43[3];
  *(v36 + 73) = v43[2];
  *v36 = v28;
  *(v36 + 8) = v35;
  *(v36 + 16) = v18 & 1;
  *(v36 + 24) = v32;
  *(v36 + 32) = KeyPath;
  *(v36 + 40) = 0;
  *(v36 + 152) = *(&v43[6] + 15);
  *(v36 + 89) = v39;
  return result;
}

double sub_21BCBC24C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = *a1;
  LOBYTE(v17) = 2;
  _s14FamilyCircleUI23SettingsAnalyticsLoggerO18logNavigationEvent24ageRangeSharingViewModel4viewyAA03AgeklmN0C_AA0pkdM0OtFZ_0(v5, &v17);
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = a1[1];
  v8 = *(a1 + 1);
  v16 = *(a1 + 2);
  v17 = v8;
  sub_21BE28D7C();

  v9 = v7;
  sub_21BBA3854(&v17, v15, &qword_27CDBBB50, &unk_21BE333D0);
  sub_21BBA3854(&v16, v15, &qword_27CDB7AB0, &qword_21BE39110);
  v10 = sub_21BE28D6C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = *(a1 + 1);
  *(v11 + 32) = *a1;
  *(v11 + 48) = v13;
  *(v11 + 64) = *(a1 + 2);
  sub_21BBA932C(0, 0, v4, &unk_21BE3F1C8, v11);

  return result;
}

uint64_t sub_21BCBC3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v6 = *(a4 + 8);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_21BBAFDA8;

  return sub_21BCFBFA4(v6);
}

void sub_21BCBC548(uint64_t a1)
{
  type metadata accessor for AgeRangeSharingViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_21BCBC7E4(319, &qword_27CDB6958, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_21BCBC834(319, &qword_27CDB9150, type metadata accessor for ScreentimePasscodeListener, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_21BCBC7E4(319, &qword_280BD6A00, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21BCBC834(319, &qword_27CDB5EC8, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_21BCBC7E4(319, &qword_27CDB9158, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_21BCBC834(319, &qword_27CDB8B80, MEMORY[0x277D4D7B0], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_21BCBC834(319, &qword_27CDB6118, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_21BCBC834(319, &qword_280BD6A40, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21BCBC7E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21BCBC834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21BCBC8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeRangeSharingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_21BCBC920(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21BCBC92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeRangeSharingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21BCBC990()
{
  v1 = *(type metadata accessor for AgeRangeSharingView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BCB7474(v0 + v2, v3);
}

uint64_t sub_21BCBCA1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BCB7880(v2, v3, v4);
}

unint64_t sub_21BCBCACC()
{
  result = qword_27CDB91A0;
  if (!qword_27CDB91A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB91A8, &unk_21BE3EDB0);
    v4[0] = sub_21BCBCB58();
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB91A0);
  }

  return result;
}

unint64_t sub_21BCBCB58()
{
  result = qword_27CDB91B0;
  if (!qword_27CDB91B0)
  {
    result = swift_getWitnessTable(aMF_1, &type metadata for AgeRangeSharingOptionsView, v0, v1);
    atomic_store(result, &qword_27CDB91B0);
  }

  return result;
}

unint64_t sub_21BCBCBAC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_21BE28ADC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_21BE28B9C();
}

void *sub_21BCBCC5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21BE25D1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22[-v15];

  v17 = a1;
  v18 = [v17 invalidatedAt];
  if (v18)
  {
    sub_21BE25CDC();

    (*(v11 + 32))(v16, v13, v10);
    (*(v11 + 56))(v16, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v16, 1, 1, v10);
  }

  sub_21BB3A4CC(v16, &qword_27CDB9720, &unk_21BE39F00);
  v22[15] = v18 != 0;
  result = sub_21BE283EC();
  v20 = v22[16];
  v21 = v23;
  *a5 = a2;
  *(a5 + 8) = v17;
  *(a5 + 16) = v20;
  *(a5 + 24) = v21;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t sub_21BCBCE5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BCFBAF4(v2, v3, v5, v4);
}

unint64_t sub_21BCBCF54()
{
  result = qword_27CDB9200;
  if (!qword_27CDB9200)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB91F0, &qword_21BE3EE78);
    v4[0] = sub_21BB3B038(&qword_27CDB9208, &qword_27CDB9210, &qword_21BE3EE88, MEMORY[0x277CDF038]);
    v4[1] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB9200);
  }

  return result;
}

unint64_t sub_21BCBD00C()
{
  result = qword_27CDB9218;
  if (!qword_27CDB9218)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB91F8, &qword_21BE3EE80);
    v4[0] = sub_21BCBD090();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB9218);
  }

  return result;
}