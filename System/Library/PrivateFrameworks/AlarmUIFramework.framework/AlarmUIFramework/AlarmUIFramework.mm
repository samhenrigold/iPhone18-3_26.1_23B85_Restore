uint64_t AlarmConfirmation.init(snippetModel:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_23ED419F0();
  sub_23ED36088(&qword_27E384B70, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *a2 = sub_23ED415F0();
  *(a2 + 1) = v4;
  v5 = *(type metadata accessor for AlarmConfirmation(0) + 20);
  v6 = sub_23ED41430();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a2[v5], a1, v6);
}

uint64_t type metadata accessor for AlarmConfirmation(uint64_t a1)
{
  result = qword_27E384B80;
  if (!qword_27E384B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23ED35634(void **a1)
{
  v2 = sub_23ED41390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (*a1)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D61858], v2);
    v7 = v6;
    sub_23ED41380();
    (*(v3 + 8))(v5, v2);
    type metadata accessor for AlarmConfirmation(0);
    v8 = sub_23ED41420();
    v9 = MEMORY[0x23EF21150](v8);

    sub_23ED3AB38(v9);

    sub_23ED419E0();
  }

  else
  {
    sub_23ED419F0();
    sub_23ED36088(&qword_27E384B70, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_23ED415E0();
    __break(1u);
  }
}

uint64_t sub_23ED3580C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for AlarmConfirmation(0);
  a1();
  sub_23ED36884();
  result = sub_23ED41770();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t AlarmConfirmation.body.getter()
{
  v1 = type metadata accessor for AlarmConfirmation(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_23ED35FB8(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_23ED36020(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_23ED41920();
  sub_23ED36088(&qword_27E384B78, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
  return sub_23ED418F0();
}

uint64_t sub_23ED359D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = sub_23ED418B0();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlarmConfirmation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = v8;
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BB0, &qword_23ED41DE0);
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BB8, &qword_23ED41DE8);
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = v34 - v13;
  v37 = a1;
  v40 = v9;
  sub_23ED35FB8(a1, v9);
  v15 = *(v7 + 80);
  v42 = (v15 + 16) & ~v15;
  v16 = swift_allocObject();
  sub_23ED36020(v9, v16 + ((v15 + 16) & ~v15));
  v50 = a1;
  sub_23ED41880();
  v17 = *MEMORY[0x277D63A78];
  v18 = v3;
  v41 = *(v3 + 104);
  v35 = v5;
  v19 = v46;
  v41(v5, v17, v46);
  v20 = sub_23ED366B8(&qword_27E384BC0, &qword_27E384BB0, &qword_23ED41DE0, MEMORY[0x277CDF028]);
  v21 = v10;
  sub_23ED41790();
  v22 = *(v18 + 8);
  v38 = v18 + 8;
  v39 = v22;
  v22(v5, v19);
  v36 = *(v47 + 8);
  v47 += 8;
  v36(v12, v10);
  v54 = v10;
  v55 = v20;
  v34[1] = swift_getOpaqueTypeConformance2();
  v23 = v44;
  v24 = sub_23ED41780();
  v25 = *(v48 + 8);
  v48 += 8;
  v34[0] = v25;
  v25(v14, v23);
  v56 = MEMORY[0x277CE11C8];
  v57 = MEMORY[0x277D63A60];
  v54 = v24;
  v26 = v37;
  v27 = v40;
  sub_23ED35FB8(v37, v40);
  v28 = v42;
  v29 = swift_allocObject();
  sub_23ED36020(v27, v29 + v28);
  v49 = v26;
  sub_23ED41880();
  v30 = v35;
  v31 = v46;
  v41(v35, *MEMORY[0x277D63A88], v46);
  sub_23ED41790();
  v39(v30, v31);
  v36(v12, v21);
  v32 = sub_23ED41780();
  (v34[0])(v14, v23);
  v53 = MEMORY[0x277D63A60];
  v52 = MEMORY[0x277CE11C8];
  v51 = v32;
  return sub_23ED41910();
}

uint64_t sub_23ED35FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmConfirmation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED36020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmConfirmation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED36088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23ED36110(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_23ED35FB8(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_23ED36020(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_23ED41920();
  sub_23ED36088(&qword_27E384B78, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
  return sub_23ED418F0();
}

uint64_t sub_23ED36264(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_23ED41430();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23ED36330(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_23ED41430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23ED363D4(uint64_t a1)
{
  sub_23ED36458(319);
  if (v1 <= 0x3F)
  {
    sub_23ED41430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23ED36458(uint64_t a1)
{
  if (!qword_27E384B90)
  {
    sub_23ED419F0();
    sub_23ED36088(&qword_27E384B70, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_23ED41600();
    if (!v2)
    {
      atomic_store(v1, &qword_27E384B90);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for VRXIdiom()
{
  if (!qword_27E384BA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E384BA8);
    }
  }
}

uint64_t sub_23ED365C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmConfirmation(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23ED359D0(v4, a1);
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

uint64_t sub_23ED366B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for AlarmConfirmation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_23ED41430();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_23ED36884()
{
  result = qword_27E384BC8;
  if (!qword_27E384BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384BC8);
  }

  return result;
}

uint64_t sub_23ED368E8()
{
  v0 = sub_23ED41580();
  __swift_allocate_value_buffer(v0, qword_27E384BD0);
  __swift_project_value_buffer(v0, qword_27E384BD0);
  return sub_23ED41570();
}

uint64_t AlarmSelector.init(snippetModel:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_23ED419F0();
  sub_23ED38D58(&qword_27E384B70, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *a2 = sub_23ED415F0();
  *(a2 + 1) = v4;
  v5 = *(type metadata accessor for AlarmSelector(0) + 20);
  v6 = sub_23ED41410();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a2[v5], a1, v6);
}

uint64_t AlarmSelector.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_23ED419C0();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BE8, &qword_23ED41E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v31 - v5);
  v7 = type metadata accessor for AlarmSelector(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BF0, &qword_23ED41E08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BF8, &qword_23ED41E10);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  sub_23ED370E8(v1, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_23ED37150(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C00, &qword_23ED41E18);
  sub_23ED366B8(&qword_27E384C08, &qword_27E384C00, &qword_23ED41E18, MEMORY[0x277D63CE0]);
  sub_23ED418F0();
  *v6 = sub_23ED41830();
  v19 = *MEMORY[0x277D63BB0];
  v20 = sub_23ED41900();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v6, v19, v20);
  (*(v21 + 56))(v6, 0, 1, v20);
  sub_23ED366B8(&qword_27E384C10, &qword_27E384BF0, &qword_23ED41E08, MEMORY[0x277D63B90]);
  sub_23ED417C0();
  sub_23ED371CC(v6);
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  v23 = &v16[*(v14 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C18, &qword_23ED41E50) + 28);
  v25 = *MEMORY[0x277CDF3C0];
  v26 = sub_23ED41590();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = KeyPath;
  v28 = v31;
  v27 = v32;
  v29 = v33;
  (*(v32 + 104))(v31, *MEMORY[0x277D63EC0], v33);
  sub_23ED37FB8();
  sub_23ED417D0();
  (*(v27 + 8))(v28, v29);
  return sub_23ED380E0(v16);
}

uint64_t sub_23ED36F28(uint64_t a1)
{
  v2 = type metadata accessor for AlarmSelector(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_23ED41970();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23ED41400();
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D63F80];
  v13 = v6;
  v14 = v7;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_23ED41960();
  sub_23ED370E8(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_23ED37150(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C70, &qword_23ED41F60);
  sub_23ED38F78();
  return sub_23ED41930();
}

uint64_t sub_23ED370E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmSelector(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED37150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmSelector(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED371CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BE8, &qword_23ED41E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23ED37234(uint64_t a1)
{
  v2 = type metadata accessor for AlarmSelector(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v10[3] = sub_23ED413F0();
  sub_23ED370E8(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23ED37150(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C88, &qword_23ED41F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C90, &qword_23ED41F70);
  sub_23ED366B8(&qword_27E384C98, &qword_27E384C88, &qword_23ED41F68, MEMORY[0x277D83980]);
  v7 = type metadata accessor for AlarmItemView(255);
  v8 = sub_23ED38D58(&qword_27E384C80, type metadata accessor for AlarmItemView, &unk_23ED41ED0);
  v10[1] = v7;
  v10[2] = v8;
  swift_getOpaqueTypeConformance2();
  sub_23ED38D58(&qword_27E384CA0, MEMORY[0x277D617A0], MEMORY[0x277D617A8]);
  return sub_23ED418A0();
}

uint64_t sub_23ED37470@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v54 = a2;
  v4 = type metadata accessor for AlarmSelector(0);
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = v5;
  v52 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23ED41170();
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23ED41300();
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23ED412E0();
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23ED412C0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C58, &unk_23ED41F20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C60, &qword_23ED42440);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - v17;
  v19 = sub_23ED41550();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v46 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v39 - v23;
  v25 = type metadata accessor for AlarmItemView(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v20 + 16);
  v42 = v24;
  v49 = a1;
  v44 = v19;
  v41(v24, a1, v19);
  v28 = *v54;
  if (*v54)
  {
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v39 = v25[7];
    v40 = v28;
    sub_23ED411D0();
    v29 = sub_23ED411E0();
    (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
    sub_23ED411B0();
    v30 = sub_23ED411C0();
    (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
    sub_23ED412B0();
    sub_23ED412D0();
    sub_23ED412F0();
    sub_23ED41160();
    sub_23ED41220();
    v31 = *(v20 + 32);
    v32 = v44;
    v31(&v27[v25[5]], v42, v44);
    *&v27[v25[6]] = v40;
    v33 = v46;
    v41(v46, v49, v32);
    v34 = v52;
    sub_23ED370E8(v54, v52);
    v35 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v36 = (v43 + *(v50 + 80) + v35) & ~*(v50 + 80);
    v37 = swift_allocObject();
    v31((v37 + v35), v33, v32);
    sub_23ED37150(v34, v37 + v36);
    sub_23ED38D58(&qword_27E384C80, type metadata accessor for AlarmItemView, &unk_23ED41ED0);
    sub_23ED417B0();

    return sub_23ED39314(v27);
  }

  else
  {
    sub_23ED419F0();
    sub_23ED38D58(&qword_27E384B70, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_23ED415E0();
    __break(1u);
  }

  return result;
}

void sub_23ED37AAC(uint64_t a1, void **a2)
{
  v4 = sub_23ED41390();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23ED41550();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E384B60 != -1)
  {
    swift_once();
  }

  v11 = sub_23ED41580();
  __swift_project_value_buffer(v11, qword_27E384BD0);
  (*(v8 + 16))(v10, a1, v7);
  v12 = sub_23ED41560();
  v13 = sub_23ED41A30();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = a2;
    v17 = v16;
    v33 = v16;
    *v15 = 136315138;
    v18 = sub_23ED41500();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_23ED393A8(v18, v20, &v33);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_23ED34000, v12, v13, "[AlarmItem] send directInvocation: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v22 = v17;
    a2 = v29;
    MEMORY[0x23EF21AA0](v22, -1, -1);
    MEMORY[0x23EF21AA0](v15, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v23 = *a2;
  if (*a2)
  {
    v25 = v31;
    v24 = v32;
    (*(v31 + 104))(v6, *MEMORY[0x277D61860], v32);
    v26 = v23;
    sub_23ED41380();
    (*(v25 + 8))(v6, v24);
    sub_23ED41500();
    sub_23ED414B0();
    v27 = sub_23ED41370();

    sub_23ED3AB38(v27);

    sub_23ED419E0();
  }

  else
  {
    sub_23ED419F0();
    sub_23ED38D58(&qword_27E384B70, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_23ED415E0();
    __break(1u);
  }
}

uint64_t sub_23ED37EEC(uint64_t a1)
{
  v2 = sub_23ED41590();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23ED41640();
}

unint64_t sub_23ED37FB8()
{
  result = qword_27E384C20;
  if (!qword_27E384C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384BF8, &qword_23ED41E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384BF0, &qword_23ED41E08);
    sub_23ED366B8(&qword_27E384C10, &qword_27E384BF0, &qword_23ED41E08, MEMORY[0x277D63B90]);
    swift_getOpaqueTypeConformance2();
    sub_23ED366B8(&qword_27E384C28, &qword_27E384C18, &qword_23ED41E50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384C20);
  }

  return result;
}

uint64_t sub_23ED380E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BF8, &qword_23ED41E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23ED3817C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_23ED41410();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23ED38248(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_23ED41410();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23ED382EC(uint64_t a1)
{
  sub_23ED36458(319);
  if (v1 <= 0x3F)
  {
    sub_23ED41410();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23ED38370()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384BF8, &qword_23ED41E10);
  sub_23ED37FB8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23ED383E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23ED41550();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_23ED41240();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23ED38524(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_23ED41550();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_23ED41240();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_23ED3866C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23ED386A4(uint64_t a1)
{
  sub_23ED38758(319);
  if (v1 <= 0x3F)
  {
    sub_23ED41550();
    if (v2 <= 0x3F)
    {
      sub_23ED419F0();
      if (v3 <= 0x3F)
      {
        sub_23ED41240();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23ED38758(uint64_t a1)
{
  if (!qword_27E384C50)
  {
    type metadata accessor for VRXIdiom();
    v1 = sub_23ED415A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E384C50);
    }
  }
}

uint64_t sub_23ED387CC@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_23ED41170();
  MEMORY[0x28223BE20](v2 - 8);
  v42 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23ED41300();
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23ED412E0();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23ED412C0();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C58, &unk_23ED41F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C60, &qword_23ED42440);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v39 - v12;
  v14 = type metadata accessor for AlarmTimeLabelView(0);
  MEMORY[0x28223BE20](v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlarmItemView(0);
  v40 = v1;
  sub_23ED41530();
  sub_23ED41540();
  v17 = &v16[*(v14 + 24)];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v39[1] = *(v14 + 28);
  sub_23ED411D0();
  v18 = sub_23ED411E0();
  (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  sub_23ED411B0();
  v19 = sub_23ED411C0();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  sub_23ED412B0();
  sub_23ED412D0();
  sub_23ED412F0();
  sub_23ED41160();
  sub_23ED41220();
  sub_23ED38D58(&qword_27E384C68, type metadata accessor for AlarmTimeLabelView, &unk_23ED41F94);
  v20 = sub_23ED41890();
  v61 = MEMORY[0x277CE11C8];
  v62 = MEMORY[0x277D63A60];
  v60 = v20;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v53 = sub_23ED41510();
  v54 = v21;
  sub_23ED36884();
  v22 = sub_23ED41770();
  v24 = v23;
  LOBYTE(v13) = v25;
  sub_23ED41710();
  v26 = sub_23ED41750();
  v28 = v27;
  LOBYTE(v10) = v29;

  sub_23ED38DA0(v22, v24, v13 & 1);

  sub_23ED41840();
  v30 = sub_23ED41740();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_23ED38DA0(v26, v28, v10 & 1);

  v55 = MEMORY[0x277CE0BD8];
  v56 = MEMORY[0x277D638E8];
  v37 = swift_allocObject();
  v53 = v37;
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  *(v37 + 32) = v34 & 1;
  *(v37 + 40) = v36;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  return sub_23ED41980();
}

uint64_t sub_23ED38D04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23ED41610();
  *a1 = result;
  return result;
}

uint64_t sub_23ED38D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23ED38DA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23ED38DB0()
{
  sub_23ED38DA0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for AlarmSelector(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_23ED41410();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23ED38EF4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AlarmSelector(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23ED38F78()
{
  result = qword_27E384C78;
  if (!qword_27E384C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384C70, &qword_23ED41F60);
    type metadata accessor for AlarmItemView(255);
    sub_23ED38D58(&qword_27E384C80, type metadata accessor for AlarmItemView, &unk_23ED41ED0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384C78);
  }

  return result;
}

uint64_t sub_23ED3905C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AlarmSelector(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_23ED37470(a1, v6, a2);
}

uint64_t sub_23ED390DC()
{
  v1 = sub_23ED41550();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for AlarmSelector(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[7];
  v12 = sub_23ED41410();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

void sub_23ED39248()
{
  v1 = *(sub_23ED41550() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AlarmSelector(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  sub_23ED37AAC(v0 + v2, v5);
}

uint64_t sub_23ED39314(uint64_t a1)
{
  v2 = type metadata accessor for AlarmItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_23ED393A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23ED39474(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23ED3999C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23ED39474(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23ED39580(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23ED41A70();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_23ED39580(uint64_t a1, unint64_t a2)
{
  v3 = sub_23ED395CC(a1, a2);
  sub_23ED396FC(&unk_285160128);
  return v3;
}

void *sub_23ED395CC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23ED397E8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23ED41A70();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23ED41A20();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23ED397E8(v10, 0);
        result = sub_23ED41A60();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23ED396FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23ED3985C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23ED397E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CA8, &qword_23ED41F78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23ED3985C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CA8, &qword_23ED41F78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23ED3999C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23ED39AD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23ED412C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23ED41290();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_23ED41240();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23ED39C54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23ED412C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_23ED41290();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_23ED41240();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for AlarmTimeLabelView(uint64_t a1)
{
  result = qword_27E384CB8;
  if (!qword_27E384CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23ED39E14(uint64_t a1)
{
  sub_23ED412C0();
  if (v1 <= 0x3F)
  {
    sub_23ED41290();
    if (v2 <= 0x3F)
    {
      sub_23ED38758(319);
      if (v3 <= 0x3F)
      {
        sub_23ED41240();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23ED39EE4@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_23ED41070();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x28223BE20](v1);
  v59 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CC8, &qword_23ED42390);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CD0, &unk_23ED41FF0);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v44 - v6;
  v7 = sub_23ED41110();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CD8, &qword_23ED42360);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CE0, &qword_23ED42000);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CE8, &qword_23ED42008);
  v48 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = sub_23ED41200();
  v46 = *(v20 - 8);
  v47 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23ED41240();
  v23 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlarmTimeLabelView(0);
  sub_23ED41230();
  sub_23ED411A0();
  (*(v23 + 8))(v25, v45);
  sub_23ED411F0();
  (*(v46 + 8))(v22, v47);
  v26 = sub_23ED412C0();
  v27 = *(*(v26 - 8) + 56);
  v28 = (v48 + 48);
  while (1)
  {
    v63 = 11501794;
    v64 = 0xA300000000000000;
    v27(v13, 1, 1, v26);
    sub_23ED410C0();
    sub_23ED3A804();
    sub_23ED36884();
    sub_23ED41150();
    sub_23ED3AAC0(v13, &qword_27E384CD8, &qword_23ED42360);
    if ((*v28)(v16, 1, v17) == 1)
    {
      break;
    }

    sub_23ED3A9EC(v16, v19);
    sub_23ED3AA5C();
    sub_23ED410A0();
    sub_23ED3AAC0(v19, &qword_27E384CE8, &qword_23ED42008);
  }

  sub_23ED3AAC0(v16, &qword_27E384CE0, &qword_23ED42000);
  KeyPath = swift_getKeyPath();
  *(&v44 - 2) = MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_23ED3A87C();
  v30 = v49;
  sub_23ED410E0();

  v63 = sub_23ED416F0();
  v31 = v51;
  v32 = v52;
  sub_23ED410F0();

  (*(v50 + 8))(v30, v31);
  sub_23ED41690();
  sub_23ED416D0();
  v33 = sub_23ED41700();

  v63 = v33;
  sub_23ED410D0();
  v34 = swift_getKeyPath();
  *(&v44 - 2) = MEMORY[0x28223BE20](v34);
  swift_getKeyPath();
  sub_23ED3A980();
  v35 = v56;
  sub_23ED410E0();

  v37 = v59;
  v36 = v60;
  v38 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x277CC8A98], v61);
  v39 = v53;
  v40 = v58;
  sub_23ED410F0();
  (*(v36 + 8))(v37, v38);
  (*(v57 + 8))(v35, v40);
  sub_23ED410B0();
  v41 = v55;
  v42 = *(v54 + 8);
  v42(v39, v55);
  return (v42)(v32, v41);
}

uint64_t sub_23ED3A774@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23ED410C0();
  MEMORY[0x28223BE20](v2 - 8);
  sub_23ED39EE4(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_23ED41760();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_23ED3A804()
{
  result = qword_27E384CF0;
  if (!qword_27E384CF0)
  {
    sub_23ED410C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384CF0);
  }

  return result;
}

unint64_t sub_23ED3A87C()
{
  result = qword_27E384CF8;
  if (!qword_27E384CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384CF8);
  }

  return result;
}

void sub_23ED3A8D0(uint64_t a1, uint64_t *a2)
{
  sub_23ED3A87C();
  sub_23ED41140();
  __break(1u);
}

unint64_t sub_23ED3A980()
{
  result = qword_27E384D00;
  if (!qword_27E384D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D00);
  }

  return result;
}

uint64_t sub_23ED3A9EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CE8, &qword_23ED42008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23ED3AA5C()
{
  result = qword_27E384D08;
  if (!qword_27E384D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384CE8, &qword_23ED42008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D08);
  }

  return result;
}

uint64_t sub_23ED3AAC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23ED3AB38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E78, &qword_23ED42420);
    v2 = sub_23ED41A80();
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
    sub_23ED3999C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_23ED40C8C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_23ED40C8C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_23ED40C8C(v31, v32);
    result = sub_23ED41A50();
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
    result = sub_23ED40C8C(v32, (*(v2 + 56) + 32 * v10));
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

void sub_23ED3AEB4(uint64_t a1, uint64_t *a2)
{
  sub_23ED3A980();
  sub_23ED41130();
  __break(1u);
}

uint64_t sub_23ED3AEF8()
{
  v0 = sub_23ED41580();
  __swift_allocate_value_buffer(v0, qword_27E384D18);
  __swift_project_value_buffer(v0, qword_27E384D18);
  return sub_23ED41570();
}

uint64_t AlarmSnippet.init(snippetModel:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_23ED419F0();
  sub_23ED3B7F0(&qword_27E384B70, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *a2 = sub_23ED415F0();
  *(a2 + 1) = v4;
  v5 = *(type metadata accessor for AlarmSnippet(0) + 20);
  v6 = sub_23ED413C0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a2[v5], a1, v6);
}

uint64_t AlarmSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BE8, &qword_23ED41E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v25 - v5);
  v7 = type metadata accessor for AlarmSnippet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D30, &qword_23ED42118);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  sub_23ED40694(v2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmSnippet);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_23ED40714(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AlarmSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D38, &qword_23ED42120);
  sub_23ED3B680();
  sub_23ED418F0();
  *v6 = sub_23ED41830();
  v16 = *MEMORY[0x277D63BB0];
  v17 = sub_23ED41900();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v6, v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  sub_23ED366B8(&qword_27E384D68, &qword_27E384D30, &qword_23ED42118, MEMORY[0x277D63B90]);
  sub_23ED417C0();
  sub_23ED3AAC0(v6, &qword_27E384BE8, &qword_23ED41E00);
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D70, &unk_23ED42160) + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C18, &qword_23ED41E50) + 28);
  v22 = *MEMORY[0x277CDF3C0];
  v23 = sub_23ED41590();
  result = (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = KeyPath;
  return result;
}

uint64_t sub_23ED3B40C(uint64_t a1)
{
  v2 = type metadata accessor for AlarmSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23ED413B0();
  sub_23ED40694(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmSnippet);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23ED40714(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AlarmSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E88, &qword_23ED42428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D50, &qword_23ED42128);
  sub_23ED366B8(&qword_27E384E90, &qword_27E384E88, &qword_23ED42428, MEMORY[0x277D83980]);
  sub_23ED3B704();
  sub_23ED3B7F0(&qword_27E384E98, MEMORY[0x277D61790], MEMORY[0x277D61798]);
  return sub_23ED418A0();
}

uint64_t sub_23ED3B610()
{
  v1 = *(type metadata accessor for AlarmSnippet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23ED3B40C(v2);
}

unint64_t sub_23ED3B680()
{
  result = qword_27E384D40;
  if (!qword_27E384D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384D38, &qword_23ED42120);
    sub_23ED3B704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D40);
  }

  return result;
}

unint64_t sub_23ED3B704()
{
  result = qword_27E384D48;
  if (!qword_27E384D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384D50, &qword_23ED42128);
    sub_23ED3B7F0(&qword_27E384D58, type metadata accessor for SleepAlarmView, &unk_23ED422EC);
    sub_23ED3B7F0(&qword_27E384D60, type metadata accessor for AlarmView, &unk_23ED4229C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D48);
  }

  return result;
}

uint64_t sub_23ED3B7F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23ED3B880@<X0>(char *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v57 = type metadata accessor for AlarmView(0);
  MEMORY[0x28223BE20](v57);
  v48 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384EA0, &unk_23ED42430);
  MEMORY[0x28223BE20](v53);
  v54 = v46 - v6;
  v7 = sub_23ED41170();
  MEMORY[0x28223BE20](v7 - 8);
  v52 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23ED41300();
  MEMORY[0x28223BE20](v9 - 8);
  v51 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23ED412E0();
  MEMORY[0x28223BE20](v11 - 8);
  v50 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23ED412C0();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C58, &unk_23ED41F20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C60, &qword_23ED42440);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v46 - v18;
  v58 = sub_23ED414F0();
  v20 = *(v58 - 8);
  v21 = MEMORY[0x28223BE20](v58);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v46 - v24;
  v56 = type metadata accessor for SleepAlarmView(0);
  MEMORY[0x28223BE20](v56);
  v27 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23ED41450();
  v29 = *(v20 + 16);
  v49 = v29;
  if (v28)
  {
    v29(v25, a1, v58);
    v30 = *a2;
    if (*a2)
    {
      v47 = *(v56 + 28);
      v48 = v30;
      sub_23ED411D0();
      v31 = sub_23ED411E0();
      (*(*(v31 - 8) + 56))(v19, 0, 1, v31);
      sub_23ED411B0();
      v32 = sub_23ED411C0();
      (*(*(v32 - 8) + 56))(v16, 0, 1, v32);
      sub_23ED412B0();
      sub_23ED412D0();
      sub_23ED412F0();
      sub_23ED41160();
      sub_23ED41220();
      v33 = v58;
      v49(v27, v25, v58);
      v34 = v56;
      *&v27[*(v56 + 20)] = v48;
      v35 = sub_23ED414D0();
      (*(v20 + 8))(v25, v33);
      v36 = &v27[*(v34 + 24)];
      *v36 = v35 & 1;
      *(v36 + 1) = 0;
      sub_23ED40694(v27, v54, type metadata accessor for SleepAlarmView);
      swift_storeEnumTagMultiPayload();
      sub_23ED3B7F0(&qword_27E384D58, type metadata accessor for SleepAlarmView, &unk_23ED422EC);
      sub_23ED3B7F0(&qword_27E384D60, type metadata accessor for AlarmView, &unk_23ED4229C);
      sub_23ED41660();
      v37 = type metadata accessor for SleepAlarmView;
      return sub_23ED40E58(v27, v37);
    }
  }

  else
  {
    v29(v23, a1, v58);
    v38 = *a2;
    if (*a2)
    {
      v46[1] = *(v57 + 28);
      v47 = v38;
      sub_23ED411D0();
      v39 = sub_23ED411E0();
      (*(*(v39 - 8) + 56))(v19, 0, 1, v39);
      sub_23ED411B0();
      v40 = sub_23ED411C0();
      (*(*(v40 - 8) + 56))(v16, 0, 1, v40);
      sub_23ED412B0();
      sub_23ED412D0();
      sub_23ED412F0();
      sub_23ED41160();
      v27 = v48;
      sub_23ED41220();
      v41 = v58;
      v49(v27, v23, v58);
      v42 = v57;
      *&v27[*(v57 + 20)] = v47;
      v43 = sub_23ED414D0();
      (*(v20 + 8))(v23, v41);
      v44 = &v27[*(v42 + 24)];
      *v44 = v43 & 1;
      *(v44 + 1) = 0;
      sub_23ED40694(v27, v54, type metadata accessor for AlarmView);
      swift_storeEnumTagMultiPayload();
      sub_23ED3B7F0(&qword_27E384D58, type metadata accessor for SleepAlarmView, &unk_23ED422EC);
      sub_23ED3B7F0(&qword_27E384D60, type metadata accessor for AlarmView, &unk_23ED4229C);
      sub_23ED41660();
      v37 = type metadata accessor for AlarmView;
      return sub_23ED40E58(v27, v37);
    }
  }

  sub_23ED419F0();
  sub_23ED3B7F0(&qword_27E384B70, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  result = sub_23ED415E0();
  __break(1u);
  return result;
}

uint64_t sub_23ED3C128@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_23ED41070();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CC8, &qword_23ED42390);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E50, &qword_23ED42398);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v46 - v7;
  v8 = sub_23ED41110();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v46 - v11;
  v12 = sub_23ED41290();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23ED412C0();
  v15 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23ED41270();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  v46 = type metadata accessor for AlarmView(0);
  sub_23ED41210();
  sub_23ED414C0();
  sub_23ED41260();
  (*(v15 + 8))(v17, v47);
  v25 = *(v19 + 8);
  v25(v22, v18);
  sub_23ED414E0();
  sub_23ED41250();
  (*(v48 + 8))(v14, v49);
  v25(v24, v18);
  sub_23ED41100();
  v26 = (v1 + *(v46 + 24));
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v63) = v27;
  v64 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E18, &qword_23ED42368);
  sub_23ED41850();
  if (v62 == 1)
  {
    v29 = sub_23ED41840();
  }

  else
  {
    v29 = sub_23ED41820();
  }

  v63 = v29;
  sub_23ED40A7C();
  sub_23ED410D0();
  v30 = sub_23ED416B0();
  v31 = *(*(v30 - 8) + 56);
  v32 = v51;
  v31(v51, 1, 1, v30);
  sub_23ED416E0();
  sub_23ED3AAC0(v32, &qword_27E384E50, &qword_23ED42398);
  sub_23ED416C0();
  v33 = sub_23ED41700();

  v63 = v33;
  sub_23ED3A87C();
  sub_23ED410D0();
  v31(v32, 1, 1, v30);
  sub_23ED416E0();
  sub_23ED3AAC0(v32, &qword_27E384E50, &qword_23ED42398);
  sub_23ED416D0();
  v34 = sub_23ED41700();

  v63 = v34;
  v35 = v61;
  sub_23ED41120();
  KeyPath = swift_getKeyPath();
  *(&v46 - 2) = MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_23ED3A980();
  v37 = v55;
  sub_23ED410E0();

  v39 = v58;
  v38 = v59;
  v40 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277CC8A98], v60);
  v41 = v52;
  v42 = v57;
  sub_23ED410F0();
  (*(v38 + 8))(v39, v40);
  (*(v56 + 8))(v37, v42);
  sub_23ED410B0();
  v43 = v54;
  v44 = *(v53 + 8);
  v44(v41, v54);
  return (v44)(v35, v43);
}

uint64_t sub_23ED3C87C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = type metadata accessor for AlarmView(0);
  v4 = v3 - 8;
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v65 = v5;
  v62 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23ED410C0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_23ED419B0();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E68, &qword_23ED42418);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v50 - v10;
  v11 = (v1 + *(v4 + 32));
  v64 = *v11;
  v12 = *(v11 + 1);
  LOBYTE(v76) = v64;
  v77 = v12;
  v50[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E18, &qword_23ED42368);
  sub_23ED41860();
  v53 = v80;
  v52 = v81;
  v51 = v82;
  sub_23ED3C128(v8);
  v13 = sub_23ED41760();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v83 = MEMORY[0x277CE0BD8];
  v84 = MEMORY[0x277D638E8];
  v20 = swift_allocObject();
  v80 = v20;
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17 & 1;
  *(v20 + 40) = v19;
  v66 = v2;
  v76 = sub_23ED41460();
  v77 = v21;
  sub_23ED36884();
  v22 = sub_23ED41770();
  v24 = v23;
  v26 = v25;
  sub_23ED416A0();
  v27 = sub_23ED41750();
  v29 = v28;
  v31 = v30;

  sub_23ED38DA0(v22, v24, v26 & 1);

  LOBYTE(v76) = v64;
  v54 = v12;
  v77 = v12;
  sub_23ED41850();
  if (v73 == 1)
  {
    sub_23ED41840();
  }

  else
  {
    sub_23ED41820();
  }

  v32 = sub_23ED41740();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_23ED38DA0(v27, v29, v31 & 1);

  v78 = MEMORY[0x277CE0BD8];
  v79 = MEMORY[0x277D638E8];
  v39 = swift_allocObject();
  v76 = v39;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36 & 1;
  *(v39 + 40) = v38;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v72 = 0;
  v71 = 0u;
  v70 = 0u;
  v69 = 0;
  v68 = 0u;
  v67 = 0u;
  v40 = v56;
  sub_23ED419A0();
  LOBYTE(v80) = v64;
  v81 = v54;
  sub_23ED41850();
  LOBYTE(v80) = v76;
  v41 = v62;
  sub_23ED40694(v66, v62, type metadata accessor for AlarmView);
  v42 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v43 = swift_allocObject();
  sub_23ED40714(v41, v43 + v42, type metadata accessor for AlarmView);
  v44 = sub_23ED3B7F0(&qword_27E384E70, MEMORY[0x277D63E88], MEMORY[0x277D63E80]);
  v45 = v58;
  v46 = v59;
  sub_23ED41810();

  (*(v57 + 8))(v40, v46);
  sub_23ED40694(v66, v41, type metadata accessor for AlarmView);
  v47 = swift_allocObject();
  sub_23ED40714(v41, v47 + v42, type metadata accessor for AlarmView);
  v80 = v46;
  v81 = MEMORY[0x277D839B0];
  v82 = v44;
  v83 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v48 = v61;
  sub_23ED417B0();

  return (*(v60 + 8))(v45, v48);
}

uint64_t sub_23ED3CF7C(char a1)
{
  v2 = sub_23ED41390();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23ED413E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E384B68 != -1)
  {
    swift_once();
  }

  v8 = sub_23ED41580();
  __swift_project_value_buffer(v8, qword_27E384D18);
  v9 = sub_23ED41560();
  v10 = sub_23ED41A30();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_23ED34000, v9, v10, "[AlarmView.sendDirectInvocation]: %{BOOL}d", v11, 8u);
    MEMORY[0x23EF21AA0](v11, -1, -1);
  }

  v12 = *(v5 + 104);
  v12(v7, *MEMORY[0x277D61770], v4);
  sub_23ED413D0();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((a1 & 1) == 0)
  {

    v12(v7, *MEMORY[0x277D61778], v4);
    sub_23ED413D0();
    v13(v7, v4);
  }

  type metadata accessor for AlarmView(0);
  v14 = v21;
  v15 = v19;
  v16 = v20;
  (*(v20 + 104))(v19, *MEMORY[0x277D61860], v21);
  sub_23ED41380();
  (*(v16 + 8))(v15, v14);
  sub_23ED414B0();
  v17 = sub_23ED41370();

  sub_23ED3AB38(v17);

  sub_23ED419E0();
}

uint64_t sub_23ED3D2F0()
{
  v0 = sub_23ED41320();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D78, &qword_23ED42170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_23ED41190();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E384B68 != -1)
  {
    swift_once();
  }

  v11 = sub_23ED41580();
  __swift_project_value_buffer(v11, qword_27E384D18);
  v12 = sub_23ED41560();
  v13 = sub_23ED41A30();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v8;
    v15 = v1;
    v16 = v0;
    v17 = v14;
    *v14 = 0;
    _os_log_impl(&dword_23ED34000, v12, v13, "[AlarmView.onSnippetTapped]: Performing punchout", v14, 2u);
    v18 = v17;
    v0 = v16;
    v1 = v15;
    v8 = v21;
    MEMORY[0x23EF21AA0](v18, -1, -1);
  }

  sub_23ED41470();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_23ED3AAC0(v6, &qword_27E384D78, &qword_23ED42170);
  }

  (*(v8 + 32))(v10, v6, v7);
  type metadata accessor for AlarmView(0);
  sub_23ED41180();
  sub_23ED41310();
  sub_23ED419D0();
  (*(v1 + 8))(v3, v0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_23ED3D640@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_23ED41070();
  v50 = *(v1 - 8);
  v51 = v1;
  MEMORY[0x28223BE20](v1);
  v48 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CC8, &qword_23ED42390);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E50, &qword_23ED42398);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v40 - v5;
  v6 = sub_23ED41110();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v40 - v9;
  v10 = sub_23ED41290();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23ED412C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23ED41270();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  type metadata accessor for SleepAlarmView(0);
  sub_23ED41210();
  sub_23ED414C0();
  sub_23ED41260();
  (*(v14 + 8))(v16, v13);
  v24 = *(v18 + 8);
  v24(v21, v17);
  sub_23ED414E0();
  sub_23ED41250();
  (*(v40 + 8))(v12, v41);
  v24(v23, v17);
  sub_23ED41100();
  v55 = sub_23ED41840();
  sub_23ED40A7C();
  sub_23ED410D0();
  v25 = sub_23ED416B0();
  v26 = *(*(v25 - 8) + 56);
  v27 = v42;
  v26(v42, 1, 1, v25);
  sub_23ED416E0();
  sub_23ED3AAC0(v27, &qword_27E384E50, &qword_23ED42398);
  sub_23ED416C0();
  v28 = sub_23ED41700();

  v55 = v28;
  sub_23ED3A87C();
  sub_23ED410D0();
  v26(v27, 1, 1, v25);
  sub_23ED416E0();
  sub_23ED3AAC0(v27, &qword_27E384E50, &qword_23ED42398);
  sub_23ED416D0();
  v29 = sub_23ED41700();

  v55 = v29;
  v30 = v52;
  sub_23ED41120();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_23ED3A980();
  v31 = v44;
  sub_23ED410E0();

  v33 = v50;
  v32 = v51;
  v34 = v48;
  (*(v50 + 104))(v48, *MEMORY[0x277CC8A98], v51);
  v35 = v43;
  v36 = v47;
  sub_23ED410F0();
  (*(v33 + 8))(v34, v32);
  (*(v49 + 8))(v31, v36);
  sub_23ED410B0();
  v37 = v46;
  v38 = *(v45 + 8);
  v38(v35, v46);
  return (v38)(v30, v37);
}

uint64_t sub_23ED3DD28@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384DF0, &qword_23ED42340);
  MEMORY[0x28223BE20](v60);
  v61 = &v45 - v2;
  v3 = type metadata accessor for SleepAlarmView(0);
  v4 = *(v3 - 8);
  v52 = v3 - 8;
  v53 = v4;
  MEMORY[0x28223BE20](v3 - 8);
  v54 = v5;
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384DF8, &qword_23ED42348);
  MEMORY[0x28223BE20](v56);
  v51 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E00, &qword_23ED42350);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v45 - v8;
  v50 = sub_23ED41330();
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23ED41350();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_23ED418D0();
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E08, &qword_23ED42358);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CD8, &qword_23ED42360);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v45 - v19;
  v64 = sub_23ED41440();
  v65 = v21;
  sub_23ED414C0();
  v22 = sub_23ED412C0();
  (*(*(v22 - 8) + 56))(v20, 0, 1, v22);
  sub_23ED36884();
  v45 = sub_23ED41A40();
  v46 = v23;
  sub_23ED3AAC0(v20, &qword_27E384CD8, &qword_23ED42360);

  sub_23ED41340();
  sub_23ED418E0();
  v24 = v50;
  (*(v9 + 104))(v11, *MEMORY[0x277D62BD8], v50);
  v25 = sub_23ED3B7F0(&qword_27E384E10, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  sub_23ED417A0();
  (*(v9 + 8))(v11, v24);
  v26 = v15;
  v27 = v51;
  (*(v48 + 8))(v26, v13);
  v64 = v13;
  v65 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v47;
  v29 = sub_23ED41780();
  (*(v49 + 8))(v17, v28);
  v30 = v1 + *(v52 + 32);
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v64) = v31;
  v65 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E18, &qword_23ED42368);
  sub_23ED41850();
  LODWORD(v28) = v63;
  *v27 = sub_23ED41650();
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v33 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E20, &qword_23ED42370) + 44));
  if (v28 == 1)
  {
    sub_23ED3E62C(v1, v29, v45, v46, v33);
  }

  else
  {
    sub_23ED3EC30(v1, v29, v45, v46, v33);
  }

  v34 = sub_23ED41670();
  v35 = v55;
  v36 = v56;
  v37 = v27 + *(v56 + 36);
  *v37 = v34;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 1;
  sub_23ED40694(v1, v35, type metadata accessor for SleepAlarmView);
  v38 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v39 = swift_allocObject();
  sub_23ED40714(v35, v39 + v38, type metadata accessor for SleepAlarmView);
  v40 = sub_23ED4077C();
  v41 = v57;
  sub_23ED417B0();

  sub_23ED3AAC0(v27, &qword_27E384DF8, &qword_23ED42348);
  v43 = v58;
  v42 = v59;
  (*(v58 + 16))(v61, v41, v59);
  swift_storeEnumTagMultiPayload();
  v64 = v36;
  v65 = v40;
  swift_getOpaqueTypeConformance2();
  sub_23ED41660();

  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_23ED3E62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *&v73 = a3;
  *(&v73 + 1) = a4;
  v71 = a2;
  v70[1] = a1;
  v80 = a5;
  v5 = sub_23ED410C0();
  MEMORY[0x28223BE20](v5 - 8);
  v72 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E40, &qword_23ED42380) - 8;
  v7 = MEMORY[0x28223BE20](v78);
  v79 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = v70 - v9;
  v10 = sub_23ED41950();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v74 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = v70 - v13;
  v106 = sub_23ED41480();
  v107 = v14;
  v70[2] = sub_23ED36884();
  v15 = sub_23ED41770();
  v17 = v16;
  v19 = v18;
  sub_23ED41720();
  v20 = sub_23ED41750();
  v22 = v21;
  v24 = v23;

  sub_23ED38DA0(v15, v17, v19 & 1);

  sub_23ED41840();
  v25 = sub_23ED41740();
  v27 = v26;
  LOBYTE(v17) = v28;
  v30 = v29;

  sub_23ED38DA0(v20, v22, v24 & 1);

  v108 = MEMORY[0x277CE0BD8];
  v109 = MEMORY[0x277D638E8];
  v31 = MEMORY[0x277D638E8];
  v32 = swift_allocObject();
  v106 = v32;
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v17 & 1;
  *(v32 + 40) = v30;
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = MEMORY[0x277CE11C8];
  v84 = MEMORY[0x277D63A60];
  v82 = v71;

  sub_23ED41940();
  sub_23ED3D640(v72);
  v33 = sub_23ED41760();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v108 = MEMORY[0x277CE0BD8];
  v109 = v31;
  v40 = swift_allocObject();
  v106 = v40;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37 & 1;
  *(v40 + 40) = v39;
  v103 = v73;

  v41 = sub_23ED41770();
  v43 = v42;
  v45 = v44;
  sub_23ED416A0();
  v46 = sub_23ED41750();
  v48 = v47;
  LOBYTE(v17) = v49;

  sub_23ED38DA0(v41, v43, v45 & 1);

  sub_23ED41840();
  v50 = sub_23ED41740();
  v52 = v51;
  LOBYTE(v39) = v53;
  v55 = v54;

  sub_23ED38DA0(v46, v48, v17 & 1);

  *(&v104 + 1) = MEMORY[0x277CE0BD8];
  v105 = MEMORY[0x277D638E8];
  v56 = swift_allocObject();
  *&v103 = v56;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v39 & 1;
  *(v56 + 40) = v55;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v57 = v75;
  sub_23ED41990();
  v58 = sub_23ED41680();
  v59 = v77;
  v60 = v57 + *(v78 + 44);
  *v60 = v58;
  *(v60 + 8) = 0u;
  *(v60 + 24) = 0u;
  *(v60 + 40) = 1;
  v61 = v76;
  v62 = *(v76 + 16);
  v63 = v74;
  v64 = v81;
  v62(v74, v81, v59);
  v65 = v79;
  sub_23ED40A0C(v57, v79);
  v66 = v80;
  v62(v80, v63, v59);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E48, &qword_23ED42388);
  sub_23ED40A0C(v65, &v66[*(v67 + 48)]);
  sub_23ED3AAC0(v57, &qword_27E384E40, &qword_23ED42380);
  v68 = *(v61 + 8);
  v68(v64, v59);
  sub_23ED3AAC0(v65, &qword_27E384E40, &qword_23ED42380);
  return (v68)(v63, v59);
}

uint64_t sub_23ED3EC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *&v85 = a3;
  *(&v85 + 1) = a4;
  v82 = a1;
  v83 = a2;
  v92 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E50, &qword_23ED42398);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v82 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E40, &qword_23ED42380) - 8;
  v7 = MEMORY[0x28223BE20](v90);
  v91 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v82 - v9;
  v10 = sub_23ED41950();
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v86 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v82 - v13;
  v119 = sub_23ED41480();
  v120 = v14;
  v93 = sub_23ED36884();
  v15 = sub_23ED41770();
  v17 = v16;
  v19 = v18;
  sub_23ED41720();
  v20 = sub_23ED41750();
  v22 = v21;
  v24 = v23;

  sub_23ED38DA0(v15, v17, v19 & 1);

  sub_23ED41840();
  v25 = sub_23ED41740();
  v27 = v26;
  LOBYTE(v17) = v28;
  v30 = v29;

  sub_23ED38DA0(v20, v22, v24 & 1);

  v121 = MEMORY[0x277CE0BD8];
  v122 = MEMORY[0x277D638E8];
  v31 = swift_allocObject();
  v119 = v31;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v17 & 1;
  *(v31 + 40) = v30;
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = MEMORY[0x277CE11C8];
  v97 = MEMORY[0x277D63A60];
  v95 = v83;

  sub_23ED41940();
  v119 = sub_23ED41490();
  v120 = v32;
  v33 = sub_23ED41770();
  v35 = v34;
  LOBYTE(v15) = v36;
  v37 = sub_23ED416B0();
  v38 = v84;
  (*(*(v37 - 8) + 56))(v84, 1, 1, v37);
  sub_23ED416E0();
  sub_23ED3AAC0(v38, &qword_27E384E50, &qword_23ED42398);
  v39 = sub_23ED41750();
  v41 = v40;
  LOBYTE(v27) = v42;

  sub_23ED38DA0(v33, v35, v15 & 1);

  sub_23ED416D0();
  v43 = sub_23ED41730();
  v45 = v44;
  LOBYTE(v15) = v46;
  sub_23ED38DA0(v39, v41, v27 & 1);

  sub_23ED41820();
  v47 = sub_23ED41740();
  v49 = v48;
  LOBYTE(v35) = v50;
  v52 = v51;

  sub_23ED38DA0(v43, v45, v15 & 1);

  v121 = MEMORY[0x277CE0BD8];
  v122 = MEMORY[0x277D638E8];
  v53 = swift_allocObject();
  v119 = v53;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v35 & 1;
  *(v53 + 40) = v52;
  v116 = v85;

  v54 = sub_23ED41770();
  v56 = v55;
  LOBYTE(v15) = v57;
  sub_23ED416A0();
  v58 = sub_23ED41750();
  v60 = v59;
  LOBYTE(v35) = v61;

  sub_23ED38DA0(v54, v56, v15 & 1);

  sub_23ED41820();
  v62 = sub_23ED41740();
  v64 = v63;
  LOBYTE(v39) = v65;
  v67 = v66;

  sub_23ED38DA0(v58, v60, v35 & 1);

  *(&v117 + 1) = MEMORY[0x277CE0BD8];
  v118 = MEMORY[0x277D638E8];
  v68 = swift_allocObject();
  *&v116 = v68;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  *(v68 + 32) = v39 & 1;
  *(v68 + 40) = v67;
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  v69 = v87;
  sub_23ED41990();
  v70 = sub_23ED41680();
  v71 = v89;
  v72 = v69 + *(v90 + 44);
  *v72 = v70;
  *(v72 + 8) = 0u;
  *(v72 + 24) = 0u;
  *(v72 + 40) = 1;
  v73 = v88;
  v74 = *(v88 + 16);
  v75 = v86;
  v76 = v94;
  v74(v86, v94, v71);
  v77 = v91;
  sub_23ED40A0C(v69, v91);
  v78 = v92;
  v74(v92, v75, v71);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E48, &qword_23ED42388);
  sub_23ED40A0C(v77, &v78[*(v79 + 48)]);
  sub_23ED3AAC0(v69, &qword_27E384E40, &qword_23ED42380);
  v80 = *(v73 + 8);
  v80(v76, v71);
  sub_23ED3AAC0(v77, &qword_27E384E40, &qword_23ED42380);
  return (v80)(v75, v71);
}

uint64_t sub_23ED3F394()
{
  v0 = sub_23ED41320();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D78, &qword_23ED42170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_23ED41190();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23ED41470();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_23ED3AAC0(v6, &qword_27E384D78, &qword_23ED42170);
  }

  (*(v8 + 32))(v10, v6, v7);
  type metadata accessor for SleepAlarmView(0);
  sub_23ED41180();
  sub_23ED41310();
  sub_23ED419D0();
  (*(v1 + 8))(v3, v0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t static AlarmSnippet_Previews.previews.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_23ED413C0();
  v19 = *(v1 - 8);
  v20 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v18 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v17 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D78, &qword_23ED42170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_23ED412C0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_23ED41290();
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D80, &qword_23ED42178);
  sub_23ED414F0();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23ED42100;
  sub_23ED41280();
  sub_23ED412A0();
  v10 = sub_23ED41190();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  sub_23ED414A0();
  sub_23ED41280();
  sub_23ED412A0();
  v11(v7, 1, 1, v10);
  sub_23ED414A0();
  sub_23ED41280();
  sub_23ED412A0();
  v11(v7, 1, 1, v10);
  sub_23ED414A0();
  sub_23ED41280();
  sub_23ED412A0();
  v11(v7, 1, 1, v10);
  sub_23ED414A0();
  v12 = v17;
  sub_23ED413A0();
  v13 = v19;
  v14 = v20;
  (*(v19 + 16))(v18, v12, v20);
  type metadata accessor for AlarmSnippet(0);
  sub_23ED3B7F0(&qword_27E384D88, MEMORY[0x277D61768], MEMORY[0x277D61760]);
  sub_23ED3B7F0(&qword_27E384D90, type metadata accessor for AlarmSnippet, &protocol conformance descriptor for AlarmSnippet);
  sub_23ED418C0();
  return (*(v13 + 8))(v12, v14);
}

uint64_t sub_23ED3FC64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for AlarmSnippet(0) + 20);
  v5 = sub_23ED413C0();
  (*(*(v5 - 8) + 16))(&a2[v4], a1, v5);
  sub_23ED419F0();
  sub_23ED3B7F0(&qword_27E384B70, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  result = sub_23ED415F0();
  *a2 = result;
  *(a2 + 1) = v7;
  return result;
}

unint64_t sub_23ED3FD48()
{
  result = qword_27E384D98;
  if (!qword_27E384D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D98);
  }

  return result;
}

uint64_t sub_23ED3FDC0(uint64_t a1)
{
  v2 = sub_23ED40C9C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_23ED3FE0C(uint64_t a1)
{
  v2 = sub_23ED40C9C();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_23ED3FE6C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_23ED413C0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23ED3FF38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_23ED413C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23ED3FFDC(uint64_t a1)
{
  sub_23ED36458(319);
  if (v1 <= 0x3F)
  {
    sub_23ED413C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmSnippet_Previews(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AlarmSnippet_Previews(_WORD *result, int a2, int a3)
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

unint64_t sub_23ED40148()
{
  result = qword_27E384DB0;
  if (!qword_27E384DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384D70, &unk_23ED42160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384D30, &qword_23ED42118);
    sub_23ED366B8(&qword_27E384D68, &qword_27E384D30, &qword_23ED42118, MEMORY[0x277D63B90]);
    swift_getOpaqueTypeConformance2();
    sub_23ED366B8(&qword_27E384C28, &qword_27E384C18, &qword_23ED41E50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384DB0);
  }

  return result;
}

void sub_23ED402E4()
{
  if (!qword_27E384DD8)
  {
    v0 = sub_23ED41870();
    if (!v1)
    {
      atomic_store(v0, &qword_27E384DD8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23ED414F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_23ED41240();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23ED414F0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_23ED41240();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_23ED405A8(uint64_t a1)
{
  sub_23ED414F0();
  if (v1 <= 0x3F)
  {
    sub_23ED419F0();
    if (v2 <= 0x3F)
    {
      sub_23ED402E4();
      if (v3 <= 0x3F)
      {
        sub_23ED41240();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23ED40694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23ED40714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23ED4077C()
{
  result = qword_27E384E28;
  if (!qword_27E384E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384DF8, &qword_23ED42348);
    sub_23ED366B8(&qword_27E384E30, &qword_27E384E38, &qword_23ED42378, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384E28);
  }

  return result;
}

uint64_t objectdestroy_29Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_23ED414F0();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  v7 = v2[9];
  v8 = sub_23ED41240();
  (*(*(v8 - 8) + 8))(v1 + v4 + v7, v8);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_23ED409C8()
{
  sub_23ED38DA0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23ED40A0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E40, &qword_23ED42380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23ED40A7C()
{
  result = qword_27E384E58;
  if (!qword_27E384E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384E58);
  }

  return result;
}

void sub_23ED40AF0(uint64_t a1, uint64_t *a2)
{
  sub_23ED3A980();
  sub_23ED41130();
  __break(1u);
}

uint64_t sub_23ED40BB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  type metadata accessor for AlarmView(0);
  result = *a2;
  if (*a1 != result)
  {
    return sub_23ED3CF7C(result);
  }

  return result;
}

uint64_t sub_23ED40C2C()
{
  type metadata accessor for AlarmView(0);

  return sub_23ED3D2F0();
}

_OWORD *sub_23ED40C8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23ED40C9C()
{
  result = qword_27E384E80;
  if (!qword_27E384E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384E80);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for AlarmSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_23ED413C0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23ED40DD8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AlarmSnippet(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_23ED3B880(a1, v6, a2);
}

uint64_t sub_23ED40E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23ED40EBC()
{
  result = qword_27E384EA8;
  if (!qword_27E384EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E384EB0, &qword_23ED42448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384DF8, &qword_23ED42348);
    sub_23ED4077C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384EA8);
  }

  return result;
}

uint64_t sub_23ED40F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384E68, &qword_23ED42418);
  sub_23ED419B0();
  sub_23ED3B7F0(&qword_27E384E70, MEMORY[0x277D63E88], MEMORY[0x277D63E80]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}