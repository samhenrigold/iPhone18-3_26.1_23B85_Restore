uint64_t sub_2458E0E2C()
{
  v1 = v0[24];
  v19 = v0[26];
  v16 = v0[21];
  v17 = v0[23];
  v2 = v0[15];
  v18 = v0[16];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v7 + 32))(v4, v6, v8);
  v1(v4 + v5[5], v2, v3);
  v9 = (v4 + v5[6]);
  *v9 = sub_2458E31E8;
  v9[1] = v16;
  v10 = (v4 + v5[7]);
  *v10 = sub_2458E31F0;
  v10[1] = v17;
  v11 = (v4 + v5[8]);
  *v11 = nullsub_1;
  v11[1] = 0;
  v12 = (v4 + v5[9]);
  *v12 = &unk_24591DA58;
  v12[1] = v19;
  sub_2458E28B0(v4, v18);

  v13 = v0[19];
  v14 = v0[20];

  return MEMORY[0x2822009F8](sub_2458E0FA0, v13, v14);
}

uint64_t sub_2458E0FA0()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[4];

  (*(v2 + 56))(v1, 0, 1, v3);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[2] = v4;
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel, &unk_24591D938);
  sub_24590C294();

  sub_245778F94(v1, &qword_27EE2B8B8, &qword_24591D960);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2458E114C()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);
  v4 = v0[19];
  v5 = v0[20];

  return MEMORY[0x2822009F8](sub_2458E1200, v4, v5);
}

uint64_t sub_2458E1200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458E12D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8, &qword_24591D960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  v6 = sub_24590E864();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + 16);

    v15 = sub_245910D64();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    (*(v7 + 16))(v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    sub_245910D34();

    v16 = sub_245910D24();
    v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 2) = v16;
    *(v18 + 3) = v19;
    *(v18 + 4) = v14;
    (*(v7 + 32))(&v18[v17], v9, v6);
    sub_2458B90EC(0, 0, v12, &unk_24591DA68, v18);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v22 = type metadata accessor for MobileDocumentProviderPresentmentContext(0);
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v24[-2] = v21;
    v24[-1] = v5;
    v24[1] = v21;
    sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel, &unk_24591D938);
    sub_24590C294();

    return sub_245778F94(v5, &qword_27EE2B8B8, &qword_24591D960);
  }

  return result;
}

uint64_t sub_2458E16AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8, &qword_24591D960);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_24590E8A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = sub_24590F354();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 16);
    v21 = Strong;
    v22 = sub_24590E814();
    (*(*(v22 - 8) + 16))(v14, v37, v22);
    (*(v9 + 104))(v14, *MEMORY[0x277CFF740], v8);
    v23 = sub_245910D64();
    v24 = v7;
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    (*(v9 + 16))(v11, v14, v8);
    sub_245910D34();

    v25 = sub_245910D24();
    v26 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    *(v27 + 2) = v25;
    *(v27 + 3) = v28;
    *(v27 + 4) = v20;
    (*(v9 + 32))(&v27[v26], v11, v8);
    sub_2458B90EC(0, 0, v24, &unk_24591DA60, v27);

    (*(v9 + 8))(v14, v8);
    v29 = type metadata accessor for MobileDocumentProviderPresentmentContext(0);
    v30 = v38;
    (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v36 - 2) = v21;
    *(&v36 - 1) = v30;
    v39 = v21;
    sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel, &unk_24591D938);
    sub_24590C294();

    return sub_245778F94(v30, &qword_27EE2B8B8, &qword_24591D960);
  }

  else
  {
    sub_24590C714();
    v33 = sub_24590F344();
    v34 = sub_245910F64();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_245767000, v33, v34, "Self unexpectedly nil in userDidCancelHandler handler", v35, 2u);
      MEMORY[0x245D77B40](v35, -1, -1);
    }

    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_2458E1C04(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_24590EA74();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_245910D34();
  v2[11] = sub_245910D24();
  v5 = sub_245910CD4();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x2822009F8](sub_2458E1CFC, v5, v4);
}

uint64_t sub_2458E1CFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v0[15] = *(Strong + 16);

    v0[16] = sub_245910D24();
    v3 = sub_245910CD4();
    v0[17] = v3;
    v0[18] = v2;

    return MEMORY[0x2822009F8](sub_2458E1F28, v3, v2);
  }

  else
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 104))(v4, *MEMORY[0x277CFFA38], v6);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458E2E28(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2458E1F28()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  v2 = sub_24590D384();
  *v1 = v0;
  v1[1] = sub_2458E1FF4;
  v3 = *(v0 + 40);

  return MEMORY[0x282151358](v3, &unk_24591F310, 0, 0, 0, v2);
}

uint64_t sub_2458E1FF4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_2458E2218;
  }

  else
  {
    v5 = sub_2458E2130;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458E2130()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_2458E219C, v1, v2);
}

uint64_t sub_2458E219C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458E2218()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_2458E2284, v1, v2);
}

uint64_t sub_2458E2284()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458E22FC()
{

  sub_2458E2930(v0 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__optionSelection, &qword_27EE2B898, &qword_24591D6E0);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__presentmentContext, &qword_27EE2B8B8, &qword_24591D960);

  v1 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel___observationRegistrar;
  v2 = sub_24590C2E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_2458E2440(uint64_t a1)
{
  type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(319);
  if (v1 <= 0x3F)
  {
    sub_2458E25F4(319, &qword_27EE2B9A0, MEMORY[0x277CFF5C8]);
    if (v2 <= 0x3F)
    {
      sub_2458E25F4(319, &qword_27EE2B9A8, type metadata accessor for MobileDocumentProviderPresentmentContext);
      if (v3 <= 0x3F)
      {
        sub_24590C2E4();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2458E25F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2459112C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2458E2698(uint64_t a1)
{
  sub_2458E270C();
  if (v1 <= 0x3F)
  {
    sub_24590E574();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2458E270C()
{
  if (!qword_27EE2B9C0)
  {
    v0 = sub_24590E974();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE2B9C0);
    }
  }
}

uint64_t sub_2458E2754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458E27B8(uint64_t a1)
{
  v4 = *(sub_24590E8A4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_245902784(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2458E28B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderPresentmentContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458E2930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2458E2990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458E29F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590DCE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898, &qword_24591D6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9C8, &qword_24591DA08);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_245778F2C(a1, &v21 - v12, &qword_27EE2B898, &qword_24591D6E0);
  sub_245778F2C(a2, &v13[v15], &qword_27EE2B898, &qword_24591D6E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_245778F2C(v13, v10, &qword_27EE2B898, &qword_24591D6E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_2458E2E28(&qword_27EE2B9D0, MEMORY[0x277CFF5C8], MEMORY[0x277CFF5D0]);
      v18 = sub_245910934();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_245778F94(v13, &qword_27EE2B898, &qword_24591D6E0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_245778F94(v13, &qword_27EE2B9C8, &qword_24591DA08);
    v17 = 1;
    return v17 & 1;
  }

  sub_245778F94(v13, &qword_27EE2B898, &qword_24591D6E0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2458E2D30(uint64_t a1)
{
  v4 = *(sub_24590E5C4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_24590376C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2458E2E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2458E2E70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_2458E2ED8(uint64_t a1)
{
  v4 = *(sub_24590E5C4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_245903EF0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2458E3020(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2457AA49C;

  return sub_2458DF430(a1, v1);
}

uint64_t sub_2458E30B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2457AA49C;

  return sub_2458DFED8(a1, v1);
}

uint64_t sub_2458E3150(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2457AA49C;

  return sub_2458E0300(a1, v1);
}

uint64_t sub_2458E31F0(uint64_t a1)
{
  v3 = *(sub_24590E814() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2458E16AC(a1, v4, v5);
}

uint64_t sub_2458E3264(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2457A18F4;

  return sub_2458E1C04(a1, v1);
}

uint64_t sub_2458E3300(uint64_t a1)
{
  v4 = *(sub_24590E8A4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_245902FE8(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_5(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2458E34CC(uint64_t a1)
{
  v4 = *(sub_24590E864() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457A18F4;

  return sub_245901940(a1, v6, v7, v8, v1 + v5);
}

void sub_2458E3624(uint64_t a1)
{
  sub_2458E36B0(319);
  if (v1 <= 0x3F)
  {
    sub_2458E3708(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2458E36B0(uint64_t a1)
{
  if (!qword_27EE2B9F0)
  {
    sub_24590DCE4();
    v1 = sub_245910CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE2B9F0);
    }
  }
}

void sub_2458E3708(uint64_t a1)
{
  if (!qword_27EE2B9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B898, &qword_24591D6E0);
    v1 = sub_245910644();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE2B9F8);
    }
  }
}

uint64_t sub_2458E3788@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v39 = sub_24590FD54();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24590FDC4();
  v36 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590FE04();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BA00, &qword_24591DB08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BA08, &qword_24591DB10);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BA10, &qword_24591DB18);
  v34 = *(v16 - 8);
  v35 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v40 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BA18, &qword_24591DB20);
  sub_2458E4E44();
  sub_245910114();
  v19 = sub_24590FFF4();
  sub_24590FDF4();
  v20 = sub_245778BD8(&qword_27EE2BB28, &qword_27EE2BA00, &qword_24591DB08, MEMORY[0x277CDE5A0]);
  MEMORY[0x245D758D0](v19, 0, 0, v7, v8, v20);
  (*(v29 + 8))(v7, v30);
  (*(v9 + 8))(v11, v8);
  v22 = v31;
  v21 = v32;
  sub_24590FDB4();
  v41 = v8;
  v42 = v20;
  v23 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = MEMORY[0x277CDE0D0];
  sub_245910404();
  (*(v36 + 8))(v22, v21);
  (*(v13 + 8))(v15, v12);
  sub_24590FD44();
  LOBYTE(v15) = sub_24590FF94();
  sub_24590FF84();
  sub_24590FF84();
  if (sub_24590FF84() != v15)
  {
    sub_24590FF84();
  }

  v41 = v12;
  v42 = v21;
  v43 = OpaqueTypeConformance2;
  v44 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v35;
  sub_245910344();
  (*(v37 + 8))(v23, v39);
  return (*(v34 + 8))(v18, v26);
}

uint64_t sub_2458E3CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BAD0, &qword_24591DB78);
  MEMORY[0x28223BE20](v3);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BAC0, &qword_24591DB70);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BB30, &qword_24591DBA8);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BA30, &qword_24591DB28);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = v20 - v16;
  if (*(*v15 + 16))
  {
    v20[1] = v20;
    MEMORY[0x28223BE20](v15);
    v20[-2] = v18;
    sub_2458E43B8(v18, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BA40, &qword_24591DB30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BAA8, &qword_24591DB68);
    v20[0] = v6;
    sub_2458E4FC4(&qword_27EE2BA38, &qword_27EE2BA40, &qword_24591DB30, sub_2458E4F94);
    sub_2458E5298();
    sub_245910684();
    (*(v14 + 16))(v12, v17, v13);
    swift_storeEnumTagMultiPayload();
    sub_2458E4ED0();
    sub_2458E536C();
    sub_24590FD14();
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    sub_2458E4504(v5);
    sub_2458E53FC();
    sub_245910694();
    (*(v7 + 16))(v12, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_2458E4ED0();
    sub_2458E536C();
    sub_24590FD14();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_2458E4118(uint64_t *a1)
{
  v2 = type metadata accessor for IdentityCredentialProviderSelectionViewPicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *a1;
  swift_getKeyPath();
  sub_2458E6E78(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityCredentialProviderSelectionViewPicker);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2458E6EE0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for IdentityCredentialProviderSelectionViewPicker);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BB70, &unk_24591DC30);
  type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell(0);
  sub_245778BD8(&qword_27EE2BB78, &qword_27EE2BB70, &unk_24591DC30, MEMORY[0x277D83980]);
  sub_2458E72A0(&qword_27EE2BAB0, type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell, &unk_24591DC74);
  return sub_245910664();
}

uint64_t sub_2458E4314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24590DCE4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for IdentityCredentialProviderSelectionViewPicker(0);
  type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9D8, &unk_24591DA70);
  return sub_245910624();
}

double sub_2458E43B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IdentityCredentialProviderSelectionViewPicker(0) + 24));
  v4 = v3[1];
  v17 = *v3;

  sub_2459106F4();
  sub_24590F684();
  v5 = sub_24590FE24();
  v6 = sub_24590FFA4();
  sub_24590F594();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_24590FFD4();
  *a2 = v17;
  *(a2 + 8) = v4;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  *(a2 + 64) = v5;
  result = 0.0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  *(a2 + 112) = v6;
  *(a2 + 120) = v8;
  *(a2 + 128) = v10;
  *(a2 + 136) = v12;
  *(a2 + 144) = v14;
  *(a2 + 152) = 0;
  *(a2 + 160) = v15;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 200) = 1;
  return result;
}

uint64_t sub_2458E4504@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BAF0, &qword_24591DB88);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BAE0, &qword_24591DB80);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BB38, &qword_24591DBB0);
  sub_245778BD8(&qword_27EE2BB40, &qword_27EE2BB38, &qword_24591DBB0, MEMORY[0x277CDEFF0]);
  sub_24590FE14();
  v10 = sub_24590FFB4();
  v11 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BB00, &qword_24591DB90) + 36)];
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  *&v5[*(v3 + 44)] = sub_24590FE24();
  sub_2459106E4();
  sub_24590F904();
  sub_24577ABC4(v5, v9, &qword_27EE2BAF0, &qword_24591DB88);
  v12 = &v9[*(v7 + 44)];
  v13 = v20[5];
  *(v12 + 4) = v20[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v20[6];
  v14 = v20[1];
  *v12 = v20[0];
  *(v12 + 1) = v14;
  v15 = v20[3];
  *(v12 + 2) = v20[2];
  *(v12 + 3) = v15;
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BAD0, &qword_24591DB78) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BB20, &qword_24591DBA0) + 28);
  v18 = sub_245910174();
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *v16 = swift_getKeyPath();
  return sub_24577ABC4(v9, a1, &qword_27EE2BAE0, &qword_24591DB80);
}

uint64_t sub_2458E4830()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BB50, &unk_24591DBF0);
  v1 = sub_2458E6C78();
  v2 = MEMORY[0x277CE0BD8];
  v3 = MEMORY[0x277CE0BC8];

  return MEMORY[0x28212FFF8](sub_2458E48C8, 0, sub_2458E4B24, 0, v2, v0, v3, v1);
}

uint64_t sub_2458E48C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24590BFB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2459109B4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24590BFC4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27EE2C450);
  (*(v4 + 16))(v6, v9, v3);
  sub_24590C224();
  sub_24590BFE4();
  result = sub_245910194();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_2458E4B24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2459104C4();
  result = sub_245910424();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_2458E4B6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24590BFB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2459109B4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24590BFC4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27EE2C450);
  (*(v4 + 16))(v6, v9, v3);
  sub_24590C224();
  sub_24590BFE4();
  v10 = sub_245910194();
  v12 = v11;
  v14 = v13;
  v23[2] = sub_24590FE34();
  v15 = sub_245910164();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_24580FD24(v10, v12, v14 & 1);

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  return result;
}

unint64_t sub_2458E4E44()
{
  result = qword_27EE2BA20;
  if (!qword_27EE2BA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BA18, &qword_24591DB20);
    sub_2458E4ED0();
    sub_2458E536C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BA20);
  }

  return result;
}

unint64_t sub_2458E4ED0()
{
  result = qword_27EE2BA28;
  if (!qword_27EE2BA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BA30, &qword_24591DB28);
    sub_2458E4FC4(&qword_27EE2BA38, &qword_27EE2BA40, &qword_24591DB30, sub_2458E4F94);
    sub_2458E5298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BA28);
  }

  return result;
}

uint64_t sub_2458E4FC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2458E5048()
{
  result = qword_27EE2BA58;
  if (!qword_27EE2BA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BA60, &qword_24591DB40);
    sub_2458E5100();
    sub_245778BD8(&qword_27EE2BA90, &qword_27EE2BA98, &qword_24591DB60, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BA58);
  }

  return result;
}

unint64_t sub_2458E5100()
{
  result = qword_27EE2BA68;
  if (!qword_27EE2BA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BA70, &qword_24591DB48);
    sub_2458E51B8();
    sub_245778BD8(&qword_27EE28BA0, &qword_27EE28BA8, &qword_245916478, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BA68);
  }

  return result;
}

unint64_t sub_2458E51B8()
{
  result = qword_27EE2BA78;
  if (!qword_27EE2BA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BA80, &unk_24591DB50);
    sub_2458E5244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BA78);
  }

  return result;
}

unint64_t sub_2458E5244()
{
  result = qword_27EE2BA88;
  if (!qword_27EE2BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BA88);
  }

  return result;
}

unint64_t sub_2458E5298()
{
  result = qword_27EE2BAA0;
  if (!qword_27EE2BAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BAA8, &qword_24591DB68);
    sub_2458E72A0(&qword_27EE2BAB0, type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell, &unk_24591DC74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BAA0);
  }

  return result;
}

unint64_t sub_2458E536C()
{
  result = qword_27EE2BAB8;
  if (!qword_27EE2BAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BAC0, &qword_24591DB70);
    sub_2458E53FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BAB8);
  }

  return result;
}

unint64_t sub_2458E53FC()
{
  result = qword_27EE2BAC8;
  if (!qword_27EE2BAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BAD0, &qword_24591DB78);
    sub_2458E54B4();
    sub_245778BD8(&qword_27EE2BB18, &qword_27EE2BB20, &qword_24591DBA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BAC8);
  }

  return result;
}

unint64_t sub_2458E54B4()
{
  result = qword_27EE2BAD8;
  if (!qword_27EE2BAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BAE0, &qword_24591DB80);
    sub_2458E5540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BAD8);
  }

  return result;
}

unint64_t sub_2458E5540()
{
  result = qword_27EE2BAE8;
  if (!qword_27EE2BAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BAF0, &qword_24591DB88);
    sub_2458E55F8();
    sub_245778BD8(&qword_27EE28BA0, &qword_27EE28BA8, &qword_245916478, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BAE8);
  }

  return result;
}

unint64_t sub_2458E55F8()
{
  result = qword_27EE2BAF8;
  if (!qword_27EE2BAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BB00, &qword_24591DB90);
    sub_245778BD8(&qword_27EE2BB08, &qword_27EE2BB10, &qword_24591DB98, MEMORY[0x277CDE158]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BAF8);
  }

  return result;
}

uint64_t sub_2458E56B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898, &qword_24591D6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = sub_24590DCE4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell(0);
  sub_245778F2C(v7, v4, &qword_27EE2B898, &qword_24591D6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9D8, &unk_24591DA70);
  sub_245910604();
  return sub_245778F94(v7, &qword_27EE2B898, &qword_24591D6E0);
}

uint64_t sub_2458E5834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24590FB74();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BBA0, &unk_24591DCD0);
  return sub_2458E588C(a1, a2 + *(v4 + 44));
}

uint64_t sub_2458E588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v77 = a2;
  v69 = sub_24590DCE4();
  v72 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9C8, &qword_24591DA08) - 8;
  MEMORY[0x28223BE20](v73);
  v70 = &v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898, &qword_24591D6E0);
  MEMORY[0x28223BE20](v4 - 8);
  *&v78 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  *&v79 = &v66 - v7;
  MEMORY[0x28223BE20](v8);
  v71 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B950, &qword_24591DCE0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BBA8, &qword_24591DCE8);
  v14 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BBB0, &qword_24591DCF0);
  v75 = *(v17 - 8);
  v76 = v17;
  MEMORY[0x28223BE20](v17);
  v84 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  sub_24590DCA4();
  v22 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v23 = sub_2459109C4();

  [v22 initWithBundleIdentifier_];

  sub_24590F304();
  v24 = sub_245778BD8(&qword_27EE2BBB8, &qword_27EE2B950, &qword_24591DCE0, MEMORY[0x277D7EA70]);
  sub_2459101C4();
  v25 = v13;
  v26 = v69;
  (*(v11 + 8))(v25, v10);
  *v86 = v10;
  *&v86[8] = v24;
  swift_getOpaqueTypeConformance2();
  v83 = v21;
  v27 = v82;
  sub_2459101D4();
  (*(v14 + 8))(v16, v27);
  v74 = sub_24590FBC4();
  v91 = 1;
  v28 = v70;
  v29 = v68;
  sub_2458E6360(v86);
  memcpy(v92, v86, 0x141uLL);
  memcpy(v93, v86, sizeof(v93));
  sub_245778F2C(v92, v85, &qword_27EE2BBC0, &qword_24591DCF8);
  sub_245778F94(v93, &qword_27EE2BBC0, &qword_24591DCF8);
  memcpy(&v90[7], v92, 0x141uLL);
  v80 = v91;
  v82 = sub_245910474();
  KeyPath = swift_getKeyPath();
  v31 = v71;
  v30 = v72;
  (*(v72 + 16))(v71, v29, v26);
  (*(v30 + 56))(v31, 0, 1, v26);
  type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell(0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9D8, &unk_24591DA70);
  v33 = v79;
  MEMORY[0x245D75C30](v32);
  v34 = *(v73 + 56);
  sub_245778F2C(v31, v28, &qword_27EE2B898, &qword_24591D6E0);
  sub_245778F2C(v33, v28 + v34, &qword_27EE2B898, &qword_24591D6E0);
  v35 = *(v30 + 48);
  if (v35(v28, 1, v26) == 1)
  {
    sub_245778F94(v33, &qword_27EE2B898, &qword_24591D6E0);
    sub_245778F94(v31, &qword_27EE2B898, &qword_24591D6E0);
    if (v35(v28 + v34, 1, v26) == 1)
    {
      sub_245778F94(v28, &qword_27EE2B898, &qword_24591D6E0);
LABEL_9:
      v44 = sub_2459104C4();
      v45 = sub_2459100B4();
      v46 = swift_getKeyPath();
      v47 = sub_245910424();
      v85[0] = v44;
      v85[1] = v46;
      v85[2] = v45;
      v85[3] = v47;
      LOBYTE(v85[4]) = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_245778F2C(v28, v78, &qword_27EE2B898, &qword_24591D6E0);
  if (v35(v28 + v34, 1, v26) == 1)
  {
    sub_245778F94(v79, &qword_27EE2B898, &qword_24591D6E0);
    sub_245778F94(v31, &qword_27EE2B898, &qword_24591D6E0);
    (*(v30 + 8))(v78, v26);
LABEL_6:
    sub_245778F94(v28, &qword_27EE2B9C8, &qword_24591DA08);
    goto LABEL_7;
  }

  v39 = v30;
  v40 = v67;
  (*(v30 + 32))(v67, v28 + v34, v26);
  sub_2458E72A0(&qword_27EE2B9D0, MEMORY[0x277CFF5C8], MEMORY[0x277CFF5D0]);
  v41 = v78;
  v42 = sub_245910934();
  v43 = *(v39 + 8);
  v43(v40, v26);
  sub_245778F94(v79, &qword_27EE2B898, &qword_24591D6E0);
  sub_245778F94(v31, &qword_27EE2B898, &qword_24591D6E0);
  v43(v41, v26);
  sub_245778F94(v28, &qword_27EE2B898, &qword_24591D6E0);
  if (v42)
  {
    goto LABEL_9;
  }

LABEL_7:
  v36 = sub_2459104C4();
  v37 = sub_2459100B4();
  v38 = swift_getKeyPath();
  v85[0] = v36;
  v85[1] = v38;
  v85[2] = v37;
  v85[3] = 0;
  LOBYTE(v85[4]) = 1;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BBC8, &qword_24591DD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BBD0, &qword_24591DD68);
  sub_2458E6FB0();
  sub_2458E7120();
  sub_24590FD14();
  v78 = *v86;
  v79 = *&v86[16];
  v48 = v86[32];
  v49 = v75;
  v50 = v76;
  v51 = *(v75 + 16);
  v52 = v84;
  v51(v84, v83, v76);
  v53 = v77;
  v51(v77, v52, v50);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BC08, &qword_24591DD88);
  v55 = *(v54 + 48);
  v56 = v74;
  v85[0] = v74;
  v85[1] = 0;
  LOBYTE(v85[2]) = v80;
  memcpy(&v85[2] + 1, v90, 0x148uLL);
  *(&v85[43] + 1) = v94[0];
  HIDWORD(v85[43]) = *(v94 + 3);
  v85[44] = KeyPath;
  v85[45] = v82;
  memcpy((v53 + v55), v85, 0x170uLL);
  v57 = v53 + *(v54 + 64);
  v58 = v79;
  *v57 = v78;
  *(v57 + 16) = v58;
  LOBYTE(v55) = v48;
  *(v57 + 32) = v48;
  sub_245778F2C(v85, v86, &qword_27EE2BC10, &qword_24591DD90);
  v59 = v78;
  v60 = v79;
  v61 = v56;
  v62 = *(&v79 + 1);
  v63 = sub_2458E71D8(v78, *(&v78 + 1), v79, *(&v79 + 1), v55);
  v64 = *(v49 + 8);
  v64(v83, v50, v63);
  sub_2458E7240(v59, *(&v59 + 1), v60, v62, v55);
  *v86 = v61;
  *&v86[8] = 0;
  v86[16] = v80;
  memcpy(&v86[17], v90, 0x148uLL);
  *v87 = v94[0];
  *&v87[3] = *(v94 + 3);
  v88 = KeyPath;
  v89 = v82;
  sub_245778F94(v86, &qword_27EE2BC10, &qword_24591DD90);
  return (v64)(v84, v50);
}

uint64_t sub_2458E6360@<X0>(void *a2@<X8>)
{
  sub_24590DCD4();
  sub_245778CE8();
  v2 = sub_2459101A4();
  v32 = v3;
  v33 = v2;
  v5 = v4;
  v27 = v6;
  sub_2459106F4();
  sub_24590F904();
  v31 = v5 & 1;
  v100 = v5 & 1;
  v29 = sub_24590FE24();
  KeyPath = swift_getKeyPath();
  HIDWORD(v75) = sub_2458E67D8() >> 32;
  v76 = v7;
  v8 = sub_2459101A4();
  v10 = v9;
  v12 = v11;
  sub_2459100E4();
  v13 = sub_245910184();
  v15 = v14;
  v17 = v16;

  sub_24580FD24(v8, v10, v12 & 1);

  LODWORD(v75) = sub_24590FE34();
  v18 = sub_245910164();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_24580FD24(v13, v15, v17 & 1);

  sub_2459106F4();
  sub_24590F904();
  LOBYTE(v13) = v22 & 1;
  v91 = v22 & 1;
  v25 = swift_getKeyPath();
  *&v42 = v33;
  *(&v42 + 1) = v32;
  LOBYTE(v43) = v31;
  *(&v43 + 1) = *v99;
  DWORD1(v43) = *&v99[3];
  *(&v43 + 1) = v27;
  v48 = v96;
  v49 = v97;
  v50 = v98;
  v44 = v92;
  v45 = v93;
  v46 = v94;
  v47 = v95;
  *&__src[64] = v94;
  *&__src[80] = v95;
  *&__src[96] = v96;
  *&__src[112] = v97;
  *__src = v42;
  *&__src[16] = v43;
  LODWORD(v51) = v29;
  *(&v51 + 1) = KeyPath;
  *&__src[32] = v92;
  *&__src[48] = v93;
  *&__src[128] = v98;
  *&__src[144] = v51;
  *&v53 = v18;
  *(&v53 + 1) = v20;
  LOBYTE(v54) = v13;
  *(&v54 + 1) = *v90;
  DWORD1(v54) = *&v90[3];
  *(&v54 + 1) = v24;
  v59 = v39;
  v60 = v40;
  *v61 = v41;
  v55 = v35;
  v56 = v36;
  v57 = v37;
  v58 = v38;
  *&v61[16] = v25;
  v61[24] = 0;
  *&__src[264] = v39;
  *&__src[280] = v40;
  *&__src[296] = v41;
  *&__src[305] = *&v61[9];
  *&__src[168] = v53;
  *&__src[184] = v54;
  *&__src[200] = v35;
  *&__src[216] = v36;
  *&__src[232] = v37;
  v52 = 0;
  __src[160] = 0;
  *&__src[248] = v38;
  memcpy(a2, __src, 0x141uLL);
  v62[0] = v18;
  v62[1] = v20;
  v63 = v13;
  *v64 = *v90;
  *&v64[3] = *&v90[3];
  v65 = v24;
  v70 = v39;
  v71 = v40;
  v72 = v41;
  v66 = v35;
  v67 = v36;
  v68 = v37;
  v69 = v38;
  v73 = v25;
  v74 = 0;
  sub_245778F2C(&v42, &v75, &qword_27EE2BC18, &qword_24591DDC8);
  sub_245778F2C(&v53, &v75, &qword_27EE2BC20, &qword_24591DDD0);
  sub_245778F94(v62, &qword_27EE2BC20, &qword_24591DDD0);
  v75 = v33;
  v76 = v32;
  v77 = v31;
  *v78 = *v99;
  *&v78[3] = *&v99[3];
  v79 = v27;
  v84 = v96;
  v85 = v97;
  v86 = v98;
  v80 = v92;
  v81 = v93;
  v83 = v95;
  v82 = v94;
  v87 = v29;
  v88 = KeyPath;
  v89 = 0;
  return sub_245778F94(&v75, &qword_27EE2BC18, &qword_24591DDC8);
}

uint64_t sub_2458E67D8()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24590BFB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2459109B4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24590BFC4();
  MEMORY[0x28223BE20](v6 - 8);
  result = sub_24590DC94();
  if (!v8)
  {
    if (sub_24590DCC4() < 2)
    {
      v10 = sub_24590DCC4();
      sub_24590BA0C(v10);
    }

    else
    {
      sub_245910944();
      if (qword_27EE28730 != -1)
      {
        swift_once();
      }

      v9 = __swift_project_value_buffer(v1, qword_27EE2C450);
      (*(v2 + 16))(v4, v9, v1);
      sub_24590C224();
      sub_24590BFE4();
    }

    return sub_245910A64();
  }

  return result;
}

uint64_t sub_2458E6A44(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2458E6E78(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2458E6EE0(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BB90, &qword_24591DCC8);
  sub_245778BD8(&qword_27EE2BB98, &qword_27EE2BB90, &qword_24591DCC8, MEMORY[0x277CE1138]);
  return sub_2459105B4();
}

uint64_t sub_2458E6BD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BB48, &qword_24591DBE8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_245778F2C(a1, &v5 - v3, &qword_27EE2BB48, &qword_24591DBE8);
  return sub_24590FAA4();
}

unint64_t sub_2458E6C78()
{
  result = qword_27EE2BB58;
  if (!qword_27EE2BB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BB50, &unk_24591DBF0);
    sub_245778BD8(&qword_27EE2BB60, &qword_27EE2BB68, &qword_24591F0A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BB58);
  }

  return result;
}

uint64_t sub_2458E6D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for IdentityCredentialProviderSelectionViewPicker(0);

  return sub_2458E4314(a1, a2);
}

void sub_2458E6DD8(uint64_t a1)
{
  sub_24590DCE4();
  if (v1 <= 0x3F)
  {
    sub_2458E3708(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2458E6E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2458E6EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2458E6F48()
{
  v1 = *(type metadata accessor for IdentityCredentialProviderSelectionViewPickerCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2458E56B8(v2);
}

unint64_t sub_2458E6FB0()
{
  result = qword_27EE2BBD8;
  if (!qword_27EE2BBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BBC8, &qword_24591DD60);
    sub_2458E7068();
    sub_245778BD8(&qword_27EE2BB60, &qword_27EE2BB68, &qword_24591F0A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BBD8);
  }

  return result;
}

unint64_t sub_2458E7068()
{
  result = qword_27EE2BBE0;
  if (!qword_27EE2BBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BBE8, &unk_24591DD70);
    sub_245778BD8(&qword_27EE28B90, &qword_27EE28B98, &qword_245916470, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BBE0);
  }

  return result;
}

unint64_t sub_2458E7120()
{
  result = qword_27EE2BBF0;
  if (!qword_27EE2BBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BBD0, &qword_24591DD68);
    sub_2458E7068();
    sub_245778BD8(&qword_27EE2BBF8, &qword_27EE2BC00, &qword_24591DD80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BBF0);
  }

  return result;
}

double sub_2458E71D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2458E7240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }
}

uint64_t sub_2458E72A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2458E7338(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD70, &qword_24591DF78);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD78, &qword_24591DF80);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD80, &qword_24591DF88);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD88, &qword_24591DF90);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2458EA2DC();
  sub_245911884();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_2458EA384();
      sub_2459116B4();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_2458EA330();
      v16 = v22;
      sub_2459116B4();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_2458EA3D8();
    sub_2459116B4();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_2458E76B8()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6D6F74737563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656772616CLL;
  }
}

uint64_t sub_2458E7708@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2458E9450(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2458E773C(uint64_t a1)
{
  v2 = sub_2458EA2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2458E7778(uint64_t a1)
{
  v2 = sub_2458EA2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2458E77B4(uint64_t a1)
{
  v2 = sub_2458EA330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2458E77F0(uint64_t a1)
{
  v2 = sub_2458EA330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2458E782C(uint64_t a1)
{
  v2 = sub_2458EA3D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2458E7868(uint64_t a1)
{
  v2 = sub_2458EA3D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2458E78A4(uint64_t a1)
{
  v2 = sub_2458EA384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2458E78E0(uint64_t a1)
{
  v2 = sub_2458EA384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2458E791C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_2458E955C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_2458E7964(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD00, &qword_24591DE50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderHostViewController_sceneHostingController;
  v9 = sub_2459109C4();
  v10 = [objc_opt_self() di:v9 identityForEmbeddedApplicationIdentifier:?];

  v11 = [objc_allocWithZone(type metadata accessor for IdentityCredentialProviderSceneSpecification()) init];
  v12 = [objc_allocWithZone(MEMORY[0x277D761E0]) initWithProcessIdentity:v10 sceneSpecification:v11];

  *&v2[v8] = v12;
  v13 = objc_allocWithZone(MEMORY[0x277D761F0]);
  v14 = v12;
  v15 = [v13 init];
  [v14 setActivationController_];

  v16 = *&v2[v8];
  sub_245911134();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD08, &qword_24591DE58);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_245778F94(v7, &qword_27EE2BD00, &qword_24591DE50);
  }

  else
  {
    v19 = type metadata accessor for BaseBoardXPCListenerEndpoint();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR____TtC9CoreIDVUI28BaseBoardXPCListenerEndpoint_endpoint] = a1;
    v24.receiver = v20;
    v24.super_class = v19;
    v21 = a1;
    objc_msgSendSuper2(&v24, sel_init);
    swift_getOpaqueTypeConformance2();
    sub_2458EA220();
    sub_24590F3D4();
    (*(v18 + 8))(v7, v17);
  }

  v25.receiver = v2;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  sub_2458E7C88();
  [v22 setModalPresentationStyle_];
  [v22 setTransitioningDelegate_];

  return v22;
}

void sub_2458E7C88()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderHostViewController_sceneHostingController];
  v2 = [v1 sceneViewController];
  [v0 addChildViewController_];

  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [v1 sceneViewController];
  v6 = [v5 view];

  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v4 addSubview_];

  v7 = [v1 sceneViewController];
  v8 = [v7 view];

  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_245917DC0;
  v10 = [v1 sceneViewController];
  v11 = [v10 view];

  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = [v11 topAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v9 + 32) = v16;
  v17 = [v1 sceneViewController];
  v18 = [v17 view];

  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = [v18 bottomAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v9 + 40) = v23;
  v24 = [v1 sceneViewController];
  v25 = [v24 view];

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = [v25 leadingAnchor];

  v27 = [v0 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v9 + 48) = v30;
  v31 = [v1 sceneViewController];
  v32 = [v31 view];

  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = [v32 trailingAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 trailingAnchor];

  v38 = [v33 constraintEqualToAnchor_];
  *(v9 + 56) = v38;
  sub_24579D5E0(0, &qword_27EE291F0, 0x277CCAAD0);
  v39 = sub_245910C34();

  [v36 activateConstraints_];

  v40 = [v1 sceneViewController];
  [v40 didMoveToParentViewController_];
}

uint64_t static IdentityCredentialProviderHostViewController.present(with:endpoint:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24590EA74();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = sub_245910D34();
  v2[8] = sub_245910D24();
  v5 = sub_245910CD4();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x2822009F8](sub_2458E82A0, v5, v4);
}

uint64_t sub_2458E82A0()
{
  v1 = [objc_opt_self() _viewControllerForFullScreenPresentationFromView_];
  v0[11] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[3];
    v4 = sub_245910D24();
    v0[12] = v4;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_2458E8518;
    v7 = MEMORY[0x277D85700];
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v6, v4, v7, 0xD000000000000017, 0x800000024592E750, sub_2458E9428, v5, v8);
  }

  else
  {
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];

    (*(v10 + 104))(v9, *MEMORY[0x277CFF920], v11);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2458E8518()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2458E86B8;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2458E863C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2458E863C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458E86B8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2458E8748(uint64_t a1, void *a2, void *a3)
{
  v18 = a1;
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BCF8, &qword_24591DE48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = objc_allocWithZone(type metadata accessor for IdentityCredentialProviderHostViewController());
  v10 = sub_2458E7964(a2);
  v17 = *(v6 + 16);
  v17(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v16 = *(v6 + 32);
  v16(v12 + v11, v8, v5);
  v24 = sub_2458EA0A4;
  v25 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2458E8BAC;
  v23 = &block_descriptor_17;
  v13 = _Block_copy(&aBlock);

  [v10 _beginDelayingPresentation_cancellationHandler_];
  _Block_release(v13);
  v17(v8, v18, v5);
  v14 = swift_allocObject();
  v16(v14 + v11, v8, v5);
  v24 = sub_2458EA1B4;
  v25 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2458935A8;
  v23 = &block_descriptor_23;
  v15 = _Block_copy(&aBlock);

  [v19 presentViewController:v10 animated:1 completion:v15];
  _Block_release(v15);
}

uint64_t sub_2458E8A08()
{
  v0 = sub_24590EA74();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CFFA38], v1);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579D1C0();
  v4 = swift_allocError();
  sub_24590EA94();
  v6[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BCF8, &qword_24591DE48);
  sub_245910CE4();
  return 0;
}

uint64_t sub_2458E8BAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

id sub_2458E8C40()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BCB8, &qword_24591DE30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-v4];
  sub_245911144();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BCC0, &unk_24591DE38);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_245778F94(v5, &qword_27EE2BCB8, &qword_24591DE30);
LABEL_9:
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel__backgroundColorForModalFormSheet);

    return v11;
  }

  swift_getOpaqueTypeConformance2();
  sub_2458E9F4C();
  sub_2458E9FA0();
  sub_2458E9FF4();
  sub_2458EA048();
  sub_24590F374();
  v8 = v12[15];
  (*(v7 + 8))(v5, v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  if (qword_27EE28700 != -1)
  {
    swift_once();
  }

  v9 = qword_27EE32CA0;

  return v9;
}

void IdentityCredentialProviderHostViewController.preferredContentSizeDidChange(forChildContentContainer:)(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  v3 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderHostViewController_sceneHostingController] sceneViewController];
  [v3 preferredContentSize];
  v5 = v4;

  if (v5 > 0.0)
  {
    v6 = [v1 sheetPresentationController];
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v1;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_2458E9430;
      *(v9 + 24) = v8;
      v13[4] = sub_2457C4B5C;
      v13[5] = v9;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_2458E7310;
      v13[3] = &block_descriptor_35;
      v10 = _Block_copy(v13);
      v11 = v1;

      [v7 animateChanges_];

      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

void sub_2458E9074(void *a1)
{
  v1 = [a1 sheetPresentationController];
  [v1 invalidateDetents];
}

id sub_2458E9134(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return *MEMORY[0x277D76ED8];
  }

  v3 = Strong;
  v4 = [*(Strong + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderHostViewController_sceneHostingController) sceneViewController];
  [v4 preferredContentSize];
  v6 = v5;

  result = [v3 view];
  if (result)
  {
    v8 = result;
    [result safeAreaInsets];
    v10 = v9;

    v11 = v6 - v10;
    v12 = [objc_opt_self() mediumDetent];
    v13 = sub_245911164();

    if (v11 <= 0.0)
    {
      return v13;
    }

    else
    {
      return *&v11;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id IdentityCredentialProviderHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2459109C4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id IdentityCredentialProviderHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2458E9450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656772616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_245911714() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_245911714() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_245911714();

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

uint64_t sub_2458E955C(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD28, &qword_24591DF50);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD30, &qword_24591DF58);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD38, &qword_24591DF60);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD40, &qword_24591DF68);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2458EA2DC();
  v13 = v34;
  sub_245911874();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_2459116A4();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_2457777A0();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_2458EA384();
          sub_245911664();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_2458EA330();
        v24 = v11;
        sub_245911664();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_2458EA3D8();
        v24 = v11;
        sub_245911664();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_245911524();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BD50, &qword_24591DF70) + 48);
    *v22 = &type metadata for IdentityCredentialProviderHostViewController.Detent;
    sub_245911674();
    sub_245911514();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

void sub_2458E9ACC()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderHostViewController_sceneHostingController;
  v2 = sub_2459109C4();
  v3 = [objc_opt_self() di:v2 identityForEmbeddedApplicationIdentifier:?];

  v4 = [objc_allocWithZone(type metadata accessor for IdentityCredentialProviderSceneSpecification()) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D761E0]) initWithProcessIdentity:v3 sceneSpecification:v4];

  *(v0 + v1) = v5;
  sub_2459115D4();
  __break(1u);
}

id _s9CoreIDVUI44IdentityCredentialProviderHostViewControllerC012presentationH012forPresented10presenting6sourceSo014UIPresentationH0CSgSo06UIViewH0C_ALSgALtF_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BCB8, &qword_24591DE30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5];
  v7 = [objc_allocWithZone(MEMORY[0x277D75A20]) initWithPresentedViewController:a1 presentingViewController:a2];
  sub_245911144();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BCC0, &unk_24591DE38);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    swift_getOpaqueTypeConformance2();
    sub_2458E9F4C();
    sub_2458E9FA0();
    sub_2458E9FF4();
    sub_2458EA048();
    sub_24590F374();
    v10 = v16[15];
    (*(v9 + 8))(v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_245916860;
    if (v10)
    {
      if (v10 != 1)
      {
        sub_24579D5E0(0, &qword_27EE2BCF0, 0x277D75A28);
        swift_allocObject();
        swift_unknownObjectWeakInit();

        v13 = sub_245911174();

        *(v11 + 32) = v13;
        goto LABEL_9;
      }

      v12 = [objc_opt_self() mediumDetent];
    }

    else
    {
      v12 = [objc_opt_self() largeDetent];
    }

    *(v11 + 32) = v12;
    sub_24579D5E0(0, &qword_27EE2BCF0, 0x277D75A28);
LABEL_9:
    v14 = sub_245910C34();

    [v7 setDetents_];

    return v7;
  }

  sub_245778F94(v6, &qword_27EE2BCB8, &qword_24591DE30);
  return v7;
}

unint64_t sub_2458E9F4C()
{
  result = qword_27EE2BCC8;
  if (!qword_27EE2BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BCC8);
  }

  return result;
}

unint64_t sub_2458E9FA0()
{
  result = qword_27EE2BCD0;
  if (!qword_27EE2BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BCD0);
  }

  return result;
}

unint64_t sub_2458E9FF4()
{
  result = qword_27EE2BCD8;
  if (!qword_27EE2BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BCD8);
  }

  return result;
}

unint64_t sub_2458EA048()
{
  result = qword_27EE2BCE0;
  if (!qword_27EE2BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BCE0);
  }

  return result;
}

uint64_t sub_2458EA0A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BCF8, &qword_24591DE48);

  return sub_2458E8A08();
}

uint64_t objectdestroy_13Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BCF8, &qword_24591DE48);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_2458EA220()
{
  result = qword_27EE2BD10;
  if (!qword_27EE2BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BD10);
  }

  return result;
}

unint64_t sub_2458EA288()
{
  result = qword_27EE2BD20;
  if (!qword_27EE2BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BD20);
  }

  return result;
}

unint64_t sub_2458EA2DC()
{
  result = qword_27EE2BD48;
  if (!qword_27EE2BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BD48);
  }

  return result;
}

unint64_t sub_2458EA330()
{
  result = qword_27EE2BD58;
  if (!qword_27EE2BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BD58);
  }

  return result;
}

unint64_t sub_2458EA384()
{
  result = qword_27EE2BD60;
  if (!qword_27EE2BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BD60);
  }

  return result;
}

unint64_t sub_2458EA3D8()
{
  result = qword_27EE2BD68;
  if (!qword_27EE2BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BD68);
  }

  return result;
}

unint64_t sub_2458EA470()
{
  result = qword_27EE2BD90;
  if (!qword_27EE2BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BD90);
  }

  return result;
}

unint64_t sub_2458EA4C8()
{
  result = qword_27EE2BD98;
  if (!qword_27EE2BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BD98);
  }

  return result;
}

unint64_t sub_2458EA520()
{
  result = qword_27EE2BDA0;
  if (!qword_27EE2BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BDA0);
  }

  return result;
}

unint64_t sub_2458EA578()
{
  result = qword_27EE2BDA8;
  if (!qword_27EE2BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BDA8);
  }

  return result;
}

unint64_t sub_2458EA5D0()
{
  result = qword_27EE2BDB0;
  if (!qword_27EE2BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BDB0);
  }

  return result;
}

unint64_t sub_2458EA628()
{
  result = qword_27EE2BDB8;
  if (!qword_27EE2BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BDB8);
  }

  return result;
}

unint64_t sub_2458EA680()
{
  result = qword_27EE2BDC0;
  if (!qword_27EE2BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BDC0);
  }

  return result;
}

unint64_t sub_2458EA6D8()
{
  result = qword_27EE2BDC8;
  if (!qword_27EE2BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BDC8);
  }

  return result;
}

unint64_t sub_2458EA730()
{
  result = qword_27EE2BDD0;
  if (!qword_27EE2BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BDD0);
  }

  return result;
}

void sub_2458EA810(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = type metadata accessor for IdentityCredentialWebPresentmentClientViewControllerAction();
    v4 = objc_allocWithZone(v3);
    v5 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
    v6 = sub_245910EB4();
    [v5 setObject:v6 forSetting:1];

    v8.receiver = v4;
    v8.super_class = v3;
    v7 = objc_msgSendSuper2(&v8, sel_initWithInfo_responder_, v5, 0);

    [v2 sendAction_];
  }
}

void sub_2458EA904(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong _setPreferredContentSize_];
  }
}

uint64_t sub_2458EA97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_245910D64();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_245910D34();

  v9 = sub_245910D24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  sub_2458B90EC(0, 0, v7, a3, v10);
}

uint64_t sub_2458EAA9C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  v2[9] = swift_task_alloc();
  sub_245910D34();
  v2[10] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458EAB64, v4, v3);
}

uint64_t sub_2458EAB64()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[9];
    v4 = v0[6];
    v5 = sub_24590E574();
    (*(*(v5 - 8) + 16))(v3, v4, v5);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    *(v6 + 24) = v3;
    v0[5] = v2;
    sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
    sub_24590C294();

    sub_2458ED978(v3, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2458EAD38(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  v2[9] = swift_task_alloc();
  sub_245910D34();
  v2[10] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458EAE00, v4, v3);
}

uint64_t sub_2458EAE00()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[9];
    v4 = v0[6];
    v5 = sub_24590C094();
    (*(*(v5 - 8) + 16))(v3, v4, v5);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    *(v6 + 24) = v3;
    v0[5] = v2;
    sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
    sub_24590C294();

    sub_2458ED978(v3, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2458EB03C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2458EDB4C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_245771BB4(v4, v5);
}

uint64_t sub_2458EB128(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_2458EDB48;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_245771BB4(v2, v3);
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C294();
  sub_245771C34(v5, v4);
}

uint64_t sub_2458EB284@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2458EDB4C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_245771BB4(v4, v5);
}

uint64_t sub_2458EB370(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_2458EDB48;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_245771BB4(v2, v3);
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C294();
  sub_245771C34(v5, v4);
}

uint64_t sub_2458EB4CC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2458EDB4C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_245771BB4(v4, v5);
}

uint64_t sub_2458EB5B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_2458EDB48;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_245771BB4(v2, v3);
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C294();
  sub_245771C34(v5, v4);
}

uint64_t sub_2458EB714@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2457C4B5C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_245771BB4(v4, v5);
}

uint64_t sub_2458EB800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_2458ED9F4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_245771BB4(v2, v3);
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C294();
  sub_245771C34(v5, v4);
}

uint64_t sub_2458EB95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v4 = OBJC_IVAR____TtC9CoreIDVUI56IdentityCredentialProviderRemoteDeviceSelectionViewModel__viewState;
  swift_beginAccess();
  return sub_2458ED670(v3 + v4, a2, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
}

uint64_t sub_2458EBA38(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2458ED670(a1, v6, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C294();

  return sub_2458ED978(v6, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
}

uint64_t sub_2458EBBAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionView(0);
  MEMORY[0x28223BE20](v30);
  v28 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BE10, &qword_24591E3B0);
  MEMORY[0x28223BE20](v9 - 8);
  v29 = &v25 - v10;
  v11 = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = a4;
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v14;
  sub_2458ED670(v13, v14, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
  v27 = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel(0);
  v15 = swift_allocObject();
  v15[1] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  v15[4] = 0u;
  swift_retain_n();
  sub_24590C2D4();
  sub_2458ED670(v14, v15 + OBJC_IVAR____TtC9CoreIDVUI56IdentityCredentialProviderRemoteDeviceSelectionViewModel__viewState, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
  swift_getKeyPath();
  v40 = v15;
  v41 = sub_2458ED6D8;
  v42 = a1;
  v43 = v15;
  sub_2458ED930(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);

  sub_24590C294();

  swift_getKeyPath();
  v37 = v15;
  v38 = a2;
  v39 = a3;
  v43 = v15;
  sub_24590C294();

  swift_getKeyPath();
  v34 = v15;
  v35 = sub_2458ED710;
  v36 = a1;
  v43 = v15;

  sub_24590C294();

  swift_getKeyPath();
  v31 = v15;
  v32 = sub_2458ED748;
  v33 = a1;
  v43 = v15;
  sub_24590C294();

  sub_2458ED978(v26, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
  a1[3] = a2;
  a1[4] = a3;

  sub_24590D344();
  v16 = swift_allocObject();
  swift_weakInit();
  a1[11] = &unk_24591E460;
  a1[12] = v16;

  v17 = swift_allocObject();
  swift_weakInit();
  a1[7] = &unk_24591E470;
  a1[8] = v17;

  KeyPath = swift_getKeyPath();
  v19 = v28;
  *v28 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC0, &unk_245916490);
  swift_storeEnumTagMultiPayload();
  v20 = v19 + *(v30 + 20);
  *v20 = sub_24590F5D4();
  *(v20 + 8) = v21 & 1;
  sub_2458ED930(&qword_27EE2BE20, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionView, &unk_24591E704);
  sub_245910234();

  sub_2458ED978(v19, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionView);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BE28, &qword_24591E4B0));
  v23 = sub_24590FC44();

  return v23;
}

uint64_t sub_2458EC174(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_24590F354();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_24590C094();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  v1[30] = swift_task_alloc();
  v4 = sub_24590E574();
  v1[31] = v4;
  v1[32] = *(v4 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v5 = sub_24590E974();
  v1[37] = v5;
  v1[38] = *(v5 - 8);
  v1[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BDE0, &qword_24591E318);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v6 = sub_24590E814();
  v1[44] = v6;
  v1[45] = *(v6 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v7 = sub_24590E8A4();
  v1[49] = v7;
  v1[50] = *(v7 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BDE8, &qword_24591E320);
  v1[53] = swift_task_alloc();
  sub_245910D34();
  v1[54] = sub_245910D24();
  v9 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458EC564, v9, v8);
}

void sub_2458EC564()
{
  v1 = v0;
  super_class = v0[26].super_class;
  sub_245911254();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BDF0, &unk_24591E328);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(super_class, 1, v3) == 1)
  {
    v5 = v1[26].super_class;

    sub_245778F94(v5, &qword_27EE2BDE8, &qword_24591E320);
LABEL_6:
    sub_24590C714();
    v12 = sub_24590F344();
    v13 = sub_245910F64();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v1[12].super_class;
    receiver = v1[11].receiver;
    v17 = v1[11].super_class;
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245767000, v12, v13, "Host XPC listener endpoint unexpectedly nil", v18, 2u);
      MEMORY[0x245D77B40](v18, -1, -1);
    }

    (*(v17 + 1))(v15, receiver);
    goto LABEL_12;
  }

  v6 = v1[26].super_class;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for BaseBoardXPCListenerEndpoint();
  sub_2458EA220();
  v7 = sub_24590F384();
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = v1[26].receiver;
  v9 = *&v7[OBJC_IVAR____TtC9CoreIDVUI28BaseBoardXPCListenerEndpoint_endpoint];

  type metadata accessor for IdentityCredentialProviderViewConnection();
  swift_allocObject();
  v10 = v9;
  v11 = sub_245909DF4(v10, 0, 0);

  sub_2459004A0(v8);
  v20 = v1[25].super_class;
  v19 = v1[26].receiver;
  v22 = v1[24].super_class;
  v21 = v1[25].receiver;
  v118 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[2](v20, v19, v22);
  v23 = (v21[11])(v20, v22);
  v115 = v10;
  v116 = v11;
  if (v23 == *MEMORY[0x277CFF758])
  {
    v24 = v1[25].super_class;
    v25 = v1[21].receiver;
    v27 = v1[19].receiver;
    v26 = v1[19].super_class;
    v28 = v1[18].super_class;
    (*(v1[25].receiver + 12))(v24, v1[24].super_class);
    v27[4](v26, v24, v28);
    sub_245911264();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BDF8, &qword_24591E338);
    v30 = *(v29 - 8);
    v31 = (*(v30 + 48))(v25, 1, v29);
    v32 = v1[21].receiver;
    if (v31 == 1)
    {
      sub_245778F94(v1[21].receiver, &qword_27EE2BDE0, &qword_24591E318);
    }

    else
    {
      BYTE2(v1[27].super_class) = 2;
      swift_getOpaqueTypeConformance2();
      sub_2458E9F4C();
      sub_2458E9FA0();
      sub_2458E9FF4();
      sub_2458EA048();
      sub_24590F3C4();
      (*(v30 + 8))(v32, v29);
    }

    v44 = v1[19].receiver;
    v43 = v1[19].super_class;
    v45 = v1[18].receiver;
    v113 = v1[18].super_class;
    v46 = v1[17].super_class;
    v44[2](v45, v43);
    swift_storeEnumTagMultiPayload();
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    KeyPath = swift_getKeyPath();
    v48 = swift_getKeyPath();
    v1[10].receiver = 0;

    sub_245910574();
    v49 = v1[8].receiver;
    v50 = v1[8].super_class;
    sub_2458ED670(v45, v46, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
    type metadata accessor for IdentityCredentialProviderSelectionViewModel(0);
    swift_allocObject();
    v51 = sub_2458DEE1C(v116, v46, sub_2458ED660, v118);
    sub_2458ED978(v45, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);

    v1[1].receiver = sub_2458ED668;
    v1[1].super_class = v47;
    v1[2].receiver = KeyPath;
    LOBYTE(v1[2].super_class) = 0;
    v1[3].receiver = v48;
    LOBYTE(v1[3].super_class) = 0;
    v1[4].receiver = v49;
    v1[4].super_class = v50;
    v1[5].receiver = v51;
    v1[5].super_class = 0;
    v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BE00, &qword_24591E3A0));
    v53 = sub_24590FC44();
    v44[1](v43, v113);
  }

  else if (v23 == *MEMORY[0x277CFF740])
  {
    v34 = v1[25].super_class;
    v35 = v1[24].receiver;
    v37 = v1[22].receiver;
    v36 = v1[22].super_class;
    v38 = v1[21].super_class;
    (*(v1[25].receiver + 12))(v34, v1[24].super_class);
    (*(v36 + 4))(v35, v34, v37);
    sub_245911264();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BDF8, &qword_24591E338);
    v40 = *(v39 - 8);
    v41 = (*(v40 + 48))(v38, 1, v39);
    v42 = v1[21].super_class;
    if (v41 == 1)
    {
      sub_245778F94(v1[21].super_class, &qword_27EE2BDE0, &qword_24591E318);
    }

    else
    {
      BYTE3(v1[27].super_class) = 0;
      swift_getOpaqueTypeConformance2();
      sub_2458E9F4C();
      sub_2458E9FA0();
      sub_2458E9FF4();
      sub_2458EA048();
      sub_24590F3C4();
      (*(v40 + 8))(v42, v39);
    }

    v63 = v1[23].super_class;
    v64 = v1[24].receiver;
    v66 = v1[22].super_class;
    v65 = v1[23].receiver;
    v67 = v1[22].receiver;
    v68 = *(v66 + 2);
    v68(v63, v64, v67);
    v68(v65, v63, v67);
    type metadata accessor for IdentityCredentialProviderAuthorizationViewModel(0);
    swift_allocObject();

    v69 = sub_2458FCAF8(v11, v65, sub_2458ED660, v118);

    v70 = *(v66 + 1);
    v70(v63, v67);
    v1[9].receiver = v69;
    v1[9].super_class = 0;
    v71 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BE08, &qword_24591E3A8));
    v53 = sub_24590FC44();
    v70(v64, v67);
  }

  else if (v23 == *MEMORY[0x277CFF750])
  {
    v54 = v1[25].super_class;
    v55 = v1[20].super_class;
    v57 = v1[16].receiver;
    v56 = v1[16].super_class;
    v58 = v1[15].super_class;
    (*(v1[25].receiver + 12))(v54, v1[24].super_class);
    v57[4](v56, v54, v58);
    sub_245911264();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BDF8, &qword_24591E338);
    v60 = *(v59 - 8);
    v61 = (*(v60 + 48))(v55, 1, v59);
    v62 = v1[20].super_class;
    if (v61 == 1)
    {
      sub_245778F94(v1[20].super_class, &qword_27EE2BDE0, &qword_24591E318);
    }

    else
    {
      BYTE1(v1[27].super_class) = 0;
      swift_getOpaqueTypeConformance2();
      sub_2458E9F4C();
      sub_2458E9FA0();
      sub_2458E9FF4();
      sub_2458EA048();
      sub_24590F3C4();
      (*(v60 + 8))(v62, v59);
    }

    v95 = v1[16].receiver;
    v94 = v1[16].super_class;
    v97 = v1[15].receiver;
    v96 = v1[15].super_class;
    v95[2](v97, v94, v96);
    swift_storeEnumTagMultiPayload();
    v53 = sub_2458EBBAC(v11, sub_2458ED660, v118, v97);
    sub_2458ED978(v97, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
    (v95[1])(v94, v96);
  }

  else
  {
    if (v23 != *MEMORY[0x277CFF748])
    {
      v98 = v1[25].super_class;
      v117 = v1[26].receiver;
      v100 = v1[24].super_class;
      v99 = v1[25].receiver;
      v114 = v1[10].super_class;

      v101 = v99[1];
      v101(v98, v100);
      v102 = type metadata accessor for IdentityCredentialWebPresentmentClientViewControllerAction();
      v103 = objc_allocWithZone(v102);
      v104 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
      v105 = v1;
      v106 = sub_245910EB4();
      [v104 setObject:v106 forSetting:1];

      v1 = v105;
      v105[6].receiver = v103;
      v105[6].super_class = v102;
      v107 = objc_msgSendSuper2(v105 + 6, sel_initWithInfo_responder_, v104, 0);

      [(objc_class *)v114 sendAction:v107];

      v101(v117, v100);
LABEL_12:
      v119 = 0;
      goto LABEL_13;
    }

    v85 = v1[25].super_class;
    v86 = v1[20].receiver;
    v88 = v1[13].super_class;
    v87 = v1[14].receiver;
    v89 = v1[13].receiver;
    (*(v1[25].receiver + 12))(v85, v1[24].super_class);
    (*(v88 + 4))(v87, v85, v89);
    sub_245911264();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BDF8, &qword_24591E338);
    v91 = *(v90 - 8);
    v92 = (*(v91 + 48))(v86, 1, v90);
    v93 = v1[20].receiver;
    if (v92 == 1)
    {
      sub_245778F94(v1[20].receiver, &qword_27EE2BDE0, &qword_24591E318);
    }

    else
    {
      LOBYTE(v1[27].super_class) = 0;
      swift_getOpaqueTypeConformance2();
      sub_2458E9F4C();
      sub_2458E9FA0();
      sub_2458E9FF4();
      sub_2458EA048();
      sub_24590F3C4();
      (*(v91 + 8))(v93, v90);
    }

    v108 = v1[15].receiver;
    v109 = v1[13].super_class;
    v110 = v1[14].receiver;
    v111 = v1[13].receiver;
    (*(v109 + 2))(v108, v110, v111);
    swift_storeEnumTagMultiPayload();
    v53 = sub_2458EBBAC(v11, sub_2458ED660, v118, v108);
    sub_2458ED978(v108, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
    (*(v109 + 1))(v110, v111);
  }

  v72 = v53;
  v73 = [v72 view];
  v74 = v72;

  if (!v73)
  {
    __break(1u);
    return;
  }

  v75 = v1[26].receiver;
  v77 = v1[24].super_class;
  v76 = v1[25].receiver;
  v78 = v1[10].super_class;

  [v73 setBackgroundColor_];

  v79 = type metadata accessor for IdentityCredentialWebPresentmentClientViewControllerAction();
  v80 = objc_allocWithZone(v79);
  v81 = v1;
  v82 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  v83 = sub_245910EB4();
  [v82 setObject:v83 forSetting:1];

  v81[7].receiver = v80;
  v81[7].super_class = v79;
  v84 = objc_msgSendSuper2(v81 + 7, sel_initWithInfo_responder_, v82, 0);

  v1 = v81;
  [(objc_class *)v78 sendAction:v84];

  v76[1](v75, v77);
  v119 = v74;
LABEL_13:

  v33 = v1->super_class;

  v33(v119);
}

uint64_t sub_2458ED670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2458ED800(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2457A18F4;

  return sub_2458EAA9C(a1, v1);
}

uint64_t sub_2458ED898(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2457AA49C;

  return sub_2458EAD38(a1, v1);
}

uint64_t sub_2458ED930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2458ED978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2458EDA1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245904DA8(a1, v4, v5, v6);
}

void sub_2458EDC3C(void *a1, void *a2)
{
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v25 - v10;
  v12 = [a1 info];
  if (!v12)
  {
    v27 = 0u;
    v28 = 0u;
LABEL_11:
    sub_2457B67E4(&v27);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 objectForSetting_];

  if (v14)
  {
    sub_245911354();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!v25)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if (v25 != 1)
  {
LABEL_12:
    sub_24590C714();
    v16 = sub_24590F344();
    v17 = sub_245910F64();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245767000, v16, v17, "Could not deserialize action value", v18, 2u);
      MEMORY[0x245D77B40](v18, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    return;
  }

  v15 = 1;
LABEL_17:
  v19 = [a2 sceneViewController];
  v20 = [v19 parentViewController];

  if (v20)
  {
    type metadata accessor for IdentityCredentialProviderHostViewController();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      if (v15)
      {
        [v21 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
        [v21 _endDelayingPresentation];
      }

      return;
    }
  }

  sub_24590C714();
  v22 = sub_24590F344();
  v23 = sub_245910F64();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_245767000, v22, v23, "Host view controller unexpectedly nil", v24, 2u);
    MEMORY[0x245D77B40](v24, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_2458EE144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  v4[3] = swift_task_alloc();
  v5 = sub_24590F354();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_24590E8A4();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_245910D34();
  v4[11] = sub_245910D24();
  v8 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458EE2D0, v8, v7);
}

uint64_t sub_2458EE2D0()
{
  v1 = *(v0 + 72);

  sub_2459004A0(v1);
  v2 = sub_2458EE5AC(*(v0 + 72));
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v8 = v2;
  [*(v0 + 16) presentViewController:v2 animated:1 completion:0];

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_2458EE5AC(uint64_t a1)
{
  v61 = a1;
  v1 = sub_24590EA74();
  v50 = *(v1 - 8);
  v51 = v1;
  MEMORY[0x28223BE20](v1);
  v52 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24590E814();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v46 - v6;
  MEMORY[0x28223BE20](v7);
  v55 = &v46 - v8;
  v58 = sub_24590E974();
  v9 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24590E574();
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x28223BE20](v15);
  v47 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24590E8A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v18 + 16))(v20, v61, v17);
  v22 = (*(v18 + 88))(v20, v17);
  if (v22 == *MEMORY[0x277CFF758])
  {
    (*(v18 + 96))(v20, v17);
    v23 = v20;
    v24 = v58;
    (*(v9 + 32))(v11, v23, v58);
    (*(v9 + 16))(v14, v11, v24);
    swift_storeEnumTagMultiPayload();
    v25 = objc_allocWithZone(type metadata accessor for IdentityCredentialProviderSelectionViewHostingController(0));

    v27 = sub_2458EF394(v26, v14, sub_2458F006C, v21);
    (*(v9 + 8))(v11, v24);
  }

  else if (v22 == *MEMORY[0x277CFF740])
  {
    (*(v18 + 96))(v20, v17);
    v29 = v55;
    v28 = v56;
    v30 = v57;
    (*(v56 + 32))(v55, v20, v57);
    v31 = *(v28 + 16);
    v32 = v54;
    v31(v54, v29, v30);
    v33 = v53;
    v31(v53, v32, v30);
    type metadata accessor for IdentityCredentialProviderAuthorizationViewModel(0);
    swift_allocObject();

    v35 = sub_2458FCAF8(v34, v33, sub_2458F006C, v21);

    v36 = *(v28 + 8);
    v36(v32, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_245916860;
    *(v37 + 32) = [objc_opt_self() largeDetent];
    v38 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2BF00, &qword_24591E648));
    v59 = v35;
    v60 = 0;
    *&v38[*((*MEMORY[0x277D85000] & *v38) + qword_27EE2BE68 + 16)] = v37;
    v27 = sub_24590FC44();

    v36(v29, v30);
  }

  else if (v22 == *MEMORY[0x277CFF750])
  {
    (*(v18 + 96))(v20, v17);
    v41 = v47;
    v40 = v48;
    v42 = v49;
    (*(v48 + 32))(v47, v20, v49);
    (*(v40 + 16))(v14, v41, v42);
    swift_storeEnumTagMultiPayload();
    v43 = objc_allocWithZone(type metadata accessor for IdentityCredentialProviderSelectionViewHostingController(0));

    v27 = sub_2458EF394(v44, v14, sub_2458F006C, v21);
    (*(v40 + 8))(v41, v42);
  }

  else
  {
    if (v22 == *MEMORY[0x277CFF748])
    {
      (*(v18 + 96))(v20, v17);
      v45 = sub_24590C094();
      (*(*(v45 - 8) + 8))(v20, v45);
    }

    else
    {
      (*(v18 + 8))(v20, v17);
    }

    (*(v50 + 104))(v52, *MEMORY[0x277CFFA38], v51);
    v27 = sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }

  return v27;
}

void sub_2458EEE60(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_245910D64();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_245910D34();
    v7 = v5;
    v8 = sub_245910D24();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_2458B90EC(0, 0, v3, &unk_24591E6B8, v9);
  }
}

uint64_t sub_2458EEFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_245910D34();
  *(v4 + 24) = sub_245910D24();
  v6 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458EF04C, v6, v5);
}

uint64_t sub_2458EF04C()
{
  v1 = *(v0 + 16);

  [v1 dismissViewControllerAnimated:1 completion:0];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for IdentityCredentialProviderSelectionViewHostingController(uint64_t a1)
{
  result = qword_27EE2BE58;
  if (!qword_27EE2BE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2458EF1C8(double a1)
{
  v3 = [v1 sheetPresentationController];
  if (v3)
  {
    if (*&v1[qword_27EE2BE40] == a1)
    {
    }

    else
    {
      v8 = v3;
      v4 = swift_allocObject();
      *(v4 + 16) = v8;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_2458F007C;
      *(v5 + 24) = v4;
      aBlock[4] = sub_2458F008C;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2458E7310;
      aBlock[3] = &block_descriptor_36;
      v6 = _Block_copy(aBlock);
      v7 = v8;

      [v7 animateChanges_];

      _Block_release(v6);
      LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

      if (v6)
      {
        __break(1u);
      }
    }
  }
}

id sub_2458EF394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a2;
  v10 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  *(v5 + qword_27EE2BE40) = 0;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2458E2754(a2, v15);
  KeyPath = swift_getKeyPath();
  v38 = 0;
  v18 = swift_getKeyPath();
  v37 = 0;
  v36 = 0;

  sub_245910574();
  v19 = v26;
  v20 = v27;
  sub_2458E2754(v15, v12);
  type metadata accessor for IdentityCredentialProviderSelectionViewModel(0);
  swift_allocObject();
  v21 = sub_2458DEE1C(a1, v12, a3, a4);
  sub_2458DCC78(v15);
  v26 = sub_2458F0074;
  v27 = v16;
  v28 = KeyPath;
  v29 = v38;
  v30 = v18;
  v31 = v37;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = 0;
  v22 = sub_24590FC44();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v23 = v22;
  [v23 setModalPresentationStyle_];
  [v23 setTransitioningDelegate_];
  sub_24590FC34();

  sub_2458DCC78(v25);

  return v23;
}

void sub_2458EF604(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + qword_27EE2BE40);
    *(Strong + qword_27EE2BE40) = a2;
    sub_2458EF1C8(v5);
  }
}

void sub_2458EF674(uint64_t a1)
{
  *(a1 + qword_27EE2BE40) = 0;
  sub_2459115D4();
  __break(1u);
}

void sub_2458EF6DC(void *a1)
{
  v4.receiver = a1;
  v4.super_class = swift_getObjectType();
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2458EF764()
{
  if (qword_27EE28700 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE32CA0;

  return v1;
}

id sub_2458EF7C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return *MEMORY[0x277D76ED8];
  }

  v3 = Strong;
  v4 = *&Strong[qword_27EE2BE40];
  result = [Strong view];
  if (result)
  {
    v6 = result;
    [result safeAreaInsets];
    v8 = v7;

    v9 = v4 - v8;
    v10 = [objc_opt_self() mediumDetent];
    v11 = sub_245911164();

    if (v9 <= 0.0)
    {
      return v11;
    }

    else
    {
      return *&v9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2458EF8D4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_2458EFE90(v8, a4);

  return v12;
}

uint64_t sub_2458EFA24(void *a1)
{
  v1 = qword_27EE28700;
  v2 = a1;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_27EE32CA0;
  v4 = qword_27EE32CA0;

  return v3;
}

void sub_2458EFB04(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RemoteIdentityCredentialProviderHostingController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27EE2BE68), *((*MEMORY[0x277D85000] & *v4) + qword_27EE2BE68 + 8), a4);
  v10.receiver = v4;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v7 = [v4 sheetPresentationController];
  if (v7)
  {
    v8 = v7;
    sub_2458F0018();
    v9 = sub_245910C34();
    [v8 setDetents_];
  }
}

void sub_2458EFC28(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_2458EFB04(a3, v6, v4, v5);
}

id sub_2458EFD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RemoteIdentityCredentialProviderHostingController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27EE2BE68), *((*MEMORY[0x277D85000] & *v4) + qword_27EE2BE68 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2458EFE34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24590F984();
  *a1 = result;
  return result;
}

id sub_2458EFE90(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75A20]) initWithPresentedViewController:a1 presentingViewController:a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460, &unk_245917290);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_245916860;
  sub_2458F0018();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = sub_245911174();

  *(v3 + 32) = v4;
  v5 = sub_245910C34();

  [v2 setDetents_];

  return v2;
}

unint64_t sub_2458F0018()
{
  result = qword_27EE2BCF0;
  if (!qword_27EE2BCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE2BCF0);
  }

  return result;
}

double block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2458F00AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2458EEFB4(a1, v4, v5, v6);
}

uint64_t type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionView(uint64_t a1)
{
  result = qword_27EE2BF18;
  if (!qword_27EE2BF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2458F0208(uint64_t a1)
{
  sub_2458F02C4(319, &qword_27EE2BF28, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_2458F02C4(319, &qword_27EE2BF30, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2458F02C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24590F5C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2458F0334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF40, &qword_24591E788);
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = &v36 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF48, &qword_24591E790);
  MEMORY[0x28223BE20](v38);
  v6 = &v36 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF50, &qword_24591E798);
  MEMORY[0x28223BE20](v39);
  v8 = &v36 - v7;
  v9 = sub_24590F734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  sub_24577A7D4(&v36 - v14);
  sub_24590F724();
  sub_2458F5608(&qword_27EE2BF58, MEMORY[0x277CDF7E8], MEMORY[0x277CDF7F0]);
  v16 = sub_245910934();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v18 = (v17)(v15, v9);
  if (v16)
  {
    *v8 = sub_24590FBC4();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BFC8, &qword_24591E7E8);
    sub_2458F176C(a1, &v8[*(v19 + 44)]);
    v20 = sub_24590FFB4();
    v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BFB8, &qword_24591E7E0) + 36)];
    *v21 = v20;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = 1;
    sub_2459106E4();
    sub_24590F684();
    v22 = &v8[*(v39 + 36)];
    v23 = v43;
    *v22 = v42;
    *(v22 + 1) = v23;
    *(v22 + 2) = v44;
    sub_245778F2C(v8, v6, &qword_27EE2BF50, &qword_24591E798);
    swift_storeEnumTagMultiPayload();
    sub_2458F50DC();
    sub_245778BD8(&qword_27EE2BFC0, &qword_27EE2BF40, &qword_24591E788, MEMORY[0x277CDDA18]);
    sub_24590FD14();
    return sub_245778F94(v8, &qword_27EE2BF50, &qword_24591E798);
  }

  else
  {
    MEMORY[0x28223BE20](v18);
    *(&v36 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF60, &qword_24591E7A0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BF68, &unk_24591E7A8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29FD0, &qword_2459195D0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BF70, &qword_24591E7B8);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BF78, &qword_24591E7C0);
    v28 = sub_2458F4F80();
    *&v42 = v27;
    *(&v42 + 1) = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v42 = v26;
    *(&v42 + 1) = OpaqueTypeConformance2;
    v30 = swift_getOpaqueTypeConformance2();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29FE0, &qword_2459195D8);
    v32 = sub_245778BD8(&qword_27EE29FE8, &qword_27EE29FE0, &qword_2459195D8, MEMORY[0x277CDD7A8]);
    *&v42 = v31;
    *(&v42 + 1) = v32;
    v33 = swift_getOpaqueTypeConformance2();
    *&v42 = v36;
    *(&v42 + 1) = v25;
    *&v43 = v30;
    *(&v43 + 1) = v33;
    swift_getOpaqueTypeConformance2();
    sub_24590F864();
    v34 = v37;
    v35 = v41;
    (*(v37 + 16))(v6, v4, v41);
    swift_storeEnumTagMultiPayload();
    sub_2458F50DC();
    sub_245778BD8(&qword_27EE2BFC0, &qword_27EE2BF40, &qword_24591E788, MEMORY[0x277CDDA18]);
    sub_24590FD14();
    return (*(v34 + 8))(v4, v35);
  }
}

uint64_t sub_2458F096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24590FB44();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590C234();
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24590BFB4();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2459109B4();
  MEMORY[0x28223BE20](v9 - 8);
  v61 = sub_24590BFC4();
  v56 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF90, &unk_24591E7D0);
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF88, &qword_24591E7C8);
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF78, &qword_24591E7C0);
  MEMORY[0x28223BE20](v19);
  v72 = &v54 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF70, &qword_24591E7B8);
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v73 = &v54 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF68, &unk_24591E7A8);
  v66 = *(v22 - 8);
  v67 = v22;
  MEMORY[0x28223BE20](v22);
  v65 = &v54 - v23;
  *v18 = sub_24590FBC4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v24 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BFC8, &qword_24591E7E8) + 44)];
  v71 = a1;
  sub_2458F176C(a1, v24);
  v25 = *MEMORY[0x277CDFA10];
  v26 = sub_24590F774();
  (*(*(v26 - 8) + 104))(v15, v25, v26);
  sub_2458F5608(&qword_27EE2B930, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if ((sub_245910934() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v54 = a2;
  sub_245778BD8(&qword_27EE2BF98, &qword_27EE2BF88, &qword_24591E7C8, MEMORY[0x277CE1198]);
  sub_245778BD8(&qword_27EE2BFA0, &qword_27EE2BF90, &unk_24591E7D0, MEMORY[0x277D84348]);
  v27 = v72;
  sub_2459102A4();
  sub_2458F5650(v15);
  sub_245778F94(v18, &qword_27EE2BF88, &qword_24591E7C8);
  v28 = sub_24590FFB4();
  v29 = &v27[*(v19 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  sub_245910944();
  if (qword_27EE28730 != -1)
  {
LABEL_5:
    swift_once();
  }

  v30 = v62;
  v31 = __swift_project_value_buffer(v62, qword_27EE2C450);
  (*(v60 + 16))(v58, v31, v30);
  sub_24590C224();
  v32 = v55;
  sub_24590BFE4();
  v33 = v56;
  v34 = v61;
  (*(v56 + 16))(v57, v32, v61);
  v35 = sub_245910194();
  v37 = v36;
  v39 = v38;
  v40 = sub_2458F4F80();
  v41 = v72;
  sub_2459102D4();
  sub_24580FD24(v35, v37, v39 & 1);

  (*(v33 + 8))(v32, v34);
  sub_245778F94(v41, &qword_27EE2BF78, &qword_24591E7C0);
  v43 = v68;
  v42 = v69;
  v44 = v70;
  (*(v69 + 104))(v68, *MEMORY[0x277CDDDC0], v70);
  v74 = v19;
  v75 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v65;
  v47 = v63;
  v48 = v73;
  sub_245910394();
  (*(v42 + 8))(v43, v44);
  v49 = (*(v59 + 8))(v48, v47);
  MEMORY[0x28223BE20](v49);
  *(&v54 - 2) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FD0, &qword_2459195D0);
  v74 = v47;
  v75 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29FE0, &qword_2459195D8);
  v51 = sub_245778BD8(&qword_27EE29FE8, &qword_27EE29FE0, &qword_2459195D8, MEMORY[0x277CDD7A8]);
  v74 = v50;
  v75 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v67;
  sub_2459103C4();
  return (*(v66 + 8))(v46, v52);
}

uint64_t sub_2458F12F0(uint64_t a1)
{
  v2 = sub_24590FDA4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FE0, &qword_2459195D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24590FD74();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A020, &unk_24591D720);
  sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020, &unk_24591D720, MEMORY[0x277CDF028]);
  sub_24590F5F4();
  v7 = sub_245778BD8(&qword_27EE29FE8, &qword_27EE29FE0, &qword_2459195D8, MEMORY[0x277CDD7A8]);
  MEMORY[0x245D75410](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2458F14DC(uint64_t a1)
{
  v2 = sub_24590FB14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590F584();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590F574();
  v9 = (a1 + *(type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionView(0) + 20));
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    sub_245910F74();
    v12 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v10 = v14[1];
  }

  return MEMORY[0x245D75C00](v8, sub_2458F5890, v10);
}

uint64_t sub_2458F16A8(uint64_t a1)
{
  swift_getKeyPath();
  sub_2458F5608(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 24);

    v3(v5);
    return sub_245771C34(v3, v4);
  }

  return result;
}

uint64_t sub_2458F176C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BFD0, &qword_24591E7F0);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v64 = &v58[-v6];
  v62 = sub_24590F734();
  v7 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v58[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BFD8, &qword_24591E7F8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BFE0, &qword_24591E800);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v58[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BFE8, &qword_24591E808);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v63 = &v58[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v58[-v24];
  MEMORY[0x28223BE20](v26);
  v60 = &v58[-v27];
  v61 = a1;
  sub_2458F1C50(v15);
  v59 = sub_24590FFC4();
  sub_24577A7D4(v12);
  sub_24590F724();
  sub_24590F714();
  v28 = *(v7 + 8);
  v29 = v9;
  v30 = v62;
  v28(v29, v62);
  v28(v12, v30);
  sub_24590F594();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_24577ABC4(v15, v19, &qword_27EE2BFD8, &qword_24591E7F8);
  v39 = &v19[*(v17 + 44)];
  *v39 = v59;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(a1) = sub_24590FFD4();
  sub_24590F594();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_24577ABC4(v19, v25, &qword_27EE2BFE0, &qword_24591E800);
  v48 = &v25[*(v21 + 44)];
  *v48 = a1;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = v60;
  sub_24577ABC4(v25, v60, &qword_27EE2BFE8, &qword_24591E808);
  v50 = sub_24590FB74();
  v51 = v64;
  *v64 = v50;
  *(v51 + 8) = 0;
  *(v51 + 16) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BFF0, &qword_24591E810);
  sub_2458F259C(v61, v51 + *(v52 + 44));
  v53 = v63;
  sub_245778F2C(v49, v63, &qword_27EE2BFE8, &qword_24591E808);
  v54 = v65;
  sub_245778F2C(v51, v65, &qword_27EE2BFD0, &qword_24591E7F0);
  v55 = v66;
  sub_245778F2C(v53, v66, &qword_27EE2BFE8, &qword_24591E808);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BFF8, &qword_24591E818);
  sub_245778F2C(v54, v55 + *(v56 + 48), &qword_27EE2BFD0, &qword_24591E7F0);
  sub_245778F94(v51, &qword_27EE2BFD0, &qword_24591E7F0);
  sub_245778F94(v49, &qword_27EE2BFE8, &qword_24591E808);
  sub_245778F94(v54, &qword_27EE2BFD0, &qword_24591E7F0);
  return sub_245778F94(v53, &qword_27EE2BFE8, &qword_24591E808);
}

uint64_t sub_2458F1C50@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v65 = type metadata accessor for IdentityCredentialProviderAuxiliaryView(0);
  MEMORY[0x28223BE20](v65);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24590E574();
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C0B8, &qword_24591E940);
  MEMORY[0x28223BE20](v61);
  v63 = &v50 - v7;
  v8 = type metadata accessor for IdentityCredentialScanWithDeviceView(0);
  MEMORY[0x28223BE20](v8);
  v53 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C0C0, &qword_24591E948);
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v55 = &v50 - v10;
  v56 = sub_24590C094();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v50 - v13;
  v59 = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v59);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24590FB14();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1 + *(type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionView(0) + 20);
  v21 = *v20;
  v22 = *(v20 + 8);

  if ((v22 & 1) == 0)
  {
    sub_245910F74();
    v23 = sub_24590FF74();
    v51 = v3;
    v24 = v4;
    v25 = v6;
    v26 = v8;
    v27 = v23;
    sub_24590F314();

    v8 = v26;
    v6 = v25;
    v4 = v24;
    v3 = v51;
    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v21 = v66;
  }

  swift_getKeyPath();
  v66 = v21;
  sub_2458F5608(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v28 = OBJC_IVAR____TtC9CoreIDVUI56IdentityCredentialProviderRemoteDeviceSelectionViewModel__viewState;
  swift_beginAccess();
  sub_2458F5540(v21 + v28, v15, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v57;
    (*(v57 + 32))(v6, v15, v4);
    (*(v29 + 16))(v3, v6, v4);
    sub_2458F5540(v3, v63, type metadata accessor for IdentityCredentialProviderAuxiliaryView);
    swift_storeEnumTagMultiPayload();
    v30 = type metadata accessor for IdentityCredentialScanWithDeviceViewModel(255);
    v31 = sub_2458F5608(&qword_27EE2C0C8, type metadata accessor for IdentityCredentialScanWithDeviceView, &unk_24591EB68);
    v32 = sub_2458F5608(&qword_27EE2C0D0, type metadata accessor for IdentityCredentialScanWithDeviceViewModel, &unk_24591ECE8);
    v66 = v8;
    v67 = v30;
    v68 = v31;
    v69 = v32;
    swift_getOpaqueTypeConformance2();
    sub_2458F5608(&qword_27EE2B720, type metadata accessor for IdentityCredentialProviderAuxiliaryView, &unk_24591EF58);
    sub_24590FD14();
    sub_2458F55A8(v3, type metadata accessor for IdentityCredentialProviderAuxiliaryView);
    return (*(v29 + 8))(v6, v4);
  }

  else
  {
    v34 = v54;
    v35 = v60;
    v36 = v15;
    v37 = v56;
    (*(v54 + 32))(v60, v36, v56);
    v38 = type metadata accessor for IdentityCredentialScanWithDeviceViewModel(0);
    v39 = sub_2458F5608(&qword_27EE2C0D0, type metadata accessor for IdentityCredentialScanWithDeviceViewModel, &unk_24591ECE8);
    v40 = sub_24590F5D4();
    v41 = v53;
    *v53 = v40;
    *(v41 + 8) = v42 & 1;
    *(v41 + 16) = swift_getKeyPath();
    *(v41 + 24) = 0;
    v43 = *(v8 + 24);
    *(v41 + v43) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC0, &unk_245916490);
    swift_storeEnumTagMultiPayload();
    v44 = v52;
    (*(v34 + 16))(v52, v35, v37);
    swift_allocObject();
    sub_2458F751C(v44);
    v45 = v8;
    v46 = sub_2458F5608(&qword_27EE2C0C8, type metadata accessor for IdentityCredentialScanWithDeviceView, &unk_24591EB68);
    v47 = v55;
    sub_245910234();

    sub_2458F55A8(v41, type metadata accessor for IdentityCredentialScanWithDeviceView);
    v48 = v58;
    v49 = v62;
    (*(v58 + 16))(v63, v47, v62);
    swift_storeEnumTagMultiPayload();
    v66 = v45;
    v67 = v38;
    v68 = v46;
    v69 = v39;
    swift_getOpaqueTypeConformance2();
    sub_2458F5608(&qword_27EE2B720, type metadata accessor for IdentityCredentialProviderAuxiliaryView, &unk_24591EF58);
    sub_24590FD14();
    (*(v48 + 8))(v47, v49);
    return (*(v34 + 8))(v60, v37);
  }
}

uint64_t sub_2458F259C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v281 = a2;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C000, &qword_24591E820);
  MEMORY[0x28223BE20](v267);
  v268 = &v213 - v3;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C008, &qword_24591E828);
  MEMORY[0x28223BE20](v280);
  v269 = &v213 - v4;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C010, &qword_24591E830);
  MEMORY[0x28223BE20](v253);
  v239 = &v213 - v5;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C018, &qword_24591E838);
  MEMORY[0x28223BE20](v277);
  v279 = &v213 - v6;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C020, &qword_24591E840);
  MEMORY[0x28223BE20](v250);
  v252 = &v213 - v7;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C028, &qword_24591E848);
  MEMORY[0x28223BE20](v278);
  v254 = &v213 - v8;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C030, &qword_24591E850);
  MEMORY[0x28223BE20](v251);
  v231 = &v213 - v9;
  v230 = sub_24590FEA4();
  v228 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v226 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24590C234();
  MEMORY[0x28223BE20](v11 - 8);
  v244 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_24590BFB4();
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v243 = &v213 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2459109B4();
  MEMORY[0x28223BE20](v14 - 8);
  v240 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_24590BFC4();
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v235 = &v213 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v223 = &v213 - v18;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C038, &qword_24591E858);
  v248 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v237 = (&v213 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v271 = (&v213 - v21);
  MEMORY[0x28223BE20](v22);
  v224 = &v213 - v23;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C040, &qword_24591E860);
  v227 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v225 = &v213 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v238 = &v213 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C048, &unk_24591E868);
  v275 = *(v27 - 8);
  v276 = v27;
  MEMORY[0x28223BE20](v27);
  v264 = (&v213 - v28);
  v260 = sub_24590FC14();
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v258 = &v213 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24590F584();
  MEMORY[0x28223BE20](v30 - 8);
  v233 = &v213 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v217 = &v213 - v33;
  MEMORY[0x28223BE20](v34);
  v221 = &v213 - v35;
  MEMORY[0x28223BE20](v36);
  v214 = &v213 - v37;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A020, &unk_24591D720);
  v256 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v234 = &v213 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v218 = &v213 - v40;
  MEMORY[0x28223BE20](v41);
  v222 = &v213 - v42;
  MEMORY[0x28223BE20](v43);
  v215 = &v213 - v44;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C050, &qword_24591E878);
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v232 = &v213 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v216 = &v213 - v47;
  MEMORY[0x28223BE20](v48);
  v220 = &v213 - v49;
  MEMORY[0x28223BE20](v50);
  v261 = &v213 - v51;
  MEMORY[0x28223BE20](v52);
  v213 = &v213 - v53;
  v54 = sub_24590F734();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v213 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v213 - v59;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C058, &qword_24591E880);
  MEMORY[0x28223BE20](v265);
  v62 = &v213 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v219 = &v213 - v64;
  MEMORY[0x28223BE20](v65);
  v255 = &v213 - v66;
  MEMORY[0x28223BE20](v67);
  v247 = &v213 - v68;
  MEMORY[0x28223BE20](v69);
  v236 = &v213 - v70;
  v71 = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v71);
  v73 = &v213 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24590FB14();
  v273 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v272 = &v213 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionView(0) + 20);
  v274 = a1;
  v77 = (a1 + v76);
  v78 = *v77;
  v79 = *(v77 + 8);

  v282 = v78;
  v270 = v79;
  if ((v79 & 1) == 0)
  {
    sub_245910F74();
    v80 = sub_24590FF74();
    sub_24590F314();

    v81 = v272;
    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v273 + 8))(v81, v74);
    v78 = v284;
  }

  v266 = v74;
  swift_getKeyPath();
  v284 = v78;
  sub_2458F5608(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v82 = OBJC_IVAR____TtC9CoreIDVUI56IdentityCredentialProviderRemoteDeviceSelectionViewModel__viewState;
  swift_beginAccess();
  sub_2458F5540(v78 + v82, v73, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v83 = sub_24590E574();
    v84 = *(v83 - 8);
    v85 = v84[11](v73, v83);
    if (v85 == *MEMORY[0x277CFF680])
    {
      sub_245910944();
      if (qword_27EE28730 != -1)
      {
        swift_once();
      }

      v86 = v242;
      v87 = __swift_project_value_buffer(v242, qword_27EE2C450);
      (*(v241 + 16))(v243, v87, v86);
      sub_24590C224();
      v88 = v235;
      sub_24590BFE4();
      v89 = v282;

      v91 = v266;
      v92 = v270;
      if ((v270 & 1) == 0)
      {
        sub_245910F74();
        v93 = sub_24590FF74();
        sub_24590F314();

        v94 = v272;
        sub_24590FB04();
        swift_getAtKeyPath();

        v90 = (*(v273 + 8))(v94, v91);
      }

      MEMORY[0x28223BE20](v90);
      *(&v213 - 2) = v88;
      sub_2459105B4();
      (*(v245 + 8))(v88, v246);
      sub_24577A7D4(v60);
      sub_24590F724();
      v95 = sub_24590F714();
      v96 = *(v55 + 8);
      v96(v57, v54);
      v96(v60, v54);
      if (v95)
      {
        v97 = v221;
        sub_24590F574();

        if ((v92 & 1) == 0)
        {
          sub_245910F74();
          v98 = sub_24590FF74();
          sub_24590F314();

          v99 = v272;
          sub_24590FB04();
          swift_getAtKeyPath();

          (*(v273 + 8))(v99, v91);
          v89 = v283;
        }

        v100 = v222;
        MEMORY[0x245D75C00](v97, sub_2458F551C, v89);
        v101 = v258;
        sub_24590FC04();
        sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020, &unk_24591D720, MEMORY[0x277CDF028]);
        sub_2458F5608(&qword_27EE2C090, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
        v102 = v220;
        v103 = v257;
        v104 = v260;
        sub_245910214();
        (*(v259 + 8))(v101, v104);
        (*(v256 + 8))(v100, v103);
        v105 = v262;
        v106 = *(v262 + 16);
        v107 = v261;
        v108 = v263;
        v106(v261, v102, v263);
        v109 = v264;
        *v264 = 0;
        *(v109 + 8) = 1;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C098, &qword_24591E8B0);
        v106((v109 + *(v110 + 48)), v107, v108);
        v111 = *(v105 + 8);
        v111(v102, v108);
        v111(v107, v108);
        v112 = v255;
        sub_24577ABC4(v109, v255, &qword_27EE2C048, &unk_24591E868);
        v113 = 0;
      }

      else
      {
        v113 = 1;
        v112 = v255;
      }

      (*(v275 + 56))(v112, v113, 1, v276);
      v160 = v248;
      v161 = *(v248 + 16);
      v162 = v237;
      v163 = v249;
      v161(v237, v271, v249);
      v164 = v112;
      v165 = v247;
      sub_245778F2C(v164, v247, &qword_27EE2C058, &qword_24591E880);
      v166 = v239;
      v161(v239, v162, v163);
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C0A0, &qword_24591E8B8);
      sub_245778F2C(v165, v166 + *(v167 + 48), &qword_27EE2C058, &qword_24591E880);
      sub_245778F94(v165, &qword_27EE2C058, &qword_24591E880);
      v168 = *(v160 + 8);
      v168(v162, v163);
      sub_245778F2C(v166, v252, &qword_27EE2C010, &qword_24591E830);
      swift_storeEnumTagMultiPayload();
      v169 = MEMORY[0x277CE14C0];
      sub_245778BD8(&qword_27EE2C078, &qword_27EE2C030, &qword_24591E850, MEMORY[0x277CE14C0]);
      sub_245778BD8(&qword_27EE2C080, &qword_27EE2C010, &qword_24591E830, v169);
      v170 = v254;
      sub_24590FD14();
      sub_245778F2C(v170, v279, &qword_27EE2C028, &qword_24591E848);
      swift_storeEnumTagMultiPayload();
      sub_2458F52D0();
      sub_2458F53B0();
      sub_24590FD14();
      sub_245778F94(v170, &qword_27EE2C028, &qword_24591E848);
      sub_245778F94(v166, &qword_27EE2C010, &qword_24591E830);
      sub_245778F94(v255, &qword_27EE2C058, &qword_24591E880);
      return (v168)(v271, v163);
    }

    else
    {
      v133 = v85;
      v271 = v84;
      v134 = *MEMORY[0x277CFF688];
      sub_24577A7D4(v60);
      sub_24590F724();
      v135 = sub_24590F714();
      v136 = *(v55 + 8);
      v136(v57, v54);
      v136(v60, v54);
      if (v133 == v134)
      {
        v137 = v266;
        if (v135)
        {
          v138 = v214;
          sub_24590F574();
          v139 = v282;

          v140 = v139;
          v141 = v270;
          if ((v270 & 1) == 0)
          {
            sub_245910F74();
            v142 = sub_24590FF74();
            sub_24590F314();

            v143 = v272;
            sub_24590FB04();
            swift_getAtKeyPath();

            (*(v273 + 8))(v143, v137);
            v140 = v283;
          }

          v144 = v215;
          MEMORY[0x245D75C00](v138, sub_2458F5890, v140);
          v145 = v258;
          sub_24590FC04();
          sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020, &unk_24591D720, MEMORY[0x277CDF028]);
          sub_2458F5608(&qword_27EE2C090, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
          v146 = v213;
          v147 = v257;
          v148 = v260;
          sub_245910214();
          (*(v259 + 8))(v145, v148);
          (*(v256 + 8))(v144, v147);
          v149 = v262;
          v150 = *(v262 + 16);
          v151 = v261;
          v152 = v263;
          v150(v261, v146, v263);
          v153 = v264;
          *v264 = 0;
          *(v153 + 8) = 1;
          v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C098, &qword_24591E8B0);
          v150((v153 + *(v154 + 48)), v151, v152);
          v155 = *(v149 + 8);
          v155(v146, v152);
          v155(v151, v152);
          v156 = v236;
          sub_24577ABC4(v153, v236, &qword_27EE2C048, &unk_24591E868);
          v157 = 0;
        }

        else
        {
          v157 = 1;
          v156 = v236;
          v141 = v270;
        }

        (*(v275 + 56))(v156, v157, 1, v276);
        sub_245910944();
        v191 = v223;
        if (qword_27EE28730 != -1)
        {
          swift_once();
        }

        v192 = v242;
        v193 = __swift_project_value_buffer(v242, qword_27EE2C450);
        (*(v241 + 16))(v243, v193, v192);
        sub_24590C224();
        sub_24590BFE4();

        if ((v141 & 1) == 0)
        {
          sub_245910F74();
          v195 = sub_24590FF74();
          sub_24590F314();

          v196 = v272;
          sub_24590FB04();
          swift_getAtKeyPath();

          v194 = (*(v273 + 8))(v196, v137);
        }

        MEMORY[0x28223BE20](v194);
        *(&v213 - 2) = v191;
        v197 = v224;
        sub_2459105B4();
        (*(v245 + 8))(v191, v246);
        v198 = v226;
        sub_24590FE94();
        sub_245778BD8(&qword_27EE2C0A8, &qword_27EE2C038, &qword_24591E858, MEMORY[0x277CDF028]);
        sub_2458F5608(&qword_27EE2B7A0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
        v199 = v238;
        v200 = v249;
        v201 = v230;
        sub_245910224();
        (*(v228 + 8))(v198, v201);
        (*(v248 + 8))(v197, v200);
        v202 = v247;
        sub_245778F2C(v156, v247, &qword_27EE2C058, &qword_24591E880);
        v203 = v227;
        v204 = *(v227 + 16);
        v205 = v225;
        v206 = v229;
        v204(v225, v199, v229);
        v207 = v231;
        sub_245778F2C(v202, v231, &qword_27EE2C058, &qword_24591E880);
        v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C0B0, &qword_24591E8C0);
        v204((v207 + *(v208 + 48)), v205, v206);
        v209 = *(v203 + 8);
        v209(v205, v206);
        sub_245778F94(v202, &qword_27EE2C058, &qword_24591E880);
        sub_245778F2C(v207, v252, &qword_27EE2C030, &qword_24591E850);
        swift_storeEnumTagMultiPayload();
        v210 = MEMORY[0x277CE14C0];
        sub_245778BD8(&qword_27EE2C078, &qword_27EE2C030, &qword_24591E850, MEMORY[0x277CE14C0]);
        sub_245778BD8(&qword_27EE2C080, &qword_27EE2C010, &qword_24591E830, v210);
        v211 = v254;
        sub_24590FD14();
        sub_245778F2C(v211, v279, &qword_27EE2C028, &qword_24591E848);
        swift_storeEnumTagMultiPayload();
        sub_2458F52D0();
        sub_2458F53B0();
        sub_24590FD14();
        sub_245778F94(v211, &qword_27EE2C028, &qword_24591E848);
        sub_245778F94(v207, &qword_27EE2C030, &qword_24591E850);
        v209(v238, v206);
        return sub_245778F94(v236, &qword_27EE2C058, &qword_24591E880);
      }

      else
      {
        v171 = v266;
        if (v135)
        {
          v172 = v217;
          sub_24590F574();
          v173 = v282;

          v174 = v73;
          v175 = v219;
          if ((v270 & 1) == 0)
          {
            sub_245910F74();
            v176 = sub_24590FF74();
            sub_24590F314();

            v177 = v272;
            sub_24590FB04();
            swift_getAtKeyPath();

            (*(v273 + 8))(v177, v171);
            v173 = v283;
          }

          v178 = v218;
          MEMORY[0x245D75C00](v172, sub_2458F5890, v173);
          v179 = v258;
          sub_24590FC04();
          sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020, &unk_24591D720, MEMORY[0x277CDF028]);
          sub_2458F5608(&qword_27EE2C090, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
          v180 = v216;
          v181 = v257;
          v182 = v260;
          sub_245910214();
          (*(v259 + 8))(v179, v182);
          (*(v256 + 8))(v178, v181);
          v183 = v262;
          v184 = *(v262 + 16);
          v185 = v261;
          v186 = v263;
          v184(v261, v180, v263);
          v187 = v264;
          *v264 = 0;
          *(v187 + 8) = 1;
          v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C098, &qword_24591E8B0);
          v184((v187 + *(v188 + 48)), v185, v186);
          v189 = *(v183 + 8);
          v189(v180, v186);
          v189(v185, v186);
          sub_24577ABC4(v187, v175, &qword_27EE2C048, &unk_24591E868);
          v190 = 0;
        }

        else
        {
          v190 = 1;
          v174 = v73;
          v175 = v219;
        }

        (*(v275 + 56))(v175, v190, 1, v276);
        sub_245778F2C(v175, v268, &qword_27EE2C058, &qword_24591E880);
        swift_storeEnumTagMultiPayload();
        sub_2458F5220();
        v212 = v269;
        sub_24590FD14();
        sub_245778F2C(v212, v279, &qword_27EE2C008, &qword_24591E828);
        swift_storeEnumTagMultiPayload();
        sub_2458F52D0();
        sub_2458F53B0();
        sub_24590FD14();
        sub_245778F94(v212, &qword_27EE2C008, &qword_24591E828);
        sub_245778F94(v175, &qword_27EE2C058, &qword_24591E880);
        return v271[1](v174, v83);
      }
    }
  }

  else
  {
    sub_24577A7D4(v60);
    sub_24590F724();
    v114 = sub_24590F714();
    v115 = *(v55 + 8);
    v115(v57, v54);
    v115(v60, v54);
    if (v114)
    {
      v116 = v233;
      sub_24590F574();
      v117 = v282;

      if ((v270 & 1) == 0)
      {
        sub_245910F74();
        v118 = sub_24590FF74();
        sub_24590F314();

        v119 = v272;
        sub_24590FB04();
        swift_getAtKeyPath();

        (*(v273 + 8))(v119, v266);
        v117 = v283;
      }

      v120 = v234;
      MEMORY[0x245D75C00](v116, sub_2458F5890, v117);
      v121 = v258;
      sub_24590FC04();
      sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020, &unk_24591D720, MEMORY[0x277CDF028]);
      sub_2458F5608(&qword_27EE2C090, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
      v122 = v232;
      v123 = v257;
      v124 = v260;
      sub_245910214();
      (*(v259 + 8))(v121, v124);
      (*(v256 + 8))(v120, v123);
      v125 = v262;
      v126 = *(v262 + 16);
      v127 = v261;
      v128 = v263;
      v126(v261, v122, v263);
      v129 = v264;
      *v264 = 0;
      *(v129 + 8) = 1;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C098, &qword_24591E8B0);
      v126((v129 + *(v130 + 48)), v127, v128);
      v131 = *(v125 + 8);
      v131(v122, v128);
      v131(v127, v128);
      sub_24577ABC4(v129, v62, &qword_27EE2C048, &unk_24591E868);
      v132 = 0;
    }

    else
    {
      v132 = 1;
    }

    (*(v275 + 56))(v62, v132, 1, v276);
    sub_245778F2C(v62, v268, &qword_27EE2C058, &qword_24591E880);
    swift_storeEnumTagMultiPayload();
    sub_2458F5220();
    v158 = v269;
    sub_24590FD14();
    sub_245778F2C(v158, v279, &qword_27EE2C008, &qword_24591E828);
    swift_storeEnumTagMultiPayload();
    sub_2458F52D0();
    sub_2458F53B0();
    sub_24590FD14();
    sub_245778F94(v158, &qword_27EE2C008, &qword_24591E828);
    sub_245778F94(v62, &qword_27EE2C058, &qword_24591E880);
    return sub_2458F55A8(v73, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState);
  }
}

uint64_t sub_2458F4CA4(uint64_t a1)
{
  swift_getKeyPath();
  sub_2458F5608(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40);

    v3(v5);
    return sub_245771C34(v3, v4);
  }

  return result;
}

uint64_t sub_2458F4D68(uint64_t a1)
{
  swift_getKeyPath();
  sub_2458F5608(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);

    v3(v5);
    return sub_245771C34(v3, v4);
  }

  return result;
}

uint64_t sub_2458F4E2C(uint64_t a1)
{
  swift_getKeyPath();
  sub_2458F5608(&qword_27EE2BE18, type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel, &unk_24591EA54);
  sub_24590C2A4();

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 56);

    v3(v5);
    return sub_245771C34(v3, v4);
  }

  return result;
}

uint64_t sub_2458F4EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2458F0334(v2, a2);
  v5 = sub_24577A694(*(v2 + *(a1 + 20)), *(v2 + *(a1 + 20) + 8));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF38, &qword_24591E758);
  v7 = (a2 + *(result + 36));
  *v7 = 0;
  v7[1] = 0;
  v7[2] = sub_2458F4F70;
  v7[3] = v5;
  return result;
}

unint64_t sub_2458F4F80()
{
  result = qword_27EE2BF80;
  if (!qword_27EE2BF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BF78, &qword_24591E7C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BF88, &qword_24591E7C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BF90, &unk_24591E7D0);
    sub_245778BD8(&qword_27EE2BF98, &qword_27EE2BF88, &qword_24591E7C8, MEMORY[0x277CE1198]);
    sub_245778BD8(&qword_27EE2BFA0, &qword_27EE2BF90, &unk_24591E7D0, MEMORY[0x277D84348]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BF80);
  }

  return result;
}

unint64_t sub_2458F50DC()
{
  result = qword_27EE2BFA8;
  if (!qword_27EE2BFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BF50, &qword_24591E798);
    sub_2458F5168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BFA8);
  }

  return result;
}

unint64_t sub_2458F5168()
{
  result = qword_27EE2BFB0;
  if (!qword_27EE2BFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BFB8, &qword_24591E7E0);
    sub_245778BD8(&qword_27EE2BF98, &qword_27EE2BF88, &qword_24591E7C8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BFB0);
  }

  return result;
}

unint64_t sub_2458F5220()
{
  result = qword_27EE2C060;
  if (!qword_27EE2C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C058, &qword_24591E880);
    sub_245778BD8(&qword_27EE2C068, &qword_27EE2C048, &unk_24591E868, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C060);
  }

  return result;
}

unint64_t sub_2458F52D0()
{
  result = qword_27EE2C070;
  if (!qword_27EE2C070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C028, &qword_24591E848);
    v1 = MEMORY[0x277CE14C0];
    sub_245778BD8(&qword_27EE2C078, &qword_27EE2C030, &qword_24591E850, MEMORY[0x277CE14C0]);
    sub_245778BD8(&qword_27EE2C080, &qword_27EE2C010, &qword_24591E830, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C070);
  }

  return result;
}

unint64_t sub_2458F53B0()
{
  result = qword_27EE2C088;
  if (!qword_27EE2C088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C008, &qword_24591E828);
    sub_2458F5220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C088);
  }

  return result;
}

uint64_t sub_2458F543C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24590BFC4();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_245910194();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_2458F5540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2458F55A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2458F5608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2458F5650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BF90, &unk_24591E7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2458F56C8()
{
  result = qword_27EE2C0D8;
  if (!qword_27EE2C0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2BF38, &qword_24591E758);
    sub_2458F5754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C0D8);
  }

  return result;
}

unint64_t sub_2458F5754()
{
  result = qword_27EE2C0E0;
  if (!qword_27EE2C0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C0E8, &qword_24591E9B8);
    sub_2458F57D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C0E0);
  }

  return result;
}

unint64_t sub_2458F57D8()
{
  result = qword_27EE2C0F0;
  if (!qword_27EE2C0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C0F8, &unk_24591E9C0);
    sub_2458F50DC();
    sub_245778BD8(&qword_27EE2BFC0, &qword_27EE2BF40, &qword_24591E788, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C0F0);
  }

  return result;
}

uint64_t sub_2458F5898@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2458F6000();
  sub_24590C2A4();

  v3 = OBJC_IVAR____TtC9CoreIDVUI56IdentityCredentialProviderRemoteDeviceSelectionViewModel__viewState;
  swift_beginAccess();
  return sub_2458F6058(v5 + v3, a1);
}

uint64_t sub_2458F5930()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2458F6000();
  sub_24590C2A4();

  v1 = *(v0 + 16);
  sub_245771BB4(v1, *(v3 + 24));
  return v1;
}

uint64_t sub_2458F59B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_245771BB4(a2, a3);
  return sub_245771C34(v3, v4);
}

uint64_t sub_2458F5A00()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2458F6000();
  sub_24590C2A4();

  v1 = *(v0 + 32);
  sub_245771BB4(v1, *(v3 + 40));
  return v1;
}

uint64_t sub_2458F5A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_245771BB4(a2, a3);
  return sub_245771C34(v3, v4);
}

uint64_t sub_2458F5AD0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2458F6000();
  sub_24590C2A4();

  v1 = *(v0 + 48);
  sub_245771BB4(v1, *(v3 + 56));
  return v1;
}

uint64_t sub_2458F5B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  sub_245771BB4(a2, a3);
  return sub_245771C34(v3, v4);
}

uint64_t sub_2458F5BA0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2458F6000();
  sub_24590C2A4();

  v1 = *(v0 + 64);
  sub_245771BB4(v1, *(v3 + 72));
  return v1;
}

uint64_t sub_2458F5C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  sub_245771BB4(a2, a3);
  return sub_245771C34(v3, v4);
}

uint64_t sub_2458F5C70(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI56IdentityCredentialProviderRemoteDeviceSelectionViewModel__viewState;
  swift_beginAccess();
  sub_2458F5F9C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2458F5CDC()
{
  sub_245771C34(v0[2], v0[3]);
  sub_245771C34(v0[4], v0[5]);
  sub_245771C34(v0[6], v0[7]);
  sub_245771C34(v0[8], v0[9]);
  sub_2458F5F40(v0 + OBJC_IVAR____TtC9CoreIDVUI56IdentityCredentialProviderRemoteDeviceSelectionViewModel__viewState);
  v1 = OBJC_IVAR____TtC9CoreIDVUI56IdentityCredentialProviderRemoteDeviceSelectionViewModel___observationRegistrar;
  v2 = sub_24590C2E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2458F5DD0(uint64_t a1)
{
  result = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(319);
  if (v2 <= 0x3F)
  {
    result = sub_24590C2E4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2458F5ECC(uint64_t a1)
{
  result = sub_24590C094();
  if (v2 <= 0x3F)
  {
    result = sub_24590E574();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2458F5F40(uint64_t a1)
{
  v2 = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2458F5F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2458F6000()
{
  result = qword_27EE2BE18;
  if (!qword_27EE2BE18)
  {
    type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BE18);
  }

  return result;
}

uint64_t sub_2458F6058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderRemoteDeviceSelectionViewModel.ViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IdentityCredentialScanWithDeviceView(uint64_t a1)
{
  result = qword_27EE2C130;
  if (!qword_27EE2C130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2458F6130(uint64_t a1)
{
  sub_2458F6254(319, &qword_27EE2C140, type metadata accessor for IdentityCredentialScanWithDeviceViewModel);
  if (v1 <= 0x3F)
  {
    sub_2458F6204();
    if (v2 <= 0x3F)
    {
      sub_2458F6254(319, &qword_27EE2BF28, MEMORY[0x277CDF7E8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2458F6204()
{
  if (!qword_27EE2C148)
  {
    v0 = sub_24590F5C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE2C148);
    }
  }
}

void sub_2458F6254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24590F5C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2458F62C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v123 = a1;
  v137 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C160, &qword_24591EBF8);
  MEMORY[0x28223BE20](v115);
  v138 = (&v113 - v2);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C168, &qword_24591EC00);
  MEMORY[0x28223BE20](v136);
  v116 = &v113 - v3;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C170, &unk_24591EC08);
  MEMORY[0x28223BE20](v132);
  v133 = &v113 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29ED0, &qword_245919390);
  v114 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v113 = &v113 - v5;
  v119 = sub_24590FB14();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C178, &qword_24591EC18);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v139 = &v113 - v10;
  v11 = sub_24590C234();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24590BFB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2459109B4();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24590BFC4();
  MEMORY[0x28223BE20](v21 - 8);
  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v127 = __swift_project_value_buffer(v14, qword_27EE2C450);
  v22 = *(v15 + 16);
  v122 = v15 + 16;
  v126 = v22;
  v22(v17, v127, v14);
  sub_24590C224();
  sub_24590BFE4();
  v23 = sub_245910194();
  v125 = v13;
  v24 = v23;
  v124 = v14;
  v26 = v25;
  v28 = v27;
  sub_2459100C4();
  v29 = sub_245910184();
  v120 = v20;
  v30 = v29;
  v121 = v17;
  v32 = v31;
  v34 = v33;

  sub_24580FD24(v24, v26, v28 & 1);

  sub_245910054();
  v130 = sub_245910144();
  v129 = v35;
  v128 = v36;
  v131 = v37;
  sub_24580FD24(v30, v32, v34 & 1);

  sub_245910944();
  v126(v121, v127, v124);
  sub_24590C224();
  sub_24590BFE4();
  v38 = sub_245910194();
  v40 = v39;
  LOBYTE(v32) = v41;
  sub_2459100C4();
  v42 = sub_245910184();
  v44 = v43;
  v46 = v45;

  sub_24580FD24(v38, v40, v32 & 1);

  LODWORD(v142) = sub_24590FE34();
  v126 = sub_245910164();
  v125 = v47;
  LODWORD(v124) = v48;
  v127 = v49;
  sub_24580FD24(v42, v44, v46 & 1);

  v50 = v123;
  v51 = *v123;
  LOBYTE(v38) = *(v123 + 8);

  if ((v38 & 1) == 0)
  {
    sub_245910F74();
    v52 = sub_24590FF74();
    sub_24590F314();

    v53 = v117;
    sub_24590FB04();
    swift_getAtKeyPath();

    (*(v118 + 8))(v53, v119);
    v51 = v142;
  }

  v54 = *(v51 + 16);

  if (v54)
  {

    v55 = sub_24590FFB4();
    sub_24590F594();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v140 = 0;
    v64 = [objc_opt_self() separatorColor];
    v65 = sub_245910414();
    v66 = *(sub_24590F8C4() + 20);
    v67 = *MEMORY[0x277CE0118];
    v68 = sub_24590FB94();
    v69 = v138;
    (*(*(v68 - 8) + 104))(v138 + v66, v67, v68);
    __asm { FMOV            V0.2D, #8.0 }

    *v69 = _Q0;
    v75 = sub_245910464();
    v76 = v115;
    *(v69 + *(v115 + 52)) = v75;
    *(v69 + *(v76 + 56)) = 256;
    v77 = v50[2];
    if ((v50[3] & 1) == 0)
    {

      sub_245910F74();
      v82 = sub_24590FF74();
      sub_24590F314();

      v83 = v117;
      sub_24590FB04();
      swift_getAtKeyPath();
      sub_2458342BC(v77, 0);
      (*(v118 + 8))(v83, v119);
    }

    sub_24590F5E4();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C190, &qword_24591EC20);
    v85 = v116;
    v86 = &v116[*(v84 + 36)];
    v87 = v138;
    sub_2458F73D4(v138, v86);
    v88 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C1D0, &qword_24591EC48) + 36);
    v89 = v143;
    *v88 = v142;
    *(v88 + 16) = v89;
    *(v88 + 32) = v144;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C1D8, &qword_24591EC50);
    *(v86 + *(v90 + 52)) = v65;
    *(v86 + *(v90 + 56)) = 256;
    v91 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C1E0, &qword_24591EC58) + 36);
    sub_245778F2C(v87, v91, &qword_27EE2C160, &qword_24591EBF8);
    v92 = sub_2459106E4();
    v94 = v93;
    sub_245778F94(v87, &qword_27EE2C160, &qword_24591EBF8);
    v95 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C1E8, &qword_24591EC60) + 36));
    *v95 = v92;
    v95[1] = v94;
    v96 = sub_2459106E4();
    v98 = v97;
    v99 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C1C0, &qword_24591EC38) + 36));
    *v99 = v96;
    v99[1] = v98;
    *v85 = v54;
    *(v85 + 8) = 257;
    *(v85 + 14) = v141[7];
    *(v85 + 10) = *&v141[5];
    *(v85 + 16) = v55;
    *(v85 + 20) = *(&v141[1] + 1);
    *(v85 + 17) = *v141;
    *(v85 + 24) = v57;
    *(v85 + 32) = v59;
    *(v85 + 40) = v61;
    *(v85 + 48) = v63;
    *(v85 + 56) = 0;
    v100 = sub_24590FFC4();
    v101 = v85 + *(v136 + 36);
    *v101 = v100;
    *(v101 + 8) = 0u;
    *(v101 + 24) = 0u;
    *(v101 + 40) = 1;
    sub_245778F2C(v85, v133, &qword_27EE2C168, &qword_24591EC00);
    swift_storeEnumTagMultiPayload();
    sub_2458F72CC(&qword_27EE2C180, &qword_27EE2C168, &qword_24591EC00, sub_2458F71E8);
    sub_245778BD8(&qword_27EE2A6A0, &qword_27EE29ED0, &qword_245919390, MEMORY[0x277CDD7F8]);
    v81 = v139;
    sub_24590FD14();

    sub_245778F94(v85, &qword_27EE2C168, &qword_24591EC00);
  }

  else
  {
    v78 = v113;
    sub_24590F644();
    v79 = v114;
    v80 = v134;
    (*(v114 + 16))(v133, v78, v134);
    swift_storeEnumTagMultiPayload();
    sub_2458F72CC(&qword_27EE2C180, &qword_27EE2C168, &qword_24591EC00, sub_2458F71E8);
    sub_245778BD8(&qword_27EE2A6A0, &qword_27EE29ED0, &qword_245919390, MEMORY[0x277CDD7F8]);
    v81 = v139;
    sub_24590FD14();
    (*(v79 + 8))(v78, v80);
  }

  v102 = v128 & 1;
  LOBYTE(v141[0]) = v128 & 1;
  v103 = v81;
  v104 = v135;
  sub_245778F2C(v103, v135, &qword_27EE2C178, &qword_24591EC18);
  v105 = v137;
  v106 = v130;
  v107 = v129;
  *v137 = v130;
  v105[1] = v107;
  *(v105 + 16) = v102;
  v108 = v126;
  v105[3] = v131;
  v105[4] = v108;
  v109 = v125;
  v105[5] = v125;
  v110 = v124 & 1;
  *(v105 + 48) = v124 & 1;
  v105[7] = v127;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C1C8, &qword_24591EC40);
  sub_245778F2C(v104, v105 + *(v111 + 64), &qword_27EE2C178, &qword_24591EC18);
  sub_245812E64(v106, v107, v102);

  sub_245812E64(v108, v109, v110);

  sub_245778F94(v139, &qword_27EE2C178, &qword_24591EC18);
  sub_245778F94(v104, &qword_27EE2C178, &qword_24591EC18);
  sub_24580FD24(v108, v109, v110);

  sub_24580FD24(v106, v107, v141[0]);
}

uint64_t sub_2458F7158@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24590FBC4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C150, &qword_24591EBB8);
  sub_2458F62C4(v2, (a2 + *(v4 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C158, &qword_24591EBF0);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 1;
  return result;
}

unint64_t sub_2458F71E8()
{
  result = qword_27EE2C188;
  if (!qword_27EE2C188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C190, &qword_24591EC20);
    sub_2458F72CC(&qword_27EE2C198, &qword_27EE2C1A0, &qword_24591EC28, sub_2458F7350);
    sub_245778BD8(&qword_27EE2C1B8, &qword_27EE2C1C0, &qword_24591EC38, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C188);
  }

  return result;
}

uint64_t sub_2458F72CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2458F7350()
{
  result = qword_27EE2C1A8;
  if (!qword_27EE2C1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C1B0, &qword_24591EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C1A8);
  }

  return result;
}

uint64_t sub_2458F73D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590F8C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2458F7438()
{
  result = qword_27EE2C1F0;
  if (!qword_27EE2C1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C158, &qword_24591EBF0);
    sub_245778BD8(&qword_27EE2C1F8, &qword_27EE2C200, &qword_24591EC68, MEMORY[0x277CE1198]);
    sub_245778BD8(&qword_27EE29EF0, &qword_27EE29EF8, &qword_2459193D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C1F0);
  }

  return result;
}

uint64_t sub_2458F751C(uint64_t a1)
{
  v3 = sub_24590FB84();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590C234();
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24590BFB4();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2459109B4();
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24590BFC4();
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24590C404();
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24590D724();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24590F354();
  v71 = *(v19 - 8);
  v72 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  v75 = v1;
  sub_24590C2D4();
  v25 = [objc_opt_self() QRCodeGenerator];
  v74 = a1;
  v26 = sub_24590C024();
  v28 = sub_24584124C(v26, v27);
  v30 = v29;
  v31 = sub_24590C144();
  sub_24578FC28(v28, v30);
  [v25 setMessage_];

  v73 = v25;
  v32 = [v25 outputImage];
  if (!v32)
  {
    sub_24590C714();
    v43 = sub_24590F344();
    v44 = sub_245910F64();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_245767000, v43, v44, "CIFilter.qrCodeGenerator() had nil outputImage", v45, 2u);
      MEMORY[0x245D77B40](v45, -1, -1);
    }

    v46 = sub_24590C094();
    (*(*(v46 - 8) + 8))(v74, v46);
    (*(v71 + 8))(v24, v72);
    goto LABEL_11;
  }

  v33 = v32;
  [v32 extent];
  v77 = CGRectInset(v76, 1.0, 1.0);
  x = v77.origin.x;
  y = v77.origin.y;
  width = v77.size.width;
  height = v77.size.height;
  v38 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v39 = [v38 createCGImage:v33 fromRect:{x, y, width, height}];

  if (!v39)
  {
    sub_24590C714();
    v47 = sub_24590F344();
    v48 = sub_245910F64();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_245767000, v47, v48, "CIContext failed to create CGImage from outputImage", v49, 2u);
      MEMORY[0x245D77B40](v49, -1, -1);
    }

    v50 = sub_24590C094();
    (*(*(v50 - 8) + 8))(v74, v50);
    (*(v71 + 8))(v21, v72);
LABEL_11:
    v51 = 0;
    goto LABEL_16;
  }

  sub_24590D714();
  sub_24590D704();
  (*(v16 + 8))(v18, v15);
  v41 = v60;
  v40 = v61;
  if ((*(v60 + 88))(v14, v61) == *MEMORY[0x277CFF2F8])
  {
    v42 = 300.0;
  }

  else
  {
    (*(v41 + 8))(v14, v40);
    v42 = 250.0;
  }

  v52 = v42;
  v53 = v42 * 0.3;
  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v54 = v66;
  v55 = __swift_project_value_buffer(v66, qword_27EE2C450);
  (*(v64 + 16))(v65, v55, v54);
  sub_24590C224();
  sub_24590BFE4();
  sub_245910194();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v52;
  *(v56 + 32) = v39;
  *(v56 + 40) = v53;
  *(v56 + 48) = v53;
  (*(v68 + 104))(v70, *MEMORY[0x277CE00F0], v69);
  v57 = v39;
  v51 = sub_245910514();

  v58 = sub_24590C094();
  (*(*(v58 - 8) + 8))(v74, v58);
LABEL_16:
  result = v75;
  *(v75 + 16) = v51;
  return result;
}

uint64_t sub_2458F7DF0(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = sub_24590F814();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_245910734();
  sub_245910464();
  sub_24590F804();

  sub_24590F7B4();
  sub_2457E767C(v28);
  (*(v12 + 8))(v14, v11);
  v24 = 0;
  v25 = 0;
  v23 = a2;
  v26 = a3;
  v27 = a4;
  sub_24590F844();
  v17 = 0;
  v18 = 0;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  return sub_24590F844();
}

uint64_t sub_2458F7F90(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = sub_24590F2D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_24590F814();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  sub_24590F844();
  sub_24590F834();
  sub_245910734();
  if (qword_27EE28710 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_27EE32CA8);
  (*(v12 + 16))(v14, v19, v11);
  sub_245910494();
  sub_24590F804();

  sub_24590F7B4();
  sub_2457E767C(v27);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_2458F81F8(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = sub_2459104E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24590F7E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590F7D4();
  sub_24590F824();
  v15 = *(v12 + 8);
  v15(v14, v11);
  sub_24590F7C4();
  sub_24590F824();
  v15(v14, v11);
  v16 = a2;
  sub_2459104B4();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FF8], v7);
  sub_2459104F4();

  (*(v8 + 8))(v10, v7);
  sub_24590F7A4();
}

uint64_t sub_2458F8444(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v62 = a7;
  v56 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C220, &qword_24591ED08);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = v55 - v13;
  v57 = sub_24590F2D4();
  v14 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24590F814();
  v17 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24590FB94();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65.origin.x = a2;
  v65.origin.y = a3;
  v65.size.width = a4;
  v65.size.height = a5;
  v24 = CGRectGetMidX(v65) - a6 * 0.5;
  v66.origin.x = a2;
  v66.origin.y = a3;
  v66.size.width = a4;
  v66.size.height = a5;
  v25 = CGRectGetMidY(v66) - v62 * 0.5;
  v67.origin.x = v24;
  v67.origin.y = v25;
  v67.size.width = a6;
  v67.size.height = v62;
  v55[1] = CGRectInset(v67, 1.0, 1.0);
  v26 = *MEMORY[0x277CE0118];
  v27 = *(v21 + 104);
  v27(v23, v26, v20);
  v60 = v24;
  v59 = v25;
  sub_245910134();
  v27(v23, v26, v20);
  sub_245910134();
  v28 = v56;
  sub_24590F784();
  v29 = *v28;
  if (qword_27EE28710 != -1)
  {
    swift_once();
  }

  v30 = v57;
  v31 = __swift_project_value_buffer(v57, qword_27EE32CA8);
  (*(v14 + 16))(v16, v31, v30);
  sub_245910494();
  sub_24590F804();

  sub_24590F7B4();
  v56 = v29;
  v32 = *(v17 + 8);
  v33 = v58;
  v32(v19, v58);
  sub_245910464();
  sub_24590F804();

  sub_24590F7F4();
  v32(v19, v33);
  sub_2459104C4();
  v34 = sub_2459101B4();
  v36 = v35;
  v38 = v37;
  v64[15] = sub_245910464();
  v39 = sub_245910164();
  v41 = v40;
  v43 = v42;
  sub_24580FD24(v34, v36, v38 & 1);

  v44 = sub_245910044();
  v45 = v61;
  (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
  sub_2459100A4();
  sub_2458F8CC8(v45);
  v46 = sub_245910184();
  v48 = v47;
  LOBYTE(v45) = v49;

  sub_24580FD24(v39, v41, v43 & 1);

  v50 = a6;
  v51 = v60;
  v68.origin.x = v60;
  v52 = v59;
  v68.origin.y = v59;
  v68.size.width = v50;
  v53 = v62;
  v68.size.height = v62;
  CGRectGetMidX(v68);
  v69.origin.x = v51;
  v69.origin.y = v52;
  v69.size.width = v50;
  v69.size.height = v53;
  CGRectGetMidY(v69);
  sub_245910764();
  sub_24590F794();
  sub_24580FD24(v46, v48, v45 & 1);

  sub_2457E767C(v64);
  return sub_2457E767C(v63);
}

uint64_t sub_2458F8AD4()
{

  v1 = OBJC_IVAR____TtC9CoreIDVUI41IdentityCredentialScanWithDeviceViewModel___observationRegistrar;
  v2 = sub_24590C2E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityCredentialScanWithDeviceViewModel(uint64_t a1)
{
  result = qword_27EE2C210;
  if (!qword_27EE2C210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2458F8BCC(uint64_t a1)
{
  result = sub_24590C2E4();
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

uint64_t sub_2458F8CC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C220, &qword_24591ED08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2458F8DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C228, &qword_24591EDC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C230, &unk_24591EDC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B878, &unk_24591D6D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C238, &qword_24591EDD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C240, &qword_24591EDE0);
  sub_2458FA660();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B888, &qword_24591EE00);
  sub_245778BD8(&qword_27EE2B890, &qword_27EE2B888, &qword_24591EE00, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24590F864();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C260, &qword_24591EE18) + 36));
  sub_24590F6E4();

  sub_245910D44();
  *v7 = &unk_24591EE10;
  v7[1] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C268, &qword_24591EE20) + 36));
  *v9 = sub_2458FA88C;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C270, &unk_24591EE28) + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_2458FA894;
  v11[3] = v10;
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_2458F90B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v31 = a3;
  v5 = sub_24590FB44();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C240, &qword_24591EDE0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C238, &qword_24591EDD8);
  v28 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C230, &unk_24591EDC8);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  sub_2458F9548(a1, a2, v11);
  (*(v6 + 104))(v8, *MEMORY[0x277CDDDC0], v5);
  v19 = sub_2458FA660();
  sub_245910394();
  (*(v6 + 8))(v8, v5);
  sub_2457715AC(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8A8, &qword_24591D6F0);
  sub_24590F8F4();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_245916930;
  sub_24590F8E4();
  v34 = v9;
  v35 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x245D75940](1, v20, v12, OpaqueTypeConformance2);

  (*(v28 + 8))(v14, v12);
  v32 = a1;
  v33 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B878, &unk_24591D6D0);
  v34 = v12;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B888, &qword_24591EE00);
  v23 = sub_245778BD8(&qword_27EE2B890, &qword_27EE2B888, &qword_24591EE00, MEMORY[0x277CDDB60]);
  v34 = v22;
  v35 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_2459103C4();
  return (*(v30 + 8))(v18, v24);
}

uint64_t sub_2458F9548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B870, &unk_24591EDF0);
  MEMORY[0x28223BE20](v41);
  v6 = &v36 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C288, &qword_24591EE78);
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = &v36 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C290, &qword_24591EE80);
  MEMORY[0x28223BE20](v40);
  v9 = &v36 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29ED0, &qword_245919390);
  v37 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8, &qword_24591D960);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for MobileDocumentProviderPresentmentContext(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C278, &qword_24591EE38);
  sub_245910584();
  v19 = v49;
  swift_getKeyPath();
  v45 = v19;
  sub_2458FAB74(&qword_27EE2C280, type metadata accessor for IdentityCredentialProviderAuthorizationViewModel, &unk_24591EEC4);
  sub_24590C2A4();

  v20 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel__presentmentContext;
  swift_beginAccess();
  sub_2458FA968(v19 + v20, v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_245778F94(v14, &qword_27EE2B8B8, &qword_24591D960);
    sub_24590F644();
    v21 = v37;
    v22 = v42;
    (*(v37 + 16))(v9, v11, v42);
    swift_storeEnumTagMultiPayload();
    v23 = sub_2458DC884();
    v24 = sub_245778CE8();
    v45 = v41;
    v46 = MEMORY[0x277D837D0];
    v47 = v23;
    v48 = v24;
    swift_getOpaqueTypeConformance2();
    sub_245778BD8(&qword_27EE2A6A0, &qword_27EE29ED0, &qword_245919390, MEMORY[0x277CDD7F8]);
    sub_24590FD14();
    return (*(v21 + 8))(v11, v22);
  }

  else
  {
    sub_2458E28B0(v14, v18);
    sub_2458D053C(v18, v6);
    v26 = sub_24590FFB4();
    v27 = sub_24590F874();
    v28 = v41;
    v29 = &v6[*(v41 + 36)];
    *v29 = v27;
    v29[8] = v26;
    v45 = sub_24590E7F4();
    v46 = v30;
    v31 = sub_2458DC884();
    v32 = sub_245778CE8();
    v33 = v38;
    sub_2459102E4();

    sub_245778F94(v6, &qword_27EE2B870, &unk_24591EDF0);
    v34 = v39;
    v35 = v43;
    (*(v39 + 16))(v9, v33, v43);
    swift_storeEnumTagMultiPayload();
    v45 = v28;
    v46 = MEMORY[0x277D837D0];
    v47 = v31;
    v48 = v32;
    swift_getOpaqueTypeConformance2();
    sub_245778BD8(&qword_27EE2A6A0, &qword_27EE29ED0, &qword_245919390, MEMORY[0x277CDD7F8]);
    sub_24590FD14();
    (*(v34 + 8))(v33, v35);
    return sub_2458D039C(v18);
  }
}

uint64_t sub_2458F9B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590FDA4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B888, &qword_24591EE00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_24590FD74();
  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A020, &unk_24591D720);
  sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020, &unk_24591D720, MEMORY[0x277CDF028]);
  sub_24590F8D4();
  v9 = sub_245778BD8(&qword_27EE2B890, &qword_27EE2B888, &qword_24591EE00, MEMORY[0x277CDDB60]);
  MEMORY[0x245D75410](v8, v5, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2458F9D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590F584();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590F574();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  return MEMORY[0x245D75C00](v6, sub_2458FA960, v7);
}

uint64_t sub_2458F9E38(uint64_t a1, uint64_t a2)
{
  v24 = sub_24590E8E4();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8, &qword_24591D960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for MobileDocumentProviderPresentmentContext(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  v28 = a1;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C278, &qword_24591EE38);
  sub_245910584();
  v14 = v26;
  swift_getKeyPath();
  v28 = v14;
  sub_2458FAB74(&qword_27EE2C280, type metadata accessor for IdentityCredentialProviderAuthorizationViewModel, &unk_24591EEC4);
  sub_24590C2A4();

  v15 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel__presentmentContext;
  swift_beginAccess();
  sub_2458FA968(v14 + v15, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_245778F94(v9, &qword_27EE2B8B8, &qword_24591D960);
    v26 = v22;
    v27 = v23;
    sub_245910584();
    v16 = *(v25 + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_onDismissed);

    v16(v17);
  }

  else
  {
    sub_2458E28B0(v9, v13);
    v19 = *&v13[*(v10 + 28)];
    v20 = v24;
    (*(v4 + 104))(v6, *MEMORY[0x277CFF768], v24);
    v19(v6);
    (*(v4 + 8))(v6, v20);
    return sub_2458D039C(v13);
  }
}

uint64_t sub_2458FA18C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_245910D34();
  v2[7] = sub_245910D24();
  v4 = sub_245910CD4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_2458FA224, v4, v3);
}

uint64_t sub_2458FA224()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C278, &qword_24591EE38);
  sub_245910584();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_2458FA2E4;

  return sub_2458FAC84();
}

uint64_t sub_2458FA2E4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2458FA428, v3, v2);
}

uint64_t sub_2458FA428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458FA488(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C278, &qword_24591EE38);
  sub_245910584();
  sub_2458FB7C8();
}

uint64_t sub_2458FA4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v13[2] = a1;
  v13[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C278, &qword_24591EE38);
  sub_245910584();
  v7 = *(v13[1] + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_connection);
  v8 = sub_245910D64();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_245910D34();

  v9 = sub_245910D24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  sub_2458B90EC(0, 0, v6, &unk_24591EE40, v10);
}

unint64_t sub_2458FA660()
{
  result = qword_27EE2C248;
  if (!qword_27EE2C248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C240, &qword_24591EDE0);
    sub_2458FA6E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C248);
  }

  return result;
}

unint64_t sub_2458FA6E4()
{
  result = qword_27EE2C250;
  if (!qword_27EE2C250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C258, &qword_24591EDE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B870, &unk_24591EDF0);
    sub_2458DC884();
    sub_245778CE8();
    swift_getOpaqueTypeConformance2();
    sub_245778BD8(&qword_27EE2A6A0, &qword_27EE29ED0, &qword_245919390, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C250);
  }

  return result;
}

uint64_t sub_2458FA7F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457AA49C;

  return sub_2458FA18C(v2, v3);
}

uint64_t sub_2458FA89C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_245904674(a1, v4, v5, v6);
}

uint64_t sub_2458FA968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8, &qword_24591D960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458FA9D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2458FAA8C()
{
  result = qword_27EE2C2A8;
  if (!qword_27EE2C2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C260, &qword_24591EE18);
    sub_245778BD8(&qword_27EE2C2B0, &qword_27EE2C2B8, &qword_24591EE88, MEMORY[0x277CDDA18]);
    sub_2458FAB74(&qword_27EE2C2C0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C2A8);
  }

  return result;
}

uint64_t sub_2458FAB74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2458FABBC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2458FCE1C(&qword_27EE2C280, type metadata accessor for IdentityCredentialProviderAuthorizationViewModel, &unk_24591EEC4);
  sub_24590C2A4();

  v3 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel__presentmentContext;
  swift_beginAccess();
  return sub_2458FA968(v5 + v3, a1);
}

uint64_t sub_2458FAC84()
{
  v1[3] = v0;
  v2 = sub_24590F354();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_24590F2B4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentProviderPresentmentContext(0);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_24590E814();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8, &qword_24591D960);
  v1[16] = swift_task_alloc();
  v1[17] = sub_245910D34();
  v1[18] = sub_245910D24();
  v7 = sub_245910CD4();
  v1[19] = v7;
  v1[20] = v6;

  return MEMORY[0x2822009F8](sub_2458FAEC8, v7, v6);
}

uint64_t sub_2458FAEC8()
{
  (*(v0[14] + 16))(v0[15], v0[3] + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_presentmentRequest, v0[13]);
  v0[21] = swift_allocObject();
  swift_weakInit();
  v0[22] = swift_allocObject();
  swift_weakInit();
  v0[23] = swift_allocObject();
  swift_weakInit();

  v0[24] = sub_245910D24();
  v2 = sub_245910CD4();
  v0[25] = v2;
  v0[26] = v1;

  return MEMORY[0x2822009F8](sub_2458FB018, v2, v1);
}

uint64_t sub_2458FB018()
{
  v1 = sub_24590E804();
  v3 = v2;
  v0[27] = v2;
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_2458FB0C8;
  v5 = v0[9];

  return sub_2458D0704(v5, v1, v3);
}

uint64_t sub_2458FB0C8()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_2458FB538;
  }

  else
  {
    v5 = sub_2458FB21C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458FB21C()
{
  v1 = v0[21];
  v17 = v0[22];
  v18 = v0[23];
  v2 = v0[15];
  v19 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  (*(v8 + 32))(v5, v7, v9);
  (*(v3 + 32))(v5 + v6[5], v2, v4);
  v10 = (v5 + v6[6]);
  *v10 = sub_2458FCCE4;
  v10[1] = v1;
  v11 = (v5 + v6[7]);
  *v11 = sub_2458FCCEC;
  v11[1] = v17;
  v12 = (v5 + v6[8]);
  *v12 = nullsub_1;
  v12[1] = 0;
  v13 = (v5 + v6[9]);
  *v13 = &unk_24591EEF8;
  v13[1] = v18;
  sub_2458E28B0(v5, v19);

  v14 = v0[19];
  v15 = v0[20];

  return MEMORY[0x2822009F8](sub_2458FB398, v14, v15);
}

uint64_t sub_2458FB398()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[3];

  (*(v3 + 56))(v1, 0, 1, v2);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[2] = v4;
  sub_2458FCE1C(&qword_27EE2C280, type metadata accessor for IdentityCredentialProviderAuthorizationViewModel, &unk_24591EEC4);
  sub_24590C294();

  sub_245778F94(v1, &qword_27EE2B8B8, &qword_24591D960);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2458FB538()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  (*(v2 + 8))(v1, v3);
  v4 = v0[19];
  v5 = v0[20];

  return MEMORY[0x2822009F8](sub_2458FB5E8, v4, v5);
}

uint64_t sub_2458FB5E8()
{
  v1 = v0[29];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Failed to load extension context: %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2458FB7C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_24590E8A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_connection);
  v12 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_presentmentRequest;
  v13 = sub_24590E814();
  (*(*(v13 - 8) + 16))(v10, v0 + v12, v13);
  (*(v5 + 104))(v10, *MEMORY[0x277CFF740], v4);
  v14 = sub_245910D64();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  (*(v5 + 16))(v7, v10, v4);
  sub_245910D34();

  v15 = sub_245910D24();
  v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = v11;
  (*(v5 + 32))(&v17[v16], v7, v4);
  sub_2458B90EC(0, 0, v3, &unk_24591EEE0, v17);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_2458FBA78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2458FCE1C(&qword_27EE2C280, type metadata accessor for IdentityCredentialProviderAuthorizationViewModel, &unk_24591EEC4);
  sub_24590C2A4();

  v4 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel__presentmentContext;
  swift_beginAccess();
  return sub_2458FA968(v3 + v4, a2);
}

uint64_t sub_2458FBB40(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8, &qword_24591D960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_2458FA968(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_2458FCE1C(&qword_27EE2C280, type metadata accessor for IdentityCredentialProviderAuthorizationViewModel, &unk_24591EEC4);
  sub_24590C294();

  return sub_245778F94(v6, &qword_27EE2B8B8, &qword_24591D960);
}

uint64_t sub_2458FBC88(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel__presentmentContext;
  swift_beginAccess();
  sub_2458FCDAC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2458FBCF4(uint64_t a1)
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_onDismissed);

    v6(v7);
  }

  else
  {
    sub_24590C714();
    v9 = sub_24590F344();
    v10 = sub_245910F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245767000, v9, v10, "Self unexpectedly nil in XPC interruption handler", v11, 2u);
      MEMORY[0x245D77B40](v11, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_2458FBE88(uint64_t a1, uint64_t a2)
{
  v3 = sub_24590E864();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_connection);

    v12 = sub_245910D64();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    sub_245910D34();

    v13 = sub_245910D24();
    v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    *(v15 + 2) = v13;
    *(v15 + 3) = v16;
    *(v15 + 4) = v11;
    (*(v4 + 32))(&v15[v14], v6, v3);
    sub_2458B90EC(0, 0, v9, &unk_24591DA68, v15);
  }

  return result;
}

uint64_t sub_2458FC0D0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_24590E8A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = sub_24590F354();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_connection);
    v18 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_presentmentRequest;
    v19 = Strong;
    v20 = sub_24590E814();
    (*(*(v20 - 8) + 16))(v11, v19 + v18, v20);
    (*(v6 + 104))(v11, *MEMORY[0x277CFF740], v5);
    v21 = sub_245910D64();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    (*(v6 + 16))(v8, v11, v5);
    sub_245910D34();

    v22 = sub_245910D24();
    v23 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    *(v24 + 2) = v22;
    *(v24 + 3) = v25;
    *(v24 + 4) = v17;
    (*(v6 + 32))(&v24[v23], v8, v5);
    sub_2458B90EC(0, 0, v4, &unk_24591DA60, v24);

    (*(v6 + 8))(v11, v5);
    v26 = *(v19 + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_onDismissed);

    v26(v27);
  }

  else
  {
    sub_24590C714();
    v29 = sub_24590F344();
    v30 = sub_245910F64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245767000, v29, v30, "Self unexpectedly nil in userDidCancelHandler handler", v31, 2u);
      MEMORY[0x245D77B40](v31, -1, -1);
    }

    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_2458FC4E4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_24590EA74();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_245910D34();
  v2[11] = sub_245910D24();
  v5 = sub_245910CD4();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x2822009F8](sub_2458FC5DC, v5, v4);
}

uint64_t sub_2458FC5DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v0[15] = *(Strong + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_connection);

    v0[16] = sub_245910D24();
    v3 = sub_245910CD4();
    v0[17] = v3;
    v0[18] = v2;

    return MEMORY[0x2822009F8](sub_2458E1F28, v3, v2);
  }

  else
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 104))(v4, *MEMORY[0x277CFFA38], v6);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458FCE1C(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2458FC80C()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_presentmentRequest;
  v2 = sub_24590E814();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel__presentmentContext, &qword_27EE2B8B8, &qword_24591D960);
  v3 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel___observationRegistrar;
  v4 = sub_24590C2E4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityCredentialProviderAuthorizationViewModel(uint64_t a1)
{
  result = qword_27EE2C2E8;
  if (!qword_27EE2C2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2458FC980(uint64_t a1)
{
  sub_24590E814();
  if (v1 <= 0x3F)
  {
    sub_2458FCAA0(319);
    if (v2 <= 0x3F)
    {
      sub_24590C2E4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2458FCAA0(uint64_t a1)
{
  if (!qword_27EE2B9A8)
  {
    type metadata accessor for MobileDocumentProviderPresentmentContext(255);
    v1 = sub_2459112C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE2B9A8);
    }
  }
}

uint64_t sub_2458FCAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel__presentmentContext;
  v11 = type metadata accessor for MobileDocumentProviderPresentmentContext(0);
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  sub_24590C2D4();
  *(v5 + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_connection) = a1;
  v12 = OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_presentmentRequest;
  v13 = sub_24590E814();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5 + v12, a2, v13);
  v15 = (v5 + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_onDismissed);
  *v15 = a3;
  v15[1] = a4;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v5 + OBJC_IVAR____TtC9CoreIDVUI48IdentityCredentialProviderAuthorizationViewModel_connection);
  *(v17 + 24) = sub_2458FCCDC;
  *(v17 + 32) = v16;

  sub_24590D344();

  (*(v14 + 8))(a2, v13);
  return v5;
}

uint64_t sub_2458FCCF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2457A18F4;

  return sub_2458FC4E4(a1, v1);
}

uint64_t sub_2458FCDAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8, &qword_24591D960);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458FCE1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_4Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t type metadata accessor for IdentityCredentialProviderAuxiliaryView(uint64_t a1)
{
  result = qword_27EE2C2F8;
  if (!qword_27EE2C2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2458FCFC4(uint64_t a1)
{
  result = sub_24590E574();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_2458FD04C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C308, &qword_24591EFA8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  sub_2458FD1B0(v2, v14 - v6);
  KeyPath = swift_getKeyPath();
  v9 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C310, &qword_24591EFE0) + 36)];
  *v9 = KeyPath;
  v9[8] = 1;
  *&v7[*(v5 + 44)] = 256;
  sub_2459106E4();
  sub_24590F904();
  sub_245771810(v7, a1);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C318, &qword_24591EFE8) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_2458FD1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v3 = type metadata accessor for IdentityCredentialProviderAuxiliaryView(0);
  v107[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v107[1] = v4;
  v108 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C320, &qword_24591EFF0);
  MEMORY[0x28223BE20](v109);
  v110 = (v107 - v5);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C328, &qword_24591EFF8);
  MEMORY[0x28223BE20](v135);
  v111 = v107 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C330, &qword_24591F000);
  MEMORY[0x28223BE20](v112);
  v113 = v107 - v7;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C338, &qword_24591F008);
  MEMORY[0x28223BE20](v131);
  v114 = v107 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C340, &qword_24591F010);
  v116 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v115 = v107 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C348, &qword_24591F018);
  MEMORY[0x28223BE20](v132);
  v134 = v107 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C350, &qword_24591F020);
  MEMORY[0x28223BE20](v123);
  v125 = v107 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C358, &qword_24591F028);
  MEMORY[0x28223BE20](v119);
  v120 = v107 - v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C360, &qword_24591F030);
  MEMORY[0x28223BE20](v124);
  v121 = v107 - v13;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C368, &qword_24591F038);
  MEMORY[0x28223BE20](v133);
  v126 = v107 - v14;
  v15 = sub_24590C234();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_24590BFB4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2459109B4();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_24590BFC4();
  v128 = *(v21 - 8);
  v129 = v21;
  MEMORY[0x28223BE20](v21);
  v117 = v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v127 = v107 - v24;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C370, &unk_24591F040);
  MEMORY[0x28223BE20](v130);
  v118 = (v107 - v25);
  v26 = sub_24590E574();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v30, a1, v26, v28);
  v31 = (*(v27 + 88))(v30, v26);
  if (v31 == *MEMORY[0x277CFF680])
  {
    sub_245910944();
    if (qword_27EE28730 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v16, qword_27EE2C450);
    v33 = *(v17 + 16);
    v33(v19, v32, v16);
    sub_24590C224();
    v34 = v127;
    sub_24590BFE4();
    sub_245910944();
    v33(v19, v32, v16);
    sub_24590C224();
    v35 = v117;
    sub_24590BFE4();
    v36 = sub_24590FBC4();
    v37 = v118;
    *v118 = v36;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3A8, &unk_24591F050);
    sub_2458FEECC(v34, v35, v37 + *(v38 + 44));
    v39 = *(v128 + 8);
    v40 = v35;
    v41 = v129;
    v39(v40, v129);
    v39(v34, v41);
    sub_245778F2C(v37, v120, &qword_27EE2C370, &unk_24591F040);
    swift_storeEnumTagMultiPayload();
    sub_245778BD8(&qword_27EE2C380, &qword_27EE2C370, &unk_24591F040, MEMORY[0x277CE1198]);
    sub_245778BD8(&qword_27EE2C398, &qword_27EE2C340, &qword_24591F010, MEMORY[0x277CDD7F8]);
    v42 = v121;
    sub_24590FD14();
    sub_245778F2C(v42, v125, &qword_27EE2C360, &qword_24591F030);
    swift_storeEnumTagMultiPayload();
    sub_2458FF874();
    sub_2458FF738();
    v43 = v126;
    sub_24590FD14();
    sub_245778F94(v42, &qword_27EE2C360, &qword_24591F030);
    sub_245778F2C(v43, v134, &qword_27EE2C368, &qword_24591F038);
    swift_storeEnumTagMultiPayload();
    sub_2458FF7E8();
    sub_2458FF958();
    sub_24590FD14();
    sub_245778F94(v43, &qword_27EE2C368, &qword_24591F038);
    v44 = v37;
    return sub_245778F94(v44, &qword_27EE2C370, &unk_24591F040);
  }

  if (v31 != *MEMORY[0x277CFF678])
  {
    if (v31 == *MEMORY[0x277CFF698])
    {
      sub_245910944();
      if (qword_27EE28730 != -1)
      {
        swift_once();
      }

      v54 = v16;
      v55 = __swift_project_value_buffer(v16, qword_27EE2C450);
      v56 = *(v17 + 16);
      v56(v19, v55, v54);
      sub_24590C224();
      v57 = v127;
      sub_24590BFE4();
      sub_245910944();
      v56(v19, v55, v54);
      sub_24590C224();
      v58 = v117;
      sub_24590BFE4();
      v59 = sub_24590FBC4();
      v60 = v118;
      *v118 = v59;
      *(v60 + 8) = 0;
      *(v60 + 16) = 1;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3A8, &unk_24591F050);
      sub_2458FEECC(v57, v58, v60 + *(v61 + 44));
      v62 = *(v128 + 8);
      v63 = v58;
      v64 = v129;
      v62(v63, v129);
      v62(v57, v64);
      sub_245778F2C(v60, v113, &qword_27EE2C370, &unk_24591F040);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      sub_245778BD8(&qword_27EE2C380, &qword_27EE2C370, &unk_24591F040, MEMORY[0x277CE1198]);
      v65 = v114;
      sub_24590FD14();
      sub_245778F2C(v65, v110, &qword_27EE2C338, &qword_24591F008);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B6F8, &qword_24591D5E0);
      sub_2458FF738();
      sub_2458DBB74();
      v66 = v111;
      sub_24590FD14();
      sub_245778F94(v65, &qword_27EE2C338, &qword_24591F008);
      v67 = &qword_27EE2C328;
      v68 = &qword_24591EFF8;
      sub_245778F2C(v66, v134, &qword_27EE2C328, &qword_24591EFF8);
      swift_storeEnumTagMultiPayload();
      sub_2458FF7E8();
      sub_2458FF958();
      sub_24590FD14();
      v69 = v66;
LABEL_23:
      sub_245778F94(v69, v67, v68);
      v44 = v60;
      return sub_245778F94(v44, &qword_27EE2C370, &unk_24591F040);
    }

    if (v31 == *MEMORY[0x277CFF688])
    {
      sub_245910944();
      if (qword_27EE28730 != -1)
      {
        swift_once();
      }

      v70 = v16;
      v71 = __swift_project_value_buffer(v16, qword_27EE2C450);
      v72 = *(v17 + 16);
      v72(v19, v71, v70);
      sub_24590C224();
      v73 = v127;
      sub_24590BFE4();
      sub_245910944();
      v72(v19, v71, v70);
      sub_24590C224();
      v74 = v117;
      sub_24590BFE4();
      v75 = sub_24590FBC4();
      v60 = v118;
      *v118 = v75;
      *(v60 + 8) = 0;
      *(v60 + 16) = 1;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3A8, &unk_24591F050);
      sub_2458FEECC(v73, v74, v60 + *(v76 + 44));
      v77 = *(v128 + 8);
      v78 = v74;
      v79 = v129;
      v77(v78, v129);
      v77(v73, v79);
      sub_245778F2C(v60, v113, &qword_27EE2C370, &unk_24591F040);
    }

    else
    {
      if (v31 != *MEMORY[0x277CFF690])
      {
        if (v31 != *MEMORY[0x277CFF6A0])
        {
          v102 = v108;
          sub_2458FF610(a1, v108);
          v103 = (*(v107[0] + 80) + 16) & ~*(v107[0] + 80);
          v104 = swift_allocObject();
          sub_2458FF674(v102, v104 + v103);
          v105 = v110;
          *v110 = sub_2458FF6D8;
          v105[1] = v104;
          v105[2] = 0;
          v105[3] = 0;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B6F8, &qword_24591D5E0);
          sub_2458FF738();
          sub_2458DBB74();
          v106 = v111;
          sub_24590FD14();
          sub_245778F2C(v106, v134, &qword_27EE2C328, &qword_24591EFF8);
          swift_storeEnumTagMultiPayload();
          sub_2458FF7E8();
          sub_2458FF958();
          sub_24590FD14();

          sub_245778F94(v106, &qword_27EE2C328, &qword_24591EFF8);
          return (*(v27 + 8))(v30, v26);
        }

        sub_245910944();
        if (qword_27EE28730 != -1)
        {
          swift_once();
        }

        v92 = v16;
        v93 = __swift_project_value_buffer(v16, qword_27EE2C450);
        v94 = *(v17 + 16);
        v94(v19, v93, v92);
        sub_24590C224();
        v95 = v127;
        sub_24590BFE4();
        sub_245910944();
        v94(v19, v93, v92);
        sub_24590C224();
        v96 = v117;
        sub_24590BFE4();
        v97 = sub_24590FBC4();
        v60 = v118;
        *v118 = v97;
        *(v60 + 8) = 0;
        *(v60 + 16) = 1;
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3A8, &unk_24591F050);
        sub_2458FEECC(v95, v96, v60 + *(v98 + 44));
        v99 = *(v128 + 8);
        v100 = v96;
        v101 = v129;
        v99(v100, v129);
        v99(v95, v101);
        sub_245778F2C(v60, v113, &qword_27EE2C370, &unk_24591F040);
        goto LABEL_13;
      }

      sub_245910944();
      if (qword_27EE28730 != -1)
      {
        swift_once();
      }

      v80 = v16;
      v81 = __swift_project_value_buffer(v16, qword_27EE2C450);
      v82 = *(v17 + 16);
      v82(v19, v81, v80);
      sub_24590C224();
      v83 = v127;
      sub_24590BFE4();
      sub_245910944();
      v82(v19, v81, v80);
      sub_24590C224();
      v84 = v117;
      sub_24590BFE4();
      v85 = sub_24590FBC4();
      v60 = v118;
      *v118 = v85;
      *(v60 + 8) = 0;
      *(v60 + 16) = 1;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3A8, &unk_24591F050);
      sub_2458FEECC(v83, v84, v60 + *(v86 + 44));
      v87 = *(v128 + 8);
      v88 = v84;
      v89 = v129;
      v87(v88, v129);
      v87(v83, v89);
      sub_245778F2C(v60, v113, &qword_27EE2C370, &unk_24591F040);
    }

    swift_storeEnumTagMultiPayload();
    sub_245778BD8(&qword_27EE2C380, &qword_27EE2C370, &unk_24591F040, MEMORY[0x277CE1198]);
    v90 = v114;
    sub_24590FD14();
    sub_245778F2C(v90, v125, &qword_27EE2C338, &qword_24591F008);
    swift_storeEnumTagMultiPayload();
    sub_2458FF874();
    sub_2458FF738();
    v91 = v126;
    sub_24590FD14();
    sub_245778F94(v90, &qword_27EE2C338, &qword_24591F008);
    v67 = &qword_27EE2C368;
    v68 = &qword_24591F038;
    sub_245778F2C(v91, v134, &qword_27EE2C368, &qword_24591F038);
    swift_storeEnumTagMultiPayload();
    sub_2458FF7E8();
    sub_2458FF958();
    sub_24590FD14();
    v69 = v91;
    goto LABEL_23;
  }

  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v16, qword_27EE2C450);
  (*(v17 + 16))(v19, v45, v16);
  sub_24590C224();
  v46 = v127;
  v47 = sub_24590BFE4();
  MEMORY[0x28223BE20](v47);
  v107[-2] = v46;
  v48 = v115;
  sub_24590F634();
  (*(v128 + 8))(v46, v129);
  v49 = v116;
  v50 = v122;
  (*(v116 + 16))(v120, v48, v122);
  swift_storeEnumTagMultiPayload();
  sub_245778BD8(&qword_27EE2C380, &qword_27EE2C370, &unk_24591F040, MEMORY[0x277CE1198]);
  sub_245778BD8(&qword_27EE2C398, &qword_27EE2C340, &qword_24591F010, MEMORY[0x277CDD7F8]);
  v51 = v121;
  sub_24590FD14();
  sub_245778F2C(v51, v125, &qword_27EE2C360, &qword_24591F030);
  swift_storeEnumTagMultiPayload();
  sub_2458FF874();
  sub_2458FF738();
  v52 = v126;
  sub_24590FD14();
  sub_245778F94(v51, &qword_27EE2C360, &qword_24591F030);
  sub_245778F2C(v52, v134, &qword_27EE2C368, &qword_24591F038);
  swift_storeEnumTagMultiPayload();
  sub_2458FF7E8();
  sub_2458FF958();
  sub_24590FD14();
  sub_245778F94(v52, &qword_27EE2C368, &qword_24591F038);
  return (*(v49 + 8))(v48, v50);
}

uint64_t sub_2458FEC0C(uint64_t a1)
{
  v2 = sub_24590E574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityCredentialProviderAuxiliaryView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590F354();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  sub_2458FF610(a1, v8);
  v13 = sub_24590F344();
  v14 = sub_245910F64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    (*(v3 + 16))(v5, v8, v2);
    v18 = sub_245910A74();
    v20 = v19;
    sub_2458FFAEC(v8);
    v21 = sub_2458CC378(v18, v20, &v24);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_245767000, v13, v14, "Unexpected MobileDocumentProviderAuxiliaryView: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x245D77B40](v17, -1, -1);
    MEMORY[0x245D77B40](v16, -1, -1);

    return (*(v10 + 8))(v12, v23);
  }

  else
  {

    sub_2458FFAEC(v8);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2458FEECC@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a3;
  v77 = a4;
  v79 = a5;
  v5 = sub_24590BFC4();
  v6 = *(v5 - 8);
  v80 = v5;
  v81 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C220, &qword_24591ED08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3B0, &qword_24591F060);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v78 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - v16;

  v18 = sub_245910504();
  v19 = sub_245910044();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = sub_2459100A4();
  sub_2458F8CC8(v11);
  KeyPath = swift_getKeyPath();
  v22 = sub_245910424();
  v82 = v18;
  v83 = KeyPath;
  v84 = v20;
  v85 = v22;
  sub_245910064();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2BBC8, &qword_24591DD60);
  sub_2458E6FB0();
  sub_245910204();

  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3B8, &qword_24591F0A8) + 36);
  v75 = v17;
  v24 = &v17[v23];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3C0, &qword_24591F0B0) + 28);
  sub_24590FBE4();
  v26 = sub_24590FBF4();
  (*(*(v26 - 8) + 56))(v24 + v25, 0, 1, v26);
  *v24 = swift_getKeyPath();
  LOBYTE(v24) = sub_24590FFD4();
  sub_24590F594();
  v27 = &v17[*(v13 + 44)];
  *v27 = v24;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = *(v81 + 16);
  v81 += 16;
  v71 = v32;
  v32(v8, v76, v80);
  v33 = v8;
  v34 = sub_245910194();
  v36 = v35;
  LOBYTE(KeyPath) = v37;
  sub_2459100B4();
  v38 = sub_245910184();
  v40 = v39;
  LOBYTE(v8) = v41;

  sub_24580FD24(v34, v36, KeyPath & 1);

  sub_245910054();
  v76 = sub_245910144();
  v73 = v42;
  v74 = v43;
  v72 = v44;
  sub_24580FD24(v38, v40, v8 & 1);

  v71(v33, v77, v80);
  v45 = sub_245910194();
  v47 = v46;
  LOBYTE(v40) = v48;
  sub_2459100C4();
  v49 = sub_245910184();
  v51 = v50;
  v53 = v52;

  sub_24580FD24(v45, v47, v40 & 1);

  LODWORD(v82) = sub_24590FE34();
  v54 = sub_245910164();
  v56 = v55;
  LOBYTE(v47) = v57;
  v59 = v58;
  sub_24580FD24(v49, v51, v53 & 1);

  v60 = v75;
  v61 = v78;
  sub_245778F2C(v75, v78, &qword_27EE2C3B0, &qword_24591F060);
  LOBYTE(v49) = v72 & 1;
  LOBYTE(v82) = v72 & 1;
  v62 = v79;
  sub_245778F2C(v61, v79, &qword_27EE2C3B0, &qword_24591F060);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3C8, &qword_24591F0E8);
  v64 = v62 + *(v63 + 48);
  v65 = v76;
  v67 = v73;
  v66 = v74;
  *v64 = v76;
  *(v64 + 8) = v67;
  *(v64 + 16) = v49;
  *(v64 + 24) = v66;
  v68 = v62 + *(v63 + 64);
  *v68 = v54;
  *(v68 + 8) = v56;
  LOBYTE(v62) = v47 & 1;
  *(v68 + 16) = v47 & 1;
  *(v68 + 24) = v59;
  v69 = v65;
  sub_245812E64(v65, v67, v49);

  sub_245812E64(v54, v56, v62);

  sub_245778F94(v60, &qword_27EE2C3B0, &qword_24591F060);
  sub_24580FD24(v54, v56, v62);

  sub_24580FD24(v69, v67, v82);

  return sub_245778F94(v61, &qword_27EE2C3B0, &qword_24591F060);
}

uint64_t sub_2458FF4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24590BFC4();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_245910194();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_2458FF5BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24590FA34();
  *a1 = result;
  return result;
}

uint64_t sub_2458FF610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderAuxiliaryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458FF674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderAuxiliaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458FF6D8()
{
  v1 = *(type metadata accessor for IdentityCredentialProviderAuxiliaryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2458FEC0C(v2);
}

unint64_t sub_2458FF738()
{
  result = qword_27EE2C378;
  if (!qword_27EE2C378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C338, &qword_24591F008);
    sub_245778BD8(&qword_27EE2C380, &qword_27EE2C370, &unk_24591F040, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C378);
  }

  return result;
}

unint64_t sub_2458FF7E8()
{
  result = qword_27EE2C388;
  if (!qword_27EE2C388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C368, &qword_24591F038);
    sub_2458FF874();
    sub_2458FF738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C388);
  }

  return result;
}

unint64_t sub_2458FF874()
{
  result = qword_27EE2C390;
  if (!qword_27EE2C390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C360, &qword_24591F030);
    sub_245778BD8(&qword_27EE2C380, &qword_27EE2C370, &unk_24591F040, MEMORY[0x277CE1198]);
    sub_245778BD8(&qword_27EE2C398, &qword_27EE2C340, &qword_24591F010, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C390);
  }

  return result;
}

unint64_t sub_2458FF958()
{
  result = qword_27EE2C3A0;
  if (!qword_27EE2C3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C328, &qword_24591EFF8);
    sub_2458FF738();
    sub_2458DBB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C3A0);
  }

  return result;
}

uint64_t sub_2458FF9EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3D0, &qword_24591F0F0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2458FFA7C(a1, &v5 - v3);
  return sub_24590FA24();
}

uint64_t sub_2458FFA7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C3D0, &qword_24591F0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458FFAEC(uint64_t a1)
{
  v2 = type metadata accessor for IdentityCredentialProviderAuxiliaryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2458FFB48()
{
  result = qword_27EE2C3D8;
  if (!qword_27EE2C3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C318, &qword_24591EFE8);
    sub_2458FFBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C3D8);
  }

  return result;
}

unint64_t sub_2458FFBD4()
{
  result = qword_27EE2C3E0;
  if (!qword_27EE2C3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C308, &qword_24591EFA8);
    sub_2458FFC60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C3E0);
  }

  return result;
}

unint64_t sub_2458FFC60()
{
  result = qword_27EE2C3E8;
  if (!qword_27EE2C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C310, &qword_24591EFE0);
    sub_2458FFD18();
    sub_245778BD8(&qword_27EE29EF0, &qword_27EE29EF8, &qword_2459193D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C3E8);
  }

  return result;
}

unint64_t sub_2458FFD18()
{
  result = qword_27EE2C3F0;
  if (!qword_27EE2C3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C3F8, &qword_24591F0F8);
    sub_2458FFD9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C3F0);
  }

  return result;
}

unint64_t sub_2458FFD9C()
{
  result = qword_27EE2C400;
  if (!qword_27EE2C400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2C408, &qword_24591F100);
    sub_2458FF7E8();
    sub_2458FF958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2C400);
  }

  return result;
}

uint64_t sub_2458FFE28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24590C094();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24590F354();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_245910D34();
  v2[10] = sub_245910D24();
  v6 = sub_245910CD4();
  v2[11] = v6;
  v2[12] = v5;

  return MEMORY[0x2822009F8](sub_2458FFF78, v6, v5);
}

uint64_t sub_2458FFF78(uint64_t a1)
{
  v30 = v1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = v1[2];
  sub_24590C714();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_24590F344();
  v7 = sub_245910F54();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[6];
  v12 = v1[7];
  v14 = v1[4];
  v13 = v1[5];
  if (v8)
  {
    v27 = v1[7];
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v15 = 136446466;
    *(v15 + 4) = sub_2458CC378(0xD000000000000022, 0x800000024592F460, &v29);
    *(v15 + 12) = 2080;
    v16 = sub_24590C024();
    v25 = v9;
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_2458CC378(v16, v18, &v29);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_245767000, v6, v7, "IdentityCredentialProviderViewConnection %{public}s with payload %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D77B40](v26, -1, -1);
    MEMORY[0x245D77B40](v15, -1, -1);

    (*(v10 + 8))(v25, v27);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v20 = v1[3];
  v21 = *(v20 + 56);
  v1[13] = *(v20 + 64);

  v28 = (v21 + *v21);
  v22 = swift_task_alloc();
  v1[14] = v22;
  *v22 = v1;
  v22[1] = sub_24590024C;
  v23 = v1[2];

  return v28(v23);
}

uint64_t sub_24590024C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_245900414;
  }

  else
  {
    v5 = sub_245900388;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_245900388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245900414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2459004A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C418, &qword_24591F358);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C420, &qword_24591F360);
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 1, 1, v9);
  v14 = v8;
  sub_24590D374();
  if (v1)
  {
    return sub_245778F94(v8, &qword_27EE2C418, &qword_24591F358);
  }

  sub_245778F2C(v8, v5, &qword_27EE2C418, &qword_24591F358);
  result = (*(v10 + 48))(v5, 1, v9);
  if (result != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0, &qword_245916E90);
      swift_willThrowTypedImpl();
    }

    else
    {
      v12 = sub_24590E8A4();
      (*(*(v12 - 8) + 32))(a1, v5, v12);
    }

    return sub_245778F94(v8, &qword_27EE2C418, &qword_24591F358);
  }

  __break(1u);
  return result;
}

uint64_t sub_2459006D8()
{
  v1 = sub_24590EA74();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_245910D34();
  v0[5] = sub_245910D24();
  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2459007C8, v3, v2);
}

uint64_t sub_2459007C8()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  (*(v3 + 104))(v1, *MEMORY[0x277CFF938], v2);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579D1C0();
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24590090C()
{
  v1 = sub_24590EA74();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_245910D34();
  v0[5] = sub_245910D24();
  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2459009FC, v3, v2);
}

uint64_t sub_2459009FC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  (*(v3 + 104))(v1, *MEMORY[0x277CFF938], v2);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579D1C0();
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_245900B40()
{
  v1 = sub_24590EA74();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_245910D34();
  v0[5] = sub_245910D24();
  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245900C30, v3, v2);
}

uint64_t sub_245900C30()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  (*(v3 + 104))(v1, *MEMORY[0x277CFF938], v2);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579D1C0();
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_245900D74()
{
  v1 = sub_24590EA74();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_245910D34();
  v0[5] = sub_245910D24();
  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245900E64, v3, v2);
}

uint64_t sub_245900E64()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  (*(v3 + 104))(v1, *MEMORY[0x277CFF938], v2);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579D1C0();
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_245900FA8()
{
  v1 = sub_24590EA74();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_245910D34();
  v0[5] = sub_245910D24();
  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245901098, v3, v2);
}

uint64_t sub_245901098()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  (*(v3 + 104))(v1, *MEMORY[0x277CFF938], v2);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579D1C0();
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2459011DC()
{
  v1 = sub_24590EA74();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_245910D34();
  v0[5] = sub_245910D24();
  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2459012CC, v3, v2);
}

uint64_t sub_2459012CC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  (*(v3 + 104))(v1, *MEMORY[0x277CFF938], v2);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579D1C0();
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_245901410(void *a1)
{
  v2 = sub_24590EA74();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CFF920], v3);
  v6 = a1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579D1C0();
  v7 = swift_allocError();
  sub_24590EA94();
  return v7;
}

uint64_t sub_245901580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v12 = sub_24590F344();
  v13 = sub_245910F54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245767000, v12, v13, "IdentityCredentialProviderViewConnection connection invalidationHandler called", v14, 2u);
    MEMORY[0x245D77B40](v14, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    memset(v20, 0, sizeof(v20));
    sub_24590D324();
  }

  v15 = sub_245910D64();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_245910D34();
  sub_245771BB4(a2, a3);
  v16 = sub_245910D24();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = a2;
  v17[5] = a3;
  sub_2458B93DC(0, 0, v7, &unk_24591F3A8, v17);
}

uint64_t sub_245901820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_245910D34();
  v5[5] = sub_245910D24();
  v7 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2459018BC, v7, v6);
}

uint64_t sub_2459018BC()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(v2);
  }

  **(v0 + 16) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_245901940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24590F354();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_24590E864();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v5[9] = *(v8 + 64);
  v5[10] = swift_task_alloc();
  sub_245910D34();
  v5[11] = sub_245910D24();
  v10 = sub_245910CD4();
  v5[12] = v10;
  v5[13] = v9;

  return MEMORY[0x2822009F8](sub_245901A98, v10, v9);
}

uint64_t sub_245901A98()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  (*(v3 + 16))(v1, v0[3], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[14] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_245901BD4;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282151358](v6, &unk_24591F350, v5, 0, 0, v7);
}

uint64_t sub_245901BD4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_245901D64;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_245901CF0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_245901CF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245901D64()
{
  v1 = v0[16];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Failed to authorize %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_245901F10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[18] = a3;
  v5 = sub_24590E864();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[21] = v6;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_245901FD8, 0, 0);
}

uint64_t sub_245901FD8()
{
  v1 = v0[22];
  (*(v0[20] + 16))(v0[21], v0[18], v0[19]);
  v2 = objc_allocWithZone(sub_24590E914());
  v3 = sub_24590E904();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_245902138;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808, &unk_24591AFC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_245838004;
  v0[13] = &block_descriptor_158;
  v0[14] = v4;
  [v1 didAuthorizeRequestWithResponse:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245902138()
{

  return MEMORY[0x2822009F8](sub_245902218, 0, 0);
}

uint64_t sub_245902218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245902288(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_245909D3C;
  *(v5 + 24) = v4;
  v8[4] = sub_245909D44;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24590270C;
  v8[3] = &block_descriptor_167;
  v6 = _Block_copy(v8);

  [v3 viewServiceDidBecomeActive_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2459023DC(void *a1, void *a2, void *a3)
{
  v6 = sub_24590EA74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C418, &qword_24591F358);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v21 - v12);
  if (a2)
  {
    v14 = a2;
    sub_245778F94(a3, &qword_27EE2C418, &qword_24591F358);
    *a3 = a2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C420, &qword_24591F360);
    swift_storeEnumTagMultiPayload();
    v16 = *(*(v15 - 8) + 56);

    return v16(a3, 0, 1, v15);
  }

  else
  {
    if (a1)
    {
      v18 = a1;
      sub_24590E924();
    }

    else
    {
      (*(v7 + 104))(v9, *MEMORY[0x277CFFA38], v6, v11);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_24579D1C0();
      v20 = swift_allocError();
      sub_24590EA94();
      *v13 = v20;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C420, &qword_24591F360);
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    return sub_245909D84(v13, a3);
  }
}

void sub_24590270C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_245902784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24590F354();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_24590E8A4();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v5[9] = *(v8 + 64);
  v5[10] = swift_task_alloc();
  sub_245910D34();
  v5[11] = sub_245910D24();
  v10 = sub_245910CD4();
  v5[12] = v10;
  v5[13] = v9;

  return MEMORY[0x2822009F8](sub_2459028DC, v10, v9);
}

uint64_t sub_2459028DC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  (*(v3 + 16))(v1, v0[3], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[14] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_245902A18;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282151358](v6, &unk_24591F198, v5, 0, 0, v7);
}

uint64_t sub_245902A18()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_245902B34;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_24590A184;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_245902B34()
{
  v1 = v0[16];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Failed to inform daemon about viewDidAppear: %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_245902CE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[18] = a3;
  v5 = sub_24590E8A4();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[21] = v6;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_245902DA8, 0, 0);
}

uint64_t sub_245902DA8()
{
  v1 = v0[22];
  (*(v0[20] + 16))(v0[21], v0[18], v0[19]);
  v2 = objc_allocWithZone(sub_24590E944());
  v3 = sub_24590E934();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_245902F08;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808, &unk_24591AFC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_245838004;
  v0[13] = &block_descriptor_37;
  v0[14] = v4;
  [v1 remoteViewDidAppearWithViewIdentifier:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245902F08()
{

  return MEMORY[0x2822009F8](sub_24590A150, 0, 0);
}

uint64_t sub_245902FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24590F354();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_24590E8A4();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v5[9] = *(v8 + 64);
  v5[10] = swift_task_alloc();
  sub_245910D34();
  v5[11] = sub_245910D24();
  v10 = sub_245910CD4();
  v5[12] = v10;
  v5[13] = v9;

  return MEMORY[0x2822009F8](sub_245903140, v10, v9);
}

uint64_t sub_245903140()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  (*(v3 + 16))(v1, v0[3], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[14] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_24590327C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282151358](v6, &unk_24591F338, v5, 0, 0, v7);
}

uint64_t sub_24590327C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_245903398;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_24590A184;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_245903398()
{
  v1 = v0[16];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Failed to inform daemon about viewDidCancel: %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_245903544(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[18] = a3;
  v5 = sub_24590E8A4();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[21] = v6;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_24590360C, 0, 0);
}

uint64_t sub_24590360C()
{
  v1 = v0[22];
  (*(v0[20] + 16))(v0[21], v0[18], v0[19]);
  v2 = objc_allocWithZone(sub_24590E944());
  v3 = sub_24590E934();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_245902F08;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808, &unk_24591AFC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_245838004;
  v0[13] = &block_descriptor_150;
  v0[14] = v4;
  [v1 remoteViewDidCancelWithViewIdentifier:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24590376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24590F354();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_24590E5C4();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v5[9] = *(v8 + 64);
  v5[10] = swift_task_alloc();
  sub_245910D34();
  v5[11] = sub_245910D24();
  v10 = sub_245910CD4();
  v5[12] = v10;
  v5[13] = v9;

  return MEMORY[0x2822009F8](sub_2459038C4, v10, v9);
}

uint64_t sub_2459038C4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  (*(v3 + 16))(v1, v0[3], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[14] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_245903A00;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282151358](v6, &unk_24591F1B0, v5, 0, 0, v7);
}

uint64_t sub_245903A00()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_245903B1C;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_24590A184;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_245903B1C()
{
  v1 = v0[16];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Failed to inform daemon about tapped selection: %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_245903CC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[18] = a3;
  v5 = sub_24590E5C4();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[21] = v6;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_245903D90, 0, 0);
}

uint64_t sub_245903D90()
{
  v1 = v0[22];
  (*(v0[20] + 16))(v0[21], v0[18], v0[19]);
  v2 = objc_allocWithZone(sub_24590E744());
  v3 = sub_24590E734();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_245902F08;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808, &unk_24591AFC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_245838004;
  v0[13] = &block_descriptor_12;
  v0[14] = v4;
  [v1 selectionViewUserDidTapSelection:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245903EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24590F354();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_24590E5C4();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v5[9] = *(v8 + 64);
  v5[10] = swift_task_alloc();
  sub_245910D34();
  v5[11] = sub_245910D24();
  v10 = sub_245910CD4();
  v5[12] = v10;
  v5[13] = v9;

  return MEMORY[0x2822009F8](sub_245904048, v10, v9);
}

uint64_t sub_245904048()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  (*(v3 + 16))(v1, v0[3], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[14] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_245904184;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282151358](v6, &unk_24591F1E8, v5, 0, 0, v7);
}

uint64_t sub_245904184()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_2459042A0;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_24590A184;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2459042A0()
{
  v1 = v0[16];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Failed to select option %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24590444C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[18] = a3;
  v5 = sub_24590E5C4();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[21] = v6;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_245904514, 0, 0);
}

uint64_t sub_245904514()
{
  v1 = v0[22];
  (*(v0[20] + 16))(v0[21], v0[18], v0[19]);
  v2 = objc_allocWithZone(sub_24590E744());
  v3 = sub_24590E734();
  v0[23] = v3;
  v0[2] = v0;
  v0[3] = sub_245902F08;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808, &unk_24591AFC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_245838004;
  v0[13] = &block_descriptor_28_0;
  v0[14] = v4;
  [v1 selectionViewDidSelect:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245904674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24590F354();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_245910D34();
  v4[6] = sub_245910D24();
  v7 = sub_245910CD4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_245904768, v7, v6);
}

uint64_t sub_245904768()
{
  v0[9] = *(v0[2] + 16);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_245904830;
  v2 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282151358](v1, &unk_24591F1C0, 0, 0, 0, v2);
}

uint64_t sub_245904830()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_2459049EC;
  }

  else
  {
    v5 = sub_24590496C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24590496C()
{

  sub_24590D324();
  sub_24590D314();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2459049EC()
{
  v1 = v0[11];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Unable to send graceful shutdown message %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_245904B9C()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_245904CB0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808, &unk_24591AFC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_245838004;
  v0[13] = &block_descriptor_16_0;
  v0[14] = v2;
  [v1 viewServiceWillTerminateWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245904CB0()
{

  return MEMORY[0x2822009F8](sub_245904D90, 0, 0);
}

uint64_t sub_245904DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24590F354();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_245910D34();
  v4[6] = sub_245910D24();
  v7 = sub_245910CD4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_245904E9C, v7, v6);
}

uint64_t sub_245904E9C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_245904F60;
  v2 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282151358](v1, &unk_24591F3B8, 0, 0, 0, v2);
}

uint64_t sub_245904F60()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_245905104;
  }

  else
  {
    v5 = sub_24590509C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24590509C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245905104()
{
  v1 = v0[10];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Failed to tell daemon to show the scannable code view: %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2459052B4()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_2459053C8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808, &unk_24591AFC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_245838004;
  v0[13] = &block_descriptor_181;
  v0[14] = v2;
  [v1 didSelectScannableCodeWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2459053C8()
{

  return MEMORY[0x2822009F8](sub_24590A188, 0, 0);
}

uint64_t sub_2459054A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24590F354();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_245910D34();
  v4[6] = sub_245910D24();
  v7 = sub_245910CD4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_24590559C, v7, v6);
}

uint64_t sub_24590559C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_245905660;
  v2 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282151358](v1, &unk_24591F1D0, 0, 0, 0, v2);
}

uint64_t sub_245905660()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_24590579C;
  }

  else
  {
    v5 = sub_24590A178;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24590579C()
{
  v1 = v0[10];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Failed to tell daemon to enable Bluetooth: %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24590594C()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_2459053C8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808, &unk_24591AFC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_245838004;
  v0[13] = &block_descriptor_20_0;
  v0[14] = v2;
  [v1 didSelectEnableBluetoothWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245905A60(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_245905A84, 0, 0);
}

uint64_t sub_245905A84()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_245905BA0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C410, &unk_24591F318);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579ED8C;
  v0[13] = &block_descriptor_141_0;
  v0[14] = v2;
  [v1 releaseRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_245905BA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2457A8B10;
  }

  else
  {
    v2 = sub_245905CB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245905CB0()
{
  v1 = *(v0 + 144);
  sub_24590D6B4();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245905D18()
{
  v1[2] = v0;
  v2 = sub_24590F354();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_245910D34();
  v1[6] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245905E0C, v4, v3);
}

uint64_t sub_245905E0C()
{
  v14 = v0;

  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_2458CC378(0x287373696D736964, 0xE900000000000029, &v13);
    _os_log_impl(&dword_245767000, v1, v2, "IdentityCredentialProviderViewConnection %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v9 = *(v0[2] + 24);

  v9(v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_245906114(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_245910D34();
  v2[4] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2459061AC, v4, v3);
}

uint64_t sub_2459061AC()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_245906260;

  return sub_245905D18();
}

uint64_t sub_245906260()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24590639C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24590E814();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_24590F354();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_245910D34();
  v2[11] = sub_245910D24();
  v6 = sub_245910CD4();
  v2[12] = v6;
  v2[13] = v5;

  return MEMORY[0x2822009F8](sub_2459064F8, v6, v5);
}

uint64_t sub_2459064F8(uint64_t a1)
{
  v23 = v1;
  v2 = v1[2];
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F54();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[9];
  v7 = v1[10];
  v9 = v1[8];
  if (v6)
  {
    v20 = v1[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_2458CC378(0xD000000000000033, 0x800000024592F490, &v22);
    *(v10 + 12) = 2080;
    sub_24590E8B4();
    v12 = sub_245910A74();
    v14 = sub_2458CC378(v12, v13, &v22);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_245767000, v4, v5, "IdentityCredentialProviderViewConnection %{public}s with request %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D77B40](v11, -1, -1);
    MEMORY[0x245D77B40](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v15 = v1[3];
  v16 = *(v15 + 40);
  v1[14] = *(v15 + 48);

  sub_24590E8B4();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v1[15] = v17;
  *v17 = v1;
  v17[1] = sub_245906790;
  v18 = v1[6];

  return v21(v18);
}

uint64_t sub_245906790()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_24590A17C;
  }

  else
  {
    v8 = sub_24590A180;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_245906AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_245910D34();
  v3[5] = sub_245910D24();
  v5 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245906B74, v5, v4);
}

uint64_t sub_245906B74()
{
  v2 = v0[2];
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_24590A174;
  v5 = v0[2];

  return sub_24590639C(v5);
}

uint64_t sub_245906DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24590C094();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_245910D34();
  v3[8] = sub_245910D24();
  v6 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245906EC0, v6, v5);
}

uint64_t sub_245906EC0()
{
  v1 = v0[3];

  v0[9] = _Block_copy(v1);
  sub_24590C054();

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_245906F94;
  v3 = v0[7];

  return sub_2458FFE28(v3);
}

uint64_t sub_245906F94()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;

  (*(v6 + 8))(v5, v7);

  v9 = *(v3 + 72);
  if (v2)
  {
    v10 = sub_24590BF94();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 72), 0);
  }

  _Block_release(*(v4 + 72));

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_245907184(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24590E574();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_24590F354();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_245910D34();
  v2[11] = sub_245910D24();
  v6 = sub_245910CD4();
  v2[12] = v6;
  v2[13] = v5;

  return MEMORY[0x2822009F8](sub_2459072E0, v6, v5);
}

uint64_t sub_2459072E0(uint64_t a1)
{
  v23 = v1;
  v2 = v1[2];
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F54();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[9];
  v7 = v1[10];
  v9 = v1[8];
  if (v6)
  {
    v20 = v1[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_2458CC378(0xD000000000000018, 0x800000024592F440, &v22);
    *(v10 + 12) = 2080;
    sub_24590E724();
    v12 = sub_245910A74();
    v14 = sub_2458CC378(v12, v13, &v22);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_245767000, v4, v5, "IdentityCredentialProviderViewConnection %{public}s with auxiliary view %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D77B40](v11, -1, -1);
    MEMORY[0x245D77B40](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v15 = v1[3];
  v16 = *(v15 + 88);
  v1[14] = *(v15 + 96);

  sub_24590E724();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v1[15] = v17;
  *v17 = v1;
  v17[1] = sub_245907578;
  v18 = v1[6];

  return v21(v18);
}

uint64_t sub_245907578()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_2459077BC;
  }

  else
  {
    v8 = sub_245907734;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_245907734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2459077BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2459079D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_245910D34();
  v3[5] = sub_245910D24();
  v5 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245907A6C, v5, v4);
}

uint64_t sub_245907A6C()
{
  v2 = v0[2];
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_245907B34;
  v5 = v0[2];

  return sub_245907184(v5);
}

uint64_t sub_245907B34()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 48);
  if (v2)
  {
    v8 = sub_24590BF94();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_245907CD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24590E974();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24590F354();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_245910D34();
  v2[10] = sub_245910D24();
  v6 = sub_245910CD4();
  v2[11] = v6;
  v2[12] = v5;

  return MEMORY[0x2822009F8](sub_245907E24, v6, v5);
}

uint64_t sub_245907E24(uint64_t a1)
{
  v17 = v1;
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F54();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_2458CC378(0xD000000000000035, 0x800000024592F400, &v16);
    _os_log_impl(&dword_245767000, v2, v3, "IdentityCredentialProviderViewConnection %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v1[3];
  v11 = *(v10 + 104);
  v1[13] = *(v10 + 112);

  sub_24590E984();
  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  v1[14] = v12;
  *v12 = v1;
  v12[1] = sub_24590803C;
  v13 = v1[6];

  return v15(v13);
}

uint64_t sub_24590803C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_245908270;
  }

  else
  {
    v8 = sub_2459081F8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2459081F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245908270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245908474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_245910D34();
  v3[5] = sub_245910D24();
  v5 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245908510, v5, v4);
}

uint64_t sub_245908510()
{
  v2 = v0[2];
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_24590A174;
  v5 = v0[2];

  return sub_245907CD4(v5);
}

uint64_t sub_2459085D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24590E814();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_245910D34();
  v2[7] = sub_245910D24();
  v5 = sub_245910CD4();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_2459086CC, v5, v4);
}

uint64_t sub_2459086CC()
{
  v1 = v0[3];
  v2 = *(v1 + 120);
  v0[10] = *(v1 + 128);

  sub_24590E8B4();
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_2459087E8;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_2459087E8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = sub_245908A10;
  }

  else
  {
    v8 = sub_2459089A4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2459089A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245908A10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245908C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_245910D34();
  v3[5] = sub_245910D24();
  v5 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245908CA4, v5, v4);
}

uint64_t sub_245908CA4()
{
  v2 = v0[2];
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_24590A174;
  v5 = v0[2];

  return sub_2459085D8(v5);
}

void *sub_245908D6C()
{

  return v0;
}

uint64_t sub_245908DC4()
{
  sub_245908D6C();

  return swift_deallocClassInstance();
}

uint64_t sub_245908E1C(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_24590E8A4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2457AA49C;

  return sub_245902CE0(a1, a2, v2 + v7);
}

uint64_t sub_245908F00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2457AA49C;

  return v6();
}

uint64_t sub_245908FE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2457A18F4;

  return v7();
}

uint64_t sub_2459090D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0, &qword_2459171A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_245778F2C(a3, v23 - v10, &unk_27EE297B0, &qword_2459171A0);
  v12 = sub_245910D64();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_245778F94(v11, &unk_27EE297B0, &qword_2459171A0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_245910D54();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_245910CD4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_245910AA4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_245778F94(a3, &unk_27EE297B0, &qword_2459171A0);

    return v21;
  }

LABEL_8:
  sub_245778F94(a3, &unk_27EE297B0, &qword_2459171A0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2459093E4(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_24590E5C4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2457AA49C;

  return sub_245903CC8(a1, a2, v2 + v7);
}

uint64_t sub_2459094C8(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_24590E5C4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2457AA49C;

  return sub_24590444C(a1, a2, v2 + v7);
}

uint64_t sub_2459095AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2457AA49C;

  return sub_245908C08(v2, v3, v4);
}

uint64_t sub_245909660(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457AA49C;

  return sub_245809D68(a1, v4);
}

uint64_t sub_245909718()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2457AA49C;

  return sub_245908474(v2, v3, v4);
}

uint64_t sub_2459097CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2457A18F4;

  return sub_2459079D0(v2, v3, v4);
}

uint64_t sub_245909880()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2457AA49C;

  return sub_245906DC8(v2, v3, v4);
}

uint64_t objectdestroy_30Tm()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24590997C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2457AA49C;

  return sub_245906AD8(v2, v3, v4);
}

uint64_t sub_245909A30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457AA49C;

  return sub_245906114(v2, v3);
}

uint64_t sub_245909ADC(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_24590E8A4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2457AA49C;

  return sub_245903544(a1, a2, v2 + v7);
}

uint64_t objectdestroyTm_6(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_245909C50(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_24590E864() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2457A18F4;

  return sub_245901F10(a1, a2, v2 + v7);
}

double block_copy_helper_165(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_245909D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C418, &qword_24591F358);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_245909DF4(void *a1, uint64_t a2, uint64_t a3)
{
  v3[3] = nullsub_1;
  v3[4] = 0;
  v3[5] = &unk_24591F368;
  v3[6] = 0;
  v3[7] = &unk_24591F370;
  v3[8] = 0;
  v3[9] = &unk_24591F378;
  v3[10] = 0;
  v3[11] = &unk_24591F380;
  v3[12] = 0;
  v3[13] = &unk_24591F388;
  v3[14] = 0;
  v3[15] = &unk_24591F390;
  v3[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2C428, &qword_24591F398);
  v7 = objc_opt_self();
  v8 = a1;
  v9 = [v7 interfaceWithProtocol_];
  v10 = [v7 interfaceWithProtocol_];
  v3[2] = sub_24590D334();

  sub_24590D324();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;

  sub_245771BB4(a2, a3);
  sub_24590D354();

  return v3;
}

uint64_t sub_24590A070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_245901820(a1, v4, v5, v7, v6);
}

void sub_24590A18C()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27EE32CA0 = v1;
}

id sub_24590A21C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EE2C430 = result;
  return result;
}

uint64_t sub_24590A274()
{
  v0 = sub_24590F2D4();
  __swift_allocate_value_buffer(v0, qword_27EE32CA8);
  __swift_project_value_buffer(v0, qword_27EE32CA8);
  if (qword_27EE28708 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE2C430;
  return sub_24590F2C4();
}

uint64_t sub_24590A31C()
{
  v0 = sub_24590F2F4();
  __swift_allocate_value_buffer(v0, qword_27EE32CC0);
  __swift_project_value_buffer(v0, qword_27EE32CC0);
  if (qword_27EE28708 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE2C430;
  return sub_24590F2C4();
}

uint64_t sub_24590A3CC()
{
  v0 = sub_24590F2F4();
  __swift_allocate_value_buffer(v0, qword_27EE32CD8);
  __swift_project_value_buffer(v0, qword_27EE32CD8);
  if (qword_27EE28708 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE2C430;
  return sub_24590F2C4();
}

uint64_t sub_24590A474(uint64_t a1, uint64_t a2)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24590BFB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2459109B4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_245910994();
  MEMORY[0x28223BE20](v12 - 8);
  sub_245910984();
  sub_245910974();
  sub_245910964();
  sub_245910974();
  sub_2459109A4();
  if (qword_27EE28728 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27EE2C438);
  (*(v6 + 16))(v8, v13, v5);
  sub_24590C224();
  return sub_24590BFD4("TransactionDetailsPresentedTitle", 32, 2, v11, 0xD00000000000001DLL, 0x8000000245923910, v4, v8, 0, 0, 256);
}

uint64_t sub_24590A70C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24590BFB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2459109B4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_245910994();
  MEMORY[0x28223BE20](v12 - 8);
  sub_245910984();
  sub_245910974();
  sub_245910964();
  sub_245910974();
  sub_2459109A4();
  if (qword_27EE28728 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27EE2C438);
  (*(v6 + 16))(v8, v13, v5);
  sub_24590C224();
  return sub_24590BFD4("TransactionDetailsSharedTitle", 29, 2, v11, 0xD00000000000001DLL, 0x8000000245923910, v4, v8, 0, 0, 256);
}

uint64_t sub_24590A99C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24590BFB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2459109B4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_245910994();
  MEMORY[0x28223BE20](v12 - 8);
  sub_245910984();
  sub_245910974();
  sub_245910964();
  sub_245910974();
  sub_2459109A4();
  if (qword_27EE28728 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27EE2C438);
  (*(v6 + 16))(v8, v13, v5);
  sub_24590C224();
  return sub_24590BFD4("ElementGridRetentionNoneText", 28, 2, v11, 0xD00000000000001DLL, 0x8000000245923910, v4, v8, 0, 0, 256);
}

uint64_t sub_24590AC34(uint64_t a1, uint64_t a2)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24590BFB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2459109B4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_245910994();
  MEMORY[0x28223BE20](v12 - 8);
  sub_245910984();
  sub_245910974();
  sub_245910964();
  sub_245910974();
  sub_2459109A4();
  if (qword_27EE28728 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27EE2C438);
  (*(v6 + 16))(v8, v13, v5);
  sub_24590C224();
  return sub_24590BFD4("ElementGridRetentionNeverText", 29, 2, v11, 0xD00000000000001DLL, 0x8000000245923910, v4, v8, 0, 0, 256);
}

uint64_t sub_24590AECC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24590BFB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2459109B4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_245910994();
  MEMORY[0x28223BE20](v12 - 8);
  sub_245910984();
  sub_245910974();
  sub_245910964();
  sub_245910974();
  sub_2459109A4();
  if (qword_27EE28728 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27EE2C438);
  (*(v6 + 16))(v8, v13, v5);
  sub_24590C224();
  return sub_24590BFD4("ElementGridRetentionIndefiniteText", 34, 2, v11, 0xD00000000000001DLL, 0x8000000245923910, v4, v8, 0, 0, 256);
}

uint64_t sub_24590B160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24590C234();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590BFB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2459109B4();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245910994();
  MEMORY[0x28223BE20](v14 - 8);
  sub_245910984();
  sub_245910974();
  v17[1] = a1;
  sub_245910954();
  sub_245910974();
  sub_245910964();
  sub_245910974();
  sub_2459109A4();
  if (qword_27EE28728 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_27EE2C438);
  (*(v8 + 16))(v10, v15, v7);
  sub_24590C224();
  return sub_24590BFD4("ElementGridRetentionWithDurationText", 36, 2, v13, 0xD00000000000001DLL, 0x8000000245923910, v6, v10, 0, 0, 256);
}

uint64_t sub_24590B41C(uint64_t a1)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590BFB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2459109B4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_245910994();
  MEMORY[0x28223BE20](v12 - 8);
  sub_245910984();
  sub_245910974();
  v15[1] = a1;
  sub_245910954();
  sub_245910974();
  sub_2459109A4();
  if (qword_27EE28728 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27EE2C438);
  (*(v6 + 16))(v8, v13, v5);
  sub_24590C224();
  return sub_24590BFD4("TransactionDetailsSharedRetentionWithDuration", 45, 2, v11, 0xD00000000000001DLL, 0x8000000245923910, v4, v8, 0, 0, 256);
}

uint64_t sub_24590B6D4()
{
  v0 = sub_24590BFB4();
  __swift_allocate_value_buffer(v0, qword_27EE2C438);
  v1 = __swift_project_value_buffer(v0, qword_27EE2C438);
  *v1 = _s9CoreIDVUI19ResourceBundleClassCMa_0();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_24590B770(uint64_t a1, uint64_t a2)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24590BFB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2459109B4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_245910994();
  MEMORY[0x28223BE20](v12 - 8);
  sub_245910984();
  sub_245910974();
  sub_245910964();
  sub_245910974();
  sub_2459109A4();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27EE2C450);
  (*(v6 + 16))(v8, v13, v5);
  sub_24590C224();
  return sub_24590BFD4("CredentialProviderSelectionViewHeaderSubtitleWithMerchant %@", 60, 2, v11, 0x617A696C61636F4CLL, 0xEB00000000656C62, v4, v8, 0, 0, 256);
}

uint64_t sub_24590BA0C(uint64_t a1)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590BFB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2459109B4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_245910994();
  MEMORY[0x28223BE20](v12 - 8);
  sub_245910984();
  sub_245910974();
  v15[1] = a1;
  sub_245910954();
  sub_245910974();
  sub_2459109A4();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27EE2C450);
  (*(v6 + 16))(v8, v13, v5);
  sub_24590C224();
  return sub_24590BFD4("CredentialProviderSelectionViewPickerCellNumberDocumentsAvailable", 65, 2, v11, 0x617A696C61636F4CLL, 0xEB00000000656C62, v4, v8, 0, 0, 256);
}

uint64_t sub_24590BCC8()
{
  v0 = sub_24590BFB4();
  __swift_allocate_value_buffer(v0, qword_27EE2C450);
  v1 = __swift_project_value_buffer(v0, qword_27EE2C450);
  *v1 = _s9CoreIDVUI19ResourceBundleClassCMa_1();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x2821DE300](string);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}