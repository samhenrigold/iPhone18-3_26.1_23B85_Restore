uint64_t sub_23B8101C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B811BF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E188FA0, &qword_23B811F60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23B811ACC(v2, &v14 - v9, &qword_27E188FA0, &qword_23B811F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23B811C14();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23B811CE4();
    v13 = sub_23B811C24();
    sub_23B811BB4();

    sub_23B811BE4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t CommunicationLimitsButton.init(question:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E188FA0, &qword_23B811F60);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for CommunicationLimitsButton(0, a4, a5, v12);
  *(a6 + *(result + 36)) = a1;
  v14 = (a6 + *(result + 40));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t CommunicationLimitsButton.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v21 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v22 = *(v7 + 16);
  v9 = sub_23B811C74();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v22;
  *(v17 + 24) = v8;
  (*(v5 + 32))(v17 + v16, v21, a1);
  sub_23B811C64();
  swift_getWitnessTable();
  v18 = *(v10 + 16);
  v18(v15, v13, v9);
  v19 = *(v10 + 8);
  v19(v13, v9);
  v18(v23, v15, v9);
  return (v19)(v15, v9);
}

uint64_t sub_23B8106F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B811C14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CommunicationLimitsButton(0, a2, a3, v10);
  sub_23B8101C0(v9);
  v13 = a2;
  v14 = a3;
  v15 = a1;
  sub_23B811C04();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23B810800(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CommunicationLimitsButton(0, a3, a4, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E189050, &qword_23B812020);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_23B811CD4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a2, v8);
  sub_23B811CB4();
  v16 = a1;
  v17 = sub_23B811CA4();
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  *(v19 + 6) = a1;
  (*(v9 + 32))(&v19[v18], v11, v8);
  sub_23B810DE4(0, 0, v14, &unk_23B812030, v19);
}

uint64_t sub_23B810A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_23B811CB4();
  v7[6] = sub_23B811CA4();
  v9 = sub_23B811C94();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_23B810AB0, v9, v8);
}

uint64_t sub_23B810AB0()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0[3];
    sub_23B811BA4();
    v5 = v1;
    v0[9] = sub_23B811B94();
    v7 = *(v4 + *(type metadata accessor for CommunicationLimitsButton(0, v3, v2, v6) + 36));
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_23B810BE4;

    return MEMORY[0x282137188](v7, v5);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23B810BE4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_23B810D6C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_23B810D00;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23B810D00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B810D6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B810DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E189050, &qword_23B812020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23B811ACC(a3, v22 - v9, &unk_27E189050, &qword_23B812020);
  v11 = sub_23B811CD4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23B811A64(v10);
  }

  else
  {
    sub_23B811CC4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23B811C94();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23B811C84() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23B811A64(a3);

      return v20;
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

  sub_23B811A64(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B81110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for CommunicationLimitsButton(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E188FA0, &qword_23B811F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23B811C14();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_23B811240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CommunicationLimitsButton(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23B8106F0(v8, v5, v6);
}

void sub_23B811310(uint64_t a1)
{
  sub_23B811560(319);
  if (v1 <= 0x3F)
  {
    sub_23B8115B8(319);
    if (v2 <= 0x3F)
    {
      sub_23B811674();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B8113C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E188FA8, &qword_23B811FC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B81149C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E188FA8, &qword_23B811FC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_23B811560(uint64_t a1)
{
  if (!qword_27E189030)
  {
    sub_23B811C14();
    v1 = sub_23B811BC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E189030);
    }
  }
}

void sub_23B8115B8(uint64_t a1)
{
  if (!qword_27E189038)
  {
    sub_23B811B74();
    sub_23B81161C();
    v1 = sub_23B811B64();
    if (!v2)
    {
      atomic_store(v1, &qword_27E189038);
    }
  }
}

unint64_t sub_23B81161C()
{
  result = qword_27E189040;
  if (!qword_27E189040)
  {
    sub_23B811B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E189040);
  }

  return result;
}

unint64_t sub_23B811674()
{
  result = qword_27E189048;
  if (!qword_27E189048)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E189048);
  }

  return result;
}

uint64_t sub_23B8116C4()
{
  sub_23B811C74();

  return swift_getWitnessTable();
}

uint64_t sub_23B811718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for CommunicationLimitsButton(0, *(v4 + 32), *(v4 + 40), a4) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E188FA0, &qword_23B811F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23B811C14();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_23B81185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for CommunicationLimitsButton(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[6];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_23B811970;

  return sub_23B810A14(a1, v11, v12, v13, v4 + v10, v7, v8);
}

uint64_t sub_23B811970()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B811A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E189050, &qword_23B812020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B811ACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}