uint64_t sub_26A08EBDC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369488, &qword_26A09F698);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = *a1;
  *(v1 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_cachedDescriptorCollection) = v11;

  result = *(v1 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_streamContinuations);
  v13 = *(result + 16);
  if (v13)
  {
    v15 = v8 + 16;
    v14 = *(v8 + 16);
    v23 = v3;
    v24 = v14;
    v16 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v15 + 56);
    v21[1] = result;
    v22 = v17;
    v18 = v4;
    v19 = (v15 - 8);
    v20 = (v18 + 8);

    do
    {
      v24(v10, v16, v7);
      v25 = v11;

      sub_26A09E024();
      (*v19)(v10, v7);
      (*v20)(v6, v23);
      v16 += v22;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_26A08EE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369488, &qword_26A09F698);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369908, &qword_26A09FE48);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v4[14] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v4[15] = sub_26A0831F8();
  v9 = sub_26A09DFA4();
  v4[16] = v9;
  v4[17] = v8;

  return MEMORY[0x2822009F8](sub_26A08F018, v9, v8);
}

uint64_t sub_26A08F018()
{
  v1 = *(v0[4] + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_observer);
  v0[18] = v1;
  if (v1)
  {
    v0[19] = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_logger;
    v1;
    v2 = sub_26A09DE04();
    v3 = sub_26A09E124();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_26A066000, v2, v3, "Observing update stream", v4, 2u);
      MEMORY[0x26D65A520](v4, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369900, &qword_26A09FE10);
    sub_26A09E044();
    v5 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_streamContinuations;
    v0[20] = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_cachedDescriptorCollection;
    v0[21] = v5;
    v6 = v0[14];
    v7 = v0[15];
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = sub_26A08F1FC;
    v9 = v0[11];

    return MEMORY[0x2822003E8](v0 + 2, v6, v7, v9);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_26A08F1FC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26A08F31C, v3, v2);
}

uint64_t sub_26A08F31C()
{
  v2 = v0 + 2;
  v1 = v0[2];
  if (v1)
  {
    v3 = v1;
    v4 = sub_26A09DE04();
    v5 = sub_26A09E124();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_26A066000, v4, v5, "Got stream update %@", v6, 0xCu);
      sub_26A08B1F0(v7);
      MEMORY[0x26D65A520](v7, -1, -1);
      MEMORY[0x26D65A520](v6, -1, -1);
    }

    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[4];

    v12 = *&v3[OBJC_IVAR___SSSDescriptorCollectionBox_value];
    *(v11 + v10) = v12;
    swift_bridgeObjectRetain_n();

    v13 = *(v11 + v9);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v0[9];
      v16 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v35 = *(v15 + 72);
      v33 = v3;
      v34 = *(v15 + 16);

      do
      {
        v18 = v0[9];
        v17 = v0[10];
        v20 = v0[7];
        v19 = v0[8];
        v22 = v0[5];
        v21 = v0[6];
        v34(v17, v16, v19);
        v0[3] = v12;

        sub_26A09E024();
        (*(v21 + 8))(v20, v22);
        (*(v18 + 8))(v17, v19);
        v16 += v35;
        --v14;
      }

      while (v14);

      v2 = v0 + 2;
      v3 = v33;
    }

    v23 = v0[14];
    v24 = v0[15];
    v25 = swift_task_alloc();
    v0[22] = v25;
    *v25 = v0;
    v25[1] = sub_26A08F1FC;
    v26 = v0[11];

    return MEMORY[0x2822003E8](v2, v23, v24, v26);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    v27 = sub_26A09DE04();
    v28 = sub_26A09E124();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26A066000, v27, v28, "Update stream finished", v29, 2u);
      MEMORY[0x26D65A520](v29, -1, -1);
    }

    v30 = v0[18];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_26A08F6C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_26A09DE04();
  v7 = sub_26A09E124();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26A066000, v6, v7, "Received service restart notification, attempting to resubscribe.", v8, 2u);
    MEMORY[0x26D65A520](v8, -1, -1);
  }

  v9 = sub_26A09DFF4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = qword_280369100;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = off_280369A30;
  v12 = sub_26A0831F8();
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;

  sub_26A08B93C(0, 0, v5, &unk_26A09FE68, v13);
}

uint64_t sub_26A08F88C()
{
  v1 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26A08F9B0(uint64_t a1)
{
  result = sub_26A09DE24();
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

void sub_26A08FF14(uint64_t a1)
{
  sub_26A090018(319, &qword_2803698D8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_26A090018(319, &qword_2803698E0, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26A090018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s23DescriptorCollectionBoxCMa(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_26A09007C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A079198;

  return sub_26A08E2B0(a1, v4, v5, v6);
}

uint64_t sub_26A090130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A079198;

  return sub_26A08EE18(a1, v4, v5, v6);
}

uint64_t sub_26A0901EC()
{
  v1 = sub_26A09DE24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369910, &unk_26A09FE50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_26A090340(void *a1)
{
  sub_26A09DE24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369910, &unk_26A09FE50);

  return sub_26A08EA4C(a1);
}

uint64_t sub_26A090420()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369910, &unk_26A09FE50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26A0904B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369910, &unk_26A09FE50);

  return sub_26A08EB7C(a1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A090548(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_26A090588()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26A09060C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_26A09DE24() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_26A0906AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26A090784(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A06BFC4;

  return sub_26A08CF88(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_26A090888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A079198;

  return sub_26A08D2EC(a1, v4, v5, v6);
}

void sub_26A090974(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  sub_26A09DC54();
  swift_allocObject();
  sub_26A09DC44();
  v17[1] = *(v1 + OBJC_IVAR___SSSDescriptorCollectionBox_value);
  sub_26A091384();

  v7 = sub_26A09DC34();
  v9 = v8;

  v10 = sub_26A09DC94();
  sub_26A091330(v7, v9);
  v11 = v10;
  v12 = sub_26A09DE74();
  [a1 encodeObject:v11 forKey:v12];

  sub_26A0814D0(v2 + OBJC_IVAR___SSSDescriptorCollectionBox_date, v6);
  v13 = sub_26A09DD34();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v6, 1, v13) != 1)
  {
    v15 = sub_26A09DCD4();
    (*(v14 + 8))(v6, v13);
  }

  v16 = sub_26A09DE74();
  [a1 encodeObject:v15 forKey:v16];

  swift_unknownObjectRelease();
}

id sub_26A090C38(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_26A069F94(0, &qword_2803699B0, 0x277CBEA90);
  v8 = sub_26A09E184();
  if (v8)
  {
    v9 = v8;
    sub_26A09DC24();
    swift_allocObject();
    sub_26A09DC14();
    v10 = v9;
    v11 = sub_26A09DCA4();
    v13 = v12;

    sub_26A0912DC();
    sub_26A09DC04();
    sub_26A091330(v11, v13);

    *&v1[OBJC_IVAR___SSSDescriptorCollectionBox_value] = v21;
    sub_26A069F94(0, &qword_2803699C0, 0x277CBEAA8);
    v15 = sub_26A09E184();
    if (v15)
    {
      v16 = v15;
      sub_26A09DD04();

      v17 = 0;
      v10 = v16;
    }

    else
    {
      v17 = 1;
    }

    v18 = sub_26A09DD34();
    (*(*(v18 - 8) + 56))(v7, v17, 1, v18);
    sub_26A08AF08(v7, v2 + OBJC_IVAR___SSSDescriptorCollectionBox_date);
    v20.receiver = v2;
    v20.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v20, sel_init);

    return v19;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_26A090F84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v7 - v2;
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_26A09E2F4();
  MEMORY[0x26D659940](0xD00000000000001ELL, 0x800000026A0A1EE0);
  sub_26A0814D0(v0 + OBJC_IVAR___SSSDescriptorCollectionBox_date, v3);
  v4 = sub_26A09DD34();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_26A0815B0(v3);
  }

  else
  {
    sub_26A09DCB4();
    (*(v5 + 8))(v3, v4);
  }

  sub_26A09E094();
  MEMORY[0x26D659940](62, 0xE100000000000000);
  return v7[0];
}

uint64_t _s23DescriptorCollectionBoxCMa(uint64_t a1)
{
  result = qword_280369990;
  if (!qword_280369990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A0911E4(uint64_t a1)
{
  sub_26A091284(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A091284(uint64_t a1)
{
  if (!qword_2803699A0)
  {
    sub_26A09DD34();
    v1 = sub_26A09E1B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2803699A0);
    }
  }
}

unint64_t sub_26A0912DC()
{
  result = qword_2803699B8;
  if (!qword_2803699B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803699B8);
  }

  return result;
}

uint64_t sub_26A091330(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_26A091384()
{
  result = qword_2803699C8;
  if (!qword_2803699C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803699C8);
  }

  return result;
}

uint64_t sub_26A0913E8(uint64_t a1)
{
  type metadata accessor for AuthorizationActor();
  v1 = swift_allocObject();
  result = sub_26A091504();
  off_280369A30 = v1;
  return result;
}

uint64_t static AuthorizationActor.shared.getter()
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }
}

uint64_t AuthorizationActor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26A091504()
{
  v1 = sub_26A09E154();
  MEMORY[0x28223BE20](v1);
  v2 = sub_26A09DE44();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_26A09E134();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A091880();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  sub_26A09DE34();
  v8[1] = MEMORY[0x277D84F90];
  sub_26A0918CC(&qword_280369A40, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369A48, &qword_26A09FF68);
  sub_26A091914();
  sub_26A09E1D4();
  *(v0 + 16) = sub_26A09E164();
  return v0;
}

uint64_t sub_26A0917B0()
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26A09180C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AuthorizationActor();

  return MEMORY[0x2822005F8](v3, a2);
}

unint64_t sub_26A091880()
{
  result = qword_280369A38;
  if (!qword_280369A38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280369A38);
  }

  return result;
}

uint64_t sub_26A0918CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A091914()
{
  result = qword_280369A50;
  if (!qword_280369A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280369A48, &qword_26A09FF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369A50);
  }

  return result;
}

uint64_t sub_26A091978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26A09E514();
  sub_26A09DEE4();
  v6 = sub_26A09E534();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_26A09E4D4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26A091A70(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = a2;
    sub_26A09E514();
    SmartStackAuthorization.rawValue.getter();
    sub_26A09DEE4();

    v4 = sub_26A09E534();
    v5 = v2 + 56;
    v6 = -1 << *(v2 + 32);
    v7 = v4 & ~v6;
    if ((*(v2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      v9 = 0xEF73736170794274;
      v26 = v2;
      while (1)
      {
        v10 = *(*(v2 + 48) + 8 * v7);
        if (v10 <= 1)
        {
          v11 = 0x6F4C737961776C61;
          v12 = 0xEE006E6F69746163;
          if (!v10)
          {
            goto LABEL_17;
          }

          if (v10 == 1)
          {
            v11 = 0x636F4C6573556E69;
            v12 = 0xED00006E6F697461;
            if (a1 > 1)
            {
              goto LABEL_18;
            }

            goto LABEL_28;
          }
        }

        else
        {
          switch(v10)
          {
            case 2:
              v11 = 0xD000000000000013;
              v12 = 0x800000026A0A0D90;
              if (a1 > 1)
              {
                goto LABEL_18;
              }

              goto LABEL_28;
            case 3:
              v12 = 0xEE006E6F69746365;
              v11 = 0x746544646E756F73;
LABEL_17:
              if (a1 > 1)
              {
                goto LABEL_18;
              }

              goto LABEL_28;
            case 4:
              v11 = 0x694B68746C616568;
              v12 = v9;
              if (a1 > 1)
              {
                goto LABEL_18;
              }

              goto LABEL_28;
          }
        }

        v14 = sub_26A09DEA4();
        v16 = v15;
        sub_26A077CA8(v10);
        MEMORY[0x26D659940](v14, v16);

        v11 = 0x694B68746C616568;
        v12 = 0xEA00000000002D74;
        if (a1 > 1)
        {
LABEL_18:
          switch(a1)
          {
            case 2:
              v13 = 0x800000026A0A0D90;
              if (v11 != 0xD000000000000013)
              {
                goto LABEL_33;
              }

              break;
            case 3:
              v13 = 0xEE006E6F69746365;
              if (v11 != 0x746544646E756F73)
              {
                goto LABEL_33;
              }

              break;
            case 4:
              v13 = v9;
              if (v11 != 0x694B68746C616568)
              {
                goto LABEL_33;
              }

              break;
            default:
              goto LABEL_36;
          }

          goto LABEL_32;
        }

LABEL_28:
        v17 = 0x6F4C737961776C61;
        v13 = 0xEE006E6F69746163;
        if (a1)
        {
          if (a1 != 1)
          {
LABEL_36:
            v19 = v5;
            v20 = v8;
            v21 = v9;
            v22 = v11;
            v23 = sub_26A09DEA4();
            MEMORY[0x26D659940](v23);

            v24 = v22;
            v9 = v21;
            v8 = v20;
            v5 = v19;
            v2 = v26;
            v13 = 0xEA00000000002D74;
            if (v24 != 0x694B68746C616568)
            {
              goto LABEL_33;
            }

            goto LABEL_32;
          }

          v17 = 0x636F4C6573556E69;
          v13 = 0xED00006E6F697461;
        }

        if (v11 != v17)
        {
          goto LABEL_33;
        }

LABEL_32:
        if (v12 == v13)
        {
          sub_26A077CFC(v10);

          v18 = 1;
          return v18 & 1;
        }

LABEL_33:
        v18 = sub_26A09E4D4();
        sub_26A077CFC(v10);

        if ((v18 & 1) == 0)
        {
          v7 = (v7 + 1) & v8;
          if ((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }
  }

  v18 = 0;
  return v18 & 1;
}

__n128 AuthorizationDescriptor.init(applicationBundleIdentifier:desiredAuthorizations:authorizationStates:showAfterInstall:viewDescriptor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  sub_26A077CB8(0, 0, 0, 0);
  result = *a6;
  *(a7 + 56) = *(a6 + 16);
  *(a7 + 40) = result;
  return result;
}

void AuthorizationDescriptor.eligibleAuthorizations.getter()
{
  v1 = *(v0 + 24);
  v11[1] = MEMORY[0x277D84FA0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v6 << 6);
    if (*(*(v1 + 56) + v9) == 1)
    {
      v10 = *(*(v1 + 48) + 8 * v9);
      sub_26A077CA8(v10);
      sub_26A09367C(v11, v10);
      sub_26A077CFC(v11[0]);
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void AuthorizationDescriptor.eligibleForModalIncidentalUsePrompt.getter()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 16);
    v4 = sub_26A099F98(2);
    if ((v5 & 1) != 0 && *(*(v2 + 56) + v4) == 1)
    {
      v6 = 1 << *(v2 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v2 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      while (v8)
      {
LABEL_12:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v10 << 6);
        if (*(*(v2 + 56) + v13) == 1)
        {
          v14 = *(*(v2 + 48) + 8 * v13);
          sub_26A077CA8(v14);
          v15 = sub_26A091A70(v14, v3);
          sub_26A077CFC(v14);
          if (v15)
          {
LABEL_16:

            return;
          }
        }
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          goto LABEL_16;
        }

        v8 = *(v2 + 64 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t AuthorizationDescriptor.applicationBundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void AuthorizationDescriptor.viewDescriptor.getter(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_26A095A34(v2, v3, v4, v5);
}

uint64_t AuthorizationDescriptor.missingAuthorizations.getter()
{
  v1 = *(v0 + 16);

  AuthorizationDescriptor.grantedAuthorizations.getter();
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    sub_26A096934(v2);
  }

  else
  {
    v1 = sub_26A096A64(v2, v1);
  }

  return v1;
}

void AuthorizationDescriptor.grantedAuthorizations.getter()
{
  v1 = *(v0 + 24);
  v11[1] = MEMORY[0x277D84FA0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v6 << 6);
    if (*(*(v1 + 56) + v9) == 3)
    {
      v10 = *(*(v1 + 48) + 8 * v9);
      sub_26A077CA8(v10);
      sub_26A09367C(v11, v10);
      sub_26A077CFC(v11[0]);
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void AuthorizationDescriptor.deniedAuthorizations.getter()
{
  v1 = *(v0 + 24);
  v11[1] = MEMORY[0x277D84FA0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v6 << 6);
    if (*(*(v1 + 56) + v9) == 4)
    {
      v10 = *(*(v1 + 48) + 8 * v9);
      sub_26A077CA8(v10);
      sub_26A09367C(v11, v10);
      sub_26A077CFC(v11[0]);
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_26A092420()
{
  v1 = *v0;
  sub_26A09E514();
  MEMORY[0x26D659F60](v1);
  return sub_26A09E534();
}

uint64_t sub_26A092494(uint64_t a1)
{
  v2 = *v1;
  sub_26A09E514();
  MEMORY[0x26D659F60](v2);
  return sub_26A09E534();
}

unint64_t sub_26A0924D8()
{
  v1 = *v0;
  v2 = 0x6373654477656976;
  if (v1 == 3)
  {
    v2 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD00000000000001BLL;
  if (*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26A092594@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26A098F34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26A0925D4(uint64_t a1)
{
  v2 = sub_26A098528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A092610(uint64_t a1)
{
  v2 = sub_26A098528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthorizationDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369A58, &unk_26A09FF70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = v8;
  v29 = *(v1 + 32);
  v9 = *(v1 + 40);
  v21 = *(v1 + 48);
  v22 = v9;
  v10 = *(v1 + 64);
  v19 = *(v1 + 56);
  v20 = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_26A098528();
  sub_26A09E554();
  LOBYTE(v25) = 0;
  sub_26A09E474();
  if (!v2)
  {
    v15 = v22;
    v16 = v23;
    v17 = v21;
    v25 = v24;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369278, &qword_26A09F488);
    sub_26A098678(&qword_280369A68, sub_26A09857C, MEMORY[0x277D83B50]);
    sub_26A09E494();
    v25 = v16;
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369A78, &qword_26A09FF80);
    sub_26A098744(&qword_280369A80, sub_26A09857C, sub_26A0985D0, MEMORY[0x277D83508]);
    sub_26A09E494();
    LOBYTE(v25) = 3;
    sub_26A09E484();
    v25 = v15;
    v26 = v17;
    v27 = v19;
    v28 = v20;
    v30 = 4;
    sub_26A095A34(v15, v17, v19, v20);
    sub_26A098624();
    sub_26A09E464();
    sub_26A077CB8(v25, v26, v27, v28);
  }

  return (*(v5 + 8))(v7, v14);
}

void AuthorizationDescriptor.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369A98, &qword_26A09FF88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A098528();
  sub_26A09E544();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_26A077CB8(0, 0, 0, 0);
  }

  else
  {
    LOBYTE(v27[0]) = 0;
    v9 = sub_26A09E404();
    v11 = v10;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369278, &qword_26A09F488);
    LOBYTE(v22) = 1;
    sub_26A098678(&qword_280369AA0, sub_26A0986F0, MEMORY[0x277D83B70]);
    sub_26A09E424();
    v20 = v27[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369A78, &qword_26A09FF80);
    LOBYTE(v22) = 2;
    sub_26A098744(&qword_280369AB0, sub_26A0986F0, sub_26A0987D4, MEMORY[0x277D83528]);
    sub_26A09E424();
    v19 = v27[0];
    LOBYTE(v27[0]) = 3;
    v37 = sub_26A09E414();
    v38 = 4;
    sub_26A098828();
    sub_26A09E3F4();
    v12 = v37 & 1;
    (*(v6 + 8))(v8, v5);
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
    sub_26A077CB8(0, 0, 0, 0);
    *&v22 = v21;
    *(&v22 + 1) = v11;
    *&v23 = v20;
    *(&v23 + 1) = v19;
    LOBYTE(v24) = v12;
    *(&v24 + 1) = v13;
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v26 = v16;
    *(a2 + 64) = v16;
    v17 = v25;
    *(a2 + 32) = v24;
    *(a2 + 48) = v17;
    v18 = v23;
    *a2 = v22;
    *(a2 + 16) = v18;
    sub_26A077C4C(&v22, v27);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v27[0] = v21;
    v27[1] = v11;
    v27[2] = v20;
    v27[3] = v19;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    sub_26A077BF8(v27);
  }
}

uint64_t AuthorizationDescriptor.ViewDescriptor.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AuthorizationDescriptor.ViewDescriptor.url.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static AuthorizationDescriptor.ViewDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_26A09E4D4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_26A09E4D4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_26A092F3C()
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

uint64_t sub_26A092F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_26A09E4D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26A09E4D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26A093050(uint64_t a1)
{
  v2 = sub_26A09887C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A09308C(uint64_t a1)
{
  v2 = sub_26A09887C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthorizationDescriptor.ViewDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369AC8, &qword_26A09FF90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A09887C();
  sub_26A09E554();
  v12 = 0;
  v8 = v10[3];
  sub_26A09E474();
  if (!v8)
  {
    v11 = 1;
    sub_26A09E454();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AuthorizationDescriptor.ViewDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369AD8, &qword_26A09FF98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A09887C();
  sub_26A09E544();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_26A09E404();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_26A09E3E4();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_26A09348C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_26A09E4D4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_26A09E4D4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_26A09352C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26A09E514();
  sub_26A09DEE4();
  v8 = sub_26A09E534();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26A09E4D4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_26A094748(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26A09367C(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  sub_26A09E514();
  SmartStackAuthorization.rawValue.getter();
  sub_26A09DEE4();

  v5 = sub_26A09E534();
  v6 = v4 + 56;
  v7 = -1 << *(v4 + 32);
  v8 = v5 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_37:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v29;
    sub_26A077CA8(a2);
    sub_26A0948C8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v29 = v32;
    *a1 = a2;
    return 1;
  }

  v9 = ~v7;
  v10 = 0xEF73736170794274;
  v30 = v4;
  while (1)
  {
    v11 = *(*(v4 + 48) + 8 * v8);
    if (v11 <= 1)
    {
      break;
    }

    if (v11 == 2)
    {
      v12 = 0xD000000000000013;
      v13 = 0x800000026A0A0D90;
      if (a2 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v11 == 3)
    {
      v13 = 0xEE006E6F69746365;
      v12 = 0x746544646E756F73;
LABEL_16:
      if (a2 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v11 != 4)
    {
      goto LABEL_26;
    }

    v12 = 0x694B68746C616568;
    v13 = v10;
    if (a2 <= 1)
    {
      goto LABEL_27;
    }

LABEL_17:
    switch(a2)
    {
      case 2:
        v14 = 0x800000026A0A0D90;
        if (v12 == 0xD000000000000013)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      case 3:
        v14 = 0xEE006E6F69746365;
        if (v12 == 0x746544646E756F73)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      case 4:
        v14 = v10;
        if (v12 == 0x694B68746C616568)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
    }

LABEL_35:
    v20 = v6;
    v21 = v9;
    v22 = v10;
    v23 = v12;
    v24 = sub_26A09DEA4();
    MEMORY[0x26D659940](v24);

    v25 = v23;
    v10 = v22;
    v9 = v21;
    v6 = v20;
    v4 = v30;
    v14 = 0xEA00000000002D74;
    if (v25 == 0x694B68746C616568)
    {
      goto LABEL_31;
    }

LABEL_32:
    v19 = sub_26A09E4D4();
    sub_26A077CFC(v11);

    if (v19)
    {
      goto LABEL_39;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v12 = 0x6F4C737961776C61;
  v13 = 0xEE006E6F69746163;
  if (!v11)
  {
    goto LABEL_16;
  }

  if (v11 == 1)
  {
    v12 = 0x636F4C6573556E69;
    v13 = 0xED00006E6F697461;
    if (a2 <= 1)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

LABEL_26:
  v15 = sub_26A09DEA4();
  v17 = v16;
  sub_26A077CA8(v11);
  MEMORY[0x26D659940](v15, v17);

  v12 = 0x694B68746C616568;
  v13 = 0xEA00000000002D74;
  if (a2 > 1)
  {
    goto LABEL_17;
  }

LABEL_27:
  v18 = 0x6F4C737961776C61;
  v14 = 0xEE006E6F69746163;
  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 != 1)
  {
    goto LABEL_35;
  }

  v18 = 0x636F4C6573556E69;
  v14 = 0xED00006E6F697461;
LABEL_30:
  if (v12 != v18)
  {
    goto LABEL_32;
  }

LABEL_31:
  if (v13 != v14)
  {
    goto LABEL_32;
  }

  sub_26A077CFC(v11);

LABEL_39:
  sub_26A077CFC(a2);
  v28 = *(*(v4 + 48) + 8 * v8);
  *a1 = v28;
  sub_26A077CA8(v28);
  return 0;
}

uint64_t sub_26A093AC4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26A09E234();

    if (v9)
    {

      type metadata accessor for AuthorizationServiceServer.ClientConnection(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_26A09E224();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_26A093CDC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_26A09449C(v20 + 1);
    }

    v18 = v8;
    sub_26A0946C4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for AuthorizationServiceServer.ClientConnection(0);
  v11 = sub_26A09E194();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_26A094D30(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_26A09E1A4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_26A093CDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369858, &unk_26A09FD60);
    v2 = sub_26A09E2C4();
    v15 = v2;
    sub_26A09E214();
    if (sub_26A09E244())
    {
      type metadata accessor for AuthorizationServiceServer.ClientConnection(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_26A09449C(v9 + 1);
        }

        v2 = v15;
        result = sub_26A09E194();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_26A09E244());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26A093EBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280369860, &unk_26A0A0390);
  result = sub_26A09E2B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26A09411C(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369B10, &unk_26A0A0380);
  result = sub_26A09E2B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v17 = v5;
        while (1)
        {
          v5 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v5 >= v10)
          {
            break;
          }

          v18 = v6[v5];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v9 = (v18 - 1) & v18;
            goto LABEL_16;
          }
        }

        v25 = 1 << *(v2 + 32);
        if (v25 >= 64)
        {
          bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v25;
        }

        *(v2 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + 8 * (v16 | (v5 << 6)));
      sub_26A09E514();
      if (v19 <= 1)
      {
        if (v19 > 1)
        {
          goto LABEL_32;
        }
      }

      else if (v19 != 2 && v19 != 3 && v19 != 4)
      {
LABEL_32:
        v24 = sub_26A09DEA4();
        MEMORY[0x26D659940](v24);
      }

      sub_26A09DEE4();

      result = sub_26A09E534();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + 8 * v15) = v19;
      ++*(v4 + 16);
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_26A09449C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369858, &unk_26A09FD60);
  result = sub_26A09E2B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_26A09E194();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_26A0946C4(uint64_t a1, uint64_t a2)
{
  sub_26A09E194();
  result = sub_26A09E204();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26A094748(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26A093EBC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26A094E90();
      goto LABEL_16;
    }

    sub_26A09528C(v8 + 1);
  }

  v10 = *v4;
  sub_26A09E514();
  sub_26A09DEE4();
  result = sub_26A09E534();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26A09E4D4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26A09E4F4();
  __break(1u);
  return result;
}

uint64_t sub_26A0948C8(uint64_t result, unint64_t a2, char a3)
{
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26A09411C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_26A094FEC();
        goto LABEL_44;
      }

      sub_26A0954C4(v7 + 1);
    }

    v9 = *v3;
    sub_26A09E514();
    SmartStackAuthorization.rawValue.getter();
    sub_26A09DEE4();

    result = sub_26A09E534();
    v10 = v9 + 56;
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = 0xEF73736170794274;
      v32 = v9 + 56;
      do
      {
        v4 = *(*(v9 + 48) + 8 * a2);
        if (v4 <= 1)
        {
          v14 = 0x6F4C737961776C61;
          v15 = 0xEE006E6F69746163;
          if (!v4)
          {
            goto LABEL_23;
          }

          if (v4 == 1)
          {
            v14 = 0x636F4C6573556E69;
            v15 = 0xED00006E6F697461;
            if (v6 > 1)
            {
              goto LABEL_24;
            }

            goto LABEL_34;
          }
        }

        else
        {
          switch(v4)
          {
            case 2:
              v14 = 0xD000000000000013;
              v15 = 0x800000026A0A0D90;
              if (v6 > 1)
              {
                goto LABEL_24;
              }

              goto LABEL_34;
            case 3:
              v15 = 0xEE006E6F69746365;
              v14 = 0x746544646E756F73;
LABEL_23:
              if (v6 > 1)
              {
                goto LABEL_24;
              }

              goto LABEL_34;
            case 4:
              v14 = 0x694B68746C616568;
              v15 = v13;
              if (v6 > 1)
              {
                goto LABEL_24;
              }

              goto LABEL_34;
          }
        }

        v17 = sub_26A09DEA4();
        v19 = v18;
        sub_26A077CA8(v4);
        MEMORY[0x26D659940](v17, v19);

        v14 = 0x694B68746C616568;
        v15 = 0xEA00000000002D74;
        if (v6 > 1)
        {
LABEL_24:
          switch(v6)
          {
            case 2:
              v16 = 0x800000026A0A0D90;
              if (v14 == 0xD000000000000013)
              {
                goto LABEL_38;
              }

              goto LABEL_39;
            case 3:
              v16 = 0xEE006E6F69746365;
              if (v14 == 0x746544646E756F73)
              {
                goto LABEL_38;
              }

              goto LABEL_39;
            case 4:
              v16 = v13;
              if (v14 == 0x694B68746C616568)
              {
                goto LABEL_38;
              }

              goto LABEL_39;
          }

          goto LABEL_42;
        }

LABEL_34:
        v20 = 0x6F4C737961776C61;
        v16 = 0xEE006E6F69746163;
        if (!v6)
        {
          goto LABEL_37;
        }

        if (v6 == 1)
        {
          v20 = 0x636F4C6573556E69;
          v16 = 0xED00006E6F697461;
LABEL_37:
          if (v14 == v20)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

LABEL_42:
        v22 = v12;
        v23 = v9;
        v24 = v13;
        v25 = v14;
        v26 = sub_26A09DEA4();
        MEMORY[0x26D659940](v26);

        v27 = v25;
        v13 = v24;
        v9 = v23;
        v12 = v22;
        v10 = v32;
        v16 = 0xEA00000000002D74;
        if (v27 == 0x694B68746C616568)
        {
LABEL_38:
          if (v15 == v16)
          {
            goto LABEL_47;
          }
        }

LABEL_39:
        v21 = sub_26A09E4D4();
        sub_26A077CFC(v4);

        if (v21)
        {
          goto LABEL_48;
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_44:
  v28 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + 8 * a2) = v6;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_47:
    sub_26A077CFC(v4);

LABEL_48:
    result = sub_26A09E4F4();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v31;
  }

  return result;
}

void sub_26A094D30(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26A09449C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_26A09513C();
      goto LABEL_12;
    }

    sub_26A095820(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_26A09E194();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for AuthorizationServiceServer.ClientConnection(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_26A09E1A4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26A09E4F4();
  __break(1u);
}

void *sub_26A094E90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280369860, &unk_26A0A0390);
  v2 = *v0;
  v3 = sub_26A09E2A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26A094FEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369B10, &unk_26A0A0380);
  v2 = *v0;
  v3 = sub_26A09E2A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_26A077CA8(v18);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_26A09513C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369858, &unk_26A09FD60);
  v2 = *v0;
  v3 = sub_26A09E2A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26A09528C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280369860, &unk_26A0A0390);
  result = sub_26A09E2B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_26A09E514();

      sub_26A09DEE4();
      result = sub_26A09E534();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26A0954C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369B10, &unk_26A0A0380);
  result = sub_26A09E2B4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_33:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = v3 + 56;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  while (v10)
  {
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v20 = *(*(v3 + 48) + 8 * (v17 | (v6 << 6)));
    sub_26A09E514();
    if (v20 <= 1)
    {
      if (v20 > 1)
      {
        goto LABEL_32;
      }
    }

    else if (v20 != 2 && v20 != 3 && v20 != 4)
    {
LABEL_32:
      v29 = v3;
      v30 = v2;
      v25 = sub_26A09DEA4();
      v27 = v26;
      sub_26A077CA8(v20);
      v28 = v25;
      v2 = v30;
      MEMORY[0x26D659940](v28, v27);
      v3 = v29;
    }

    sub_26A09DEE4();

    result = sub_26A09E534();
    v13 = -1 << *(v5 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v13) >> 6;
      while (++v15 != v22 || (v21 & 1) == 0)
      {
        v23 = v15 == v22;
        if (v15 == v22)
        {
          v15 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v15);
        if (v24 != -1)
        {
          v16 = __clz(__rbit64(~v24)) + (v15 << 6);
          goto LABEL_8;
        }
      }

      goto LABEL_35;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
    *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    *(*(v5 + 48) + 8 * v16) = v20;
    ++*(v5 + 16);
  }

  v18 = v6;
  while (1)
  {
    v6 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_33;
    }

    v19 = *(v7 + 8 * v6);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v10 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_26A095820(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369858, &unk_26A09FD60);
  result = sub_26A09E2B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_26A09E194();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_26A095A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_26A095A78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  sub_26A09E514();
  SmartStackAuthorization.rawValue.getter();
  sub_26A09DEE4();

  result = sub_26A09E534();
  v6 = v4 + 56;
  v7 = -1 << *(v4 + 32);
  v8 = result & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_37:
    *a2 = 5;
    return result;
  }

  v9 = ~v7;
  v10 = 0xEF73736170794274;
  v29 = v4;
  while (1)
  {
    v11 = *(*(v4 + 48) + 8 * v8);
    if (v11 <= 1)
    {
      break;
    }

    if (v11 == 2)
    {
      v12 = 0xD000000000000013;
      v13 = 0x800000026A0A0D90;
      if (a1 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v11 == 3)
    {
      v13 = 0xEE006E6F69746365;
      v12 = 0x746544646E756F73;
LABEL_16:
      if (a1 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v11 != 4)
    {
      goto LABEL_26;
    }

    v12 = 0x694B68746C616568;
    v13 = v10;
    if (a1 <= 1)
    {
      goto LABEL_27;
    }

LABEL_17:
    switch(a1)
    {
      case 2:
        v14 = 0x800000026A0A0D90;
        if (v12 == 0xD000000000000013)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      case 3:
        v14 = 0xEE006E6F69746365;
        if (v12 == 0x746544646E756F73)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      case 4:
        v14 = v10;
        if (v12 == 0x694B68746C616568)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
    }

LABEL_35:
    v20 = v6;
    v21 = v9;
    v22 = v10;
    v23 = v12;
    v24 = sub_26A09DEA4();
    MEMORY[0x26D659940](v24);

    v25 = v23;
    v10 = v22;
    v9 = v21;
    v6 = v20;
    v4 = v29;
    v14 = 0xEA00000000002D74;
    if (v25 == 0x694B68746C616568)
    {
      goto LABEL_31;
    }

LABEL_32:
    v19 = sub_26A09E4D4();
    sub_26A077CFC(v11);

    if (v19)
    {
      goto LABEL_39;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v12 = 0x6F4C737961776C61;
  v13 = 0xEE006E6F69746163;
  if (!v11)
  {
    goto LABEL_16;
  }

  if (v11 == 1)
  {
    v12 = 0x636F4C6573556E69;
    v13 = 0xED00006E6F697461;
    if (a1 <= 1)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

LABEL_26:
  v15 = sub_26A09DEA4();
  v17 = v16;
  sub_26A077CA8(v11);
  MEMORY[0x26D659940](v15, v17);

  v12 = 0x694B68746C616568;
  v13 = 0xEA00000000002D74;
  if (a1 > 1)
  {
    goto LABEL_17;
  }

LABEL_27:
  v18 = 0x6F4C737961776C61;
  v14 = 0xEE006E6F69746163;
  if (!a1)
  {
    goto LABEL_30;
  }

  if (a1 != 1)
  {
    goto LABEL_35;
  }

  v18 = 0x636F4C6573556E69;
  v14 = 0xED00006E6F697461;
LABEL_30:
  if (v12 != v18)
  {
    goto LABEL_32;
  }

LABEL_31:
  if (v13 != v14)
  {
    goto LABEL_32;
  }

  sub_26A077CFC(v11);

LABEL_39:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v28;
  v31 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26A094FEC();
    v27 = v31;
  }

  *a2 = *(*(v27 + 48) + 8 * v8);
  result = sub_26A0962CC(v8);
  *v28 = v31;
  return result;
}

uint64_t sub_26A095EB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_26A09E514();
  sub_26A09DEE4();
  v6 = sub_26A09E534();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_26A09E4D4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26A094E90();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_26A0965D0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_26A095FEC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_26A09E254();

    if (v6)
    {
      v7 = sub_26A096174(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for AuthorizationServiceServer.ClientConnection(0);
  v10 = sub_26A09E194();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_26A09E1A4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26A09513C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_26A096794(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_26A096174(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_26A09E224();
  v5 = swift_unknownObjectRetain();
  v6 = sub_26A093CDC(v5, v4);
  v15 = v6;

  v7 = sub_26A09E194();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for AuthorizationServiceServer.ClientConnection(0);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_26A09E1A4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_26A096794(v9);
  result = sub_26A09E1A4();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26A0962CC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26A09E1F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = 0xEE006E6F69746163;
      v10 = (v8 + 1) & v7;
      v26 = v7;
      do
      {
        v11 = *(*(v3 + 48) + 8 * v6);
        sub_26A09E514();
        if (v11 <= 1)
        {
          if (v11 > 1)
          {
            goto LABEL_15;
          }
        }

        else if (v11 != 2 && v11 != 3 && v11 != 4)
        {
LABEL_15:
          v12 = v4;
          v13 = v9;
          v14 = sub_26A09DEA4();
          v16 = v15;
          sub_26A077CA8(v11);
          v17 = v14;
          v9 = v13;
          v4 = v12;
          v7 = v26;
          MEMORY[0x26D659940](v17, v16);
        }

        sub_26A09DEE4();

        v18 = sub_26A09E534();
        sub_26A077CFC(v11);
        v19 = v18 & v7;
        if (v2 >= v10)
        {
          if (v19 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v10)
        {
          goto LABEL_21;
        }

        if (v2 >= v19)
        {
LABEL_21:
          v20 = *(v3 + 48);
          v21 = (v20 + 8 * v2);
          v22 = (v20 + 8 * v6);
          if (v2 != v6 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_26A0965D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26A09E1F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_26A09E514();

        sub_26A09DEE4();
        v10 = sub_26A09E534();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_26A096794(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26A09E1F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_26A09E194();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_26A096934(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        sub_26A077CA8(v11);
        sub_26A095A78(v11, &v12);
        sub_26A077CFC(v11);
        sub_26A07800C(v12);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_26A096A64(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v100 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1;
  v77 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1 << *(a1 + 32);
  v86 = ~v7;
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = (63 - v7) >> 6;
  v88 = 0x800000026A0A0D90;
  v90 = (a2 + 56);

  v13 = 0;
  v85 = v3;
  v82 = v10;
  v84 = v11;
  v83 = v6;
  if (!v9)
  {
LABEL_6:
    v14 = v13;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        v33 = v4;
        v34 = v6;
        goto LABEL_128;
      }

      v9 = *(v6 + 8 * v15);
      ++v14;
      if (v9)
      {
        v13 = v15;
        goto LABEL_11;
      }
    }

LABEL_131:
    __break(1u);
LABEL_132:
    v70 = v12;

    v71 = v70;
    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_63;
    }

    v72 = swift_slowAlloc();
    memcpy(v72, v90, v71);
    v73 = v77;
    sub_26A097810(v72, v78, v3, v2, &v95);
    v75 = v74;

    if (!v73)
    {

      MEMORY[0x26D65A520](v72, -1, -1);
      v3 = v75;
      goto LABEL_127;
    }

    result = MEMORY[0x26D65A520](v72, -1, -1);
    __break(1u);
    return result;
  }

  while (1)
  {
LABEL_11:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = *(*(v4 + 48) + ((v13 << 9) | (8 * v16)));
    v95 = v4;
    v96 = v6;
    v97 = v86;
    v98 = v13;
    v87 = v13;
    v99 = v9;
    sub_26A09E514();
    if (v17 <= 1)
    {
      if (v17 > 1)
      {
        goto LABEL_20;
      }
    }

    else if (v17 != 2 && v17 != 3 && v17 != 4)
    {
LABEL_20:
      v91 = 0x694B68746C616568;
      v92 = 0xEA00000000002D74;
      v18 = sub_26A09DEA4();
      v20 = v19;
      sub_26A077CA8(v17);
      MEMORY[0x26D659940](v18, v20);
    }

    sub_26A09DEE4();

    v21 = sub_26A09E534();
    v22 = -1 << *(v3 + 32);
    v2 = v21 & ~v22;
    v6 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & *(v90 + (v2 >> 6))) != 0)
    {
      break;
    }

LABEL_57:
    sub_26A077CFC(v17);
    v4 = v84;
    v6 = v83;
    v10 = v82;
    v13 = v87;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v89 = ~v22;
  while (1)
  {
    v23 = *(*(v3 + 48) + 8 * v2);
    if (v23 <= 1)
    {
      break;
    }

    if (v23 == 2)
    {
      v24 = 0xD000000000000013;
      v25 = v88;
      if (v17 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_34;
    }

    if (v23 == 3)
    {
      v25 = 0xEE006E6F69746365;
      v24 = 0x746544646E756F73;
LABEL_43:
      if (v17 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_34;
    }

    if (v23 != 4)
    {
      goto LABEL_53;
    }

    v24 = 0x694B68746C616568;
    v25 = 0xEF73736170794274;
    if (v17 > 1)
    {
      goto LABEL_44;
    }

LABEL_34:
    v26 = 0x6F4C737961776C61;
    v27 = 0xEE006E6F69746163;
    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_55;
      }

      v26 = 0x636F4C6573556E69;
      v27 = 0xED00006E6F697461;
    }

    if (v24 == v26)
    {
      goto LABEL_38;
    }

LABEL_39:
    v28 = sub_26A09E4D4();
    sub_26A077CFC(v23);

    if (v28)
    {
      goto LABEL_62;
    }

    v2 = (v2 + 1) & v89;
    v6 = v2 >> 6;
    v4 = 1 << v2;
    if ((*(v90 + (v2 >> 6)) & (1 << v2)) == 0)
    {
      goto LABEL_57;
    }
  }

  v24 = 0x6F4C737961776C61;
  v25 = 0xEE006E6F69746163;
  if (!v23)
  {
    goto LABEL_43;
  }

  if (v23 == 1)
  {
    v24 = 0x636F4C6573556E69;
    v25 = 0xED00006E6F697461;
    if (v17 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

LABEL_53:
  v93 = 0x694B68746C616568;
  v94 = 0xEA00000000002D74;
  v29 = sub_26A09DEA4();
  v31 = v30;
  sub_26A077CA8(v23);
  MEMORY[0x26D659940](v29, v31);

  v24 = 0x694B68746C616568;
  v25 = 0xEA00000000002D74;
  if (v17 <= 1)
  {
    goto LABEL_34;
  }

LABEL_44:
  switch(v17)
  {
    case 2:
      v27 = v88;
      if (v24 != 0xD000000000000013)
      {
        goto LABEL_39;
      }

      break;
    case 3:
      v27 = 0xEE006E6F69746365;
      if (v24 != 0x746544646E756F73)
      {
        goto LABEL_39;
      }

      break;
    case 4:
      v27 = 0xEF73736170794274;
      if (v24 != 0x694B68746C616568)
      {
        goto LABEL_39;
      }

      break;
    default:
LABEL_55:
      v93 = 0x694B68746C616568;
      v94 = 0xEA00000000002D74;
      v32 = sub_26A09DEA4();
      MEMORY[0x26D659940](v32);
      v3 = v85;

      v27 = 0xEA00000000002D74;
      if (v24 != 0x694B68746C616568)
      {
        goto LABEL_39;
      }

      break;
  }

LABEL_38:
  if (v25 != v27)
  {
    goto LABEL_39;
  }

  sub_26A077CFC(v23);

LABEL_62:
  sub_26A077CFC(v17);
  v36 = *(v3 + 32);
  v78 = ((1 << v36) + 63) >> 6;
  v12 = 8 * v78;
  if ((v36 & 0x3Fu) > 0xD)
  {
    goto LABEL_132;
  }

LABEL_63:
  v79 = &v76;
  MEMORY[0x28223BE20](v35);
  v38 = &v76 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v38, v90, v37);
  v39 = *&v38[8 * v6] & ~v4;
  v40 = *(v3 + 16);
  v81 = v38;
  *&v38[8 * v6] = v39;
  v41 = v40 - 1;
  v42 = v84;
  v43 = v83;
  v44 = v82;
  v45 = v87;
LABEL_64:
  v80 = v41;
LABEL_66:
  while (2)
  {
    if (v9)
    {
LABEL_72:
      v48 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v49 = *(*(v42 + 48) + ((v45 << 9) | (8 * v48)));
      v95 = v42;
      v96 = v43;
      v97 = v86;
      v98 = v45;
      v87 = v45;
      v99 = v9;
      sub_26A09E514();
      if (v49 <= 1)
      {
        if (v49 <= 1)
        {
          goto LABEL_82;
        }
      }

      else if (v49 == 2 || v49 == 3 || v49 == 4)
      {
        goto LABEL_82;
      }

      v91 = 0x694B68746C616568;
      v92 = 0xEA00000000002D74;
      v50 = sub_26A09DEA4();
      v52 = v51;
      sub_26A077CA8(v49);
      MEMORY[0x26D659940](v50, v52);

LABEL_82:
      sub_26A09DEE4();

      v53 = sub_26A09E534();
      v54 = -1 << *(v3 + 32);
      v2 = v53 & ~v54;
      v4 = v2 >> 6;
      v6 = 1 << v2;
      if (((1 << v2) & *(v90 + (v2 >> 6))) == 0)
      {
LABEL_65:
        sub_26A077CFC(v49);
        v42 = v84;
        v43 = v83;
        v44 = v82;
        v45 = v87;
        continue;
      }

      v89 = ~v54;
      while (1)
      {
        v55 = *(*(v3 + 48) + 8 * v2);
        if (v55 <= 1)
        {
          v56 = 0x6F4C737961776C61;
          v57 = 0xEE006E6F69746163;
          if (!v55)
          {
            goto LABEL_104;
          }

          if (v55 == 1)
          {
            v56 = 0x636F4C6573556E69;
            v57 = 0xED00006E6F697461;
            if (v49 <= 1)
            {
              goto LABEL_95;
            }

            goto LABEL_105;
          }
        }

        else
        {
          switch(v55)
          {
            case 2:
              v56 = 0xD000000000000013;
              v57 = v88;
              if (v49 <= 1)
              {
                goto LABEL_95;
              }

              goto LABEL_105;
            case 3:
              v57 = 0xEE006E6F69746365;
              v56 = 0x746544646E756F73;
LABEL_104:
              if (v49 <= 1)
              {
                goto LABEL_95;
              }

              goto LABEL_105;
            case 4:
              v56 = 0x694B68746C616568;
              v57 = 0xEF73736170794274;
              if (v49 <= 1)
              {
                goto LABEL_95;
              }

              goto LABEL_105;
          }
        }

        v93 = 0x694B68746C616568;
        v94 = 0xEA00000000002D74;
        v61 = sub_26A09DEA4();
        v63 = v62;
        sub_26A077CA8(v55);
        MEMORY[0x26D659940](v61, v63);

        v56 = v93;
        v57 = v94;
        if (v49 <= 1)
        {
LABEL_95:
          v58 = 0x6F4C737961776C61;
          v59 = 0xEE006E6F69746163;
          if (v49)
          {
            if (v49 != 1)
            {
              goto LABEL_116;
            }

            v58 = 0x636F4C6573556E69;
            v59 = 0xED00006E6F697461;
          }

          if (v56 != v58)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

LABEL_105:
        switch(v49)
        {
          case 2:
            v59 = v88;
            if (v56 != 0xD000000000000013)
            {
              goto LABEL_100;
            }

            break;
          case 3:
            v59 = 0xEE006E6F69746365;
            if (v56 != 0x746544646E756F73)
            {
              goto LABEL_100;
            }

            break;
          case 4:
            v59 = 0xEF73736170794274;
            if (v56 != 0x694B68746C616568)
            {
              goto LABEL_100;
            }

            break;
          default:
LABEL_116:
            v93 = 0x694B68746C616568;
            v94 = 0xEA00000000002D74;
            v64 = v56;
            v65 = sub_26A09DEA4();
            MEMORY[0x26D659940](v65);

            v66 = v64;
            v3 = v85;
            v59 = v94;
            if (v66 != v93)
            {
              goto LABEL_100;
            }

            break;
        }

LABEL_99:
        if (v57 == v59)
        {
          sub_26A077CFC(v55);

LABEL_119:
          sub_26A077CFC(v49);
          v67 = v81[v4];
          v81[v4] = v67 & ~v6;
          v42 = v84;
          v43 = v83;
          v44 = v82;
          v45 = v87;
          if ((v67 & v6) != 0)
          {
            v41 = v80 - 1;
            if (__OFSUB__(v80, 1))
            {
              __break(1u);
            }

            if (v80 == 1)
            {

              v3 = MEMORY[0x277D84FA0];
              goto LABEL_127;
            }

            goto LABEL_64;
          }

          goto LABEL_66;
        }

LABEL_100:
        v60 = sub_26A09E4D4();
        sub_26A077CFC(v55);

        if (v60)
        {
          goto LABEL_119;
        }

        v2 = (v2 + 1) & v89;
        v4 = v2 >> 6;
        v6 = 1 << v2;
        if ((*(v90 + (v2 >> 6)) & (1 << v2)) == 0)
        {
          goto LABEL_65;
        }
      }
    }

    break;
  }

  v46 = v45;
  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_131;
    }

    if (v47 >= v44)
    {
      break;
    }

    v9 = *(v43 + 8 * v47);
    ++v46;
    if (v9)
    {
      v45 = v47;
      goto LABEL_72;
    }
  }

  if (v44 <= v45 + 1)
  {
    v68 = v45 + 1;
  }

  else
  {
    v68 = v44;
  }

  v95 = v42;
  v96 = v43;
  v97 = v86;
  v98 = v68 - 1;
  v99 = 0;
  v3 = sub_26A097E0C(v81, v78, v80, v3);
LABEL_127:
  v33 = v95;
  v34 = v96;
LABEL_128:
  sub_26A0790E8(v33, v34);
  return v3;
}

void sub_26A097810(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v40 = a3 + 56;
  v37 = a5;
LABEL_2:
  v35 = v7;
LABEL_4:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_10:
      v13 = *(*(*a5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_26A09E514();
      if (v13 <= 1)
      {
        if (v13 <= 1)
        {
          goto LABEL_20;
        }
      }

      else if (v13 == 2 || v13 == 3 || v13 == 4)
      {
        goto LABEL_20;
      }

      v14 = sub_26A09DEA4();
      v16 = v15;
      sub_26A077CA8(v13);
      MEMORY[0x26D659940](v14, v16);

LABEL_20:
      sub_26A09DEE4();

      v17 = sub_26A09E534();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v40 + 8 * (v19 >> 6))) == 0)
      {
LABEL_3:
        sub_26A077CFC(v13);
        a5 = v37;
        continue;
      }

      v39 = ~v18;
      while (1)
      {
        v22 = *(*(v5 + 48) + 8 * v19);
        if (v22 <= 1)
        {
          v23 = 0x6F4C737961776C61;
          v24 = 0xEE006E6F69746163;
          if (!v22)
          {
            goto LABEL_35;
          }

          if (v22 == 1)
          {
            v23 = 0x636F4C6573556E69;
            v24 = 0xED00006E6F697461;
            if (v13 > 1)
            {
              goto LABEL_36;
            }

            goto LABEL_46;
          }
        }

        else
        {
          switch(v22)
          {
            case 2:
              v23 = 0xD000000000000013;
              v24 = 0x800000026A0A0D90;
              if (v13 > 1)
              {
                goto LABEL_36;
              }

              goto LABEL_46;
            case 3:
              v24 = 0xEE006E6F69746365;
              v23 = 0x746544646E756F73;
LABEL_35:
              if (v13 > 1)
              {
                goto LABEL_36;
              }

              goto LABEL_46;
            case 4:
              v23 = 0x694B68746C616568;
              v24 = 0xEF73736170794274;
              if (v13 > 1)
              {
                goto LABEL_36;
              }

              goto LABEL_46;
          }
        }

        v26 = sub_26A09DEA4();
        v28 = v27;
        sub_26A077CA8(v22);
        MEMORY[0x26D659940](v26, v28);

        v23 = 0x694B68746C616568;
        v24 = 0xEA00000000002D74;
        if (v13 > 1)
        {
LABEL_36:
          switch(v13)
          {
            case 2:
              v25 = 0x800000026A0A0D90;
              if (v23 != 0xD000000000000013)
              {
                goto LABEL_51;
              }

              break;
            case 3:
              v25 = 0xEE006E6F69746365;
              if (v23 != 0x746544646E756F73)
              {
                goto LABEL_51;
              }

              break;
            case 4:
              v25 = 0xEF73736170794274;
              if (v23 != 0x694B68746C616568)
              {
                goto LABEL_51;
              }

              break;
            default:
              goto LABEL_54;
          }

          goto LABEL_50;
        }

LABEL_46:
        v29 = 0x6F4C737961776C61;
        v25 = 0xEE006E6F69746163;
        if (v13)
        {
          if (v13 != 1)
          {
LABEL_54:
            v31 = sub_26A09DEA4();
            MEMORY[0x26D659940](v31);
            v5 = a3;

            v25 = 0xEA00000000002D74;
            if (v23 != 0x694B68746C616568)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }

          v29 = 0x636F4C6573556E69;
          v25 = 0xED00006E6F697461;
        }

        if (v23 != v29)
        {
          goto LABEL_51;
        }

LABEL_50:
        if (v24 == v25)
        {
          sub_26A077CFC(v22);

LABEL_57:
          sub_26A077CFC(v13);
          a5 = v37;
          v32 = a1[v20];
          a1[v20] = v32 & ~v21;
          if ((v32 & v21) != 0)
          {
            v7 = v35 - 1;
            if (__OFSUB__(v35, 1))
            {
              goto LABEL_66;
            }

            if (v35 == 1)
            {
              return;
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

LABEL_51:
        v30 = sub_26A09E4D4();
        sub_26A077CFC(v22);

        if (v30)
        {
          goto LABEL_57;
        }

        v19 = (v19 + 1) & v39;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if ((*(v40 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      return;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v33 = v8 + 1;
  }

  else
  {
    v33 = (a5[2] + 64) >> 6;
  }

  a5[3] = v33 - 1;
  a5[4] = 0;

  sub_26A097E0C(a1, a2, v35, v5);
}

uint64_t sub_26A097E0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369B10, &unk_26A0A0380);
  result = sub_26A09E2D4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_26A09E514();
    if (v16 <= 1)
    {
      if (v16 > 1)
      {
        goto LABEL_26;
      }
    }

    else if (v16 != 2 && v16 != 3 && v16 != 4)
    {
LABEL_26:
      v28 = sub_26A09DEA4();
      v29 = v4;
      v18 = v17;
      sub_26A077CA8(v16);
      MEMORY[0x26D659940](v28, v18);
      v4 = v29;
    }

    sub_26A09DEE4();

    result = sub_26A09E534();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_37;
        }
      }

      goto LABEL_41;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_37:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_42;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t _s18SmartStackSettings23AuthorizationDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[6];
  v6 = a1[8];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v36 = *(a2 + 40);
  v37 = a1[5];
  v11 = *(a2 + 64);
  v34 = a1[7];
  v35 = *(a2 + 56);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_26A09E4D4() & 1) == 0 || (sub_26A086CF8(v2, v7) & 1) == 0)
  {
    return 0;
  }

  sub_26A099778(v3, v8);
  v13 = v12;
  result = 0;
  if ((v13 & 1) != 0 && ((v4 ^ v9) & 1) == 0)
  {
    v15 = v5;
    if (v5)
    {
      v16 = v6;
      v17 = v34;
      v18 = v37;
      v19 = v11;
      if (v10)
      {
        if (v37 == v36 && v15 == v10 || (sub_26A09E4D4() & 1) != 0)
        {
          if (!v6)
          {
            sub_26A095A34(v37, v15, v34, 0);
            v30 = 0;
            if (!v11)
            {
              sub_26A095A34(v36, v10, v35, 0);
              sub_26A095A34(v37, v15, v34, 0);
              v20 = v36;
              v21 = v10;
              v22 = v35;
              v23 = 0;
              goto LABEL_32;
            }

            goto LABEL_24;
          }

          if (v11)
          {
            if (v34 == v35 && v6 == v11)
            {
              sub_26A095A34(v37, v15, v34, v6);
              sub_26A095A34(v36, v10, v34, v6);
              sub_26A095A34(v37, v15, v34, v6);
              v20 = v36;
              v21 = v10;
              v22 = v34;
              v23 = v6;
LABEL_32:
              sub_26A077CB8(v20, v21, v22, v23);
LABEL_33:

              v31 = v37;
              v32 = v15;
              goto LABEL_34;
            }

            v33 = sub_26A09E4D4();
            sub_26A095A34(v37, v15, v34, v6);
            sub_26A095A34(v36, v10, v35, v11);
            sub_26A095A34(v37, v15, v34, v6);
            sub_26A077CB8(v36, v10, v35, v11);
            if (v33)
            {
              goto LABEL_33;
            }

            goto LABEL_25;
          }
        }

        sub_26A095A34(v37, v15, v34, v6);
        v30 = v6;
LABEL_24:
        sub_26A095A34(v36, v10, v35, v11);
        sub_26A095A34(v37, v15, v34, v30);
        sub_26A077CB8(v36, v10, v35, v11);
LABEL_25:

        v26 = v37;
        v27 = v15;
        v28 = v34;
        v29 = v6;
        goto LABEL_26;
      }

      sub_26A095A34(v37, v15, v34, v6);
      v25 = v35;
      v24 = v36;
      sub_26A095A34(v36, 0, v35, v19);
      sub_26A095A34(v37, v15, v34, v6);
    }

    else
    {
      v18 = v37;
      v17 = v34;
      v16 = v6;
      sub_26A095A34(v37, 0, v34, v6);
      v19 = v11;
      if (!v10)
      {
        sub_26A095A34(v36, 0, v35, v11);
        v31 = v37;
        v32 = 0;
LABEL_34:
        sub_26A077CB8(v31, v32, v17, v16);
        return 1;
      }

      v25 = v35;
      v24 = v36;
      sub_26A095A34(v36, v10, v35, v19);
    }

    sub_26A077CB8(v18, v15, v17, v16);
    v26 = v24;
    v27 = v10;
    v28 = v25;
    v29 = v19;
LABEL_26:
    sub_26A077CB8(v26, v27, v28, v29);
    return 0;
  }

  return result;
}

unint64_t sub_26A098528()
{
  result = qword_280369A60;
  if (!qword_280369A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369A60);
  }

  return result;
}

unint64_t sub_26A09857C()
{
  result = qword_280369A70;
  if (!qword_280369A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369A70);
  }

  return result;
}

unint64_t sub_26A0985D0()
{
  result = qword_280369A88;
  if (!qword_280369A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369A88);
  }

  return result;
}

unint64_t sub_26A098624()
{
  result = qword_280369A90;
  if (!qword_280369A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369A90);
  }

  return result;
}

uint64_t sub_26A098678(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280369278, &qword_26A09F488);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A0986F0()
{
  result = qword_280369AA8;
  if (!qword_280369AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369AA8);
  }

  return result;
}

uint64_t sub_26A098744(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280369A78, &qword_26A09FF80);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A0987D4()
{
  result = qword_280369AB8;
  if (!qword_280369AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369AB8);
  }

  return result;
}

unint64_t sub_26A098828()
{
  result = qword_280369AC0;
  if (!qword_280369AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369AC0);
  }

  return result;
}

unint64_t sub_26A09887C()
{
  result = qword_280369AD0;
  if (!qword_280369AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369AD0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SmartStackSettings23AuthorizationDescriptorV04ViewE0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26A09890C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_26A098954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A0989C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26A098A08(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AuthorizationDescriptor.ViewDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthorizationDescriptor.ViewDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AuthorizationDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A098D28()
{
  result = qword_280369AE0;
  if (!qword_280369AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369AE0);
  }

  return result;
}

unint64_t sub_26A098D80()
{
  result = qword_280369AE8;
  if (!qword_280369AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369AE8);
  }

  return result;
}

unint64_t sub_26A098DD8()
{
  result = qword_280369AF0;
  if (!qword_280369AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369AF0);
  }

  return result;
}

unint64_t sub_26A098E30()
{
  result = qword_280369AF8;
  if (!qword_280369AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369AF8);
  }

  return result;
}

unint64_t sub_26A098E88()
{
  result = qword_280369B00;
  if (!qword_280369B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B00);
  }

  return result;
}

unint64_t sub_26A098EE0()
{
  result = qword_280369B08;
  if (!qword_280369B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B08);
  }

  return result;
}

uint64_t sub_26A098F34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x800000026A0A14A0 == a2 || (sub_26A09E4D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026A0A14C0 == a2 || (sub_26A09E4D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026A0A1480 == a2 || (sub_26A09E4D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026A0A0DD0 == a2 || (sub_26A09E4D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6373654477656976 && a2 == 0xEE00726F74706972)
  {

    return 4;
  }

  else
  {
    v5 = sub_26A09E4D4();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

double AuthorizationDescriptorCollection.descriptor(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_26A099F20(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 72 * v6;
    v16[0] = *v8;
    v10 = *(v8 + 32);
    v9 = *(v8 + 48);
    v11 = *(v8 + 64);
    v16[1] = *(v8 + 16);
    v16[2] = v10;
    v17 = v11;
    v16[3] = v9;
    v12 = *(v8 + 48);
    *(a3 + 32) = *(v8 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v8 + 64);
    v13 = *(v8 + 16);
    *a3 = *v8;
    *(a3 + 16) = v13;
    sub_26A077C4C(v16, v15);
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26A0991A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v60 = (v6 + 63) >> 6;
  v62 = result;
  if (v8)
  {
    do
    {
      v9 = __clz(__rbit64(v8));
      v63 = (v8 - 1) & v8;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(v3 + 56) + 72 * v12;
      v17 = *(v16 + 64);
      v19 = *(v16 + 32);
      v18 = *(v16 + 48);
      v76 = *(v16 + 16);
      v75 = *v16;
      *v77 = v19;
      *&v77[16] = v18;
      v78 = v17;
      v66 = v18;
      v68 = v76;
      v64 = v19;
      v65 = v75;

      sub_26A077C4C(&v75, &v71);
      if (!v14)
      {
        return 1;
      }

      v75 = v65;
      v76 = v68;
      *v77 = v64;
      *&v77[16] = v66;
      v78 = v17;
      v20 = sub_26A099F20(v15, v14);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_47;
      }

      v23 = *(v2 + 56) + 72 * v20;
      v71 = *v23;
      v25 = *(v23 + 32);
      v24 = *(v23 + 48);
      v26 = *(v23 + 16);
      v74 = *(v23 + 64);
      *v73 = v25;
      *&v73[16] = v24;
      v72 = v26;
      if (v71 != v75 && (sub_26A09E4D4() & 1) == 0)
      {
        goto LABEL_47;
      }

      v27 = v72;
      v28 = v76;
      sub_26A077C4C(&v71, v70);
      if ((sub_26A086CF8(v27, v28) & 1) == 0)
      {
        goto LABEL_46;
      }

      sub_26A099778(*(&v72 + 1), *(&v76 + 1));
      if ((v29 & 1) == 0 || v77[0] != v73[0])
      {
        goto LABEL_46;
      }

      v30 = *&v73[8];
      v32 = *&v73[16];
      v31 = v74;
      v34 = *&v77[16];
      v33 = *&v77[8];
      v35 = *&v77[24];
      v36 = v78;
      if (*&v73[16])
      {
        if (!*&v77[16])
        {
          v51 = *&v77[24];
          v52 = *&v77[8];
          sub_26A095A34(*&v73[8], *&v73[16], *&v73[24], v74);
          sub_26A095A34(v52, 0, v51, v36);
          sub_26A095A34(v30, v32, *(&v32 + 1), v31);

          goto LABEL_39;
        }

        v69 = *&v77[16];
        if (*&v73[8] != *&v77[8])
        {
          v37 = *&v77[24];
          v38 = *&v77[8];
          v39 = sub_26A09E4D4();
          v35 = v37;
          v33 = v38;
          if ((v39 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        if (v31)
        {
          if (!v36)
          {
            v37 = v35;
            v38 = v33;
LABEL_41:
            sub_26A095A34(v30, v32, *(&v32 + 1), v31);
            v58 = v38;
            v47 = v32;
            v49 = v69;
LABEL_43:
            v59 = v58;
            sub_26A095A34(v58, v49, v37, v32);
            sub_26A095A34(v30, v47, *(&v32 + 1), v31);
            sub_26A077CB8(v59, v49, v37, v32);
            v40 = v47;
LABEL_44:

            v54 = v30;
            v55 = v40;
            v56 = *(&v32 + 1);
            v57 = v31;
            goto LABEL_45;
          }

          v40 = v32;
          v41 = v33;
          if (*(&v32 + 1) == v35 && v31 == v36)
          {
            sub_26A095A34(v30, v32, *(&v32 + 1), v31);
            sub_26A095A34(v41, v69, *(&v32 + 1), v31);
            sub_26A095A34(v30, v32, *(&v32 + 1), v31);
            sub_26A077CB8(v41, v69, *(&v32 + 1), v31);
          }

          else
          {
            v50 = v35;
            v67 = sub_26A09E4D4();
            sub_26A095A34(v30, v32, *(&v32 + 1), v31);
            sub_26A095A34(v41, v69, v50, v36);
            sub_26A095A34(v30, v32, *(&v32 + 1), v31);
            sub_26A077CB8(v41, v69, v50, v36);
            if ((v67 & 1) == 0)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          v37 = v35;
          v46 = v33;
          v47 = v32;
          sub_26A095A34(v30, v32, *(&v32 + 1), 0);
          v48 = v36;
          v49 = v69;
          if (v48)
          {
            v31 = 0;
            v58 = v46;
            goto LABEL_43;
          }

          sub_26A095A34(v46, v69, v37, 0);
          sub_26A095A34(v30, v32, *(&v32 + 1), 0);
          sub_26A077CB8(v46, v69, v37, 0);
          v40 = v32;
        }

        v44 = v30;
        v45 = v40;
      }

      else
      {
        v42 = *&v77[24];
        v43 = *&v77[8];
        sub_26A095A34(*&v73[8], 0, *&v73[24], v74);
        if (v34)
        {
          v52 = v43;
          v53 = v43;
          v51 = v42;
          sub_26A095A34(v53, v34, v42, v36);
LABEL_39:
          sub_26A077CB8(v30, v32, *(&v32 + 1), v31);
          v54 = v52;
          v55 = v34;
          v56 = v51;
          v57 = v36;
LABEL_45:
          sub_26A077CB8(v54, v55, v56, v57);
LABEL_46:
          sub_26A077BF8(&v71);
LABEL_47:
          sub_26A077BF8(&v75);
          return 0;
        }

        sub_26A095A34(v43, 0, v42, v36);
        v44 = v30;
        v45 = 0;
      }

      sub_26A077CB8(v44, v45, *(&v32 + 1), v31);
      sub_26A077BF8(&v71);
      result = sub_26A077BF8(&v75);
      v3 = v62;
      v8 = v63;
      v2 = a2;
    }

    while (v63);
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v60)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v63 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_26A099778(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 48) + 8 * v12);
      v14 = *(*(a1 + 56) + v12);
      sub_26A077CA8(v13);
      if (v13 != 5)
      {
        v15 = sub_26A099F98(v13);
        v17 = v16;
        sub_26A077CFC(v13);
        if ((v17 & 1) != 0 && v14 == *(*(a2 + 56) + v15))
        {
          continue;
        }
      }

      return;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_26A0998C4()
{
  result = sub_26A077384(MEMORY[0x277D84F90]);
  qword_280369B18 = result;
  return result;
}

uint64_t static AuthorizationDescriptorCollection.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_280369108 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_280369B18;
}

uint64_t sub_26A0999A0()
{
  sub_26A09E514();
  MEMORY[0x26D659F60](0);
  return sub_26A09E534();
}

uint64_t sub_26A099A0C(uint64_t a1)
{
  sub_26A09E514();
  MEMORY[0x26D659F60](0);
  return sub_26A09E534();
}

uint64_t sub_26A099A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000026A0A12B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_26A09E4D4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_26A099B08(uint64_t a1)
{
  v2 = sub_26A09A884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A099B44(uint64_t a1)
{
  v2 = sub_26A09A884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthorizationDescriptorCollection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369B20, &qword_26A0A03A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A09A884();

  sub_26A09E554();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369B30, &qword_26A0A03A8);
  sub_26A09A92C(&qword_280369B38, sub_26A09A8D8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_26A09E494();

  return (*(v4 + 8))(v6, v3);
}

uint64_t AuthorizationDescriptorCollection.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369B48, &qword_26A0A03B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A09A884();
  sub_26A09E544();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369B30, &qword_26A0A03A8);
    sub_26A09A92C(&qword_280369B50, sub_26A09A9B0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_26A09E424();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_26A099F20(uint64_t a1, uint64_t a2)
{
  sub_26A09E514();
  sub_26A09DEE4();
  v4 = sub_26A09E534();

  return sub_26A09A0FC(a1, a2, v4);
}

unint64_t sub_26A099F98(uint64_t a1)
{
  sub_26A09E514();
  SmartStackAuthorization.rawValue.getter();
  sub_26A09DEE4();

  v2 = sub_26A09E534();

  return sub_26A09A1B4(a1, v2);
}

unint64_t sub_26A09A024(uint64_t a1)
{
  sub_26A09DEA4();
  sub_26A09E514();
  sub_26A09DEE4();
  v2 = sub_26A09E534();

  return sub_26A09A558(a1, v2);
}

unint64_t sub_26A09A0B8(uint64_t a1)
{
  v2 = sub_26A09E264();

  return sub_26A09A65C(a1, v2);
}

unint64_t sub_26A09A0FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26A09E4D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26A09A1B4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = 0xEF73736170794274;
    while (1)
    {
      v10 = *(*(v6 + 48) + 8 * v5);
      if (v10 <= 1)
      {
        v11 = 0x6F4C737961776C61;
        v12 = 0xEE006E6F69746163;
        if (!v10)
        {
          goto LABEL_16;
        }

        if (v10 == 1)
        {
          v11 = 0x636F4C6573556E69;
          v12 = 0xED00006E6F697461;
          if (a1 > 1)
          {
            goto LABEL_17;
          }

          goto LABEL_27;
        }
      }

      else
      {
        switch(v10)
        {
          case 2:
            v11 = 0xD000000000000013;
            v12 = 0x800000026A0A0D90;
            if (a1 > 1)
            {
              goto LABEL_17;
            }

            goto LABEL_27;
          case 3:
            v12 = 0xEE006E6F69746365;
            v11 = 0x746544646E756F73;
LABEL_16:
            if (a1 > 1)
            {
              goto LABEL_17;
            }

            goto LABEL_27;
          case 4:
            v11 = 0x694B68746C616568;
            v12 = v9;
            if (a1 > 1)
            {
              goto LABEL_17;
            }

            goto LABEL_27;
        }
      }

      v14 = sub_26A09DEA4();
      v16 = v15;
      sub_26A077CA8(v10);
      MEMORY[0x26D659940](v14, v16);

      v11 = 0x694B68746C616568;
      v12 = 0xEA00000000002D74;
      if (a1 > 1)
      {
LABEL_17:
        switch(a1)
        {
          case 2:
            v13 = 0x800000026A0A0D90;
            if (v11 != 0xD000000000000013)
            {
              goto LABEL_32;
            }

            break;
          case 3:
            v13 = 0xEE006E6F69746365;
            if (v11 != 0x746544646E756F73)
            {
              goto LABEL_32;
            }

            break;
          case 4:
            v13 = v9;
            if (v11 != 0x694B68746C616568)
            {
              goto LABEL_32;
            }

            break;
          default:
            goto LABEL_35;
        }

        goto LABEL_31;
      }

LABEL_27:
      v17 = 0x6F4C737961776C61;
      v13 = 0xEE006E6F69746163;
      if (a1)
      {
        if (a1 != 1)
        {
LABEL_35:
          v19 = v3;
          v20 = v8;
          v21 = v9;
          v22 = v11;
          v23 = sub_26A09DEA4();
          MEMORY[0x26D659940](v23);

          v24 = v22;
          v9 = v21;
          v8 = v20;
          v3 = v19;
          v6 = v26;
          v13 = 0xEA00000000002D74;
          if (v24 != 0x694B68746C616568)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v17 = 0x636F4C6573556E69;
        v13 = 0xED00006E6F697461;
      }

      if (v11 != v17)
      {
        goto LABEL_32;
      }

LABEL_31:
      if (v12 == v13)
      {
        sub_26A077CFC(v10);

        return v5;
      }

LABEL_32:
      v18 = sub_26A09E4D4();
      sub_26A077CFC(v10);

      if ((v18 & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_26A09A558(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26A09DEA4();
      v8 = v7;
      if (v6 == sub_26A09DEA4() && v8 == v9)
      {
        break;
      }

      v11 = sub_26A09E4D4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26A09A65C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26A08782C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D659CB0](v9, a1);
      sub_26A09B880(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t *sub_26A09A724(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_26A09AC94(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_26A09AE80(v8, v4, v2);
  result = MEMORY[0x26D65A520](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t sub_26A09A884()
{
  result = qword_280369B28;
  if (!qword_280369B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B28);
  }

  return result;
}

unint64_t sub_26A09A8D8()
{
  result = qword_280369B40;
  if (!qword_280369B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B40);
  }

  return result;
}

uint64_t sub_26A09A92C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280369B30, &qword_26A0A03A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A09A9B0()
{
  result = qword_280369B58;
  if (!qword_280369B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B58);
  }

  return result;
}

uint64_t sub_26A09AA10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26A09AA58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationDescriptorCollection.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AuthorizationDescriptorCollection.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_26A09AB90()
{
  result = qword_280369B60;
  if (!qword_280369B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B60);
  }

  return result;
}

unint64_t sub_26A09ABE8()
{
  result = qword_280369B68;
  if (!qword_280369B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B68);
  }

  return result;
}

unint64_t sub_26A09AC40()
{
  result = qword_280369B70;
  if (!qword_280369B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B70);
  }

  return result;
}

unint64_t *sub_26A09AC94(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v25 = result;
  v37 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 56) + 72 * v13;
    v32 = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v36 = *(v14 + 64);
    v34 = v16;
    v35 = v15;
    v33 = v17;
    v18 = *(v14 + 48);
    v29 = *(v14 + 32);
    v30 = v18;
    v31 = *(v14 + 64);
    v19 = *(v14 + 16);
    v27 = *v14;
    v28 = v19;

    sub_26A077C4C(&v32, v26);
    AuthorizationDescriptor.eligibleAuthorizations.getter();
    v21 = *(v20 + 16);

    if (v21)
    {
      sub_26A077BF8(&v32);

      goto LABEL_15;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    v27 = v32;
    v28 = v33;
    AuthorizationDescriptor.eligibleForModalIncidentalUsePrompt.getter();
    v23 = v22;
    sub_26A077BF8(&v32);

    if (v23)
    {
LABEL_15:
      *(v25 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_19;
      }

      ++v37;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_26A09B5FC(v25, a2, v37, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t *sub_26A09AE80(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_26A09AC94(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_26A09AEF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369548, &unk_26A0A05A0);
  result = sub_26A09E394();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 8 * v16);
    v36 = *(v21 + 4);
    v37 = *v21;
    v34 = *(v21 + 6);
    v35 = *(v21 + 5);
    sub_26A09E514();

    sub_26A09DEE4();
    result = sub_26A09E534();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    v31 = *(v9 + 56) + 8 * v25;
    *v31 = v37;
    *(v31 + 4) = v36;
    *(v31 + 5) = v35;
    *(v31 + 6) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26A09B15C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369550, &unk_26A09F830);
  result = sub_26A09E394();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v35 = *(v17 + v16);
    sub_26A09E514();

    v21 = v35;
    v22 = *(&v35 + 1);
    sub_26A09DEE4();
    result = sub_26A09E534();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    *(*(v9 + 56) + v31) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26A09B3B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369540, &unk_26A09F820);
  result = sub_26A09E394();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_26A09E514();

    sub_26A09DEE4();
    result = sub_26A09E534();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26A09B5FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369450, &unk_26A09F910);
  result = sub_26A09E394();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v39 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 72 * v16);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v45 = *(v21 + 8);
    v43 = v23;
    v44 = v24;
    v41 = *v21;
    v42 = v22;
    sub_26A09E514();

    sub_26A077C4C(&v41, v40);
    sub_26A09DEE4();
    result = sub_26A09E534();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 16 * v28);
    *v33 = v19;
    v33[1] = v20;
    v34 = *(v9 + 56) + 72 * v28;
    *v34 = v41;
    v35 = v42;
    v36 = v43;
    v37 = v44;
    *(v34 + 64) = v45;
    *(v34 + 32) = v36;
    *(v34 + 48) = v37;
    *(v34 + 16) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v39;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t SmartStackAuthorization.rawValue.getter()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6F4C737961776C61;
    }

    if (v1 == 1)
    {
      return 0x636F4C6573556E69;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0xD000000000000013;
      case 3:
        return 0x746544646E756F73;
      case 4:
        return 0x694B68746C616568;
    }
  }

  v3 = sub_26A09DEA4();
  MEMORY[0x26D659940](v3);

  return 0x694B68746C616568;
}

uint64_t SmartStackAuthorization.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = sub_26A08719C(a1, a2);
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {

        v8 = 1;
      }

      else
      {

        v8 = 2;
      }
    }

    else
    {

      v8 = 0;
    }
  }

  else
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {

        v8 = 4;
        goto LABEL_15;
      }
    }

    else if (v6 == 3)
    {

      v8 = 3;
      goto LABEL_15;
    }

    if (sub_26A09BE24(0x694B68746C616568, 0xEA00000000002D74, a1, a2))
    {
      sub_26A081748();
      sub_26A09E0D4();

      MEMORY[0x26D659910]();

      v8 = sub_26A09DE74();
    }

    else
    {

      v8 = 5;
    }
  }

LABEL_15:
  *a3 = v8;
  return result;
}

uint64_t sub_26A09BC4C()
{
  sub_26A09E514();
  SmartStackAuthorization.rawValue.getter();
  sub_26A09DEE4();

  return sub_26A09E534();
}

uint64_t sub_26A09BCB4(uint64_t a1)
{
  SmartStackAuthorization.rawValue.getter();
  sub_26A09DEE4();
}

uint64_t sub_26A09BD18(uint64_t a1)
{
  sub_26A09E514();
  SmartStackAuthorization.rawValue.getter();
  sub_26A09DEE4();

  return sub_26A09E534();
}

uint64_t sub_26A09BD8C()
{
  v0 = SmartStackAuthorization.rawValue.getter();
  v2 = v1;
  if (v0 == SmartStackAuthorization.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26A09E4D4();
  }

  return v5 & 1;
}

uint64_t sub_26A09BE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_26A09DF24();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_26A09DF24();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_26A09E4D4();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_26A09DF24();
      v7 = v9;
    }

    while (v9);
  }

  sub_26A09DF24();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_26A09BF8C@<X0>(uint64_t *a1@<X8>)
{
  result = SmartStackAuthorization.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_26A09BFB8()
{
  result = qword_280369B78;
  if (!qword_280369B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B78);
  }

  return result;
}

unint64_t sub_26A09C010()
{
  result = qword_280369B80;
  if (!qword_280369B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280369B88, &qword_26A0A0640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SmartStackSettings0aB13AuthorizationO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A09C08C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A09C0E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_26A09C134(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_26A09C164()
{
  result = qword_280369B90;
  if (!qword_280369B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369B90);
  }

  return result;
}

uint64_t sub_26A09C1D4()
{
  v1 = *v0;
  v2 = 0x676E6964616F6CLL;
  v3 = 0x626967696C656E69;
  v4 = 0x6465746E617267;
  if (v1 != 3)
  {
    v4 = 0x6465696E6564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C626967696C65;
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

uint64_t sub_26A09C270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26A09DA28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26A09C298(uint64_t a1)
{
  v2 = sub_26A09CAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A09C2D4(uint64_t a1)
{
  v2 = sub_26A09CAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A09C31C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_26A09C34C(uint64_t a1)
{
  v2 = sub_26A09CB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A09C388(uint64_t a1)
{
  v2 = sub_26A09CB38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A09C3C4(uint64_t a1)
{
  v2 = sub_26A09CC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A09C400(uint64_t a1)
{
  v2 = sub_26A09CC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A09C43C(uint64_t a1)
{
  v2 = sub_26A09CB8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A09C478(uint64_t a1)
{
  v2 = sub_26A09CB8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A09C4B4(uint64_t a1)
{
  v2 = sub_26A09CBE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A09C4F0(uint64_t a1)
{
  v2 = sub_26A09CBE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A09C52C(uint64_t a1)
{
  v2 = sub_26A09CC88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A09C568(uint64_t a1)
{
  v2 = sub_26A09CC88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthorizationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369B98, &qword_26A0A0760);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369BA0, &qword_26A0A0768);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369BA8, &qword_26A0A0770);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369BB0, &qword_26A0A0778);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369BB8, &qword_26A0A0780);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369BC0, &qword_26A0A0788);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_26A09CAE4();
  sub_26A09E554();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_26A09CC34();
      v31 = v45;
      sub_26A09E444();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_26A09CC88();
      v31 = v45;
      sub_26A09E444();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_26A09CBE0();
      v22 = v33;
      v23 = v45;
      sub_26A09E444();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_26A09CB8C();
      v22 = v36;
      v23 = v45;
      sub_26A09E444();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_26A09CB38();
      v22 = v39;
      v23 = v45;
      sub_26A09E444();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_26A09CAE4()
{
  result = qword_280369BC8;
  if (!qword_280369BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369BC8);
  }

  return result;
}

unint64_t sub_26A09CB38()
{
  result = qword_280369BD0;
  if (!qword_280369BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369BD0);
  }

  return result;
}

unint64_t sub_26A09CB8C()
{
  result = qword_280369BD8;
  if (!qword_280369BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369BD8);
  }

  return result;
}

unint64_t sub_26A09CBE0()
{
  result = qword_280369BE0;
  if (!qword_280369BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369BE0);
  }

  return result;
}

unint64_t sub_26A09CC34()
{
  result = qword_280369BE8;
  if (!qword_280369BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369BE8);
  }

  return result;
}

unint64_t sub_26A09CC88()
{
  result = qword_280369BF0;
  if (!qword_280369BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369BF0);
  }

  return result;
}

uint64_t AuthorizationState.hashValue.getter()
{
  v1 = *v0;
  sub_26A09E514();
  MEMORY[0x26D659F60](v1);
  return sub_26A09E534();
}

uint64_t AuthorizationState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369BF8, &qword_26A0A0790);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369C00, &qword_26A0A0798);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369C08, &qword_26A0A07A0);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369C10, &qword_26A0A07A8);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369C18, &qword_26A0A07B0);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369C20, &qword_26A0A07B8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_26A09CAE4();
  v16 = v46;
  sub_26A09E544();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_26A09E434();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_26A09E324();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369C28, &qword_26A0A07C0);
      *v26 = &type metadata for AuthorizationState;
      sub_26A09E3D4();
      sub_26A09E314();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_26A09CC34();
          sub_26A09E3C4();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_26A09CC88();
          sub_26A09E3C4();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_26A09CBE0();
          sub_26A09E3C4();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_26A09CB8C();
            v29 = v42;
            sub_26A09E3C4();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_26A09CB38();
            sub_26A09E3C4();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

unint64_t sub_26A09D4B4()
{
  result = qword_280369C30;
  if (!qword_280369C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C30);
  }

  return result;
}

unint64_t sub_26A09D5B4()
{
  result = qword_280369C38;
  if (!qword_280369C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C38);
  }

  return result;
}

unint64_t sub_26A09D60C()
{
  result = qword_280369C40;
  if (!qword_280369C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C40);
  }

  return result;
}

unint64_t sub_26A09D664()
{
  result = qword_280369C48;
  if (!qword_280369C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C48);
  }

  return result;
}

unint64_t sub_26A09D6BC()
{
  result = qword_280369C50;
  if (!qword_280369C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C50);
  }

  return result;
}

unint64_t sub_26A09D714()
{
  result = qword_280369C58;
  if (!qword_280369C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C58);
  }

  return result;
}

unint64_t sub_26A09D76C()
{
  result = qword_280369C60;
  if (!qword_280369C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C60);
  }

  return result;
}

unint64_t sub_26A09D7C4()
{
  result = qword_280369C68;
  if (!qword_280369C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C68);
  }

  return result;
}

unint64_t sub_26A09D81C()
{
  result = qword_280369C70;
  if (!qword_280369C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C70);
  }

  return result;
}

unint64_t sub_26A09D874()
{
  result = qword_280369C78;
  if (!qword_280369C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C78);
  }

  return result;
}

unint64_t sub_26A09D8CC()
{
  result = qword_280369C80;
  if (!qword_280369C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C80);
  }

  return result;
}

unint64_t sub_26A09D924()
{
  result = qword_280369C88;
  if (!qword_280369C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C88);
  }

  return result;
}

unint64_t sub_26A09D97C()
{
  result = qword_280369C90;
  if (!qword_280369C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C90);
  }

  return result;
}

unint64_t sub_26A09D9D4()
{
  result = qword_280369C98;
  if (!qword_280369C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369C98);
  }

  return result;
}

uint64_t sub_26A09DA28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_26A09E4D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xE800000000000000 || (sub_26A09E4D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x626967696C656E69 && a2 == 0xEA0000000000656CLL || (sub_26A09E4D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465746E617267 && a2 == 0xE700000000000000 || (sub_26A09E4D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465696E6564 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_26A09E4D4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}