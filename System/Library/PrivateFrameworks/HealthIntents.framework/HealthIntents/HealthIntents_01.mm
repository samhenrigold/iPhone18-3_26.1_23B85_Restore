id sub_2517CFF3C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  sub_2517D8978();

  sub_2517D81F8();
  v7 = sub_2517D8458();
  v9 = v8;
  (*(v6 + 8))(v4, v5);
  MEMORY[0x2530831A0](v7, v9);

  sub_2517D8678();

  v10 = (*(v2 + 48))(v3, 1, v1);
  v11 = v0[7];
  if (v10 == 1)
  {

    sub_2517CEB58(v11);
    sub_2517D0F34();
    swift_allocError();
    swift_willThrow();

    v12 = v0[1];
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v15 = v0[10];
    v17 = v0[8];
    v16 = v0[9];

    v18 = sub_2517D8658();
    sub_2517D4B0C(MEMORY[0x277D84F90]);
    v19 = sub_2517D8788();

    [v14 openSensitiveURL:v18 withOptions:v19];

    sub_2517D8178();
    (*(v16 + 8))(v15, v17);

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_2517D01F0@<X0>(void *a1@<X8>)
{
  if (qword_27F45FB18 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F462008;
}

uint64_t sub_2517D0260(uint64_t a1)
{
  v2 = sub_2517D8468();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_2517D8208();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2517D0350(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2517D81E8();
  return sub_2517C015C;
}

unint64_t sub_2517D03C8()
{
  result = qword_27F45FE08;
  if (!qword_27F45FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE08);
  }

  return result;
}

unint64_t sub_2517D0420()
{
  result = qword_27F45FE10;
  if (!qword_27F45FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE10);
  }

  return result;
}

unint64_t sub_2517D0478()
{
  result = qword_27F45FE18;
  if (!qword_27F45FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE18);
  }

  return result;
}

uint64_t sub_2517D0504@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FB08 != -1)
  {
    swift_once();
  }

  v2 = sub_2517D8638();
  v3 = __swift_project_value_buffer(v2, qword_27F461FD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2517D05AC(uint64_t a1, uint64_t a2)
{
  sub_2517D0F88(0, &qword_27F45FE48, MEMORY[0x277CBA300]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2517D0F88(0, &qword_27F45FE50, MEMORY[0x277CBA2F8]);
  MEMORY[0x28223BE20](v3);
  sub_2517D8568();
  sub_2517D8558();
  swift_getKeyPath();
  sub_2517D0FEC(0);
  sub_2517D8548();

  sub_2517D8558();
  sub_2517D8578();
  return sub_2517D8538();
}

uint64_t sub_2517D0778@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FB10 != -1)
  {
    swift_once();
  }

  sub_2517D104C(0, &qword_27F45FD90, MEMORY[0x277CB9F98], MEMORY[0x277D83D88]);
  v3 = __swift_project_value_buffer(v2, qword_27F461FF0);

  return sub_2517CB8B0(v3, a1);
}

uint64_t sub_2517D0820(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517C04AC;

  return sub_2517CFD90(a1, v4);
}

uint64_t sub_2517D08C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2517D09F0();
  *a1 = result;
  return result;
}

uint64_t sub_2517D08E8(uint64_t a1)
{
  v2 = sub_2517D03C8();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2517D0934()
{
  result = qword_27F45FE20;
  if (!qword_27F45FE20)
  {
    sub_2517D0F88(255, &qword_27F45FE28, MEMORY[0x277CBA2B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE20);
  }

  return result;
}

uint64_t sub_2517D09A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2517D09F0()
{
  v0 = sub_2517D8588();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0);
  v23 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x277D83D88];
  sub_2517D104C(0, &qword_27F45FD50, MEMORY[0x277CB9CC0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = v20 - v4;
  sub_2517D104C(0, &qword_28110FE50, MEMORY[0x277CC9130], v2);
  MEMORY[0x28223BE20](v5 - 8);
  v21 = v20 - v6;
  v7 = sub_2517D8628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2517D86B8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_2517D87C8();
  MEMORY[0x28223BE20](v12 - 8);
  v20[0] = sub_2517D8638();
  v13 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  sub_2517D0EA0(0);
  v20[1] = v14;
  sub_2517D87B8();
  sub_2517D86A8();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v8 + 104);
  v16(v10, v15, v7);
  sub_2517D8648();
  sub_2517D87B8();
  sub_2517D86A8();
  v16(v10, v15, v7);
  v17 = v21;
  sub_2517D8648();
  (*(v13 + 56))(v17, 0, 1, v20[0]);
  v18 = sub_2517D8168();
  (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  (*(v24 + 104))(v23, *MEMORY[0x277CBA308], v25);
  return sub_2517D8248();
}

void sub_2517D0EA0(uint64_t a1)
{
  if (!qword_27F45FE30)
  {
    sub_2517D8468();
    sub_2517D09A8(&qword_27F45FE38, MEMORY[0x277CBA230], MEMORY[0x277CBA228]);
    v1 = sub_2517D8258();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45FE30);
    }
  }
}

unint64_t sub_2517D0F34()
{
  result = qword_27F45FE40;
  if (!qword_27F45FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE40);
  }

  return result;
}

void sub_2517D0F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2517D03C8();
    v7 = a3(a1, &type metadata for OpenSearchIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2517D0FEC(uint64_t a1)
{
  if (!qword_27F45FE58)
  {
    sub_2517D0EA0(255);
    v1 = sub_2517D8AF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45FE58);
    }
  }
}

void sub_2517D104C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2517D10C4()
{
  result = qword_27F45FE68;
  if (!qword_27F45FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE68);
  }

  return result;
}

unint64_t static RecordsSectionProvider.healthViewEntityID(for:)(_BYTE *a1)
{
  v1 = 0xD000000000000011;
  if (*a1 == 2)
  {
    v2 = 0xD000000000000020;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*a1)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*a1 > 1u)
  {
    v1 = v2;
  }

  if (*a1 <= 4u)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_2517D1200()
{
  v1[18] = v0;
  v2 = type metadata accessor for HealthViewEntity(0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_2517D2060(0);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2517D131C, 0, 0);
}

uint64_t sub_2517D131C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 29;
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = [objc_allocWithZone(MEMORY[0x277D123E8]) initWithHealthStore_];
  v1[25] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_2517D14EC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_2517D20C8();
  sub_2517D8888();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2517D1ADC;
  v1[13] = &block_descriptor_0;
  [v8 shouldShowHealthRecordsSectionWithCompletion_];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2517D14EC()
{

  return MEMORY[0x2822009F8](sub_2517D15CC, 0, 0);
}

uint64_t sub_2517D15CC()
{
  if (*(v0 + 232) == 1)
  {
    v1 = MEMORY[0x277D84F90];
    *(v0 + 208) = 0;
    *(v0 + 216) = v1;
    LOBYTE(v1) = byte_2863AC2C8;
    *(v0 + 235) = byte_2863AC2C8;
    *(v0 + 234) = v1;
    v2 = swift_task_alloc();
    *(v0 + 224) = v2;
    *v2 = v0;
    v2[1] = sub_2517D16E0;
    v3 = *(v0 + 200);

    return sub_2517C3488(v3);
  }

  else
  {

    v5 = *(v0 + 8);
    v6 = MEMORY[0x277D84F90];

    return v5(v6);
  }
}

uint64_t sub_2517D16E0(char a1)
{
  *(*v1 + 236) = a1;

  return MEMORY[0x2822009F8](sub_2517D17E0, 0, 0);
}

uint64_t sub_2517D17E0()
{
  if ((*(v0 + 236) & 1) == 0)
  {
    v4 = *(v0 + 216);
    goto LABEL_28;
  }

  v1 = 0xD00000000000001FLL;
  v2 = *(v0 + 235);
  if (v2 > 4)
  {
    if (*(v0 + 235) <= 6u)
    {
      if (v2 == 5)
      {
        v3 = "ViewHealthRecordsCategoryRoom/6";
      }

      else
      {
        v3 = "ViewHealthRecordsCategoryRoom/2";
      }
    }

    else if (v2 == 7)
    {
      v3 = "ViewHealthRecordsCategoryRoom/1";
    }

    else if (v2 == 8)
    {
      v3 = "ViewHealthRecordsCategoryRoom/5";
    }

    else
    {
      v3 = "ViewHealthRecordsCategoryRoom/8";
    }

    goto LABEL_22;
  }

  if (*(v0 + 235) <= 1u)
  {
    if (*(v0 + 235))
    {
      v3 = "ViewHealthRecordsCategoryRoom/7";
    }

    else
    {
      v1 = 0xD000000000000011;
      v3 = "ViewHealthRecords";
    }

    goto LABEL_22;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v3 = "ViewHealthRecordsCategoryRoom/3";
    }

    else
    {
      v3 = "ViewHealthRecordsCategoryRoom/4";
    }

LABEL_22:
    v5 = v3 - 32;
    goto LABEL_23;
  }

  v5 = "ViewHealthRecordsCategoryRoom/7";
  v1 = 0xD000000000000020;
LABEL_23:
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = v5 | 0x8000000000000000;
  sub_2517C283C(v6 + *(v7 + 20));
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *v6 = v1;
  v6[1] = v8;
  v10 = (v6 + *(v7 + 24));
  *v10 = sub_2517D213C;
  v10[1] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 216);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_2517CAB70(0, v4[2] + 1, 1, *(v0 + 216));
  }

  v13 = v4[2];
  v12 = v4[3];
  if (v13 >= v12 >> 1)
  {
    v4 = sub_2517CAB70((v12 > 1), v13 + 1, 1, v4);
  }

  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v4[2] = v13 + 1;
  sub_2517CB600(v14, v4 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
LABEL_28:
  v16 = *(v0 + 208) + 1;
  if (*(v0 + 208) == 9)
  {

    v17 = *(v0 + 8);

    return v17(v4);
  }

  else
  {
    *(v0 + 208) = v16;
    *(v0 + 216) = v4;
    v19 = *(&unk_2863AC2A8 + v16 + 32);
    *(v0 + 235) = v19;
    *(v0 + 234) = v19;
    v20 = swift_task_alloc();
    *(v0 + 224) = v20;
    *v20 = v0;
    v20[1] = sub_2517D16E0;
    v21 = *(v0 + 200);

    return sub_2517C3488(v21);
  }
}

uint64_t sub_2517D1ADC(uint64_t a1, char a2, char a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_2517D2060(0);
  return sub_2517D88A8();
}

id sub_2517D1B40(unsigned __int8 a1)
{
  sub_2517CF60C(0, &qword_27F45FDD8, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_2517D8688();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &unk_2517DA820;
  v10 = "ViewHealthRecordsCategoryRoom/2";
  v11 = "ViewHealthRecordsCategoryRoom/1";
  if (a1 != 8)
  {
    v11 = "ViewHealthRecordsCategoryRoom/5";
  }

  if (a1 != 7)
  {
    v10 = v11;
  }

  v12 = "ViewHealthRecordsCategoryRoom/4";
  if (a1 != 5)
  {
    v12 = "ViewHealthRecordsCategoryRoom/6";
  }

  if (a1 <= 6u)
  {
    v10 = v12;
  }

  v13 = "ViewHealthRecordsCategoryRoom/7";
  v14 = "sCategoryRoom/10";
  if (a1 != 3)
  {
    v14 = "ViewHealthRecordsCategoryRoom/3";
  }

  if (a1 == 2)
  {
    v15 = 0xD000000000000020;
  }

  else
  {
    v15 = 0xD00000000000001FLL;
  }

  if (a1 != 2)
  {
    v13 = v14;
  }

  if (a1)
  {
    v16 = 0xD00000000000001FLL;
  }

  else
  {
    v16 = 0xD000000000000011;
  }

  if (a1)
  {
    v9 = "ViewHealthRecords";
  }

  if (a1 <= 1u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (a1 > 1u)
  {
    v9 = v13;
  }

  if (a1 <= 4u)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0xD00000000000001FLL;
  }

  if (a1 <= 4u)
  {
    v19 = v9;
  }

  else
  {
    v19 = v10;
  }

  v24[0] = 0xD000000000000011;
  v24[1] = 0x80000002517DB1C0;
  MEMORY[0x2530831A0](v18, v19 | 0x8000000000000000);

  sub_2517D8678();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_2517CEB58(v4);
    sub_2517BB2A0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v21 = result;

      v22 = sub_2517D8658();
      sub_2517D4B0C(MEMORY[0x277D84F90]);
      v23 = sub_2517D8788();

      [v21 openSensitiveURL:v22 withOptions:v23];

      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2517D1EC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517CA9BC;

  return sub_2517D1200();
}

uint64_t type metadata accessor for RecordsSectionProvider(uint64_t a1)
{
  result = qword_27F45FE70;
  if (!qword_27F45FE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2517D1FC0(uint64_t a1)
{
  sub_2517BA230();
  if (v1 <= 0x3F)
  {
    sub_2517CF60C(319, &qword_28110FE50, MEMORY[0x277CC9130]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2517D2060(uint64_t a1)
{
  if (!qword_27F45FE80)
  {
    sub_2517D20C8();
    v1 = sub_2517D88B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45FE80);
    }
  }
}

void sub_2517D20C8()
{
  if (!qword_27F45FE88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F45FE88);
    }
  }
}

uint64_t sub_2517D2158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2517D234C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_2517D8738();
}

uint64_t sub_2517D22AC(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_2517C470C();
    swift_willThrowTypedImpl();
    sub_2517D234C(0);
    return sub_2517D8898();
  }

  else
  {
    sub_2517D234C(0);

    return sub_2517D88A8();
  }
}

void sub_2517D234C(uint64_t a1)
{
  if (!qword_27F45FE90)
  {
    sub_2517C470C();
    v1 = sub_2517D88B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45FE90);
    }
  }
}

uint64_t sub_2517D23B4(void *a1, char a2)
{
  sub_2517D234C(0);

  return sub_2517D22AC(a1, a2 & 1);
}

uint64_t sub_2517D2444(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = &unk_2517DA820;
  v4 = a1;
  if (a1 > 4u)
  {
    v12 = "ViewHealthRecordsCategoryRoom/2";
    v13 = "ViewHealthRecordsCategoryRoom/1";
    if (a1 != 8)
    {
      v13 = "ViewHealthRecordsCategoryRoom/5";
    }

    if (a1 != 7)
    {
      v12 = v13;
    }

    v14 = "ViewHealthRecordsCategoryRoom/4";
    if (a1 != 5)
    {
      v14 = "ViewHealthRecordsCategoryRoom/6";
    }

    if (a1 <= 6u)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }

    v10 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = "ViewHealthRecordsCategoryRoom/7";
    v6 = "sCategoryRoom/10";
    if (a1 != 3)
    {
      v6 = "ViewHealthRecordsCategoryRoom/3";
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000020;
    }

    else
    {
      v7 = 0xD00000000000001FLL;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v8 = "ViewHealthRecords";
    if (a1)
    {
      v9 = 0xD00000000000001FLL;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (!a1)
    {
      v8 = &unk_2517DA820;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v15 = "ViewHealthRecordsCategoryRoom/6";
      }

      else
      {
        v15 = "ViewHealthRecordsCategoryRoom/2";
      }
    }

    else if (a2 == 7)
    {
      v15 = "ViewHealthRecordsCategoryRoom/1";
    }

    else if (a2 == 8)
    {
      v15 = "ViewHealthRecordsCategoryRoom/5";
    }

    else
    {
      v15 = "ViewHealthRecordsCategoryRoom/8";
    }

    goto LABEL_49;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v15 = "ViewHealthRecordsCategoryRoom/7";
LABEL_49:
      v3 = v15 - 32;
      goto LABEL_50;
    }

    v2 = 0xD000000000000011;
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v15 = "ViewHealthRecordsCategoryRoom/3";
      }

      else
      {
        v15 = "ViewHealthRecordsCategoryRoom/4";
      }

      goto LABEL_49;
    }

    v3 = "ViewHealthRecordsCategoryRoom/7";
    v2 = 0xD000000000000020;
  }

LABEL_50:
  if (v10 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_2517D8A68();
  }

  return v16 & 1;
}

uint64_t sub_2517D265C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x676E6972616873;
    }

    else
    {
      v2 = 0x7972616D6D7573;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x646E6572546C6C61;
    v3 = 0xE900000000000073;
  }

  else if (a1 == 3)
  {
    v2 = 0x49676E6972616873;
    v3 = 0xED0000657469766ELL;
  }

  else
  {
    v2 = 0x684368746C616568;
    v3 = 0xEF7473696C6B6365;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x676E6972616873;
    }

    else
    {
      v8 = 0x7972616D6D7573;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x49676E6972616873;
    v5 = 0xED0000657469766ELL;
    if (a2 != 3)
    {
      v4 = 0x684368746C616568;
      v5 = 0xEF7473696C6B6365;
    }

    if (a2 == 2)
    {
      v6 = 0x646E6572546C6C61;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE900000000000073;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_2517D8A68();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t HealthTabView.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7972616D6D7573;
  v3 = 0x646E6572546C6C61;
  v4 = 0x49676E6972616873;
  if (v1 != 3)
  {
    v4 = 0x684368746C616568;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E6972616873;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2517D28E4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2517BD148(0, &qword_28110FE58, MEMORY[0x277CBA248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  sub_2517BD148(0, &qword_28110FE50, MEMORY[0x277CC9130], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v20 - v7;
  v8 = sub_2517D8628();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2517D86B8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2517D87C8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2517D8638();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = *v1;
  if (v16 > 1 && (v16 == 2 || v16 == 3))
  {
    sub_2517D87B8();
    sub_2517D86A8();
    (*(v9 + 104))(v11, *MEMORY[0x277CC9110], v8);
    sub_2517D8648();
    (*(v15 + 56))(v23, 1, 1, v14);
    sub_2517D8478();
    v17 = sub_2517D8488();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  }

  else
  {
    sub_2517D87B8();
    sub_2517D86A8();
    v22 = *MEMORY[0x277CC9110];
    v21 = *(v9 + 104);
    v21(v11);
    sub_2517D8648();
    (*(v15 + 56))(v23, 1, 1, v14);
    sub_2517D8478();
    v18 = sub_2517D8488();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    sub_2517BD148(0, &qword_27F45FD68, MEMORY[0x277CC9130], MEMORY[0x277D84560]);
    *(swift_allocObject() + 16) = xmmword_2517D9010;
    sub_2517D87B8();
    sub_2517D86A8();
    (v21)(v11, v22, v8);
    sub_2517D8648();
  }

  return sub_2517D84A8();
}

uint64_t sub_2517D32D4()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = v2;
  if (v1 <= 1)
  {
    if (v1)
    {
      v4 = [v2 sharingOverviewHostName];
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = [v2 healthAppSummaryHostName];
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
    v4 = [v2 healthTrendsHostName];
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_2517D87F8();
    v5 = sub_2517D87E8();

    goto LABEL_13;
  }

  if (v1 != 3)
  {
    v4 = [v2 healthAppHealthChecklistHostName];
    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v4 = [v2 healthAppSharingInviteFlowPath];
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_10:
  v5 = v4;
LABEL_13:
  v6 = [v3 getInternalURLStringFor_];

  v7 = sub_2517D87F8();
  return v7;
}

HealthIntents::HealthTabView_optional __swiftcall HealthTabView.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2517D8A18();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2517D3490()
{
  result = qword_27F45FE98;
  if (!qword_27F45FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE98);
  }

  return result;
}

uint64_t sub_2517D34E4()
{
  sub_2517D8AC8();
  sub_2517D8818();

  return sub_2517D8AE8();
}

uint64_t sub_2517D35E4(uint64_t a1)
{
  sub_2517D8818();
}

uint64_t sub_2517D36D0(uint64_t a1)
{
  sub_2517D8AC8();
  sub_2517D8818();

  return sub_2517D8AE8();
}

void sub_2517D37D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7573;
  v5 = 0xE900000000000073;
  v6 = 0x646E6572546C6C61;
  v7 = 0xED0000657469766ELL;
  v8 = 0x49676E6972616873;
  if (v2 != 3)
  {
    v8 = 0x684368746C616568;
    v7 = 0xEF7473696C6B6365;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6972616873;
    v3 = 0xE700000000000000;
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

unint64_t sub_2517D3898()
{
  result = qword_27F45FEA0;
  if (!qword_27F45FEA0)
  {
    sub_2517D38F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEA0);
  }

  return result;
}

void sub_2517D38F0()
{
  if (!qword_27F45FEA8)
  {
    v0 = sub_2517D8868();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FEA8);
    }
  }
}

uint64_t getEnumTagSinglePayload for HealthTabView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthTabView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2517D3AA4()
{
  result = qword_27F45FEB0;
  if (!qword_27F45FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEB0);
  }

  return result;
}

unint64_t sub_2517D3AFC()
{
  result = qword_27F45FEB8;
  if (!qword_27F45FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEB8);
  }

  return result;
}

unint64_t sub_2517D3BBC()
{
  result = qword_27F45FEC0;
  if (!qword_27F45FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEC0);
  }

  return result;
}

uint64_t sub_2517D3C10()
{
  v0 = sub_2517D8628();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2517D86B8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2517D87C8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2517D8638();
  __swift_allocate_value_buffer(v6, qword_27F462010);
  __swift_project_value_buffer(v6, qword_27F462010);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2517D8648();
}

uint64_t sub_2517D3DFC()
{
  sub_2517D4D4C(0, &qword_28110FE50, MEMORY[0x277CC9130]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  v15[0] = sub_2517D8628();
  v3 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2517D86B8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2517D87C8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2517D8638();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  sub_2517D4D4C(0, &qword_27F45FD90, MEMORY[0x277CB9F98]);
  v11 = v10;
  __swift_allocate_value_buffer(v10, qword_27F462028);
  v12 = __swift_project_value_buffer(v11, qword_27F462028);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v15[0]);
  sub_2517D8648();
  (*(v9 + 56))(v2, 1, 1, v8);
  sub_2517D8408();
  v13 = sub_2517D83F8();
  return (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
}

uint64_t sub_2517D4158()
{
  v0 = sub_2517D85C8();
  __swift_allocate_value_buffer(v0, qword_27F462040);
  v1 = __swift_project_value_buffer(v0, qword_27F462040);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2517D41E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2517D8688();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2517D42AC, 0, 0);
}

id sub_2517D42AC()
{
  v1 = HKSPSleepURLWithOptions();
  v3 = v0[5];
  v2 = v0[6];
  if (v1)
  {
    v4 = v0[3];
    v5 = v0[4];
    v6 = v1;
    sub_2517D8668();

    (*(v5 + 32))(v2, v3, v4);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    v9 = v0[6];
    v10 = v0[3];
    v11 = v0[4];
    v12 = sub_2517D8658();
    sub_2517D4B0C(MEMORY[0x277D84F90]);
    v13 = sub_2517D8788();

    [v8 openSensitiveURL:v12 withOptions:v13];

    sub_2517D8178();
    (*(v11 + 8))(v9, v10);

    v14 = v0[1];
  }

  else
  {
    sub_2517D4730();
    swift_allocError();
    swift_willThrow();

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_2517D4510@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_2517D45B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FB28 != -1)
  {
    swift_once();
  }

  sub_2517D4D4C(0, &qword_27F45FD90, MEMORY[0x277CB9F98]);
  v3 = __swift_project_value_buffer(v2, qword_27F462028);

  return sub_2517CB8B0(v3, a1);
}

uint64_t sub_2517D464C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2517C04AC;

  return sub_2517D41E0(a1);
}

uint64_t sub_2517D46E4(uint64_t a1)
{
  v2 = sub_2517D3BBC();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2517D4730()
{
  result = qword_27F45FEC8;
  if (!qword_27F45FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEC8);
  }

  return result;
}

unint64_t sub_2517D4784(uint64_t a1, uint64_t a2)
{
  sub_2517D8AC8();
  sub_2517D8818();
  v4 = sub_2517D8AE8();

  return sub_2517D4894(a1, a2, v4);
}

unint64_t sub_2517D47FC(uint64_t a1)
{
  sub_2517D8708();
  sub_2517D4DA0(&qword_27F45FEE0, MEMORY[0x277D124E0], MEMORY[0x277D124E8]);
  v2 = sub_2517D8798();

  return sub_2517D494C(a1, v2);
}

unint64_t sub_2517D4894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2517D8A68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2517D494C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2517D8708();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2517D4DA0(&qword_27F45FEE8, MEMORY[0x277D124E0], MEMORY[0x277D124F0]);
      v15 = sub_2517D87A8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2517D4B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2517D4C10();
    v3 = sub_2517D89F8();
    v4 = a1 + 32;
    sub_2517D82A8();
    while (1)
    {
      sub_2517D4C74(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2517D4784(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2517D4D3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2517D4C10()
{
  if (!qword_27F45FED0)
  {
    v0 = sub_2517D8A08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FED0);
    }
  }
}

uint64_t sub_2517D4C74(uint64_t a1, uint64_t a2)
{
  sub_2517D4CD8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2517D4CD8()
{
  if (!qword_27F45FED8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F45FED8);
    }
  }
}

_OWORD *sub_2517D4D3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2517D4D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2517D8918();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2517D4DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2517D4DFC()
{
  result = qword_27F45FEF0;
  if (!qword_27F45FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEF0);
  }

  return result;
}

uint64_t sub_2517D4E50(uint64_t a1)
{
  v2 = sub_2517D82B8();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517D7F3C(0, &qword_27F45FF90, sub_2517CC0B4, &type metadata for OpenDataTypeIntent, MEMORY[0x277CB9F68]);
  v27 = v4;
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  sub_2517D7F3C(0, &qword_27F45FF98, sub_2517CC0B4, &type metadata for OpenDataTypeIntent, MEMORY[0x277CB9F60]);
  MEMORY[0x28223BE20](v7);
  sub_2517CC0B4();
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  v26 = sub_2517BC8FC();
  v28 = a1;
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v25 = sub_2517D82D8();
  v8 = *(v29 + 8);
  v29 += 8;
  v30 = v8;
  v9 = v27;
  v8(v6, v27);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v11 = v22;
  v10 = v23;
  v12 = v24;
  (*(v23 + 104))(v22, *MEMORY[0x277CB9F50], v24);
  sub_2517D8368();
  (*(v10 + 8))(v11, v12);
  sub_2517D8388();
  sub_2517D83A8();
  v24 = sub_2517D82D8();
  v30(v6, v9);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v23 = sub_2517D82D8();
  v30(v6, v9);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v22 = sub_2517D82D8();
  v13 = v30;
  v30(v6, v27);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v21 = sub_2517D82D8();
  v14 = v27;
  v13(v6, v27);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v15 = sub_2517D82D8();
  v30(v6, v14);
  sub_2517D7FA4(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2517DA720;
  v17 = v24;
  *(v16 + 32) = v25;
  *(v16 + 40) = v17;
  v18 = v22;
  *(v16 + 48) = v23;
  *(v16 + 56) = v18;
  *(v16 + 64) = v21;
  *(v16 + 72) = v15;
  v19 = sub_2517D82C8();

  return v19;
}

uint64_t sub_2517D5658(uint64_t *a1)
{
  v1 = a1[2];
  sub_2517D82A8();
  v2 = v1;
  return sub_2517D8208();
}

uint64_t sub_2517D56AC()
{
  v0 = sub_2517D8348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_2517BC8FC();
  sub_2517D82A8();

  sub_2517CC0B4();
  sub_2517D8338();
  v4 = sub_2517D8328();
  (*(v1 + 8))(v3, v0);
  sub_2517D7894(0, &qword_27F45FF40, sub_2517D7D5C, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2517D9010;
  *(v5 + 32) = v4;
  v6 = sub_2517D8318();

  return v6;
}

uint64_t sub_2517D5840()
{
  v0 = sub_2517D82F8();
  v1 = sub_2517D82F8();
  v2 = sub_2517D82F8();
  v3 = sub_2517D82F8();
  v4 = sub_2517D82F8();
  v5 = sub_2517D82F8();
  sub_2517D7894(0, &qword_27F45FF08, sub_2517D78F8, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2517DA720;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_2517D82E8();

  return v7;
}

uint64_t sub_2517D599C(uint64_t a1)
{
  v26 = sub_2517D82B8();
  v39 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517D7F3C(0, &qword_27F45FF70, sub_2517C5564, &type metadata for OpenViewIntent, MEMORY[0x277CB9F68]);
  v4 = v3;
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  sub_2517D7F3C(0, &qword_27F45FF78, sub_2517C5564, &type metadata for OpenViewIntent, MEMORY[0x277CB9F60]);
  MEMORY[0x28223BE20](v7);
  sub_2517C5564();
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  v29 = sub_2517D7E14(&qword_27F45FBF0, type metadata accessor for HealthViewEntity, &unk_2517D9B9C);
  v37 = a1;
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v28 = sub_2517D82D8();
  v8 = *(v38 + 8);
  v38 += 8;
  v30 = v8;
  v33 = v4;
  v8(v6, v4);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v36 = *MEMORY[0x277CB9F50];
  v9 = v39;
  v10 = *(v39 + 104);
  v34 = v39 + 104;
  v35 = v10;
  v11 = v31;
  v12 = v26;
  v10(v31);
  sub_2517D8368();
  v13 = *(v9 + 8);
  v39 = v9 + 8;
  v32 = v13;
  v13(v11, v12);
  sub_2517D8388();
  sub_2517D83A8();
  v27 = sub_2517D82D8();
  v14 = v4;
  v15 = v30;
  v30(v6, v14);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v16 = v31;
  v35(v31, v36, v12);
  sub_2517D8368();
  v32(v16, v12);
  sub_2517D8388();
  sub_2517D83A8();
  v25 = sub_2517D82D8();
  v15(v6, v33);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v17 = v31;
  v35(v31, v36, v12);
  sub_2517D8368();
  v32(v17, v12);
  sub_2517D8388();
  sub_2517D83A8();
  v24 = sub_2517D82D8();
  v30(v6, v33);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v35(v17, v36, v12);
  sub_2517D8368();
  v32(v17, v12);
  sub_2517D8388();
  sub_2517D83A8();
  v18 = sub_2517D82D8();
  v30(v6, v33);
  sub_2517D7EB8(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2517DA730;
  v20 = v27;
  *(v19 + 32) = v28;
  *(v19 + 40) = v20;
  v21 = v24;
  *(v19 + 48) = v25;
  *(v19 + 56) = v21;
  *(v19 + 64) = v18;
  v22 = sub_2517D82C8();

  return v22;
}

uint64_t sub_2517D6204(uint64_t a1)
{
  v2 = type metadata accessor for HealthViewEntity(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_2517CB59C(a1, &v9 - v6);
  sub_2517CB59C(v7, v5);
  sub_2517D8208();
  return sub_2517D7E5C(v7);
}

uint64_t sub_2517D62C4()
{
  v0 = sub_2517D8348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_2517D7E14(&qword_27F45FBF0, type metadata accessor for HealthViewEntity, &unk_2517D9B9C);
  sub_2517D82A8();

  sub_2517C5564();
  sub_2517D8338();
  v4 = sub_2517D8328();
  (*(v1 + 8))(v3, v0);
  sub_2517D7894(0, &qword_27F45FF40, sub_2517D7D5C, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2517D9010;
  *(v5 + 32) = v4;
  v6 = sub_2517D8318();

  return v6;
}

uint64_t sub_2517D6488()
{
  v15 = sub_2517D82F8();
  v14 = sub_2517D82F8();
  v13 = sub_2517D82F8();
  v12 = sub_2517D82F8();
  v0 = sub_2517D82F8();
  v1 = sub_2517D82F8();
  v2 = sub_2517D82F8();
  v3 = sub_2517D82F8();
  v4 = sub_2517D82F8();
  v5 = sub_2517D82F8();
  v6 = sub_2517D82F8();
  v7 = sub_2517D82F8();
  v8 = sub_2517D82F8();
  sub_2517D7894(0, &qword_27F45FF08, sub_2517D78F8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2517DA740;
  *(v9 + 32) = v15;
  *(v9 + 40) = v14;
  *(v9 + 48) = v13;
  *(v9 + 56) = v12;
  *(v9 + 64) = v0;
  *(v9 + 72) = v1;
  *(v9 + 80) = v2;
  *(v9 + 88) = v3;
  *(v9 + 96) = v4;
  *(v9 + 104) = v5;
  *(v9 + 112) = v6;
  *(v9 + 120) = v7;
  *(v9 + 128) = v8;
  v10 = sub_2517D82E8();

  return v10;
}

uint64_t sub_2517D6708(uint64_t a1)
{
  v30 = a1;
  sub_2517D7F3C(0, &qword_27F45FF50, sub_2517D03C8, &type metadata for OpenSearchIntent, MEMORY[0x277CB9F68]);
  v38 = v1;
  v40 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v37 = &v25 - v2;
  v3 = sub_2517D82B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517D7F3C(0, &qword_27F45FF58, sub_2517D03C8, &type metadata for OpenSearchIntent, MEMORY[0x277CB9F60]);
  MEMORY[0x28223BE20](v7);
  v8 = sub_2517D03C8();
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  v31 = sub_2517D7E14(&qword_27F45FE38, MEMORY[0x277CBA230], MEMORY[0x277CBA228]);
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v9 = *MEMORY[0x277CB9F50];
  v39 = *(v4 + 104);
  v35 = v9;
  v36 = v3;
  v39(v6, v9, v3);
  v32 = v4 + 104;
  sub_2517D8368();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v33 = v10;
  v34 = v4 + 8;
  sub_2517D8388();
  v11 = v37;
  sub_2517D83A8();
  v29 = v8;
  v28 = sub_2517D82D8();
  v25 = *(v40 + 8);
  v40 += 8;
  v25(v11, v38);
  sub_2517D8398();
  sub_2517D8388();
  v12 = v36;
  v39(v6, v9, v36);
  sub_2517D8368();
  v13 = v6;
  v10(v6, v12);
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v14 = v37;
  sub_2517D83A8();
  v27 = sub_2517D82D8();
  v15 = v38;
  v16 = v25;
  v25(v14, v38);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v17 = v36;
  v39(v13, v35, v36);
  sub_2517D8368();
  v33(v13, v17);
  sub_2517D8388();
  v18 = v37;
  sub_2517D83A8();
  v26 = sub_2517D82D8();
  v16(v18, v15);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v19 = v36;
  v39(v13, v35, v36);
  sub_2517D8368();
  v33(v13, v19);
  sub_2517D8388();
  sub_2517D83A8();
  v20 = sub_2517D82D8();
  v16(v18, v38);
  sub_2517D7D90(0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2517DA750;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v20;
  v23 = sub_2517D82C8();

  return v23;
}

uint64_t sub_2517D6E80(uint64_t a1)
{
  v2 = sub_2517D8468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_2517D8208();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_2517D6FB4()
{
  v0 = sub_2517D8348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_2517D7E14(&qword_27F45FE38, MEMORY[0x277CBA230], MEMORY[0x277CBA228]);
  sub_2517D82A8();

  sub_2517D03C8();
  sub_2517D8338();
  v4 = sub_2517D8328();
  (*(v1 + 8))(v3, v0);
  sub_2517D7894(0, &qword_27F45FF40, sub_2517D7D5C, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2517D9010;
  *(v5 + 32) = v4;
  v6 = sub_2517D8318();

  return v6;
}

uint64_t sub_2517D7178()
{
  v0 = sub_2517D82F8();
  v1 = sub_2517D82F8();
  v2 = sub_2517D82F8();
  v3 = sub_2517D82F8();
  v4 = sub_2517D82F8();
  v5 = sub_2517D82F8();
  sub_2517D7894(0, &qword_27F45FF08, sub_2517D78F8, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2517DA720;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_2517D82E8();

  return v7;
}

uint64_t sub_2517D72D0()
{
  sub_2517D7F3C(0, &qword_27F45FF28, sub_2517D3BBC, &type metadata for OpenSleepScheduleIntent, MEMORY[0x277CB9F68]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - v3;
  sub_2517D3BBC();
  sub_2517D8358();
  v17 = sub_2517D82D8();
  v5 = *(v2 + 8);
  v5(v4, v1);
  sub_2517D8358();
  v16 = sub_2517D82D8();
  v5(v4, v1);
  sub_2517D8358();
  v15 = sub_2517D82D8();
  v5(v4, v1);
  sub_2517D8358();
  v6 = sub_2517D82D8();
  v5(v4, v1);
  sub_2517D8358();
  v7 = sub_2517D82D8();
  v5(v4, v1);
  sub_2517D8358();
  v8 = sub_2517D82D8();
  v5(v4, v1);
  sub_2517D8358();
  v9 = sub_2517D82D8();
  v5(v4, v1);
  sub_2517D7C68(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2517DA760;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  *(v10 + 48) = v15;
  *(v10 + 56) = v6;
  *(v10 + 64) = v7;
  *(v10 + 72) = v8;
  *(v10 + 80) = v9;
  v12 = sub_2517D82C8();

  return v12;
}

uint64_t sub_2517D764C()
{
  v0 = sub_2517D82F8();
  sub_2517D7894(0, &qword_27F45FF08, sub_2517D78F8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2517D9010;
  *(v1 + 32) = v0;
  v2 = sub_2517D82E8();

  return v2;
}

uint64_t sub_2517D76EC()
{
  v0 = sub_2517D8298();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517C5564();
  sub_2517D8288();
  v4 = sub_2517D8278();
  (*(v1 + 8))(v3, v0);
  sub_2517D7894(0, &qword_27F45FEF8, sub_2517D7860, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2517D9010;
  *(v5 + 32) = v4;
  v6 = sub_2517D8268();

  return v6;
}

void sub_2517D7894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2517D78F8()
{
  if (!qword_27F45FF10)
  {
    v0 = sub_2517D8868();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FF10);
    }
  }
}

uint64_t sub_2517D7948()
{
  v0 = sub_2517D83D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2517CC528();
  sub_2517CC0B4();
  sub_2517D83E8();
  v4 = sub_2517D83C8();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v13 = sub_2517CAE9C();
  sub_2517C5564();
  sub_2517D83E8();
  v6 = sub_2517D83C8();
  v5(v3, v0);
  v13 = sub_2517D09F0();
  sub_2517D03C8();
  sub_2517D83E8();
  v7 = sub_2517D83C8();
  v5(v3, v0);
  sub_2517D3BBC();
  sub_2517D83E8();
  v8 = sub_2517D83C8();
  v5(v3, v0);
  sub_2517D7894(0, &qword_27F45FF18, sub_2517D7C34, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2517DA750;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = sub_2517D83B8();

  return v10;
}

void sub_2517D7C68(uint64_t a1)
{
  if (!qword_27F45FF30)
  {
    sub_2517D7CEC(255, &qword_27F45FF38, &qword_27F45FF28, sub_2517D3BBC, &type metadata for OpenSleepScheduleIntent);
    v1 = sub_2517D8A58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45FF30);
    }
  }
}

void sub_2517D7CEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_2517D7F3C(255, a3, a4, a5, MEMORY[0x277CB9F68]);
    v6 = sub_2517D8868();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2517D7D90(uint64_t a1)
{
  if (!qword_27F45FF60)
  {
    sub_2517D7CEC(255, &qword_27F45FF68, &qword_27F45FF50, sub_2517D03C8, &type metadata for OpenSearchIntent);
    v1 = sub_2517D8A58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45FF60);
    }
  }
}

uint64_t sub_2517D7E14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2517D7E5C(uint64_t a1)
{
  v2 = type metadata accessor for HealthViewEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2517D7EB8(uint64_t a1)
{
  if (!qword_27F45FF80)
  {
    sub_2517D7CEC(255, &qword_27F45FF88, &qword_27F45FF70, sub_2517C5564, &type metadata for OpenViewIntent);
    v1 = sub_2517D8A58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45FF80);
    }
  }
}

void sub_2517D7F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2517D7FA4(uint64_t a1)
{
  if (!qword_27F45FFA0)
  {
    sub_2517D7CEC(255, &qword_27F45FFA8, &qword_27F45FF90, sub_2517CC0B4, &type metadata for OpenDataTypeIntent);
    v1 = sub_2517D8A58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45FFA0);
    }
  }
}