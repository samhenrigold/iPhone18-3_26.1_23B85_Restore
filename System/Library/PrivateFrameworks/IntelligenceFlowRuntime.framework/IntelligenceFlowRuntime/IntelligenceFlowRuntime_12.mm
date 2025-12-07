uint64_t sub_22BCA034C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCA045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_22BCA04DC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22BCA058C()
{
  result = qword_27D8E3C08;
  if (!qword_27D8E3C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C08);
  }

  return result;
}

unint64_t sub_22BCA05E4()
{
  result = qword_27D8E3C10;
  if (!qword_27D8E3C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C10);
  }

  return result;
}

unint64_t sub_22BCA063C()
{
  result = qword_27D8E3C18;
  if (!qword_27D8E3C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C18);
  }

  return result;
}

unint64_t sub_22BCA0694()
{
  result = qword_27D8E3C20;
  if (!qword_27D8E3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C20);
  }

  return result;
}

unint64_t sub_22BCA06EC()
{
  result = qword_27D8E3C28;
  if (!qword_27D8E3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C28);
  }

  return result;
}

unint64_t sub_22BCA0744()
{
  result = qword_27D8E3C30;
  if (!qword_27D8E3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C30);
  }

  return result;
}

uint64_t sub_22BCA07B0(uint64_t a1)
{
  result = sub_22BDB5664();
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

unint64_t sub_22BCA0844()
{
  result = qword_281429C88;
  if (!qword_281429C88)
  {
    type metadata accessor for CurareFSServiceSubscriber(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281429C88);
  }

  return result;
}

void sub_22BCA08B0(uint64_t a1)
{
  sub_22BCA094C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22BCA094C(uint64_t a1)
{
  if (!qword_281428940)
  {
    sub_22BDB9C64();
    v1 = sub_22BDB9E34();
    if (!v2)
    {
      atomic_store(v1, &qword_281428940);
    }
  }
}

uint64_t sub_22BCA09FC()
{
  v7 = sub_22BDBB174();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22BDBB154();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22BDBAA44();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_22BB6ECB0();
  sub_22BDBAA24();
  v8 = MEMORY[0x277D84F90];
  sub_22BCA1FA8(&unk_281428780, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22BBE6DE0(&qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BB6B854(&qword_2814287E0, &qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BDBB2B4();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_22BDBB1A4();
  qword_27D906308 = result;
  return result;
}

uint64_t sub_22BCA0C4C(uint64_t a1)
{
  v1 = sub_22BDB8774();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  v8 = sub_22BDB77D4();
  sub_22BB30444();
  v25 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v13 = v12 - v11;
  sub_22BDB6384();

  v14 = sub_22BDB77C4();
  v15 = sub_22BDBB104();

  if (os_log_type_enabled(v14, v15))
  {
    v24 = v8;
    v16 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v16 = 136315138;
    v17 = sub_22BDB9C34();
    v19 = v3;
    v20 = v1;
    v21 = sub_22BB32EE0(v17, v18, &v26);

    *(v16 + 4) = v21;
    v1 = v20;
    v3 = v19;
    _os_log_impl(&dword_22BB2C000, v14, v15, "InteractionStoreServiceSubscriber received event: %s", v16, 0xCu);
    sub_22BB32FA4(v23);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v25 + 8))(v13, v24);
  }

  else
  {

    (*(v25 + 8))(v13, v8);
  }

  sub_22BDB9C44();
  if ((*(v3 + 88))(v7, v1) == *MEMORY[0x277D1DE98])
  {
    sub_22BCA0EF8();
  }

  else
  {
    (*(v3 + 8))(v7, v1);
  }

  return sub_22BDB9E14();
}

uint64_t sub_22BCA0EF8()
{
  sub_22BDBAA14();
  sub_22BB30444();
  v35 = v2;
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v32 = v4 - v3;
  sub_22BDBAA44();
  sub_22BB30444();
  v33 = v6;
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BDBAA04();
  sub_22BB30444();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v16 = (v15 - v14);
  v17 = sub_22BDBAA64();
  sub_22BB30444();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v31 - v24;
  if (qword_27D8E22A0 != -1)
  {
    swift_once();
  }

  v31[1] = qword_27D906308;
  sub_22BDBAA54();
  *v16 = 60;
  (*(v12 + 104))(v16, *MEMORY[0x277D85188], v10);
  MEMORY[0x2318A4A40](v23, v16);
  (*(v12 + 8))(v16, v10);
  v26 = *(v19 + 8);
  v26(v23, v17);
  aBlock[4] = sub_22BCA1E84;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BB682A4;
  aBlock[3] = &unk_283F763A8;
  v27 = _Block_copy(aBlock);

  sub_22BDBAA34();
  v37 = MEMORY[0x277D84F90];
  sub_22BCA1FA8(&qword_2814288E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22BBE6DE0(&qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB6B854(&qword_2814287F0, &qword_27D8E3C50, &unk_22BDC0D90);
  v28 = v32;
  v29 = v36;
  sub_22BDBB2B4();
  MEMORY[0x2318A5130](v25, v9, v28, v27);
  _Block_release(v27);
  (*(v35 + 8))(v28, v29);
  (*(v33 + 8))(v9, v34);
  v26(v25, v17);
}

uint64_t sub_22BCA1328(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_22BDB77D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6384();
  v9 = sub_22BDB77C4();
  v10 = sub_22BDBB104();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22BB2C000, v9, v10, "Start the postInteractionEngagement collection", v11, 2u);
    MEMORY[0x2318A6080](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_22BDBAEF4();
  sub_22BB336D0(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;

  sub_22BCA18E4(0, 0, v4, &unk_22BDC0DA8, v13);

  return sub_22BCA1F40(v4);
}

uint64_t sub_22BCA152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22BDB77D4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BCA15EC, 0, 0);
}

uint64_t sub_22BCA15EC()
{
  v3 = (*MEMORY[0x277D3E918] + MEMORY[0x277D3E918]);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_22BCA169C;

  return v3();
}

uint64_t sub_22BCA18E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_22BBB5584(a3, v21 - v9);
  v11 = sub_22BDBAEF4();
  v12 = sub_22BB3AA28(v10, 1, v11);

  if (v12 == 1)
  {
    sub_22BCA1F40(v10);
  }

  else
  {
    sub_22BDBAEE4();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_22BDBAE44();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_22BDBAC24() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = sub_22BB32B90();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return sub_22BB32B90();
}

uint64_t sub_22BCA1AF4(char a1)
{
  v1 = sub_22BDB77D4();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  sub_22BDB6384();
  v8 = sub_22BDB77C4();
  v9 = sub_22BDBB104();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    sub_22BBE6DE0(&qword_27D8E3C38, &unk_22BDC0C20);
    v12 = sub_22BDBAC14();
    v14 = sub_22BB32EE0(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22BB2C000, v8, v9, "InteractionStoreServiceSubscriber received completion: %s", v10, 0xCu);
    sub_22BB32FA4(v11);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_22BCA1C94()
{
  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime33InteractionStoreServiceSubscriber_id);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for InteractionStoreServiceSubscriber(uint64_t a1)
{
  result = qword_27D8E3C68;
  if (!qword_27D8E3C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BCA1D5C(uint64_t a1)
{
  result = sub_22BDB5664();
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

uint64_t sub_22BCA1E8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22BB6A0B4;

  return sub_22BCA152C(a1, v4, v5, v6);
}

uint64_t sub_22BCA1F40(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCA1FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BCA1FF8(uint64_t a1)
{
  result = sub_22BDB5664();
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

unint64_t sub_22BCA20A4()
{
  result = qword_281429950;
  if (!qword_281429950)
  {
    type metadata accessor for TaskStepLoggingSubscriber(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281429950);
  }

  return result;
}

uint64_t sub_22BCA20FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v9);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  sub_22BBB5584(a3, v26 - v11);
  v13 = sub_22BDBAEF4();
  v14 = sub_22BB3AA28(v12, 1, v13);

  if (v14 == 1)
  {
    sub_22BB6B75C(v12, &qword_27D8E2978, &qword_22BDBD020);
  }

  else
  {
    sub_22BDBAEE4();
    sub_22BB30474();
    (*(v15 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22BDBAE44();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22BDBAC24() + 32;
      sub_22BB322B0();
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_22BB6B75C(a3, &qword_27D8E2978, &qword_22BDBD020);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22BB6B75C(a3, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB322B0();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22BCA23BC()
{
  sub_22BB32BB0();
  sub_22BB6E87C(v0, v1, &unk_22BDC0EA8);
  return sub_22BDB9F04();
}

uint64_t sub_22BCA2448(uint64_t a1)
{
  result = sub_22BDB5664();
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

uint64_t sub_22BCA24F4(uint64_t a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v3);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_22BDBAED4();
  v7 = sub_22BDBAEF4();
  sub_22BB336D0(v6, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = v1;

  sub_22BCA20FC(0, 0, v6, &unk_22BDC0FA0, v8);
}

uint64_t sub_22BCA25E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_22BDB8774();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_22BDB77D4();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BCA2700, 0, 0);
}

uint64_t sub_22BCA28EC()
{
  v1 = sub_22BDB77D4();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB36220();
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB104();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_22BB37F30();
    *v7 = 0;
    _os_log_impl(&dword_22BB2C000, v5, v6, "Sending subscriptions is not supported (for now)", v7, 2u);
    sub_22BB30AF0();
  }

  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_22BCA29F0(char a1)
{
  v2 = sub_22BDB77D4();
  sub_22BB30444();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  if (a1)
  {
    sub_22BDB6384();
    v11 = sub_22BDB77C4();
    v12 = sub_22BDBB104();
    if (!os_log_type_enabled(v11, v12))
    {
      v8 = v10;
      goto LABEL_8;
    }

    v13 = sub_22BB37F30();
    *v13 = 0;
    _os_log_impl(&dword_22BB2C000, v11, v12, "ODPEvent Publisher finished with .completed", v13, 2u);
    v8 = v10;
    goto LABEL_6;
  }

  sub_22BDB6384();
  v11 = sub_22BDB77C4();
  v14 = sub_22BDBB104();
  if (os_log_type_enabled(v11, v14))
  {
    v15 = sub_22BB37F30();
    *v15 = 0;
    _os_log_impl(&dword_22BB2C000, v11, v14, "ODPEvent Publisher finished with .failure", v15, 2u);
LABEL_6:
    sub_22BB30AF0();
  }

LABEL_8:

  (*(v4 + 8))(v8, v2);
  return sub_22BB37CB8();
}

uint64_t sub_22BCA2C24(uint64_t a1)
{
  sub_22BCA24F4(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_22BCA2CCC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_22BB31BAC(v7);
  *v8 = v9;
  v8[1] = sub_22BB6A0B4;

  return sub_22BCA25E4(a1, v3, v4, v6, v5);
}

uint64_t sub_22BCA2D84()
{
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  v3 = sub_22BB31BBC(v1);

  return v4(v3);
}

uint64_t sub_22BCA2E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22BDBB854();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E3CA8, &qword_22BDC0FE8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v21 - v11;
  v13 = *(a4 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = *(v13 + 16);
  v17(v21 - v18, a1, a4);
  sub_22BBE6DE0(&qword_27D8E3CB0, &qword_22BDC0FF0);
  if (swift_dynamicCast())
  {
    sub_22BB382E8(v21, v23);
    sub_22BB69FEC(v23, v23[3]);
    sub_22BDBB494();
    return sub_22BB32FA4(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_22BB6B75C(v21, &qword_27D8E3CB8, &qword_22BDC0FF8);
    v17(v16, a1, a4);
    v20 = sub_22BDBB844();
    sub_22BB336D0(v12, 1, 1, v20);
    sub_22BCA32DC(v8);
    return sub_22BDBB864();
  }
}

uint64_t sub_22BCA3110()
{
  v1 = *(v0 + 16);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = sub_22BDB9C64();
  v4 = MEMORY[0x277D84A98];

  return sub_22BCA2E98(v0 + v2, v3, v4, v1);
}

uint64_t sub_22BCA31A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x277D837D0];
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_22BCA31C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22BB69FEC(a1, a1[3]);
  result = sub_22BDBB684();
  a2[3] = MEMORY[0x277D837D0];
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22BCA327C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_22BBE6DE0(&qword_27D8E3CC0, &qword_22BDC1000);
      result = sub_22BDBADC4();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22BCA32DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_22BDBB854();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BCA3350(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = sub_22BDBB854();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BBE6DE0(&qword_27D8E3CA8, &qword_22BDC0FE8);
  sub_22BB2F0C8(v11);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v14 = v17 - v13;
  v17[1] = *a1;

  sub_22BCA327C(0);
  v15 = sub_22BDBB844();
  sub_22BB336D0(v14, 1, 1, v15);
  (*(v6 + 104))(v10, *MEMORY[0x277D84C38], v4);
  a2(0);
  return sub_22BDBB864();
}

void sub_22BCA358C()
{
  sub_22BB30F94();
  v119 = v2;
  v131 = v3;
  v129 = v4;
  v117 = v5;
  v6 = sub_22BBE6DE0(&qword_27D8E3D18, &unk_22BDC1070);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB30BA8();
  v130 = v8;
  v9 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  sub_22BB2F0C8(v9);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB30BA8();
  v127 = v11;
  v12 = sub_22BBE6DE0(&qword_27D8E3D20, &unk_22BDC1080);
  sub_22BB2F0C8(v12);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB30BA8();
  v121 = v14;
  sub_22BB2F120();
  sub_22BDB6664();
  sub_22BB30444();
  v123 = v16;
  v124 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v122 = v18 - v17;
  v19 = sub_22BBE6DE0(&qword_27D8E3D28, &unk_22BDCCD20);
  v20 = sub_22BB2F0C8(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BB30C74();
  v125 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  sub_22BB30B8C(&v110[-v24]);
  v128 = sub_22BDB6714();
  sub_22BB30444();
  v126 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22BB30574();
  v120 = v28 - v27;
  v29 = sub_22BBE6DE0(&qword_27D8E3D30, &unk_22BDC1090);
  sub_22BB2F0C8(v29);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  sub_22BB30BA8();
  v113 = v31;
  v32 = sub_22BBE6DE0(&qword_27D8E3D38, &unk_22BDCCD30);
  sub_22BB2F0C8(v32);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  sub_22BB30BA8();
  sub_22BB30B8C(v34);
  v112 = sub_22BDB6C84();
  sub_22BB30444();
  v111 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  sub_22BB31580();
  v37 = sub_22BBE6DE0(&qword_27D8E3D40, &unk_22BDC10A0);
  sub_22BB2F0C8(v37);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  sub_22BB32750();
  v39 = sub_22BDB6A44();
  sub_22BB30444();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22BB30574();
  v45 = v44 - v43;
  sub_22BDB6D04();
  sub_22BB30444();
  v133 = v47;
  v134 = v46;
  MEMORY[0x28223BE20](v46);
  sub_22BB30574();
  v132 = v49 - v48;
  v50 = sub_22BBE6DE0(&qword_27D8E3DE0, &qword_22BDC1178);
  sub_22BB2F0C8(v50);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v51);
  v53 = &v110[-v52];
  v54 = sub_22BDB6B54();
  v115 = v54;
  sub_22BB30418();
  v56 = v55;
  v116 = v55;
  MEMORY[0x28223BE20](v57);
  sub_22BB30574();
  sub_22BB36858();
  sub_22BDB6B44();
  v58 = sub_22BDB6B24();
  sub_22BB2F330();
  (*(v59 + 16))(v53, v117, v58);
  sub_22BB322E8();
  sub_22BB336D0(v60, v61, v62, v63);
  v114 = v0;
  sub_22BDB6B34();
  (*(v56 + 16))(v45, v0, v54);
  (*(v41 + 104))(v45, *MEMORY[0x277D1F860], v39);
  v64 = v132;
  sub_22BDB6CF4();
  sub_22BDB6CC4();
  v135 = v119;
  v65 = sub_22BB3ACFC();
  sub_22BB3B340(v65, v66);
  sub_22BB322E8();
  sub_22BB336D0(v67, v68, v69, v70);
  sub_22BDB6CD4();
  sub_22BDB6C74();
  v71 = sub_22BB35F34();
  v72(v71, v45, v39);
  v73 = sub_22BB31C70();
  sub_22BB6BA80(v73, v74, v75, v39);
  sub_22BDB6A54();
  v76 = v111;
  v77 = sub_22BB35F34();
  v78 = v112;
  v79(v77, v1, v112);
  v80 = sub_22BB31C70();
  sub_22BB6BA80(v80, v81, v82, v78);
  sub_22BDB6C94();
  (*(v76 + 8))(v1, v78);
  (*(v41 + 8))(v45, v39);
  v83 = v118;
  (*(v133 + 16))(v118, v64, v134);
  v84 = *MEMORY[0x277D1F700];
  v85 = sub_22BDB66E4();
  sub_22BB2F330();
  (*(v86 + 104))(v83, v84, v85);
  sub_22BB322E8();
  sub_22BB336D0(v87, v88, v89, v90);
  v92 = v122;
  v91 = v123;
  v93 = v124;
  (*(v123 + 104))(v122, *MEMORY[0x277D1F6A8], v124);
  v94 = v120;
  sub_22BDB6704();
  sub_22BCA485C();
  sub_22BDB66C4();
  sub_22BB331C8();
  sub_22BB336D0(v95, v96, v97, v98);
  sub_22BDB66D4();
  sub_22BDB7604();
  sub_22BDB7614();
  v99 = sub_22BB31C70();
  sub_22BB6BA80(v99, v100, v101, v102);
  sub_22BDB6674();
  sub_22BB8AE8C(v83, v125, &qword_27D8E3D28, &unk_22BDCCD20);
  sub_22BDB66F4();
  v103 = sub_22BB38704();
  v104(v103);
  sub_22BB331C8();
  sub_22BB336D0(v105, v106, v107, v93);
  sub_22BDB6684();
  (*(v91 + 8))(v92, v93);
  sub_22BB58728(v83, &qword_27D8E3D28, &unk_22BDCCD20);
  v108 = v131[3];
  v109 = v131[4];
  sub_22BB69FEC(v131, v108);
  (*(v109 + 8))(v94, v108, v109);
  (*(v126 + 8))(v94, v128);
  (*(v133 + 8))(v132, v134);
  (*(v116 + 8))(v114, v115);
  sub_22BB314EC();
}

void sub_22BCA3E68()
{
  sub_22BB30F94();
  v37 = v2;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E3D58, &qword_22BDC10F0);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB36858();
  v7 = sub_22BBE6DE0(&qword_27D8E3D60, &qword_22BDC10F8);
  sub_22BB2F0C8(v7);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB34298();
  v9 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v9);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB2F484();
  v11 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v11);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB31580();
  sub_22BDB6AB4();
  v13 = sub_22BDB43E4();
  sub_22BB2F330();
  (*(v14 + 16))(v1, v4, v13);
  sub_22BB322E8();
  sub_22BB336D0(v15, v16, v17, v18);
  sub_22BDB7674();
  v39 = v1;
  v19 = sub_22BB3ACFC();
  sub_22BB3B340(v19, v20);
  sub_22BB58728(v1, &qword_27D8E3218, &qword_22BDBE390);
  sub_22BB322E8();
  sub_22BB336D0(v21, v22, v23, v24);
  sub_22BDB6964();
  v25 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  sub_22BDB4C24();
  v40 = 0;
  sub_22BDB6A94();
  sub_22BCA4BE4();
  sub_22BDB6834();
  v26 = sub_22BB37710();
  sub_22BB336D0(v26, v27, v28, v29);
  sub_22BDB6A64();
  v30 = *(v4 + *(v25 + 28));
  v38[2] = v37;
  sub_22BD65560(sub_22BCA7840, v38, v30);
  sub_22BDB6AA4();
  v31 = *MEMORY[0x277D1F770];
  v32 = sub_22BDB67D4();
  sub_22BB2F330();
  (*(v33 + 104))(v0, v31, v32);
  sub_22BB331C8();
  sub_22BB336D0(v34, v35, v36, v32);
  sub_22BDB6A84();
  sub_22BB314EC();
}

void sub_22BCA4138()
{
  sub_22BB30F94();
  v86 = v2;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E3CE8, &qword_22BDC1048);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  v83 = v7;
  sub_22BB2F120();
  sub_22BDB68A4();
  sub_22BB30444();
  v84 = v9;
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v82 = v11 - v10;
  v12 = sub_22BBE6DE0(&qword_27D8E3CF0, &qword_22BDC1050);
  sub_22BB2F0C8(v12);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB52928();
  v14 = sub_22BBE6DE0(&qword_27D8E3CF8, &unk_22BDC1058);
  sub_22BB2F0C8(v14);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F484();
  v16 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v17 = sub_22BB2F0C8(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BB30C74();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v81 - v22;
  v24 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v24);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB32750();
  v26 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  v27 = sub_22BB2F0C8(v26);
  MEMORY[0x28223BE20](v27);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v28);
  v30 = &v81 - v29;
  sub_22BDB6BE4();
  v31 = [v4 absoluteTimestamp];
  if (v31)
  {
    v32 = v31;
    sub_22BDB4324();

    v33 = sub_22BDB4354();
    v34 = 0;
  }

  else
  {
    v33 = sub_22BDB4354();
    v34 = 1;
  }

  sub_22BB6BA80(v30, v34, 1, v33);
  sub_22BDB6B84();
  sub_22BDB4334();
  sub_22BDB4354();
  v35 = sub_22BB37710();
  sub_22BB336D0(v35, v36, v37, v33);
  sub_22BDB6B94();
  v38 = [v4 transcriptStatementId];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 sessionId];

    if (v40)
    {
      sub_22BDB43C4();
    }

    v42 = sub_22BDB43E4();
    sub_22BB69234(v42);
    sub_22BCA6DCC(v20, v23);
  }

  else
  {
    v41 = sub_22BDB43E4();
    sub_22BB336D0(v23, 1, 1, v41);
  }

  v43 = sub_22BDB7674();
  MEMORY[0x28223BE20](v43);
  sub_22BB36D34();
  *(v44 - 16) = v23;
  sub_22BB3B340(sub_22BCA4B98, v45);
  sub_22BB58728(v23, &qword_27D8E3218, &qword_22BDBE390);
  sub_22BB322E8();
  sub_22BB336D0(v46, v47, v48, v49);
  sub_22BDB6B74();
  v50 = [v4 transcriptStatementId];
  v51 = v50;
  if (v50)
  {
    [v50 statementIndex];
  }

  v52 = v86;
  v87 = v51 == 0;
  sub_22BDB6BC4();
  v53 = [v4 trigger];
  v54 = MEMORY[0x277D1F8A0];
  v55 = MEMORY[0x277D1F8B0];
  if (v53 != 1)
  {
    v55 = MEMORY[0x277D1F8A8];
  }

  if (v53 != 2)
  {
    v54 = v55;
  }

  v56 = *v54;
  v57 = sub_22BDB6CA4();
  sub_22BB2F330();
  (*(v58 + 104))(v1, v56, v57);
  sub_22BB331C8();
  sub_22BB336D0(v59, v60, v61, v57);
  sub_22BDB6BA4();
  v62 = [v4 tupleInteraction];
  if (v62)
  {
  }

  sub_22BDB6BB4();
  v63 = [v4 tupleInteraction];
  if (v63)
  {
    v64 = v63;
    v65 = v82;
    sub_22BDB6894();
    v66 = [v64 candidateIds];
    sub_22BBED848(0, &qword_27D8E3D08, 0x277CF11C8);
    sub_22BDBAD64();

    MEMORY[0x28223BE20](v67);
    sub_22BB36D34();
    *(v68 - 16) = v52;
    sub_22BCA7BE0();

    sub_22BDB6874();
    v69 = [v64 userAlignment];
    sub_22BCA6D48(v69, v83);
    sub_22BDB6A14();
    v70 = sub_22BB36558();
    sub_22BB336D0(v70, v71, v72, v73);
    sub_22BDB6884();

    (*(v84 + 32))(v0, v65, v85);
    sub_22BB322E8();
    sub_22BB336D0(v74, v75, v76, v77);
  }

  else
  {
    sub_22BB336D0(v0, 1, 1, v85);
  }

  sub_22BDB6BD4();
  v78 = [v4 candidateInteractions];
  sub_22BBED848(0, &qword_27D8E3D00, 0x277CF11D0);
  sub_22BDBAD64();

  MEMORY[0x28223BE20](v79);
  sub_22BB36D34();
  *(v80 - 16) = v52;
  sub_22BCA7E0C();

  sub_22BDB6B64();
  sub_22BB314EC();
}

uint64_t sub_22BCA485C()
{
  v0 = sub_22BBE6DE0(&qword_27D8E3D50, &unk_22BDC10B0);
  sub_22BB2F0C8(v0);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v1);
  sub_22BB36858();
  v2 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v2);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  sub_22BDB66B4();
  sub_22BDB43D4();
  sub_22BDB43E4();
  v4 = sub_22BB31C70();
  sub_22BB6BA80(v4, v5, v6, v7);
  sub_22BDB66A4();
  sub_22BDB9A64();
  sub_22BDB6774();
  sub_22BB331C8();
  sub_22BB336D0(v8, v9, v10, v11);
  return sub_22BDB6694();
}

uint64_t sub_22BCA496C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB3B69C();
  v6 = sub_22BBE6DE0(v4, v5);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB34298();
  v8 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v8);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB52928();
  v10 = sub_22BDB43E4();
  sub_22BB2F330();
  (*(v11 + 16))(v2, a2, v10);
  v12 = sub_22BB37710();
  sub_22BB336D0(v12, v13, v14, v10);
  sub_22BDB7674();
  sub_22BDB76D4();
  sub_22BB58728(v2, &qword_27D8E3218, &qword_22BDBE390);
  sub_22BB322E8();
  sub_22BB336D0(v15, v16, v17, v18);
  return sub_22BDB6964();
}

uint64_t sub_22BCA4AE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22BB8AE8C(a2, &v6 - v4, &qword_27D8E3218, &qword_22BDBE390);
  return sub_22BDB7654();
}

void sub_22BCA4BE4()
{
  sub_22BB30F94();
  v3 = v2;
  sub_22BB39128();
  sub_22BDB6904();
  sub_22BB30444();
  v38 = v4;
  v39 = v5;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB36858();
  v6 = sub_22BBE6DE0(&qword_27D8E3D80, &qword_22BDC1118);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB34298();
  v8 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v9 = sub_22BB2F0C8(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB36FD8();
  v10 = sub_22BBE6DE0(&qword_27D8E3D88, &unk_22BDC1120);
  sub_22BB2F0C8(v10);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  sub_22BDB6824();
  v14 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  sub_22BCA786C(v3 + v14[8], v1, type metadata accessor for FeedbackLearning.TaskFinalResolutionState);
  v15 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  v16 = sub_22BB3AA28(v1, 1, v15);
  v17 = sub_22BDB69E4();
  sub_22BB2F330();
  v19 = *(v18 + 104);
  if (v16 == 1)
  {
    v19(v13, *MEMORY[0x277D1F848], v17);
  }

  else
  {
    v19(v13, *MEMORY[0x277D1F850], v17);
    sub_22BB58728(v1, &qword_27D8E3D98, &qword_22BDC1130);
  }

  sub_22BB331C8();
  sub_22BB336D0(v20, v21, v22, v17);
  MEMORY[0x2318A07E0](v13);
  sub_22BCA54EC(v3 + v14[9]);
  sub_22BDB67C4();
  v23 = sub_22BB37710();
  sub_22BB336D0(v23, v24, v25, v26);
  sub_22BDB67F4();
  sub_22BCA56A4(*(v3 + v14[10]), *(v3 + v14[10] + 8), *(v3 + v14[10] + 16), *(v3 + v14[10] + 24));
  v28 = v27;
  v29 = *(v27 + 16);
  if (v29)
  {
    v40 = MEMORY[0x277D84F90];
    sub_22BD27BA8(0, v29, 0);
    v30 = v40;
    v37[1] = v28;
    v31 = v28 + 56;
    v32 = v38;
    do
    {

      sub_22BCA5864();

      v40 = v30;
      v34 = *(v30 + 16);
      v33 = *(v30 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_22BD27BA8(v33 > 1, v34 + 1, 1);
        v32 = v38;
        v30 = v40;
      }

      *(v30 + 16) = v34 + 1;
      sub_22BB2F374();
      (*(v36 + 32))(v30 + v35 + *(v36 + 72) * v34, v0, v32);
      v31 += 32;
      --v29;
    }

    while (v29);
  }

  sub_22BDB6804();
  sub_22BB314EC();
}

void sub_22BCA4F90()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E3D68, &qword_22BDC1100);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  v37 = v7;
  sub_22BB2F120();
  v8 = sub_22BDB6994();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = sub_22BBE6DE0(&qword_27D8E3D70, &qword_22BDC1108);
  sub_22BB2F0C8(v15);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB34298();
  v17 = sub_22BBE6DE0(&qword_27D8E3D10, &qword_22BDC1068);
  sub_22BB2F0C8(v17);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB36FD8();
  v19 = sub_22BBE6DE0(&qword_27D8E3D78, &qword_22BDC1110);
  sub_22BB2F0C8(v19);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB2F484();
  sub_22BDB6954();
  v21 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  sub_22BCA60C0(v4 + v21[5], v2);
  sub_22BDB68B4();
  sub_22BB331C8();
  sub_22BB336D0(v22, v23, v24, v25);
  sub_22BDB6924();
  sub_22BCA62A8();
  sub_22BDB6984();
  sub_22BB331C8();
  sub_22BB336D0(v26, v27, v28, v29);
  sub_22BDB6934();
  (*(v10 + 104))(v14, **(&unk_278722E20 + *(v4 + v21[8])), v8);
  (*(v10 + 32))(v0, v14, v8);
  v30 = sub_22BB37710();
  sub_22BB336D0(v30, v31, v32, v8);
  sub_22BDB6914();
  v38 = *(v4 + v21[9]);
  sub_22BCA6464(&v38, v37);
  sub_22BDB6844();
  sub_22BB331C8();
  sub_22BB336D0(v33, v34, v35, v36);
  sub_22BDB6944();
  sub_22BB314EC();
}

void sub_22BCA5278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_22BBE6DE0(&qword_27D8E3CE8, &qword_22BDC1048);
  sub_22BB2F0C8(v27);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = sub_22BBE6DE0(&qword_27D8E3D10, &qword_22BDC1068);
  v32 = sub_22BB2F0C8(v31);
  MEMORY[0x28223BE20](v32);
  sub_22BB30C74();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = sub_22BDB6984();
  sub_22BB30444();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22BB30574();
  sub_22BB31580();
  v43 = [v24 candidateId];
  sub_22BCA6B20();

  if (sub_22BB3AA28(v38, 1, v39) == 1)
  {
    sub_22BB58728(v38, &qword_27D8E3D10, &qword_22BDC1068);
    v44 = 1;
  }

  else
  {
    (*(v41 + 32))(v20, v38, v39);
    sub_22BDB69C4();
    (*(v41 + 16))(v35, v20, v39);
    v45 = sub_22BB36558();
    sub_22BB336D0(v45, v46, v47, v39);
    sub_22BDB69A4();
    sub_22BCA6D48([v24 userAlignment], v30);
    sub_22BDB6A14();
    sub_22BB331C8();
    sub_22BB336D0(v48, v49, v50, v51);
    sub_22BDB69B4();
    (*(v41 + 8))(v20, v39);
    v44 = 0;
  }

  v52 = sub_22BDB69D4();
  sub_22BB336D0(v26, v44, 1, v52);
  sub_22BB314EC();
}

uint64_t sub_22BCA54EC(uint64_t a1)
{
  sub_22BB39128();
  v5 = sub_22BDB6864();
  sub_22BB30444();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB36858();
  v9 = sub_22BBE6DE0(&qword_27D8E3DC8, &qword_22BDC1160);
  sub_22BB2F0C8(v9);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB31580();
  v11 = sub_22BBE6DE0(&qword_27D8E3DD0, &qword_22BDC1168);
  sub_22BB2F0C8(v11);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB32750();
  sub_22BDB67B4();
  sub_22BCA5E7C(a1, v3);
  sub_22BDB6784();
  v13 = sub_22BB36558();
  sub_22BB336D0(v13, v14, v15, v16);
  MEMORY[0x2318A0760](v3);
  v17 = type metadata accessor for FeedbackLearning.TaskOutcome(0);
  (*(v7 + 104))(v1, **(&unk_278722E40 + *(a1 + *(v17 + 20))), v5);
  (*(v7 + 32))(v2, v1, v5);
  sub_22BB331C8();
  sub_22BB336D0(v18, v19, v20, v5);
  return MEMORY[0x2318A0770](v2);
}

void sub_22BCA56A4(char a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_22BBE6DE0(&qword_27D8E3DC0, &qword_22BDC1158);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22BDBCBD0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  v9 = *(a4 + 16);
  if (!v9)
  {

    return;
  }

  for (i = (a4 + 56); ; i += 4)
  {
    v11 = *(i - 1);
    v12 = *i;
    v13 = *(i - 16);
    v14 = *(i - 24);

    v15 = sub_22BCA56A4(v14, v13, v11, v12);

    v16 = *(v15 + 16);
    v17 = *(v8 + 16);
    if (__OFADD__(v17, v16))
    {
      break;
    }

    if (v17 + v16 > *(v8 + 24) >> 1)
    {
      sub_22BD8F874();
      v8 = v21;
      v17 = *(v21 + 16);
      if (*(v15 + 16))
      {
LABEL_6:
        if ((*(v8 + 24) >> 1) - v17 < v16)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v18 = *(v8 + 16);
          v19 = __OFADD__(v18, v16);
          v20 = v18 + v16;
          if (v19)
          {
            goto LABEL_18;
          }

          *(v8 + 16) = v20;
        }

        goto LABEL_12;
      }
    }

    else if (v16)
    {
      goto LABEL_6;
    }

    if (v16)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (!--v9)
    {
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_22BCA5864()
{
  sub_22BB30F94();
  v3 = v2;
  v78 = v4;
  LODWORD(v81) = v5;
  v6 = sub_22BB39128();
  v66[2] = _s19EvaluatorVoteSourceOMa(v6);
  sub_22BB30444();
  v76 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB30C74();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v82 = v66 - v13;
  sub_22BB2F120();
  v80 = sub_22BDB6854();
  sub_22BB30444();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BB30C74();
  v79 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v66 - v20;
  v22 = sub_22BBE6DE0(&qword_27D8E3DA0, &qword_22BDC1138);
  sub_22BB2F0C8(v22);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB2F484();
  v24 = sub_22BDB67E4();
  sub_22BB30444();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  v30 = v29 - v28;
  v31 = sub_22BBE6DE0(&qword_27D8E3DA8, &qword_22BDC1140);
  sub_22BB2F0C8(v31);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB31580();
  sub_22BDB68F4();
  (*(v26 + 104))(v30, **(&unk_278722E60 + v78), v24);
  (*(v26 + 32))(v0, v30, v24);
  sub_22BB331C8();
  v33 = v24;
  v34 = v3;
  sub_22BB336D0(v35, v36, v37, v33);
  MEMORY[0x2318A0890](v0);
  sub_22BCA6038(v81);
  MEMORY[0x2318A08B0](v1);
  v38 = *(v3 + 16);
  if (v38)
  {
    v77 = v21;
    v83 = MEMORY[0x277D84F90];
    sub_22BD27C58(0, v38, 0);
    v39 = v83;
    sub_22BB2F374();
    v41 = v34 + v40;
    v75 = *(v42 + 72);
    v71 = *MEMORY[0x277D1F7D8];
    v81 = (v15 + 104);
    v70 = *MEMORY[0x277D1F7D0];
    v69 = *MEMORY[0x277D1F7F0];
    v68 = *MEMORY[0x277D1F7F8];
    v67 = *MEMORY[0x277D1F808];
    v78 = v15;
    v43 = (v15 + 32);
    v74 = *MEMORY[0x277D1F7E0];
    LODWORD(v42) = *MEMORY[0x277D1F7E8];
    v72 = *MEMORY[0x277D1F800];
    v73 = v42;
    v76 = v11;
    do
    {
      v44 = v82;
      sub_22BCA786C(v41, v82, _s19EvaluatorVoteSourceOMa);
      sub_22BCA786C(v44, v11, _s19EvaluatorVoteSourceOMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = *v81;
        v46 = v79;
        if (*v11)
        {
          v47 = v80;
          v48 = v79;
          if (*v11 == 1)
          {
            v49 = v74;
          }

          else
          {
            v49 = v72;
          }
        }

        else
        {
          v48 = v79;
          v49 = v73;
          v47 = v80;
        }

        v54 = v47;
LABEL_12:
        v45(v48, v49, v54);
      }

      else
      {
        _s24StatementExecutionResultOMa(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v46 = v79;
        v47 = v80;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            v51 = sub_22BB3623C();
            v53 = v71;
            goto LABEL_17;
          case 2:
            v51 = sub_22BB3623C();
            v53 = v68;
            goto LABEL_17;
          case 3:
            v55 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
            v56 = sub_22BB3623C();
            v57(v56, v69, v47);
            sub_22BDB8294();
            sub_22BB2F330();
            (*(v58 + 8))(&v11[v55]);
            sub_22BB58728(v11, &qword_27D8E3DB8, &qword_22BDC1150);
            break;
          case 4:
            v51 = sub_22BB3623C();
            v53 = v70;
            goto LABEL_17;
          case 5:
            v48 = sub_22BB3623C();
            v49 = v71;
            v54 = v47;
            goto LABEL_12;
          default:
            v51 = sub_22BB3623C();
            v53 = v67;
LABEL_17:
            v52(v51, v53, v47);
            sub_22BCA78CC(v11, _s24StatementExecutionResultOMa);
            break;
        }
      }

      v59 = *v43;
      v60 = v77;
      (*v43)(v77, v46, v47);
      sub_22BCA78CC(v82, _s19EvaluatorVoteSourceOMa);
      v83 = v39;
      v61 = v47;
      v63 = *(v39 + 16);
      v62 = *(v39 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_22BD27C58(v62 > 1, v63 + 1, 1);
        v39 = v83;
      }

      *(v39 + 16) = v63 + 1;
      sub_22BB2F374();
      v59((v39 + v64 + *(v65 + 72) * v63), v60, v61);
      v11 = v76;
      v41 += v75;
      --v38;
    }

    while (v38);
  }

  sub_22BDB68D4();
  sub_22BB314EC();
}

uint64_t sub_22BCA5E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v5 = sub_22BB2F0C8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v8 = v7 - v6;
  sub_22BCA786C(a1, v7 - v6, type metadata accessor for FeedbackLearning.TaskStatus);
  v9 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  switch(sub_22BB3AA28(v8, 4, v9))
  {
    case 1u:
      v13 = MEMORY[0x277D1F758];
      goto LABEL_8;
    case 2u:
      v13 = MEMORY[0x277D1F760];
      goto LABEL_8;
    case 3u:
      v13 = MEMORY[0x277D1F750];
      goto LABEL_8;
    case 4u:
      v13 = MEMORY[0x277D1F768];
LABEL_8:
      v14 = *v13;
      sub_22BDB6784();
      sub_22BB2F330();
      result = (*(v15 + 104))(a2, v14);
      break;
    default:
      type metadata accessor for FeedbackLearning.TaskFailureReason(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_22BDB6784();
      sub_22BB2F330();
      if (EnumCaseMultiPayload == 1)
      {
        v12 = MEMORY[0x277D1F740];
      }

      else
      {
        v12 = MEMORY[0x277D1F748];
      }

      (*(v11 + 104))(a2, *v12);
      result = sub_22BCA78CC(v8, type metadata accessor for FeedbackLearning.TaskFailureReason);
      break;
  }

  return result;
}

uint64_t sub_22BCA6038(char a1)
{
  sub_22BB39128();
  v3 = sub_22BDB6CE4();
  sub_22BB2F330();
  (*(v4 + 104))(v1, **(&unk_278722E78 + a1), v3);
  v5 = sub_22BB31C70();

  return sub_22BB336D0(v5, v6, v7, v3);
}

uint64_t sub_22BCA60C0(uint64_t a1, uint64_t a2)
{
  sub_22BB39128();
  v7 = sub_22BDB4C34();
  sub_22BB30444();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  sub_22BB36858();
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB31580();
  sub_22BCA786C(a1, v4, type metadata accessor for FeedbackLearning.CandidateParameter);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BCA6790(*v4, v4[1], a2);

      goto LABEL_5;
    case 2u:
    case 3u:
      sub_22BDB6A04();
      sub_22BDB69F4();
      v12 = MEMORY[0x277D1F818];
      break;
    default:
      v13 = sub_22BB3B69C();
      v14(v13);
      sub_22BCA65FC(v3, a2);
      (*(v9 + 8))(v3, v7);
LABEL_5:
      v12 = MEMORY[0x277D1F820];
      break;
  }

  v15 = *v12;
  sub_22BDB68B4();
  sub_22BB2F330();
  return (*(v16 + 104))(v2, v15);
}

void sub_22BCA62A8()
{
  sub_22BB30F94();
  v2 = sub_22BB3B69C();
  v4 = sub_22BBE6DE0(v2, v3);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB32750();
  v6 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB52928();
  v8 = sub_22BDB55F4();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB36FD8();
  sub_22BDB6974();
  sub_22BDB7AF4();
  sub_22BDB55E4();
  sub_22BDB43E4();
  v12 = sub_22BB36558();
  sub_22BB336D0(v12, v13, v14, v15);
  sub_22BDB7674();
  v21 = v0;
  sub_22BB3B340(sub_22BCA7924, &v20);
  sub_22BB52E20();
  sub_22BB322E8();
  sub_22BB336D0(v16, v17, v18, v19);
  sub_22BDB6964();
  (*(v10 + 8))(v1, v8);
  sub_22BB314EC();
}

uint64_t sub_22BCA6464@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (!(v3 >> 6))
  {
    sub_22BDB6844();
    sub_22BB2F330();
    v5 = *(v9 + 104);
    if (v3)
    {
      if (v3 == 1)
      {
        v8 = MEMORY[0x277D1F7A8];
      }

      else
      {
        v8 = MEMORY[0x277D1F7B0];
      }
    }

    else
    {
      v8 = MEMORY[0x277D1F7B8];
    }

LABEL_15:
    v11 = *v8;
    v12 = a2;
    goto LABEL_20;
  }

  if (v3 >> 6 == 1)
  {
    sub_22BDB6844();
    sub_22BB2F330();
    v5 = *(v4 + 104);
    v7 = v6;
    switch(v3 & 0x3F)
    {
      case 1u:
        v8 = MEMORY[0x277D1F788];
        break;
      case 2u:
        v8 = MEMORY[0x277D1F7C8];
        break;
      case 3u:
        v8 = MEMORY[0x277D1F7C0];
        break;
      default:
        v8 = MEMORY[0x277D1F778];
        break;
    }

    goto LABEL_15;
  }

  switch(*a1)
  {
    case 0x81:
      v10 = MEMORY[0x277D1F790];
      break;
    case 0x82:
      v10 = MEMORY[0x277D1F7A0];
      break;
    case 0x83:
      v10 = MEMORY[0x277D1F780];
      break;
    default:
      v10 = MEMORY[0x277D1F798];
      break;
  }

  v13 = *v10;
  sub_22BDB6844();
  sub_22BB2F330();
  v5 = *(v14 + 104);
  v7 = v15;
  v12 = a2;
  v11 = v13;
LABEL_20:

  return v5(v12, v11, v7);
}

uint64_t sub_22BCA65FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BB3B69C();
  v4 = sub_22BBE6DE0(v2, v3);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB32750();
  v6 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB34298();
  sub_22BDB6974();
  sub_22BDB4C24();
  v8 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v8);

  sub_22BCA68DC();

  sub_22BDB43E4();
  v9 = sub_22BB36558();
  sub_22BB336D0(v9, v10, v11, v12);
  sub_22BDB7674();
  v13 = sub_22BB3ACFC();
  sub_22BB3B340(v13, v14);
  sub_22BB52E20();
  sub_22BB322E8();
  sub_22BB336D0(v15, v16, v17, v18);
  return sub_22BDB6964();
}

uint64_t sub_22BCA6790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22BB3B69C();
  v6 = sub_22BBE6DE0(v4, v5);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB32750();
  v8 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v8);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB34298();
  sub_22BDB6974();
  sub_22BCA68DC();
  sub_22BDB43E4();
  v10 = sub_22BB36558();
  sub_22BB336D0(v10, v11, v12, v13);
  sub_22BDB7674();
  v20 = v3;
  sub_22BB3B340(sub_22BCA7924, v19);
  sub_22BB52E20();
  sub_22BB322E8();
  sub_22BB336D0(v14, v15, v16, v17);
  return sub_22BDB6964();
}

void sub_22BCA68DC()
{
  sub_22BB30F94();
  v20 = v1;
  v2 = sub_22BDB5A64();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB3A434();
  v6 = sub_22BDB5714();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BDB55F4();
  sub_22BB30444();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v19 = v18 - v17;
  (*(v8 + 16))(v12, v20, v6);
  (*(v4 + 104))(v0, *MEMORY[0x277D1D058], v2);

  sub_22BDB5A54();
  (*(v4 + 8))(v0, v2);
  sub_22BDB5604();
  sub_22BDB55E4();
  (*(v15 + 8))(v19, v13);
  sub_22BB314EC();
}

void sub_22BCA6B20()
{
  sub_22BB30F94();
  v2 = v1;
  v3 = sub_22BDB77D4();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB3A434();
  v7 = sub_22BDB7B44();
  sub_22BB30444();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v13 = v12 - v11;
  if (v2)
  {
    sub_22BCA6E3C(v2, &selRef_identifier);
    if (v14)
    {
      sub_22BCA6E3C(v2, &selRef_bundleId);
      if (v15)
      {
        sub_22BDB7B14();
        sub_22BCA62A8();
        (*(v9 + 8))(v13, v7);
        goto LABEL_9;
      }
    }
  }

  sub_22BDB6404();
  v16 = sub_22BDB77C4();
  v17 = sub_22BDBB114();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22BB2C000, v16, v17, "Unable to create a candidate identifier", v18, 2u);
    MEMORY[0x2318A6080](v18, -1, -1);
  }

  (*(v5 + 8))(v0, v3);
LABEL_9:
  v19 = sub_22BDB6984();
  sub_22BB69234(v19);
  sub_22BB314EC();
}

uint64_t sub_22BCA6D48@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  sub_22BDB6A14();
  sub_22BB2F330();
  v5 = *(v4 + 104);
  if (a1 > 9)
  {
    v6 = MEMORY[0x277D1F858];
  }

  else
  {
    v6 = qword_278722EA0[a1];
  }

  v7 = *v6;

  return v5(a2, v7);
}

uint64_t sub_22BCA6DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCA6E3C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22BDBABF4();

  return v4;
}

void sub_22BCA6E9C()
{
  sub_22BB30F94();
  v144 = v2;
  v4 = v3;
  v132 = v5;
  v129 = v6;
  v142 = v7;
  v130 = v8;
  v9 = sub_22BBE6DE0(&qword_27D8E3D18, &unk_22BDC1070);
  sub_22BB2F0C8(v9);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB30BA8();
  v143 = v11;
  v12 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  sub_22BB2F0C8(v12);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB30BA8();
  v141 = v14;
  v15 = sub_22BBE6DE0(&qword_27D8E3D20, &unk_22BDC1080);
  sub_22BB2F0C8(v15);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB30BA8();
  v138 = v17;
  sub_22BB2F120();
  v133 = sub_22BDB6664();
  sub_22BB30444();
  v136 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v135 = v21 - v20;
  v22 = sub_22BBE6DE0(&qword_27D8E3D28, &unk_22BDCCD20);
  v23 = sub_22BB2F0C8(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BB30C74();
  v137 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  sub_22BB30B8C(&v119 - v27);
  sub_22BDB6714();
  sub_22BB30444();
  v139 = v29;
  v140 = v28;
  MEMORY[0x28223BE20](v28);
  sub_22BB30574();
  v134 = v31 - v30;
  v32 = sub_22BBE6DE0(&qword_27D8E3D30, &unk_22BDC1090);
  sub_22BB2F0C8(v32);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  sub_22BB30BA8();
  v127 = v34;
  v35 = sub_22BBE6DE0(&qword_27D8E3D38, &unk_22BDCCD30);
  sub_22BB2F0C8(v35);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  sub_22BB30BA8();
  sub_22BB30B8C(v37);
  v124 = sub_22BDB6C84();
  sub_22BB30444();
  v120 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22BB30574();
  v42 = v41 - v40;
  v43 = sub_22BBE6DE0(&qword_27D8E3D40, &unk_22BDC10A0);
  sub_22BB2F0C8(v43);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v44);
  sub_22BB32750();
  v45 = sub_22BDB6A44();
  sub_22BB30444();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  sub_22BB30574();
  sub_22BB36FD8();
  sub_22BDB6D04();
  sub_22BB30444();
  v146 = v50;
  v147 = v49;
  MEMORY[0x28223BE20](v49);
  sub_22BB30574();
  v145 = v52 - v51;
  v53 = sub_22BBE6DE0(&qword_27D8E3D48, &unk_22BDCCD40);
  sub_22BB2F0C8(v53);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v54);
  sub_22BB3A434();
  v55 = sub_22BDB6C64();
  v122 = v55;
  sub_22BB30418();
  v57 = v56;
  v123 = v56;
  MEMORY[0x28223BE20](v58);
  sub_22BB30574();
  v61 = v60 - v59;
  v125 = v4;
  sub_22BB30418();
  v128 = v62;
  MEMORY[0x28223BE20](v63);
  sub_22BB30574();
  v126 = v65 - v64;
  (*(v66 + 16))();
  sub_22BDB6C54();
  v67 = sub_22BDB6C34();
  sub_22BB2F330();
  (*(v68 + 16))(v0, v130, v67);
  v69 = sub_22BB31C70();
  sub_22BB6BA80(v69, v70, v71, v67);
  v121 = v61;
  sub_22BDB6C44();
  (*(v57 + 16))(v1, v61, v55);
  (*(v47 + 104))(v1, *MEMORY[0x277D1F868], v45);
  sub_22BDB6CF4();
  sub_22BDB6CC4();
  v148 = v132;
  v72 = sub_22BB3ACFC();
  sub_22BB3B340(v72, v73);
  sub_22BB322E8();
  sub_22BB336D0(v74, v75, v76, v77);
  sub_22BDB6CD4();
  sub_22BDB6C74();
  v78 = sub_22BB35F34();
  v79(v78, v1, v45);
  v80 = sub_22BB31C70();
  sub_22BB6BA80(v80, v81, v82, v45);
  sub_22BDB6A54();
  v83 = v120;
  v84 = sub_22BB35F34();
  v85 = v124;
  v86(v84, v42, v124);
  v87 = sub_22BB31C70();
  sub_22BB6BA80(v87, v88, v89, v85);
  sub_22BDB6C94();
  (*(v83 + 8))(v42, v85);
  (*(v47 + 8))(v1, v45);
  v90 = v131;
  v91 = sub_22BB3B69C();
  v92(v91);
  v93 = *MEMORY[0x277D1F700];
  v94 = sub_22BDB66E4();
  sub_22BB2F330();
  (*(v95 + 104))(v90, v93, v94);
  sub_22BB322E8();
  sub_22BB336D0(v96, v97, v98, v99);
  v101 = v135;
  v100 = v136;
  v102 = v133;
  (*(v136 + 104))(v135, *MEMORY[0x277D1F6D8], v133);
  v103 = v134;
  sub_22BDB6704();
  sub_22BCA485C();
  sub_22BDB66C4();
  v104 = sub_22BB31C70();
  sub_22BB6BA80(v104, v105, v106, v107);
  sub_22BDB66D4();
  sub_22BDB7604();
  sub_22BDB7614();
  v108 = sub_22BB31C70();
  sub_22BB6BA80(v108, v109, v110, v111);
  sub_22BDB6674();
  sub_22BB8AE8C(v90, v137, &qword_27D8E3D28, &unk_22BDCCD20);
  sub_22BDB66F4();
  v112 = sub_22BB38704();
  v113(v112);
  sub_22BB331C8();
  sub_22BB336D0(v114, v115, v116, v102);
  sub_22BDB6684();
  (*(v100 + 8))(v101, v102);
  sub_22BB58728(v90, &qword_27D8E3D28, &unk_22BDCCD20);
  v117 = v126;
  v118 = v125;
  (*(v144 + 8))(v103, v125);
  (*(v139 + 8))(v103, v140);
  (*(v146 + 8))(v145, v147);
  (*(v123 + 8))(v121, v122);
  (*(v128 + 8))(v117, v118);
  sub_22BB314EC();
}

uint64_t sub_22BCA786C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BCA78CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22BCA7954()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30CE4();
  sub_22BDBA594();
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v7);
  sub_22BB30560();
  v30 = v8;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  v28 = v11;
  v29 = v25 - v10;
  v12 = 0;
  v13 = *(v1 + 16);
  v31 = (v11 + 32);
  v32 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    v14 = sub_22BDB6194();
    sub_22BB30434(v14);
    sub_22BB6BA98();
    v2();
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    sub_22BB37720();
    if (v15)
    {
      sub_22BB58728(v3, &qword_27D8E2668, &unk_22BDBCCD0);
      ++v12;
    }

    else
    {
      v16 = *v31;
      (*v31)(v29, v3, v4);
      v27 = v16;
      v16(v30, v29, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD8EBF4();
        v32 = v23;
      }

      v18 = *(v32 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v32 + 24) >> 1)
      {
        v25[1] = *(v32 + 16);
        v26 = v18 + 1;
        sub_22BD8EBF4();
        v19 = v26;
        v32 = v24;
      }

      ++v12;
      *(v32 + 16) = v19;
      sub_22BB31C80();
      v27((v20 + v21 * v22), v30, v4);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void sub_22BCA7BE0()
{
  sub_22BB31014();
  sub_22BB3A604();
  v5 = v4;
  v6 = sub_22BBE6DE0(&qword_27D8E3D10, &qword_22BDC1068);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB30CE4();
  sub_22BDB6984();
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30560();
  sub_22BB30B70();
  v10 = MEMORY[0x28223BE20](v9);
  v18 = sub_22BB69A4C(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  v19 = sub_22BBC20A8(v18);
  sub_22BB2F494(v19);
  v20 = MEMORY[0x277D84F90];
  v33 = v5;
  v34 = v1;
  while (1)
  {
    if (v36 == v3)
    {
      goto LABEL_19;
    }

    if (v35)
    {
      v22 = MEMORY[0x2318A5340](v3, v1);
    }

    else
    {
      sub_22BB2F1F4();
      if (v21)
      {
        goto LABEL_21;
      }

      v22 = v1[v3 + 4];
    }

    v23 = v22;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_22BB6BA98();
    v5();
    if (v0)
    {

LABEL_19:
      sub_22BB3A204();
      sub_22BB376A8();
      return;
    }

    sub_22BB37720();
    if (v24)
    {
      sub_22BB58728(v2, &qword_27D8E3D10, &qword_22BDC1068);
    }

    else
    {
      v25 = sub_22BB38040();
      (v1)(v25);
      v26 = sub_22BB58834();
      (v1)(v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD8F934();
        v20 = v30;
      }

      sub_22BBDB8B8();
      if (v21)
      {
        sub_22BB36FE4();
        sub_22BD8F934();
        v20 = v31;
      }

      *(v20 + 16) = v23;
      sub_22BB2F374();
      v29 = sub_22BB53CF0(v28);
      (v1)(v29);
      v5 = v33;
      v1 = v34;
    }

    ++v3;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22BCA7E0C()
{
  sub_22BB31014();
  sub_22BB3A604();
  v5 = v4;
  v6 = sub_22BBE6DE0(&qword_27D8E3E38, &qword_22BDC1280);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB30CE4();
  sub_22BDB69D4();
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30560();
  sub_22BB30B70();
  v10 = MEMORY[0x28223BE20](v9);
  v18 = sub_22BB69A4C(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  v19 = sub_22BBC20A8(v18);
  sub_22BB2F494(v19);
  v20 = MEMORY[0x277D84F90];
  v33 = v5;
  v34 = v1;
  while (1)
  {
    if (v36 == v3)
    {
      goto LABEL_19;
    }

    if (v35)
    {
      v22 = MEMORY[0x2318A5340](v3, v1);
    }

    else
    {
      sub_22BB2F1F4();
      if (v21)
      {
        goto LABEL_21;
      }

      v22 = v1[v3 + 4];
    }

    v23 = v22;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_22BB6BA98();
    v5();
    if (v0)
    {

LABEL_19:
      sub_22BB3A204();
      sub_22BB376A8();
      return;
    }

    sub_22BB37720();
    if (v24)
    {
      sub_22BB58728(v2, &qword_27D8E3E38, &qword_22BDC1280);
    }

    else
    {
      v25 = sub_22BB38040();
      (v1)(v25);
      v26 = sub_22BB58834();
      (v1)(v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD8F9FC();
        v20 = v30;
      }

      sub_22BBDB8B8();
      if (v21)
      {
        sub_22BB36FE4();
        sub_22BD8F9FC();
        v20 = v31;
      }

      *(v20 + 16) = v23;
      sub_22BB2F374();
      v29 = sub_22BB53CF0(v28);
      (v1)(v29);
      v5 = v33;
      v1 = v34;
    }

    ++v3;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22BCA8038()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E30, &unk_22BDC1270);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB30CE4();
  type metadata accessor for FeedbackLearning.TypedCandidateInteraction(v7);
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30790(v9, v32);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22BB32BC8(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  while (v4 != v3)
  {
    v19 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
    sub_22BB30434(v19);
    v21 = sub_22BB37CD8(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v22 = sub_22BB37720();
    if (v24)
    {
      v25 = sub_22BB33410();
      sub_22BB58728(v25, v26, &unk_22BDC1270);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v22, v23, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
      sub_22BB39134();
      v27 = sub_22BB39750();
      if ((v27 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD8FC50();
      }

      sub_22BB36568();
      if (v28)
      {
        sub_22BB342A8();
        sub_22BD8FC50();
        sub_22BB69254(v31);
      }

      v29 = sub_22BB35AD4();
      sub_22BCAD538(v29, v30, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void *sub_22BCA823C(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = (v5)(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      MEMORY[0x2318A4D10](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22BDBADA4();
      }

      result = sub_22BDBADE4();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_22BCA83A8()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E00, &qword_22BDC1248);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB30CE4();
  _s16CandidateSummaryVMa(v7);
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30790(v9, v32);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22BB32BC8(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  while (v4 != v3)
  {
    v19 = _s15CandidateResultVMa(0);
    sub_22BB30434(v19);
    v21 = sub_22BB37CD8(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v22 = sub_22BB37720();
    if (v24)
    {
      v25 = sub_22BB33410();
      sub_22BB58728(v25, v26, &qword_22BDC1248);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v22, v23, _s16CandidateSummaryVMa);
      sub_22BB39134();
      v27 = sub_22BB39750();
      if ((v27 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BBD5D64();
      }

      sub_22BB36568();
      if (v28)
      {
        sub_22BB342A8();
        sub_22BBD5D64();
        sub_22BB69254(v31);
      }

      v29 = sub_22BB35AD4();
      sub_22BB3B358(v29, v30);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void sub_22BCA8598()
{
  sub_22BB31014();
  sub_22BB3A604();
  v5 = v4;
  v6 = sub_22BBE6DE0(&qword_27D8E2F30, &qword_22BDC1240);
  sub_22BB2F0C8(v6);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB30CE4();
  sub_22BDB8E14();
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30560();
  sub_22BB30B70();
  v10 = MEMORY[0x28223BE20](v9);
  v18 = sub_22BB69A4C(v10, v11, v12, v13, v14, v15, v16, v17, v31);
  v19 = sub_22BBC20A8(v18);
  sub_22BB2F494(v19);
  v20 = MEMORY[0x277D84F90];
  v32 = v5;
  v33 = v1;
  while (1)
  {
    if (v35 == v3)
    {
      goto LABEL_19;
    }

    if (v34)
    {
      v22 = MEMORY[0x2318A5340](v3, v1);
    }

    else
    {
      sub_22BB2F1F4();
      if (v21)
      {
        goto LABEL_21;
      }

      v22 = *(v1 + v3 + 4);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_22BB6BA98();
    v5();
    if (v0)
    {

LABEL_19:
      sub_22BB3A204();
      sub_22BB376A8();
      return;
    }

    sub_22BB37720();
    if (v23)
    {
      sub_22BB58728(v2, &qword_27D8E2F30, &qword_22BDC1240);
    }

    else
    {
      v24 = sub_22BB38040();
      v1(v24);
      v25 = sub_22BB58834();
      v1(v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD90108();
        v20 = v29;
      }

      sub_22BBDB8B8();
      if (v21)
      {
        sub_22BB36FE4();
        sub_22BD90108();
        v20 = v30;
      }

      *(v20 + 16) = v22;
      sub_22BB2F374();
      v28 = sub_22BB53CF0(v27);
      v1(v28);
      v5 = v32;
      v1 = v33;
    }

    ++v3;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22BCA87D0()
{
  sub_22BB31014();
  v2 = v1;
  v4 = v3;
  v42 = v5;
  v41 = v6;
  v7 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  sub_22BB2F0C8(v7);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v39 = _s20StatementResultEventVMa(0);
  sub_22BB30444();
  v35 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BB30560();
  v37 = v13;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v14);
  v36 = v33 - v15;
  v16 = sub_22BDB9B54();
  sub_22BB30444();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2 >> 1;
  v40 = v18 + 16;
  v23 = (v18 + 8);
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v22)
    {
      goto LABEL_14;
    }

    if (__OFSUB__(v22--, 1))
    {
      break;
    }

    if (v22 < v4)
    {
      goto LABEL_17;
    }

    (*(v18 + 16))(v21, v42 + *(v18 + 72) * v22, v16);
    v41(v21);
    if (v0)
    {
      (*v23)(v21, v16);

LABEL_14:
      sub_22BB38D50();
      sub_22BB376A8();
      return;
    }

    (*v23)(v21, v16);
    if (sub_22BB3AA28(v10, 1, v39) == 1)
    {
      sub_22BB58728(v10, &qword_27D8E3DE8, &unk_22BDC1220);
    }

    else
    {
      v34 = _s20StatementResultEventVMa;
      sub_22BCAD538(v10, v36, _s20StatementResultEventVMa);
      sub_22BCAD538(v36, v37, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BD90298();
        v38 = v31;
      }

      v25 = *(v38 + 16);
      v26 = (v25 + 1);
      if (v25 >= *(v38 + 24) >> 1)
      {
        v33[1] = *(v38 + 16);
        v34 = (v25 + 1);
        sub_22BD90298();
        v26 = v34;
        v38 = v32;
      }

      *(v38 + 16) = v26;
      sub_22BB31C80();
      sub_22BCAD538(v30, v27 + v28 * v29, _s20StatementResultEventVMa);
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_22BCA8B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB31014();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_22BBE6DE0(&qword_27D8E3E08, &qword_22BDC1250);
  sub_22BB2F0C8(v27);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  v30 = &v45 - v29;
  v48 = type metadata accessor for FeedbackLearning.FlowTask(0);
  sub_22BB30444();
  v45 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22BB30560();
  v47 = v33;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v34);
  v36 = &v45 - v35;
  v37 = *(v24 + 16);
  v38 = (v24 + 32);
  v39 = MEMORY[0x277D84F90];
  v46 = v26;
  if (v37)
  {
    while (1)
    {
      a10 = *v38;

      v26(&a10);
      if (v20)
      {
        break;
      }

      if (sub_22BB3AA28(v30, 1, v48) == 1)
      {
        sub_22BB58728(v30, &qword_27D8E3E08, &qword_22BDC1250);
      }

      else
      {
        sub_22BCAD538(v30, v36, type metadata accessor for FeedbackLearning.FlowTask);
        sub_22BCAD538(v36, v47, type metadata accessor for FeedbackLearning.FlowTask);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BB305BC();
          sub_22BD90CCC();
          v39 = v43;
        }

        v40 = *(v39 + 16);
        if (v40 >= *(v39 + 24) >> 1)
        {
          sub_22BB36FE4();
          sub_22BD90CCC();
          v39 = v44;
        }

        *(v39 + 16) = v40 + 1;
        sub_22BB2F374();
        sub_22BCAD538(v47, v39 + v41 + *(v42 + 72) * v40, type metadata accessor for FeedbackLearning.FlowTask);
        v26 = v46;
      }

      ++v38;
      if (!--v37)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BCA8D74()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3DF8, &qword_22BDC1238);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB30CE4();
  type metadata accessor for FeedbackLearning.CandidateEvaluation(v7);
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30790(v9, v32);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22BB32BC8(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  while (v4 != v3)
  {
    v19 = sub_22BDBA994();
    sub_22BB30434(v19);
    v21 = sub_22BB37CD8(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v22 = sub_22BB37720();
    if (v24)
    {
      v25 = sub_22BB33410();
      sub_22BB58728(v25, v26, &qword_22BDC1238);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v22, v23, type metadata accessor for FeedbackLearning.CandidateEvaluation);
      sub_22BB39134();
      v27 = sub_22BB39750();
      if ((v27 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD90F20();
      }

      sub_22BB36568();
      if (v28)
      {
        sub_22BB342A8();
        sub_22BD90F20();
        sub_22BB69254(v31);
      }

      v29 = sub_22BB35AD4();
      sub_22BCAD538(v29, v30, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void sub_22BCA8F78()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E00, &qword_22BDC1248);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB30CE4();
  _s16CandidateSummaryVMa(v7);
  sub_22BB33CD0();
  MEMORY[0x28223BE20](v8);
  sub_22BB30790(v9, v32);
  v11 = MEMORY[0x28223BE20](v10);
  sub_22BB32BC8(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  while (v4 != v3)
  {
    v19 = _s27StatementParameterCandidateVMa(0);
    sub_22BB30434(v19);
    v21 = sub_22BB37CD8(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v2(v21);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v22 = sub_22BB37720();
    if (v24)
    {
      v25 = sub_22BB33410();
      sub_22BB58728(v25, v26, &qword_22BDC1248);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v22, v23, _s16CandidateSummaryVMa);
      sub_22BB39134();
      v27 = sub_22BB39750();
      if ((v27 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BBD5D64();
      }

      sub_22BB36568();
      if (v28)
      {
        sub_22BB342A8();
        sub_22BBD5D64();
        sub_22BB69254(v31);
      }

      v29 = sub_22BB35AD4();
      sub_22BB3B358(v29, v30);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void *sub_22BCA9168(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  v11 = a3 + 32;
LABEL_2:
  v8 = v7 + 40 * v5;
  while (1)
  {
    if (v6 == v5)
    {
      return v12;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    result = (v4)(&v13, v8);
    if (v3)
    {
      v10 = v12;

      return v10;
    }

    ++v5;
    v8 += 40;
    if (v13)
    {
      MEMORY[0x2318A4D10](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22BDBADA4();
      }

      result = sub_22BDBADE4();
      v12 = v14;
      v5 = v9;
      v7 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void FeedbackLearningBiomeDonator.FeedbackLearningBiomeStream.sendEvent(_:)(uint64_t a1)
{
  v2 = [BiomeLibrary() IntelligenceEngine];
  swift_unknownObjectRelease();
  v3 = [v2 Interaction];
  swift_unknownObjectRelease();
  v4 = [v3 Donation];
  swift_unknownObjectRelease();
  v5 = [v4 source];
  [v5 sendEvent_];
}

uint64_t FeedbackLearningBiomeDonator.donate(evaluation:event:telemetryStream:loggingId:trigger:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v10 = a3[3];
  v11 = a3[4];
  v12 = sub_22BB69FEC(a3, v10);

  return sub_22BCACC48(a1, a2, v12, a4, a5, v5, v10, v11);
}

id FeedbackLearningBiomeDonator.donateInteractionTuples(tuple:candidates:sessionId:absoluteTimestamp:statementId:trigger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v64 = a5;
  v65 = a4;
  v63 = a3;
  v67 = a2;
  v10 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  sub_22BB2F0C8(v10);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = &v61[-v12];
  v14 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v15 = sub_22BB2F0C8(v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v61[-v19];
  v69 = sub_22BDB77D4();
  sub_22BB30444();
  v22 = v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v61[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v28 = &v61[-v27];
  v62 = *a6;
  sub_22BDB6404();
  v29 = sub_22BDB77C4();
  v30 = sub_22BDBB104();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v68 = v7;
    v32 = v13;
    v33 = v26;
    v34 = v18;
    v35 = a1;
    v36 = v22;
    v37 = v31;
    *v31 = 0;
    _os_log_impl(&dword_22BB2C000, v29, v30, "Sending a tuple interaction to Biome...", v31, 2u);
    v38 = v37;
    v22 = v36;
    a1 = v35;
    v18 = v34;
    v26 = v33;
    v13 = v32;
    v7 = v68;
    MEMORY[0x2318A6080](v38, -1, -1);
  }

  v39 = *(v22 + 8);
  v68 = (v22 + 8);
  v66 = v39;
  v39(v28, v69);
  v40 = sub_22BDB43E4();
  sub_22BB2F330();
  (*(v41 + 16))(v20, v63, v40);
  sub_22BB336D0(v20, 0, 1, v40);
  sub_22BDB4C24();
  v42 = sub_22BDBB874();
  v43 = objc_allocWithZone(MEMORY[0x277CF1218]);
  v44 = sub_22BCAC6AC(v20, v42);
  v45 = sub_22BDB4354();
  sub_22BB2F330();
  (*(v46 + 16))(v13, v65, v45);
  sub_22BB336D0(v13, 0, 1, v45);
  sub_22BB336D0(v18, 1, 1, v40);
  if (v62)
  {
    v47 = 1;
  }

  else
  {
    v47 = 2;
  }

  v48 = v67;
  v49 = sub_22BCA9930(a1, v67);
  MEMORY[0x28223BE20](v49);
  *&v61[-16] = v7;
  v50 = sub_22BCA823C(sub_22BCAD388, &v61[-32], v48);
  v51 = objc_allocWithZone(MEMORY[0x277CF11B8]);
  v52 = v44;
  v53 = sub_22BCAC76C(v13, v44, v18, 0, 0, v47, v49, v50);
  v54 = v7[3];
  v55 = v7[4];
  sub_22BB69FEC(v7, v54);
  (*(v55 + 8))(v53, v54, v55);
  sub_22BDB6404();
  v56 = sub_22BDB77C4();
  v57 = sub_22BDBB0F4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_22BB2C000, v56, v57, "Sent a tuple interaction to Biome", v58, 2u);
    MEMORY[0x2318A6080](v58, -1, -1);
    v59 = v52;
  }

  else
  {
    v59 = v56;
    v56 = v52;
  }

  v66(v26, v69);
  return v53;
}

id sub_22BCA9930(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v29 = sub_22BDB77D4();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB7A94();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E3E20, &qword_22BDCCAB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_22BDB7AD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB8AE8C(a1, v11, &qword_27D8E3E20, &qword_22BDCCAB0);
  if (sub_22BB3AA28(v11, 1, v12) == 1)
  {
    sub_22BB58728(v11, &qword_27D8E3E20, &qword_22BDCCAB0);
    sub_22BDB6404();
    v16 = sub_22BDB77C4();
    v17 = sub_22BDBB104();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22BB2C000, v16, v17, "FeedbackLearningBiomeDonator#donateInteractionTuples: No tuple interaction generated. Skipping Donation.", v18, 2u);
      MEMORY[0x2318A6080](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v29);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v20 = sub_22BDB7AA4();
    MEMORY[0x28223BE20](v20);
    v21 = v28;
    *(&v25 - 2) = v25;
    *(&v25 - 1) = v21;
    v22 = sub_22BD655B4(sub_22BCAD4F8, (&v25 - 4), v20);

    sub_22BBED848(0, &qword_27D8E3E28, 0x277CF1220);
    sub_22BDB7AC4();
    v23 = sub_22BCAA9FC(v8);
    (*(v26 + 8))(v8, v27);
    v19 = sub_22BCAAE58(v22, v23);
    (*(v13 + 8))(v15, v12);
  }

  return v19;
}

id sub_22BCA9D1C(uint64_t a1)
{
  v2 = sub_22BDB7A94();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BBE6DE0(&qword_27D8E3E18, &unk_22BDC1260);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_22BDB7BD4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  sub_22BDB7B84();
  v14 = sub_22BDB7BB4();
  v28 = v15;
  v29 = v14;
  v16 = *(v8 + 8);
  v16(v13, v7);
  sub_22BDB7B84();
  v17 = sub_22BDB7BC4();
  v19 = v18;
  v16(v11, v7);
  sub_22BCAD494(a1, v6);
  v20 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB336D0(v6, 0, 1, v20);
  v21 = sub_22BCAA450(v6);
  sub_22BB58728(v6, &qword_27D8E3E18, &unk_22BDC1260);
  v22 = objc_allocWithZone(MEMORY[0x277CF11C8]);
  v23 = sub_22BCAC938(v29, v28, v17, v19, v21);
  v24 = v30;
  sub_22BDB7B64();
  v25 = sub_22BCAA9FC(v24);
  (*(v31 + 8))(v24, v32);
  v26 = [objc_allocWithZone(MEMORY[0x277CF11D0]) initWithCandidateId:v23 userAlignment:v25];

  return v26;
}

uint64_t sub_22BCAA014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22BBE6DE0(&qword_27D8E3E30, &unk_22BDC1270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25[-v7];
  v9 = sub_22BBE6DE0(&qword_27D8E3E18, &unk_22BDC1260);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25[-v10];
  v26 = a1;
  sub_22BD798E0(sub_22BCAD518, v25, a2);
  v12 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  if (sub_22BB3AA28(v8, 1, v12) == 1)
  {
    sub_22BB58728(v8, &qword_27D8E3E30, &unk_22BDC1270);
    v13 = 1;
  }

  else
  {
    sub_22BCAD494(v8, v11);
    sub_22BCAD598(v8, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
    v13 = 0;
  }

  v14 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB336D0(v11, v13, 1, v14);
  v15 = sub_22BDB7BB4();
  v17 = v16;
  v18 = sub_22BDB7BC4();
  v20 = v19;
  v21 = sub_22BCAA450(v11);
  v22 = objc_allocWithZone(MEMORY[0x277CF11C8]);
  v23 = sub_22BCAC938(v15, v17, v18, v20, v21);
  result = sub_22BB58728(v11, &qword_27D8E3E18, &unk_22BDC1260);
  *a3 = v23;
  return result;
}

uint64_t sub_22BCAA234(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_22BDB7BD4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  v24[1] = a1;
  sub_22BDB7B84();
  v10 = sub_22BDB7BB4();
  v12 = v11;
  v13 = *(v4 + 8);
  v25 = v3;
  v13(v9, v3);
  if (v10 == sub_22BDB7BB4() && v12 == v14)
  {
  }

  else
  {
    v16 = sub_22BDBB6D4();

    v17 = 0;
    if ((v16 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  sub_22BDB7B84();
  v18 = sub_22BDB7BC4();
  v20 = v19;
  v13(v7, v25);
  if (v18 == sub_22BDB7BC4() && v20 == v21)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_22BDBB6D4();
  }

  return v17 & 1;
}

id sub_22BCAA450(uint64_t a1)
{
  v45 = a1;
  v1 = sub_22BDB77D4();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BDBA994();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v35 - v7;
  v39 = sub_22BDBA594();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDBA014();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BBE6DE0(&qword_27D8E3E18, &unk_22BDC1260);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  sub_22BB8AE8C(v45, v15, &qword_27D8E3E18, &unk_22BDC1260);
  if (sub_22BB3AA28(v15, 1, v16) == 1)
  {
    sub_22BB58728(v15, &qword_27D8E3E18, &unk_22BDC1260);
    sub_22BDB6404();
    v22 = sub_22BDB77C4();
    v23 = sub_22BDBB114();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22BB2C000, v22, v23, "FeedbackLearningBiomeDonator#extractInteractionCandidateType: No candidate definition, returning empty type", v24, 2u);
      MEMORY[0x2318A6080](v24, -1, -1);
    }

    (*(v43 + 8))(v3, v44);
    return sub_22BCAAEE8();
  }

  else
  {
    sub_22BCAD538(v15, v21, type metadata accessor for FeedbackLearning.CandidateDefinition);
    sub_22BCAD494(v21, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v27 = v37;
        v28 = v39;
        (*(v37 + 32))(v9, v19, v39);
        v29 = v38;
        (*(v27 + 16))(v38, v9, v28);
        sub_22BB336D0(v29, 0, 1, v28);
        v25 = sub_22BCAB0A0(v29);
        sub_22BB58728(v29, &qword_27D8E2668, &unk_22BDBCCD0);
        (*(v27 + 8))(v9, v28);
      }

      else
      {
        v32 = v40;
        v31 = v41;
        v33 = v42;
        (*(v41 + 32))(v40, v19, v42);
        v25 = sub_22BCABF5C();
        (*(v31 + 8))(v32, v33);
      }
    }

    else
    {
      v30 = v36;
      (*(v36 + 32))(v12, v19, v10);
      v25 = sub_22BCAAF64();
      (*(v30 + 8))(v12, v10);
    }

    sub_22BCAD598(v21, type metadata accessor for FeedbackLearning.CandidateDefinition);
  }

  return v25;
}

uint64_t sub_22BCAA9FC(uint64_t a1)
{
  v2 = sub_22BDB77D4();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDB7A94();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = *(v6 + 16);
  v15(&v29 - v13, a1, v5);
  v16 = (*(v6 + 88))(v14, v5);
  if (v16 == *MEMORY[0x277D1D5C8])
  {
    return 1;
  }

  if (v16 == *MEMORY[0x277D1D5C0])
  {
    return 5;
  }

  if (v16 == *MEMORY[0x277D1D5D8])
  {
    return 2;
  }

  if (v16 == *MEMORY[0x277D1D5D0])
  {
    return 4;
  }

  if (v16 == *MEMORY[0x277D1D5F0])
  {
    return 3;
  }

  if (v16 == *MEMORY[0x277D1D5E8])
  {
    return 0;
  }

  if (v16 == *MEMORY[0x277D1D5E0])
  {
    return 6;
  }

  if (v16 == *MEMORY[0x277D1D5A8])
  {
    return 7;
  }

  if (v16 == *MEMORY[0x277D1D5B0])
  {
    return 8;
  }

  if (v16 != *MEMORY[0x277D1D5B8])
  {
    sub_22BDB6404();
    v15(v12, a1, v5);
    v18 = sub_22BDB77C4();
    v32 = sub_22BDBB114();
    if (os_log_type_enabled(v18, v32))
    {
      v19 = swift_slowAlloc();
      v30 = v18;
      v20 = v19;
      v31 = swift_slowAlloc();
      v34 = v31;
      *v20 = 136315138;
      v15(v9, v12, v5);
      v29 = sub_22BDBAC14();
      v22 = v21;
      v23 = *(v6 + 8);
      v23(v12, v5);
      v24 = sub_22BB32EE0(v29, v22, &v34);

      v25 = v20;
      *(v20 + 4) = v24;
      v26 = v30;
      v27 = v25;
      _os_log_impl(&dword_22BB2C000, v30, v32, "BiomeDonator#mapUserAlignment: Unknown user alignment %s", v25, 0xCu);
      v28 = v31;
      sub_22BB32FA4(v31);
      MEMORY[0x2318A6080](v28, -1, -1);
      MEMORY[0x2318A6080](v27, -1, -1);
    }

    else
    {

      v23 = *(v6 + 8);
      v23(v12, v5);
    }

    (*(v33 + 8))(v4, v2);
    v23(v14, v5);
    return 0;
  }

  return 9;
}

id sub_22BCAAE58(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_22BBED848(0, &qword_27D8E3D08, 0x277CF11C8);
  v4 = sub_22BDBAD54();

  v5 = [v3 initWithCandidateIds:v4 userAlignment:a2];

  return v5;
}

id sub_22BCAAEE8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CF11E8]) initWithExists_];
  v1 = objc_allocWithZone(MEMORY[0x277CF11D8]);
  return sub_22BCACA48(v0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

id sub_22BCAAF64()
{
  v0 = sub_22BDBA734();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9FA4();
  v4 = sub_22BDBA714();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = objc_allocWithZone(MEMORY[0x277CF1210]);
  v8 = sub_22BCAC9E4(v4, v6);
  v9 = objc_allocWithZone(MEMORY[0x277CF11D8]);
  return sub_22BCACA48(0, 0, 0, 0, v8, 0, 0, 0, 0, 0);
}

id sub_22BCAB0A0(uint64_t a1)
{
  v2 = sub_22BDBA424();
  v108 = *(v2 - 8);
  v109 = v2;
  MEMORY[0x28223BE20](v2);
  v107 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BDBA634();
  v115 = *(v4 - 8);
  v116 = v4;
  MEMORY[0x28223BE20](v4);
  v114 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDBA4B4();
  v112 = *(v6 - 8);
  v113 = v6;
  MEMORY[0x28223BE20](v6);
  v111 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDBA3E4();
  v117 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB77D4();
  v122 = *(v11 - 8);
  v123 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v106 = &v104 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v110 = &v104 - v18;
  MEMORY[0x28223BE20](v17);
  v105 = &v104 - v19;
  v20 = sub_22BDBA514();
  v119 = *(v20 - 8);
  v120 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v118 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v121 = &v104 - v23;
  v24 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v104 - v25;
  v27 = sub_22BDBA594();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v104 - v32;
  v35 = v34;
  sub_22BB8AE8C(a1, v26, &qword_27D8E2668, &unk_22BDBCCD0);
  if (sub_22BB3AA28(v26, 1, v35) == 1)
  {
    sub_22BB58728(v26, &qword_27D8E2668, &unk_22BDBCCD0);
    sub_22BDB6404();
    v36 = sub_22BDB77C4();
    v37 = sub_22BDBB114();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22BB2C000, v36, v37, "FeedbackLearningBiomeDonator#mapCandidateType: No typedValue, returning empty type", v38, 2u);
      MEMORY[0x2318A6080](v38, -1, -1);
    }

    (*(v122 + 8))(v14, v123);
    return sub_22BCAAEE8();
  }

  (*(v28 + 32))(v33, v26, v35);
  (*(v28 + 16))(v31, v33, v35);
  v40 = (*(v28 + 88))(v31, v35);
  if (v40 == *MEMORY[0x277D72A58])
  {
    (*(v28 + 96))(v31, v35);
    v41 = swift_projectBox();
    v43 = v119;
    v42 = v120;
    v44 = *(v119 + 16);
    v45 = v121;
    v44(v121, v41, v120);
    v46 = v118;
    v44(v118, v45, v42);
    v47 = (*(v43 + 88))(v46, v42);
    if (v47 != *MEMORY[0x277D72988] && v47 != *MEMORY[0x277D72978] && v47 != *MEMORY[0x277D729A8] && v47 != *MEMORY[0x277D729C0])
    {
      if (v47 == *MEMORY[0x277D729B8] || v47 == *MEMORY[0x277D72990] || v47 == *MEMORY[0x277D72958] || v47 == *MEMORY[0x277D72980] || v47 == *MEMORY[0x277D72968] || v47 == *MEMORY[0x277D72940] || v47 == *MEMORY[0x277D72950] || v47 == *MEMORY[0x277D72948])
      {
        goto LABEL_39;
      }

      if (v47 == *MEMORY[0x277D729D0])
      {
        v67 = [objc_allocWithZone(MEMORY[0x277CF1200]) initWithExists_];
        v68 = objc_allocWithZone(MEMORY[0x277CF11D8]);
        v103 = v67;
        v69 = 0;
LABEL_48:
        v70 = 0;
LABEL_49:
        v71 = 0;
LABEL_63:
        v81 = sub_22BCACA48(0, 0, 0, 0, 0, v69, v70, v71, v103, 0);
LABEL_64:
        v39 = v81;
        v82 = *(v43 + 8);
        v82(v45, v42);
        (*(v28 + 8))(v33, v35);
        v82(v46, v42);
        goto LABEL_65;
      }

      if (v47 == *MEMORY[0x277D729B0])
      {
        v79 = [objc_allocWithZone(MEMORY[0x277CF11F8]) initWithExists_];
        v80 = objc_allocWithZone(MEMORY[0x277CF11D8]);
        v103 = 0;
        v69 = 0;
        v70 = 0;
        v71 = v79;
        goto LABEL_63;
      }

      if (v47 == *MEMORY[0x277D72998])
      {
        v89 = [objc_allocWithZone(MEMORY[0x277CF11F0]) initWithExists_];
        v90 = objc_allocWithZone(MEMORY[0x277CF11D8]);
        v103 = 0;
        v69 = 0;
        v70 = v89;
        goto LABEL_49;
      }

      if (v47 == *MEMORY[0x277D72970])
      {
        v96 = [objc_allocWithZone(MEMORY[0x277CF11C0]) initWithExists_];
        v97 = objc_allocWithZone(MEMORY[0x277CF11D8]);
        v103 = 0;
        v69 = v96;
        goto LABEL_48;
      }

      if (v47 == *MEMORY[0x277D72960] || v47 == *MEMORY[0x277D72938])
      {
LABEL_39:
        (*(v43 + 8))(v46, v42);
      }

      else if (v47 != *MEMORY[0x277D729A0])
      {
        sub_22BDB6404();
        v99 = sub_22BDB77C4();
        v100 = sub_22BDBB114();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_22BB2C000, v99, v100, "FeedbackLearningBiomeDonator#mapCandidateType: Unknown primitive type, returning empty type", v101, 2u);
          v102 = v101;
          v45 = v121;
          MEMORY[0x2318A6080](v102, -1, -1);
        }

        (*(v122 + 8))(v105, v123);
        v81 = sub_22BCAAEE8();
        goto LABEL_64;
      }
    }

    v58 = [objc_allocWithZone(MEMORY[0x277CF11E8]) initWithExists_];
    v59 = objc_allocWithZone(MEMORY[0x277CF11D8]);
    v39 = sub_22BCACA48(0, v58, 0, 0, 0, 0, 0, 0, 0, 0);
    (*(v43 + 8))(v45, v42);
    (*(v28 + 8))(v33, v35);
LABEL_65:

    return v39;
  }

  if (v40 == *MEMORY[0x277D729E8])
  {
    (*(v28 + 96))(v31, v35);
    v60 = swift_projectBox();
    v61 = v117;
    (*(v117 + 16))(v10, v60, v8);
    v39 = sub_22BCABFD8();
    (*(v61 + 8))(v10, v8);
LABEL_45:
    (*(v28 + 8))(v33, v35);
    goto LABEL_65;
  }

  if (v40 == *MEMORY[0x277D72A38])
  {
    (*(v28 + 96))(v31, v35);
    v62 = swift_projectBox();
    v64 = v111;
    v63 = v112;
    v65 = v113;
    (*(v112 + 16))(v111, v62, v113);
    v66 = v114;
    sub_22BDBA3D4();
    v39 = sub_22BCAC36C(v66);
    (*(v115 + 8))(v66, v116);
    (*(v63 + 8))(v64, v65);
    goto LABEL_45;
  }

  if (v40 == *MEMORY[0x277D729E0] || v40 == *MEMORY[0x277D72A30] || v40 == *MEMORY[0x277D72A40])
  {
    goto LABEL_58;
  }

  if (v40 == *MEMORY[0x277D729F8])
  {
    (*(v28 + 96))(v31, v35);
    v84 = swift_projectBox();
    v86 = v107;
    v85 = v108;
    v87 = v109;
    (*(v108 + 16))(v107, v84, v109);
    v88 = v114;
    sub_22BDBA3D4();
    v39 = sub_22BCAC36C(v88);
    (*(v115 + 8))(v88, v116);
    (*(v85 + 8))(v86, v87);
    goto LABEL_45;
  }

  if (v40 == *MEMORY[0x277D72A60])
  {
LABEL_58:
    v74 = *(v28 + 8);
    v74(v31, v35);
    v75 = v110;
    sub_22BDB6404();
    v76 = sub_22BDB77C4();
    v77 = sub_22BDBB114();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_22BB2C000, v76, v77, "FeedbackLearningBiomeDonator#mapCandidateType: Received unsupported type, returning empty type", v78, 2u);
      MEMORY[0x2318A6080](v78, -1, -1);
    }

    (*(v122 + 8))(v75, v123);
    v39 = sub_22BCAAEE8();
    v74(v33, v35);
  }

  else
  {
    v91 = v106;
    sub_22BDB6404();
    v92 = sub_22BDB77C4();
    v93 = sub_22BDBB114();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_22BB2C000, v92, v93, "FeedbackLearningBiomeDonator#mapCandidateType: Received unsupported type, returning empty type", v94, 2u);
      MEMORY[0x2318A6080](v94, -1, -1);
    }

    (*(v122 + 8))(v91, v123);
    v39 = sub_22BCAAEE8();
    v95 = *(v28 + 8);
    v95(v33, v35);
    v95(v31, v35);
  }

  return v39;
}

id sub_22BCABF5C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CF1208]) initWithExists_];
  v1 = objc_allocWithZone(MEMORY[0x277CF11D8]);
  return sub_22BCACA48(0, 0, 0, v0, 0, 0, 0, 0, 0, 0);
}

id sub_22BCABFD8()
{
  v0 = sub_22BDBA634();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - v5;
  sub_22BDBA3D4();
  v7 = (*(v1 + 88))(v6, v0);
  if (v7 != *MEMORY[0x277D72D50] && v7 != *MEMORY[0x277D72D30])
  {
    if (v7 == *MEMORY[0x277D72D28])
    {
      (*(v1 + 96))(v6, v0);
      v20 = *v6;
      v21 = *(*v6 + 16);
      v22 = *(*v6 + 24);
      v23 = *(v20 + 32);
      v24 = *(v20 + 40);
      objc_allocWithZone(MEMORY[0x277CF11E0]);

      v25 = sub_22BCACB14(v21, v22, v23, v24);
      v26 = objc_allocWithZone(MEMORY[0x277CF11D8]);
      v19 = sub_22BCACA48(0, 0, 0, 0, 0, 0, 0, 0, 0, v25);

      return v19;
    }

    if (v7 != *MEMORY[0x277D72D18])
    {
      sub_22BDBA3D4();
      v27 = sub_22BDBA5F4();
      v29 = v28;
      v30 = *(v1 + 8);
      v30(v4, v0);
      v31 = sub_22BDBA3B4();
      v33 = v32;
      v34 = objc_allocWithZone(MEMORY[0x277CF11E0]);
      v35 = sub_22BCACB14(v27, v29, v31, v33);
      v36 = objc_allocWithZone(MEMORY[0x277CF11D8]);
      v19 = sub_22BCACA48(0, 0, 0, 0, 0, 0, 0, 0, 0, v35);
      v30(v6, v0);
      return v19;
    }
  }

  v9 = *(v1 + 8);
  v9(v6, v0);
  sub_22BDBA3D4();
  v10 = sub_22BDBA5F4();
  v12 = v11;
  v9(v4, v0);
  v13 = sub_22BDBA3B4();
  v15 = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CF11E0]);
  v17 = sub_22BCACB14(v10, v12, v13, v15);
  v18 = objc_allocWithZone(MEMORY[0x277CF11D8]);
  return sub_22BCACA48(0, 0, 0, 0, 0, 0, 0, 0, 0, v17);
}

id sub_22BCAC36C(uint64_t a1)
{
  v2 = sub_22BDB77D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDBA634();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 != *MEMORY[0x277D72D50] && v10 != *MEMORY[0x277D72D30])
  {
    if (v10 == *MEMORY[0x277D72D28])
    {
      (*(v7 + 96))(v9, v6);
      v16 = *(*v9 + 16);
      v17 = *(*v9 + 24);
      v18 = *(*v9 + 32);
      v19 = *(*v9 + 40);
      objc_allocWithZone(MEMORY[0x277CF11E0]);

      v20 = sub_22BCACB14(v16, v17, v18, v19);
      v21 = objc_allocWithZone(MEMORY[0x277CF11D8]);
      v15 = sub_22BCACA48(0, 0, 0, 0, 0, 0, 0, 0, 0, v20);

      return v15;
    }

    if (v10 != *MEMORY[0x277D72D18])
    {
      v15 = sub_22BCAAEE8();
      (*(v7 + 8))(v9, v6);
      return v15;
    }
  }

  (*(v7 + 8))(v9, v6);
  sub_22BDB6404();
  v12 = sub_22BDB77C4();
  v13 = sub_22BDBB114();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22BB2C000, v12, v13, "FeedbackLearningBiomeDonator#getCustomInteractionCandidateType: Received unsupported type, returning empty type", v14, 2u);
    MEMORY[0x2318A6080](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_22BCAAEE8();
}

id sub_22BCAC6AC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_22BDB43E4();
  v7 = 0;
  if (sub_22BB3AA28(a1, 1, v6) != 1)
  {
    v7 = sub_22BDB43A4();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithSessionId:v7 statementIndex:a2];

  return v8;
}

id sub_22BCAC76C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v15 = sub_22BDB4354();
  v16 = 0;
  if (sub_22BB3AA28(a1, 1, v15) != 1)
  {
    v16 = sub_22BDB4314();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v17 = sub_22BDB43E4();
  v18 = 0;
  if (sub_22BB3AA28(a3, 1, v17) != 1)
  {
    v18 = sub_22BDB43A4();
    (*(*(v17 - 8) + 8))(a3, v17);
  }

  if (a5)
  {
    v19 = sub_22BDBABE4();
  }

  else
  {
    v19 = 0;
  }

  sub_22BBED848(0, &qword_27D8E3D00, 0x277CF11D0);
  v20 = sub_22BDBAD54();

  v21 = [v9 initWithAbsoluteTimestamp:v16 transcriptStatementId:a2 appIntentInvocationUUID:v18 sirikitIntentItemId:v19 trigger:a6 tupleInteraction:a7 candidateInteractions:v20];

  return v21;
}

id sub_22BCAC938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_22BDBABE4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_22BDBABE4();

LABEL_6:
  v10 = [v5 initWithIdentifier:v8 bundleId:v9 type:a5];

  return v10;
}

id sub_22BCAC9E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22BDBABE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleId_];

  return v4;
}

id sub_22BCACA48(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v11 = v10;
  v21 = [v11 initWithUnknown:a1 primitive:a2 device:a3 schema:a4 tool:a5 app:a6 file:a7 person:a8 placemark:a9 custom:a10];

  return v21;
}

id sub_22BCACB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_22BDBABE4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_22BDBABE4();

LABEL_6:
  v8 = [v4 initWithBundleId:v6 typeName:v7];

  return v8;
}

uint64_t (*sub_22BCACBB4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_22BD5B8F8(a3);
  sub_22BD72584();
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x2318A5340](a2, a3);
  }

  *a1 = v7;
  return sub_22BCACC40;
}

uint64_t sub_22BCACC48(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a8;
  v66 = a6;
  v57 = a3;
  v58 = a5;
  v75 = a2;
  v76 = a4;
  v62 = a1;
  v70 = sub_22BDB5714();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v64 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_22BDB6BF4();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_22BDB4354();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = type metadata accessor for FeedbackLearningInteractionRecord(0) - 8;
  MEMORY[0x28223BE20](v56);
  v72 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22BDB6C34();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_22BDB6C24();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_22BDB43E4();
  v60 = *(v21 - 8);
  v61 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v50[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = *(a7 - 8);
  MEMORY[0x28223BE20](v22);
  v27 = *(v26 + 16);
  v55 = &v50[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = a7;
  v27(v55, v57, a7);
  v51 = *v58;
  v53 = v24;
  sub_22BDB43D4();
  sub_22BDB6A04();
  sub_22BDB69F4();
  (*(v18 + 16))(v16, v20, v17);
  v28 = *MEMORY[0x277D1F898];
  v57 = *(v14 + 104);
  v52 = v13;
  v57(v16, v28, v13);
  sub_22BCA6E9C();
  v29 = *(v14 + 8);
  v58 = (v14 + 8);
  v29(v16, v13);
  (*(v18 + 8))(v20, v17);
  v30 = v56;
  v31 = *(v56 + 28);
  v32 = v72;
  v33 = v62;
  sub_22BD18CBC(v62, &v72[v31]);
  v34 = sub_22BD19F48(v33);
  v35 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v36 = *(v35 + 24);
  v37 = sub_22BDB7A84();
  (*(*(v37 - 8) + 16))(v32, v33 + v36, v37);
  *&v32[*(v30 + 32)] = v34;
  v38 = v74;
  sub_22BDB7A64();
  v39 = *(v35 + 20);
  v77[0] = v51;
  v40 = FeedbackLearningBiomeDonator.donateInteractionTuples(tuple:candidates:sessionId:absoluteTimestamp:statementId:trigger:)(&v32[v31], v34, v33, v38, v33 + v39, v77);
  sub_22BDB9994();
  v41 = v64;
  sub_22BDB5704();

  v42 = v63;
  sub_22BCA4138();
  (*(v68 + 8))(v41, v70);
  v43 = v65;
  v44 = v67;
  (*(v65 + 16))(v16, v42, v67);
  v45 = v52;
  v57(v16, *MEMORY[0x277D1F890], v52);
  v46 = v53;
  v47 = v55;
  v48 = v54;
  sub_22BCA6E9C();

  v29(v16, v45);
  (*(v43 + 8))(v42, v44);
  (*(v69 + 8))(v74, v71);
  (*(v60 + 8))(v46, v61);
  sub_22BCAD598(v72, type metadata accessor for FeedbackLearningInteractionRecord);
  return (*(v59 + 8))(v47, v48);
}

id sub_22BCAD388@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_22BCA9D1C(a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FeedbackLearningBiomeDonator.FeedbackLearningBiomeStream(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22BCAD494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCAD538(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCAD598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BCAD5F0(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3E00, &qword_22BDC1248);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v89 - v3;
  v5 = _s16CandidateSummaryVMa(0);
  v109 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v108 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB30B70();
  MEMORY[0x28223BE20](v7);
  sub_22BB2F384();
  v106 = v8;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  sub_22BB2F384();
  v105 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  sub_22BB2F384();
  v104 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F384();
  v91 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F384();
  v101 = v16;
  sub_22BB30B70();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v89 - v19;
  MEMORY[0x28223BE20](v18);
  v90 = &v89 - v21;
  v99 = sub_22BBE6DE0(&qword_27D8E3E40, &qword_22BDC1288);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v22);
  v24 = &v89 - v23;

  v92 = a1;
  v26 = sub_22BCADEE8(v25);
  v27 = v26 + 8;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26[8];
  v31 = (v28 + 63) >> 6;
  v100 = v26;

  v33 = 0;
  v94 = MEMORY[0x277D84F90];
  v95 = v24;
  v97 = v27;
  v98 = v31;
  v96 = v4;
  v107 = v5;
LABEL_4:
  v34 = v33;
  v35 = v4;
  if (!v30)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v36 = v5;
    v33 = v34;
LABEL_10:
    v37 = __clz(__rbit64(v30)) | (v33 << 6);
    v38 = v100;
    v39 = v100[6];
    sub_22BDB7B44();
    sub_22BB2F330();
    (*(v40 + 16))(v24, v39 + *(v40 + 72) * v37);
    v41 = *(v38[7] + 8 * v37);
    *&v24[*(v99 + 48)] = v41;
    v42 = *(v41 + 16);
    if (v42)
    {
      break;
    }

LABEL_74:
    v5 = v36;
    sub_22BB336D0(v35, 1, 1, v36);
LABEL_91:
    v30 &= v30 - 1;
    sub_22BB58728(v24, &qword_27D8E3E40, &qword_22BDC1288);
    v83 = sub_22BB3AA28(v35, 1, v5) == 1;
    v31 = v98;
    if (!v83)
    {
      sub_22BCAE924(v35, v90);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BBD5D64();
        v94 = v87;
      }

      v85 = *(v94 + 16);
      if (v85 >= *(v94 + 24) >> 1)
      {
        sub_22BBD5D64();
        v94 = v88;
      }

      v86 = v94;
      *(v94 + 16) = v85 + 1;
      result = sub_22BCAE924(v90, v86 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v85);
      goto LABEL_4;
    }

    result = sub_22BB58728(v35, &qword_27D8E3E00, &qword_22BDC1248);
    v34 = v33;
    if (!v30)
    {
LABEL_6:
      while (1)
      {
        v33 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_102;
        }

        if (v33 >= v31)
        {

          return v94;
        }

        v30 = v27[v33];
        ++v34;
        if (v30)
        {
          v36 = v5;
          goto LABEL_10;
        }
      }
    }
  }

  v43 = *(v36 + 32);
  v44 = (*(v109 + 80) + 32) & ~*(v109 + 80);
  v45 = v41 + v44;
  v110 = v41;

  v46 = 0;
  while (v46 < *(v110 + 16))
  {
    v47 = *(v109 + 72);
    sub_22BCAE790(v45 + v47 * v46, v20);
    v48 = v20[v43];
    if (v48 >> 6)
    {
      if (v48 >> 6 == 1)
      {
        if ((v48 & 0x3F) != 0)
        {
          goto LABEL_75;
        }
      }

      else if (v48 != 128)
      {
        result = sub_22BCAE7F4(v20);
        if (v48 == 129)
        {
          goto LABEL_76;
        }

        goto LABEL_21;
      }
    }

    else if (v20[v43])
    {
LABEL_75:
      result = sub_22BCAE7F4(v20);
LABEL_76:
      v78 = 0;
      v79 = *(v107 + 32);
      while (1)
      {
        if (v78 >= *(v110 + 16))
        {
          goto LABEL_103;
        }

        v80 = v108;
        sub_22BCAE790(v45, v108);
        v81 = *(v80 + v79);
        if (v81 >> 6)
        {
          if (v81 >> 6 == 1)
          {
            if ((v81 & 0x3F) == 0)
            {
              goto LABEL_87;
            }
          }

          else if (v81 == 128)
          {
LABEL_87:
            sub_22BCAE7F4(v108);
            v35 = v96;
            v5 = v107;
            sub_22BB336D0(v96, 1, 1, v107);
            goto LABEL_88;
          }
        }

        else if (!*(v80 + v79))
        {
          goto LABEL_87;
        }

        ++v78;
        result = sub_22BCAE7F4(v108);
        v45 += v47;
        if (v42 == v78)
        {
          v82 = v92;

          v35 = v96;
          sub_22BCAE2D4(v110, v82, v96);
          v5 = v107;
LABEL_88:
          v24 = v95;
          goto LABEL_90;
        }
      }
    }

    result = sub_22BCAE7F4(v20);
LABEL_21:
    if (v42 == ++v46)
    {
      v93 = v44;
      v49 = *(v110 + 16);
      v24 = v95;
      v35 = v96;
      v36 = v107;
      v27 = v97;
      if (!v49)
      {
        goto LABEL_74;
      }

      sub_22BCAE790(v45, v101);
      v50 = v49 - 1;
      if (v49 != 1)
      {
        v89 = v20;
        v51 = *(v36 + 36);
        v102 = *(v36 + 32);
        v103 = v51;
        v52 =  + v93 + v47;
        v53 = v91;
        v54 = v101;
        while (1)
        {
          sub_22BCAE790(v52, v53);
          v55 = *(v54 + v103);
          v56 = *(v53 + v103);
          v57 = *(v54 + v102);
          v58 = v57 >> 6;
          if (v57 >> 6)
          {
            if (v58 == 1)
            {
              LOBYTE(v59) = 0;
              LOBYTE(v60) = 0;
              LOBYTE(v61) = 0;
              v62 = (v57 & 0x3F) == 2;
              v63 = (v57 & 0x3F) != 2;
            }

            else
            {
              v62 = 0;
              v63 = 0;
              v59 = 8u >> (v57 & 0xF);
              v60 = 4u >> (v57 & 0xF);
              v61 = 3u >> (v57 & 0xF);
            }
          }

          else
          {
            LOBYTE(v59) = 0;
            LOBYTE(v60) = 0;
            LOBYTE(v61) = 0;
            v63 = v57 < 2;
            v62 = v57 > 1;
          }

          v64 = *(v53 + v102);
          v65 = v64 >> 6;
          if (v64 >> 6)
          {
            if (v65 != 1)
            {
              switch(*(v53 + v102))
              {
                case 0x82:
                  if (v60)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_38;
                case 0x83:
                  if (v59)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_38;
                default:
                  if (v61)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_38;
              }
            }

            if ((v64 & 0x3F) != 2)
            {
              if (v63)
              {
                goto LABEL_46;
              }

              goto LABEL_38;
            }
          }

          else if (v64 < 2)
          {
            if (v63)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          }

          if (v62)
          {
LABEL_46:
            v69 = sub_22BDB4BF4();
            v54 = v101;
            if (v69)
            {
              v70 = v53;
            }

            else
            {
              v70 = v101;
            }

            goto LABEL_66;
          }

LABEL_38:
          if (v58)
          {
            if (v58 == 1)
            {
              LOBYTE(v58) = 0;
              LOBYTE(v66) = 0;
              v67 = 0;
              v68 = (v57 & 0x3F) == 2;
              if (v65)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v71 = v57 & 0xF;
              v58 = 8u >> v71;
              v66 = 0xCu >> v71;
              v67 = 1;
              v68 = 1;
              if (v65)
              {
LABEL_53:
                if (v65 != 1)
                {
                  switch(*(v53 + v102))
                  {
                    case 0x82:
                      v70 = v53;
                      if ((v58 & 1) == 0)
                      {
                        goto LABEL_65;
                      }

                      break;
                    case 0x83:
                      goto LABEL_65;
                    default:
                      v70 = v53;
                      if ((v66 & 1) == 0)
                      {
                        goto LABEL_65;
                      }

                      break;
                  }

                  goto LABEL_66;
                }

                if ((v64 & 0x3F) != 2)
                {
                  v70 = v53;
                  if (v68)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_65;
                }

                goto LABEL_61;
              }
            }
          }

          else
          {
            LOBYTE(v66) = 0;
            v67 = 0;
            v68 = v57 > 1;
            if (v65)
            {
              goto LABEL_53;
            }
          }

          if (v64 < 2)
          {
            v70 = v53;
            if (v68)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

LABEL_61:
          v70 = v53;
          if (v67)
          {
            goto LABEL_66;
          }

LABEL_65:
          v70 = v54;
LABEL_66:
          v72 = v56 | v55;
          v73 = v106;
          sub_22BCAE790(v70, v106);
          v74 = v105;
          sub_22BCAE924(v73, v105);
          v75 = v74;
          v76 = v104;
          sub_22BCAE924(v75, v104);
          v77 = v107;
          *(v76 + *(v107 + 36)) = v72;
          sub_22BCAE7F4(v54);
          sub_22BCAE7F4(v53);
          sub_22BCAE924(v76, v54);
          v52 += v47;
          if (!--v50)
          {
            v36 = v77;

            v24 = v95;
            v35 = v96;
            v20 = v89;
            break;
          }
        }
      }

      sub_22BCAE924(v101, v35);
      v5 = v36;
      sub_22BB336D0(v35, 0, 1, v36);
LABEL_90:
      v27 = v97;
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

void *sub_22BCADEE8(uint64_t a1)
{
  v2 = sub_22BDB7B44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s16CandidateSummaryVMa(0);
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v34 - v8;
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v48 = MEMORY[0x277D84F98];
  v45 = *(a1 + 16);
  v42 = (v3 + 16);
  v37 = v3 + 32;
  v38 = v3;
  v36 = (v3 + 8);
  v35 = xmmword_22BDBCBD0;
  v39 = v2;
  v40 = a1;
  while (1)
  {
    if (v45 == v9)
    {

      return v10;
    }

    if (v9 >= *(a1 + 16))
    {
      break;
    }

    v11 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v12 = *(v43 + 72);
    v13 = v46;
    sub_22BCAE790(a1 + v11 + v12 * v9, v46);
    (*v42)(v47, v13 + *(v44 + 28), v2);
    sub_22BD84584();
    v16 = v15;
    v17 = v10[2];
    v18 = (v14 & 1) == 0;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v10[3] < v17 + v18)
    {
      sub_22BD5BC2C();
      v10 = v48;
      sub_22BD84584();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

      v16 = v20;
    }

    if (v19)
    {
      (*v36)(v47, v2);
      v22 = v10[7];
      sub_22BCAE924(v46, v41);
      v23 = *(v22 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v16) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BBD5D64();
        v23 = v31;
        *(v22 + 8 * v16) = v31;
      }

      v25 = *(v23 + 16);
      if (v25 >= *(v23 + 24) >> 1)
      {
        sub_22BBD5D64();
        v23 = v32;
        *(v22 + 8 * v16) = v32;
      }

      a1 = v40;
      v26 = v41;
      *(v23 + 16) = v25 + 1;
      sub_22BCAE924(v26, v23 + v11 + v25 * v12);
      v2 = v39;
    }

    else
    {
      sub_22BBE6DE0(&qword_27D8E3E48, &unk_22BDC2FF0);
      v27 = swift_allocObject();
      *(v27 + 16) = v35;
      sub_22BCAE924(v46, v27 + v11);
      v10[(v16 >> 6) + 8] |= 1 << v16;
      (*(v38 + 32))(v10[6] + *(v38 + 72) * v16, v47, v2);
      *(v10[7] + 8 * v16) = v27;
      v28 = v10[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v10[2] = v30;
    }

    ++v9;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCAE2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s16CandidateSummaryVMa(0);
  v7 = MEMORY[0x28223BE20](v6);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v53 - v19;
  if (*(a1 + 16))
  {
    v54 = a3;
    v55 = a2;
    v21 = v18;
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);

    v53 = sub_22BCAE87C(1, a1, sub_22BD945B8, sub_22BD4630C);
    v57 = v23;
    v25 = v24;
    v27 = v26;
    result = sub_22BCAE790(a1 + v22, v20);
    v29 = (v27 >> 1) - v25;
    if (v27 >> 1 == v25)
    {
LABEL_3:
      swift_unknownObjectRelease();
      v30 = v54;
      sub_22BCAE924(v20, v54);
      sub_22BB336D0(v30, 0, 1, v6);
    }

    if ((v27 >> 1) > v25)
    {
      v31 = *(v21 + 72);
      v32 = v57 + v25 * v31;
      v33 = *(v6 + 32);
      v34 = *(v6 + 36);
      v56 = v31;
      v57 = v6;
      while (1)
      {
        sub_22BCAE790(v32, v17);
        v35 = v20[v33];
        v36 = v35 >> 6;
        if (v35 >> 6)
        {
          if (v36 == 1)
          {
            LOBYTE(v37) = 0;
            LOBYTE(v38) = 0;
            LOBYTE(v39) = 0;
            v40 = (v35 & 0x3F) == 2;
            v41 = (v35 & 0x3F) != 2;
          }

          else
          {
            v40 = 0;
            v41 = 0;
            v37 = 8u >> (v35 & 0xF);
            v38 = 4u >> (v35 & 0xF);
            v39 = 3u >> (v35 & 0xF);
          }
        }

        else
        {
          LOBYTE(v37) = 0;
          LOBYTE(v38) = 0;
          LOBYTE(v39) = 0;
          v41 = v35 < 2;
          v40 = v35 > 1;
        }

        v42 = *&v20[v34];
        v43 = *&v17[v34];
        v44 = v17[v33];
        v45 = v44 >> 6;
        if (v44 >> 6)
        {
          if (v45 != 1)
          {
            switch(v17[v33])
            {
              case -126:
                if (v38)
                {
                  goto LABEL_26;
                }

                goto LABEL_18;
              case -125:
                if (v37)
                {
                  goto LABEL_26;
                }

                goto LABEL_18;
              default:
                if (v39)
                {
                  goto LABEL_26;
                }

                goto LABEL_18;
            }
          }

          if ((v44 & 0x3F) != 2)
          {
            if (v41)
            {
              goto LABEL_26;
            }

            goto LABEL_18;
          }
        }

        else if (v44 < 2)
        {
          if (v41)
          {
            goto LABEL_26;
          }

          goto LABEL_18;
        }

        if (v40)
        {
LABEL_26:
          if (sub_22BDB4BF4())
          {
            v49 = v17;
          }

          else
          {
            v49 = v20;
          }

          goto LABEL_46;
        }

LABEL_18:
        if (v36)
        {
          if (v36 == 1)
          {
            LOBYTE(v36) = 0;
            LOBYTE(v46) = 0;
            v47 = 0;
            v48 = (v35 & 0x3F) == 2;
            if (v45)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v50 = v35 & 0xF;
            v36 = 8u >> v50;
            v46 = 0xCu >> v50;
            v47 = 1;
            v48 = 1;
            if (v45)
            {
LABEL_33:
              if (v45 != 1)
              {
                switch(v17[v33])
                {
                  case -126:
                    v49 = v17;
                    if ((v36 & 1) == 0)
                    {
                      goto LABEL_45;
                    }

                    break;
                  case -125:
                    goto LABEL_45;
                  default:
                    v49 = v17;
                    if ((v46 & 1) == 0)
                    {
                      goto LABEL_45;
                    }

                    break;
                }

                goto LABEL_46;
              }

              if ((v44 & 0x3F) != 2)
              {
                v49 = v17;
                if (v48)
                {
                  goto LABEL_46;
                }

                goto LABEL_45;
              }

              goto LABEL_41;
            }
          }
        }

        else
        {
          LOBYTE(v46) = 0;
          v47 = 0;
          v48 = v35 > 1;
          if (v45)
          {
            goto LABEL_33;
          }
        }

        if (v44 < 2)
        {
          v49 = v17;
          if (v48)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_41:
        v49 = v17;
        if (v47)
        {
          goto LABEL_46;
        }

LABEL_45:
        v49 = v20;
LABEL_46:
        v51 = v43 | v42;
        v52 = v58;
        sub_22BCAE790(v49, v58);
        sub_22BCAE924(v52, v11);
        sub_22BCAE924(v11, v14);
        v6 = v57;
        *&v14[*(v57 + 36)] = v51;
        sub_22BCAE7F4(v20);
        sub_22BCAE7F4(v17);
        sub_22BCAE924(v14, v20);
        v32 += v56;
        if (!--v29)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
  }

  else
  {
    sub_22BB336D0(a3, 1, 1, v6);
  }

  return result;
}

uint64_t sub_22BCAE790(uint64_t a1, uint64_t a2)
{
  v4 = _s16CandidateSummaryVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCAE7F4(uint64_t a1)
{
  v2 = _s16CandidateSummaryVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCAE87C(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      v7 = a4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BCAE924(uint64_t a1, uint64_t a2)
{
  v4 = _s16CandidateSummaryVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22BCAE988()
{
  sub_22BB30F94();
  v269 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v248 = _s29ParameterDisambiguationResultVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v10 = sub_22BB30B8C(v9);
  v247 = _s27ParameterConfirmationResultVMa(v10);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v12 = sub_22BB39768();
  found = _s33ParameterCandidatesNotFoundResultVMa(v12);
  v14 = sub_22BB2F0C8(found);
  MEMORY[0x28223BE20](v14);
  sub_22BB305A8();
  v16 = sub_22BB30B8C(v15);
  v250 = _s15CandidateResultVMa(v16);
  sub_22BB30444();
  v244 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  sub_22BB2F14C(v19);
  v20 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  v21 = sub_22BB2F0C8(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v22);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v23);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v24);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v25);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v26);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v27);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v28);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v29);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v30);
  sub_22BB2F39C();
  v262 = v31;
  v32 = sub_22BB2F120();
  v263 = type metadata accessor for FeedbackLearning.CandidateDefinition(v32);
  sub_22BB30444();
  v268 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v35);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v36);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v37);
  sub_22BB2F39C();
  v264 = v38;
  v39 = sub_22BB2F120();
  v40 = _s25ParameterNotAllowedResultVMa(v39);
  v41 = sub_22BB2F0C8(v40);
  MEMORY[0x28223BE20](v41);
  sub_22BB305A8();
  v43 = sub_22BB30B8C(v42);
  v256 = _s19ParameterStepResultOMa(v43);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v44);
  sub_22BB30574();
  v47 = v46 - v45;
  v257 = _s23ParameterStepEvaluationVMa(0);
  sub_22BB30444();
  v266 = v48;
  MEMORY[0x28223BE20](v49);
  sub_22BB305A8();
  v267 = v50;
  sub_22BB2F120();
  v51 = sub_22BDB4C34();
  sub_22BB30444();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v55);
  v57 = v224 - v56;
  v239 = sub_22BDB77D4();
  sub_22BB30444();
  v237 = v58;
  MEMORY[0x28223BE20](v59);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v60);
  v270[2] = v7;
  v270[3] = v5;
  v232 = v5;
  v61 = v3;
  v270[4] = v3;
  v62 = v269;

  sub_22BDA257C(sub_22BCB6748, v270, v62);
  v64 = v63;
  sub_22BDB6404();
  v236 = v53;
  v65 = *(v53 + 16);
  v231 = v7;
  v227 = v53 + 16;
  v226 = v65;
  v65(v57, v7, v51);

  v66 = sub_22BDB77C4();
  v67 = sub_22BDBB0F4();
  v235 = v64;

  v234 = v61;

  v68 = os_log_type_enabled(v66, v67);
  v254 = v47;
  v230 = v51;
  if (v68)
  {
    v47 = sub_22BB314C8();
    v269 = swift_slowAlloc();
    v271[0] = v269;
    *v47 = 136315650;
    sub_22BB36584();
    sub_22BCB6774(v69, v70, MEMORY[0x277D1C368]);
    v71 = sub_22BDBB684();
    v73 = v72;
    v74 = sub_22BB3A444();
    v75(v74);
    v76 = sub_22BB32EE0(v71, v73, v271);

    *(v47 + 4) = v76;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_22BB32EE0(v232, v234, v271);
    *(v47 + 22) = 2080;
    v77 = v67;
    v78 = v235;
    v79 = MEMORY[0x2318A4D50](v235, v257);
    v81 = sub_22BB32EE0(v79, v80, v271);

    *(v47 + 24) = v81;
    _os_log_impl(&dword_22BB2C000, v66, v77, "Matching step evaluations for statementId=%s and parameter=%s: %s", v47, 0x20u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB6BE68();
    sub_22BB30AF0();

    v82 = sub_22BB52938();
    v83(v82);
  }

  else
  {

    v84 = sub_22BB3A444();
    v85(v84);
    v86 = sub_22BB52938();
    v87(v86);
    v78 = v235;
  }

  v88 = v262;
  v89 = v249;
  v90 = v255;
  v91 = v253;
  v92 = v264;
  v261 = *(v78 + 16);
  if (v261)
  {
    sub_22BB2F390();
    v260 = v94 + v95;
    v96 = *(v257 + 28);
    v258 = *(v97 + 72);
    v259 = v96;
    v98 = MEMORY[0x277D84F90];
    v240 = xmmword_22BDBCBD0;
    v242 = v0;
    while (1)
    {
      v265 = v93;
      v266 = v98;
      v98 = v267;
      sub_22BCB66B0(v260 + v258 * v93, v267);
      sub_22BCB66B0(v98 + v259, v47);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v126 = v0;
          v127 = sub_22BBC785C();
          v128 = v251;
          sub_22BCB6584(v127, v251);
          v47 = *(v257 + 24);
          sub_22BDBA594();
          sub_22BB30ED8();
          (*(v129 + 16))(v92, v128);
          sub_22BB31F54();
          swift_storeEnumTagMultiPayload();
          v99 = v267 + v47;
          sub_22BDB8344();
          v98 = v266;
          if (v130)
          {
            sub_22BB73B98(129);
            sub_22BCB6EB8();
            v99 = v131;
          }

          else
          {
            sub_22BB73B98(129);
            sub_22BCB743C();
            sub_22BB92264();
            v47 = &qword_27D8E3EA8;
            sub_22BBBEE60(v138, v139, &qword_27D8E3EA8, &qword_22BDC1378);
            sub_22BB2F4B8();
            if (v134)
            {
              sub_22BB58728(v88, &qword_27D8E3EA8, &qword_22BDC1378);
              v99 = 0;
            }

            else
            {
              sub_22BB32BE4();
              v98 = v243;
              sub_22BCB6584(v99, v243);
              v155 = sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
              v156 = sub_22BB3624C(v155);
              v157 = sub_22BB32760(v156);
              sub_22BB3ABAC(v157, v158);
              sub_22BB58728(v88, &qword_27D8E3EA8, &qword_22BDC1378);
            }
          }

          v0 = v126;
          sub_22BB6BE68();
          sub_22BB356B0();
          sub_22BCB652C(v92, v159);
          sub_22BCB652C(v251, _s25ParameterNotAllowedResultVMa);
          goto LABEL_52;
        case 2u:
          v116 = sub_22BBC785C();
          v98 = v252;
          sub_22BCB6584(v116, v252);
          v92 = *(v257 + 24);
          sub_22BDBA594();
          sub_22BB30ED8();
          (*(v117 + 16))(v91, v98);
          sub_22BB51864();
          v99 = v267 + v92;
          sub_22BDB8344();
          if (v118)
          {
            sub_22BB73B98(129);
            sub_22BCB6EB8();
            v99 = v119;
            sub_22BB33094();
          }

          else
          {
            v90 = v89;
            sub_22BB73B98(129);
            sub_22BB3E368();
            sub_22BCB743C();
            sub_22BB92264();
            sub_22BBBEE60(v132, v133, &qword_27D8E3EA8, &qword_22BDC1378);
            sub_22BB2F4B8();
            if (v134)
            {
              sub_22BB3A944();
              sub_22BB58728(v135, v136, v137);
              v99 = 0;
            }

            else
            {
              sub_22BB32BE4();
              v98 = v243;
              sub_22BCB6584(v99, v243);
              v145 = sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
              v146 = sub_22BB3624C(v145);
              v147 = sub_22BB32760(v146);
              sub_22BCB6584(v147, v148);
              sub_22BB3A944();
              sub_22BB58728(v149, v150, v151);
            }

            sub_22BB33094();
            sub_22BB3CAD8();
          }

          sub_22BB356B0();
          sub_22BCB652C(v91, v152);
          v153 = _s33ParameterCandidatesNotFoundResultVMa;
          v154 = v252;
          goto LABEL_51;
        case 3u:
          v120 = sub_22BBC785C();
          sub_22BCB6584(v120, v0);
          v91 = v90;
          v90 = *(v257 + 24);
          v92 = *(v0 + *(v247 + 20));
          sub_22BDBA594();
          sub_22BB30ED8();
          (*(v121 + 16))(v91, v0);
          sub_22BB51864();
          v99 = v267 + v90;
          sub_22BDB8344();
          if (v92)
          {
            v99 = v241;
            if (v92 == 1)
            {
              v90 = v255;
              v91 = v253;
              sub_22BB33094();
              if (v124)
              {
                v125 = 1;
LABEL_34:
                sub_22BB73B98(v125);
                sub_22BCB6EB8();
                v99 = v144;
                goto LABEL_50;
              }

              LOBYTE(v271[0]) = 1;
              v47 = v123;
              sub_22BCB743C();
              sub_22BB92264();
              v91 = &qword_27D8E3EA8;
              sub_22BBBEE60(v160, v161, &qword_27D8E3EA8, &qword_22BDC1378);
              sub_22BB2F4B8();
              if (v134)
              {
                sub_22BB3A944();
                sub_22BB58728(v162, v163, v164);
                v99 = 0;
              }

              else
              {
                sub_22BB32BE4();
                v98 = v243;
                sub_22BCB6584(v99, v243);
                v177 = sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
                v178 = sub_22BB3624C(v177);
                v179 = sub_22BB32760(v178);
                sub_22BB3ABAC(v179, v180);
                sub_22BB3A944();
                sub_22BB58728(v181, v182, v183);
              }

              sub_22BB6BE68();
              v89 = v249;
              sub_22BB72094();
            }

            else
            {
              sub_22BB3CAD8();
              sub_22BB72094();
              sub_22BB33094();
              if (v143)
              {
                v125 = 2;
                goto LABEL_34;
              }

              sub_22BB73B98(2);
              v171 = v90;
              v172 = v224[3];
              v173 = v171;
              sub_22BCB743C();
              v91 = &qword_27D8E3EA8;
              sub_22BBBEE60(v172, v99, &qword_27D8E3EA8, &qword_22BDC1378);
              sub_22BB2F4B8();
              if (v134)
              {
                sub_22BB3A944();
                sub_22BB58728(v174, v175, v176);
                v99 = 0;
              }

              else
              {
                sub_22BB32BE4();
                v98 = v243;
                sub_22BCB6584(v99, v243);
                v191 = sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
                v192 = sub_22BB3624C(v191);
                v193 = sub_22BB32760(v192);
                sub_22BB3ABAC(v193, v194);
                sub_22BB3A944();
                sub_22BB58728(v195, v196, v197);
              }

              v89 = v249;
              v90 = v173;
              sub_22BB72094();
            }
          }

          else if (v122)
          {
            LOBYTE(v271[0]) = 0;
            sub_22BB3CAD8();
            sub_22BCB6EB8();
            v99 = v142;
            sub_22BB72094();
            sub_22BB33094();
          }

          else
          {
            LOBYTE(v271[0]) = 0;
            sub_22BB3E368();
            v90 = v255;
            sub_22BCB743C();
            sub_22BB92264();
            sub_22BBBEE60(v165, v166, &qword_27D8E3EA8, &qword_22BDC1378);
            sub_22BB2F4B8();
            v167 = v253;
            if (v134)
            {
              sub_22BB3A944();
              sub_22BB58728(v168, v169, v170);
              v99 = 0;
            }

            else
            {
              sub_22BB32BE4();
              v98 = v243;
              sub_22BCB6584(v99, v243);
              v184 = sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
              v185 = sub_22BB3624C(v184);
              v186 = sub_22BB32760(v185);
              sub_22BCB6584(v186, v187);
              sub_22BB3A944();
              sub_22BB58728(v188, v189, v190);
            }

            sub_22BB33094();
            v0 = v242;
            v91 = v167;
          }

LABEL_50:
          sub_22BB356B0();
          sub_22BCB652C(v90, v198);
          v153 = _s27ParameterConfirmationResultVMa;
          v154 = v0;
LABEL_51:
          sub_22BCB652C(v154, v153);
LABEL_52:
          sub_22BB3AD08();
          if (v99)
          {
LABEL_53:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22BB305BC();
              sub_22BD8FD18();
              v98 = v202;
            }

            v200 = *(v98 + 16);
            v199 = *(v98 + 24);
            v201 = v265;
            if (v200 >= v199 >> 1)
            {
              sub_22BB2F158(v199);
              sub_22BD8FD18();
              v201 = v265;
              v98 = v203;
            }

            *(v98 + 16) = v200 + 1;
            *(v98 + 8 * v200 + 32) = v99;
            v88 = v262;
            v92 = v264;
          }

          else
          {
            v201 = v265;
          }

          v93 = v201 + 1;
          if (v93 == v261)
          {

            v204 = v98;
            goto LABEL_62;
          }

          break;
        case 4u:
          v100 = sub_22BBC785C();
          v101 = sub_22BCB6584(v100, v89);
          v102 = *v89;
          v103 = *(v248 + 20);
          v47 = *(*v89 + 16);
          if (v47)
          {
            v245 = *(v257 + 24);
            v246 = v103;
            v104 = sub_22BB3323C(MEMORY[0x277D84F90]);
            sub_22BD27DB8(v104, v105, v106);
            v107 = v271[0];
            v269 = sub_22BDBA594();
            sub_22BB2F330();
            v90 = *(v108 + 16);
            v109 = v102 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
            v110 = *(v108 + 72);
            v91 = v238;
            do
            {
              (v90)(v91, v109, v269);
              sub_22BB51864();
              v271[0] = v107;
              v112 = *(v107 + 16);
              v111 = *(v107 + 24);
              if (v112 >= v111 >> 1)
              {
                v115 = sub_22BB2F158(v111);
                sub_22BD27DB8(v115, v112 + 1, 1);
                v107 = v271[0];
              }

              *(v107 + 16) = v112 + 1;
              sub_22BB2F374();
              sub_22BCB6584(v91, v107 + v113 + *(v114 + 72) * v112);
              v109 += v110;
              --v47;
            }

            while (v47);
            v89 = v249;
            v0 = v242;
            sub_22BB3CAD8();
            sub_22BB72094();
            v98 = v266;
          }

          else
          {
            v98 = v266;
          }

          MEMORY[0x28223BE20](v101);
          v224[-2] = v140;
          sub_22BCB8100();
          v99 = v141;

          sub_22BCB652C(v89, _s29ParameterDisambiguationResultVMa);
          v88 = v262;
          v92 = v264;
          sub_22BB6BE68();
          goto LABEL_52;
        default:
          sub_22BCB652C(v47, _s19ParameterStepResultOMa);
          sub_22BB3AD08();
          v99 = MEMORY[0x277D84F90];
          v98 = v266;
          goto LABEL_53;
      }
    }
  }

  v204 = MEMORY[0x277D84F90];
LABEL_62:
  sub_22BDB6404();
  v205 = v229;
  v206 = v230;
  v226(v229, v231, v230);
  v207 = v234;

  v208 = sub_22BDB77C4();
  v209 = sub_22BDBB0F4();

  if (os_log_type_enabled(v208, v209))
  {
    v210 = sub_22BB314C8();
    v271[0] = swift_slowAlloc();
    *v210 = 136315650;
    sub_22BB36584();
    sub_22BCB6774(v211, v212, MEMORY[0x277D1C368]);
    v213 = sub_22BDBB684();
    v215 = v214;
    sub_22BB34EEC();
    v225(v205, v216);
    v217 = sub_22BB32EE0(v213, v215, v271);

    *(v210 + 4) = v217;
    *(v210 + 12) = 2080;
    *(v210 + 14) = sub_22BB32EE0(v232, v207, v271);
    *(v210 + 22) = 2080;
    v218 = sub_22BBE6DE0(&qword_27D8E3EB0, &qword_22BDC1380);
    v219 = MEMORY[0x2318A4D50](v204, v218);
    v221 = sub_22BB32EE0(v219, v220, v271);

    *(v210 + 24) = v221;
    _os_log_impl(&dword_22BB2C000, v208, v209, "Generated candidate results for statementId=%s and parameter=%s: %s", v210, 0x20u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB30AF0();

    v222 = v233;
    v223 = v239;
  }

  else
  {

    sub_22BB34EEC();
    v225(v205, v206);
    v222 = sub_22BB2F3F0();
  }

  v228(v222, v223);
  sub_22BCDFC54(v204);

  sub_22BB314EC();
}

uint64_t sub_22BCAFE00@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22BDB4C34();
  sub_22BB30ED8();
  (*(v10 + 16))(a5, a2);
  v11 = _s16CandidateSummaryVMa(0);
  v12 = (a5 + v11[5]);
  *v12 = a3;
  v12[1] = a4;
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  v13 = _s15CandidateResultVMa(0);
  sub_22BCB66B0(&a1[*(v13 + 20)], a5 + v11[6]);
  v14 = *(v13 + 24);
  v15 = v11[7];
  sub_22BDB7B44();
  sub_22BB30ED8();
  (*(v16 + 16))(a5 + v15, &a1[v14]);
  *(a5 + v11[8]) = *a1;
  *(a5 + v11[9]) = 1;
  sub_22BB331C8();
  sub_22BB336D0(v17, v18, v19, v11);
}

uint64_t sub_22BCAFF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s23ParameterStepEvaluationVMa(0);
  if (sub_22BDB4C04())
  {
    if (sub_22BDB8374() == a3 && v6 == a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_22BDBB6D4();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_22BCB0000()
{
  sub_22BB30F94();
  v2 = v0;
  v244 = v3;
  v5 = v4;
  v261 = sub_22BDB7B44();
  sub_22BB30444();
  v252 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  sub_22BB30B8C(v8);
  v209 = sub_22BDB9BD4();
  sub_22BB30444();
  v243 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v11);
  sub_22BB2F39C();
  sub_22BB30B8C(v12);
  v207 = sub_22BDBA994();
  sub_22BB30444();
  v242 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BB305A8();
  sub_22BB30B8C(v15);
  v206 = sub_22BDB9F84();
  sub_22BB30444();
  v239 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  sub_22BB30B8C(v18);
  v218 = sub_22BDBA014();
  sub_22BB30444();
  v232 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BB305A8();
  v22 = sub_22BB30B8C(v21);
  v250 = _s19ToolboxSearchResultVMa(v22);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v23);
  sub_22BB305A8();
  sub_22BB30B8C(v24);
  v228 = sub_22BDB77D4();
  sub_22BB30444();
  v223 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22BB305A8();
  sub_22BB2F14C(v27);
  v28 = sub_22BBE6DE0(&qword_27D8E3818, &qword_22BDBFB88);
  sub_22BB2F0C8(v28);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB3848C();
  v254 = sub_22BDB9BE4();
  sub_22BB30444();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22BB30C74();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  sub_22BB2F39C();
  sub_22BB2F14C(v37);
  v38 = sub_22BBE6DE0(&qword_27D8E3E50, &unk_22BDC1320);
  v39 = sub_22BB2F0C8(v38);
  MEMORY[0x28223BE20](v39);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v40);
  sub_22BB2F39C();
  v256 = v41;
  sub_22BB2F120();
  v42 = sub_22BDB8E14();
  sub_22BB30444();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  sub_22BB30560();
  sub_22BB30B7C();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = v199 - v48;
  MEMORY[0x28223BE20](v47);
  sub_22BB2F39C();
  v249 = v50;
  v51 = sub_22BBE6DE0(&qword_27D8E2F30, &qword_22BDC1240);
  v52 = sub_22BB2F0C8(v51);
  MEMORY[0x28223BE20](v52);
  sub_22BB30560();
  v258 = v53;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v54);
  v56 = v199 - v55;
  v57 = sub_22BBE6DE0(&qword_27D8E3E80, &qword_22BDC1350);
  v58 = sub_22BB2F0C8(v57);
  MEMORY[0x28223BE20](v58);
  sub_22BB30560();
  v253 = v59;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v60);
  sub_22BB2F384();
  v257 = v61;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v62);
  sub_22BB2F39C();
  v248 = v63;
  v259 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v64);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v65);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v66);
  sub_22BB2F384();
  v255 = v67;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v68);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v69);
  sub_22BB2F39C();
  v260 = v70;
  v71 = sub_22BB2F120();
  v72 = _s14ActionExecutedVMa(v71);
  v73 = sub_22BB2F0C8(v72);
  MEMORY[0x28223BE20](v73);
  sub_22BB30574();
  v76 = v75 - v74;
  v262 = v5;
  sub_22BCA8598();
  v78 = v77;
  sub_22BB3B37C();
  v241 = v76;
  sub_22BCB66B0(v2, v76);
  v79 = 0;
  v240 = v78;
  v251 = *(v78 + 16);
  v247 = (v44 + 16);
  v234 = v44 + 32;
  v224 = (v31 + 32);
  v233 = v44;
  v246 = (v44 + 8);
  v80 = v56;
  sub_22BB34EEC();
  v223 = v81;
  v222 = (v31 + 16);
  v221 = v31 + 88;
  v220 = *MEMORY[0x277D1E8E0];
  v213 = *MEMORY[0x277D1E8C8];
  v210 = *MEMORY[0x277D1E8D0];
  v204 = *MEMORY[0x277D1E8D8];
  v219 = v31 + 96;
  v203 = v243 + 32;
  v202 = v243 + 16;
  v201 = v243 + 88;
  v200 = *MEMORY[0x277D1E8B8];
  v199[4] = v243 + 96;
  v216 = v232 + 32;
  v215 = v232 + 8;
  v199[3] = v243 + 8;
  v199[2] = v239 + 4;
  sub_22BB34EEC();
  v199[1] = v82;
  v199[0] = v83 + 8;
  v84 = (v252 + 32);
  v243 = v252 + 8;
  *&v85 = 136315138;
  v212 = v85;
  v231 = v35;
  v242 = v42;
  v252 = v49;
  v226 = v1;
  v236 = v56;
  v239 = v84;
  while (1)
  {
    if (v79 == v251)
    {
      v86 = 1;
      v79 = v251;
      v88 = v255;
      v87 = v256;
      goto LABEL_7;
    }

    if (v79 >= v251)
    {
      break;
    }

    sub_22BB2F374();
    (*(v90 + 16))(v80, v240 + v89 + *(v90 + 72) * v79, v42);
    v91 = __OFADD__(v79++, 1);
    v88 = v255;
    v87 = v256;
    if (v91)
    {
      goto LABEL_49;
    }

    v86 = 0;
LABEL_7:
    v92 = 1;
    sub_22BB336D0(v80, v86, 1, v42);
    v93 = v258;
    sub_22BBDB5D0(v80, v258, &qword_27D8E2F30, &qword_22BDC1240);
    sub_22BB31814(v93, 1, v42);
    if (v125)
    {
      goto LABEL_30;
    }

    sub_22BB30F88();
    v80 = v249;
    v94(v249, v258, v42);
    sub_22BDB9BF4();
    sub_22BB31814(v1, 1, v254);
    if (v125)
    {
      v232 = v79;
      sub_22BB58728(v1, &qword_27D8E3818, &qword_22BDBFB88);
      v1 = v227;
      sub_22BDB6404();
      v95 = *v247;
      (*v247)(v49, v80, v42);
      v96 = sub_22BDB77C4();
      v97 = sub_22BDBB114();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v80 = sub_22BB314C8();
        v263 = v80;
        *v98 = v212;
        v95(v214, v252, v42);
        v99 = sub_22BDBAC14();
        v101 = v100;
        (*v246)(v252, v42);
        v102 = sub_22BB32EE0(v99, v101, &v263);

        *(v98 + 4) = v102;
        v88 = v255;
        v49 = v252;
        _os_log_impl(&dword_22BB2C000, v96, v97, "Cannot find a tool definition for %s", v98, 0xCu);
        sub_22BB32FA4(v80);
        sub_22BB30AF0();
        v87 = v256;
        sub_22BB30AF0();
      }

      else
      {

        (*v246)(v49, v42);
      }

      sub_22BB30F88();
      v103(v1, v228);
      sub_22BB36BE8();
      v79 = v232;
    }

    else
    {
      v104 = *v224;
      v105 = v225;
      v106 = v254;
      (*v224)(v225, v1, v254);
      (*v247)(v87, v80, v42);
      v107 = v106;
      v88 = v255;
      v104(v87 + *(v250 + 20), v105, v107);
      v108 = 0;
      v80 = v236;
    }

    v109 = v250;
    sub_22BB336D0(v87, v108, 1, v250);
    v110 = v87;
    v111 = v87;
    v112 = v237;
    sub_22BBBEE60(v110, v237, &qword_27D8E3E50, &unk_22BDC1320);
    v113 = sub_22BB2F3FC();
    sub_22BB31814(v113, v114, v109);
    if (!v125)
    {
      sub_22BB3A614();
      v119 = v238;
      sub_22BCB6584(v112, v238);
      v120 = v119 + *(v250 + 20);
      v121 = v231;
      v122 = v254;
      (*v222)(v231, v120, v254);
      sub_22BB30F88();
      v123 = sub_22BB3182C();
      v124(v123);
      sub_22BB33FE8();
      v84 = v239;
      if (v125)
      {
        sub_22BB30F88();
        v126(v121, v254);
        sub_22BB30F88();
        v127 = sub_22BB2F3F0();
        v128 = v218;
        v129(v127);
        sub_22BDBA004();
        v130 = sub_22BB38AC4();
        v131(v130, v128);
        goto LABEL_20;
      }

      sub_22BB33FE8();
      v132 = v256;
      v42 = v242;
      if (v133)
      {
        sub_22BB30F88();
        v134 = v231;
        v135(v231, v254);
        sub_22BB30F88();
        v136 = v134;
        v137 = v218;
        v138(v217, v136, v218);
        sub_22BDBA004();
        v139 = sub_22BB38AC4();
        v141 = v137;
      }

      else
      {
        sub_22BB33FE8();
        if (!v142)
        {
          sub_22BB33FE8();
          v180 = v209;
          v181 = v208;
          if (!v179)
          {
            goto LABEL_51;
          }

          v182 = v1;
          sub_22BB30F88();
          v183 = v231;
          v184(v231);
          sub_22BB30F88();
          v185 = v211;
          v186(v211, v183, v180);
          v187 = sub_22BB38AC4();
          v188(v187, v185, v180);
          v189 = sub_22BB38AC4();
          v190(v189, v180);
          sub_22BB33FE8();
          if (!v125)
          {
            goto LABEL_51;
          }

          v191 = sub_22BB38AC4();
          v192(v191, v180);
          sub_22BB30F88();
          v193 = v217;
          v194 = v218;
          v195(v217, v181, v218);
          sub_22BDBA004();
          sub_22BB30F88();
          v196(v193, v194);
          sub_22BB30F88();
          v197(v211, v180);
          v1 = v182;
LABEL_20:
          v132 = v256;
          v42 = v242;
LABEL_28:
          sub_22BB331C8();
          sub_22BB336D0(v148, v149, v150, v261);
          sub_22BBDB5D0(v88, v257, &qword_27D8E3E60, &qword_22BDC23E0);
          sub_22BB33CE8();
          sub_22BCB652C(v238, v151);
          sub_22BB58728(v132, &qword_27D8E3E50, &unk_22BDC1320);
          v118 = v249;
          goto LABEL_29;
        }

        sub_22BB30F88();
        v143(v231, v254);
        sub_22BB30F88();
        v144 = v205;
        v145 = v206;
        v146(v205, v231, v206);
        sub_22BB3E368();
        sub_22BDB9F74();
        sub_22BDBA964();
        sub_22BB30F88();
        v147(v122, v207);
        sub_22BB30F88();
        v139 = v144;
        v84 = v239;
        v42 = v242;
        v141 = v145;
        v132 = v256;
      }

      v140(v139, v141);
      goto LABEL_28;
    }

    sub_22BB58728(v111, &qword_27D8E3E50, &unk_22BDC1320);
    sub_22BB30B28();
    sub_22BB336D0(v115, v116, v117, v261);
    v42 = v242;
    v118 = v249;
    v84 = v239;
LABEL_29:
    (*v246)(v118, v42);
    v92 = 0;
LABEL_30:
    v152 = v257;
    v153 = v92;
    v154 = v259;
    sub_22BB336D0(v257, v153, 1, v259);
    sub_22BB31814(v152, 1, v154);
    if (v125)
    {
      sub_22BB58728(v152, &qword_27D8E3E80, &qword_22BDC1350);
      v155 = 1;
      goto LABEL_36;
    }

    v156 = v235;
    sub_22BBDB5D0(v152, v235, &qword_27D8E3E60, &qword_22BDC23E0);
    v157 = sub_22BB2F3FC();
    sub_22BB31814(v157, v158, v261);
    if (v159)
    {
      v160 = sub_22BB3182C();
      sub_22BB58728(v160, v161, &qword_22BDC23E0);
    }

    else
    {
      sub_22BBDB5D0(v156, v248, &qword_27D8E3E60, &qword_22BDC23E0);
      v155 = 0;
LABEL_36:
      v162 = 1;
      v163 = v248;
      v164 = v259;
      sub_22BB336D0(v248, v155, 1, v259);
      v165 = v163;
      v166 = v253;
      sub_22BBDB5D0(v165, v253, &qword_27D8E3E80, &qword_22BDC1350);
      sub_22BB31814(v166, 1, v164);
      if (!v125)
      {
        v167 = v229;
        sub_22BBDB5D0(v253, v229, &qword_27D8E3E60, &qword_22BDC23E0);
        v168 = v230;
        sub_22BBBEE60(v167, v230, &qword_27D8E3E60, &qword_22BDC23E0);
        v169 = sub_22BB2F3FC();
        sub_22BB31814(v169, v170, v261);
        if (v125)
        {
          goto LABEL_50;
        }

        (*v84)(v260, v168, v261);
        sub_22BB58728(v167, &qword_27D8E3E60, &qword_22BDC23E0);
        v162 = 0;
      }

      v171 = v261;
      sub_22BB336D0(v260, v162, 1, v261);
      v172 = sub_22BB2F3FC();
      if (sub_22BB3AA28(v172, v173, v171) == 1 || (v174 = v245, v175 = v261, (*v84)(v245, v260, v261), v176 = sub_22BDB7B04(), sub_22BB30F88(), v177 = v175, v49 = v252, v178(v174, v177), (v176 & 1) != 0))
      {

        sub_22BB39150();
        sub_22BCB652C(v241, v198);
        sub_22BB314EC();
        return;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_22BDBB6C4();
  __break(1u);
}

void sub_22BCB12E8()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v108 = sub_22BDB7B44();
  sub_22BB30444();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v107 = v9;
  sub_22BB2F120();
  v106 = sub_22BDBA994();
  sub_22BB30444();
  v90 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v12 = sub_22BB39768();
  v97 = _s19ToolboxSearchResultVMa(v12);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v13);
  sub_22BB305A8();
  sub_22BB2F14C(v14);
  v15 = sub_22BBE6DE0(&qword_27D8E3E50, &unk_22BDC1320);
  v16 = sub_22BB2F0C8(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BB30C74();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v83 - v21;
  v102 = sub_22BDB8E14();
  sub_22BB30444();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BB305A8();
  v99 = v26;
  v27 = sub_22BBE6DE0(&qword_27D8E2F30, &qword_22BDC1240);
  v28 = sub_22BB2F0C8(v27);
  MEMORY[0x28223BE20](v28);
  sub_22BB30C74();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  sub_22BB2F39C();
  v101 = v33;
  v34 = sub_22BB2F120();
  v35 = _s14ActionExecutedVMa(v34);
  v36 = sub_22BB2F0C8(v35);
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  v39 = v38 - v37;
  v109 = v5;
  sub_22BCA8598();
  v40 = v22;
  v42 = v41;
  sub_22BB3B37C();
  v43 = v0;
  v44 = v19;
  v98 = v39;
  sub_22BCB66B0(v43, v39);
  v88 = v24 + 16;
  v95 = (v24 + 32);
  v45 = *(v42 + 16);
  v46 = (v90 + 8);
  v104 = v7 + 32;
  v105 = v90 + 16;
  v89 = v24;
  v94 = (v24 + 8);
  v92 = v42;
  v47 = v45;

  v48 = 0;
  v103 = v44;
  v91 = v47;
  v85 = v3;
  v84 = v40;
  v96 = v31;
  while (1)
  {
    if (v48 == v47)
    {
      v49 = 1;
      v100 = v47;
      goto LABEL_7;
    }

    if (v48 >= v47)
    {
      break;
    }

    sub_22BB2F374();
    (*(v51 + 16))(v101, v92 + v50 + *(v51 + 72) * v48);
    v52 = __OFADD__(v48, 1);
    v53 = v48 + 1;
    if (v52)
    {
      goto LABEL_29;
    }

    v100 = v53;
    v49 = 0;
LABEL_7:
    v55 = v101;
    v54 = v102;
    sub_22BB336D0(v101, v49, 1, v102);
    sub_22BBDB5D0(v55, v31, &qword_27D8E2F30, &qword_22BDC1240);
    v56 = sub_22BB31814(v31, 1, v54);
    if (v57)
    {
LABEL_26:

      sub_22BB39150();
      sub_22BCB652C(v98, v82);
      sub_22BB314EC();
      return;
    }

    v93 = v56;
    v58 = v31;
    v59 = v99;
    (*v95)(v99, v58, v54);
    sub_22BCB1E94();
    sub_22BBBEE60(v40, v44, &qword_27D8E3E50, &unk_22BDC1320);
    sub_22BB31814(v44, 1, v97);
    if (v57)
    {
      sub_22BB58728(v40, &qword_27D8E3E50, &unk_22BDC1320);
      (*v94)(v59, v54);
      v31 = v96;
    }

    else
    {
      sub_22BB3A614();
      v60 = v87;
      sub_22BCB6584(v44, v87);
      sub_22BCB2250();
      v62 = v61;
      sub_22BB33CE8();
      sub_22BCB652C(v60, v63);
      sub_22BB58728(v40, &qword_27D8E3E50, &unk_22BDC1320);
      v64 = *(v62 + 16);
      if (v64)
      {
        sub_22BB2F374();
        v86 = v62;
        v66 = v62 + v65;
        v68 = *(v67 + 72);
        v69 = *(v67 + 16);
        v70 = MEMORY[0x277D84F90];
        do
        {
          v71 = v106;
          v69(v1, v66, v106);
          sub_22BDBA964();
          (*v46)(v1, v71);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BB305BC();
            sub_22BD8FAC4();
            v70 = v75;
          }

          v73 = *(v70 + 16);
          v72 = *(v70 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_22BB2F138(v72);
            sub_22BD8FAC4();
            v70 = v76;
          }

          *(v70 + 16) = v73 + 1;
          sub_22BB2F390();
          (*(v7 + 32))(v70 + v74 + *(v7 + 72) * v73, v107, v108);
          v66 += v68;
          --v64;
        }

        while (v64);

        v44 = v103;
      }

      else
      {

        v70 = MEMORY[0x277D84F90];
      }

      (*v94)(v99, v102);
      v77 = 0;
      v78 = *(v70 + 16);
      v31 = v96;
      while (v78 != v77)
      {
        v79 = v77 + 1;
        sub_22BB52E60();
        sub_22BCB6774(&qword_27D8E3078, v80, MEMORY[0x277D1D620]);
        v81 = sub_22BDBABD4();
        v44 = v103;
        v77 = v79;
        if (v81)
        {

          goto LABEL_26;
        }
      }

      v40 = v84;
    }

    v47 = v91;
    v48 = v100;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

BOOL sub_22BCB1A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_22BDB4C04() & 1) != 0 && (_s13ValueExecutedVMa(0), v5 = sub_22BDB4C04(), (v5))
  {
    MEMORY[0x28223BE20](v5);
    v9[2] = a4;
    return sub_22BD726B8(sub_22BCB6C74, v9, v6);
  }

  else
  {
    return 0;
  }
}

BOOL sub_22BCB1AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v7 = sub_22BDB4C34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BD1D6A4();
  v11 = sub_22BDB4C04();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) != 0 && (v12 = sub_22BCB1C94(), v13 = sub_22BD81074(a3, a4, v12), v14 = , v13 >= 2))
  {
    MEMORY[0x28223BE20](v14);
    *(&v17 - 2) = v18;
    v15 = sub_22BD726B8(sub_22BCB6704, (&v17 - 4), v13);
    sub_22BCB6738(v13);
  }

  else
  {
    return 0;
  }

  return v15;
}

uint64_t sub_22BCB1C94()
{
  v1 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters;
  if (*(v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters))
  {
    v2 = *(v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters);
  }

  else
  {
    v2 = sub_22BCB300C(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22BCB1D50@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22BDB4C34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BD1D6A4();
  v7 = sub_22BDB4C04();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    sub_22BD1D4C0();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_22BDB8E14();
  return sub_22BB336D0(a2, v8, 1, v9);
}

void sub_22BCB1E94()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BDB8E14();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30560();
  v44 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  sub_22BB3B5C4();
  sub_22BDB77D4();
  sub_22BB30444();
  v45 = v13;
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  v47 = v14;
  v15 = sub_22BBE6DE0(&qword_27D8E3818, &qword_22BDBFB88);
  sub_22BB2F0C8(v15);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB3848C();
  v17 = sub_22BDB9BE4();
  sub_22BB30444();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v23 = v22 - v21;
  sub_22BDB9BF4();
  sub_22BB31814(v1, 1, v17);
  if (v24)
  {
    sub_22BB58728(v1, &qword_27D8E3818, &qword_22BDBFB88);
    sub_22BDB6404();
    v25 = *(v8 + 16);
    v25(v0, v3, v6);
    v26 = sub_22BDB77C4();
    v27 = sub_22BDBB114();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = sub_22BB314C8();
      v48 = v29;
      *v28 = 136315138;
      v25(v44, v0, v6);
      v30 = sub_22BDBAC14();
      v32 = v31;
      v33 = sub_22BB3AAD8();
      v34(v33);
      v35 = sub_22BB32EE0(v30, v32, &v48);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_22BB2C000, v26, v27, "Cannot find a tool definition for %s", v28, 0xCu);
      sub_22BB32FA4(v29);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      v42 = sub_22BB3AAD8();
      v43(v42);
    }

    (*(v45 + 8))(v47, v46);
    _s19ToolboxSearchResultVMa(0);
    v38 = sub_22BB31CB0();
  }

  else
  {
    v36 = *(v19 + 32);
    sub_22BB3A944();
    v36();
    (*(v8 + 16))(v5, v3, v6);
    v37 = _s19ToolboxSearchResultVMa(0);
    (v36)(v5 + *(v37 + 20), v23, v17);
    sub_22BB331C8();
    v41 = v37;
  }

  sub_22BB336D0(v38, v39, v40, v41);
  sub_22BB314EC();
}

void sub_22BCB2250()
{
  sub_22BB30F94();
  v3 = v2;
  sub_22BDB9BD4();
  sub_22BB30444();
  v46 = v5;
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BB30C74();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB2F39C();
  v45 = v10;
  sub_22BB2F120();
  v11 = sub_22BDB9F84();
  sub_22BB30444();
  v44 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDBA014();
  sub_22BB30444();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  sub_22BB319F8();
  v21 = sub_22BDB9BE4();
  sub_22BB30444();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22BB30574();
  v25 = sub_22BB39768();
  v26 = _s19ToolboxSearchResultVMa(v25);
  (*(v23 + 16))(v1, v3 + *(v26 + 20), v21);
  v27 = (*(v23 + 88))(v1, v21);
  if (v27 == *MEMORY[0x277D1E8E0] || v27 == *MEMORY[0x277D1E8C8])
  {
    v28 = sub_22BB3B6A8();
    v29(v28);
    (*(v19 + 32))(v0, v1, v17);
    sub_22BCB56AC();
    v30 = sub_22BB3627C();
    v31(v30);
LABEL_4:
    sub_22BB314EC();
    return;
  }

  if (v27 == *MEMORY[0x277D1E8D0])
  {
    v32 = sub_22BB3B6A8();
    v33(v32);
    (*(v44 + 32))(v16, v1, v11);
    sub_22BBE6DE0(&qword_27D8E3E88, &qword_22BDC1358);
    sub_22BDBA994();
    *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
    sub_22BDB9F74();
    (*(v44 + 8))(v16, v11);
    goto LABEL_4;
  }

  if (v27 == *MEMORY[0x277D1E8D8])
  {
    v34 = sub_22BB3B6A8();
    v35(v34);
    (*(v46 + 32))(v45, v1, v47);
    (*(v46 + 16))(v8, v45, v47);
    v36 = sub_22BB39478();
    if (v37(v36) == *MEMORY[0x277D1E8B8])
    {
      v38 = sub_22BB39478();
      v39(v38);
      v40 = sub_22BB347D8();
      v41(v40);
      sub_22BCB56AC();
      v42 = sub_22BB3627C();
      v43(v42);
      (*(v46 + 8))(v45, v47);
      goto LABEL_4;
    }
  }

  sub_22BDBB6C4();
  __break(1u);
}

void sub_22BCB26FC()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v58 = v5;
  v6 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v7 = sub_22BB2F0C8(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v57 = v8;
  sub_22BB2F120();
  v56 = sub_22BDB7B44();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = v13 - v12;
  sub_22BDB77D4();
  sub_22BB30444();
  v54 = v15;
  v55 = v16;
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v19 = v18 - v17;
  v20 = sub_22BCB2B94(v4, v2);
  v21 = _s33CandidateParameterResolutionStateVMa(0);
  v22 = sub_22BB69FEC((v0 + *(v21 + 24)), *(v0 + *(v21 + 24) + 24));
  v23 = sub_22BCB2E94(v0, v2, *v22);
  v24 = v23;
  if (v23)
  {
    v25 = v10;
    v53 = v19;
    MEMORY[0x28223BE20](v23);
    *(&v52 - 2) = v4;

    v26 = sub_22BD727DC(sub_22BCB65F8, (&v52 - 4), v24);

    if ((v20 & 1) == 0)
    {

      if (v26)
      {
        v48 = 2;
      }

      else
      {
        v48 = 1;
      }

      goto LABEL_15;
    }

    v19 = v53;
    if (v26)
    {

LABEL_14:
      v48 = 3;
      goto LABEL_15;
    }
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      v48 = 0;
      goto LABEL_15;
    }

    v25 = v10;
  }

  sub_22BDB6404();
  (*(v25 + 16))(v14, v4, v56);
  v27 = v57;
  sub_22BCB66B0(v2, v57);

  v28 = sub_22BDB77C4();
  v29 = sub_22BDBB114();

  if (!os_log_type_enabled(v28, v29))
  {

    sub_22BB36FF0();
    sub_22BCB652C(v27, v49);
    v50 = sub_22BB3AAD8();
    v51(v50);
    (*(v55 + 8))(v19, v54);
    goto LABEL_14;
  }

  v30 = sub_22BB314C8();
  v53 = swift_slowAlloc();
  v60 = v53;
  *v30 = 136315650;
  sub_22BB52E60();
  sub_22BCB6774(v31, v32, MEMORY[0x277D1D630]);
  sub_22BDBB684();
  v33 = sub_22BB3AAD8();
  v34(v33);
  v35 = sub_22BB2F3F0();
  v38 = sub_22BB32EE0(v35, v36, v37);

  *(v30 + 4) = v38;
  *(v30 + 12) = 2080;
  v59 = v24;
  sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
  v39 = sub_22BDBAC14();
  v41 = sub_22BB32EE0(v39, v40, &v60);

  *(v30 + 14) = v41;
  *(v30 + 22) = 2080;
  v42 = v57;
  FeedbackLearning.CandidateParameter.description.getter();
  sub_22BB36FF0();
  sub_22BCB652C(v42, v43);
  v44 = sub_22BB2F3F0();
  v47 = sub_22BB32EE0(v44, v45, v46);

  *(v30 + 24) = v47;
  _os_log_impl(&dword_22BB2C000, v28, v29, "Marking candidate %s as executed but the candidate does not match resolved candidates %s for parameter %s", v30, 0x20u);
  v48 = 3;
  swift_arrayDestroy();
  sub_22BB30AF0();
  sub_22BB30AF0();

  (*(v55 + 8))(v19, v54);
LABEL_15:
  *v58 = v48;
  sub_22BB314EC();
}

uint64_t sub_22BCB2B94(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BDB4C34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22BCB66B0(a2, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = *v11;
      v19 = v11[1];
      v21 = _s33CandidateParameterResolutionStateVMa(0);
      sub_22BB69FEC((v2 + *(v21 + 20)), *(v2 + *(v21 + 20) + 24));
      v22 = _s14ActionExecutedVMa(0);
      MEMORY[0x28223BE20](v22);
      *&v24[-32] = v2;
      *&v24[-24] = v20;
      *&v24[-16] = v19;
      *&v24[-8] = a1;
      v15 = sub_22BD726E8(sub_22BCB664C);

      break;
    case 2u:
      v16 = _s33CandidateParameterResolutionStateVMa(0);
      sub_22BB69FEC((v2 + *(v16 + 20)), *(v2 + *(v16 + 20) + 24));
      sub_22BCB0000();
      goto LABEL_5;
    case 3u:
      v18 = _s33CandidateParameterResolutionStateVMa(0);
      sub_22BB69FEC((v2 + *(v18 + 20)), *(v2 + *(v18 + 20) + 24));
      sub_22BCB12E8();
LABEL_5:
      v15 = v17;
      break;
    default:
      (*(v6 + 32))(v8, v11, v5);
      v12 = _s33CandidateParameterResolutionStateVMa(0);
      sub_22BB69FEC((v2 + *(v12 + 20)), *(v2 + *(v12 + 20) + 24));
      v13 = _s14ActionExecutedVMa(0);
      MEMORY[0x28223BE20](v13);
      *&v24[-32] = v2;
      *&v24[-24] = v8;
      *&v24[-16] = a1;
      v15 = sub_22BD72688(sub_22BCB6670, &v24[-48], v14);
      (*(v6 + 8))(v8, v5);
      break;
  }

  return v15 & 1;
}

uint64_t sub_22BCB2E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22BBDAE68();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a3 + 56) + 8 * v5);

  v8 = sub_22BD810C0(a2, v7);

  if (v8 == 1)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_22BCB2F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((a3() & 1) == 0)
  {
    return 0;
  }

  a4(0);

  return sub_22BDB7B04();
}

uint64_t sub_22BCB300C(uint64_t a1)
{
  v121 = a1;
  v1 = sub_22BDB81A4();
  v112 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22BDB77D4();
  v117 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_22BDBA594();
  v111 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22BDB8CB4();
  v6 = *(v110 - 8);
  v7 = MEMORY[0x28223BE20](v110);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v120 = &v90 - v10;
  v119 = sub_22BDB9504();
  v11 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB9564();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeedbackLearning.ActionValue(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BCB66B0(v121 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(v112 + 32);
    v110 = v1;
    v20(v3, v19, v1);
    v109 = v3;
    v21 = sub_22BDB8164();
    sub_22BBE6DE0(&qword_27D8E3E90, &qword_22BDC1360);
    result = sub_22BDBB504();
    v23 = result;
    v24 = 0;
    v25 = v21 + 64;
    v26 = 1 << *(v21 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v21 + 64);
    v29 = (v26 + 63) >> 6;
    v30 = v111;
    v117 = v111 + 16;
    v118 = v21;
    v115 = result + 64;
    v116 = v111 + 8;
    v121 = result;
    if (v28)
    {
      do
      {
        v31 = __clz(__rbit64(v28));
        v119 = (v28 - 1) & v28;
LABEL_11:
        v37 = v31 | (v24 << 6);
        v38 = *(v118 + 7);
        v39 = (*(v118 + 6) + 16 * v37);
        v40 = v39[1];
        v120 = *v39;
        v41 = v113;
        v42 = v114;
        (*(v30 + 2))(v113, v38 + *(v30 + 9) * v37, v114);

        sub_22BCB3AC0();
        v44 = v43;
        result = (*(v30 + 1))(v41, v42);
        *(v115 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        v23 = v121;
        v45 = (*(v121 + 48) + 16 * v37);
        *v45 = v120;
        v45[1] = v40;
        *(*(v23 + 56) + 8 * v37) = v44;
        v46 = *(v23 + 16);
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_37;
        }

        *(v23 + 16) = v48;
        v28 = v119;
      }

      while (v119);
    }

    v32 = v24;
    v34 = v109;
    v33 = v110;
    v35 = v112;
    while (1)
    {
      v24 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v24 >= v29)
      {

        (*(v35 + 8))(v34, v33);
        return v23;
      }

      v36 = *(v25 + 8 * v24);
      ++v32;
      if (v36)
      {
        v31 = __clz(__rbit64(v36));
        v119 = (v36 - 1) & v36;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v92 = v14;
  v49 = *(v14 + 32);
  v93 = v13;
  v49(v16, v19, v13);
  v91 = v16;
  v50 = sub_22BDB9524();
  sub_22BBE6DE0(&qword_27D8E3E90, &qword_22BDC1360);
  result = sub_22BDBB504();
  v52 = 0;
  v53 = v50 + 64;
  v54 = 1 << *(v50 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v50 + 64);
  v57 = (v54 + 63) >> 6;
  v108 = v11 + 16;
  v109 = v50;
  v106 = (v6 + 88);
  v107 = (v6 + 16);
  v105 = *MEMORY[0x277D1E040];
  v99 = (v117 + 8);
  v112 = v6 + 8;
  v98 = (v6 + 96);
  v23 = result;
  v97 = (v111 + 32);
  v96 = (v111 + 8);
  v103 = result + 64;
  v104 = (v11 + 8);
  *&v51 = 136315138;
  v94 = v51;
  v58 = v100;
  v59 = v110;
  v111 = v9;
  v60 = v11;
  v121 = result;
  v102 = v11;
  if (!v56)
  {
LABEL_18:
    v62 = v52;
    while (1)
    {
      v52 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_36;
      }

      if (v52 >= v57)
      {

        (*(v92 + 8))(v91, v93);
        return v23;
      }

      v63 = *(v53 + 8 * v52);
      ++v62;
      if (v63)
      {
        v61 = __clz(__rbit64(v63));
        v115 = (v63 - 1) & v63;
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v61 = __clz(__rbit64(v56));
    v115 = (v56 - 1) & v56;
LABEL_23:
    v64 = v61 | (v52 << 6);
    v65 = *(v109 + 7);
    v66 = (*(v109 + 6) + 16 * v64);
    v67 = v66[1];
    v117 = *v66;
    (*(v60 + 16))(v118, v65 + *(v60 + 72) * v64, v119);
    v116 = v67;

    v68 = v120;
    sub_22BDB94F4();
    (*v107)(v9, v68, v59);
    v69 = (*v106)(v9, v59);
    v70 = v112;
    if (v69 == v105)
    {
      (*v98)(v9, v59);
      v71 = v113;
      v72 = v9;
      v73 = v114;
      (*v97)(v113, v72, v114);
      sub_22BCB3AC0();
      v75 = v74;
      v76 = v71;
      v59 = v110;
      (*v96)(v76, v73);
      (*v70)(v120, v59);
    }

    else
    {
      sub_22BDB6404();
      v77 = sub_22BDB77C4();
      v78 = sub_22BDBB114();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v123 = v95;
        *v79 = v94;
        v122 = &type metadata for FeedbackLearning;
        sub_22BBE6DE0(&qword_27D8E3E98, &qword_22BDC1368);
        v80 = sub_22BDBAC14();
        v82 = sub_22BB32EE0(v80, v81, &v123);

        *(v79 + 4) = v82;
        v83 = v101;
        v58 = v100;
        _os_log_impl(&dword_22BB2C000, v77, v78, "Cannot generate candidate identifier for a tool parameter, value=%s", v79, 0xCu);
        v84 = v95;
        sub_22BB32FA4(v95);
        MEMORY[0x2318A6080](v84, -1, -1);
        MEMORY[0x2318A6080](v79, -1, -1);

        (*v99)(v58, v83);
      }

      else
      {

        (*v99)(v58, v101);
      }

      v85 = *v112;
      v59 = v110;
      (*v112)(v111, v110);
      v75 = 0;
      v85(v120, v59);
    }

    result = (*v104)(v118, v119);
    *(v103 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
    v23 = v121;
    v86 = (*(v121 + 48) + 16 * v64);
    v87 = v116;
    *v86 = v117;
    v86[1] = v87;
    *(*(v23 + 56) + 8 * v64) = v75;
    v88 = *(v23 + 16);
    v47 = __OFADD__(v88, 1);
    v89 = v88 + 1;
    if (v47)
    {
      break;
    }

    *(v23 + 16) = v89;
    v9 = v111;
    v60 = v102;
    v56 = v115;
    if (!v115)
    {
      goto LABEL_18;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

void sub_22BCB3AC0()
{
  sub_22BB30F94();
  sub_22BB30F68();
  v1 = sub_22BDBA634();
  sub_22BB2F330();
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB31580();
  v3 = sub_22BDBA594();
  sub_22BB30444();
  v49 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BB30C74();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  sub_22BB2F384();
  v50 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = sub_22BDB77D4();
  sub_22BB30444();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  v51 = v18;
  sub_22BCB489C();
  v20 = v19;
  sub_22BCB4498();
  if (v21)
  {
    sub_22BCB4AB8(v20, v21);
  }

  else
  {
    v45 = v1;
    v46 = v8;
    v47 = v16;
    v48 = v14;

    v22 = v51;
    sub_22BDB6404();
    v23 = v49;
    v24 = *(v49 + 16);
    v24(v13, v0, v3);
    v24(v50, v0, v3);
    v25 = v22;
    v26 = sub_22BDB77C4();
    v27 = sub_22BDBB114();
    if (sub_22BB374D8(v27))
    {
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v28 = 136315395;
      v43 = v26;
      HIDWORD(v42) = v25;
      sub_22BDBA524();
      sub_22BDBAC14();
      v29 = *(v23 + 8);
      v29(v13, v3);
      v30 = sub_22BB31F54();
      v33 = sub_22BB32EE0(v30, v31, v32);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2085;
      v34 = v28;
      v35 = v50;
      v24(v46, v50, v3);
      sub_22BDBAC14();
      v29(v35, v3);
      v36 = sub_22BB31F54();
      v39 = sub_22BB32EE0(v36, v37, v38);

      *(v34 + 14) = v39;
      v40 = v43;
      _os_log_impl(&dword_22BB2C000, v43, BYTE4(v42), "Cannot generate a candidate identifier for a parameter value of type=%s and value=%{sensitive}s", v34, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      v41 = *(v23 + 8);
      v41(v50, v3);
      v41(v13, v3);
    }

    (*(v47 + 8))(v51, v48);
  }

  sub_22BB314EC();
}

uint64_t sub_22BCB3E8C()
{
  sub_22BCB652C(v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action, type metadata accessor for FeedbackLearning.ActionValue);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BCB3F3C(uint64_t a1)
{
  result = type metadata accessor for FeedbackLearning.ActionValue(319);
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

void sub_22BCB4048()
{
  sub_22BB30F94();
  v1 = v0;
  v31 = v2;
  sub_22BDB77D4();
  sub_22BB30444();
  v29 = v4;
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22BB30560();
  v28[4] = v5;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  v9 = sub_22BDBA594();
  sub_22BB30444();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB30560();
  v28[3] = v13;
  sub_22BB30B70();
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = v28 - v16;
  v18 = *(v11 + 16);
  v18(v28 - v16, v1, v9);
  v19 = (*(v11 + 88))(v17, v9);
  v20 = *MEMORY[0x277D729E0];
  (*(v11 + 8))(v17, v9);
  if (v19 == v20)
  {
    v21 = v31;
    sub_22BDB6404();
    v22 = sub_22BDB77C4();
    v23 = sub_22BDBB114();
    if (sub_22BB374D8(v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22BB2C000, v22, v8, "Attempting to extract a candidate identifier for a collection, candidate identifiers should instead be extracted from individual items", v24, 2u);
      sub_22BB30AF0();
    }

    (*(v29 + 8))(v8, v30);
    v26 = 1;
  }

  else
  {
    v25 = sub_22BB31F54();
    (v18)(v25);
    v21 = v31;
    sub_22BDB7AE4();
    v26 = 0;
  }

  v27 = sub_22BDB7B44();
  sub_22BB336D0(v21, v26, 1, v27);
  sub_22BB314EC();
}

void sub_22BCB4498()
{
  sub_22BB30F94();
  sub_22BB30F68();
  sub_22BDB77D4();
  sub_22BB30444();
  v46 = v2;
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  sub_22BB305A8();
  v45 = v3;
  v4 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v8 = sub_22BDB7B44();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30C74();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  sub_22BB2F39C();
  v58 = v16;
  sub_22BB2F120();
  v55 = sub_22BDBA594();
  sub_22BB30444();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v22 = v21 - v20;
  v23 = 0;
  v24 = *(v0 + 16);
  v56 = v0;
  v57 = v24;
  v53 = v18 + 8;
  v54 = v18 + 16;
  v25 = (v10 + 32);
  v51 = v10;
  v48 = v10 + 8;
  v49 = (v10 + 16);
  v26 = MEMORY[0x277D84F90];
  v52 = v7;
  v50 = v14;
  while (v57 != v23)
  {
    sub_22BB2F390();
    v27 = v55;
    (*(v18 + 16))(v22, v56 + v28 + *(v18 + 72) * v23, v55);
    sub_22BCB4048();
    (*(v18 + 8))(v22, v27);
    v29 = sub_22BB2F3FC();
    sub_22BB31814(v29, v30, v8);
    if (v31)
    {

      sub_22BB58728(v7, &qword_27D8E3E60, &qword_22BDC23E0);
      v41 = v45;
      sub_22BDB6404();
      v42 = sub_22BDB77C4();
      v43 = sub_22BDBB114();
      if (sub_22BB374D8(v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_22BB2C000, v42, v41, "Cannot generate candidate identifiers for a list of values, not all values are candidate id extractable", v44, 2u);
        sub_22BB30AF0();
      }

      (*(v46 + 8))(v41, v47);
      break;
    }

    v32 = *v25;
    v33 = v58;
    (*v25)(v58, v7, v8);
    (*v49)(v14, v33, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BB305BC();
      sub_22BD8FAC4();
      v26 = v39;
    }

    v35 = *(v26 + 16);
    v34 = *(v26 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_22BB2F158(v34);
      sub_22BD8FAC4();
      v26 = v40;
    }

    v36 = v51;
    (*(v51 + 8))(v58, v8);
    *(v26 + 16) = v35 + 1;
    sub_22BB2F390();
    v38 = v26 + v37 + *(v36 + 72) * v35;
    v14 = v50;
    v32(v38, v50, v8);
    ++v23;
    v7 = v52;
  }

  sub_22BB314EC();
}

void sub_22BCB489C()
{
  sub_22BB30F94();
  sub_22BB30F68();
  v3 = sub_22BDBA594();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB319F8();
  v7 = sub_22BDBA3A4();
  sub_22BB30444();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  sub_22BB31580();
  v11 = *(v5 + 16);
  v12 = sub_22BB3627C();
  v11(v12);
  if ((*(v5 + 88))(v1, v3) == *MEMORY[0x277D729E0])
  {
    (*(v5 + 96))(v1, v3);
    v13 = swift_projectBox();
    (*(v9 + 16))(v2, v13, v7);

    sub_22BDBA394();
    v14 = sub_22BB39478();
    v15(v14);
  }

  else
  {
    (*(v5 + 8))(v1, v3);
    sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22BDBCBD0;
    (v11)(v17 + v16, v0, v3);
  }

  sub_22BB314EC();
}

void sub_22BCB4AB8(uint64_t a1, uint64_t a2)
{
  v4 = _s23ParameterCandidateValueVMa(0);
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = sub_22BDBA594();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v54 - v14;
  v66 = sub_22BBE6DE0(&qword_27D8E3E58, &qword_22BDC1330);
  v15 = MEMORY[0x28223BE20](v66);
  v61 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v56 = &v54 - v18;
  MEMORY[0x28223BE20](v17);
  v55 = &v54 - v19;
  v71 = a2;
  v72 = a1;
  v20 = *(a1 + 16);
  v21 = *(a2 + 16);
  if (v21 >= v20)
  {
    v22 = *(a1 + 16);
  }

  else
  {
    v22 = v21;
  }

  v77 = MEMORY[0x277D84F90];
  sub_22BD27ED0(0, v22, 0);
  v76 = v77;
  v67 = v11;
  v68 = v10;
  v64 = v21;
  v65 = v20;
  v57 = v9;
  if (v22)
  {
    v23 = 0;
    v58 = (v11 + 32);
    v59 = v11 + 16;
    v75 = v22;
    v60 = v7;
    while (v20 != v23)
    {
      v24 = *(v11 + 16);
      v25 = v62;
      v24(v62, v72 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v10);
      if (v21 == v23)
      {
        goto LABEL_23;
      }

      v26 = sub_22BDB7B44();
      v27 = v10;
      v28 = *(v26 - 8);
      v29 = *(v66 + 48);
      v73 = (v71 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23);
      v74 = v29;
      v30 = v61;
      (*v58)(v61, v25, v27);
      v31 = *(v28 + 16);
      v31(v30 + v29, v73, v26);
      v32 = v60;
      v24(v60, v30, v27);
      v33 = v32;
      v31(v32 + *(v70 + 20), v30 + v74, v26);
      sub_22BB58728(v30, &qword_27D8E3E58, &qword_22BDC1330);
      v77 = v76;
      v35 = *(v76 + 16);
      v34 = *(v76 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22BD27ED0(v34 > 1, v35 + 1, 1);
        v76 = v77;
      }

      ++v23;
      v36 = v76;
      *(v76 + 16) = v35 + 1;
      sub_22BCB6584(v33, v36 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v35);
      v22 = v75;
      v11 = v67;
      v10 = v68;
      v21 = v64;
      v20 = v65;
      if (v75 == v23)
      {
        goto LABEL_11;
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
  }

  else
  {
LABEL_11:
    v73 = (v11 + 32);
    v74 = v11 + 16;
    while (v20 != v22)
    {
      if (v22 >= v20)
      {
        goto LABEL_24;
      }

      v37 = *(v11 + 16);
      v37(v63, v72 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v10);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_25;
      }

      if (v21 == v22)
      {
        (*(v11 + 8))(v63, v10);
        return;
      }

      if (v22 >= v21)
      {
        goto LABEL_26;
      }

      v38 = sub_22BDB7B44();
      v39 = *(v38 - 8);
      v40 = v71 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v22;
      v41 = v66;
      v42 = *(v66 + 48);
      v43 = *v73;
      v75 = v22;
      v44 = v56;
      v43(v56, v63, v10);
      v45 = *(v39 + 16);
      v45(&v44[v42], v40, v38);
      v46 = v44;
      v47 = v55;
      sub_22BBDB5D0(v46, v55, &qword_27D8E3E58, &qword_22BDC1330);
      v48 = *(v41 + 48);
      v49 = v57;
      v37(v57, v47, v10);
      v45((v49 + *(v70 + 20)), v47 + v48, v38);
      v50 = v76;
      sub_22BB58728(v47, &qword_27D8E3E58, &qword_22BDC1330);
      v77 = v50;
      v52 = *(v50 + 16);
      v51 = *(v50 + 24);
      v76 = v50;
      if (v52 >= v51 >> 1)
      {
        sub_22BD27ED0(v51 > 1, v52 + 1, 1);
        v76 = v77;
      }

      v53 = v76;
      *(v76 + 16) = v52 + 1;
      sub_22BCB6584(v49, v53 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v52);
      v22 = v75 + 1;
      v11 = v67;
      v10 = v68;
      v21 = v64;
      v20 = v65;
    }
  }
}

void sub_22BCB51B4()
{
  sub_22BB30F94();
  v3 = v2;
  v75 = sub_22BDB9BD4();
  sub_22BB30444();
  v73 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BB30560();
  v74 = v6;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v7);
  sub_22BB2F39C();
  v71 = v8;
  sub_22BB2F120();
  v9 = sub_22BDB9BE4();
  sub_22BB30444();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  sub_22BB31580();
  v13 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  v14 = sub_22BB2F0C8(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BB30560();
  v72 = v15;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  v19 = sub_22BBE6DE0(&qword_27D8E3E50, &unk_22BDC1320);
  sub_22BB2F0C8(v19);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BB319F8();
  v22 = _s19ToolboxSearchResultVMa(v21);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  v26 = v25 - v24;
  sub_22BCB1E94();
  sub_22BB31814(v0, 1, v22);
  if (v27)
  {
    sub_22BB58728(v0, &qword_27D8E3E50, &unk_22BDC1320);
    sub_22BDBA014();
    sub_22BB30B28();
    sub_22BB336D0(v28, v29, v30, v31);
LABEL_8:
    sub_22BB314EC();
    return;
  }

  sub_22BB3A614();
  sub_22BCB6584(v0, v26);
  (*(v11 + 16))(v1, v26 + *(v22 + 20), v9);
  v32 = sub_22BB331D4();
  v34 = v33(v32);
  if (v34 == *MEMORY[0x277D1E8E0] || v34 == *MEMORY[0x277D1E8C8])
  {
    sub_22BB33CE8();
    sub_22BCB652C(v26, v35);
    v36 = sub_22BB331D4();
    v37(v36);
    v38 = sub_22BDBA014();
    sub_22BB2F330();
    (*(v39 + 32))(v18, v1, v38);
    sub_22BB331C8();
    sub_22BB336D0(v40, v41, v42, v38);
LABEL_7:
    sub_22BBDB5D0(v18, v3, &qword_27D8E2FC0, &qword_22BDBFB90);
    goto LABEL_8;
  }

  if (v34 == *MEMORY[0x277D1E8D0])
  {
    sub_22BB33CE8();
    sub_22BCB652C(v26, v43);
    sub_22BDBA014();
    sub_22BB30B28();
    sub_22BB336D0(v44, v45, v46, v47);
    v48 = sub_22BB331D4();
    v49(v48);
    goto LABEL_7;
  }

  if (v34 == *MEMORY[0x277D1E8D8])
  {
    v50 = sub_22BB331D4();
    v51(v50);
    v52 = v73;
    v53 = v71;
    v54 = v75;
    (*(v73 + 32))(v71, v1, v75);
    v55 = v74;
    (*(v52 + 16))(v74, v53, v54);
    v56 = sub_22BB3182C();
    if (v57(v56) == *MEMORY[0x277D1E8B8])
    {
      (*(v52 + 8))(v53, v54);
      sub_22BB33CE8();
      sub_22BCB652C(v26, v58);
      v59 = sub_22BB3182C();
      v60(v59);
      v61 = sub_22BDBA014();
      sub_22BB2F330();
      (*(v62 + 32))(v72, v55, v61);
      sub_22BB331C8();
      sub_22BB336D0(v63, v64, v65, v61);
      v66 = sub_22BB3627C();
      sub_22BBDB5D0(v66, v67, v68, v69);
      goto LABEL_7;
    }
  }

  sub_22BDBB6C4();
  __break(1u);
}

void sub_22BCB56AC()
{
  sub_22BB30F94();
  v1 = sub_22BBE6DE0(&qword_27D8E3E68, &qword_22BDC1338);
  v2 = sub_22BB2F0C8(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BB30C74();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB3B5C4();
  v7 = sub_22BDBA994();
  sub_22BB30444();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v63 = v11;
  sub_22BB2F120();
  v12 = sub_22BDB9F64();
  sub_22BB30444();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BB30C74();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB2F39C();
  v62 = v20;
  v21 = *(sub_22BDB9FB4() + 16);
  if (v21)
  {
    v22 = v14 + 16;
    sub_22BB2F390();
    v25 = v23 + v24;
    v60 = *(v22 + 56);
    v61 = v26;
    v59 = (v22 + 16);
    v58 = *MEMORY[0x277D72148];
    v64 = (v9 + 32);
    v65 = MEMORY[0x277D84F90];
    v27 = v22;
    v28 = &qword_27D8E3E68;
    v55 = v0;
    v56 = v5;
    v57 = v18;
    v54 = v27;
    do
    {
      v29 = v28;
      v30 = v27;
      v61(v62, v25, v12);
      (*v59)(v18, v62, v12);
      v31 = sub_22BB348C0();
      if (v32(v31) == v58)
      {
        v33 = sub_22BB348C0();
        v34(v33);
        (*v64)(v5, v18, v7);
        sub_22BB331C8();
        sub_22BB336D0(v35, v36, v37, v7);
      }

      else
      {
        sub_22BB30B28();
        sub_22BB336D0(v38, v39, v40, v7);
        v41 = sub_22BB348C0();
        v42(v41);
      }

      sub_22BBDB5D0(v5, v0, v28, &qword_22BDC1338);
      sub_22BB31814(v0, 1, v7);
      if (v43)
      {
        sub_22BB58728(v0, v28, &qword_22BDC1338);
        v18 = v57;
        v27 = v30;
      }

      else
      {
        v44 = *v64;
        (*v64)(v63, v0, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = v57;
          v46 = v65;
        }

        else
        {
          sub_22BB305BC();
          sub_22BD901D0();
          v46 = v52;
          v18 = v57;
        }

        v48 = *(v46 + 16);
        v47 = *(v46 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_22BB2F158(v47);
          sub_22BD901D0();
          v46 = v53;
        }

        *(v46 + 16) = v48 + 1;
        sub_22BB2F374();
        v65 = v49;
        v44(v49 + v50 + *(v51 + 72) * v48, v63, v7);
        v0 = v55;
        v5 = v56;
        v27 = v54;
        v28 = v29;
      }

      v25 += v60;
      --v21;
    }

    while (v21);
  }

  sub_22BB314EC();
}

uint64_t sub_22BCB5AAC@<X0>(uint64_t a1@<X8>)
{
  sub_22BDB4E24();
  sub_22BB30444();
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB319F8();
  sub_22BDB5404();
  sub_22BB30444();
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BB31580();
  v4 = sub_22BB331D4();
  v5(v4);
  v6 = sub_22BB39478();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277D1CBF0])
  {
    v9 = sub_22BB39478();
    v10(v9);
    v11 = sub_22BB347D8();
    v12(v11);
    sub_22BCB5CC8(a1);
    v13 = sub_22BB3627C();
    return v14(v13);
  }

  else if (v8 == *MEMORY[0x277D1CBE8])
  {
    v16 = sub_22BB39478();
    v17(v16);
    sub_22BDBA594();
    v18 = sub_22BB31CB0();
    return sub_22BB336D0(v18, v19, v20, v21);
  }

  else
  {
    sub_22BDBA594();
    v22 = sub_22BB31CB0();
    sub_22BB336D0(v22, v23, v24, v25);
    v26 = sub_22BB39478();
    return v27(v26);
  }
}

uint64_t sub_22BCB5CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BDBA594();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  sub_22BDB4DF4();
  v9 = sub_22BDBA514();
  v17 = swift_allocBox(v9, v10, v11, v12, v13, v14, v15, v16, v22[0], v22[1], v22[2]);
  (*(*(v9 - 8) + 104))(v18, *MEMORY[0x277D729A0], v9);
  *v6 = v17;
  (*(v3 + 104))(v6, *MEMORY[0x277D72A58], v2);
  sub_22BCB6774(&qword_27D8E3168, MEMORY[0x277D72A78], MEMORY[0x277D72A90]);
  LOBYTE(v9) = sub_22BDBABD4();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v8, v2);
  if (v9)
  {
    v20 = 1;
  }

  else
  {
    sub_22BDB4DF4();
    v20 = 0;
  }

  return sub_22BB336D0(a1, v20, 1, v2);
}

void sub_22BCB5EE0()
{
  sub_22BB30F94();
  v1 = v0;
  v72 = v2;
  v3 = sub_22BDB5B14();
  sub_22BB30444();
  v78 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v75 = v6;
  sub_22BB2F120();
  sub_22BDB4C34();
  sub_22BB30444();
  v76 = v8;
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v71 = v9;
  sub_22BB2F120();
  v10 = sub_22BDB5264();
  sub_22BB30444();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB77D4();
  sub_22BB30444();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v23 = v22 - v21;
  v24 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  sub_22BB2F0C8(v24);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  v28 = *(sub_22BDB5254() + 16);

  if (v28 == 1)
  {
    v29 = v12;
    v30 = sub_22BDB5254();
    sub_22BC74140(v30, v27);

    sub_22BB31814(v27, 1, v3);
    if (!v31)
    {
      v51 = v72;
      (*(v78 + 32))(v72, v27, v3);
      v52 = v51;
      v53 = 0;
      goto LABEL_16;
    }

    sub_22BB58728(v27, &qword_27D8E3EA0, &qword_22BDC1370);
    v12 = v29;
  }

  sub_22BDB6404();
  (*(v12 + 16))(v16, v1, v10);
  v32 = sub_22BDB77C4();
  v33 = sub_22BDBB114();
  if (sub_22BB374D8(v33))
  {
    v66 = v23;
    v68 = v32;
    v69 = v10;
    v70 = v23;
    v34 = swift_slowAlloc();
    v65 = sub_22BB314C8();
    v80 = v65;
    v67 = v34;
    *v34 = 136315138;
    v35 = sub_22BDB5254();
    v36 = *(v35 + 16);
    v37 = v72;
    if (v36)
    {
      v61 = v16;
      v62 = v12;
      v63 = v19;
      v64 = v17;
      sub_22BB3323C(MEMORY[0x277D84F90]);
      sub_22BD27F28();
      v38 = v79;
      sub_22BB2F390();
      v60 = v35;
      v40 = v35 + v39;
      v73 = *(v41 + 56);
      v74 = v42;
      v78 = v41;
      v43 = (v41 - 8);
      v44 = v71;
      do
      {
        v45 = v75;
        v74(v75, v40, v3);
        sub_22BDB5AE4();
        v46 = v3;
        (*v43)(v45, v3);
        v79 = v38;
        v48 = *(v38 + 16);
        v47 = *(v38 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_22BB2F158(v47);
          sub_22BD27F28();
          v38 = v79;
        }

        *(v38 + 16) = v48 + 1;
        sub_22BB2F374();
        (*(v50 + 32))(v38 + v49 + *(v50 + 72) * v48, v44);
        v40 += v73;
        --v36;
        v3 = v46;
      }

      while (v36);

      v37 = v72;
      v19 = v63;
      v17 = v64;
      v16 = v61;
      v12 = v62;
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    MEMORY[0x2318A4D50](v38, v77);

    (*(v12 + 8))(v16, v69);
    v54 = sub_22BB2F3F0();
    v57 = sub_22BB32EE0(v54, v55, v56);

    v58 = v67;
    *(v67 + 1) = v57;
    v59 = v68;
    _os_log_impl(&dword_22BB2C000, v68, v66, "Could not extract the interpreted statement result from a system response, exactly one statement result is expected; results=%s", v58, 0xCu);
    sub_22BB32FA4(v65);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v19 + 8))(v70, v17);
  }

  else
  {

    (*(v12 + 8))(v16, v10);
    (*(v19 + 8))(v23, v17);
    v37 = v72;
  }

  v52 = v37;
  v53 = 1;
LABEL_16:
  sub_22BB336D0(v52, v53, 1, v3);
  sub_22BB314EC();
}

uint64_t sub_22BCB6438(uint64_t a1, uint64_t a2)
{
  sub_22BB30F68();
  v2 = sub_22BDB43E4();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v8 = v7 - v6;
  sub_22BDB8F24();
  v9 = sub_22BDB43B4();
  (*(v4 + 8))(v8, v2);
  return v9 & 1;
}

uint64_t sub_22BCB652C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BCB6584(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v4(v3);
  sub_22BB30ED8();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BCB66B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v4(v3);
  sub_22BB30ED8();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BCB6738(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_22BCB6774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22BCB67E4(uint64_t a1)
{
  sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    sub_22BCB6B14(319, &qword_281428850, _s23ParameterCandidateValueVMa);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BCB6900(uint64_t a1)
{
  result = sub_22BDB4C34();
  if (v2 <= 0x3F)
  {
    result = sub_22BCB69BC(319, qword_28142CD18, &_s14ActionQueryingPMp);
    if (v3 <= 0x3F)
    {
      result = sub_22BCB69BC(319, qword_28142B290, &_s25ResolvedParameterQueryingPMp);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BCB69BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22BCB6A38(uint64_t a1)
{
  sub_22BDB9C14();
  if (v1 <= 0x3F)
  {
    sub_22BCB6B14(319, &qword_281428878, _s13ValueExecutedVMa);
    if (v2 <= 0x3F)
    {
      sub_22BCB6B14(319, &qword_281428880, _s13ActionCreatedCMa);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BCB6B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBAE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BCB6BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BCB6C90()
{
  sub_22BB30F94();
  v1 = v0;
  v2 = _s15CandidateResultVMa(0);
  sub_22BB30444();
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v4 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  v5 = sub_22BB2F0C8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BB30C74();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  v12 = *v1;
  sub_22BDB8344();
  if (v13)
  {
    v14[15] = v12;
    sub_22BCB6EB8();
  }

  else
  {
    v14[14] = v12;
    sub_22BCB743C();
    sub_22BC5E5C4();
    if (sub_22BB3AA28(v8, 1, v2) != 1)
    {
      sub_22BCBA968();
      sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
      *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
      sub_22BCBA968();
    }

    sub_22BB58728(v11, &qword_27D8E3EA8, &qword_22BDC1378);
  }

  sub_22BB314EC();
}

void sub_22BCB6EB8()
{
  sub_22BB30F94();
  v1 = v0;
  v48 = _s15CandidateResultVMa(0);
  sub_22BB30444();
  v45 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v46 = v5 - v4;
  v6 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  v7 = sub_22BB2F0C8(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BB30C74();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB30444();
  v49 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22BB30C74();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = sub_22BDBA3A4();
  sub_22BB30444();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22BB30574();
  v47 = v28 - v27;
  v29 = *v1;
  sub_22BB307B0();
  sub_22BCBA9C0();
  v50 = v14;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v25;
    v30 = sub_22BDBA594();
    sub_22BB30444();
    v32 = v31;
    if ((*(v33 + 88))(v22, v30) == *MEMORY[0x277D729E0])
    {
      (*(v32 + 96))(v22, v30);
      v34 = swift_projectBox();
      (*(v44 + 16))(v47, v34, v23);

      v35 = sub_22BDBA394();
      v36 = *(v35 + 16);
      if (v36)
      {
        LODWORD(v46) = v29;
        v48 = v23;
        v52 = MEMORY[0x277D84F90];
        sub_22BD27DB8(0, v36, 0);
        v37 = *(v32 + 16);
        v38 = v52;
        sub_22BB2F390();
        v45 = v35;
        v40 = v35 + v39;
        v41 = *(v32 + 72);
        do
        {
          v37(v19, v40, v30);
          swift_storeEnumTagMultiPayload();
          v52 = v38;
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_22BD27DB8(v42 > 1, v43 + 1, 1);
            v38 = v52;
          }

          *(v38 + 16) = v43 + 1;
          sub_22BB2F390();
          sub_22BCBA968();
          v40 += v41;
          --v36;
        }

        while (v36);

        v23 = v48;
        LOBYTE(v29) = v46;
      }

      else
      {

        v38 = MEMORY[0x277D84F90];
      }

      v51 = v29;
      sub_22BCB772C(v38, &v51);

      (*(v44 + 8))(v47, v23);
      goto LABEL_16;
    }

    (*(v32 + 8))(v22, v30);
  }

  else
  {
    sub_22BCBAA18(v22, type metadata accessor for FeedbackLearning.CandidateDefinition);
  }

  v53 = v29;
  sub_22BCB743C();
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v10, 1, v48) != 1)
  {
    sub_22BCBA968();
    sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
    *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
    sub_22BCBA968();
  }

  sub_22BB58728(v13, &qword_27D8E3EA8, &qword_22BDC1378);
LABEL_16:
  sub_22BB314EC();
}

void sub_22BCB743C()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v35 = sub_22BDB77D4();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB2F0C8(v10);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_22BDB7B44();
  sub_22BB30444();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = (v19 - v18);
  v21 = *v1;
  sub_22BCE19F0();
  if (sub_22BB3AA28(v13, 1, v14) == 1)
  {
    sub_22BB58728(v13, &qword_27D8E3E60, &qword_22BDC23E0);
    sub_22BDB6404();
    v22 = sub_22BDB77C4();
    v23 = sub_22BDBB114();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315138;
      v36 = v21;
      v26 = FeedbackLearning.CandidateOutcome.description.getter();
      v28 = sub_22BB32EE0(v26, v27, &v37);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_22BB2C000, v22, v23, "Cannot make a candidate result for an item with outcome %s, item is not candidateId extractable", v24, 0xCu);
      sub_22BB32FA4(v25);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    (*(v5 + 8))(v9, v35);
    v29 = _s15CandidateResultVMa(0);
    v30 = v3;
    v31 = 1;
  }

  else
  {
    v32 = *(v16 + 32);
    v32(v20, v13, v14);
    v33 = _s15CandidateResultVMa(0);
    sub_22BB307B0();
    sub_22BCBA9C0();
    v32(&v3[*(v33 + 24)], v20, v14);
    *v3 = v21;
    v30 = v3;
    v31 = 0;
    v29 = v33;
  }

  sub_22BB336D0(v30, v31, 1, v29);
  sub_22BB314EC();
}

uint64_t sub_22BCB772C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_22BDB77D4();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v32 = _s15CandidateResultVMa(0);
  v9 = MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for FeedbackLearning.CandidateDefinition(0) - 8;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v34 = *a2;
  v33 = a1;
  v35 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  while (v35 != v15)
  {
    sub_22BCBA9C0();
    v38 = v34;
    sub_22BCB743C();
    sub_22BCBAA18(v14, type metadata accessor for FeedbackLearning.CandidateDefinition);
    if (sub_22BB3AA28(v8, 1, v32) == 1)
    {

      sub_22BB58728(v8, &qword_27D8E3EA8, &qword_22BDC1378);
      v20 = v29;
      sub_22BDB6404();
      v21 = sub_22BDB77C4();
      v22 = sub_22BDBB114();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v37 = v24;
        *v23 = 136315138;
        v36 = v34;
        v25 = FeedbackLearning.CandidateOutcome.description.getter();
        v27 = sub_22BB32EE0(v25, v26, &v37);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_22BB2C000, v21, v22, "Cannot make a collection of candidate results for a list of items with outcome %s", v23, 0xCu);
        sub_22BB32FA4(v24);
        MEMORY[0x2318A6080](v24, -1, -1);
        MEMORY[0x2318A6080](v23, -1, -1);
      }

      (*(v30 + 8))(v20, v31);
      return 0;
    }

    sub_22BCBA968();
    sub_22BCBA9C0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD8FDDC();
      v16 = v18;
    }

    v17 = *(v16 + 16);
    if (v17 >= *(v16 + 24) >> 1)
    {
      sub_22BD8FDDC();
      v16 = v19;
    }

    sub_22BCBAA18(v11, _s15CandidateResultVMa);
    *(v16 + 16) = v17 + 1;
    sub_22BCBA968();
    ++v15;
  }

  return v16;
}

void sub_22BCB7C08()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v4 = _s20DisambiguationResultOMa(0);
  v5 = sub_22BB2F0C8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v63 = v7 - v6;
  v8 = sub_22BDB77D4();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v64 = v13 - v12;
  v14 = sub_22BBE6DE0(&qword_27D8E3ED8, &qword_22BDCE7D0);
  sub_22BB30444();
  v16 = v15;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  v62 = v3;
  v20 = sub_22BCB86E4(v3, v1);
  if (v20)
  {
    v21 = v20;
    v59 = v1;
    v60 = v10;
    v61 = v8;
    v22 = 0;
    v23 = *(v20 + 16);
    v24 = MEMORY[0x277D84F90];
    while (v23 != v22)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      sub_22BB2F390();
      v26 = *(v21 + v25 + *(v16 + 72) * v22 + *(v14 + 48));
      sub_22BB307B0();
      sub_22BCBA9C0();
      v19[*(v14 + 48)] = v26;
      v66 = v26;
      sub_22BCB6EB8();
      v28 = v27;
      sub_22BB58728(v19, &qword_27D8E3ED8, &qword_22BDCE7D0);
      if (!v28)
      {

        v44 = v64;
        sub_22BDB6404();
        sub_22BB31CC4();
        sub_22BCBA9C0();
        v45 = v62;

        v46 = sub_22BDB77C4();
        v47 = sub_22BDBB114();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v48 = 136315394;
          v49 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
          v50 = MEMORY[0x2318A4D50](v45, v49);
          v52 = sub_22BB32EE0(v50, v51, &v65);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2080;
          v53 = sub_22BCCD54C();
          v55 = v54;
          sub_22BB33D00();
          v56 = sub_22BB32EE0(v53, v55, &v65);

          *(v48 + 14) = v56;
          sub_22BB3A62C(&dword_22BB2C000, v57, v58, "Cannot generate candidate results for a disambiguation, could not transform outcomes; items=%s, result=%s");
          swift_arrayDestroy();
          sub_22BB30AF0();
          sub_22BB30AF0();
        }

        else
        {

          sub_22BB33D00();
        }

        (*(v60 + 8))(v44, v61);
        goto LABEL_30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD8FD18();
        v24 = v30;
      }

      v29 = *(v24 + 16);
      if (v29 >= *(v24 + 24) >> 1)
      {
        sub_22BD8FD18();
        v24 = v31;
      }

      *(v24 + 16) = v29 + 1;
      *(v24 + 8 * v29 + 32) = v28;
      ++v22;
    }

    v32 = 0;
    v33 = *(v24 + 16);
    v34 = MEMORY[0x277D84F90];
    while (v33 != v32)
    {
      if (v32 >= *(v24 + 16))
      {
        goto LABEL_32;
      }

      v35 = *(v24 + 8 * v32 + 32);
      v36 = *(v35 + 16);
      v37 = *(v34 + 16);
      v38 = v37 + v36;
      if (__OFADD__(v37, v36))
      {
        goto LABEL_33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v38 > *(v34 + 24) >> 1)
      {
        sub_22BB38AD4(isUniquelyReferenced_nonNull_native);
        v34 = v40;
      }

      if (*(v35 + 16))
      {
        sub_22BB38D60();
        if (v38 < v36)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v36)
        {
          v41 = *(v34 + 16);
          v42 = __OFADD__(v41, v36);
          v43 = v41 + v36;
          if (v42)
          {
            goto LABEL_36;
          }

          *(v34 + 16) = v43;
        }
      }

      else
      {

        if (v36)
        {
          goto LABEL_34;
        }
      }

      ++v32;
    }
  }

LABEL_30:
  sub_22BB314EC();
}

void sub_22BCB8100()
{
  sub_22BB30F94();
  v63 = v0;
  v2 = v1;
  v4 = v3;
  v5 = _s20DisambiguationResultOMa(0);
  v6 = sub_22BB2F0C8(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BDB77D4();
  sub_22BB30444();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v16 = v15 - v14;
  v62 = sub_22BBE6DE0(&qword_27D8E3ED8, &qword_22BDCE7D0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  v19 = v56 - v18;
  v20 = sub_22BCB86E4(v4, v2);
  v21 = v20;
  if (v20)
  {
    v56[1] = v2;
    v57 = v4;
    v58 = v9;
    v59 = v16;
    v60 = v12;
    v61 = v10;
    v22 = 0;
    v23 = *(v20 + 16);
    v24 = MEMORY[0x277D84F90];
    while (v23 != v22)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      sub_22BB2F390();
      sub_22BC5E5C4();
      v25 = v63(v19, &v19[*(v62 + 48)]);
      sub_22BB58728(v19, &qword_27D8E3ED8, &qword_22BDCE7D0);
      if (!v25)
      {

        v41 = v59;
        sub_22BDB6404();
        sub_22BB31CC4();
        sub_22BCBA9C0();
        v42 = v57;

        v43 = sub_22BDB77C4();
        v44 = sub_22BDBB114();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v45 = 136315394;
          v46 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
          v47 = MEMORY[0x2318A4D50](v42, v46);
          v49 = sub_22BB32EE0(v47, v48, &v64);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          v50 = sub_22BCCD54C();
          v52 = v51;
          sub_22BB33D00();
          v53 = sub_22BB32EE0(v50, v52, &v64);

          *(v45 + 14) = v53;
          sub_22BB3A62C(&dword_22BB2C000, v54, v55, "Cannot generate candidate results for a disambiguation, could not transform outcomes; items=%s, result=%s");
          swift_arrayDestroy();
          sub_22BB30AF0();
          sub_22BB30AF0();
        }

        else
        {

          sub_22BB33D00();
        }

        (*(v60 + 8))(v41, v61);
        goto LABEL_30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD8FD18();
        v24 = v27;
      }

      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24) >> 1)
      {
        sub_22BD8FD18();
        v24 = v28;
      }

      *(v24 + 16) = v26 + 1;
      *(v24 + 8 * v26 + 32) = v25;
      ++v22;
    }

    v29 = 0;
    v30 = *(v24 + 16);
    v31 = MEMORY[0x277D84F90];
    while (v30 != v29)
    {
      if (v29 >= *(v24 + 16))
      {
        goto LABEL_32;
      }

      v32 = *(v24 + 8 * v29 + 32);
      v33 = *(v32 + 16);
      v34 = *(v31 + 16);
      v35 = v34 + v33;
      if (__OFADD__(v34, v33))
      {
        goto LABEL_33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v35 > *(v31 + 24) >> 1)
      {
        sub_22BB38AD4(isUniquelyReferenced_nonNull_native);
        v31 = v37;
      }

      if (*(v32 + 16))
      {
        sub_22BB38D60();
        if (v35 < v33)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v38 = *(v31 + 16);
          v39 = __OFADD__(v38, v33);
          v40 = v38 + v33;
          if (v39)
          {
            goto LABEL_36;
          }

          *(v31 + 16) = v40;
        }
      }

      else
      {

        if (v33)
        {
          goto LABEL_34;
        }
      }

      ++v29;
    }
  }

LABEL_30:
  sub_22BB314EC();
}