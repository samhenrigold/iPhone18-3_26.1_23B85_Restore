double sub_214B7D10C(char *a1, char *a2, uint64_t a3, const void *a4)
{
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v13 = *a1;
  v12 = *a2;
  v11 = a3;
  v10 = a4;
  MEMORY[0x277D82BE0](a3);
  memcpy(__dst, a4, sizeof(__dst));
  v8 = v13;
  v7 = v12;
  FeedbackListViewModel.markItem(_:as:as:)(__dst, &v8, &v7);
  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_214B7D1C8(uint64_t a1)
{
  sub_214CCE734();
  sub_214B7EE40();
  return sub_214CD0594();
}

double sub_214B7D228(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  FeedbackListViewModel.fetchContent()();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B7D284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v14 = a1;
  v10 = sub_214B7E1F8;
  v28 = 0;
  v27 = 0;
  v2 = sub_214CCE724();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v13 = &v6 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F80, &qword_214CF0928);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v8 = *(v15 + 64);
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v19 = &v6 - v7;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v20 = &v6 - v9;
  v28 = &v6 - v9;
  v27 = v4;
  v26 = v4;
  sub_214B7D528();
  MEMORY[0x277D82BE0](v14);
  v11 = &v24;
  v25 = v14;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FA0, &qword_214CF0A30);
  sub_214B7E200();
  sub_214CCE3C4();
  MEMORY[0x277D82BD8](v14);
  v18 = sub_214B7BC98();
  sub_214B061F0(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  MEMORY[0x21605C9F0](v19, v21, v18);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_214B7D554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v19 = a1;
  v15 = 0;
  v11 = sub_214B7E288;
  v10 = sub_214B7D9EC;
  v18 = sub_214B7E290;
  v14 = sub_214B7DC1C;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FB0, &qword_214CF0A38);
  v6 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v28 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v6);
  v30 = &v6 - v7;
  v41 = &v6 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8, &unk_214CF0A40);
  v21 = *(v31 - 8);
  v22 = v31 - 8;
  v8 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v29 = &v6 - v8;
  v9 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v8);
  v34 = &v6 - v9;
  v40 = &v6 - v9;
  v39 = a1;
  MEMORY[0x277D82BE0](a1);
  v12 = 24;
  v13 = 7;
  *(swift_allocObject() + 16) = a1;
  v16 = MEMORY[0x277CE0BD8];
  v17 = MEMORY[0x277CE0BC8];
  sub_214CCF004();
  v24 = sub_214B79534();
  sub_214B061F0(v29, v31, v34);
  v33 = *(v21 + 8);
  v32 = v21 + 8;
  v33(v29, v31);
  MEMORY[0x277D82BE0](a1);
  *(swift_allocObject() + 16) = a1;
  sub_214CCF004();
  MEMORY[0x277D82BE0](a1);
  v20 = FeedbackListViewModel.canDonate.getter();
  MEMORY[0x277D82BD8](v19);
  sub_214CCED84();
  v33(v29, v31);
  v25 = sub_214B7E298();
  sub_214B061F0(v28, v23, v30);
  sub_214B7E340(v28);
  (*(v21 + 16))(v29, v34, v31);
  v27 = v38;
  v38[0] = v29;
  sub_214B7E3E4(v30, v28);
  v38[1] = v28;
  v37[0] = v31;
  v37[1] = v23;
  v35 = v24;
  v36 = v25;
  sub_214C663A4(v27, 2uLL, v37, v26);
  sub_214B7E340(v28);
  v33(v29, v31);
  sub_214B7E340(v30);
  return (v33)(v34, v31);
}

uint64_t sub_214B7D9EC@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v7) = 1;
  sub_214CCF614("Cancel", 6, 1);
  sub_214CCE4B4();
  sub_214CCF614("Localizable-BlackPearl", 22, 1);
  v21 = 0;
  v22 = 0;
  v23 = v7 & 0x100;
  v17 = sub_214CCEA54();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  v10 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v14, MEMORY[0x277CE0BD8], &v24);
  sub_214B07618(v14);
  v5 = v24;
  v6 = v25;
  v8 = *(&v25 + 1);
  sub_214B0755C(v24, *(&v24 + 1), v25 & 1);

  v11 = v5;
  v12 = v6 & 1;
  v13 = v8;
  sub_214B061F0(&v11, v10, a1);
  sub_214B07618(&v11);
  return sub_214B07618(&v24);
}

double sub_214B7DBC0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  FeedbackListViewModel.donate()();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B7DC1C@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v7) = 1;
  sub_214CCF614("Donate", 6, 1);
  sub_214CCE4B4();
  sub_214CCF614("Localizable-BlackPearl", 22, 1);
  v21 = 0;
  v22 = 0;
  v23 = v7 & 0x100;
  v17 = sub_214CCEA54();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  v10 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v14, MEMORY[0x277CE0BD8], &v24);
  sub_214B07618(v14);
  v5 = v24;
  v6 = v25;
  v8 = *(&v25 + 1);
  sub_214B0755C(v24, *(&v24 + 1), v25 & 1);

  v11 = v5;
  v12 = v6 & 1;
  v13 = v8;
  sub_214B061F0(&v11, v10, a1);
  sub_214B07618(&v11);
  return sub_214B07618(&v24);
}

void *sub_214B7DE60(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F98, &qword_214CF0A28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F78, &unk_214CF0918);
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    if (*a1 > 2uLL)
    {
    }

    if (a1[1])
    {
    }
  }

  return a1;
}

void *sub_214B7DF44(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F98, &qword_214CF0A28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F78, &unk_214CF0918);
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    if (*a1 > 2uLL)
    {
    }

    if (a1[1])
    {
    }
  }

  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F30, &qword_214CF08F8) + 36));
  if (*v3)
  {
  }

  if (v3[2])
  {
  }

  return a1;
}

void *sub_214B7E090(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F98, &qword_214CF0A28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F78, &unk_214CF0918);
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    if (*a1 > 2uLL)
    {
    }

    if (a1[1])
    {
    }
  }

  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F30, &qword_214CF08F8) + 36));
  if (*v3)
  {
  }

  if (v3[2])
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F10, &qword_214CF08E8);

  return a1;
}

unint64_t sub_214B7E200()
{
  v2 = qword_27CA35FA8;
  if (!qword_27CA35FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35FA0, &qword_214CF0A30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35FA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7E298()
{
  v2 = qword_27CA35FB8;
  if (!qword_27CA35FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35FB0, &qword_214CF0A38);
    sub_214B79534();
    sub_214B062FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35FB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B7E340(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8, &unk_214CF0A40);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FB0, &qword_214CF0A38);

  return a1;
}

uint64_t sub_214B7E3E4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8, &unk_214CF0A40);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FB0, &qword_214CF0A38) + 36);
  v6 = *(a1 + v5);

  v9 = a2 + v5;
  *(a2 + v5) = v6;
  v8 = *(a1 + v5 + 8);
  v10 = *(a1 + v5 + 16);

  result = a2;
  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  return result;
}

unint64_t sub_214B7E4E0()
{
  v2 = qword_27CA35FC8;
  if (!qword_27CA35FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35FC0, &qword_214CF0A50);
    sub_214B7E584();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35FC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7E584()
{
  v2 = qword_27CA35FD0;
  if (!qword_27CA35FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35FD8, &qword_214CF0A58);
    sub_214B7E61C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35FD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7E61C()
{
  v2 = qword_27CA35FE0;
  if (!qword_27CA35FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35FE8, &qword_214CF0A60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35FE0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B7E6A4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F98, &qword_214CF0A28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F78, &unk_214CF0918);
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

void *sub_214B7E784(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F98, &qword_214CF0A28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F78, &unk_214CF0918);
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (*a1 > 2uLL)
    {
      v6 = *a1;

      *a2 = v6;
    }

    else
    {
      *a2 = *a1;
    }

    if (a1[1])
    {
      v4 = a1[1];
      v5 = a1[2];

      a2[1] = v4;
      a2[2] = v5;
    }

    else
    {
      *(a2 + 1) = *(a1 + 1);
    }

    memcpy(a2 + 3, a1 + 3, 0x29uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_214B7E908(void *a1, void *a2)
{
  if (*a1 <= 2uLL)
  {
    *a2 = *a1;
  }

  else
  {
    v5 = *a1;

    *a2 = v5;
  }

  if (a1[1])
  {
    v3 = a1[1];
    v4 = a1[2];

    a2[1] = v3;
    a2[2] = v4;
  }

  else
  {
    *(a2 + 1) = *(a1 + 1);
  }

  memcpy(a2 + 3, a1 + 3, 0x29uLL);
  return a2;
}

void *sub_214B7E9F4(void *a1)
{
  if (*a1)
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FF0, &qword_214CF0A68) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FF8, &qword_214CF0A70);
  (*(*(v1 - 8) + 8))(v3);
  return a1;
}

uint64_t sub_214B7EAA8(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v9 = *a1;
    v10 = a1[1];

    *a2 = v9;
    *(a2 + 8) = v10;
  }

  else
  {
    *a2 = *a1;
  }

  *(a2 + 16) = *(a1 + 16);
  v6 = a1[3];

  *(a2 + 24) = v6;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FF0, &qword_214CF0A68);
  v8 = a2 + *(v2 + 48);
  v7 = a1 + *(v2 + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FF8, &qword_214CF0A70);
  (*(*(v3 - 8) + 16))(v8, v7);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FC0, &qword_214CF0A50);
  memcpy((a2 + *(v4 + 36)), a1 + *(v4 + 36), 0x29uLL);
  return a2;
}

unint64_t sub_214B7EC0C()
{
  v2 = qword_27CA36008;
  if (!qword_27CA36008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36000, &qword_214CF0A78);
    sub_214B7ECA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7ECA4()
{
  v2 = qword_27CA36010;
  if (!qword_27CA36010)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7ED1C()
{
  v2 = qword_27CA36018;
  if (!qword_27CA36018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35FF8, &qword_214CF0A70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36018);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B7EDA4(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *a1;
    v5 = a1[1];

    *a2 = v4;
    *(a2 + 8) = v5;
  }

  else
  {
    *a2 = *a1;
  }

  *(a2 + 16) = *(a1 + 16);
  v3 = a1[3];

  result = a2;
  *(a2 + 24) = v3;
  return result;
}

unint64_t sub_214B7EE40()
{
  v2 = qword_27CA36020;
  if (!qword_27CA36020)
  {
    sub_214CCE734();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7EEC8()
{
  v2 = qword_27CA36030;
  if (!qword_27CA36030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36028, &unk_214CF0A80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7EF50()
{
  v2 = qword_27CA36038;
  if (!qword_27CA36038)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36038);
    return WitnessTable;
  }

  return v2;
}

uint64_t static FeedbackListViewModel.State.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v5 = *a1;
  v4 = *a2;
  sub_214B6C308(*a1);
  sub_214B6C308(v4);
  switch(v5)
  {
    case 0uLL:
      if (!v4)
      {
        sub_214B6C398(0);
        sub_214B6C398(0);
        v3 = 1;
        return v3 & 1;
      }

LABEL_15:
      sub_214B6C398(v5);
      sub_214B6C398(v4);
      v3 = 0;
      return v3 & 1;
    case 1uLL:
      if (v4 == 1)
      {
        sub_214B6C398(1uLL);
        sub_214B6C398(1uLL);
        v3 = 1;
        return v3 & 1;
      }

      goto LABEL_15;
    case 2uLL:
      if (v4 == 2)
      {
        sub_214B6C398(2uLL);
        sub_214B6C398(2uLL);
        v3 = 1;
        return v3 & 1;
      }

      goto LABEL_15;
  }

  if (v4 <= 2)
  {
    goto LABEL_15;
  }

  sub_214B72200();
  if (sub_214CCF8E4())
  {

    sub_214B6C398(v5);
    sub_214B6C398(v4);
    v3 = 1;
  }

  else
  {

    sub_214B6C398(v5);
    sub_214B6C398(v4);
    v3 = 0;
  }

  return v3 & 1;
}

double FeedbackListViewModel.state.getter@<D0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  v4 = (v2 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__state);
  swift_beginAccess();
  sub_214B82E14(v4, a1);
  swift_endAccess();
  return result;
}

Swift::Void __swiftcall FeedbackListViewModel.cancel()()
{
  v6 = v0;
  v5 = FeedbackListViewModel.diagnosticsHelperToken.getter();
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_getObjectType();
    [v5 cancel];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
  }

  v4[0] = FeedbackListViewModel.cancellationHandler.getter();
  v4[1] = v1;
  if (v4[0])
  {
    v3 = v4[0];

    v2 = sub_214B86488(v4);
    v3(v2);
  }

  else
  {
    sub_214B86488(v4);
  }
}

uint64_t FeedbackListViewModel.markItem(_:as:as:)(__int128 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v44 = v58;
  v45 = a1;
  v74 = 0;
  v73 = 0;
  v72[1] = 0;
  v72[0] = 0;
  v46 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  v75[0] = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v76 = *(a1 + 8);
  v75[3] = v5;
  v75[2] = v4;
  v75[1] = v3;
  v77 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v81 = *(a1 + 8);
  v80 = v8;
  v79 = v7;
  v78 = v6;
  v47 = *a2;
  v74 = v47;
  v48 = *a3;
  v73 = v48;
  FeedbackListViewModel.state.getter(&v71);
  v49 = v71;
  v70 = v71;
  v50 = sub_214B8245C();
  if (v50)
  {
    v43 = v50;
    v9 = v46;
    v36 = v50;

    v72[0] = v50;
    sub_214B6C398(v49);
    v68[0] = v50;
    v37 = v75;
    sub_214B70DF0(v75, &v67);
    v38 = &v30;
    MEMORY[0x28223BE20](&v30);
    v40 = v29;
    v29[2] = v10;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36028, &unk_214CF0A80);
    v39 = v41;
    sub_214B892D0();
    sub_214CCFA54();
    v42 = v9;
    sub_214B70ECC(v75);
    sub_214A62278(v68);
    v35 = v68[1];
    if (v69)
    {
      sub_214A62278(v72);
    }

    else
    {
      v34 = v35;
      v30 = v35;
      v63 = v35;
      sub_214B70DF0(v75, &v59);
      v11 = v47;
      v12 = v48;
      v13 = v44;
      v44[9] = v44[33];
      v14 = v13[34];
      v15 = v13[35];
      v16 = v13[36];
      v62 = v76;
      v13[12] = v16;
      v13[11] = v15;
      v13[10] = v14;
      BYTE8(v61) = v11;
      BYTE9(v61) = v12;
      v32 = v72;
      sub_214CCF8A4();
      v17 = v44;
      v44[14] = *v44;
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      v64[8] = v58[8];
      v17[17] = v20;
      v17[16] = v19;
      v17[15] = v18;
      sub_214B70ECC(v64);
      v21 = v44;
      v44[19] = v44[9];
      v22 = v21[10];
      v23 = v21[11];
      v24 = v21[12];
      v66 = v62;
      v21[22] = v24;
      v21[21] = v23;
      v21[20] = v22;
      sub_214B70DF0(v65, &v57);
      v52 = v44[19];
      v25 = v44[20];
      v26 = v44[21];
      v27 = v44[22];
      v56 = v66;
      v55 = v27;
      v54 = v26;
      v53 = v25;
      sub_214CCF894();
      v31 = v72[0];

      v51 = v31;
      sub_214B82A34(&v51);
      sub_214B8366C(1);
      sub_214B70ECC(v60);
      sub_214A62278(v32);
    }

    return v42;
  }

  else
  {
    sub_214B6C398(v49);
    return v46;
  }
}

Swift::Void __swiftcall FeedbackListViewModel.fetchContent()()
{
  v13 = &unk_214CF0AD0;
  v15 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v12 = &v8 - v9;
  v15 = v0;
  v11 = 0;
  v14 = 0;
  sub_214B82A34(&v14);
  v2 = v10;
  v3 = sub_214CCF994();
  (*(*(v3 - 8) + 56))(v12, 1);
  MEMORY[0x277D82BE0](v2);
  v4 = swift_allocObject();
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  sub_214B88C30(v5, v5, v6, v7, v4, MEMORY[0x277D84F78] + 8);
}

Swift::Void __swiftcall FeedbackListViewModel.donate()()
{
  (MEMORY[0x28223BE20])();
  v467 = v0;
  v468 = sub_214B88150;
  v469 = sub_214B89580;
  v470 = sub_214B8A614;
  v471 = sub_214B89588;
  v472 = sub_214A7E854;
  v473 = sub_214B89590;
  v474 = sub_214A7E854;
  v475 = sub_214B21C04;
  v476 = sub_214A7E854;
  v477 = sub_214B89598;
  v478 = sub_214A7E854;
  v479 = sub_214A662DC;
  v480 = sub_214A662DC;
  v481 = sub_214A663CC;
  v482 = sub_214A662DC;
  v483 = sub_214A662DC;
  v484 = sub_214A7E40C;
  v485 = sub_214A662DC;
  v486 = sub_214A662DC;
  v487 = sub_214A7E40C;
  v488 = sub_214A662DC;
  v489 = sub_214A662DC;
  v490 = sub_214A7E40C;
  v491 = sub_214A662DC;
  v492 = sub_214A662DC;
  v493 = sub_214A7E40C;
  v494 = sub_214B884F8;
  v495 = sub_214B6829C;
  v560 = 0;
  v559 = 0;
  v558 = 0;
  v496 = 0;
  v556[0] = 0;
  v555[0] = 0;
  v555[1] = 0;
  v544 = 0;
  v541 = 0;
  v537 = 0;
  v536 = 0;
  v530 = 0;
  v531 = 0;
  v529 = 0;
  v517 = 0;
  v509 = 0;
  v497 = sub_214CCD154();
  v498 = *(v497 - 8);
  v499 = v497 - 8;
  v500 = (*(v498 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v501 = &v79 - v500;
  v502 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v503 = &v79 - v502;
  v560 = &v79 - v502;
  v504 = sub_214CCDA74();
  v505 = *(v504 - 8);
  v506 = v504 - 8;
  v507 = (*(v505 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v509);
  v508 = &v79 - v507;
  v510 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v509);
  v511 = &v79 - v510;
  v3 = sub_214CCF534();
  v512 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v513 = &v79 - v512;
  v559 = v0;
  FeedbackListViewModel.state.getter(&v557);
  v514 = v557;
  v556[2] = v557;
  v515 = sub_214B8245C();
  if (!v515)
  {
    sub_214B6C398(v514);
    v79 = 0;
    v80 = 0;
LABEL_39:
    sub_214A6B584(v79, v80);
    return;
  }

  v466 = v515;
  v4 = v496;
  v462 = v515;

  v558 = v462;
  sub_214B6C398(v514);
  v461 = FeedbackListViewModel.diagnosticsHelper.getter();
  [v461 setSource_];
  MEMORY[0x277D82BD8](v461);
  v556[1] = v462;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36028, &unk_214CF0A80);
  sub_214B89430();
  v5 = sub_214CD0154();
  v464 = v4;
  v465 = v5;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v459 = v465;

    v558 = v459;

    v457 = 0;
    v458 = sub_214B894B8();
    v556[0] = sub_214CD03C4();
    __dst[9] = v459;
    sub_214B892D0();
    sub_214CCFAC4();
    for (i = v464; ; i = v103)
    {
      v453 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36090, &qword_214CF0AD8);
      v454 = &v552;
      sub_214CD01B4();
      v455 = v553;
      v456 = 72;
      memcpy(v553, v454, sizeof(v553));
      memcpy(__dst, v553, 0x48uLL);
      if (!__dst[0])
      {
        break;
      }

      memcpy(__src, __dst, sizeof(__src));
      v452 = __dst[8];
      MEMORY[0x277D82BE0](__dst[8]);
      if (v452)
      {
        v451 = v452;
        v450 = v452;
        v541 = v452;
        *&v6 = MEMORY[0x277D82BE0](v452).n128_u64[0];
        v540 = [v450 category];
        if (v540)
        {
          v445 = &v540;
          v446 = v540;
          MEMORY[0x277D82BE0](v540);
          sub_214A671E8(v445);
          *&v7 = MEMORY[0x277D82BD8](v450).n128_u64[0];
          v447 = [v446 subtype];
          MEMORY[0x277D82BD8](v446);
          v448 = v447;
          v449 = 0;
        }

        else
        {
          sub_214A671E8(&v540);
          MEMORY[0x277D82BD8](v450);
          v448 = 0;
          v449 = 1;
        }

        v538 = v448;
        v539 = v449 & 1;
        if (v449)
        {
          v444 = 0;
        }

        else
        {
          v444 = v538;
        }

        v441 = v444;
        v537 = v444;
        v8 = swift_allocObject();
        v9 = v450;
        v442 = v8;
        v443 = v8 + 16;
        v536 = v8 + 16;
        *(v8 + 16) = 2;
        *&v10 = MEMORY[0x277D82BE0](v9).n128_u64[0];
        v535 = [v450 category];
        if (v535)
        {
          v437 = &v535;
          v438 = v535;
          MEMORY[0x277D82BE0](v535);
          sub_214A671E8(v437);
          *&v11 = MEMORY[0x277D82BD8](v450).n128_u64[0];
          v439 = [v438 isHighImpact];
          MEMORY[0x277D82BD8](v438);
          v440 = v439;
        }

        else
        {
          sub_214A671E8(&v535);
          MEMORY[0x277D82BD8](v450);
          v440 = 2;
        }

        v436 = v440;
        if (v440 != 2)
        {
          v435 = v436;
          v517 = v436 & 1;
          v434 = (v436 & 1) == 0;
          v432 = v434;
          v433 = &v516;
          swift_beginAccess();
          *(v442 + 16) = v432;
          swift_endAccess();
        }

        v431 = &v534;
        v534 = __dst[7];
        v430 = &v533;
        v533 = 8;
        sub_214B6B8CC();
        if (sub_214CD03F4())
        {
          v425 = 1;
          sub_214CCF614("Unknown", 7, 1);
          sub_214CCF4C4();
          v426 = sub_214CCF614("Localizable-BlackPearl", 22, v425 & 1);
          v427 = v12;
          sub_214B1CFBC();
          v518 = 0;
          v519 = 0;
          v520 = 0;
          v521 = v425 & 1;
          v428 = sub_214CCF5A4();
        }

        else
        {
          v532 = __dst[7];
          v428 = FeedbackCategory.localizedTitle.getter();
        }

        v429 = v13;
        v421 = v13;
        v422 = v428;
        v530 = v428;
        v531 = v13;
        *&v14 = MEMORY[0x277D82BE0](v450).n128_u64[0];
        v423 = [v450 displayMessageObjectID];
        MEMORY[0x277D82BD8](v450);
        objc_opt_self();
        v424 = swift_dynamicCastObjCClass();
        if (v424)
        {
          v420 = v424;
        }

        else
        {
          MEMORY[0x277D82BD8](v423);
          v420 = 0;
        }

        v419 = v420;
        if (v420)
        {
          v418 = v419;
          v382 = v419;
          v529 = v419;
          MEMORY[0x277D82BE0](v419);
          v381 = &v528;
          v528 = v382;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA360A8, &qword_214CF0AE0);
          sub_214CCF884();
          v15 = v508;
          v16 = sub_214B8273C();
          (*(v505 + 16))(v15, v16, v504);
          MEMORY[0x277D82BE0](v382);
          v383 = 24;
          v395 = 7;
          v384 = swift_allocObject();
          *(v384 + 16) = v382;
          v386 = swift_allocObject();
          *(v386 + 16) = v441;

          v394 = 32;
          v17 = swift_allocObject();
          v18 = v421;
          v389 = v17;
          *(v17 + 16) = v422;
          *(v17 + 24) = v18;
          sub_214B70DF0(__dst, &v527);
          v396 = swift_allocObject();
          memcpy((v396 + 16), __src, 0x48uLL);
          v416 = sub_214CCDA54();
          v417 = sub_214CCFBB4();
          v392 = 17;
          v398 = swift_allocObject();
          *(v398 + 16) = 0;
          v399 = swift_allocObject();
          v393 = 8;
          *(v399 + 16) = 8;
          v19 = swift_allocObject();
          v20 = v384;
          v385 = v19;
          *(v19 + 16) = v469;
          *(v19 + 24) = v20;
          v21 = swift_allocObject();
          v22 = v385;
          v400 = v21;
          *(v21 + 16) = v470;
          *(v21 + 24) = v22;
          v401 = swift_allocObject();
          v391 = 32;
          *(v401 + 16) = 32;
          v402 = swift_allocObject();
          *(v402 + 16) = v393;
          v23 = swift_allocObject();
          v24 = v386;
          v387 = v23;
          *(v23 + 16) = v471;
          *(v23 + 24) = v24;
          v25 = swift_allocObject();
          v26 = v387;
          v403 = v25;
          *(v25 + 16) = v472;
          *(v25 + 24) = v26;
          v404 = swift_allocObject();
          *(v404 + 16) = v391;
          v405 = swift_allocObject();
          *(v405 + 16) = v393;
          v27 = swift_allocObject();
          v28 = v442;
          v388 = v27;
          *(v27 + 16) = v473;
          *(v27 + 24) = v28;
          v29 = swift_allocObject();
          v30 = v388;
          v406 = v29;
          *(v29 + 16) = v474;
          *(v29 + 24) = v30;
          v407 = swift_allocObject();
          *(v407 + 16) = v391;
          v408 = swift_allocObject();
          *(v408 + 16) = v393;
          v31 = swift_allocObject();
          v32 = v389;
          v390 = v31;
          *(v31 + 16) = v475;
          *(v31 + 24) = v32;
          v33 = swift_allocObject();
          v34 = v390;
          v409 = v33;
          *(v33 + 16) = v476;
          *(v33 + 24) = v34;
          v410 = swift_allocObject();
          *(v410 + 16) = v391;
          v411 = swift_allocObject();
          *(v411 + 16) = v393;
          v35 = swift_allocObject();
          v36 = v396;
          v397 = v35;
          *(v35 + 16) = v477;
          *(v35 + 24) = v36;
          v37 = swift_allocObject();
          v38 = v397;
          v413 = v37;
          *(v37 + 16) = v478;
          *(v37 + 24) = v38;
          v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
          v412 = sub_214CD03C4();
          v414 = v39;

          v40 = v398;
          v41 = v414;
          *v414 = v479;
          v41[1] = v40;

          v42 = v399;
          v43 = v414;
          v414[2] = v480;
          v43[3] = v42;

          v44 = v400;
          v45 = v414;
          v414[4] = v481;
          v45[5] = v44;

          v46 = v401;
          v47 = v414;
          v414[6] = v482;
          v47[7] = v46;

          v48 = v402;
          v49 = v414;
          v414[8] = v483;
          v49[9] = v48;

          v50 = v403;
          v51 = v414;
          v414[10] = v484;
          v51[11] = v50;

          v52 = v404;
          v53 = v414;
          v414[12] = v485;
          v53[13] = v52;

          v54 = v405;
          v55 = v414;
          v414[14] = v486;
          v55[15] = v54;

          v56 = v406;
          v57 = v414;
          v414[16] = v487;
          v57[17] = v56;

          v58 = v407;
          v59 = v414;
          v414[18] = v488;
          v59[19] = v58;

          v60 = v408;
          v61 = v414;
          v414[20] = v489;
          v61[21] = v60;

          v62 = v409;
          v63 = v414;
          v414[22] = v490;
          v63[23] = v62;

          v64 = v410;
          v65 = v414;
          v414[24] = v491;
          v65[25] = v64;

          v66 = v411;
          v67 = v414;
          v414[26] = v492;
          v67[27] = v66;

          v68 = v413;
          v69 = v414;
          v414[28] = v493;
          v69[29] = v68;
          sub_214A63280();

          if (os_log_type_enabled(v416, v417))
          {
            v70 = v453;
            v359 = sub_214CCFF24();
            v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
            v360 = sub_214A632C4(0, v358, v358);
            v361 = sub_214A632C4(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v362 = &v526;
            v526 = v359;
            v363 = &v525;
            v525 = v360;
            v364 = &v524;
            v524 = v361;
            sub_214A6627C(2, &v526);
            sub_214A6627C(5, v362);
            v522 = v479;
            v523 = v398;
            sub_214A66290(&v522, v362, v363, v364);
            v365 = v70;
            v366 = v398;
            v367 = v399;
            v368 = v400;
            v369 = v401;
            v370 = v402;
            v371 = v403;
            v372 = v404;
            v373 = v405;
            v374 = v406;
            v375 = v407;
            v376 = v408;
            v377 = v409;
            v378 = v410;
            v379 = v411;
            v380 = v413;
            if (v70)
            {
              v342 = v366;
              v343 = v367;
              v344 = v368;
              v345 = v369;
              v346 = v370;
              v347 = v371;
              v348 = v372;
              v349 = v373;
              v350 = v374;
              v351 = v375;
              v352 = v376;
              v353 = v377;
              v354 = v378;
              v355 = v379;
              v356 = v380;
              v117 = v380;
              v116 = v379;
              v115 = v378;
              v114 = v377;
              v113 = v376;
              v112 = v375;
              v111 = v374;
              v110 = v373;
              v109 = v372;
              v108 = v371;
              v107 = v370;
              v106 = v369;
              v105 = v368;
              v104 = v367;

              __break(1u);
            }

            else
            {
              v522 = v480;
              v523 = v399;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v326 = 0;
              v327 = v398;
              v328 = v399;
              v329 = v400;
              v330 = v401;
              v331 = v402;
              v332 = v403;
              v333 = v404;
              v334 = v405;
              v335 = v406;
              v336 = v407;
              v337 = v408;
              v338 = v409;
              v339 = v410;
              v340 = v411;
              v341 = v413;
              v522 = v481;
              v523 = v400;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v310 = 0;
              v311 = v398;
              v312 = v399;
              v313 = v400;
              v314 = v401;
              v315 = v402;
              v316 = v403;
              v317 = v404;
              v318 = v405;
              v319 = v406;
              v320 = v407;
              v321 = v408;
              v322 = v409;
              v323 = v410;
              v324 = v411;
              v325 = v413;
              v522 = v482;
              v523 = v401;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v294 = 0;
              v295 = v398;
              v296 = v399;
              v297 = v400;
              v298 = v401;
              v299 = v402;
              v300 = v403;
              v301 = v404;
              v302 = v405;
              v303 = v406;
              v304 = v407;
              v305 = v408;
              v306 = v409;
              v307 = v410;
              v308 = v411;
              v309 = v413;
              v522 = v483;
              v523 = v402;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v278 = 0;
              v279 = v398;
              v280 = v399;
              v281 = v400;
              v282 = v401;
              v283 = v402;
              v284 = v403;
              v285 = v404;
              v286 = v405;
              v287 = v406;
              v288 = v407;
              v289 = v408;
              v290 = v409;
              v291 = v410;
              v292 = v411;
              v293 = v413;
              v522 = v484;
              v523 = v403;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v262 = 0;
              v263 = v398;
              v264 = v399;
              v265 = v400;
              v266 = v401;
              v267 = v402;
              v268 = v403;
              v269 = v404;
              v270 = v405;
              v271 = v406;
              v272 = v407;
              v273 = v408;
              v274 = v409;
              v275 = v410;
              v276 = v411;
              v277 = v413;
              v522 = v485;
              v523 = v404;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v246 = 0;
              v247 = v398;
              v248 = v399;
              v249 = v400;
              v250 = v401;
              v251 = v402;
              v252 = v403;
              v253 = v404;
              v254 = v405;
              v255 = v406;
              v256 = v407;
              v257 = v408;
              v258 = v409;
              v259 = v410;
              v260 = v411;
              v261 = v413;
              v522 = v486;
              v523 = v405;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v230 = 0;
              v231 = v398;
              v232 = v399;
              v233 = v400;
              v234 = v401;
              v235 = v402;
              v236 = v403;
              v237 = v404;
              v238 = v405;
              v239 = v406;
              v240 = v407;
              v241 = v408;
              v242 = v409;
              v243 = v410;
              v244 = v411;
              v245 = v413;
              v522 = v487;
              v523 = v406;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v214 = 0;
              v215 = v398;
              v216 = v399;
              v217 = v400;
              v218 = v401;
              v219 = v402;
              v220 = v403;
              v221 = v404;
              v222 = v405;
              v223 = v406;
              v224 = v407;
              v225 = v408;
              v226 = v409;
              v227 = v410;
              v228 = v411;
              v229 = v413;
              v522 = v488;
              v523 = v407;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v198 = 0;
              v199 = v398;
              v200 = v399;
              v201 = v400;
              v202 = v401;
              v203 = v402;
              v204 = v403;
              v205 = v404;
              v206 = v405;
              v207 = v406;
              v208 = v407;
              v209 = v408;
              v210 = v409;
              v211 = v410;
              v212 = v411;
              v213 = v413;
              v522 = v489;
              v523 = v408;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v182 = 0;
              v183 = v398;
              v184 = v399;
              v185 = v400;
              v186 = v401;
              v187 = v402;
              v188 = v403;
              v189 = v404;
              v190 = v405;
              v191 = v406;
              v192 = v407;
              v193 = v408;
              v194 = v409;
              v195 = v410;
              v196 = v411;
              v197 = v413;
              v522 = v490;
              v523 = v409;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v166 = 0;
              v167 = v398;
              v168 = v399;
              v169 = v400;
              v170 = v401;
              v171 = v402;
              v172 = v403;
              v173 = v404;
              v174 = v405;
              v175 = v406;
              v176 = v407;
              v177 = v408;
              v178 = v409;
              v179 = v410;
              v180 = v411;
              v181 = v413;
              v522 = v491;
              v523 = v410;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v150 = 0;
              v151 = v398;
              v152 = v399;
              v153 = v400;
              v154 = v401;
              v155 = v402;
              v156 = v403;
              v157 = v404;
              v158 = v405;
              v159 = v406;
              v160 = v407;
              v161 = v408;
              v162 = v409;
              v163 = v410;
              v164 = v411;
              v165 = v413;
              v522 = v492;
              v523 = v411;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v134 = 0;
              v135 = v398;
              v136 = v399;
              v137 = v400;
              v138 = v401;
              v139 = v402;
              v140 = v403;
              v141 = v404;
              v142 = v405;
              v143 = v406;
              v144 = v407;
              v145 = v408;
              v146 = v409;
              v147 = v410;
              v148 = v411;
              v149 = v413;
              v522 = v493;
              v523 = v413;
              sub_214A66290(&v522, &v526, &v525, &v524);
              v118 = 0;
              v119 = v398;
              v120 = v399;
              v121 = v400;
              v122 = v401;
              v123 = v402;
              v124 = v403;
              v125 = v404;
              v126 = v405;
              v127 = v406;
              v128 = v407;
              v129 = v408;
              v130 = v409;
              v131 = v410;
              v132 = v411;
              v133 = v413;
              _os_log_impl(&dword_214A5E000, v416, v417, "Recategorization metadata for message feedback ID:%lld Predicted_Category:%s High_Impact:%s Feedback_Category:%s High_Impact_Feedback:%s", v359, 0x34u);
              sub_214A669DC(v360, 0, v358);
              sub_214A669DC(v361, 4, MEMORY[0x277D84F70] + 8);
              sub_214CCFF04();

              v357 = v118;
            }
          }

          else
          {
            v71 = v453;

            v357 = v71;
          }

          v102 = v357;
          v72 = MEMORY[0x277D82BD8](v416);
          (*(v505 + 8))(v508, v504, v72);
          MEMORY[0x277D82BD8](v382);

          MEMORY[0x277D82BD8](v450);
          sub_214B70ECC(__dst);
          v103 = v102;
        }

        else
        {

          MEMORY[0x277D82BD8](v450);
          sub_214B70ECC(__dst);
          v103 = v453;
        }
      }

      else
      {
        sub_214B70ECC(__dst);
        v103 = v453;
      }
    }

    sub_214A62278(v555);
    v97 = objc_opt_self();
    v73 = swift_allocObject();
    v96 = v73;
    *(v73 + 16) = v494;
    *(v73 + 24) = 0;

    v550 = v495;
    v551 = v96;
    v545 = MEMORY[0x277D85DD0];
    v546 = 1107296256;
    v547 = 0;
    v548 = sub_214B88634;
    v549 = &block_descriptor_7;
    v100 = v96;
    v98 = _Block_copy(&v545);

    v99 = [v97 radarURLWithBuilder_];
    _Block_release(v98);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_214CCD124();
      (*(v498 + 32))(v503, v501, v497);
      MEMORY[0x277D82BD8](v99);
      v86 = 0;
      sub_214B8951C();
      v85 = "";
      v84 = 1;
      v90 = sub_214CCF614("", v86, 1);
      v87 = v74;
      v88 = sub_214CCF614(v85, v86, v84 & 1);
      v89 = v75;
      (*(v498 + 16))(v501, v503, v497);
      v91 = sub_214B8869C(v90, v87, v88, v89, v501);
      v544 = v91;
      [v91 openTapToRadar];
      v92 = sub_214B871D4();
      v95 = [v92 messageRepository];
      MEMORY[0x277D82BD8](v92);
      v93 = v556[0];

      v94 = sub_214CCF7D4();

      [v95 logCategoryMetadataForObjectIDs_];
      MEMORY[0x277D82BD8](v94);
      MEMORY[0x277D82BD8](v95);
      v542 = FeedbackListViewModel.cancellationHandler.getter();
      v543 = v76;
      if (v542)
      {
        v81 = &v542;
        v82 = v542;
        v83 = v543;

        v77 = sub_214B86488(v81);
        v82(v77);
      }

      else
      {
        sub_214B86488(&v542);
      }

      v78 = MEMORY[0x277D82BD8](v91);
      (*(v498 + 8))(v503, v497, v78);
      sub_214A62278(v556);
      sub_214A62278(&v558);
      v79 = 0;
      v80 = 0;
      goto LABEL_39;
    }
  }

  __break(1u);
}

uint64_t FeedbackListViewModel.canDonate.getter()
{
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__canDonate);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_214B8245C()
{
  v3 = *v0;
  if (*v0 <= 2)
  {
    return 0;
  }

  return v3;
}

uint64_t FeedbackListViewModel.State.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*v1 || v3 == 1 || v3 == 2)
  {
    return sub_214CD0554();
  }

  sub_214CD0554();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36028, &unk_214CF0A80);
  sub_214B8A698();
  sub_214CD0554();
}

uint64_t sub_214B826D4()
{
  v2 = sub_214CCDA74();
  __swift_allocate_value_buffer(v2, qword_27CA36040);
  __swift_project_value_buffer(v2, qword_27CA36040);
  v0 = type metadata accessor for FeedbackListViewModel(0);
  return static Logger.mailUILogger<A>(for:)(v0, v0);
}

uint64_t sub_214B8273C()
{
  if (qword_27CA33FF8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA36040);
}

uint64_t sub_214B827A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214B8273C();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void sub_214B8284C(unint64_t *a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__state);
  swift_beginAccess();
  v4 = *v2;
  sub_214B6C308(*v2);
  swift_endAccess();
  *a1 = v4;
}

unint64_t sub_214B828C0(unint64_t *a1)
{
  v5 = *a1;
  sub_214B6C308(*a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__state);
  swift_beginAccess();
  v2 = *v4;
  *v4 = v5;
  sub_214B6C398(v2);
  swift_endAccess();
  return sub_214B6C398(v5);
}

double sub_214B82944@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5[1] = v3;
  FeedbackListViewModel.state.getter(v5);
  *a2 = v5[0];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B829B4(void *a1, unint64_t *a2)
{
  sub_214B82E14(a1, &v7);
  v5 = v7;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  v6[1] = v4;
  v6[0] = v5;
  sub_214B82A34(v6);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

unint64_t sub_214B82A34(unint64_t *a1)
{
  v32 = 0;
  v31 = 0;
  v19 = 0;
  v24 = *a1;
  v20 = v24;
  v32 = v24;
  v21 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__state);
  v22 = &v30;
  swift_beginAccess();
  v23 = *v21;
  sub_214B6C308(v23);
  swift_endAccess();
  v29 = v23;
  v28 = v24;
  sub_214B8A820();
  v25 = &v29;
  v26 = sub_214B14920(&v29, &v28);
  sub_214B6E408(&v29);
  if (v26)
  {
    v2 = v18;
    v3 = v19;
    KeyPath = swift_getKeyPath();
    v14 = KeyPath;
    v4 = v18;
    sub_214B6C308(v20);
    v16 = &v10;
    MEMORY[0x28223BE20](KeyPath);
    v9[2] = v2;
    v9[3] = v5;
    sub_214B82F14(v6, sub_214B8A89C, v9, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v17 = v3;

    sub_214B6C398(v20);

    v13 = v17;
  }

  else
  {
    sub_214B6C308(v20);
    v11 = &v18[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__state];
    v12 = &v27;
    swift_beginAccess();
    v7 = *v11;
    *v11 = v20;
    sub_214B6C398(v7);
    swift_endAccess();
    v13 = v19;
  }

  return sub_214B6C398(v20);
}

unint64_t sub_214B82C60@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_214B6C308(*a1);
  *a2 = v4;
  return sub_214B6C398(v4);
}

uint64_t sub_214B82CA4(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_214CCD464();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = MEMORY[0x28223BE20](v7);
  v11 = &v5 - v2;
  v16 = v3;
  v15 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_214B8A8C8();
  sub_214CCD424();
  return (*(v9 + 8))(v11, v12);
}

void *sub_214B82E14(void *a1, void *a2)
{
  if (*a1 <= 2uLL)
  {
    *a2 = *a1;
  }

  else
  {
    v3 = *a1;

    *a2 = v3;
  }

  return a2;
}

double sub_214B82E84(uint64_t a1, unint64_t a2)
{
  sub_214B6C308(a2);
  v5 = (a1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__state);
  swift_beginAccess();
  v2 = *v5;
  *v5 = a2;
  sub_214B6C398(v2);
  swift_endAccess();
  return result;
}

uint64_t sub_214B82F14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_214CCD464();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = MEMORY[0x28223BE20](v19);
  v16 = v11 - v6;
  v32 = v7;
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_214B8A8C8();
  v9 = v23;
  sub_214CCD414();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t (*sub_214B8312C(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 59651);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 59651);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_214B832EC;
}

void sub_214B832EC(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_214B83378(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_214B83378(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214B83378(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214B834B4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__canDonate);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

double sub_214B8351C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__canDonate);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return result;
}

double sub_214B83590@<D0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = FeedbackListViewModel.canDonate.getter() & 1;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B83600(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214B8366C(v4 & 1);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void sub_214B8366C(int a1)
{
  v22 = a1;
  v17 = a1;
  v26 = 0;
  v18 = 0;
  v27 = a1;
  v19 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__canDonate);
  v20 = &v25;
  swift_beginAccess();
  v21 = *v19;
  swift_endAccess();
  v24 = v21;
  v23 = v22;
  if (sub_214B14920(&v24, &v23))
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;
    v4 = v16;
    v14 = &v9;
    MEMORY[0x28223BE20](KeyPath);
    v7[2] = v2;
    v8 = v5 & 1;
    sub_214B82F14(v6, sub_214B8A948, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v15 = v3;

    v11 = v15;
  }

  else
  {
    v10 = &v16[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__canDonate];
    swift_beginAccess();
    *v10 = v17 & 1;
    swift_endAccess();
  }
}

double sub_214B83874(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__canDonate);
  swift_beginAccess();
  *v3 = a2;
  swift_endAccess();
  return result;
}

uint64_t (*sub_214B838F0(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 52244);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 52244);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_214B83AB0;
}

void sub_214B83AB0(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_214B83B3C(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_214B83B3C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214B83B3C(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214B83C78()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214B83CE8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelper);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t FeedbackListViewModel.diagnosticsHelper.getter()
{
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelper);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x277D82BE0](*v3);
  swift_endAccess();
  return v4;
}

double sub_214B83E20@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = FeedbackListViewModel.diagnosticsHelper.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B83E8C(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214B83F18(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

void sub_214B83F18(void *a1)
{
  v25 = a1;
  v24 = 0;
  v31 = 0;
  v21 = 0;
  v32 = a1;
  v22 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelper);
  v23 = &v30;
  swift_beginAccess();
  v27 = *v22;
  v2 = v27;
  swift_endAccess();
  v26 = sub_214B8A978();
  sub_214B8A9DC();
  v28 = sub_214B14FDC(v27, v25, v26);

  if (v28)
  {
    v3 = v20;
    v4 = v21;
    KeyPath = swift_getKeyPath();
    v16 = KeyPath;
    v5 = v20;
    v6 = v25;
    v18 = &v12;
    MEMORY[0x28223BE20](KeyPath);
    v11[2] = v3;
    v11[3] = v7;
    sub_214B82F14(v8, sub_214B8AA5C, v11, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v19 = v4;

    v15 = v19;
  }

  else
  {
    v9 = v25;
    v13 = &v20[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelper];
    v14 = &v29;
    swift_beginAccess();
    v10 = *v13;
    *v13 = v25;

    swift_endAccess();
    v15 = v21;
  }
}

double sub_214B8412C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  *a2 = a1;
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214B84184(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  v6 = (a1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelper);
  swift_beginAccess();
  v2 = *v6;
  *v6 = a2;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return result;
}

uint64_t (*sub_214B84228(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 20942);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 20942);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_214B843E8;
}

void sub_214B843E8(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_214B84474(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_214B84474(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214B84474(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214B845B0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelperToken);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_214B84618(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelperToken);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t FeedbackListViewModel.diagnosticsHelperToken.getter()
{
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelperToken);
  swift_beginAccess();
  v4 = *v3;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v4;
}

double sub_214B8472C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = FeedbackListViewModel.diagnosticsHelperToken.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B84798(void *a1, void *a2)
{
  sub_214B5AEEC(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214B84810(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214B84810(uint64_t a1)
{
  v20 = a1;
  v27 = 0;
  v16 = 0;
  v28 = a1;
  v17 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelperToken);
  v18 = &v26;
  swift_beginAccess();
  v19 = *v17;
  swift_unknownObjectRetain();
  swift_endAccess();
  v25 = v19;
  v24 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36118, &qword_214CF0B68);
  v21 = &v25;
  v22 = sub_214B148F0();
  sub_214A759F4();
  if (v22)
  {
    v2 = v15;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;
    v4 = v15;
    swift_unknownObjectRetain();
    v13 = v9;
    MEMORY[0x28223BE20](KeyPath);
    v8[2] = v2;
    v8[3] = v5;
    sub_214B82F14(v6, sub_214B8AA88, v8, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v14 = v3;

    swift_unknownObjectRelease();

    v10 = v14;
  }

  else
  {
    swift_unknownObjectRetain();
    v9[0] = &v15[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelperToken];
    v9[1] = &v23;
    swift_beginAccess();
    *v9[0] = v20;
    swift_unknownObjectRelease();
    swift_endAccess();
    v10 = v16;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_214B84A38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_unknownObjectRetain();
  *a2 = a1;
  return swift_unknownObjectRelease();
}

double sub_214B84A78(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = (a1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelperToken);
  swift_beginAccess();
  *v4 = a2;
  swift_unknownObjectRelease();
  swift_endAccess();
  return result;
}

uint64_t (*sub_214B84B08(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 10939);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 10939);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_214B84CC8;
}

void sub_214B84CC8(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_214B84D54(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_214B84D54(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214B84D54(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214B84E90()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedBucket);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_214B84EF4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedBucket);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return result;
}

uint64_t FeedbackListViewModel.selectedBucket.getter()
{
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedBucket);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4;
}

double sub_214B84FF0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = FeedbackListViewModel.selectedBucket.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B8505C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214B850C4(v4);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void sub_214B850C4(uint64_t a1)
{
  v17 = a1;
  v18 = 0;
  v23 = 0;
  v13 = 0;
  v24 = a1;
  v14 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedBucket);
  v15 = &v22;
  swift_beginAccess();
  v16 = *v14;
  swift_endAccess();
  v21 = v16;
  v20 = v17;
  v19 = type metadata accessor for MUIBucket(0);
  sub_214A693C4();
  if (sub_214B14920(&v21, &v20))
  {
    v2 = v12;
    v3 = v13;
    KeyPath = swift_getKeyPath();
    v8[3] = KeyPath;
    v4 = v12;
    v10 = v8;
    MEMORY[0x28223BE20](KeyPath);
    v7[2] = v2;
    v7[3] = v5;
    sub_214B82F14(v6, sub_214B8AAB4, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v11 = v3;

    v8[2] = v11;
  }

  else
  {
    v8[0] = &v12[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedBucket];
    swift_beginAccess();
    *v8[0] = v17;
    swift_endAccess();
  }
}

double sub_214B852BC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedBucket);
  swift_beginAccess();
  *v3 = a2;
  swift_endAccess();
  return result;
}

uint64_t (*sub_214B85330(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 35339);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 35339);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_214B854F0;
}

void sub_214B854F0(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_214B8557C(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_214B8557C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214B8557C(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214B856B8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214B85720(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t FeedbackListViewModel.selectedMailboxes.getter()
{
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes);
  swift_beginAccess();
  v4 = *v3;

  swift_endAccess();
  return v4;
}

double sub_214B85834@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = FeedbackListViewModel.selectedMailboxes.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B858A0(void *a1, void *a2)
{
  sub_214B1C04C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214B85918(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214B85918(uint64_t a1)
{
  v22 = a1;
  v30 = 0;
  v18 = 0;
  v31 = a1;
  v19 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes);
  v20 = &v29;
  swift_beginAccess();
  v21 = *v19;

  swift_endAccess();
  v28 = v21;
  v27 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36138, &unk_214CF0BC0);
  sub_214B8AAE0();
  v24 = &v28;
  v25 = sub_214B14920(&v28, &v27);
  sub_214A62278(&v28);
  if (v25)
  {
    v2 = v17;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v13 = KeyPath;
    v4 = v17;

    v15 = &v9;
    MEMORY[0x28223BE20](KeyPath);
    v8[2] = v2;
    v8[3] = v5;
    sub_214B82F14(v6, sub_214B8AC10, v8, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v16 = v3;

    v12 = v16;
  }

  else
  {

    v10 = &v17[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes];
    v11 = &v26;
    swift_beginAccess();
    *v10 = v22;

    swift_endAccess();
    v12 = v18;
  }
}

uint64_t sub_214B85B4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

double sub_214B85B8C(uint64_t a1, uint64_t a2)
{

  v4 = (a1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes);
  swift_beginAccess();
  *v4 = a2;

  swift_endAccess();
  return result;
}

uint64_t (*sub_214B85C1C(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 27758);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 27758);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_214B85DDC;
}

void sub_214B85DDC(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_214B85E68(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_214B85E68(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214B85E68(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214B860B8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__cancellationHandler);
  swift_beginAccess();
  v3 = *v2;
  sub_214B5188C(*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_214B86238(uint64_t a1, uint64_t a2)
{
  sub_214B5188C(a1);
  v6 = (v2 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__cancellationHandler);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_214A6B584(v3, v4);
  swift_endAccess();
  return sub_214A6B584(a1, a2);
}

uint64_t FeedbackListViewModel.cancellationHandler.getter()
{
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__cancellationHandler);
  swift_beginAccess();
  v4 = *v3;
  sub_214B5188C(*v3);
  swift_endAccess();
  return v4;
}

void *sub_214B86488(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t FeedbackListViewModel.cancellationHandler.setter(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v43 = a1;
  v53[2] = 0;
  v44 = 0;
  v53[3] = a1;
  v53[4] = a2;
  v45 = (v2 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__cancellationHandler);
  v48 = v52;
  swift_beginAccess();
  v49 = *v45;
  v46 = v49;
  v47 = v45[1];
  sub_214B5188C(v49);
  swift_endAccess();
  if (v49)
  {
    v39 = v46;
    v40 = v47;
    v36 = v47;
    v35 = v46;
    v3 = swift_allocObject();
    v4 = v47;
    *(v3 + 16) = v46;
    *(v3 + 24) = v4;
    v37 = sub_214B14B24;
    v38 = v3;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v53[0] = v37;
  v53[1] = v38;
  sub_214B5188C(v43);
  if (v43)
  {
    v33 = v43;
    v34 = v42;
    v30 = v42;
    v29 = v43;
    v5 = swift_allocObject();
    v6 = v42;
    *(v5 + 16) = v43;
    *(v5 + 24) = v6;
    v31 = sub_214B14B24;
    v32 = v5;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v51[0] = v31;
  v51[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36160, &qword_214CF0C10);
  v27 = v53;
  v26 = v51;
  v28 = sub_214B148F0();
  sub_214B86488(v51);
  sub_214B86488(v53);
  if ((v28 & 1) == 0)
  {
    sub_214B5188C(v43);
    v19 = &v41[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__cancellationHandler];
    v20 = &v50;
    swift_beginAccess();
    v12 = v19;
    v13 = v42;
    v14 = *v19;
    v15 = v19[1];
    *v19 = v43;
    v12[1] = v13;
    sub_214A6B584(v14, v15);
    swift_endAccess();
    v21 = v44;
    return sub_214A6B584(v43, v42);
  }

  v7 = v41;
  v8 = v44;
  KeyPath = swift_getKeyPath();
  v22 = KeyPath;
  v9 = v41;
  sub_214B5188C(v43);
  v24 = &v18;
  MEMORY[0x28223BE20](KeyPath);
  v17[2] = v7;
  v17[3] = v43;
  v17[4] = v10;
  sub_214B82F14(v11, sub_214B8AD0C, v17, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v25 = v8;
  if (!v8)
  {

    sub_214A6B584(v43, v42);

    v21 = v25;
    return sub_214A6B584(v43, v42);
  }

  result = sub_214A6B584(v43, v42);
  __break(1u);
  return result;
}

double sub_214B86A00@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v8 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v9 = FeedbackListViewModel.cancellationHandler.getter();
  v10 = v2;
  if (v9)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v9;
    *(v3 + 24) = v10;
    v5 = sub_214B14B24;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  *&result = MEMORY[0x277D82BD8](v8).n128_u64[0];
  return result;
}

double sub_214B86B14(uint64_t *a1, void *a2)
{
  sub_214B78A8C(a1, v10);
  v8 = v10[0];
  v9 = v10[1];
  if (v10[0])
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v9;
    v5 = sub_214B1C21C;
    v6 = v2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  FeedbackListViewModel.cancellationHandler.setter(v5, v6);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214B86C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_214B5188C(a1);
  *a3 = a1;
  a3[1] = a2;
  return sub_214A6B584(a1, a2);
}

double sub_214B86C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_214B5188C(a2);
  v8 = (a1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__cancellationHandler);
  swift_beginAccess();
  v3 = *v8;
  v4 = v8[1];
  *v8 = a2;
  v8[1] = a3;
  sub_214A6B584(v3, v4);
  swift_endAccess();
  return result;
}

uint64_t (*FeedbackListViewModel.cancellationHandler.modify(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 6017);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 6017);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_214B86F00;
}

void sub_214B86F00(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_214B86F8C(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_214B86F8C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214B86F8C(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214B870C8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__daemonInterface);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214B87138(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__daemonInterface);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B871D4()
{
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__daemonInterface);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x277D82BE0](*v3);
  swift_endAccess();
  return v4;
}

double sub_214B87270@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_214B871D4();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B872DC(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214B87368(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

void sub_214B87368(void *a1)
{
  v25 = a1;
  v24 = 0;
  v31 = 0;
  v21 = 0;
  v32 = a1;
  v22 = (v1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__daemonInterface);
  v23 = &v30;
  swift_beginAccess();
  v27 = *v22;
  v2 = v27;
  swift_endAccess();
  v26 = sub_214B1C288();
  sub_214B8AD3C();
  v28 = sub_214B14FDC(v27, v25, v26);

  if (v28)
  {
    v3 = v20;
    v4 = v21;
    KeyPath = swift_getKeyPath();
    v16 = KeyPath;
    v5 = v20;
    v6 = v25;
    v18 = &v12;
    MEMORY[0x28223BE20](KeyPath);
    v11[2] = v3;
    v11[3] = v7;
    sub_214B82F14(v8, sub_214B8ADBC, v11, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v19 = v4;

    v15 = v19;
  }

  else
  {
    v9 = v25;
    v13 = &v20[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__daemonInterface];
    v14 = &v29;
    swift_beginAccess();
    v10 = *v13;
    *v13 = v25;

    swift_endAccess();
    v15 = v21;
  }
}

double sub_214B8757C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  v6 = (a1 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__daemonInterface);
  swift_beginAccess();
  v2 = *v6;
  *v6 = a2;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return result;
}

uint64_t (*sub_214B87620(void *a1))()
{
  v8 = __swift_coroFrameAllocStub(0x30uLL, 29459);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64), 29459);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_214B82CA4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_214B877E0;
}

void sub_214B877E0(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_214B8786C(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_214B8786C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214B8786C(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214B8A8C8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

char *FeedbackListViewModel.init(messageProvider:diagnosticsHelper:state:daemonInterface:viewModelHelper:)(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v40 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v39 = a1;
  v38 = a2;
  v37 = *a3;
  v18 = v37;
  v36 = a4;
  v35 = a5;
  v40 = v5;
  swift_getObjectType();
  sub_214B84A38(0, &v5[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelperToken]);
  *&v5[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelperToken] = 0;
  swift_getObjectType();
  sub_214B85B4C(0, &v40[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes]);
  *&v40[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes] = 0;
  swift_getObjectType();
  sub_214B86C40(0, 0, &v40[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__cancellationHandler]);
  v6 = &v40[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__cancellationHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_214CCD454();
  v15 = v40;
  sub_214A74CE0(a1, v34);
  sub_214B2C394(v34, &v15[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel_messageProvider]);
  v16 = v40;
  MEMORY[0x277D82BE0](a2);
  swift_getObjectType();
  sub_214B8412C(a2, &v16[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__diagnosticsHelper]);
  v19 = v40;
  sub_214B6C308(v18);
  v33 = v18;
  swift_getObjectType();
  sub_214B82C60(&v33, &v19[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__state]);
  v20 = v40;
  swift_getObjectType();
  sub_214B83854(0, &v20[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__canDonate]);
  v21 = v40;
  MEMORY[0x277D82BE0](a4);
  swift_getObjectType();
  sub_214B8412C(a4, &v21[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__daemonInterface]);
  v24 = v40;
  v23 = (a5 + OBJC_IVAR____TtC6MailUI23FeedbackViewModelHelper_selectedBucket);
  swift_beginAccess();
  v25 = *v23;
  swift_endAccess();
  swift_getObjectType();
  sub_214B852A4(v25, &v24[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedBucket]);
  v27 = v40;
  v28 = (a5 + OBJC_IVAR____TtC6MailUI23FeedbackViewModelHelper_selectedMailboxes);
  swift_beginAccess();
  v29 = *v28;

  swift_endAccess();
  v31 = v29;
  if (v29)
  {
    v32 = v31;
  }

  else
  {
    sub_214A63684();
    v32 = sub_214CD03C4();
  }

  v9 = v32;
  swift_getObjectType();
  v8 = &v27[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes];
  sub_214A62278(&v27[OBJC_IVAR____TtC6MailUI21FeedbackListViewModel__selectedMailboxes]);
  sub_214B85B4C(v9, v8);
  v30.receiver = v40;
  v30.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v30, sel_init);
  MEMORY[0x277D82BE0](v11);
  v40 = v11;
  v10 = [a2 registerDiagnosticFileProvider_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_214B84810(v10);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
  sub_214B6C398(v18);
  MEMORY[0x277D82BD8](a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  MEMORY[0x277D82BD8](v40);
  return v11;
}

char *FeedbackListViewModel.init(daemonInterface:diagnosticsHelper:viewModelHelper:)(void *a1, void *a2, uint64_t a3)
{
  v11 = 0;
  v10[7] = a1;
  v10[6] = a2;
  v10[5] = a3;
  swift_getObjectType();
  v10[3] = type metadata accessor for FeedbackMessageDaemonProvider();
  v10[4] = &protocol witness table for FeedbackMessageDaemonProvider;
  v10[0] = FeedbackMessageDaemonProvider.__allocating_init(messageRepository:)([a1 messageRepository]);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a3);
  sub_214B879A8(&v9);
  v8 = v9;
  v7 = FeedbackListViewModel.__allocating_init(messageProvider:diagnosticsHelper:state:daemonInterface:viewModelHelper:)(v10, a2, &v8, a1, a3);
  MEMORY[0x277D82BE0](v7);
  v11 = v7;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v11);
  return v7;
}

uint64_t sub_214B88150(uint64_t a1)
{
  memset(__b, 0, sizeof(__b));
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v14 = *(a1 + 64);
  __b[0] = *a1;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  __b[5] = v5;
  __b[6] = v6;
  LOBYTE(__b[7]) = v7;
  BYTE1(__b[7]) = v8;
  __b[8] = v14;
  sub_214B6BB38();
  v15 = sub_214CCF4A4();
  swift_unknownObjectRetain();

  MEMORY[0x277D82BE0](v14);
  if (v15)
  {
    v10 = 0;
  }

  else
  {
    v12 = sub_214CCF4A4();
    swift_unknownObjectRetain();

    MEMORY[0x277D82BE0](v14);
    if (v12)
    {
      sub_214B6BAA4();
      v11 = sub_214CCF4A4() ^ 1;
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    swift_unknownObjectRelease();

    MEMORY[0x277D82BD8](v14);
    v10 = v11;
  }

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](v14);
  return v10 & 1;
}

uint64_t sub_214B88400(uint64_t a1)
{
  v2 = EMStringFromSubtype();
  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_214B88454(uint64_t a1)
{
  swift_beginAccess();
  swift_endAccess();
  return FeedbackHighImpact.logDescription.getter();
}

id sub_214B884F8(void *a1)
{
  sub_214CCF614("[Help Mail Learn] Feedback Donation", 35, 1);
  v3 = sub_214CCF544();

  [a1 setTitle_];
  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  sub_214CCF614("NOTE: The full content of emails you donated to help Mail learn are attached to this radar", 90, 1, v1);
  v4 = sub_214CCF544();

  [a1 setRadarDescription_];
  [a1 setComponent_];
  [a1 setClassification_];
  [a1 setReproducibility_];
  return [a1 setCustomFooter_];
}

double sub_214B88634(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v2 = MEMORY[0x277D82BE0](a2);
  v4(a2, v2);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_214B886FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[8] = a4;
  return MEMORY[0x2822009F8](sub_214B8874C, 0);
}

uint64_t sub_214B8874C()
{
  v4 = v0[12];
  v0[7] = v0;
  v1 = FeedbackListViewModel.selectedBucket.getter();
  v10 = EMCategoryTypeForBucket(v1);
  v0[9] = v10;
  sub_214A74CE0(v4 + OBJC_IVAR____TtC6MailUI21FeedbackListViewModel_messageProvider, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v7);
  v6 = FeedbackListViewModel.selectedMailboxes.getter();
  v0[13] = v6;
  v9 = (*(v8 + 8) + **(v8 + 8));
  v2 = swift_task_alloc();
  *(v5 + 112) = v2;
  *v2 = *(v5 + 56);
  v2[1] = sub_214B888F0;

  return v9(v10, v6, v7, v8);
}

uint64_t sub_214B888F0(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_214B88B48;
  }

  else
  {

    v3 = sub_214B88A74;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_214B88A74()
{
  v5 = v0;
  v3 = v0[15];
  v0[7] = v0;
  v0[11] = v3;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v3;
  sub_214B82A34(&v4);

  v1 = *(v0[7] + 8);

  return v1();
}

uint64_t sub_214B88B48()
{
  v6 = v0;
  v4 = v0[16];
  v0[7] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v4;
  v0[10] = v4;
  v5 = 2;
  sub_214B82A34(&v5);

  v2 = *(v0[7] + 8);

  return v2();
}

uint64_t sub_214B88C30(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a1;
  v50 = a2;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v51 = a6;
  v52 = "Fatal error";
  v53 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v55 = &unk_214CF0E10;
  v56 = 0;
  v69 = a6;
  v57 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v61 = &v18 - v57;

  v67 = v59;
  v68 = v60;
  sub_214B8B4C8(v58, v61, v6);
  v62 = sub_214CCF994();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  if ((*(v63 + 48))(v61, 1) == 1)
  {
    sub_214A81D1C(v61, v7);
    v48 = 0;
  }

  else
  {
    v47 = sub_214CCF984();
    (*(v63 + 8))(v61, v62);
    v48 = v47;
  }

  v44 = v48 | 0x1C00;
  v46 = *(v60 + 16);
  v45 = *(v60 + 24);
  swift_unknownObjectRetain();

  if (v46)
  {
    v42 = v46;
    v43 = v45;
    v36 = v45;
    v37 = v46;
    swift_getObjectType();
    v38 = sub_214CCF924();
    v39 = v8;
    swift_unknownObjectRelease();
    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v34 = v41;
  v35 = v40;

  if (v50)
  {
    v32 = v49;
    v33 = v50;
    v10 = v56;
    v29 = v50;
    v30 = sub_214CCF5E4();

    sub_214B8A418(v30 + 32, &v67, v51, &v65);
    if (v10)
    {
      __break(1u);
    }

    v28 = v65;

    v31 = v28;
  }

  else
  {
    v31 = 0;
  }

  v27 = v31;
  if (v31)
  {
    v21 = v27;
    v20 = v27;
    sub_214A81D1C(v58, v9);

    v22 = v20;
  }

  else
  {

    sub_214A81D1C(v58, v11);
    v23 = v67;
    v24 = v68;

    v12 = swift_allocObject();
    v13 = v23;
    v14 = v24;
    v15 = v35;
    v16 = v34;
    v25 = v12;
    v12[2] = v51;
    v12[3] = v13;
    v12[4] = v14;
    v26 = 0;
    if (v15 != 0 || v16 != 0)
    {
      v66[0] = 0;
      v66[1] = 0;
      v66[2] = v35;
      v66[3] = v34;
      v26 = v66;
    }

    v22 = swift_task_create();
  }

  v19 = v22;

  return v19;
}

uint64_t sub_214B891FC(void **a1, uint64_t *a2)
{
  v10 = 0;
  v9 = 0;
  v3 = *a1;
  v10 = a1;
  v9 = a2;
  swift_unknownObjectRetain();
  v8 = v3;
  v11 = *a2;
  sub_214B5AEEC(&v11, &v7);
  v6 = v11;
  v5 = static CollectionItemID.== infix(_:_:)(&v8, &v6);
  sub_214A759F4();
  sub_214A759F4();
  return v5 & 1;
}

unint64_t sub_214B892D0()
{
  v2 = qword_27CA36070;
  if (!qword_27CA36070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36028, &unk_214CF0A80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36070);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B89358(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214B886FC(a1, v6, v7, v8);
}

unint64_t sub_214B89430()
{
  v2 = qword_27CA36080;
  if (!qword_27CA36080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36028, &unk_214CF0A80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B894B8()
{
  v2 = qword_27CA384B0;
  if (!qword_27CA384B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA384B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B8951C()
{
  v2 = qword_27CA36098;
  if (!qword_27CA36098)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA36098);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t FeedbackListViewModel.messageListItems(for:)(uint64_t a1)
{
  v13 = a1;
  v12 = v1;
  v8 = FeedbackListViewModel.diagnosticsHelper.getter();
  v9 = [v8 source];
  MEMORY[0x277D82BD8](v8);
  v11[2] = v9;
  v11[1] = 3;
  type metadata accessor for EMDiagnosticsHelperSource(0);
  sub_214B8ADE8();
  if ((sub_214CD03F4() & 1) == 0)
  {
    return 0;
  }

  FeedbackListViewModel.state.getter(v11);
  v6 = v11[0];
  v10[2] = v11[0];
  v7 = sub_214B8245C();
  sub_214B6C398(v6);
  if (!v7)
  {
    return 0;
  }

  v10[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36028, &unk_214CF0A80);
  sub_214B89430();
  v10[0] = sub_214CD0154();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80, &qword_214CEDC90);
  sub_214B8AE68();
  v5 = sub_214CCF6F4();
  sub_214A62278(v10);
  return v5;
}

void sub_214B897C8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  MEMORY[0x277D82BE0](v3);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t sub_214B89940@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC6MailUI21FeedbackListViewModel___observationRegistrar;
  v2 = sub_214CCD464();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

id FeedbackListViewModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeedbackViewModelHelper.selectedBucket.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23FeedbackViewModelHelper_selectedBucket);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_214B89CDC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI23FeedbackViewModelHelper_selectedBucket);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return result;
}

uint64_t FeedbackViewModelHelper.selectedMailboxes.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23FeedbackViewModelHelper_selectedMailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214B89F44(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23FeedbackViewModelHelper_selectedMailboxes);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

char *FeedbackViewModelHelper.init(selectedBucket:selectedMailboxes:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v11 = a1;
  v10 = a2;
  v12 = v2;
  *&v2[OBJC_IVAR____TtC6MailUI23FeedbackViewModelHelper_selectedMailboxes] = 0;
  *&v12[OBJC_IVAR____TtC6MailUI23FeedbackViewModelHelper_selectedBucket] = a1;

  v5 = &v12[OBJC_IVAR____TtC6MailUI23FeedbackViewModelHelper_selectedMailboxes];
  swift_beginAccess();
  *v5 = a2;

  swift_endAccess();
  v9.receiver = v12;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x277D82BE0](v8);
  v12 = v8;

  MEMORY[0x277D82BD8](v12);
  return v8;
}

id FeedbackViewModelHelper.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_214B8A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_214CCF544();
  v10 = sub_214CCF544();
  v8 = sub_214CCD104();
  v12 = [v5 initWithTitle:v11 message:v10 radarURL:?];
  MEMORY[0x277D82BD8](v8);
  v6 = sub_214CCD154();
  (*(*(v6 - 8) + 8))(a5);
  MEMORY[0x277D82BD8](v10);

  MEMORY[0x277D82BD8](v11);

  return v12;
}

uint64_t sub_214B8A418@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 2, 3820, 0);
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_214B8A5D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_214B8A620()
{
  v2 = qword_27CA360B0;
  if (!qword_27CA360B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA360B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B8A698()
{
  v2 = qword_27CA360C0;
  if (!qword_27CA360C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36028, &unk_214CF0A80);
    sub_214B718A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA360C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B8A730()
{
  v2 = qword_27CA360D0;
  if (!qword_27CA360D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA360D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for FeedbackListViewModel(uint64_t a1)
{
  v2 = qword_27CA36210;
  if (!qword_27CA36210)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_214B8A820()
{
  v2 = qword_27CA360E0;
  if (!qword_27CA360E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA360E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B8A8C8()
{
  v2 = qword_27CA360F0;
  if (!qword_27CA360F0)
  {
    type metadata accessor for FeedbackListViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA360F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B8A978()
{
  v2 = qword_27CA36100;
  if (!qword_27CA36100)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA36100);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B8A9DC()
{
  v2 = qword_27CA36108;
  if (!qword_27CA36108)
  {
    sub_214B8A978();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36108);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B8AAE0()
{
  v2 = qword_27CA36140;
  if (!qword_27CA36140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36138, &unk_214CF0BC0);
    sub_214B8AB78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B8AB78()
{
  v2 = qword_27CA36148;
  if (!qword_27CA36148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36150, &qword_214CF4620);
    sub_214A621F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36148);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214B8AD3C()
{
  v2 = qword_27CA36178;
  if (!qword_27CA36178)
  {
    sub_214B1C288();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36178);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B8ADE8()
{
  v2 = qword_27CA36190;
  if (!qword_27CA36190)
  {
    type metadata accessor for EMDiagnosticsHelperSource(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B8AE68()
{
  v2 = qword_27CA361A0;
  if (!qword_27CA361A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36028, &unk_214CF0A80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA361A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B8AF24(uint64_t a1)
{
  updated = sub_214CCD464();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_214B8B0B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFC && *(a1 + 8))
    {
      v5 = *a1 + 2147483644;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 3;
      if (v4 - 3 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_214B8B204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_214B8B4C8(const void *a1, void *a2, __n128 a3)
{
  v7 = sub_214CCF994();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_214B8B654()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t FeedbackMessageDaemonProvider.init(messageRepository:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t FeedbackMessageDaemonProvider.fetchMessages(for:mailboxes:)(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[8] = a2;
  v3[7] = a1;
  v3[10] = *v2;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_214B8B77C, 0);
}

uint64_t sub_214B8B77C()
{
  v8 = v0[10];
  v7 = v0[9];
  v5 = v0[8];
  v6 = v0[7];
  v0[2] = v0;
  v10 = sub_214CCF614("fetchMessages(for:mailboxes:)", 29, 1);
  v11 = v1;
  v0[11] = v1;

  v12 = swift_task_alloc();
  v0[12] = v12;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v2 = swift_task_alloc();
  *(v9 + 104) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36028, &unk_214CF0A80);
  *v2 = *(v9 + 16);
  v2[1] = sub_214B8B910;

  return MEMORY[0x2822008A0](v9 + 48, 0, 0, v10, v11, sub_214B8C2F0, v12, v3);
}

uint64_t sub_214B8B910()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 112) = v0;

  if (v0)
  {
    v2 = sub_214B8BB0C;
  }

  else
  {

    v2 = sub_214B8BABC;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214B8BB0C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

double sub_214B8BBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v62 = a2;
  v53 = a3;
  v54 = a4;
  v51 = sub_214B8CA78;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v64 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36230, &qword_214CF0EB0);
  v57 = *(v55 - 8);
  v56 = v55 - 8;
  v58 = v57;
  v59 = *(v57 + 64);
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v61 = &v21 - v60;
  v79 = v4;
  v78 = v5;
  v77 = v6;
  v76 = v7;

  if (!v62)
  {
    goto LABEL_7;
  }

  v50 = v62;
  v48 = v62;
  v64 = v62;
  v63 = v62;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36150, &qword_214CF4620);
  sub_214A7C404();
  v8 = sub_214CCFA94();
  if (v8)
  {

LABEL_7:
    v43 = [objc_opt_self() predicateForMessagesInMailboxWithType_];
    MEMORY[0x277D82BE0](v43);
    v75 = v43;
    v47 = v43;
    goto LABEL_8;
  }

  v44 = objc_opt_self();

  sub_214A63684();
  v45 = sub_214CCF7D4();

  v46 = [v44 predicateForMessagesInMailboxes_];
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BE0](v46);
  v75 = v46;

  v47 = v46;
LABEL_8:
  v22 = v47;
  v26 = 0x277D06000uLL;
  v42 = [objc_opt_self() predicateForMessagesWithCategoryType_];
  v74 = v42;
  v32 = 0;
  sub_214B10198();
  v24 = sub_214A7C550();
  v9 = sub_214CD03C4();
  v10 = v42;
  v25 = v9;
  v23 = v11;
  *v11 = v22;
  MEMORY[0x277D82BE0](v10);
  v23[1] = v42;
  sub_214A63280();
  v41 = sub_214B101FC(v12);
  v73 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34E10, &unk_214CEDC80);
  v33 = sub_214B71394();
  MEMORY[0x277D82BE0](v41);
  v28 = sub_214A7C860();
  v29 = sub_214CD03C4();
  v27 = v13;
  v14 = objc_opt_self();
  v30 = 1;
  v15 = [v14 sortDescriptorForDateAscending_];
  *v27 = v15;
  sub_214A63280();
  v31 = v16;
  v17 = sub_214CCF614("com.apple.mobilemail.feedback", 29, v30 & 1);
  v37 = 50;
  v40 = sub_214A7CE78(v33, v41, v31, 50, 8, v32, v17, v18);
  v72 = v40;
  v39 = *(v54 + 16);
  v19 = MEMORY[0x277D82BE0](v39);
  v34 = v58;
  (*(v57 + 16))(v61, v52, v55, v19);
  v35 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v36 = swift_allocObject();
  (*(v57 + 32))(v36 + v35, v61, v55);
  v70 = v51;
  v71 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = 0;
  v68 = sub_214B8C518;
  v69 = &block_descriptor_8;
  v38 = _Block_copy(&aBlock);

  [v39 performQuery:v40 limit:v37 completionHandler:v38];
  _Block_release(v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  *&result = MEMORY[0x277D82BD8](v75).n128_u64[0];
  return result;
}

void sub_214B8C304(uint64_t a1, id a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36230, &qword_214CF0EB0);
    sub_214CCF934();
  }

  else
  {

    if (a1)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36238, &qword_214CF0EC0);
      v5 = sub_214B8CB04();
      sub_214A6E4F4(sub_214B8C4C8, 0, v6, &type metadata for FeedbackItem, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36230, &qword_214CF0EB0);
      sub_214CCF944();
    }
  }
}

void *sub_214B8C4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  return sub_214B71980(v4, a2);
}

uint64_t sub_214B8C518(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    sub_214B71394();
    v6 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](a2);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3 = MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v9(v7, v3);
}

uint64_t sub_214B8C6C8(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214B2071C;

  return FeedbackMessageDaemonProvider.fetchMessages(for:mailboxes:)(a1, a2);
}

uint64_t dispatch thunk of FeedbackMessageProvider.fetchMessages(for:mailboxes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 8) + **(a4 + 8));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_214B8C8CC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_214B8C8CC(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

void sub_214B8CA78(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36230, &qword_214CF0EB0);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  sub_214B8C304(a1, a2, v4);
}

unint64_t sub_214B8CB04()
{
  v2 = qword_27CA38200;
  if (!qword_27CA38200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36238, &qword_214CF0EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B8CB8C()
{

  sub_214CCCD04();

  return v1;
}

uint64_t sub_214B8CBE8(uint64_t a1)
{

  sub_214CCCD14();
}

uint64_t sub_214B8CC5C()
{

  v1 = sub_214CCCD24();

  return v1;
}

uint64_t sub_214B8CCB4()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_214B8CCE8(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_214B8CD3C()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_280C7EA50);
  __swift_project_value_buffer(v1, qword_280C7EA50);
  return sub_214B8CD88();
}

uint64_t sub_214B8CDB0()
{
  if (qword_280C7EA48 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7EA50);
}

uint64_t sub_214B8CE1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214B8CDB0();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void MailFocusConfigurationAction.appContext.getter()
{
  v12 = 0;
  v11 = 0;
  v12 = *v0;
  v11 = sub_214CD03C4();
  if (sub_214B8CB8C())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35200, &qword_214CEE500);
    v1 = sub_214B8D224();
    v11 = sub_214A6E4F4(sub_214B8D1D0, 0, v9, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v10);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  sub_214B50C54();
  v8 = sub_214CCFA94();

  if (v8)
  {
    v2 = [objc_opt_self() ef_matchEverythingPredicate];
    sub_214CCCB54();
  }

  else
  {
    sub_214A7C550();
    sub_214CCF614("SELF IN %@", 10, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270, &unk_214CF25E0);
    sub_214CD03C4();
    v4 = v3;
    v5 = v11;

    v4[3] = v7;
    v4[4] = sub_214B8D148();
    *v4 = v5;
    sub_214A63280();
    v6 = sub_214CCFB34();

    MEMORY[0x277D82BE0](v6);
    sub_214CCCB54();
    MEMORY[0x277D82BD8](v6);
  }

  sub_214A62278(&v11);
}

unint64_t sub_214B8D148()
{
  v2 = qword_27CA36278;
  if (!qword_27CA36278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0, &unk_214CEF8F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36278);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B8D1D0@<X0>(uint64_t *a1@<X8>)
{
  result = AccountEntity.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_214B8D224()
{
  v2 = qword_27CA36280;
  if (!qword_27CA36280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35200, &qword_214CEE500);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36280);
    return WitnessTable;
  }

  return v2;
}

uint64_t MailFocusConfigurationAction.init()@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v71 = 0;
  v80 = 0;
  v36 = 0;
  v68 = sub_214CCDA74();
  v37 = v68;
  v38 = *(v68 - 8);
  v67 = v38;
  v39 = v38;
  MEMORY[0x28223BE20](0);
  v66 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v66;
  v2 = sub_214CCCDB4();
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36288, &unk_214CF0EC8);
  v41 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = &v19 - v42;
  MEMORY[0x28223BE20](&v19 - v42);
  v62 = &v19 - v42;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351C0, qword_214CEE4B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v61 = &v19 - v43;
  sub_214CCD094();
  MEMORY[0x28223BE20](v71);
  v49 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214CCD2D4();
  MEMORY[0x28223BE20](v71);
  v48 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214CCF534();
  MEMORY[0x28223BE20](v71);
  v45 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_214CCD0A4();
  v44 = *(v51 - 8);
  v50 = v44;
  MEMORY[0x28223BE20](v51 - 8);
  v60 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36290, &qword_214CF0ED8);
  v52 = 1;
  sub_214CCF614("Accounts", 8);
  sub_214CCF4C4();
  v46 = sub_214CCF614("AppIntents", 10, v52);
  v47 = v9;
  sub_214B1CFBC();
  sub_214B1CFD4(v49);
  v78[2] = "Title for which account are selected to be in the current focus";
  v78[3] = 63;
  v79 = 2;
  sub_214CCD0C4();
  (*(v50 + 56))(v61, v52, v52, v51);
  v78[1] = v71;
  v53 = sub_214CCCC24();
  v10 = *(v53 - 8);
  v55 = *(v10 + 56);
  v54 = v10 + 56;
  v55(v62, v52);
  (v55)(v63, v52, v52, v53);
  nullsub_1();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36298, &unk_214CF0EE0);
  v56 = sub_214B911D0();
  v59 = sub_214B91300();
  v58 = sub_214B217C0();
  v65 = &unk_2826E2DF0;
  sub_214B9115C(v64);
  v18 = v58;
  v17 = v59;
  v11 = sub_214CCCD34();
  v12 = v66;
  v80 = v11;
  v13 = sub_214B8CDB0();
  (*(v67 + 16))(v12, v13, v68);
  v73 = sub_214CCDA54();
  v69 = v73;
  v72 = sub_214CCFBB4();
  v70 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v74 = sub_214CD03C4();
  if (os_log_type_enabled(v73, v72))
  {
    v14 = v36;
    v26 = sub_214CCFF24();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v24 = 0;
    v27 = sub_214A632C4(0, v23, v23);
    v25 = v27;
    v28 = sub_214A632C4(v24, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v78[0] = v26;
    v77 = v27;
    v76 = v28;
    v29 = 0;
    v30 = v78;
    sub_214A6627C(0, v78);
    sub_214A6627C(v29, v30);
    v75 = v74;
    v31 = &v19;
    MEMORY[0x28223BE20](&v19);
    v32 = &v19 - 6;
    *(&v19 - 4) = v15;
    *(&v19 - 3) = &v77;
    v17 = &v76;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
    sub_214A810E0();
    sub_214CCF764();
    v34 = v14;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v69, v70, "Initializing MailFocusConfigurationAction", v22, 2u);
      v20 = 0;
      sub_214A669DC(v25, 0, v23);
      sub_214A669DC(v28, v20, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v21 = v34;
    }
  }

  else
  {

    v21 = v36;
  }

  result = (*(v39 + 8))(v40, v37);
  *v35 = v80;
  return result;
}

uint64_t MailFocusConfigurationAction.perform()(uint64_t a1)
{
  v2[16] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[8] = 0;
  v2[13] = 0;
  v2[15] = 0;
  v3 = sub_214CCDA74();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = *v1;
  v2[22] = *v1;
  v2[3] = v4;
  sub_214CCF964();
  v2[23] = sub_214CCF954();
  v5 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214B8DD90, v5);
}

uint64_t sub_214B8DD90()
{
  v75 = v0;
  *(v0 + 16) = v0;
  v69 = [objc_opt_self() em_userDefaults];
  if (v69)
  {
    *(v68 + 64) = v69;
    v1 = sub_214B8CB8C();
    if (v1)
    {
      *(v68 + 104) = v1;
      *(v68 + 112) = v1;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35200, &qword_214CEE500);
      v2 = sub_214B8D224();
      v67 = sub_214A6E4F4(sub_214B8D1D0, 0, v65, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v66);
      v3 = *(v68 + 168);
      v55 = *(v68 + 136);
      v54 = *(v68 + 144);
      *(v68 + 120) = v67;
      v4 = sub_214B8CDB0();
      (*(v54 + 16))(v3, v4, v55);

      v56 = swift_allocObject();
      *(v56 + 16) = v67;

      v57 = swift_allocObject();
      *(v57 + 16) = sub_214A7E9D4;
      *(v57 + 24) = v56;

      v63 = sub_214CCDA54();
      v64 = sub_214CCFBB4();
      v59 = swift_allocObject();
      *(v59 + 16) = 34;
      v60 = swift_allocObject();
      *(v60 + 16) = 8;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_214A7E4B4;
      *(v58 + 24) = v57;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_214A7E854;
      *(v61 + 24) = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
      sub_214CD03C4();
      v62 = v5;

      *v62 = sub_214A662DC;
      v62[1] = v59;

      v62[2] = sub_214A662DC;
      v62[3] = v60;

      v62[4] = sub_214A7E40C;
      v62[5] = v61;
      sub_214A63280();

      if (os_log_type_enabled(v63, v64))
      {
        buf = sub_214CCFF24();
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
        v52 = sub_214A632C4(0, v50, v50);
        v53 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v70 = buf;
        v71 = v52;
        v72 = v53;
        sub_214A6627C(2, &v70);
        sub_214A6627C(1, &v70);
        v73 = sub_214A662DC;
        v74 = v59;
        sub_214A66290(&v73, &v70, &v71, &v72);
        v73 = sub_214A662DC;
        v74 = v60;
        sub_214A66290(&v73, &v70, &v71, &v72);
        v73 = sub_214A7E40C;
        v74 = v61;
        sub_214A66290(&v73, &v70, &v71, &v72);
        _os_log_impl(&dword_214A5E000, v63, v64, "Received new Focus Configuration: %{public}s", buf, 0xCu);
        sub_214A669DC(v52, 0, v50);
        sub_214A669DC(v53, 1, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();
      }

      else
      {
      }

      v45 = *(v68 + 168);
      v46 = *(v68 + 136);
      v44 = *(v68 + 144);
      v6 = MEMORY[0x277D82BD8](v63);
      (*(v44 + 8))(v45, v46, v6);

      v49 = sub_214CCF7D4();

      v47 = *MEMORY[0x277D06C78];
      MEMORY[0x277D82BE0](*MEMORY[0x277D06C78]);
      sub_214AFD2F4(v47);
      v48 = sub_214CCF544();
      MEMORY[0x277D82BD8](v47);

      [v69 setObject:v49 forKey:v48];
      MEMORY[0x277D82BD8](v48);
      swift_unknownObjectRelease();
      sub_214CCCCF4();

      MEMORY[0x277D82BD8](v69);
    }

    else
    {
      v7 = *(v68 + 160);
      v40 = *(v68 + 136);
      v39 = *(v68 + 144);
      v8 = sub_214B8CDB0();
      (*(v39 + 16))(v7, v8, v40);
      oslog = sub_214CCDA54();
      v41 = sub_214CCFBB4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
      v43 = sub_214CD03C4();
      if (os_log_type_enabled(oslog, v41))
      {
        v35 = sub_214CCFF24();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
        v36 = sub_214A632C4(0, v34, v34);
        v37 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v68 + 72) = v35;
        *(v68 + 80) = v36;
        *(v68 + 88) = v37;
        sub_214A6627C(0, (v68 + 72));
        sub_214A6627C(0, (v68 + 72));
        *(v68 + 96) = v43;
        v38 = swift_task_alloc();
        v38[2] = v68 + 72;
        v38[3] = v68 + 80;
        v38[4] = v68 + 88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
        sub_214A810E0();
        sub_214CCF764();

        _os_log_impl(&dword_214A5E000, oslog, v41, "Focus configuration removed", v35, 2u);
        sub_214A669DC(v36, 0, v34);
        sub_214A669DC(v37, 0, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();
      }

      v30 = *(v68 + 160);
      v31 = *(v68 + 136);
      v29 = *(v68 + 144);
      v9 = MEMORY[0x277D82BD8](oslog);
      (*(v29 + 8))(v30, v31, v9);
      v32 = *MEMORY[0x277D06C78];
      MEMORY[0x277D82BE0](*MEMORY[0x277D06C78]);
      sub_214AFD2F4(v32);
      v33 = sub_214CCF544();
      MEMORY[0x277D82BD8](v32);

      [v69 removeObjectForKey_];
      MEMORY[0x277D82BD8](v33);
      sub_214CCCCF4();
      MEMORY[0x277D82BD8](v69);
    }

    v15 = *(*(v68 + 16) + 8);

    return v15();
  }

  else
  {
    v10 = *(v68 + 152);
    v25 = *(v68 + 136);
    v24 = *(v68 + 144);
    v11 = sub_214B8CDB0();
    (*(v24 + 16))(v10, v11, v25);
    log = sub_214CCDA54();
    v26 = sub_214CCFBA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
    v28 = sub_214CD03C4();
    if (os_log_type_enabled(log, v26))
    {
      v20 = sub_214CCFF24();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v21 = sub_214A632C4(0, v19, v19);
      v22 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v68 + 32) = v20;
      *(v68 + 40) = v21;
      *(v68 + 48) = v22;
      sub_214A6627C(0, (v68 + 32));
      sub_214A6627C(0, (v68 + 32));
      *(v68 + 56) = v28;
      v23 = swift_task_alloc();
      v23[2] = v68 + 32;
      v23[3] = v68 + 40;
      v23[4] = v68 + 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
      sub_214A810E0();
      sub_214CCF764();

      _os_log_impl(&dword_214A5E000, log, v26, "Unable to load Mail User Defaults", v20, 2u);
      sub_214A669DC(v21, 0, v19);
      sub_214A669DC(v22, 0, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }

    v18 = *(v68 + 152);
    v17 = *(v68 + 136);
    v16 = *(v68 + 144);
    v12 = MEMORY[0x277D82BD8](log);
    (*(v16 + 8))(v18, v17, v12);
    nullsub_1();
    sub_214B91378();
    swift_allocError();
    swift_willThrow();

    v13 = *(*(v68 + 16) + 8);

    return v13();
  }
}

uint64_t sub_214B8EDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_214B8C8CC;

  return MEMORY[0x28210BFA8](a1, a2, a3);
}

double static MailFocusConfigurationAction.title.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_214B8F80C();
  swift_beginAccess();
  v1 = sub_214CCD0A4();
  (*(*(v1 - 8) + 16))(a1, v3);
  swift_endAccess();
  return result;
}

uint64_t sub_214B8EF9C(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214B20AF4;

  return MailFocusConfigurationAction.perform()(a1);
}

uint64_t MailFocusConfigurationAction.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v23 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351B8, &qword_214CEE4A8);
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v20 = &v6 - v7;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351C0, qword_214CEE4B0);
  v8 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v19 = &v6 - v8;
  v16 = 0;
  v13 = sub_214CCD0A4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v18 = &v6 - v9;
  v15 = *v1;
  v23 = v15;
  v12 = sub_214B8F80C();
  v14 = &v22;
  swift_beginAccess();
  (*(v10 + 16))(v18, v12, v13);
  swift_endAccess();
  v21 = v15;
  sub_214B90014(v19);
  v4 = sub_214CCCD74();
  (*(*(v4 - 8) + 56))(v20, 1);
  return sub_214CCCD84();
}

uint64_t static MailFocusConfigurationAction.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v11 = "Will appear in Shortcuts or Siri as a reference to an account in Mail.";
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351C0, qword_214CEE4B0);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v23 = &v5 - v5;
  v8 = 0;
  v6 = (*(*(sub_214CCD094() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v16 = &v5 - v6;
  v7 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v15 = &v5 - v7;
  v9 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v12 = &v5 - v9;
  v20 = sub_214CCD0A4();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v20);
  v22 = &v5 - v10;
  v19 = 1;
  sub_214CCF614("FilterInboxes", 13, 1, v2);
  sub_214CCF4C4();
  v13 = sub_214CCF614("AppIntents", 10, v19 & 1);
  v14 = v3;
  sub_214B1CFBC();
  sub_214B1CFD4(v16);
  v24 = v11;
  v25 = 70;
  v26 = 2;
  sub_214CCD0C4();
  (*(v17 + 56))(v23, v19, v19, v20);
  return sub_214CCCDE4();
}

uint64_t sub_214B8F5FC()
{
  v10 = "Title of the label to filter mail accounts for a focus.";
  v5 = 0;
  v3 = (*(*(sub_214CCD094() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v2 - v3;
  v4 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v15 = &v2 - v4;
  v6 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v12 = &v2 - v6;
  v8 = sub_214CCD0A4();
  v7 = qword_27CA36240;
  __swift_allocate_value_buffer(v8, qword_27CA36240);
  v11 = __swift_project_value_buffer(v8, v7);
  v9 = 1;
  sub_214CCF614("FilterInboxes", 13, 1);
  sub_214CCF4C4();
  v13 = sub_214CCF614("AppIntents", 10, v9 & 1);
  v14 = v0;
  sub_214B1CFBC();
  sub_214B1CFD4(v16);
  v17 = v10;
  v18 = 55;
  v19 = 2;
  return sub_214CCD0C4();
}

uint64_t sub_214B8F80C()
{
  if (qword_27CA34000 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD0A4();
  return __swift_project_value_buffer(v0, qword_27CA36240);
}

uint64_t static MailFocusConfigurationAction.title.setter(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v10 = sub_214CCD0A4();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v5 = &v3 - v3;
  v12 = v1;
  v4 = sub_214B8F80C();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

double (*static MailFocusConfigurationAction.title.modify())(uint64_t a1)
{
  sub_214B8F80C();
  swift_beginAccess();
  return sub_214B11B90;
}

uint64_t sub_214B8FA2C()
{
  v11 = "Description of the label to filter mail accounts for a focus.";
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351C0, qword_214CEE4B0);
  v3 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v22 = &v3 - v3;
  v7 = 0;
  v4 = (*(*(sub_214CCD094() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v16 = &v3 - v4;
  v5 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v15 = &v3 - v5;
  v6 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v12 = &v3 - v6;
  v20 = sub_214CCD0A4();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v23 = &v3 - v8;
  v10 = sub_214CCCD44();
  v9 = qword_27CA36258;
  __swift_allocate_value_buffer(v10, qword_27CA36258);
  v21 = __swift_project_value_buffer(v10, v9);
  v19 = 1;
  sub_214CCF614("SetMailFocusConfiguration", 25, 1);
  sub_214CCF4C4();
  v13 = sub_214CCF614("AppIntents", 10, v19 & 1);
  v14 = v1;
  sub_214B1CFBC();
  sub_214B1CFD4(v16);
  v24 = v11;
  v25 = 61;
  v26 = 2;
  sub_214CCD0C4();
  (*(v17 + 56))(v22, v19, v19, v20);
  sub_214B8FD54();
  return sub_214CCCD54();
}

uint64_t sub_214B8FD70(double a1)
{
  if (qword_27CA34008 != -1)
  {
    swift_once();
  }

  v1 = sub_214CCCD44();
  return __swift_project_value_buffer(v1, qword_27CA36258);
}

double static MailFocusConfigurationAction.description.getter@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_214B8FD70(a2);
  swift_beginAccess();
  v2 = sub_214CCCD44();
  (*(*(v2 - 8) + 16))(a1, v4);
  swift_endAccess();
  return result;
}

uint64_t static MailFocusConfigurationAction.description.setter(uint64_t a1, double a2)
{
  v11 = a1;
  v14 = 0;
  v12 = sub_214CCCD44();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v5;
  v14 = v3;
  v6 = sub_214B8FD70(v2);
  (*(v9 + 16))(v7, v11, v12);
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

double (*static MailFocusConfigurationAction.description.modify(double a1))(uint64_t a1)
{
  sub_214B8FD70(a1);
  swift_beginAccess();
  return sub_214B11B90;
}

uint64_t sub_214B90014@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v79 = "Description for a Mail focus filter with 3 or more accounts. The first argument is the title of the first account, and the other argument is how many other accounts there are.";
  v80 = "FocusFilterDescription_ThreeOrMoreAccounts";
  v81 = sub_214B910F0;
  v82 = "Description for a Mail focus filter with exactly two accounts. The arguments are the titles of the two accounts.";
  v83 = "FocusFilterDescription_TwoAccounts";
  v84 = "Description for a Mail focus filter with exactly one account. The argument is the title of the account.";
  v85 = "FocusFilterDescription_OneAccount";
  v126 = 0;
  v124 = 0;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v86 = 0;
  v113 = 0;
  v91 = 0;
  v87 = (*(*(sub_214CCD094() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v88 = v26 - v87;
  v89 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v91);
  v90 = v26 - v89;
  v92 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v91);
  v93 = v26 - v92;
  v94 = sub_214CCF514();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94);
  v98 = v26 - v97;
  v99 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26 - v97);
  v100 = v26 - v99;
  v101 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26 - v99);
  v102 = v26 - v101;
  v126 = *v1;
  v125 = v126;
  v103 = sub_214B8CB8C();
  if (!v103)
  {
    goto LABEL_22;
  }

  v77 = v103;
  v73 = v103;
  v124 = v103;
  v123 = v103;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35200, &qword_214CEE500);
  v75 = sub_214B8D224();
  sub_214CCFA74();
  v76 = v122;
  if (v122)
  {
    v72 = v76;
    v67 = v76;
    v104 = v76;
    v68 = sub_214B1D07C();
    v69 = v4;
    MEMORY[0x277D82BD8](v67);
    v70 = v68;
    v71 = v69;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v65 = v71;
  v66 = v70;
  if (!v71)
  {

LABEL_22:
    v25 = sub_214CCD0A4();
    return (*(*(v25 - 8) + 56))(v78, 1);
  }

  v63 = v66;
  v64 = v65;
  v60 = v65;
  v61 = v66;
  v120 = v66;
  v121 = v65;
  v5 = sub_214CCF854();
  v62 = v5;
  if (!v5)
  {
    v6 = sub_214CCD0A4();
    (*(*(v6 - 8) + 56))(v78, 1);
  }

  if (v62 == 1)
  {
    v57 = 0;
    sub_214CCF504();
    v53 = "";
    v58 = 1;
    sub_214CCF614("", v57, 1);
    v52 = v8;
    sub_214CCF4F4();

    sub_214CCF4E4();
    sub_214CCF614(v53, v57, v58 & 1);
    v54 = v9;
    sub_214CCF4F4();

    (*(v95 + 16))(v100, v102, v94);
    (*(v95 + 32))(v98, v100, v94);
    (*(v95 + 8))(v102, v94);
    sub_214CCF524();
    v55 = sub_214CCF614("AppIntents", 10, v58 & 1);
    v56 = v10;
    sub_214B1CFBC();
    sub_214B1CFD4(v88);
    v105 = v84;
    v106 = 103;
    v107 = 2;
    v59 = 0;
    sub_214CCD0B4();
    v11 = sub_214CCD0A4();
    (*(*(v11 - 8) + 56))(v78, v59, v58);
  }

  if (v62 == 2)
  {
    v12 = v86;
    v114 = v73;
    result = sub_214A6E4F4(v81, 0, v74, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v75, MEMORY[0x277D84AC0], v50);
    v51 = result;
    if (!v12)
    {
      v49 = v51;
      v113 = v51;
      v38 = 2;
      sub_214CCF504();
      v42 = "";
      v46 = 0;
      v47 = 1;
      sub_214CCF614("");
      v36 = v13;
      sub_214CCF4F4();

      v40 = MEMORY[0x277D837D0];
      sub_214CCF914();
      v37 = v112;
      sub_214CCF4E4();

      sub_214CCF614(", ", v38, v47 & 1);
      v39 = v14;
      sub_214CCF4F4();

      sub_214CCF914();
      v41 = v111;
      sub_214CCF4E4();

      sub_214CCF614(v42, v46, v47 & 1);
      v43 = v15;
      sub_214CCF4F4();

      (*(v95 + 16))(v100, v102, v94);
      (*(v95 + 32))(v98, v100, v94);
      (*(v95 + 8))(v102, v94);
      sub_214CCF524();
      v44 = sub_214CCF614("AppIntents", 10, v47 & 1);
      v45 = v16;
      sub_214B1CFBC();
      sub_214B1CFD4(v88);
      v108 = v82;
      v109 = 112;
      v110 = 2;
      v48 = 0;
      sub_214CCD0B4();
      v17 = sub_214CCD0A4();
      (*(*(v17 - 8) + 56))(v78, v48, v47);
    }

    __break(1u);
  }

  else
  {
    result = sub_214CCF854();
    v35 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v119 = v35;
      v29 = 10;
      sub_214CCF504();
      v32 = 0;
      v33 = 1;
      sub_214CCF614("");
      v26[1] = v19;
      sub_214CCF4F4();

      sub_214CCF4E4();
      v27 = 5;
      sub_214CCF614(" and ");
      v26[2] = v20;
      sub_214CCF4F4();

      v26[4] = &v118;
      v118 = v35;
      v26[3] = MEMORY[0x277D83B88];
      v26[5] = sub_214B913F4(MEMORY[0x277D83B88]);
      v26[6] = v21;
      sub_214CCF4D4();

      sub_214CCF614(" more", v27, v33 & 1);
      v28 = v22;
      sub_214CCF4F4();

      (*(v95 + 16))(v100, v102, v94);
      (*(v95 + 32))(v98, v100, v94);
      (*(v95 + 8))(v102, v94);
      sub_214CCF524();
      v30 = sub_214CCF614("AppIntents", v29, v33 & 1);
      v31 = v23;
      sub_214B1CFBC();
      sub_214B1CFD4(v88);
      v115 = v79;
      v116 = 175;
      v117 = 2;
      v34 = 0;
      sub_214CCD0B4();
      v24 = sub_214CCD0A4();
      (*(*(v24 - 8) + 56))(v78, v34, v33);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214B910F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214B1D07C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_214B9115C@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277CBA308];
  v2 = sub_214CCCDB4();
  return (*(*(v2 - 8) + 104))(a1, v4);
}

unint64_t sub_214B911D0()
{
  v2 = qword_280C7CF58;
  if (!qword_280C7CF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36298, &unk_214CF0EE0);
    sub_214B91268();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B91268()
{
  v2 = qword_280C7CF60;
  if (!qword_280C7CF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35200, &qword_214CEE500);
    sub_214B21FAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B91300()
{
  v2 = qword_280C7EA78;
  if (!qword_280C7EA78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B91378()
{
  v2 = qword_27CA362A0;
  if (!qword_27CA362A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA362A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B913F4(uint64_t a1)
{
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_214CCF614("%lld", *&v2);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_214CCF614("%d", LODWORD(v2));
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_214CCF614("%llu", *&v2);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_214CCF614("%u", LODWORD(v2));
  }

  if (swift_dynamicCastMetatype())
  {
    return sub_214CCF614("%f", v2);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_214CCF614("%lf", v2);
  }

  return sub_214CCF614("%@", 2, 1);
}

uint64_t sub_214B9169C(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_214CCD0A4();
      v1 = sub_214CCF834();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_214CCD0A4();
    return v2;
  }

  return result;
}

unint64_t sub_214B9178C()
{
  v2 = qword_280C7EA38;
  if (!qword_280C7EA38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B91808()
{
  v2 = qword_280C7EA28;
  if (!qword_280C7EA28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B918CC()
{
  v2 = qword_280C7EA30;
  if (!qword_280C7EA30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B91960()
{
  v2 = qword_280C7EA40;
  if (!qword_280C7EA40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B91A84()
{
  v2 = qword_280C7EA20;
  if (!qword_280C7EA20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B91B18()
{
  v2 = qword_27CA362A8;
  if (!qword_27CA362A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA362A8);
    return WitnessTable;
  }

  return v2;
}

void *__swift_initWithCopy_strong(void *a1, uint64_t *a2)
{
  v4 = *a2;

  result = a1;
  *a1 = v4;
  return result;
}

void *__swift_assignWithCopy_strong(void *a1, uint64_t *a2)
{
  v3 = *a2;

  *a1 = v3;

  return a1;
}

unint64_t sub_214B91C8C()
{
  v2 = qword_280C7EB28;
  if (!qword_280C7EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362B0, &qword_214CF11F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EB28);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.Generic.accessibilityDescription.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t SearchItem.Generic.accessibilityDescription.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SearchItem.Generic.id.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.Generic(0) + 24);
  v2 = sub_214CCD2B4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for SearchItem.Generic(uint64_t a1)
{
  v2 = qword_280C7E3C8;
  if (!qword_280C7E3C8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SearchItem.Generic.id.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCD2B4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.Generic(v8);
  (*(v10 + 40))(v1 + *(v4 + 24), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.Generic.image.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Generic(0) + 28));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double SearchItem.Generic.image.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.Generic(0) + 28));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.Generic.imageTintColor.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Generic(0) + 32));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double SearchItem.Generic.imageTintColor.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.Generic(0) + 32));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.Generic.attributedTitle.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Generic(0) + 36));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double SearchItem.Generic.attributedTitle.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.Generic(0) + 36));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.Generic.title.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Generic(0) + 40));

  return v2;
}

uint64_t SearchItem.Generic.title.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Generic(0) + 40));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Generic.isRecent.setter(unsigned int a1)
{
  v2 = type metadata accessor for SearchItem.Generic(0);
  result = a1;
  *(v1 + *(v2 + 44)) = a1;
  return result;
}

uint64_t sub_214B92650()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Generic(0) + 48));

  return v2;
}

uint64_t SearchItem.Generic.init(accessibilityDescription:count:id:image:imageTintColor:title:isRecent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v49 = a9;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v70 = a5;
  v51 = a6;
  v52 = a7;
  v53 = a8;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v54 = 0;
  v68 = sub_214CCD2B4();
  v64 = *(v68 - 8);
  v65 = v68 - 8;
  v50 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v67 = &v43 - v50;
  v69 = type metadata accessor for SearchItem.Generic(v9);
  v55 = (*(*(v69 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v66 = (&v43 - v55);
  v82 = &v43 - v55;
  v80 = v60;
  v81 = v10;
  v79 = v11;
  v78 = v12;
  v77 = v13;
  v76 = v14;
  v75 = v15;
  v74 = v16 & 1;
  *(v66 + *(v17 + 32)) = v18;
  v57 = *(v17 + 48);
  v56 = @"magnifyingglass";
  MEMORY[0x277D82BE0](@"magnifyingglass");
  v58 = sub_214CCF564();
  v59 = v19;
  MEMORY[0x277D82BD8](v56);
  v20 = v59;
  v21 = (v66 + v57);
  *v21 = v58;
  v21[1] = v20;

  v22 = v67;
  v23 = v61;
  v24 = v62;
  v25 = v63;
  v26 = v64;
  v27 = v66;
  v28 = v68;
  *v66 = v60;
  v27[1] = v23;
  v27[2] = v24;
  (*(v26 + 16))(v22, v25, v28);
  (*(v64 + 32))(v66 + v69[6], v67, v68);
  MEMORY[0x277D82BE0](v70);
  v72 = v70;
  if (v70)
  {
    v73 = v72;
  }

  else
  {
    v45 = sub_214A731BC();
    v29 = (v66 + v69[12]);
    v46 = *v29;
    v47 = v29[1];

    v48 = static UIImage.mui_systemImage(with:)(v46, v47);

    v71 = v48;
    if (v48)
    {
      v73 = v71;
    }

    else
    {
      v73 = sub_214A61730();
      if (v71)
      {
        sub_214A671E8(&v71);
      }
    }

    if (v72)
    {
      sub_214A671E8(&v72);
    }
  }

  v30 = v51;
  *(v66 + v69[7]) = v73;
  MEMORY[0x277D82BE0](v30);
  v31 = (v66 + v69[8]);
  v32 = *v31;
  *v31 = v51;
  MEMORY[0x277D82BD8](v32);
  *&v33 = MEMORY[0x277D82BE0](v52).n128_u64[0];
  v34 = v52;
  *(v66 + v69[9]) = v52;
  v44 = [v34 string];
  v35 = sub_214CCF564();
  v36 = v44;
  v37 = (v66 + v69[10]);
  *v37 = v35;
  v37[1] = v38;
  MEMORY[0x277D82BD8](v36);
  v39 = v49;
  v40 = v66;
  *(v66 + v69[11]) = v53;
  sub_214B92BBC(v40, v39);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v51);
  v41 = MEMORY[0x277D82BD8](v70);
  (*(v64 + 8))(v63, v68, v41);

  return sub_214B92DC4(v66);
}

char *sub_214B92BBC(char *a1, char *a2)
{
  *a2 = *a1;
  v6 = *(a1 + 1);

  *(a2 + 1) = v6;
  *(a2 + 2) = *(a1 + 2);
  v17 = type metadata accessor for SearchItem.Generic(0);
  v7 = v17[6];
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(&a2[v7], &a1[v7]);
  v8 = v17[7];
  v9 = *&a1[v8];
  MEMORY[0x277D82BE0](v9);
  *&a2[v8] = v9;
  v10 = v17[8];
  v11 = *&a1[v10];
  MEMORY[0x277D82BE0](v11);
  *&a2[v10] = v11;
  v12 = v17[9];
  v13 = *&a1[v12];
  MEMORY[0x277D82BE0](v13);
  *&a2[v12] = v13;
  v3 = v17[10];
  v15 = &a2[v3];
  *&a2[v3] = *&a1[v3];
  v16 = *&a1[v3 + 8];

  *(v15 + 1) = v16;
  a2[v17[11]] = a1[v17[11]];
  v4 = v17[12];
  v19 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v20 = *&a1[v4 + 8];

  result = a2;
  *(v19 + 1) = v20;
  return result;
}

uint64_t sub_214B92DC4(uint64_t a1)
{

  v4 = type metadata accessor for SearchItem.Generic(0);
  v3 = v4[6];
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1 + v3);
  MEMORY[0x277D82BD8](*(a1 + v4[7]));
  MEMORY[0x277D82BD8](*(a1 + v4[8]));
  MEMORY[0x277D82BD8](*(a1 + v4[9]));

  return a1;
}

uint64_t SearchItem.Generic.init(suggestion:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v29 = a1;
  v32 = 0;
  v31 = 0;
  v12[1] = 0;
  v13 = (*(*(sub_214CCD2B4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = v12 - v13;
  v27 = type metadata accessor for SearchItem.Generic(v2);
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v24 = v12 - v14;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v30 = v12 - v15;
  v32 = v12 - v15;
  v31 = v6;
  v23 = [v6 accessibilityDescription];
  v22 = sub_214CCF564();
  v16 = v7;
  v17 = [v29 resultCount];
  sub_214CCD2A4();
  *&v8 = MEMORY[0x277D82BE0](v29).n128_u64[0];
  v19 = [v29 image];
  *&v9 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  v20 = [v29 imageTintColor];
  v21 = [v29 attributedTitle];
  v10 = [v29 isRecent];
  SearchItem.Generic.init(accessibilityDescription:count:id:image:imageTintColor:title:isRecent:)(v22, v16, v17, v18, v19, v20, v21, v10, v24);
  MEMORY[0x277D82BD8](v23);
  sub_214B93174(v24, v30);
  sub_214B92BBC(v30, v28);
  (*(v25 + 56))(v28, 0, 1, v27);
  MEMORY[0x277D82BD8](v29);
  return sub_214B92DC4(v30);
}

__n128 sub_214B93174(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = type metadata accessor for SearchItem.Generic(0);
  v4 = v5[6];
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2 + v4, a1 + v4);
  *(a2 + v5[7]) = *(a1 + v5[7]);
  *(a2 + v5[8]) = *(a1 + v5[8]);
  *(a2 + v5[9]) = *(a1 + v5[9]);
  *(a2 + v5[10]) = *(a1 + v5[10]);
  *(a2 + v5[11]) = *(a1 + v5[11]);
  result = *(a1 + v5[12]);
  *(a2 + v5[12]) = result;
  return result;
}

BOOL static SearchItem.Generic.== infix(_:_:)(uint64_t a1, void *a2)
{
  v42 = a1;
  v50 = a2;
  v62 = 0;
  v61 = 0;
  v43 = sub_214CCD2B4();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v47 = &v12[-v46];
  v48 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v49 = &v12[-v48];
  v62 = v4;
  v61 = v5;
  v51 = *v4;
  v54 = v4[1];

  v52 = *v50;
  v53 = v50[1];

  v55 = MEMORY[0x21605D8D0](v51, v54, v52, v53);

  if ((v55 & 1) == 0)
  {
    return 0;
  }

  if (*(v42 + 16) != v50[2])
  {
    return 0;
  }

  v36 = type metadata accessor for SearchItem.Generic(0);
  v6 = v42 + v36[6];
  v38 = v44[2];
  v37 = v44 + 2;
  v38(v49, v6, v43);
  v38(v47, v50 + v36[6], v43);
  v41 = sub_214CCD284();
  v40 = v44[1];
  v39 = v44 + 1;
  v40(v47, v43);
  v40(v49, v43);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  v32 = sub_214A77084();
  v34 = *(v42 + v36[7]);
  MEMORY[0x277D82BE0](v34);
  v33 = *(v50 + v36[7]);
  MEMORY[0x277D82BE0](v33);
  v35 = sub_214CCFD64();
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

  v30 = *(v42 + v36[8]);
  MEMORY[0x277D82BE0](v30);
  MEMORY[0x277D82BE0](v30);
  v31 = *(v50 + v36[8]);
  MEMORY[0x277D82BE0](v31);
  MEMORY[0x277D82BE0](v31);
  v59 = v30;
  v60 = v31;
  if (v30)
  {
    sub_214A671A8(&v59, &v58);
    if (v60)
    {
      v57 = v58;
      v56 = v60;
      sub_214A65CE0();
      v28 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v57);
      sub_214A671E8(&v59);
      v29 = v28;
      goto LABEL_11;
    }

    MEMORY[0x277D82BD8](v58);
    goto LABEL_13;
  }

  if (v60)
  {
LABEL_13:
    sub_214A68120(&v59);
    v29 = 0;
    goto LABEL_11;
  }

  sub_214A671E8(&v59);
  v29 = 1;
LABEL_11:
  v27 = v29;
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v30);
  if (v27)
  {
    v25 = *(v42 + v36[9]);
    MEMORY[0x277D82BE0](v25);
    v24 = *(v50 + v36[9]);
    MEMORY[0x277D82BE0](v24);
    v26 = sub_214CCFD64();
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    if (v26)
    {
      v7 = (v42 + v36[10]);
      v19 = *v7;
      v22 = v7[1];

      v8 = (v50 + v36[10]);
      v20 = *v8;
      v21 = v8[1];

      v23 = MEMORY[0x21605D8D0](v19, v22, v20, v21);

      if (v23)
      {
        if ((*(v42 + v36[11]) & 1) == (*(v50 + v36[11]) & 1))
        {
          v9 = (v42 + v36[12]);
          v14 = *v9;
          v17 = v9[1];

          v10 = (v50 + v36[12]);
          v15 = *v10;
          v16 = v10[1];

          v18 = MEMORY[0x21605D8D0](v14, v17, v15, v16);

          return (v18 & 1) != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void SearchItem.Generic.hash(into:)(uint64_t a1)
{
  v28 = a1;
  v2 = v1;
  v30 = v2;
  v44 = 0;
  v43 = 0;
  v22 = 0;
  v14 = sub_214CCD2B4();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v13 = &v7 - v7;
  v44 = a1;
  v43 = v4;
  v8 = *v4;
  v9 = v4[1];

  v10 = v42;
  v42[0] = v8;
  v42[1] = v9;
  v33 = MEMORY[0x277D837D0];
  v34 = MEMORY[0x277D837E0];
  sub_214CD0554();
  sub_214A61B48(v10);
  v41[1] = *(v30 + 16);
  sub_214CD0554();
  v29 = type metadata accessor for SearchItem.Generic(v22);
  (*(v11 + 16))(v13, v30 + v29[6], v14);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v11 + 8))(v13, v14);
  v15 = *(v30 + v29[7]);
  MEMORY[0x277D82BE0](v15);
  v17 = v41;
  v41[0] = v15;
  v16 = sub_214A731BC();
  sub_214A74FE8();
  sub_214CD0554();
  MEMORY[0x277D82BD8](v41[0]);
  v18 = *(v30 + v29[8]);
  MEMORY[0x277D82BE0](v18);
  v20 = &v40;
  v40 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35300, &qword_214CEEE18);
  sub_214A75190();
  sub_214CD0554();
  sub_214A671E8(v20);
  v21 = *(v30 + v29[9]);
  MEMORY[0x277D82BE0](v21);
  v24 = &v39;
  v39 = v21;
  v23 = sub_214AF7FCC();
  sub_214B93E60();
  sub_214CD0554();
  MEMORY[0x277D82BD8](v39);
  v5 = (v30 + v29[10]);
  v25 = *v5;
  v26 = v5[1];

  v27 = v38;
  v38[0] = v25;
  v38[1] = v26;
  sub_214CD0554();
  sub_214A61B48(v27);
  v37 = *(v30 + v29[11]);
  sub_214CD0554();
  v6 = (v30 + v29[12]);
  v31 = *v6;
  v32 = v6[1];

  v35 = v36;
  v36[0] = v31;
  v36[1] = v32;
  sub_214CD0554();
  sub_214A61B48(v35);
}

unint64_t sub_214B93E60()
{
  v2 = qword_280C7CB08;
  if (!qword_280C7CB08)
  {
    sub_214AF7FCC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CB08);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.Generic.hashValue.getter()
{
  type metadata accessor for SearchItem.Generic(0);
  sub_214B93F28();
  return sub_214CD0114();
}

unint64_t sub_214B93F28()
{
  v2 = qword_27CA362B8;
  if (!qword_27CA362B8)
  {
    type metadata accessor for SearchItem.Generic(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA362B8);
    return WitnessTable;
  }

  return v2;
}

void (*sub_214B94020(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 55008);
  *a1 = v2;
  v2[4] = SearchItem.Generic.count.modify();
  return sub_214B2B6DC;
}

unint64_t sub_214B940F0()
{
  v2 = qword_27CA362C0;
  if (!qword_27CA362C0)
  {
    type metadata accessor for SearchItem.Generic(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA362C0);
    return WitnessTable;
  }

  return v2;
}

void (*sub_214B94170(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 9029);
  *a1 = v2;
  v2[4] = SearchItem.Generic.title.modify();
  return sub_214B2B6DC;
}

unint64_t sub_214B9424C(uint64_t a1)
{
  v6 = sub_214CCD2B4();
  if (v1 <= 0x3F)
  {
    v6 = sub_214A731BC();
    if (v2 <= 0x3F)
    {
      v6 = sub_214B943D0(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_214AF7FCC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_214B943D0(uint64_t a1)
{
  v5 = qword_280C7C5B0;
  if (!qword_280C7C5B0)
  {
    sub_214A65CE0();
    v4 = sub_214CCFF34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_280C7C5B0);
      return v2;
    }
  }

  return v5;
}

uint64_t GroupedSearchItems.SectionCache.items.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  return result;
}

uint64_t sub_214B944FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_214B952A0(a1, v9);
  v3 = v9[0];
  v7 = v9[1];
  v4 = v9[2];
  v8 = v9[3];
  v6 = v9[4];

  *a2 = v3;
  a2[1] = v7;
  a2[2] = v4;
  a2[3] = v8;
  a2[4] = v6;
}

uint64_t sub_214B945B0(void *a1)
{
  sub_214B9506C(a1, v3);
  v2[0] = v3[0];
  v2[1] = v3[1];
  v2[2] = v3[2];
  v2[3] = v3[3];
  v2[4] = v3[4];
  return GroupedSearchItems.SectionCache.items.setter(v2);
}

uint64_t GroupedSearchItems.SectionCache.items.setter(uint64_t *a1)
{
  memset(__b, 0, sizeof(__b));
  v7 = a1[1];
  v4 = a1[2];
  v8 = a1[3];
  v5 = a1[4];
  __b[0] = *a1;
  v6 = __b[0];
  __b[1] = v7;
  __b[2] = v4;
  __b[3] = v8;
  __b[4] = v5;

  *v1 = v6;
  v1[1] = v7;
  v1[2] = v4;
  v1[3] = v8;
  v1[4] = v5;

  sub_214B94710();
}

uint64_t sub_214B94788(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_214B94710();
  }

  return result;
}

uint64_t GroupedSearchItems.SectionCache.cachedSections()()
{
  v4 = *(v0 + 40);

  if (v4)
  {
    return v4;
  }

  v5 = sub_214B948F8();

  *(v3 + 40) = v5;

  return v5;
}

uint64_t sub_214B948F8()
{
  memcpy(__dst, v0, sizeof(__dst));
  v7 = __dst[1];
  sub_214B1C04C(&v7, &v5);
  v4 = v7;
  sub_214B9506C(__dst, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362C8, &qword_214CF1340);
  sub_214B951D4();
  v2 = sub_214CCF6F4();
  sub_214B9525C(__dst);
  sub_214A62278(&v4);
  return v2;
}

uint64_t sub_214B94A24()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_214B94A58(uint64_t a1)
{

  *(v1 + 40) = a1;
}

void *GroupedSearchItems.SectionCache.init(sortedSectionKinds:makeItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v9[7] = a1;
  v9[5] = a2;
  v9[6] = a3;
  __b[5] = 0;
  GroupedSearchItems.init(sortedSectionKinds:makeItem:)(a1, a2, a3, v9);
  __b[0] = v9[0];
  __b[1] = v9[1];
  __b[2] = v9[2];
  __b[3] = v9[3];
  __b[4] = v9[4];
  sub_214B952A0(__b, a4);
  result = __b;
  sub_214B95348(__b);
  return result;
}

void *GroupedSearchItems.init(sortedSectionKinds:makeItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  __b[4] = sub_214B94E30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362D0, &qword_214CF1348);
  sub_214CD03C4();
  sub_214B95398();
  __b[0] = sub_214CCF344();

  __b[1] = a1;

  __b[2] = a2;
  __b[3] = a3;
  sub_214B9506C(__b, a4);

  result = __b;
  sub_214B9525C(__b);
  return result;
}

uint64_t sub_214B94C70()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_214B94CA4(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_214B94CF8()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_214B94D2C(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_214B94D80()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_214B94DC0(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_214B94E84@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v23 = *a1;
  v22 = a2;
  v21 = a3;

  v18 = v23;
  sub_214B95398();
  sub_214CCF3D4();
  if (v20)
  {
    v16 = v19;
    v17 = v20;

    v13 = v23;

    v12 = v20;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362F0, &qword_214CF1360);
    v8 = type metadata accessor for SearchItem(0);
    v4 = sub_214B9951C();
    v10 = sub_214A6E4F4(sub_214B95104, 0, v7, v8, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v9);
    sub_214A62278(&v12);
    sub_214B95158(&v13, v10, v14);
    v5 = v15;
    *a4 = v14[0];
    a4[1] = v5;
  }

  else
  {

    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

void *sub_214B9506C(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v6 = a1[2];
  v7 = a1[3];

  result = a2;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = a1[4];
  return result;
}

_BYTE *sub_214B95158@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_214B951D4()
{
  v2 = qword_280C7CF18;
  if (!qword_280C7CF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362C8, &qword_214CF1340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF18);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214B9525C(void *a1)
{
}

void *sub_214B952A0(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v6 = a1[2];
  v7 = a1[3];

  a2[2] = v6;
  a2[3] = v7;
  a2[4] = a1[4];
  v9 = a1[5];

  result = a2;
  a2[5] = v9;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214B95348(void *a1)
{
}

unint64_t sub_214B95398()
{
  v2 = qword_280C7DEE8;
  if (!qword_280C7DEE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DEE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t GroupedSearchItems.Section.items.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t GroupedSearchItems.Section.items.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t GroupedSearchItems.isEmpty.getter()
{
  v3 = *v0;

  v1 = sub_214B95398();
  v4 = MEMORY[0x21605D620](v3, &type metadata for GroupedSearchItems.Section.Kind, &unk_2826E66A8, v1);

  return v4 & 1;
}

uint64_t sub_214B955B8()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_280C7DEF8);
  __swift_project_value_buffer(v1, qword_280C7DEF8);
  return static Logger.mailUILogger<A>(for:)(&type metadata for GroupedSearchItems, &type metadata for GroupedSearchItems);
}

uint64_t sub_214B95614()
{
  if (qword_280C7DEF0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7DEF8);
}

uint64_t static GroupedSearchItems.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214B95614();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Void __swiftcall GroupedSearchItems.beginUpdate()()
{
  v37 = sub_214B95D20;
  v41 = sub_214B26858;
  v43 = sub_214A662DC;
  v45 = sub_214A662DC;
  v48 = sub_214A662E4;
  v60 = 0;
  v59 = 0;
  v28 = 0;
  v34 = sub_214CCDA74();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v29 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v30 = &v16 - v29;
  v60 = v0;
  sub_214B95CDC();
  v1 = v30;
  v35 = *(v31 + 32);
  v59 = v35;
  v2 = sub_214B95614();
  (*(v32 + 16))(v1, v2, v34);
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  v52 = sub_214CCDA54();
  v53 = sub_214CCFBB4();
  v36 = 17;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v38 = 32;
  v3 = swift_allocObject();
  v4 = v40;
  v42 = v3;
  *(v3 + 16) = v37;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v42;
  v49 = v5;
  *(v5 + 16) = v41;
  *(v5 + 24) = v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v47 = sub_214CD03C4();
  v50 = v7;

  v8 = v44;
  v9 = v50;
  *v50 = v43;
  v9[1] = v8;

  v10 = v46;
  v11 = v50;
  v50[2] = v45;
  v11[3] = v10;

  v12 = v49;
  v13 = v50;
  v50[4] = v48;
  v13[5] = v12;
  sub_214A63280();

  if (os_log_type_enabled(v52, v53))
  {
    v14 = v28;
    v21 = sub_214CCFF24();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v20 = 0;
    v22 = sub_214A632C4(0, v19, v19);
    v23 = sub_214A632C4(v20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v24 = &v58;
    v58 = v21;
    v25 = &v57;
    v57 = v22;
    v26 = &v56;
    v56 = v23;
    sub_214A6627C(0, &v58);
    sub_214A6627C(1, v24);
    v54 = v43;
    v55 = v44;
    sub_214A66290(&v54, v24, v25, v26);
    v27 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v54 = v45;
      v55 = v46;
      sub_214A66290(&v54, &v58, &v57, &v56);
      v18 = 0;
      v54 = v48;
      v55 = v49;
      sub_214A66290(&v54, &v58, &v57, &v56);
      _os_log_impl(&dword_214A5E000, v52, v53, "Begin update #%ld.", v21, 0xCu);
      v17 = 0;
      sub_214A669DC(v22, 0, v19);
      sub_214A669DC(v23, v17, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v15 = MEMORY[0x277D82BD8](v52);
  (*(v32 + 8))(v30, v34, v15);
}

void sub_214B95CDC()
{
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    *v2 = *v0 + 1;
  }
}

Swift::Void __swiftcall GroupedSearchItems.endUpdateAndRemoveOldSections()()
{
  v71 = 0;
  v70 = 0;
  v37 = 0;
  v45 = sub_214CCDA74();
  v39 = v45;
  v40 = *(v45 - 8);
  v44 = v40;
  v41 = v40;
  v42 = *(v40 + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v0 = v18 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v0;
  v71 = v1;
  v46 = *(v1 + 32);
  v70 = v46;
  v2 = sub_214B95614();
  (*(v44 + 16))(v0, v2, v45);
  v53 = 7;
  v54 = swift_allocObject();
  *(v54 + 16) = v46;
  v64 = sub_214CCDA54();
  v47 = v64;
  v63 = sub_214CCFBB4();
  v48 = v63;
  v49 = 17;
  v57 = swift_allocObject();
  v50 = v57;
  *(v57 + 16) = 0;
  v58 = swift_allocObject();
  v51 = v58;
  *(v58 + 16) = 8;
  v52 = 32;
  v3 = swift_allocObject();
  v4 = v54;
  v55 = v3;
  *(v3 + 16) = sub_214B95D20;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v55;
  v61 = v5;
  v56 = v5;
  *(v5 + 16) = sub_214B26858;
  *(v5 + 24) = v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v59 = sub_214CD03C4();
  v60 = v7;

  v8 = v57;
  v9 = v60;
  *v60 = sub_214A662DC;
  v9[1] = v8;

  v10 = v58;
  v11 = v60;
  v60[2] = sub_214A662DC;
  v11[3] = v10;

  v12 = v60;
  v13 = v61;
  v60[4] = sub_214A662E4;
  v12[5] = v13;
  sub_214A63280();

  if (os_log_type_enabled(v64, v63))
  {
    v14 = v37;
    v31 = sub_214CCFF24();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v29 = 0;
    v32 = sub_214A632C4(0, v28, v28);
    v30 = v32;
    v33 = sub_214A632C4(v29, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v69 = v31;
    v68 = v32;
    v67 = v33;
    v34 = &v69;
    sub_214A6627C(0, &v69);
    sub_214A6627C(1, v34);
    v65 = sub_214A662DC;
    v66 = v50;
    sub_214A66290(&v65, v34, &v68, &v67);
    v35 = v14;
    v36 = v14;
    if (v14)
    {
      v25 = 0;

      __break(1u);
    }

    else
    {
      v65 = sub_214A662DC;
      v66 = v51;
      sub_214A66290(&v65, &v69, &v68, &v67);
      v23 = 0;
      v24 = 0;
      v65 = sub_214A662E4;
      v66 = v56;
      sub_214A66290(&v65, &v69, &v68, &v67);
      v21 = 0;
      v22 = 0;
      _os_log_impl(&dword_214A5E000, v47, v48, "End update #%ld.", v27, 0xCu);
      v20 = 0;
      sub_214A669DC(v30, 0, v28);
      sub_214A669DC(v33, v20, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v26 = v21;
    }
  }

  else
  {
    v15 = v37;

    v26 = v15;
  }

  v16 = v26;

  (*(v41 + 8))(v43, v39);
  v18[3] = *v38;

  v18[0] = v18;
  MEMORY[0x28223BE20](v18);
  v18[-2] = v38;
  v18[1] = v18;
  MEMORY[0x28223BE20](v18);
  v18[2] = &v18[-4];
  v18[-2] = sub_214B993B8;
  v18[-1] = v17;
  sub_214B95398();
  v19 = sub_214CCF354();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *v38 = v19;
  }
}

BOOL sub_214B964E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_214BA27EC();
  v8 = sub_214CD03F4();

  v5 = (v8 & 1) != 0 || sub_214B965CC(a2, *(a4 + 32));

  return v5;
}

Swift::Void __swiftcall GroupedSearchItems.removeShowAllMailboxesSections()()
{

  sub_214B95398();
  *v0 = sub_214CCF354();
}

Swift::Bool __swiftcall GroupedSearchItems.containsAllMailboxesSuggestion()()
{
  v4[1] = 0;
  v3 = *v0;

  v4[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362D8, &qword_214CF1350);
  sub_214B99420();
  v2 = sub_214CCF774();
  sub_214A62278(v4);
  return v2 & 1;
}

Swift::Void __swiftcall GroupedSearchItems.replaceSections(with:)(Swift::OpaquePointer with)
{
  v86 = &v102;
  rawValue = with._rawValue;
  v65 = sub_214B9D0FC;
  v66 = sub_214B9ED00;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v100[0] = 0;
  v100[1] = 0;
  v99[0] = 0;
  v99[1] = 0;
  v97 = 0;
  v67 = 0;
  v68 = (*(*(type metadata accessor for SearchItem(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v69 = (&v21 - v68);
  v70 = type metadata accessor for GroupedSearchItems.InternalSection.Element(v2);
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70);
  v74 = (&v21 - v73);
  v75 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v21 - v73);
  v76 = (&v21 - v75);
  *(v86 + 7) = &v21 - v75;
  v77 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362E8, &qword_214CF1358) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](rawValue);
  v78 = (&v21 - v77);
  v79 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v86;
  v80 = (&v21 - v79);
  *(v86 + 6) = v7;
  *(v6 + 5) = v1;
  v82 = *v1;
  v83 = v1[1];
  v84 = v1[2];
  v85 = v1[3];
  v87 = v1[4];

  v8 = rawValue;
  v9 = v83;
  v10 = v84;
  v11 = v85;
  v12 = v86;
  v13 = v87;
  v88 = &v102;
  *v86 = v82;
  *(v12 + 1) = v9;
  *(v12 + 2) = v10;
  *(v12 + 3) = v11;
  *(v12 + 4) = v13;
  v89 = sub_214B97378(v8);
  sub_214B9525C(v88);
  v101 = v89;
  v100[2] = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362F0, &qword_214CF1360);
  v91 = sub_214B9951C();
  if (sub_214CCFA94())
  {

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {

    v99[2] = v89;
    sub_214CCFAC4();
    while (1)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362F8, &qword_214CF1368);
      sub_214CD01B4();
      v58 = *(v71 + 48);
      v59 = (v71 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v14 = v58(v80, 1, v70);
      v61 = v60;
      v62 = v58;
      v63 = v59;
      if (v14 == 1)
      {
        break;
      }

      v15 = v69;
      sub_214B995A4(v80, v76);
      sub_214B9A920((v76 + *(v70 + 20)), v15);
      SearchItem.section.getter(&v93);
      v56 = v93;
      sub_214B9C35C(v69);
      v57 = &v92;
      v92 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362D8, &qword_214CF1350);
      sub_214CCF324();

      sub_214B9ED0C(v76);
    }

    v49 = v63;
    v50 = v62;
    v51 = v61;
    sub_214A62278(v100);

    v98 = v89;
    sub_214CCFAC4();
    v52 = 0;
    v53 = 0;
    v54 = 0;
    for (i = 0; ; i = v40)
    {
      v44 = i;
      v43 = v54;
      v42 = v53;
      v41 = v52;
      sub_214CD01B4();
      v16 = v50(v78, 1, v70);
      v45 = v41;
      v46 = v42;
      v47 = v43;
      v48 = v44;
      if (v16 == 1)
      {
        break;
      }

      v97 = v76;
      v17 = v69;
      sub_214B995A4(v78, v76);
      sub_214B9A920((v76 + *(v70 + 20)), v17);
      SearchItem.section.getter(&v96);
      v18 = v64;
      v32 = v96;
      sub_214B9C35C(v69);
      v33 = 7;
      v38 = swift_allocObject();
      *(v38 + 16) = v18;

      sub_214A6B584(v41, v42);
      v39 = v38;
      sub_214B9D104(v76, v74);
      v34 = &v95;
      v95 = v32;
      v19 = swift_allocObject();
      v20 = v38;
      v37 = v19;
      *(v19 + 16) = v65;
      *(v19 + 24) = v20;

      sub_214A6B584(v43, v44);
      v40 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362D8, &qword_214CF1350);
      v35 = &v94;
      v36 = sub_214CCF3A4();
      sub_214CCF884();
      v36();

      sub_214B9ED0C(v76);
      v52 = v65;
      v53 = v39;
      v54 = v66;
    }

    v27 = v48;
    v26 = v47;
    v25 = v46;
    v24 = v45;
    sub_214A62278(v99);

    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
  }

  v23 = v31;
  v22 = v30;
  sub_214A6B584(v28, v29);
  sub_214A6B584(v22, v23);
}

uint64_t sub_214B97378(uint64_t a1)
{
  v5[6] = a1;
  memcpy(__dst, v1, sizeof(__dst));
  v5[5] = a1;
  sub_214B9506C(__dst, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36310, &qword_214CF1388);
  type metadata accessor for GroupedSearchItems.InternalSection.Element(0);
  sub_214B9FBC0();
  v3 = sub_214CCF6F4();
  sub_214B9525C(__dst);
  return v3;
}

uint64_t sub_214B97490(uint64_t a1)
{
  v5 = 0;
  v4 = a1;
  type metadata accessor for GroupedSearchItems.InternalSection.Element(0);
  v2 = sub_214CD03C4();

  v5 = v2;
  sub_214A61B48(&v4);
  return a1;
}

uint64_t sub_214B97504@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v3;
  return result;
}

Swift::Void __swiftcall GroupedSearchItems.removeAll()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362D0, &qword_214CF1348);
  sub_214CD03C4();
  sub_214B95398();
  *v0 = sub_214CCF344();
}

Swift::Void __swiftcall GroupedSearchItems.remove(_:)(Swift::OpaquePointer a1)
{
  memset(v3, 0, 24);
  v3[3] = a1._rawValue;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36310, &qword_214CF1388);
  sub_214B9FC48();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36320, &qword_214CF1390);
    sub_214CD01B4();
    if (!v2)
    {
      break;
    }

    v1.super.isa = v2;
    GroupedSearchItems.remove(_:)(v1);
    (MEMORY[0x277D82BD8])();
  }

  sub_214A62278(v3);
}

Swift::Void __swiftcall GroupedSearchItems.remove(_:)(MUISearchSuggestion a1)
{
  isa = a1.super.isa;
  memset(v52, 0, 24);
  v48 = 0;
  v37 = 0;
  v52[3] = a1.super.isa;
  v35 = *(v1 + 8);

  v51 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362C8, &qword_214CF1340);
  sub_214B9FCD0();
  sub_214CCFAC4();
  for (i = 0; ; i = v6)
  {
    v30 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36330, &qword_214CF1398);
    sub_214CD01B4();
    v31 = v49;
    v32 = v50;
    if (!v50)
    {
      sub_214A62278(v52);
      return;
    }

    v28 = v31;
    v29 = v32;
    v21 = v32;
    v22 = v31;
    v48 = v31;
    v47[39] = v31;
    v24 = v47;
    v23 = v47;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362D8, &qword_214CF1350);
    v26 = sub_214CCF3C4();
    v27 = v2;
    if (*(v2 + 8))
    {
      break;
    }

    v26(v23, 0);
    v14 = v30;
LABEL_6:
    v12 = v14;
    v13 = *v33;
    v44 = v22;
    sub_214B95398();
    sub_214CCF3D4();
    if (v46)
    {
      v9 = v46;

      sub_214A61B48(&v45);
      v39 = v9;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362F0, &qword_214CF1360);
      sub_214B9951C();
      v10 = sub_214CCFA94();

      v11 = v10 & 1;
    }

    else
    {
      sub_214A61B48(&v45);
      v11 = 2;
    }

    v43 = v11;
    if (v11 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v43;
    }

    if (v7)
    {
      v41 = 0;
      v42 = 0;
      v40 = v22;
      sub_214CCF3E4();
    }

    v6 = v12;
  }

  v3 = v30;
  v4 = isa;
  v18 = &v5;
  MEMORY[0x28223BE20](&v5);
  v15 = &v5 - 4;
  *(&v5 - 2) = isa;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362F0, &qword_214CF1360);
  v17 = sub_214B9FD84();
  sub_214B9FE0C();
  sub_214CCFB24();
  v19 = v3;
  v20 = v18;
  if (!v3)
  {
    v26(v23, 0);

    v14 = v19;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_214B97BC8(void *a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](a2);
  v4 = sub_214CD0434();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4 & 1;
}

void GroupedSearchItems.subscript.getter(void *a1@<X0>, void *a2@<X8>)
{
  v40 = &v56;
  v34 = a1;
  v30 = a2;
  v31 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0u;
  v50 = 0u;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v41 = 0;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362E8, &qword_214CF1358) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v33 = (v14 - v32);
  v35 = type metadata accessor for GroupedSearchItems.InternalSection.Element(v3);
  v36 = *(v35 - 8);
  v37 = v36;
  MEMORY[0x28223BE20](v34);
  v38 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v38;
  v54 = v5;
  v39 = *v2;
  v53 = v2;

  sub_214B95398();
  sub_214CCF334();
  v6 = *v40;
  v7 = v40[1];
  v52 = v57;
  v51 = v7;
  v50 = v6;
  for (i = v41; ; i = v14[0])
  {
    v26 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36348, &qword_214CF13A0);
    sub_214CCF384();
    v27 = v47;
    v28 = v48;
    v29 = v49;
    if (!v49)
    {
      sub_214B9FE94(&v50);
      v13 = type metadata accessor for SearchItem(0);
      (*(*(v13 - 8) + 56))(v30, 1);
      v15 = v26;
      return;
    }

    v23 = v27;
    v24 = v28;
    v25 = v29;
    v8 = v26;
    v17 = v29;
    LOBYTE(v44) = v27;
    v45 = v28;
    v46 = v29;

    v43 = v17;
    v9 = v34;
    v20 = v14;
    MEMORY[0x28223BE20](v14);
    v18 = &v14[-4];
    v14[-2] = v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362F0, &qword_214CF1360);
    sub_214B9FF18();
    sub_214CCF724();
    v21 = v8;
    v22 = v20;
    if (v8)
    {
      break;
    }

    sub_214A62278(&v43);
    v11 = (*(v37 + 48))(v33, 1, v35);
    v16 = v17;
    if (v11 != 1)
    {
      v14[1] = v16;
      sub_214B995A4(v33, v38);
      sub_214B9A920((v38 + *(v35 + 20)), v30);
      v12 = type metadata accessor for SearchItem(0);
      (*(*(v12 - 8) + 56))(v30, 0, 1);
      sub_214B9ED0C(v38);

      sub_214B9FE94(&v50);
      v15 = v21;
      return;
    }

    v14[0] = v21;
    sub_214B9FFA0(v33);
  }

  __break(1u);
}

uint64_t *GroupedSearchItems.subscript.getter(uint64_t a1)
{
  v41 = &v57;
  v35 = a1;
  v32 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0u;
  v51 = 0u;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v42 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362E8, &qword_214CF1358) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v34 = (&v12 - v33);
  v36 = type metadata accessor for GroupedSearchItems.InternalSection.Element(v2);
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x28223BE20](v35);
  v39 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = v39;
  v55 = v4;
  v40 = *v1;
  v54 = v1;

  sub_214B95398();
  sub_214CCF334();
  v5 = *v41;
  v6 = v41[1];
  v53 = v58;
  v52 = v6;
  v51 = v5;
  for (i = v42; ; i = v12)
  {
    v28 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36348, &qword_214CF13A0);
    sub_214CCF384();
    v29 = v48;
    v30 = v49;
    v31 = v50;
    if (!v50)
    {
      sub_214B9FE94(&v51);
      v16 = 0;
      v17 = v28;
      return v16;
    }

    v25 = v29;
    v26 = v30;
    v27 = v31;
    v7 = v28;
    v19 = v31;
    LOBYTE(v45) = v29;
    v46 = v30;
    v47 = v31;

    v44 = v19;
    v22 = &v12;
    MEMORY[0x28223BE20](&v12);
    v20 = &v12 - 4;
    *(&v12 - 2) = v8;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362F0, &qword_214CF1360);
    sub_214B9FF18();
    sub_214CCF724();
    v23 = v7;
    v24 = v22;
    if (v7)
    {
      break;
    }

    sub_214A62278(&v44);
    v9 = (*(v38 + 48))(v34, 1, v36);
    v18 = v19;
    if (v9 != 1)
    {
      v14 = v18;
      sub_214B995A4(v34, v39);
      v13 = *v39;
      v10 = v13;
      v15 = v13;
      sub_214B9ED0C(v39);

      sub_214B9FE94(&v51);
      v16 = v15;
      v17 = v23;
      return v16;
    }

    v12 = v23;
    sub_214B9FFA0(v34);
  }

  result = v24;
  __break(1u);
  return result;
}

uint64_t sub_214B986B8(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v27 = 0;
  v26 = 0;
  v13 = 0;
  v22 = sub_214CCD2B4();
  v18 = *(v22 - 8);
  v19 = v22 - 8;
  v11 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = &v11 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v21 = &v11 - v12;
  v14 = (*(*(type metadata accessor for SearchItem(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v5 = (&v11 - v14);
  v17 = (&v11 - v14);
  v27 = v6;
  v26 = v7;
  v9 = type metadata accessor for GroupedSearchItems.InternalSection.Element(v8);
  sub_214B9A920((v15 + *(v9 + 20)), v5);
  SearchItem.id.getter(v21);
  sub_214B9C35C(v17);
  SearchItem.id.getter(v20);
  v25 = sub_214CCD284();
  v24 = *(v18 + 8);
  v23 = v18 + 8;
  v24(v20, v22);
  v24(v21, v22);
  return v25 & 1;
}

uint64_t GroupedSearchItems.suggestions(in:)(uint64_t a1)
{
  memset(__b, 0, 0x28uLL);
  v18 = 0;
  __b[5] = a1;
  v6 = *v1;
  v10 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  __b[0] = *v1;
  __b[1] = v10;
  __b[2] = v7;
  __b[3] = v8;
  __b[4] = v9;

  v19 = v10;
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362C8, &qword_214CF1340);
  sub_214B951D4();
  sub_214CCF724();
  MEMORY[0x277D82BD8](a1);
  sub_214A62278(&v19);
  v5 = v20;
  if (v21)
  {
    MEMORY[0x277D82BD8](v21);
    v4 = v5;
  }

  else
  {
    v4 = 14;
  }

  if (v4 == 14)
  {
    sub_214BA0E0C();
    return sub_214CD03C4();
  }

  else
  {
    v18 = v4;
    v13 = v6;
    v14 = v10;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v12 = v4;
    return GroupedSearchItems.suggestions(in:)(&v12);
  }
}

uint64_t sub_214B98AD0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](*(a1 + 8));
  MEMORY[0x277D82BE0](a2);
  v4 = sub_214CD0434();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t GroupedSearchItems.suggestions(in:)(char *a1)
{
  v14 = 0;
  v13 = 0;
  v14 = *a1;

  v10 = v14;
  sub_214B95398();
  sub_214CCF3D4();

  if (v11)
  {

    v8 = v11;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362F0, &qword_214CF1360);
    v5 = sub_214BA0E0C();
    v1 = sub_214B9951C();
    v7 = sub_214A6E4F4(sub_214B98D40, 0, v4, v5, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v6);
    sub_214A62278(&v8);
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  v9 = v3;
  if (v3)
  {
    return v9;
  }

  sub_214BA0E0C();
  v12 = sub_214CD03C4();
  if (v9)
  {
    sub_214A62278(&v9);
  }

  return v12;
}

void sub_214B98D40(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
}

uint64_t sub_214B98D94(char *a1)
{
  v6 = 0;
  v5[1] = 0;
  v6 = *a1;
  v4 = *(v1 + 8);

  v5[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA362C8, &qword_214CF1340);
  sub_214B951D4();
  v3 = sub_214CCF774();
  sub_214A62278(v5);
  return v3 & 1;
}

void *sub_214B98EF4@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v12 = a3;
  v15 = a1;
  v14 = a2;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36350, &qword_214CF15C0);
  v13 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v25 = (&v11 - v13);
  v26 = type metadata accessor for SearchItem(0);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v17 = (&v11 - v16);
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v19 = (&v11 - v18);
  v32 = &v11 - v18;
  v21 = *v6;
  v31 = v21;
  v30 = v7;
  v22 = *(v7 + 16);
  v20 = *(v7 + 24);

  v22(v21);
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    sub_214BA2864(v25);
  }

  else
  {
    sub_214BA3648(v25, v19);

    v11 = __dst;
    memcpy(__dst, v14, sizeof(__dst));
    SearchItem.section.getter(&v28);
    v27 = v28;
    if (sub_214B98D94(&v27))
    {
      MEMORY[0x277D82BE0](v21);
      sub_214B9A920(v19, v17);
      sub_214B991EC(v21, v17, v12);
      v8 = type metadata accessor for GroupedSearchItems.InternalSection.Element(0);
      (*(*(v8 - 8) + 56))(v12, 0, 1);
      return sub_214B9C35C(v19);
    }

    sub_214B9C35C(v19);
  }

  v10 = type metadata accessor for GroupedSearchItems.InternalSection.Element(0);
  return (*(*(v10 - 8) + 56))(v12, 1);
}

uint64_t sub_214B991EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = type metadata accessor for GroupedSearchItems.InternalSection.Element(0);
  return sub_214BA3648(a2, a3 + *(v3 + 20));
}

double sub_214B99260(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void *sub_214B992EC(void *a1)
{
  v8 = a1;
  v6 = 0;
  v5 = (*(*(type metadata accessor for SearchItem(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = (&v5 - v5);
  sub_214B9A920(v2, (&v5 - v5));
  v3 = type metadata accessor for GroupedSearchItems.InternalSection.Element(v6);
  sub_214BA0E9C(v7, (v1 + *(v3 + 20)));
  return sub_214B9C35C(v8);
}

unint64_t sub_214B99420()
{
  v2 = qword_27CA362E0;
  if (!qword_27CA362E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362D8, &qword_214CF1350);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA362E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for GroupedSearchItems.InternalSection.Element(uint64_t a1)
{
  v2 = qword_280C7DF90;
  if (!qword_280C7DF90)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_214B9951C()
{
  v2 = qword_280C7CF20;
  if (!qword_280C7CF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362F0, &qword_214CF1360);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF20);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B995A4(void *a1, void *a2)
{
  *a2 = *a1;
  v84 = *(type metadata accessor for GroupedSearchItems.InternalSection.Element(0) + 20);
  type metadata accessor for SearchItem(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v78 = a2 + v84;
        *v78 = *(a1 + v84);
        *(v78 + 2) = *(a1 + v84 + 16);
        v77 = type metadata accessor for SearchItem.Contact(0);
        v76 = a2 + v84 + *(v77 + 24);
        v75 = a1 + v84 + *(v77 + 24);
        v3 = sub_214CCD2B4();
        (*(*(v3 - 8) + 32))(v76, v75);
        *&v78[*(v77 + 28)] = *(a1 + v84 + *(v77 + 28));
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v4 = sub_214CCD2B4();
        v73 = a2 + v84;
        (*(*(v4 - 8) + 32))();
        v74 = type metadata accessor for SearchItem.Photo(0);
        *&v73[v74[5]] = *(a1 + v84 + v74[5]);
        *&v73[v74[6]] = *(a1 + v84 + v74[6]);
        *&v73[v74[7]] = *(a1 + v84 + v74[7]);
        *&v73[v74[8]] = *(a1 + v84 + v74[8]);
        swift_storeEnumTagMultiPayload();
        break;
      case 3:
        v5 = sub_214CCD2B4();
        v72 = a2 + v84;
        (*(*(v5 - 8) + 32))();
        v6 = type metadata accessor for SearchItem.Location(0);
        *&v72[v6[5]] = *(a1 + v84 + v6[5]);
        *&v72[v6[6]] = *(a1 + v84 + v6[6]);
        *&v72[v6[7]] = *(a1 + v84 + v6[7]);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v7 = sub_214CCD2B4();
        v71 = a2 + v84;
        (*(*(v7 - 8) + 32))();
        v70 = type metadata accessor for SearchItem.Document(0);
        *&v71[v70[5]] = *(a1 + v84 + v70[5]);
        *&v71[v70[6]] = *(a1 + v84 + v70[6]);
        *&v71[v70[7]] = *(a1 + v84 + v70[7]);
        v69 = a2 + v84 + v70[8];
        v68 = a1 + v84 + v70[8];
        v8 = sub_214CCD154();
        (*(*(v8 - 8) + 32))(v69, v68);
        *&v71[v70[9]] = *(a1 + v84 + v70[9]);
        swift_storeEnumTagMultiPayload();
        break;
      case 5:
        v9 = sub_214CCD2B4();
        v66 = a2 + v84;
        (*(*(v9 - 8) + 32))();
        v67 = type metadata accessor for SearchItem.LegacySuggested(0);
        *&v66[v67[5]] = *(a1 + v84 + v67[5]);
        *&v66[v67[6]] = *(a1 + v84 + v67[6]);
        *&v66[v67[7]] = *(a1 + v84 + v67[7]);
        *&v66[v67[8]] = *(a1 + v84 + v67[8]);
        v66[v67[9]] = *(a1 + v84 + v67[9]);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        v65 = a2 + v84;
        *v65 = *(a1 + v84);
        *(v65 + 2) = *(a1 + v84 + 16);
        v64 = type metadata accessor for SearchItem.Generic(0);
        v63 = a2 + v84 + v64[6];
        v62 = a1 + v84 + v64[6];
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 32))(v63, v62);
        *&v65[v64[7]] = *(a1 + v84 + v64[7]);
        *&v65[v64[8]] = *(a1 + v84 + v64[8]);
        *&v65[v64[9]] = *(a1 + v84 + v64[9]);
        *&v65[v64[10]] = *(a1 + v84 + v64[10]);
        v65[v64[11]] = *(a1 + v84 + v64[11]);
        *&v65[v64[12]] = *(a1 + v84 + v64[12]);
        swift_storeEnumTagMultiPayload();
        break;
      case 7:
        v61 = a2 + v84;
        *v61 = *(a1 + v84);
        *(v61 + 2) = *(a1 + v84 + 16);
        v60 = type metadata accessor for SearchItem.Generic(0);
        v59 = a2 + v84 + v60[6];
        v58 = a1 + v84 + v60[6];
        v11 = sub_214CCD2B4();
        (*(*(v11 - 8) + 32))(v59, v58);
        *&v61[v60[7]] = *(a1 + v84 + v60[7]);
        *&v61[v60[8]] = *(a1 + v84 + v60[8]);
        *&v61[v60[9]] = *(a1 + v84 + v60[9]);
        *&v61[v60[10]] = *(a1 + v84 + v60[10]);
        v61[v60[11]] = *(a1 + v84 + v60[11]);
        *&v61[v60[12]] = *(a1 + v84 + v60[12]);
        swift_storeEnumTagMultiPayload();
        break;
      case 8:
        v12 = sub_214CCD2B4();
        v57 = a2 + v84;
        (*(*(v12 - 8) + 32))();
        v13 = type metadata accessor for SearchItem.TopHit(0);
        *&v57[*(v13 + 20)] = *(a1 + v84 + *(v13 + 20));
        *&v57[*(v13 + 24)] = *(a1 + v84 + *(v13 + 24));
        swift_storeEnumTagMultiPayload();
        break;
      case 9:
        v14 = sub_214CCD2B4();
        v50 = a2 + v84;
        (*(*(v14 - 8) + 32))();
        v51 = type metadata accessor for SearchItem.InstantAnswer(0);
        *&v50[v51[5]] = *(a1 + v84 + v51[5]);
        *&v50[v51[6]] = *(a1 + v84 + v51[6]);
        *&v50[v51[7]] = *(a1 + v84 + v51[7]);
        *&v50[v51[8]] = *(a1 + v84 + v51[8]);
        v46 = a2 + v84 + v51[9];
        v45 = a1 + v84 + v51[9];
        v48 = sub_214CCCEB4();
        v47 = *(v48 - 8);
        v49 = *(v47 + 32);
        v49(v46, v45);
        (v49)(a2 + v84 + v51[10], a1 + v84 + v51[10], v48);
        *&v50[v51[11]] = *(a1 + v84 + v51[11]);
        __dst = a2 + v84 + v51[12];
        __src = a1 + v84 + v51[12];
        v54 = sub_214CCD154();
        v55 = *(v54 - 8);
        v56 = *(v55 + 48);
        if ((v56)(__src, 1))
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
          memcpy(__dst, __src, *(*(v15 - 8) + 64));
        }

        else
        {
          (*(v55 + 32))(__dst, __src, v54);
          (*(v55 + 56))(__dst, 0, 1, v54);
        }

        v40 = a2 + v84 + v51[13];
        v41 = a1 + v84 + v51[13];
        v42 = sub_214CCD2F4();
        v43 = *(v42 - 8);
        v44 = *(v43 + 48);
        if ((v44)(v41, 1))
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v40, v41, *(*(v16 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(v40, v41, v42);
          (*(v43 + 56))(v40, 0, 1, v42);
        }

        v38 = a2 + v84 + v51[14];
        v39 = a1 + v84 + v51[14];
        if (v44())
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v38, v39, *(*(v17 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(v38, v39, v42);
          (*(v43 + 56))(v38, 0, 1, v42);
        }

        v36 = a2 + v84 + v51[15];
        v37 = a1 + v84 + v51[15];
        if (v56())
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
          memcpy(v36, v37, *(*(v18 - 8) + 64));
        }

        else
        {
          (*(v55 + 32))(v36, v37, v54);
          (*(v55 + 56))(v36, 0, 1, v54);
        }

        v33 = a2 + v84;
        *&v33[v51[16]] = *(a1 + v84 + v51[16]);
        *&v33[v51[17]] = *(a1 + v84 + v51[17]);
        *&v33[v51[18]] = *(a1 + v84 + v51[18]);
        *&v33[v51[19]] = *(a1 + v84 + v51[19]);
        (v49)(a2 + v84 + v51[20], a1 + v84 + v51[20], v48);
        v34 = a2 + v84 + v51[21];
        v35 = a1 + v84 + v51[21];
        if ((*(v47 + 48))())
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
          memcpy(v34, v35, *(*(v19 - 8) + 64));
        }

        else
        {
          (v49)(v34, v35, v48);
          (*(v47 + 56))(v34, 0, 1, v48);
        }

        v31 = a2 + v84 + v51[22];
        v32 = a1 + v84 + v51[22];
        if (v44())
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v31, v32, *(*(v20 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(v31, v32, v42);
          (*(v43 + 56))(v31, 0, 1, v42);
        }

        v21 = a2 + v84;
        *&v21[v51[23]] = *(a1 + v84 + v51[23]);
        *&v21[v51[24]] = *(a1 + v84 + v51[24]);
        *&v21[v51[25]] = *(a1 + v84 + v51[25]);
        *&v21[v51[26]] = *(a1 + v84 + v51[26]);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        v30 = a2 + v84;
        *(a2 + v84) = *(a1 + v84);
        v29 = type metadata accessor for SearchItem.Link(0);
        v26 = a2 + v84 + v29[5];
        v25 = a1 + v84 + v29[5];
        v22 = sub_214CCD2B4();
        (*(*(v22 - 8) + 32))(v26, v25);
        v28 = a2 + v84 + v29[6];
        v27 = a1 + v84 + v29[6];
        v23 = sub_214CCD154();
        (*(*(v23 - 8) + 32))(v28, v27);
        *&v30[v29[7]] = *(a1 + v84 + v29[7]);
        *&v30[v29[8]] = *(a1 + v84 + v29[8]);
        *&v30[v29[9]] = *(a1 + v84 + v29[9]);
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  else
  {
    v82 = a2 + v84;
    *v82 = *(a1 + v84);
    *(v82 + 2) = *(a1 + v84 + 16);
    v81 = type metadata accessor for SearchItem.Generic(0);
    v80 = a2 + v84 + v81[6];
    v79 = a1 + v84 + v81[6];
    v2 = sub_214CCD2B4();
    (*(*(v2 - 8) + 32))(v80, v79);
    *&v82[v81[7]] = *(a1 + v84 + v81[7]);
    *&v82[v81[8]] = *(a1 + v84 + v81[8]);
    *&v82[v81[9]] = *(a1 + v84 + v81[9]);
    *&v82[v81[10]] = *(a1 + v84 + v81[10]);
    v82[v81[11]] = *(a1 + v84 + v81[11]);
    *&v82[v81[12]] = *(a1 + v84 + v81[12]);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_214B9A920(void *a1, void *a2)
{
  type metadata accessor for SearchItem(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        *a2 = *a1;
        v182 = a1[1];

        a2[1] = v182;
        v183 = a1[2];

        a2[2] = v183;
        v186 = type metadata accessor for SearchItem.Contact(0);
        v185 = a2 + *(v186 + 24);
        v184 = a1 + *(v186 + 24);
        v5 = sub_214CCD2B4();
        (*(*(v5 - 8) + 16))(v185, v184);
        v187 = (a2 + *(v186 + 28));
        v6 = (a1 + *(v186 + 28));
        *v187 = *v6;
        v188 = v6[1];

        v187[1] = v188;
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v7 = sub_214CCD2B4();
        (*(*(v7 - 8) + 16))(a2, a1);
        v179 = type metadata accessor for SearchItem.Photo(0);
        v173 = (a2 + v179[5]);
        v8 = (a1 + v179[5]);
        *v173 = *v8;
        v174 = v8[1];

        v173[1] = v174;
        v175 = (a2 + v179[6]);
        v9 = (a1 + v179[6]);
        *v175 = *v9;
        v176 = v9[1];

        v175[1] = v176;
        v177 = v179[7];
        v178 = *(a1 + v177);
        MEMORY[0x277D82BE0](v178);
        *(a2 + v177) = v178;
        v180 = v179[8];
        v181 = *(a1 + v180);

        *(a2 + v180) = v181;
        swift_storeEnumTagMultiPayload();
        break;
      case 3:
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 16))(a2, a1);
        v168 = type metadata accessor for SearchItem.Location(0);
        v166 = (a2 + v168[5]);
        v11 = (a1 + v168[5]);
        *v166 = *v11;
        v167 = v11[1];

        v166[1] = v167;
        v169 = (a2 + v168[6]);
        v12 = (a1 + v168[6]);
        *v169 = *v12;
        v170 = v12[1];

        v169[1] = v170;
        v171 = v168[7];
        v172 = *(a1 + v171);

        *(a2 + v171) = v172;
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v13 = sub_214CCD2B4();
        (*(*(v13 - 8) + 16))(a2, a1);
        v163 = type metadata accessor for SearchItem.Document(0);
        v155 = v163[5];
        v156 = *(a1 + v155);

        *(a2 + v155) = v156;
        v157 = (a2 + v163[6]);
        v14 = (a1 + v163[6]);
        *v157 = *v14;
        v158 = v14[1];

        v157[1] = v158;
        v159 = (a2 + v163[7]);
        v15 = (a1 + v163[7]);
        *v159 = *v15;
        v160 = v15[1];

        v159[1] = v160;
        v162 = a2 + v163[8];
        v161 = a1 + v163[8];
        v16 = sub_214CCD154();
        (*(*(v16 - 8) + 16))(v162, v161);
        v164 = (a2 + v163[9]);
        v17 = (a1 + v163[9]);
        *v164 = *v17;
        v165 = v17[1];

        v164[1] = v165;
        swift_storeEnumTagMultiPayload();
        break;
      case 5:
        v18 = sub_214CCD2B4();
        (*(*(v18 - 8) + 16))(a2, a1);
        v154 = type metadata accessor for SearchItem.LegacySuggested(0);
        v146 = v154[5];
        v147 = *(a1 + v146);
        MEMORY[0x277D82BE0](v147);
        *(a2 + v146) = v147;
        v148 = (a2 + v154[6]);
        v19 = (a1 + v154[6]);
        *v148 = *v19;
        v149 = v19[1];

        v148[1] = v149;
        v150 = (a2 + v154[7]);
        v20 = (a1 + v154[7]);
        *v150 = *v20;
        v151 = v20[1];

        v150[1] = v151;
        v152 = v154[8];
        v153 = *(a1 + v152);
        MEMORY[0x277D82BE0](v153);
        *(a2 + v152) = v153;
        *(a2 + v154[9]) = *(a1 + v154[9]);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        *a2 = *a1;
        v132 = a1[1];

        a2[1] = v132;
        a2[2] = a1[2];
        v141 = type metadata accessor for SearchItem.Generic(0);
        v134 = a2 + v141[6];
        v133 = a1 + v141[6];
        v21 = sub_214CCD2B4();
        (*(*(v21 - 8) + 16))(v134, v133);
        v135 = v141[7];
        v136 = *(a1 + v135);
        MEMORY[0x277D82BE0](v136);
        *(a2 + v135) = v136;
        v137 = v141[8];
        v138 = *(a1 + v137);
        MEMORY[0x277D82BE0](v138);
        *(a2 + v137) = v138;
        v139 = v141[9];
        v140 = *(a1 + v139);
        MEMORY[0x277D82BE0](v140);
        *(a2 + v139) = v140;
        v142 = (a2 + v141[10]);
        v22 = (a1 + v141[10]);
        *v142 = *v22;
        v143 = v22[1];

        v142[1] = v143;
        *(a2 + v141[11]) = *(a1 + v141[11]);
        v144 = (a2 + v141[12]);
        v23 = (a1 + v141[12]);
        *v144 = *v23;
        v145 = v23[1];

        v144[1] = v145;
        swift_storeEnumTagMultiPayload();
        break;
      case 7:
        *a2 = *a1;
        v118 = a1[1];

        a2[1] = v118;
        a2[2] = a1[2];
        v127 = type metadata accessor for SearchItem.Generic(0);
        v120 = a2 + v127[6];
        v119 = a1 + v127[6];
        v24 = sub_214CCD2B4();
        (*(*(v24 - 8) + 16))(v120, v119);
        v121 = v127[7];
        v122 = *(a1 + v121);
        MEMORY[0x277D82BE0](v122);
        *(a2 + v121) = v122;
        v123 = v127[8];
        v124 = *(a1 + v123);
        MEMORY[0x277D82BE0](v124);
        *(a2 + v123) = v124;
        v125 = v127[9];
        v126 = *(a1 + v125);
        MEMORY[0x277D82BE0](v126);
        *(a2 + v125) = v126;
        v128 = (a2 + v127[10]);
        v25 = (a1 + v127[10]);
        *v128 = *v25;
        v129 = v25[1];

        v128[1] = v129;
        *(a2 + v127[11]) = *(a1 + v127[11]);
        v130 = (a2 + v127[12]);
        v26 = (a1 + v127[12]);
        *v130 = *v26;
        v131 = v26[1];

        v130[1] = v131;
        swift_storeEnumTagMultiPayload();
        break;
      case 8:
        v27 = sub_214CCD2B4();
        (*(*(v27 - 8) + 16))(a2, a1);
        v115 = type metadata accessor for SearchItem.TopHit(0);
        v113 = *(v115 + 20);
        v114 = *(a1 + v113);
        MEMORY[0x277D82BE0](v114);
        *(a2 + v113) = v114;
        v116 = *(v115 + 24);
        v117 = *(a1 + v116);

        *(a2 + v116) = v117;
        swift_storeEnumTagMultiPayload();
        break;
      case 9:
        v28 = sub_214CCD2B4();
        (*(*(v28 - 8) + 16))(a2, a1);
        v107 = type metadata accessor for SearchItem.InstantAnswer(0);
        *(a2 + v107[5]) = *(a1 + v107[5]);
        v94 = (a2 + v107[6]);
        v29 = (a1 + v107[6]);
        *v94 = *v29;
        v95 = v29[1];

        v94[1] = v95;
        v96 = (a2 + v107[7]);
        v30 = (a1 + v107[7]);
        *v96 = *v30;
        v97 = v30[1];

        v96[1] = v97;
        v98 = (a2 + v107[8]);
        v31 = (a1 + v107[8]);
        *v98 = *v31;
        v99 = v31[1];

        v98[1] = v99;
        v101 = a2 + v107[9];
        v100 = a1 + v107[9];
        v103 = sub_214CCCEB4();
        v102 = *(v103 - 8);
        v104 = *(v102 + 16);
        v104(v101, v100);
        (v104)(a2 + v107[10], a1 + v107[10], v103);
        v105 = (a2 + v107[11]);
        v32 = (a1 + v107[11]);
        *v105 = *v32;
        v106 = v32[1];

        v105[1] = v106;
        __dst = a2 + v107[12];
        __src = a1 + v107[12];
        v110 = sub_214CCD154();
        v111 = *(v110 - 8);
        v112 = *(v111 + 48);
        if ((v112)(__src, 1))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
          memcpy(__dst, __src, *(*(v33 - 8) + 64));
        }

        else
        {
          (*(v111 + 16))(__dst, __src, v110);
          (*(v111 + 56))(__dst, 0, 1, v110);
        }

        v89 = a2 + v107[13];
        v90 = a1 + v107[13];
        v91 = sub_214CCD2F4();
        v92 = *(v91 - 8);
        v93 = *(v92 + 48);
        if ((v93)(v90, 1))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v89, v90, *(*(v34 - 8) + 64));
        }

        else
        {
          (*(v92 + 16))(v89, v90, v91);
          (*(v92 + 56))(v89, 0, 1, v91);
        }

        v87 = a2 + v107[14];
        v88 = a1 + v107[14];
        if (v93())
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v87, v88, *(*(v35 - 8) + 64));
        }

        else
        {
          (*(v92 + 16))(v87, v88, v91);
          (*(v92 + 56))(v87, 0, 1, v91);
        }

        v85 = a2 + v107[15];
        v86 = a1 + v107[15];
        if (v112())
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
          memcpy(v85, v86, *(*(v36 - 8) + 64));
        }

        else
        {
          (*(v111 + 16))(v85, v86, v110);
          (*(v111 + 56))(v85, 0, 1, v110);
        }

        v75 = (a2 + v107[16]);
        v37 = (a1 + v107[16]);
        *v75 = *v37;
        v76 = v37[1];

        v75[1] = v76;
        v38 = v107[17];
        v77 = a2 + v38;
        *(a2 + v38) = *(a1 + v38);
        v78 = *(a1 + v38 + 8);

        *(v77 + 1) = v78;
        v39 = v107[18];
        v79 = a2 + v39;
        *(a2 + v39) = *(a1 + v39);
        v80 = *(a1 + v39 + 8);

        *(v79 + 1) = v80;
        v40 = v107[19];
        v81 = a2 + v40;
        *(a2 + v40) = *(a1 + v40);
        v82 = *(a1 + v40 + 8);

        *(v81 + 1) = v82;
        (v104)(a2 + v107[20], a1 + v107[20], v103);
        v83 = a2 + v107[21];
        v84 = a1 + v107[21];
        if ((*(v102 + 48))())
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
          memcpy(v83, v84, *(*(v41 - 8) + 64));
        }

        else
        {
          (v104)(v83, v84, v103);
          (*(v102 + 56))(v83, 0, 1, v103);
        }

        v73 = a2 + v107[22];
        v74 = a1 + v107[22];
        if (v93())
        {
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v73, v74, *(*(v42 - 8) + 64));
        }

        else
        {
          (*(v92 + 16))(v73, v74, v91);
          (*(v92 + 56))(v73, 0, 1, v91);
        }

        v65 = (a2 + v107[23]);
        v43 = (a1 + v107[23]);
        *v65 = *v43;
        v66 = v43[1];

        v65[1] = v66;
        v44 = v107[24];
        v67 = a2 + v44;
        *(a2 + v44) = *(a1 + v44);
        v68 = *(a1 + v44 + 8);

        *(v67 + 1) = v68;
        v45 = v107[25];
        v69 = a2 + v45;
        *(a2 + v45) = *(a1 + v45);
        v70 = *(a1 + v45 + 8);

        *(v69 + 1) = v70;
        v46 = v107[26];
        v71 = a2 + v46;
        *(a2 + v46) = *(a1 + v46);
        v72 = *(a1 + v46 + 8);

        *(v71 + 1) = v72;
        swift_storeEnumTagMultiPayload();
        break;
      default:
        v53 = *a1;

        *a2 = v53;
        v60 = type metadata accessor for SearchItem.Link(0);
        v55 = a2 + v60[5];
        v54 = a1 + v60[5];
        v47 = sub_214CCD2B4();
        (*(*(v47 - 8) + 16))(v55, v54);
        v57 = a2 + v60[6];
        v56 = a1 + v60[6];
        v48 = sub_214CCD154();
        (*(*(v48 - 8) + 16))(v57, v56);
        v58 = (a2 + v60[7]);
        v49 = (a1 + v60[7]);
        *v58 = *v49;
        v59 = v49[1];

        v58[1] = v59;
        v61 = (a2 + v60[8]);
        v50 = (a1 + v60[8]);
        *v61 = *v50;
        v62 = v50[1];

        v61[1] = v62;
        v63 = (a2 + v60[9]);
        v51 = (a1 + v60[9]);
        *v63 = *v51;
        v64 = v51[1];

        v63[1] = v64;
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  else
  {
    *a2 = *a1;
    v189 = a1[1];

    a2[1] = v189;
    a2[2] = a1[2];
    v198 = type metadata accessor for SearchItem.Generic(0);
    v191 = a2 + v198[6];
    v190 = a1 + v198[6];
    v2 = sub_214CCD2B4();
    (*(*(v2 - 8) + 16))(v191, v190);
    v192 = v198[7];
    v193 = *(a1 + v192);
    MEMORY[0x277D82BE0](v193);
    *(a2 + v192) = v193;
    v194 = v198[8];
    v195 = *(a1 + v194);
    MEMORY[0x277D82BE0](v195);
    *(a2 + v194) = v195;
    v196 = v198[9];
    v197 = *(a1 + v196);
    MEMORY[0x277D82BE0](v197);
    *(a2 + v196) = v197;
    v199 = (a2 + v198[10]);
    v3 = (a1 + v198[10]);
    *v199 = *v3;
    v200 = v3[1];

    v199[1] = v200;
    *(a2 + v198[11]) = *(a1 + v198[11]);
    v201 = (a2 + v198[12]);
    v4 = (a1 + v198[12]);
    *v201 = *v4;
    v202 = v4[1];

    v201[1] = v202;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_214B9C35C(void *a1)
{
  type metadata accessor for SearchItem(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:

        v44 = a1 + *(type metadata accessor for SearchItem.Contact(0) + 24);
        v2 = sub_214CCD2B4();
        (*(*(v2 - 8) + 8))(v44);

        break;
      case 2:
        v3 = sub_214CCD2B4();
        (*(*(v3 - 8) + 8))(a1);
        v43 = type metadata accessor for SearchItem.Photo(0);

        MEMORY[0x277D82BD8](*(a1 + *(v43 + 28)));

        break;
      case 3:
        v4 = sub_214CCD2B4();
        (*(*(v4 - 8) + 8))(a1);
        type metadata accessor for SearchItem.Location(0);

        break;
      case 4:
        v5 = sub_214CCD2B4();
        (*(*(v5 - 8) + 8))(a1);
        v42 = type metadata accessor for SearchItem.Document(0);

        v41 = a1 + *(v42 + 32);
        v6 = sub_214CCD154();
        (*(*(v6 - 8) + 8))(v41);

        break;
      case 5:
        v7 = sub_214CCD2B4();
        (*(*(v7 - 8) + 8))(a1);
        v40 = type metadata accessor for SearchItem.LegacySuggested(0);
        MEMORY[0x277D82BD8](*(a1 + *(v40 + 20)));

        MEMORY[0x277D82BD8](*(a1 + *(v40 + 32)));
        break;
      case 6:

        v39 = type metadata accessor for SearchItem.Generic(0);
        v38 = a1 + v39[6];
        v8 = sub_214CCD2B4();
        (*(*(v8 - 8) + 8))(v38);
        MEMORY[0x277D82BD8](*(a1 + v39[7]));
        MEMORY[0x277D82BD8](*(a1 + v39[8]));
        MEMORY[0x277D82BD8](*(a1 + v39[9]));

        break;
      case 7:

        v37 = type metadata accessor for SearchItem.Generic(0);
        v36 = a1 + v37[6];
        v9 = sub_214CCD2B4();
        (*(*(v9 - 8) + 8))(v36);
        MEMORY[0x277D82BD8](*(a1 + v37[7]));
        MEMORY[0x277D82BD8](*(a1 + v37[8]));
        MEMORY[0x277D82BD8](*(a1 + v37[9]));

        break;
      case 8:
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 8))(a1);
        v35 = type metadata accessor for SearchItem.TopHit(0);
        MEMORY[0x277D82BD8](*(a1 + *(v35 + 20)));

        break;
      case 9:
        v11 = sub_214CCD2B4();
        (*(*(v11 - 8) + 8))(a1);
        v30 = type metadata accessor for SearchItem.InstantAnswer(0);

        v26 = a1 + v30[9];
        v28 = sub_214CCCEB4();
        v27 = *(v28 - 8);
        v29 = *(v27 + 8);
        v29(v26);
        (v29)(a1 + v30[10], v28);

        v31 = a1 + v30[12];
        v32 = sub_214CCD154();
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        if (!(v34)(v31, 1))
        {
          (*(v33 + 8))(v31, v32);
        }

        v22 = a1 + v30[13];
        v23 = sub_214CCD2F4();
        v24 = *(v23 - 8);
        v25 = *(v24 + 48);
        if (!(v25)(v22, 1))
        {
          (*(v24 + 8))(v22, v23);
        }

        v21 = a1 + v30[14];
        if (!v25())
        {
          (*(v24 + 8))(v21, v23);
        }

        v20 = a1 + v30[15];
        if (!v34())
        {
          (*(v33 + 8))(v20, v32);
        }

        (v29)(a1 + v30[20], v28);
        v19 = a1 + v30[21];
        if (!(*(v27 + 48))())
        {
          (v29)(v19, v28);
        }

        v18 = a1 + v30[22];
        if (!v25())
        {
          (*(v24 + 8))(v18, v23);
        }

        break;
      case 10:

        v17 = type metadata accessor for SearchItem.Link(0);
        v15 = a1 + *(v17 + 20);
        v12 = sub_214CCD2B4();
        (*(*(v12 - 8) + 8))(v15);
        v16 = a1 + *(v17 + 24);
        v13 = sub_214CCD154();
        (*(*(v13 - 8) + 8))(v16);

        break;
    }
  }

  else
  {

    v46 = type metadata accessor for SearchItem.Generic(0);
    v45 = a1 + v46[6];
    v1 = sub_214CCD2B4();
    (*(*(v1 - 8) + 8))(v45);
    MEMORY[0x277D82BD8](*(a1 + v46[7]));
    MEMORY[0x277D82BD8](*(a1 + v46[8]));
    MEMORY[0x277D82BD8](*(a1 + v46[9]));
  }

  return a1;
}

void *sub_214B9D104(void *a1, void *a2)
{
  v213 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v213;
  v214 = *(type metadata accessor for GroupedSearchItems.InternalSection.Element(0) + 20);
  type metadata accessor for SearchItem(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v194 = a2 + v214;
        *(a2 + v214) = *(a1 + v214);
        v189 = *(a1 + v214 + 8);

        *(v194 + 1) = v189;
        v190 = *(a1 + v214 + 16);

        *(v194 + 2) = v190;
        v193 = type metadata accessor for SearchItem.Contact(0);
        v192 = a2 + v214 + *(v193 + 24);
        v191 = a1 + v214 + *(v193 + 24);
        v5 = sub_214CCD2B4();
        (*(*(v5 - 8) + 16))(v192, v191);
        v195 = (a2 + v214 + *(v193 + 28));
        v6 = (a1 + v214 + *(v193 + 28));
        *v195 = *v6;
        v196 = v6[1];

        v195[1] = v196;
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v7 = sub_214CCD2B4();
        v186 = a2 + v214;
        (*(*(v7 - 8) + 16))();
        v185 = type metadata accessor for SearchItem.Photo(0);
        v179 = (a2 + v214 + v185[5]);
        v8 = (a1 + v214 + v185[5]);
        *v179 = *v8;
        v180 = v8[1];

        v179[1] = v180;
        v181 = (a2 + v214 + v185[6]);
        v9 = (a1 + v214 + v185[6]);
        *v181 = *v9;
        v182 = v9[1];

        v181[1] = v182;
        v183 = v185[7];
        v184 = *(a1 + v214 + v183);
        MEMORY[0x277D82BE0](v184);
        *&v186[v183] = v184;
        v187 = v185[8];
        v188 = *(a1 + v214 + v187);

        *&v186[v187] = v188;
        swift_storeEnumTagMultiPayload();
        break;
      case 3:
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 16))();
        v174 = type metadata accessor for SearchItem.Location(0);
        v172 = (a2 + v214 + v174[5]);
        v11 = (a1 + v214 + v174[5]);
        *v172 = *v11;
        v173 = v11[1];

        v172[1] = v173;
        v175 = (a2 + v214 + v174[6]);
        v12 = (a1 + v214 + v174[6]);
        *v175 = *v12;
        v176 = v12[1];

        v175[1] = v176;
        v177 = v174[7];
        v178 = *(a1 + v214 + v177);

        *(a2 + v214 + v177) = v178;
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v13 = sub_214CCD2B4();
        (*(*(v13 - 8) + 16))();
        v169 = type metadata accessor for SearchItem.Document(0);
        v161 = v169[5];
        v162 = *(a1 + v214 + v161);

        *(a2 + v214 + v161) = v162;
        v163 = (a2 + v214 + v169[6]);
        v14 = (a1 + v214 + v169[6]);
        *v163 = *v14;
        v164 = v14[1];

        v163[1] = v164;
        v165 = (a2 + v214 + v169[7]);
        v15 = (a1 + v214 + v169[7]);
        *v165 = *v15;
        v166 = v15[1];

        v165[1] = v166;
        v168 = a2 + v214 + v169[8];
        v167 = a1 + v214 + v169[8];
        v16 = sub_214CCD154();
        (*(*(v16 - 8) + 16))(v168, v167);
        v170 = (a2 + v214 + v169[9]);
        v17 = (a1 + v214 + v169[9]);
        *v170 = *v17;
        v171 = v17[1];

        v170[1] = v171;
        swift_storeEnumTagMultiPayload();
        break;
      case 5:
        v18 = sub_214CCD2B4();
        v160 = a2 + v214;
        (*(*(v18 - 8) + 16))();
        v159 = type metadata accessor for SearchItem.LegacySuggested(0);
        v151 = v159[5];
        v152 = *(a1 + v214 + v151);
        MEMORY[0x277D82BE0](v152);
        *&v160[v151] = v152;
        v153 = (a2 + v214 + v159[6]);
        v19 = (a1 + v214 + v159[6]);
        *v153 = *v19;
        v154 = v19[1];

        v153[1] = v154;
        v155 = (a2 + v214 + v159[7]);
        v20 = (a1 + v214 + v159[7]);
        *v155 = *v20;
        v156 = v20[1];

        v155[1] = v156;
        v157 = v159[8];
        v158 = *(a1 + v214 + v157);
        MEMORY[0x277D82BE0](v158);
        *&v160[v157] = v158;
        v160[v159[9]] = *(a1 + v214 + v159[9]);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        v148 = a2 + v214;
        *(a2 + v214) = *(a1 + v214);
        v136 = *(a1 + v214 + 8);

        *(v148 + 1) = v136;
        *(v148 + 2) = *(a1 + v214 + 16);
        v145 = type metadata accessor for SearchItem.Generic(0);
        v138 = a2 + v214 + v145[6];
        v137 = a1 + v214 + v145[6];
        v21 = sub_214CCD2B4();
        (*(*(v21 - 8) + 16))(v138, v137);
        v139 = v145[7];
        v140 = *(a1 + v214 + v139);
        MEMORY[0x277D82BE0](v140);
        *&v148[v139] = v140;
        v141 = v145[8];
        v142 = *(a1 + v214 + v141);
        MEMORY[0x277D82BE0](v142);
        *&v148[v141] = v142;
        v143 = v145[9];
        v144 = *(a1 + v214 + v143);
        MEMORY[0x277D82BE0](v144);
        *&v148[v143] = v144;
        v146 = (a2 + v214 + v145[10]);
        v22 = (a1 + v214 + v145[10]);
        *v146 = *v22;
        v147 = v22[1];

        v146[1] = v147;
        v148[v145[11]] = *(a1 + v214 + v145[11]);
        v149 = (a2 + v214 + v145[12]);
        v23 = (a1 + v214 + v145[12]);
        *v149 = *v23;
        v150 = v23[1];

        v149[1] = v150;
        swift_storeEnumTagMultiPayload();
        break;
      case 7:
        v133 = a2 + v214;
        *(a2 + v214) = *(a1 + v214);
        v121 = *(a1 + v214 + 8);

        *(v133 + 1) = v121;
        *(v133 + 2) = *(a1 + v214 + 16);
        v130 = type metadata accessor for SearchItem.Generic(0);
        v123 = a2 + v214 + v130[6];
        v122 = a1 + v214 + v130[6];
        v24 = sub_214CCD2B4();
        (*(*(v24 - 8) + 16))(v123, v122);
        v124 = v130[7];
        v125 = *(a1 + v214 + v124);
        MEMORY[0x277D82BE0](v125);
        *&v133[v124] = v125;
        v126 = v130[8];
        v127 = *(a1 + v214 + v126);
        MEMORY[0x277D82BE0](v127);
        *&v133[v126] = v127;
        v128 = v130[9];
        v129 = *(a1 + v214 + v128);
        MEMORY[0x277D82BE0](v129);
        *&v133[v128] = v129;
        v131 = (a2 + v214 + v130[10]);
        v25 = (a1 + v214 + v130[10]);
        *v131 = *v25;
        v132 = v25[1];

        v131[1] = v132;
        v133[v130[11]] = *(a1 + v214 + v130[11]);
        v134 = (a2 + v214 + v130[12]);
        v26 = (a1 + v214 + v130[12]);
        *v134 = *v26;
        v135 = v26[1];

        v134[1] = v135;
        swift_storeEnumTagMultiPayload();
        break;
      case 8:
        v27 = sub_214CCD2B4();
        v118 = a2 + v214;
        (*(*(v27 - 8) + 16))();
        v117 = type metadata accessor for SearchItem.TopHit(0);
        v115 = *(v117 + 20);
        v116 = *(a1 + v214 + v115);
        MEMORY[0x277D82BE0](v116);
        *&v118[v115] = v116;
        v119 = *(v117 + 24);
        v120 = *(a1 + v214 + v119);

        *&v118[v119] = v120;
        swift_storeEnumTagMultiPayload();
        break;
      case 9:
        v28 = sub_214CCD2B4();
        (*(*(v28 - 8) + 16))();
        v109 = type metadata accessor for SearchItem.InstantAnswer(0);
        *(a2 + v214 + v109[5]) = *(a1 + v214 + v109[5]);
        v96 = (a2 + v214 + v109[6]);
        v29 = (a1 + v214 + v109[6]);
        *v96 = *v29;
        v97 = v29[1];

        v96[1] = v97;
        v98 = (a2 + v214 + v109[7]);
        v30 = (a1 + v214 + v109[7]);
        *v98 = *v30;
        v99 = v30[1];

        v98[1] = v99;
        v100 = (a2 + v214 + v109[8]);
        v31 = (a1 + v214 + v109[8]);
        *v100 = *v31;
        v101 = v31[1];

        v100[1] = v101;
        v103 = a2 + v214 + v109[9];
        v102 = a1 + v214 + v109[9];
        v105 = sub_214CCCEB4();
        v104 = *(v105 - 8);
        v106 = *(v104 + 16);
        v106(v103, v102);
        (v106)(a2 + v214 + v109[10], a1 + v214 + v109[10], v105);
        v107 = (a2 + v214 + v109[11]);
        v32 = (a1 + v214 + v109[11]);
        *v107 = *v32;
        v108 = v32[1];

        v107[1] = v108;
        __dst = a2 + v214 + v109[12];
        __src = a1 + v214 + v109[12];
        v112 = sub_214CCD154();
        v113 = *(v112 - 8);
        v114 = *(v113 + 48);
        if ((v114)(__src, 1))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
          memcpy(__dst, __src, *(*(v33 - 8) + 64));
        }

        else
        {
          (*(v113 + 16))(__dst, __src, v112);
          (*(v113 + 56))(__dst, 0, 1, v112);
        }

        v91 = a2 + v214 + v109[13];
        v92 = a1 + v214 + v109[13];
        v93 = sub_214CCD2F4();
        v94 = *(v93 - 8);
        v95 = *(v94 + 48);
        if ((v95)(v92, 1))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v91, v92, *(*(v34 - 8) + 64));
        }

        else
        {
          (*(v94 + 16))(v91, v92, v93);
          (*(v94 + 56))(v91, 0, 1, v93);
        }

        v89 = a2 + v214 + v109[14];
        v90 = a1 + v214 + v109[14];
        if (v95())
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v89, v90, *(*(v35 - 8) + 64));
        }

        else
        {
          (*(v94 + 16))(v89, v90, v93);
          (*(v94 + 56))(v89, 0, 1, v93);
        }

        v87 = a2 + v214 + v109[15];
        v88 = a1 + v214 + v109[15];
        if (v114())
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
          memcpy(v87, v88, *(*(v36 - 8) + 64));
        }

        else
        {
          (*(v113 + 16))(v87, v88, v112);
          (*(v113 + 56))(v87, 0, 1, v112);
        }

        v84 = a2 + v214;
        v76 = (a2 + v214 + v109[16]);
        v37 = (a1 + v214 + v109[16]);
        *v76 = *v37;
        v77 = v37[1];

        v76[1] = v77;
        v38 = v109[17];
        v78 = a2 + v214 + v38;
        *&v84[v38] = *(a1 + v214 + v38);
        v79 = *(a1 + v214 + v38 + 8);

        *(v78 + 1) = v79;
        v39 = v109[18];
        v80 = a2 + v214 + v39;
        *&v84[v39] = *(a1 + v214 + v39);
        v81 = *(a1 + v214 + v39 + 8);

        *(v80 + 1) = v81;
        v40 = v109[19];
        v82 = a2 + v214 + v40;
        *&v84[v40] = *(a1 + v214 + v40);
        v83 = *(a1 + v214 + v40 + 8);

        *(v82 + 1) = v83;
        (v106)(a2 + v214 + v109[20], a1 + v214 + v109[20], v105);
        v85 = a2 + v214 + v109[21];
        v86 = a1 + v214 + v109[21];
        if ((*(v104 + 48))())
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
          memcpy(v85, v86, *(*(v41 - 8) + 64));
        }

        else
        {
          (v106)(v85, v86, v105);
          (*(v104 + 56))(v85, 0, 1, v105);
        }

        v74 = a2 + v214 + v109[22];
        v75 = a1 + v214 + v109[22];
        if (v95())
        {
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
          memcpy(v74, v75, *(*(v42 - 8) + 64));
        }

        else
        {
          (*(v94 + 16))(v74, v75, v93);
          (*(v94 + 56))(v74, 0, 1, v93);
        }

        v71 = a2 + v214;
        v65 = (a2 + v214 + v109[23]);
        v43 = (a1 + v214 + v109[23]);
        *v65 = *v43;
        v66 = v43[1];

        v65[1] = v66;
        v44 = v109[24];
        v67 = a2 + v214 + v44;
        *&v71[v44] = *(a1 + v214 + v44);
        v68 = *(a1 + v214 + v44 + 8);

        *(v67 + 1) = v68;
        v45 = v109[25];
        v69 = a2 + v214 + v45;
        *&v71[v45] = *(a1 + v214 + v45);
        v70 = *(a1 + v214 + v45 + 8);

        *(v69 + 1) = v70;
        v46 = v109[26];
        v72 = a2 + v214 + v46;
        *&v71[v46] = *(a1 + v214 + v46);
        v73 = *(a1 + v214 + v46 + 8);

        *(v72 + 1) = v73;
        swift_storeEnumTagMultiPayload();
        break;
      default:
        v53 = *(a1 + v214);

        *(a2 + v214) = v53;
        v60 = type metadata accessor for SearchItem.Link(0);
        v55 = a2 + v214 + v60[5];
        v54 = a1 + v214 + v60[5];
        v47 = sub_214CCD2B4();
        (*(*(v47 - 8) + 16))(v55, v54);
        v57 = a2 + v214 + v60[6];
        v56 = a1 + v214 + v60[6];
        v48 = sub_214CCD154();
        (*(*(v48 - 8) + 16))(v57, v56);
        v58 = (a2 + v214 + v60[7]);
        v49 = (a1 + v214 + v60[7]);
        *v58 = *v49;
        v59 = v49[1];

        v58[1] = v59;
        v61 = (a2 + v214 + v60[8]);
        v50 = (a1 + v214 + v60[8]);
        *v61 = *v50;
        v62 = v50[1];

        v61[1] = v62;
        v63 = (a2 + v214 + v60[9]);
        v51 = (a1 + v214 + v60[9]);
        *v63 = *v51;
        v64 = v51[1];

        v63[1] = v64;
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  else
  {
    v209 = a2 + v214;
    *(a2 + v214) = *(a1 + v214);
    v197 = *(a1 + v214 + 8);

    *(v209 + 1) = v197;
    *(v209 + 2) = *(a1 + v214 + 16);
    v206 = type metadata accessor for SearchItem.Generic(0);
    v199 = a2 + v214 + v206[6];
    v198 = a1 + v214 + v206[6];
    v2 = sub_214CCD2B4();
    (*(*(v2 - 8) + 16))(v199, v198);
    v200 = v206[7];
    v201 = *(a1 + v214 + v200);
    MEMORY[0x277D82BE0](v201);
    *&v209[v200] = v201;
    v202 = v206[8];
    v203 = *(a1 + v214 + v202);
    MEMORY[0x277D82BE0](v203);
    *&v209[v202] = v203;
    v204 = v206[9];
    v205 = *(a1 + v214 + v204);
    MEMORY[0x277D82BE0](v205);
    *&v209[v204] = v205;
    v207 = (a2 + v214 + v206[10]);
    v3 = (a1 + v214 + v206[10]);
    *v207 = *v3;
    v208 = v3[1];

    v207[1] = v208;
    v209[v206[11]] = *(a1 + v214 + v206[11]);
    v210 = (a2 + v214 + v206[12]);
    v4 = (a1 + v214 + v206[12]);
    *v210 = *v4;
    v211 = v4[1];

    v210[1] = v211;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_214B9ED0C(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  v47 = *(type metadata accessor for GroupedSearchItems.InternalSection.Element(0) + 20);
  type metadata accessor for SearchItem(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:

        v44 = a1 + v47 + *(type metadata accessor for SearchItem.Contact(0) + 24);
        v2 = sub_214CCD2B4();
        (*(*(v2 - 8) + 8))(v44);

        break;
      case 2:
        v3 = sub_214CCD2B4();
        (*(*(v3 - 8) + 8))();
        v43 = type metadata accessor for SearchItem.Photo(0);

        MEMORY[0x277D82BD8](*(a1 + v47 + *(v43 + 28)));

        break;
      case 3:
        v4 = sub_214CCD2B4();
        (*(*(v4 - 8) + 8))();
        type metadata accessor for SearchItem.Location(0);

        break;
      case 4:
        v5 = sub_214CCD2B4();
        (*(*(v5 - 8) + 8))();
        v42 = type metadata accessor for SearchItem.Document(0);

        v41 = a1 + v47 + *(v42 + 32);
        v6 = sub_214CCD154();
        (*(*(v6 - 8) + 8))(v41);

        break;
      case 5:
        v7 = sub_214CCD2B4();
        (*(*(v7 - 8) + 8))();
        v40 = type metadata accessor for SearchItem.LegacySuggested(0);
        MEMORY[0x277D82BD8](*(a1 + v47 + *(v40 + 20)));

        MEMORY[0x277D82BD8](*(a1 + v47 + *(v40 + 32)));
        break;
      case 6:

        v39 = type metadata accessor for SearchItem.Generic(0);
        v38 = a1 + v47 + v39[6];
        v8 = sub_214CCD2B4();
        (*(*(v8 - 8) + 8))(v38);
        MEMORY[0x277D82BD8](*(a1 + v47 + v39[7]));
        MEMORY[0x277D82BD8](*(a1 + v47 + v39[8]));
        MEMORY[0x277D82BD8](*(a1 + v47 + v39[9]));

        break;
      case 7:

        v37 = type metadata accessor for SearchItem.Generic(0);
        v36 = a1 + v47 + v37[6];
        v9 = sub_214CCD2B4();
        (*(*(v9 - 8) + 8))(v36);
        MEMORY[0x277D82BD8](*(a1 + v47 + v37[7]));
        MEMORY[0x277D82BD8](*(a1 + v47 + v37[8]));
        MEMORY[0x277D82BD8](*(a1 + v47 + v37[9]));

        break;
      case 8:
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 8))();
        v35 = type metadata accessor for SearchItem.TopHit(0);
        MEMORY[0x277D82BD8](*(a1 + v47 + *(v35 + 20)));

        break;
      case 9:
        v11 = sub_214CCD2B4();
        (*(*(v11 - 8) + 8))();
        v30 = type metadata accessor for SearchItem.InstantAnswer(0);

        v26 = a1 + v47 + v30[9];
        v28 = sub_214CCCEB4();
        v27 = *(v28 - 8);
        v29 = *(v27 + 8);
        v29(v26);
        (v29)(a1 + v47 + v30[10], v28);

        v31 = a1 + v47 + v30[12];
        v32 = sub_214CCD154();
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        if (!(v34)(v31, 1))
        {
          (*(v33 + 8))(v31, v32);
        }

        v22 = a1 + v47 + v30[13];
        v23 = sub_214CCD2F4();
        v24 = *(v23 - 8);
        v25 = *(v24 + 48);
        if (!(v25)(v22, 1))
        {
          (*(v24 + 8))(v22, v23);
        }

        v21 = a1 + v47 + v30[14];
        if (!v25())
        {
          (*(v24 + 8))(v21, v23);
        }

        v20 = a1 + v47 + v30[15];
        if (!v34())
        {
          (*(v33 + 8))(v20, v32);
        }

        (v29)(a1 + v47 + v30[20], v28);
        v19 = a1 + v47 + v30[21];
        if (!(*(v27 + 48))())
        {
          (v29)(v19, v28);
        }

        v18 = a1 + v47 + v30[22];
        if (!v25())
        {
          (*(v24 + 8))(v18, v23);
        }

        break;
      case 10:

        v17 = type metadata accessor for SearchItem.Link(0);
        v15 = a1 + v47 + *(v17 + 20);
        v12 = sub_214CCD2B4();
        (*(*(v12 - 8) + 8))(v15);
        v16 = a1 + v47 + *(v17 + 24);
        v13 = sub_214CCD154();
        (*(*(v13 - 8) + 8))(v16);

        break;
    }
  }

  else
  {

    v46 = type metadata accessor for SearchItem.Generic(0);
    v45 = a1 + v47 + v46[6];
    v1 = sub_214CCD2B4();
    (*(*(v1 - 8) + 8))(v45);
    MEMORY[0x277D82BD8](*(a1 + v47 + v46[7]));
    MEMORY[0x277D82BD8](*(a1 + v47 + v46[8]));
    MEMORY[0x277D82BD8](*(a1 + v47 + v46[9]));
  }

  return a1;
}