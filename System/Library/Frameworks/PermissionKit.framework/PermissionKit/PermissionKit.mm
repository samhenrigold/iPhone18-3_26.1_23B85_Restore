uint64_t getEnumTagSinglePayload for AskToConversion.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AskToConversion.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23A61D77C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23A61D7DC()
{
  v1 = *v0;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v1);
  return sub_23A636CA0();
}

uint64_t sub_23A61D850(uint64_t a1)
{
  v2 = *v1;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v2);
  return sub_23A636CA0();
}

uint64_t sub_23A61D948(uint64_t a1, uint64_t a2)
{
  sub_23A636C80();
  swift_getWitnessTable();
  sub_23A6362B0();
  return sub_23A636CA0();
}

uint64_t sub_23A61D9B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_23A6362A0();
}

unint64_t sub_23A61DA20()
{
  result = qword_27DF98010;
  if (!qword_27DF98010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98010);
  }

  return result;
}

uint64_t sub_23A61DADC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CommunicationHandle.kind.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_23A636610();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_23A636620();
  (*(v3 + 16))(v6, v8, v2);
  v9 = (*(v3 + 88))(v6, v2);
  if (v9 == *MEMORY[0x277CEEC30])
  {
    v10 = 0;
LABEL_7:
    result = (*(v3 + 8))(v8, v2);
    *a1 = v10;
    return result;
  }

  if (v9 == *MEMORY[0x277CEEC38])
  {
    v10 = 1;
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277CEEC40])
  {
    v10 = 2;
    goto LABEL_7;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t CommunicationHandle.init(value:kind:)@<X0>(char *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_23A636610();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_278B53A08 + *a3));
  v9 = objc_allocWithZone(sub_23A636670());
  result = sub_23A636640();
  *a4 = result;
  return result;
}

uint64_t sub_23A61DE20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23A636610();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277CEEC30])
  {
    v9 = 0;
LABEL_7:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v9;
    return result;
  }

  if (v8 == *MEMORY[0x277CEEC38])
  {
    v9 = 1;
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277CEEC40])
  {
    v9 = 2;
    goto LABEL_7;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t sub_23A61DFE8()
{
  v1 = 0x6464416C69616D65;
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
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_23A61E050@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A6205B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A61E090(uint64_t a1)
{
  v2 = sub_23A61E6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61E0CC(uint64_t a1)
{
  v2 = sub_23A61E6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A61E114@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_23A61E150(uint64_t a1)
{
  v2 = sub_23A61E704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61E18C(uint64_t a1)
{
  v2 = sub_23A61E704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A61E1C8(uint64_t a1)
{
  v2 = sub_23A61E758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61E204(uint64_t a1)
{
  v2 = sub_23A61E758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A61E240(uint64_t a1)
{
  v2 = sub_23A61E7AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61E27C(uint64_t a1)
{
  v2 = sub_23A61E7AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommunicationHandle.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98028, &qword_23A637530);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98030, &qword_23A637538);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98038, &qword_23A637540);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98040, &qword_23A637548);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A61E6B0();
  sub_23A636CC0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_23A61E758();
      v9 = v21;
      sub_23A636BA0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_23A61E704();
      v9 = v24;
      sub_23A636BA0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_23A61E7AC();
    sub_23A636BA0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23A61E6B0()
{
  result = qword_27DF98048;
  if (!qword_27DF98048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98048);
  }

  return result;
}

unint64_t sub_23A61E704()
{
  result = qword_27DF98050;
  if (!qword_27DF98050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98050);
  }

  return result;
}

unint64_t sub_23A61E758()
{
  result = qword_27DF98058;
  if (!qword_27DF98058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98058);
  }

  return result;
}

unint64_t sub_23A61E7AC()
{
  result = qword_27DF98060;
  if (!qword_27DF98060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98060);
  }

  return result;
}

uint64_t CommunicationHandle.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v1);
  return sub_23A636CA0();
}

uint64_t CommunicationHandle.Kind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98068, &qword_23A637550);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98070, &qword_23A637558);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98078, &qword_23A637560);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98080, &qword_23A637568);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A61E6B0();
  v13 = v43;
  sub_23A636CB0();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_23A636B80();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_23A61E758();
          v27 = v34;
          sub_23A636B20();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_23A61E704();
          v31 = v34;
          sub_23A636B20();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_23A61E7AC();
        v29 = v34;
        sub_23A636B20();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_23A636A60();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98088, &qword_23A637570);
  *v23 = &type metadata for CommunicationHandle.Kind;
  sub_23A636B30();
  sub_23A636A50();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_23A61EE34()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A61EE68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t (*CommunicationHandle.value.modify(void *a1))()
{
  a1[2] = *v1;
  *a1 = MEMORY[0x23EE87820]();
  a1[1] = v3;
  return sub_23A61EF88;
}

uint64_t sub_23A61EF88(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_23A636660();
  }

  sub_23A636660();
}

uint64_t sub_23A61EFFC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_23A636610();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A636620();
  result = sub_23A61DE20(v4, &v7);
  *a1 = v7;
  return result;
}

uint64_t sub_23A61F094(char *a1)
{
  v2 = sub_23A636610();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_278B53A08 + *a1));
  return sub_23A636630();
}

uint64_t CommunicationHandle.kind.setter(char *a1)
{
  v2 = sub_23A636610();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_278B53A08 + *a1));
  return sub_23A636630();
}

void (*CommunicationHandle.kind.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_23A636610();
  *v5 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[1] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v9);
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v5[6] = *v1;
  sub_23A636620();
  (*(v8 + 16))(v10, v12, v6);
  v13 = (*(v8 + 88))(v10, v6);
  v14 = *MEMORY[0x277CEEC30];
  *(v5 + 14) = *MEMORY[0x277CEEC30];
  if (v13 == v14)
  {
    v15 = 0;
LABEL_13:
    (*(v8 + 8))(v12, v6);
    *(v5 + 60) = v15;
    return sub_23A61F4A8;
  }

  if (v13 == *MEMORY[0x277CEEC38])
  {
    v15 = 1;
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277CEEC40])
  {
    v15 = 2;
    goto LABEL_13;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

void sub_23A61F4A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 60);
  if (a2)
  {
    if (v3 == 2)
    {
      v4 = MEMORY[0x277CEEC40];
    }

    else if (v3 == 1)
    {
      v4 = MEMORY[0x277CEEC38];
    }

    else
    {
      v4 = (v2 + 7);
    }

    v6 = v2[5];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[2];
    (*(v2[1] + 104))(v9, *v4, *v2);
  }

  else
  {
    if (v3 == 2)
    {
      v5 = MEMORY[0x277CEEC40];
    }

    else if (v3 == 1)
    {
      v5 = MEMORY[0x277CEEC38];
    }

    else
    {
      v5 = (v2 + 7);
    }

    v6 = v2[5];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[2];
    (*(v2[1] + 104))(v8, *v5, *v2);
  }

  sub_23A636630();
  free(v6);
  free(v7);
  free(v8);
  free(v9);

  free(v2);
}

unint64_t sub_23A61F610()
{
  result = qword_27DF98090;
  if (!qword_27DF98090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF98090);
  }

  return result;
}

uint64_t sub_23A61F664()
{
  sub_23A636C80();
  MEMORY[0x23EE87E60](0);
  return sub_23A636CA0();
}

uint64_t sub_23A61F6D0(uint64_t a1)
{
  sub_23A636C80();
  MEMORY[0x23EE87E60](0);
  return sub_23A636CA0();
}

uint64_t sub_23A61F728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C646E61685FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23A636C10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23A61F7B0(uint64_t a1)
{
  v2 = sub_23A61F9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61F7EC(uint64_t a1)
{
  v2 = sub_23A61F9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommunicationHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98098, &qword_23A637578);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A61F9A8();
  v8 = v7;
  sub_23A636CC0();
  v10[1] = v8;
  sub_23A636670();
  sub_23A61FC9C(&qword_27DF980A8, MEMORY[0x277CEEC58]);
  sub_23A636BF0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23A61F9A8()
{
  result = qword_27DF980A0;
  if (!qword_27DF980A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980A0);
  }

  return result;
}

uint64_t CommunicationHandle.hashValue.getter()
{
  sub_23A636C80();
  sub_23A6368F0();
  return sub_23A636CA0();
}

uint64_t CommunicationHandle.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF980B0, &qword_23A637580);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A61F9A8();
  sub_23A636CB0();
  if (!v2)
  {
    sub_23A636670();
    sub_23A61FC9C(&qword_27DF980B8, MEMORY[0x277CEEC60]);
    sub_23A636B70();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23A61FBF4()
{
  sub_23A636C80();
  sub_23A6368F0();
  return sub_23A636CA0();
}

uint64_t sub_23A61FC5C(uint64_t a1)
{
  sub_23A636C80();
  sub_23A6368F0();
  return sub_23A636CA0();
}

uint64_t sub_23A61FC9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23A636670();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A61FCE4()
{
  result = qword_27DF980C0;
  if (!qword_27DF980C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980C0);
  }

  return result;
}

unint64_t sub_23A61FD3C()
{
  result = qword_27DF980C8;
  if (!qword_27DF980C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980C8);
  }

  return result;
}

uint64_t sub_23A61FE04@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EE87820]();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23A61FE84(uint64_t *a1, int a2)
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

uint64_t sub_23A61FECC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CommunicationHandle.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CommunicationHandle.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_23A620014(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23A6200A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A62019C()
{
  result = qword_27DF980D0;
  if (!qword_27DF980D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980D0);
  }

  return result;
}

unint64_t sub_23A6201F4()
{
  result = qword_27DF980D8;
  if (!qword_27DF980D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980D8);
  }

  return result;
}

unint64_t sub_23A62024C()
{
  result = qword_27DF980E0;
  if (!qword_27DF980E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980E0);
  }

  return result;
}

unint64_t sub_23A6202A4()
{
  result = qword_27DF980E8;
  if (!qword_27DF980E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980E8);
  }

  return result;
}

unint64_t sub_23A6202FC()
{
  result = qword_27DF980F0;
  if (!qword_27DF980F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980F0);
  }

  return result;
}

unint64_t sub_23A620354()
{
  result = qword_27DF980F8;
  if (!qword_27DF980F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980F8);
  }

  return result;
}

unint64_t sub_23A6203AC()
{
  result = qword_27DF98100;
  if (!qword_27DF98100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98100);
  }

  return result;
}

unint64_t sub_23A620404()
{
  result = qword_27DF98108;
  if (!qword_27DF98108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98108);
  }

  return result;
}

unint64_t sub_23A62045C()
{
  result = qword_27DF98110;
  if (!qword_27DF98110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98110);
  }

  return result;
}

unint64_t sub_23A6204B4()
{
  result = qword_27DF98118;
  if (!qword_27DF98118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98118);
  }

  return result;
}

unint64_t sub_23A62050C()
{
  result = qword_27DF98120;
  if (!qword_27DF98120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98120);
  }

  return result;
}

unint64_t sub_23A620564()
{
  result = qword_27DF98128;
  if (!qword_27DF98128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98128);
  }

  return result;
}

uint64_t sub_23A6205B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v4 || (sub_23A636C10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_23A636C10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23A636C10();

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

uint64_t sub_23A6206FC(uint64_t a1)
{
  v149 = sub_23A6365C0();
  v2 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v148 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v126 - v5;
  v7 = sub_23A6366D0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v176 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v175 = &v126 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  MEMORY[0x28223BE20](v12 - 8);
  v128 = &v126 - v13;
  v130 = sub_23A636290();
  v129 = *(v130 - 8);
  v14 = MEMORY[0x28223BE20](v130);
  v174 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = &v126 - v16;
  v127 = sub_23A636600();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v138 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_23A636700();
  v136 = *(v143 - 8);
  v18 = MEMORY[0x28223BE20](v143);
  v142 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v141 = &v126 - v21;
  MEMORY[0x28223BE20](v20);
  v140 = &v126 - v22;
  v165 = sub_23A636610();
  v23 = *(v165 - 8);
  v24 = MEMORY[0x28223BE20](v165);
  v164 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v163 = &v126 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v173 = &v126 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v162 = &v126 - v31;
  MEMORY[0x28223BE20](v30);
  v172 = &v126 - v32;
  v171 = type metadata accessor for CommunicationTopic.PersonInformation(0);
  v161 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v178 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98170, &qword_23A637C60);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v137 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v126 - v37;
  v39 = sub_23A636330();
  v132 = *(v39 - 8);
  v40 = *(v132 + 56);
  v139 = v38;
  v135 = v39;
  v134 = v132 + 56;
  v133 = v40;
  (v40)(v38, 1, 1);
  v41 = *(*a1 + 120);
  v166 = a1;
  v42 = (a1 + v41);
  v43 = *v42;
  v145 = v42[1];
  v160 = *(v43 + 16);
  if (v160)
  {
    v44 = 0;
    v170 = (v23 + 16);
    v157 = (v23 + 88);
    v156 = *MEMORY[0x277CEEC30];
    v146 = *MEMORY[0x277CEEC38];
    v144 = *MEMORY[0x277CEEC40];
    v169 = (v23 + 8);
    v155 = (v23 + 104);
    v154 = (v23 + 32);
    v147 = (v2 + 8);
    v153 = (v8 + 16);
    v152 = v8 + 8;
    v151 = v8 + 32;
    v45 = MEMORY[0x277D84F90];
    v158 = v8;
    v46 = v165;
    v159 = v7;
    v167 = v43;
    v150 = v6;
    while (v44 < *(v43 + 16))
    {
      v177 = v45;
      sub_23A628E60(v43 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v44, v178);
      v47 = v173;
      sub_23A636620();
      v48 = *v170;
      v49 = v163;
      (*v170)(v163, v47, v46);
      v50 = (*v157)(v49, v46);
      v51 = v156;
      if (v50 != v156)
      {
        v51 = v146;
        if (v50 != v146)
        {
          v51 = v144;
          if (v50 != v144)
          {
            goto LABEL_86;
          }
        }
      }

      v168 = *v169;
      v168(v173, v46);
      v52 = v162;
      (*v155)(v162, v51, v46);
      v53 = v172;
      (*v154)(v172, v52, v46);
      v54 = sub_23A636280();
      MEMORY[0x23EE87820](v54);
      v48(v164, v53, v46);
      v55 = objc_allocWithZone(sub_23A636670());
      sub_23A636640();
      sub_23A628F84(&v178[*(v171 + 24)], v6, &qword_27DF98160, &unk_23A637C50);
      v56 = sub_23A636200();
      v57 = *(v56 - 8);
      v58 = (*(v57 + 48))(v6, 1, v56);

      if (v58 == 1)
      {
        sub_23A6291D4(v6, &qword_27DF98160, &unk_23A637C50);
      }

      else
      {
        sub_23A6361F0();
        (*(v57 + 8))(v6, v56);
      }

      if (*&v178[*(v171 + 28)])
      {
        v59 = v148;
        sub_23A6365B0();
        v181[3] = sub_23A636590();
        v181[4] = MEMORY[0x277CEEB58];
        __swift_allocate_boxed_opaque_existential_1(v181);
        sub_23A636580();
        sub_23A6365A0();
        (*v147)(v59, v149);
        __swift_destroy_boxed_opaque_existential_1(v181);
      }

      v60 = v175;
      sub_23A6366A0();
      v61 = v159;
      (*v153)(v176, v60, v159);
      v45 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_23A631618(0, v45[2] + 1, 1, v45);
      }

      v6 = v150;
      v63 = v45[2];
      v62 = v45[3];
      v64 = v158;
      v46 = v165;
      if (v63 >= v62 >> 1)
      {
        v45 = sub_23A631618((v62 > 1), v63 + 1, 1, v45);
      }

      ++v44;
      (*(v64 + 8))(v175, v61);
      v168(v172, v46);
      v45[2] = v63 + 1;
      (*(v64 + 32))(v45 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v176, v61);
      sub_23A628EC4(v178);
      v43 = v167;
      if (v160 == v44)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_82;
  }

  v45 = MEMORY[0x277D84F90];
LABEL_19:
  v181[0] = MEMORY[0x277D84FA0];
  v65 = v145 + 56;
  v66 = 1 << *(v145 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v145 + 56);
  LODWORD(v174) = *MEMORY[0x277CEECA0];
  v69 = (v66 + 63) >> 6;
  v178 = v136 + 104;
  LODWORD(v173) = *MEMORY[0x277CEEC88];
  LODWORD(v172) = *MEMORY[0x277CEEC78];
  LODWORD(v171) = *MEMORY[0x277CEECB0];
  LODWORD(v170) = *MEMORY[0x277CEECB8];
  LODWORD(v169) = *MEMORY[0x277CEECA8];
  LODWORD(v168) = *MEMORY[0x277CEEC80];
  LODWORD(v167) = *MEMORY[0x277CEEC70];
  LODWORD(v165) = *MEMORY[0x277CEEC90];
  v175 = v136 + 8;
  v176 = v136 + 16;
  LODWORD(v164) = *MEMORY[0x277CEEC98];

  v70 = 0;
  v177 = v45;
  v71 = v143;
LABEL_32:
  if (v68)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v79 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (v79 >= v69)
    {
      break;
    }

    v68 = *(v65 + 8 * v79);
    ++v70;
    if (v68)
    {
      v70 = v79;
LABEL_37:
      v80 = *(*(v145 + 48) + (__clz(__rbit64(v68)) | (v70 << 6)));
      if (v80 > 4)
      {
        v72 = v174;
        if (v80 == 8)
        {
          v72 = v173;
        }

        if (v80 == 7)
        {
          v72 = v172;
        }

        v73 = v171;
        if (v80 == 5)
        {
          v73 = v170;
        }

        if (v80 <= 6)
        {
          v74 = v73;
        }

        else
        {
          v74 = v72;
        }
      }

      else if (v80 <= 1)
      {
        if (v80)
        {
          v74 = v165;
        }

        else
        {
          v74 = v164;
        }
      }

      else
      {
        v81 = v169;
        if (v80 == 3)
        {
          v81 = v168;
        }

        if (v80 == 2)
        {
          v74 = v167;
        }

        else
        {
          v74 = v81;
        }
      }

      v68 &= v68 - 1;
      v75 = v140;
      (*v178)(v140, v74, v71);
      v76 = v142;
      (*v176)(v142, v75, v71);
      v77 = v141;
      sub_23A624E5C(v141, v76);
      v78 = *v175;
      (*v175)(v77, v71);
      v78(v75, v71);
      goto LABEL_32;
    }
  }

  v82 = objc_allocWithZone(sub_23A636720());
  v83 = sub_23A6366E0();
  v84 = v139;
  sub_23A6291D4(v139, &qword_27DF98170, &qword_23A637C60);
  *v84 = v83;
  v85 = v135;
  (*(v132 + 104))(v84, *MEMORY[0x277CEEAD0], v135);
  v133(v84, 0, 1, v85);
  v86 = objc_opt_self();
  v87 = [v86 mainBundle];
  v88 = [v87 localizedInfoDictionary];

  if (!v88)
  {
    goto LABEL_55;
  }

  v89 = sub_23A636770();

  if (!*MEMORY[0x277CBED50])
  {
    goto LABEL_85;
  }

  v90 = sub_23A6367B0();
  if (!*(v89 + 16))
  {

    goto LABEL_54;
  }

  v92 = sub_23A632D50(v90, v91);
  v94 = v93;

  if ((v94 & 1) == 0)
  {
LABEL_54:

    goto LABEL_55;
  }

  sub_23A628FEC(*(v89 + 56) + 32 * v92, v181);

  if (swift_dynamicCast())
  {
LABEL_59:
    v100 = v180;
    goto LABEL_69;
  }

LABEL_55:
  v95 = [v86 mainBundle];
  v96 = [v95 localizedInfoDictionary];

  if (v96)
  {
    v97 = sub_23A636770();

    if (*(v97 + 16) && (v98 = sub_23A632D50(0xD000000000000013, 0x800000023A63B320), (v99 & 1) != 0))
    {
      sub_23A628FEC(*(v97 + 56) + 32 * v98, v181);

      if (swift_dynamicCast())
      {
        goto LABEL_59;
      }
    }

    else
    {
    }
  }

  v101 = [v86 mainBundle];
  v102 = [v101 localizedInfoDictionary];

  if (!v102)
  {
    goto LABEL_68;
  }

  v103 = sub_23A636770();

  if (!*(v103 + 16) || (v104 = sub_23A632D50(0x656C646E75424643, 0xEC000000656D614ELL), (v105 & 1) == 0))
  {

LABEL_68:
    v100 = 0;
    goto LABEL_69;
  }

  sub_23A628FEC(*(v103 + 56) + 32 * v104, v181);

  if (swift_dynamicCast())
  {
    v100 = v180;
  }

  else
  {
    v100 = 0;
  }

LABEL_69:
  v106 = [objc_opt_self() defaultStore];
  if (!v106)
  {
    goto LABEL_84;
  }

  v107 = v106;
  v108 = [v106 aa_primaryAppleAccount];

  v177 = v108;
  v178 = v100;
  if (v108)
  {
    v109 = [v108 aa_firstName];
    if (v109)
    {
      v110 = v109;
      sub_23A6367B0();
    }
  }

  sub_23A628F84(v139, v137, &qword_27DF98170, &qword_23A637C60);
  swift_beginAccess();
  swift_beginAccess();
  v111 = v166;

  sub_23A6365D0();
  sub_23A636440();
  (*(v129 + 16))(v131, v111 + qword_27DF9C738, v130);
  v112 = objc_allocWithZone(sub_23A636400());
  sub_23A6363E0();
  sub_23A6365E0();
  sub_23A6365F0();
  v113 = sub_23A6363C0();
  v114 = *(*v111 + 128);
  swift_beginAccess();
  v115 = *(v111 + v114);
  v116 = *(v115 + 16);
  if (v116)
  {
    v179 = MEMORY[0x277D84F90];

    sub_23A636AC0();
    v117 = 0;
    do
    {
      if (v117 >= *(v115 + 16))
      {
        goto LABEL_83;
      }

      v118 = *(v115 + 8 * v117 + 32);
      sub_23A636460();
      sub_23A636490();
      v119 = objc_allocWithZone(sub_23A6364B0());
      sub_23A636450();
      if ((sub_23A636470() - 1) > 1u)
      {
        goto LABEL_86;
      }

      ++v117;
      sub_23A636480();

      sub_23A636AA0();
      sub_23A636AD0();
      sub_23A636AE0();
      sub_23A636AB0();
      v111 = v166;
    }

    while (v116 != v117);
  }

  sub_23A636350();
  v120 = *(*v111 + 136);
  swift_beginAccess();
  v121 = *(v111 + v120);
  sub_23A636460();
  sub_23A636490();
  v122 = objc_allocWithZone(sub_23A6364B0());
  sub_23A636450();
  if ((sub_23A636470() - 1) > 1u)
  {
    while (1)
    {
LABEL_86:
      sub_23A636AF0();
      __break(1u);
    }
  }

  sub_23A636480();

  sub_23A6363B0();
  v123 = *(*v111 + 144);
  swift_beginAccess();
  sub_23A628F84(v111 + v123, v128, &qword_27DF98168, &qword_23A639340);
  sub_23A636370();
  v124 = v139;
  sub_23A628F84(v139, v137, &qword_27DF98170, &qword_23A637C60);
  sub_23A636320();
  sub_23A636390();

  (*(v126 + 8))(v138, v127);
  sub_23A6291D4(v124, &qword_27DF98170, &qword_23A637C60);
  return v113;
}

uint64_t sub_23A621F84(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_23A636AC0();
    v4 = v1 + 56;
    result = sub_23A636920();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 64;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 48) + 8 * v5);
      sub_23A636AA0();
      sub_23A636AD0();
      v1 = v19;
      sub_23A636AE0();
      result = sub_23A636AB0();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_23A62909C(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_23A62909C(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_23A622198(uint64_t a1)
{
  v1 = a1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_23A636990();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v36 = MEMORY[0x277D84F90];
    sub_23A627898(0, v2 & ~(v2 >> 63), 0);
    v3 = v36;
    if (v30)
    {
      v4 = sub_23A636940();
    }

    else
    {
      v4 = sub_23A636920();
      v5 = *(v1 + 36);
    }

    v33 = v4;
    v34 = v5;
    v35 = v30 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v1 + 56;
      v27 = v1 + 64;
      v29 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_36;
        }

        v10 = v33;
        v9 = v34;
        v11 = v35;
        v12 = v1;
        sub_23A627B38(v33, v34, v35, v1);
        v14 = v13;
        v36 = v3;
        v16 = *(v3 + 16);
        v15 = *(v3 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_23A627898((v15 > 1), v16 + 1, 1);
          v3 = v36;
        }

        *(v3 + 16) = v16 + 1;
        *(v3 + 8 * v16 + 32) = v14;
        v31 = v3;
        if (v30)
        {
          if (!v11)
          {
            goto LABEL_41;
          }

          v1 = v12;
          if (sub_23A636960())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981A0, &qword_23A637C78);
          v7 = sub_23A636890();
          sub_23A6369D0();
          v7(v32, 0);
        }

        else
        {
          if (v11)
          {
            goto LABEL_42;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v12;
          v17 = 1 << *(v12 + 32);
          if (v10 >= v17)
          {
            goto LABEL_37;
          }

          v18 = v10 >> 6;
          v19 = *(v28 + 8 * (v10 >> 6));
          if (((v19 >> v10) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_39;
          }

          v20 = v19 & (-2 << (v10 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v29;
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (v27 + 8 * v18);
            v2 = v29;
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_23A62909C(v10, v9, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_32;
              }
            }

            sub_23A62909C(v10, v9, 0);
          }

LABEL_32:
          v26 = *(v1 + 36);
          v33 = v17;
          v34 = v26;
          v35 = 0;
        }

        v3 = v31;
        if (v6 == v2)
        {
          sub_23A62909C(v33, v34, v35);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

void sub_23A6224CC(uint64_t *a1@<X8>)
{
  v3 = sub_23A636570();
  v4 = sub_23A622634(v3);

  if (!v1)
  {
    v5 = sub_23A636560();
    if ((sub_23A636470() - 1) >= 2u)
    {
      sub_23A636AF0();
      __break(1u);
    }

    else
    {
      sub_23A636460();
      sub_23A636490();
      sub_23A636800();
      v6 = objc_allocWithZone(sub_23A6364B0());
      v7 = sub_23A636450();
      sub_23A636480();

      *a1 = v4;
      a1[1] = v7;
    }
  }
}

uint64_t sub_23A622634(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v51 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98200, &qword_23A637CB8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v10 = sub_23A636290();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  sub_23A622DE4(v68);
  if (v1)
  {
    return v2;
  }

  v60 = v9;
  v61 = v11;
  v59 = 0;
  v17 = sub_23A6363A0();
  if (!v17)
  {
    sub_23A629180();
    v2 = swift_allocError();
    *v31 = 1;
    swift_willThrow();
    goto LABEL_24;
  }

  v18 = v17;
  v52 = v14;
  v55 = v16;
  if ((sub_23A636470() - 1) < 2u)
  {
    sub_23A636460();
    v56 = v18;
    v66 = sub_23A636490();
    v67 = v19;
    sub_23A636800();
    v65 = sub_23A6364B0();
    v20 = objc_allocWithZone(v65);
    v54 = sub_23A636450();
    sub_23A636480();
    v21 = sub_23A636340();
    v22 = v21;
    if (v21 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23A636990())
    {
      v57 = v10;
      v58 = a1;
      v53 = v6;
      if (!i)
      {
        break;
      }

      a1 = 0;
      v63 = v22 & 0xFFFFFFFFFFFFFF8;
      v64 = v22 & 0xC000000000000001;
      v24 = MEMORY[0x277D84F90];
      v62 = v22;
      while (1)
      {
        if (v64)
        {
          v25 = MEMORY[0x23EE87C10](a1, v22);
        }

        else
        {
          if (a1 >= *(v63 + 16))
          {
            goto LABEL_28;
          }

          v25 = *(v22 + 8 * a1 + 32);
        }

        v26 = v25;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        v69 = (a1 + 1);
        v10 = i;
        if ((sub_23A636470() - 1) >= 2u)
        {
          goto LABEL_30;
        }

        sub_23A636460();
        v66 = sub_23A636490();
        v67 = v27;
        sub_23A636800();
        v28 = objc_allocWithZone(v65);
        v29 = sub_23A636450();
        sub_23A636480();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_23A631844(0, *(v24 + 2) + 1, 1, v24);
        }

        v6 = *(v24 + 2);
        v30 = *(v24 + 3);
        if (v6 >= v30 >> 1)
        {
          v24 = sub_23A631844((v30 > 1), v6 + 1, 1, v24);
        }

        *(v24 + 2) = v6 + 1;
        *&v24[8 * v6 + 32] = v29;
        ++a1;
        v22 = v62;
        if (v69 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_22:

    sub_23A6363D0();
    v32 = v60;
    sub_23A636270();

    v33 = v61;
    v34 = v57;
    if ((*(v61 + 48))(v32, 1, v57) != 1)
    {
      v69 = *(v33 + 32);
      v37 = v55;
      v69(v55, v32, v34);
      sub_23A636410();

      sub_23A636430();

      v38 = v52;
      (*(v33 + 16))(v52, v37, v34);
      v39 = v68[0];
      v65 = v68[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98210, &qword_23A637CC0);
      v2 = swift_allocObject();
      v40 = v24;
      v41 = *(*v2 + 144);
      v42 = sub_23A636260();
      (*(*(v42 - 8) + 56))(v2 + v41, 1, 1, v42);
      v69((v2 + qword_27DF9C738), v38, v34);
      v43 = (v2 + qword_27DF9C740);
      *v43 = 0;
      v43[1] = 0xE000000000000000;
      v44 = (v2 + qword_27DF9C748);
      *v44 = 0;
      v44[1] = 0xE000000000000000;
      v45 = (v2 + *(*v2 + 120));
      v46 = v65;
      *v45 = v39;
      v45[1] = v46;
      *(v2 + *(*v2 + 128)) = v40;
      v47 = v54;
      *(v2 + *(*v2 + 136)) = v54;

      v48 = v47;
      v49 = v53;
      sub_23A636360();

      (*(v33 + 8))(v55, v34);

      v50 = *(*v2 + 144);
      swift_beginAccess();
      sub_23A6292F0(v49, v2 + v50, &qword_27DF98168, &qword_23A639340);
      swift_endAccess();
      return v2;
    }

    sub_23A6291D4(v32, &qword_27DF98200, &qword_23A637CB8);
    sub_23A629180();
    v2 = swift_allocError();
    *v35 = 5;
    swift_willThrow();

LABEL_24:

    return v2;
  }

LABEL_30:
  result = sub_23A636AF0();
  __break(1u);
  return result;
}

void sub_23A622DE4(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  MEMORY[0x28223BE20](v2 - 8);
  v121 = &v94 - v3;
  v4 = type metadata accessor for CommunicationTopic.PersonInformation(0);
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v127 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v126 = (&v94 - v7);
  v8 = sub_23A636610();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v117 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v94 - v12;
  v128 = sub_23A6366D0();
  v119 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v118 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_23A636700();
  v104 = *(v103 - 8);
  v14 = MEMORY[0x28223BE20](v103);
  v102 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98170, &qword_23A637C60);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v94 - v18;
  v20 = sub_23A636330();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = &v94 - v25;
  sub_23A636310();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_23A6291D4(v19, &qword_27DF98170, &qword_23A637C60);
    v27 = sub_23A636380();
    if (v28 >> 60 == 15)
    {
      sub_23A629180();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
    }

    else
    {
      v96 = a1;
      v68 = v27;
      v69 = v28;
      sub_23A6361B0();
      swift_allocObject();
      sub_23A6361A0();
      sub_23A629234();
      v70 = v120;
      sub_23A636190();

      sub_23A629288(v68, v69);
      if (!v70)
      {
        v72 = v129;
        v71 = v130;
LABEL_65:
        v93 = v96;
        *v96 = v72;
        v93[1] = v71;
      }
    }

    return;
  }

  (*(v21 + 32))(v26, v19, v20);
  (*(v21 + 16))(v24, v26, v20);
  if ((*(v21 + 88))(v24, v20) != *MEMORY[0x277CEEAD0])
  {
    sub_23A629180();
    swift_allocError();
    *v73 = 0;
    swift_willThrow();
    v74 = *(v21 + 8);
    v74(v26, v20);
    v74(v24, v20);
    return;
  }

  v98 = v26;
  v96 = a1;
  v99 = v21;
  v30 = *(v21 + 96);
  v100 = v20;
  v30(v24, v20);
  v95 = *v24;
  v31 = sub_23A6366F0();
  v32 = v31;
  v113 = *(v31 + 16);
  if (v113)
  {
    v33 = 0;
    v112 = v31 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v110 = (v9 + 88);
    v111 = v119 + 16;
    v131 = *MEMORY[0x277CEEC30];
    v105 = *MEMORY[0x277CEEC38];
    v97 = *MEMORY[0x277CEEC40];
    v109 = (v9 + 104);
    v106 = (v119 + 8);
    v34 = MEMORY[0x277D84F90];
    v108 = v8;
    v35 = v118;
    v107 = v31;
    while (1)
    {
      if (v33 >= *(v32 + 16))
      {
        goto LABEL_68;
      }

      (*(v119 + 16))(v35, v112 + *(v119 + 72) * v33, v128);
      v36 = sub_23A636680();
      if (v37 >> 60 == 15)
      {
        goto LABEL_12;
      }

      v38 = v36;
      v39 = v37;
      v40 = sub_23A636240();
      v41 = CGImageSourceCreateWithData(v40, 0);

      if (!v41)
      {
        break;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v41, 0, 0);
      sub_23A629288(v38, v39);

LABEL_13:
      v42 = sub_23A6366C0();
      v43 = v116;
      sub_23A636620();

      v44 = (*v110)(v43, v8);
      v45 = v131;
      if (v44 != v131)
      {
        v45 = v105;
        if (v44 != v105)
        {
          v45 = v97;
          if (v44 != v97)
          {
            goto LABEL_70;
          }
        }
      }

      v46 = sub_23A6366C0();
      MEMORY[0x23EE87820]();

      (*v109)(v117, v45, v8);
      v47 = objc_allocWithZone(sub_23A636670());
      v48 = sub_23A636640();
      v49 = sub_23A636690();
      v51 = v50;
      sub_23A6366B0();
      v125 = v34;
      v122 = v51;
      v123 = v33;
      if (v52)
      {

        sub_23A6366B0();
        if (!v53)
        {
          goto LABEL_69;
        }

        v54 = v120;
        sub_23A636210();
        v55 = v49;
        v56 = v48;
        if (!v54)
        {
          v120 = 0;
          v57 = 0;
          goto LABEL_23;
        }

        v120 = 0;
      }

      else
      {
        v55 = v49;
        v56 = v48;
      }

      v57 = 1;
LABEL_23:
      v58 = sub_23A636200();
      v59 = *(*(v58 - 8) + 56);
      v60 = v121;
      v59(v121, v57, 1, v58);
      v61 = v115;
      v62 = *(v115 + 24);
      v63 = v126;
      v59(v126 + v62, 1, 1, v58);
      v64 = *(v61 + 28);
      *v63 = v56;
      v63[1] = v55;
      v63[2] = v122;
      sub_23A6292F0(v60, v63 + v62, &qword_27DF98160, &unk_23A637C50);
      *(v63 + v64) = ImageAtIndex;
      sub_23A628E60(v63, v127);
      v34 = v125;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_23A631640(0, v34[2] + 1, 1, v34);
      }

      v8 = v108;
      v32 = v107;
      v65 = v123;
      v67 = v34[2];
      v66 = v34[3];
      v35 = v118;
      if (v67 >= v66 >> 1)
      {
        v34 = sub_23A631640((v66 > 1), v67 + 1, 1, v34);
      }

      v33 = (v65 + 1);
      (*v106)(v35, v128);
      v34[2] = v67 + 1;
      sub_23A629358(v127, v34 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v67);
      sub_23A628EC4(v126);
      if (v113 == v33)
      {
        goto LABEL_33;
      }
    }

    sub_23A629288(v38, v39);
LABEL_12:
    ImageAtIndex = 0;
    goto LABEL_13;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_33:
  v125 = v34;

  v129 = MEMORY[0x277D84FA0];
  v75 = sub_23A636710();
  v76 = 0;
  v77 = *(v75 + 56);
  v78 = 1 << *(v75 + 32);
  LODWORD(v128) = *MEMORY[0x277CEEC98];
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v80 = v79 & v77;
  v81 = (v78 + 63) >> 6;
  v126 = (v104 + 32);
  v127 = v104 + 16;
  ImageAtIndex = (v104 + 88);
  LODWORD(v123) = *MEMORY[0x277CEEC90];
  LODWORD(v122) = *MEMORY[0x277CEEC70];
  LODWORD(v121) = *MEMORY[0x277CEEC80];
  LODWORD(v119) = *MEMORY[0x277CEECA8];
  LODWORD(v118) = *MEMORY[0x277CEECB8];
  LODWORD(v117) = *MEMORY[0x277CEECB0];
  LODWORD(v116) = *MEMORY[0x277CEEC78];
  LODWORD(v115) = *MEMORY[0x277CEEC88];
  v113 = (v104 + 8);
  LODWORD(v114) = *MEMORY[0x277CEECA0];
  v82 = v100;
  v83 = v99;
  v84 = v98;
  for (i = v101; v80; v84 = v98)
  {
LABEL_40:
    v87 = __clz(__rbit64(v80));
    v80 &= v80 - 1;
    v88 = v104;
    v89 = v103;
    (*(v104 + 16))(i, *(v75 + 48) + *(v104 + 72) * (v87 | (v76 << 6)), v103);
    v90 = v102;
    (*(v88 + 32))(v102, i, v89);
    v91 = (*(v88 + 88))(v90, v89);
    if (v91 == v128)
    {
      v92 = 0;
    }

    else if (v91 == v123)
    {
      v92 = 1;
    }

    else if (v91 == v122)
    {
      v92 = 2;
    }

    else if (v91 == v121)
    {
      v92 = 3;
    }

    else if (v91 == v119)
    {
      v92 = 4;
    }

    else if (v91 == v118)
    {
      v92 = 5;
    }

    else if (v91 == v117)
    {
      v92 = 6;
    }

    else if (v91 == v116)
    {
      v92 = 7;
    }

    else if (v91 == v115)
    {
      v92 = 8;
    }

    else
    {
      if (v91 != v114)
      {
        (*v113)(v102, v103);
        goto LABEL_61;
      }

      v92 = 9;
    }

    sub_23A62513C(&v132, v92);
LABEL_61:
    v82 = v100;
    v83 = v99;
  }

  while (1)
  {
    v86 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v86 >= v81)
    {
      (*(v83 + 8))(v84, v82);

      v71 = v129;
      v72 = v125;
      goto LABEL_65;
    }

    v80 = *(v75 + 56 + 8 * v86);
    ++v76;
    if (v80)
    {
      v76 = v86;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  sub_23A636AF0();
  __break(1u);
}

uint64_t sub_23A623BD4()
{
  type metadata accessor for CommunicationLimits();
  v0 = swift_allocObject();
  type metadata accessor for AskCenter();
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_27DF98130 = v0;
  return result;
}

uint64_t static CommunicationLimits.current.getter()
{
  if (qword_27DF97FE0 != -1)
  {
    swift_once();
  }
}

char *CommunicationLimits.updates.getter@<X0>(char **a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98138, &qword_23A637BD0);
  swift_allocObject();
  result = sub_23A624594(0);
  *a1 = result;
  return result;
}

uint64_t sub_23A623CD0()
{
  sub_23A636750();
  swift_allocObject();
  result = sub_23A636740();
  qword_27DF9C730 = result;
  return result;
}

uint64_t sub_23A623D34()
{
  v1 = v0[12];
  v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98140, &qword_23A637BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A637BC0;
  *(inited + 32) = v1;
  v3 = v1;
  sub_23A627FCC(inited);
  v5 = v4;
  v0[14] = v4;
  swift_setDeallocating();
  sub_23A628158(inited + 32);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_23A623E40;

  return sub_23A628390(v5);
}

uint64_t sub_23A623E40(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_23A623F60, 0, 0);
}

uint64_t sub_23A623F60()
{
  v1 = v0[16];
  v2 = v0[12];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A637BC0;
  *(inited + 32) = v2;
  v4 = v2;
  sub_23A627FCC(inited);
  v6 = v5;
  swift_setDeallocating();
  sub_23A628158(inited + 32);
  v7 = sub_23A6241D0(v1, v6);

  v8 = v0[1];

  return v8(v7 & 1);
}

uint64_t CommunicationLimits.knownHandles(in:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A6240D4;

  return sub_23A628390(a1);
}

uint64_t sub_23A6240D4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23A6241D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v21 = v8;
  v22 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v23 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_23A636C80();
      v14 = v13;
      sub_23A6368F0();
      v15 = sub_23A636CA0();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      sub_23A629138(0, &qword_27DF98090, 0x277D82BB8);
      while (1)
      {
        v19 = *(*(a2 + 48) + 8 * v17);
        v20 = sub_23A6368E0();

        if (v20)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v8 = v21;
      result = v22;
      v7 = v23;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v23 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t CommunicationLimits.ask(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A624448;

  return sub_23A628710(a1);
}

uint64_t sub_23A624448()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t CommunicationLimits.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_23A624594(int a1)
{
  v2 = v1;
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B8, &qword_23A637C88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981C0, &qword_23A637C90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981C8, &qword_23A637C98);
  swift_allocObject();
  *(v1 + 2) = sub_23A636540();
  if (MEMORY[0x277D84F90] >> 62 && sub_23A636990())
  {
    v10 = sub_23A627D38(MEMORY[0x277D84F90]);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  *(v1 + 3) = v10;
  v11 = *(*v1 + 112);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981D0, &qword_23A637CA0);
  v13 = *(*(v12 - 8) + 56);
  v13(&v2[v11], 1, 1, v12);
  *&v2[*(*v2 + 120)] = &type metadata for CommunicationTopic;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981D8, &qword_23A637CA8);
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3);
  sub_23A636870();

  v13(v9, 0, 1, v12);
  v14 = *(*v2 + 112);
  swift_beginAccess();
  sub_23A6292F0(v9, &v2[v14], &qword_27DF981C0, &qword_23A637C90);
  swift_endAccess();
  if ((v21 & 1) == 0)
  {
    type metadata accessor for GenericAskToResponseListener();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_23A6290EC;
    *(v15 + 24) = v2;
    v16 = objc_allocWithZone(sub_23A636400());

    v17 = sub_23A6363E0();
    sub_23A636500();
    v18 = sub_23A6364D0();

    sub_23A6364E0();
  }

  return v2;
}

uint64_t sub_23A624940(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98228, &qword_23A637CD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 16);
    (*(v4 + 16))(v6, a1, v3);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = swift_allocObject();
    (*(v4 + 32))(v9 + v8, v6, v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981C8, &qword_23A637C98);
    sub_23A6294CC(&qword_27DF98230, &qword_27DF981C8, &qword_23A637C98, MEMORY[0x277CBCE20]);
    sub_23A636550();

    swift_beginAccess();
    sub_23A636510();
    swift_endAccess();
  }

  return result;
}

void sub_23A624B54()
{
  v0 = sub_23A6368C0();
  sub_23A629138(0, &qword_27DF981F8, 0x277D86200);
  v1 = sub_23A636900();
  if (os_log_type_enabled(v1, v0))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v14 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_23A62C83C(0xD00000000000001BLL, 0x800000023A63B450, &v14);
    _os_log_impl(&dword_23A61C000, v1, v0, "%s called", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x23EE88420](v3, -1, -1);
    MEMORY[0x23EE88420](v2, -1, -1);
  }

  v4 = sub_23A636570();
  v5 = sub_23A636420();

  v6 = sub_23A6363F0();
  v8 = v7;

  if (v6 == 0xD00000000000002DLL && 0x800000023A63B2C0 == v8)
  {

LABEL_7:
    sub_23A6224CC(&v14);
    v10 = v14;
    v11 = v15;
    sub_23A6368C0();
    v12 = sub_23A636900();
    sub_23A636300();

    v14 = v10;
    v15 = v11;
    sub_23A636530();

    return;
  }

  v9 = sub_23A636C10();

  if (v9)
  {
    goto LABEL_7;
  }

  sub_23A6368A0();
  v13 = sub_23A636900();
  sub_23A636300();
}

uint64_t sub_23A624E5C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23A636700();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23A6290F0(&qword_27DF98178, MEMORY[0x277CEECC0], MEMORY[0x277CEECC8]);
  v33 = a2;
  v11 = sub_23A636780();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23A6290F0(&qword_27DF98180, MEMORY[0x277CEECC0], MEMORY[0x277CEECD0]);
      v21 = sub_23A636790();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23A626228(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23A62513C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_23A636C80();
  MEMORY[0x23EE87E60](a2);
  v6 = sub_23A636CA0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_23A6264CC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23A625234(void *a1, void *a2)
{
  v5 = *v2;
  sub_23A636C80();
  sub_23A6368F0();
  v6 = sub_23A636CA0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_23A629138(0, &qword_27DF98090, 0x277D82BB8);
    while (1)
    {
      v10 = *(*(v5 + 48) + 8 * v8);
      v11 = sub_23A6368E0();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(*(v5 + 48) + 8 * v8);
    *a1 = v15;
    v16 = v15;
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v13 = a2;
    sub_23A626618(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v17;
    *a1 = v13;
    return 1;
  }
}

uint64_t sub_23A625388(uint64_t *a1, void *a2)
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

    v9 = sub_23A6369A0();

    if (v9)
    {

      sub_23A636670();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_23A636990();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_23A6255A0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_23A625F7C(v20 + 1);
    }

    v18 = v8;
    sub_23A6261A4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_23A636670();
  v11 = sub_23A6368D0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_23A6267A8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_23A6368E0();

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

uint64_t sub_23A6255A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B0, &qword_23A637C80);
    v2 = sub_23A636A00();
    v15 = v2;
    sub_23A636950();
    if (sub_23A6369C0())
    {
      sub_23A636670();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_23A625F7C(v9 + 1);
        }

        v2 = v15;
        result = sub_23A6368D0();
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

      while (sub_23A6369C0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23A625780(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23A636700();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98188, &qword_23A637C68);
  result = sub_23A6369F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_23A6290F0(&qword_27DF98178, MEMORY[0x277CEECC0], MEMORY[0x277CEECC8]);
      result = sub_23A636780();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23A625ADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98220, &qword_23A637CC8);
  result = sub_23A6369F0();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_23A636C80();
      MEMORY[0x23EE87E60](v17);
      result = sub_23A636CA0();
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
      *(*(v5 + 48) + v13) = v17;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23A625D2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98198, &qword_23A637C70);
  result = sub_23A6369F0();
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
      sub_23A636C80();
      sub_23A6368F0();
      result = sub_23A636CA0();
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23A625F7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B0, &qword_23A637C80);
  result = sub_23A6369F0();
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
      result = sub_23A6368D0();
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

unint64_t sub_23A6261A4(uint64_t a1, uint64_t a2)
{
  sub_23A6368D0();
  result = sub_23A636930();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_23A626228(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_23A636700();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A625780(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23A626908();
      goto LABEL_12;
    }

    sub_23A626F20(v10 + 1);
  }

  v12 = *v3;
  sub_23A6290F0(&qword_27DF98178, MEMORY[0x277CEECC0], MEMORY[0x277CEECC8]);
  v13 = sub_23A636780();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_23A6290F0(&qword_27DF98180, MEMORY[0x277CEECC0], MEMORY[0x277CEECD0]);
      v21 = sub_23A636790();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23A636C20();
  __break(1u);
  return result;
}

uint64_t sub_23A6264CC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A625ADC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23A626B40();
      a2 = v7;
      goto LABEL_12;
    }

    sub_23A62723C(v5 + 1);
  }

  v8 = *v3;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v4);
  result = sub_23A636CA0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23A636C20();
  __break(1u);
  return result;
}

void sub_23A626618(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A625D2C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_23A626C80();
      goto LABEL_12;
    }

    sub_23A62745C(v6 + 1);
  }

  v8 = *v3;
  sub_23A636C80();
  sub_23A6368F0();
  v9 = sub_23A636CA0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_23A629138(0, &qword_27DF98090, 0x277D82BB8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_23A6368E0();

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
  sub_23A636C20();
  __break(1u);
}

void sub_23A6267A8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A625F7C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_23A626DD0();
      goto LABEL_12;
    }

    sub_23A627684(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_23A6368D0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_23A636670();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_23A6368E0();

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
  sub_23A636C20();
  __break(1u);
}

void *sub_23A626908()
{
  v1 = v0;
  v2 = sub_23A636700();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98188, &qword_23A637C68);
  v6 = *v0;
  v7 = sub_23A6369E0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_23A626B40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98220, &qword_23A637CC8);
  v2 = *v0;
  v3 = sub_23A6369E0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_23A626C80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98198, &qword_23A637C70);
  v2 = *v0;
  v3 = sub_23A6369E0();
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

id sub_23A626DD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B0, &qword_23A637C80);
  v2 = *v0;
  v3 = sub_23A6369E0();
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

uint64_t sub_23A626F20(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23A636700();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98188, &qword_23A637C68);
  v7 = sub_23A6369F0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23A6290F0(&qword_27DF98178, MEMORY[0x277CEECC0], MEMORY[0x277CEECC8]);
      result = sub_23A636780();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23A62723C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98220, &qword_23A637CC8);
  result = sub_23A6369F0();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_23A636C80();
      MEMORY[0x23EE87E60](v16);
      result = sub_23A636CA0();
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
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
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

uint64_t sub_23A62745C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98198, &qword_23A637C70);
  result = sub_23A6369F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      sub_23A636C80();
      v17 = v16;
      sub_23A6368F0();
      result = sub_23A636CA0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

uint64_t sub_23A627684(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B0, &qword_23A637C80);
  result = sub_23A6369F0();
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
      result = sub_23A6368D0();
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

char *sub_23A627898(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A6278B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A6278B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98140, &qword_23A637BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23A6279C4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF98238, &qword_23A637CD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  v6 = *a1;
  v7 = a1[1];
  sub_23A6368C0();
  sub_23A629138(0, &qword_27DF981F8, 0x277D86200);
  v8 = sub_23A636900();
  sub_23A636300();

  v11[0] = v6;
  v11[1] = v7;

  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98228, &qword_23A637CD0);
  sub_23A636820();
  return (*(v3 + 8))(v5, v2);
}

void sub_23A627B38(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EE87B80](a1, a2, v7);
      sub_23A636670();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_23A636670();
    if (sub_23A636970() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23A636980();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_23A6368D0();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_23A6368E0();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_23A627D38(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23A636990();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981E0, &qword_23A637CB0);
      result = sub_23A636A10();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_23A636990();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x23EE87C10](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_23A636520();
    sub_23A6290F0(&qword_27DF981E8, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_23A636780();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_23A6290F0(&qword_27DF981F0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_23A636790();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_23A627FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98198, &qword_23A637C70);
    v3 = sub_23A636A10();
    v4 = 0;
    v5 = v3 + 56;
    v20 = v1;
    v21 = a1 + 32;
    while (1)
    {
      v6 = *(v21 + 8 * v4);
      sub_23A636C80();
      v7 = v6;
      sub_23A6368F0();
      v8 = sub_23A636CA0();
      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        v14 = ~v9;
        sub_23A629138(0, &qword_27DF98090, 0x277D82BB8);
        do
        {
          v15 = *(*(v3 + 48) + 8 * v10);
          v16 = sub_23A6368E0();

          if (v16)
          {

            v1 = v20;
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v14;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while (((1 << v10) & v12) != 0);
        v1 = v20;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      *(v3 + 16) = v19;
LABEL_4:
      if (++v4 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23A6281AC(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23A636990())
  {
    v4 = sub_23A636670();
    v5 = sub_23A6290F0(&qword_27DF981A8, MEMORY[0x277CEEC50], MEMORY[0x277D85378]);
    result = MEMORY[0x23EE87A50](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE87C10](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_23A625388(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_23A636990();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23A62830C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23A629048();
  result = MEMORY[0x23EE87A50](v2, &type metadata for CommunicationHandle, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_23A625234(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23A6283B0()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = sub_23A6367B0();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if (qword_27DF97FE8 != -1)
    {
      swift_once();
    }

    v7 = sub_23A621F84(v0[2]);
    v0[3] = 0;
    v8 = sub_23A6281AC(v7);
    v0[4] = v8;

    v9 = swift_task_alloc();
    v0[5] = v9;
    *v9 = v0;
    v9[1] = sub_23A62855C;

    return MEMORY[0x282141388](v8);
  }

  else
  {
LABEL_10:
    v10 = v0[1];
    v11 = MEMORY[0x277D84FA0];

    return v10(v11);
  }
}

uint64_t sub_23A62855C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_23A62867C, 0, 0);
}

uint64_t sub_23A62867C()
{
  sub_23A622198(*(v0 + 48));
  v2 = v1;

  v3 = sub_23A62830C(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_23A628710(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_23A6364F0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6287DC, 0, 0);
}

uint64_t sub_23A6287DC()
{
  v1 = sub_23A6206FC(v0[3]);
  v0[8] = v1;
  v2 = v1;
  sub_23A636500();
  v0[9] = sub_23A6364D0();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_23A628A14;

  return MEMORY[0x282140EF8](v2, 0);
}

uint64_t sub_23A628A14()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_23A628BA8;
  }

  else
  {

    v3 = sub_23A628B30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A628B30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A628BA8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 88);
  *(v0 + 16) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98150, &qword_23A637C48);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);

    (*(v7 + 32))(v5, v4, v6);
    sub_23A628E0C();
    swift_allocError();
    sub_23A62D0AC(v8);
    swift_willThrow();
    (*(v7 + 8))(v5, v6);
    v9 = *(v0 + 16);
  }

  else
  {

    sub_23A628E0C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v9 = v2;
  }

  v11 = *(v0 + 8);

  return v11();
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

unint64_t sub_23A628E0C()
{
  result = qword_27DF98158;
  if (!qword_27DF98158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98158);
  }

  return result;
}

uint64_t sub_23A628E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationTopic.PersonInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A628EC4(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationTopic.PersonInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23A628F84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A628FEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23A629048()
{
  result = qword_27DF98190;
  if (!qword_27DF98190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98190);
  }

  return result;
}

uint64_t sub_23A62909C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_23A6290AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A6290F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A629138(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_23A629180()
{
  result = qword_27DF98208;
  if (!qword_27DF98208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98208);
  }

  return result;
}

uint64_t sub_23A6291D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23A629234()
{
  result = qword_27DF98218;
  if (!qword_27DF98218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98218);
  }

  return result;
}

uint64_t sub_23A629288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23A62929C(a1, a2);
  }

  return a1;
}

uint64_t sub_23A62929C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23A6292F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A629358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationTopic.PersonInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6293BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98228, &qword_23A637CD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A629450(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98228, &qword_23A637CD0);

  return sub_23A6279C4(a1);
}

uint64_t sub_23A6294CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23A629518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PermissionResponse(255, *(a1 + 80), *(a1 + 88), a4);
  sub_23A636860();
  result = sub_23A636910();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23A6295EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for PermissionResponse(255, a2, a3, a5);
  v7 = sub_23A636850();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4, a1, v7);
}

uint64_t sub_23A629664(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  type metadata accessor for PermissionResponse(255, *(a2 + 16), *(a2 + 24), v6);
  v7 = sub_23A636850();
  *v5 = v2;
  v5[1] = sub_23A624448;

  return MEMORY[0x2822003F0](a1, v7);
}

uint64_t sub_23A629728(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A6297D0;

  return sub_23A629664(a1, a2);
}

uint64_t sub_23A6297D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23A6298C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_23A629994;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_23A629994()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23A629A90@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  type metadata accessor for PermissionResponse(255, v5, v6, a2);
  v7 = sub_23A636860();
  v8 = sub_23A636910();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = sub_23A636850();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = *(v4 + 112);
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v15, v8);
  v16 = *(v7 - 8);
  result = (*(v16 + 48))(v11, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_23A636830();
    (*(v16 + 8))(v11, v7);
    return sub_23A6295EC(v14, v5, v6, a1, v18);
  }

  return result;
}

char *sub_23A629CB8()
{
  v1 = *v0;

  v2 = *(*v0 + 112);
  type metadata accessor for PermissionResponse(255, *(v1 + 80), *(v1 + 88), v3);
  sub_23A636860();
  v4 = sub_23A636910();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_23A629D80()
{
  sub_23A629CB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23A629E0C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  sub_23A629A90(a1, a2);
}

uint64_t sub_23A629E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PermissionResponse(255, *(a1 + 16), *(a1 + 24), a4);
  result = sub_23A636850();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23A629F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PermissionResponse(255, *(a3 + 16), *(a3 + 24), a4);
  v6 = sub_23A636850();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_23A629FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PermissionResponse(255, *(a4 + 16), *(a4 + 24), a4);
  v6 = sub_23A636850();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t PermissionChoice.init<A>(id:title:answer:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a6@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v12);
  sub_23A636800();
  v13 = objc_allocWithZone(sub_23A6364B0());
  v14 = sub_23A636450();
  sub_23A636480();
  result = (*(v9 + 8))(a3, a4);
  *a6 = v14;
  return result;
}

uint64_t PermissionChoice.answer.getter@<X0>(char *a1@<X8>)
{
  result = sub_23A636470();
  if (result == 1)
  {
    v3 = 0;
LABEL_5:
    *a1 = v3;
    return result;
  }

  if (result == 2)
  {
    v3 = 1;
    goto LABEL_5;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t sub_23A62A2AC(uint64_t a1)
{
  v2 = sub_23A62A8A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62A2E8(uint64_t a1)
{
  v2 = sub_23A62A8A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62A33C()
{
  if (*v0)
  {
    return 0x6C61696E6564;
  }

  else
  {
    return 0x6C61766F72707061;
  }
}

uint64_t sub_23A62A374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61766F72707061 && a2 == 0xE800000000000000;
  if (v6 || (sub_23A636C10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61696E6564 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23A636C10();

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

uint64_t sub_23A62A458(uint64_t a1)
{
  v2 = sub_23A62A7F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62A494(uint64_t a1)
{
  v2 = sub_23A62A7F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62A4D0(uint64_t a1)
{
  v2 = sub_23A62A84C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62A50C(uint64_t a1)
{
  v2 = sub_23A62A84C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PermissionChoice.Answer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98350, &qword_23A637E10);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98358, &qword_23A637E18);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98360, &qword_23A637E20);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62A7F8();
  sub_23A636CC0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_23A62A84C();
    v14 = v18;
    sub_23A636BA0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23A62A8A0();
    sub_23A636BA0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_23A62A7F8()
{
  result = qword_27DF98368;
  if (!qword_27DF98368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98368);
  }

  return result;
}

unint64_t sub_23A62A84C()
{
  result = qword_27DF98370;
  if (!qword_27DF98370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98370);
  }

  return result;
}

unint64_t sub_23A62A8A0()
{
  result = qword_27DF98378;
  if (!qword_27DF98378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98378);
  }

  return result;
}

uint64_t PermissionChoice.Answer.hashValue.getter()
{
  v1 = *v0;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v1);
  return sub_23A636CA0();
}

uint64_t PermissionChoice.Answer.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98380, &qword_23A637E28);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98388, &qword_23A637E30);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98390, &unk_23A637E38);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62A7F8();
  v12 = v31;
  sub_23A636CB0();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_23A636B80();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23A61EE34();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_23A636A60();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98088, &qword_23A637570);
      *v22 = &type metadata for PermissionChoice.Answer;
      sub_23A636B30();
      sub_23A636A50();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_23A62A84C();
        sub_23A636B20();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23A62A8A0();
        sub_23A636B20();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_23A62AE54()
{
  v0 = sub_23A636230();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23A636220();
  (*(v1 + 16))(v4, v6, v0);
  sub_23A6367C0();
  v7 = objc_allocWithZone(sub_23A6364B0());
  v8 = sub_23A636450();
  sub_23A636480();
  result = (*(v1 + 8))(v6, v0);
  qword_27DF98340 = v8;
  return result;
}

uint64_t PermissionChoice.init(id:title:answer:)@<X0>(uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v7 = sub_23A636230();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  sub_23A6367C0();
  v10 = objc_allocWithZone(sub_23A6364B0());
  v11 = sub_23A636450();
  sub_23A636480();
  result = (*(v8 + 8))(a3, v7);
  *a5 = v11;
  return result;
}

uint64_t sub_23A62B148()
{
  v0 = sub_23A636230();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23A636220();
  (*(v1 + 16))(v4, v6, v0);
  sub_23A6367C0();
  v7 = objc_allocWithZone(sub_23A6364B0());
  v8 = sub_23A636450();
  sub_23A636480();
  result = (*(v1 + 8))(v6, v0);
  qword_27DF98348 = v8;
  return result;
}

id sub_23A62B2E4@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

uint64_t (*PermissionChoice.title.modify(uint64_t *a1))()
{
  a1[2] = *v1;
  *a1 = sub_23A636490();
  a1[1] = v3;
  return sub_23A62B3B0;
}

uint64_t sub_23A62B3B0(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_23A6364A0();
  }

  sub_23A6364A0();
}

uint64_t sub_23A62B424@<X0>(char *a1@<X8>)
{
  result = sub_23A636470();
  if (result == 1)
  {
    v3 = 0;
LABEL_5:
    *a1 = v3;
    return result;
  }

  if (result == 2)
  {
    v3 = 1;
    goto LABEL_5;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t (*PermissionChoice.answer.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  v3 = sub_23A636470();
  if (v3 == 1)
  {
    v4 = 0;
LABEL_5:
    *(a1 + 8) = v4;
    return sub_23A62B5D4;
  }

  if (v3 == 2)
  {
    v4 = 1;
    goto LABEL_5;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t PermissionChoice.hash(into:)(uint64_t a1)
{
  sub_23A636460();
  sub_23A6367D0();

  sub_23A636490();
  sub_23A6367D0();

  v1 = sub_23A636470();
  if (v1 == 1)
  {
    v2 = 0;
    return MEMORY[0x23EE87E60](v2);
  }

  if (v1 == 2)
  {
    v2 = 1;
    return MEMORY[0x23EE87E60](v2);
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t sub_23A62B724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000023A63B530 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_23A636C10();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_23A62B7B8(uint64_t a1)
{
  v2 = sub_23A62BF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62B7F4(uint64_t a1)
{
  v2 = sub_23A62BF00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PermissionChoice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98398, &qword_23A637E48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62BF00();
  v8 = v7;
  sub_23A636CC0();
  v10[1] = v8;
  sub_23A6364B0();
  sub_23A62BF54(&qword_27DF983A8, MEMORY[0x277CEEAE0]);
  sub_23A636BF0();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PermissionChoice.hashValue.getter()
{
  sub_23A636C80();
  sub_23A636460();
  sub_23A6367D0();

  sub_23A636490();
  sub_23A6367D0();

  v0 = sub_23A636470();
  v1 = 0;
  if (v0 == 1)
  {
    goto LABEL_4;
  }

  if (v0 == 2)
  {
    v1 = 1;
LABEL_4:
    MEMORY[0x23EE87E60](v1);
    return sub_23A636CA0();
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t PermissionChoice.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF983B0, &qword_23A637E50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62BF00();
  sub_23A636CB0();
  if (!v2)
  {
    sub_23A6364B0();
    sub_23A62BF54(&qword_27DF983B8, MEMORY[0x277CEEAE8]);
    sub_23A636B70();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23A62BC44@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23A636460();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23A62BC70()
{
  v2[9] = *v0;
  sub_23A636C80();
  PermissionChoice.hash(into:)(v2);
  return sub_23A636CA0();
}

uint64_t sub_23A62BCC0(uint64_t a1)
{
  v3[9] = *v1;
  sub_23A636C80();
  PermissionChoice.hash(into:)(v3);
  return sub_23A636CA0();
}

uint64_t _s13PermissionKit0A6ChoiceV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = sub_23A636460();
  v3 = v2;
  if (v1 == sub_23A636460() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_23A636C10();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = sub_23A636490();
  v9 = v8;
  if (v7 == sub_23A636490() && v9 == v10)
  {
  }

  else
  {
    v11 = sub_23A636C10();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = sub_23A636470();
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_21;
    }

    v13 = 1;
  }

  v14 = sub_23A636470();
  if (v14 == 1)
  {
    return v13 ^ 1;
  }

  if (v14 == 2)
  {
    return v13;
  }

LABEL_21:
  result = sub_23A636AF0();
  __break(1u);
  return result;
}

unint64_t sub_23A62BF00()
{
  result = qword_27DF983A0;
  if (!qword_27DF983A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983A0);
  }

  return result;
}

uint64_t sub_23A62BF54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23A6364B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A62BF9C()
{
  result = qword_27DF983C0;
  if (!qword_27DF983C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983C0);
  }

  return result;
}

unint64_t sub_23A62C000()
{
  result = qword_27DF983C8;
  if (!qword_27DF983C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983C8);
  }

  return result;
}

uint64_t sub_23A62C054@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23A636490();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CommunicationTopic.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CommunicationTopic.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23A62C2B0()
{
  result = qword_27DF983D0;
  if (!qword_27DF983D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983D0);
  }

  return result;
}

unint64_t sub_23A62C308()
{
  result = qword_27DF983D8;
  if (!qword_27DF983D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983D8);
  }

  return result;
}

unint64_t sub_23A62C360()
{
  result = qword_27DF983E0;
  if (!qword_27DF983E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983E0);
  }

  return result;
}

unint64_t sub_23A62C3B8()
{
  result = qword_27DF983E8;
  if (!qword_27DF983E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983E8);
  }

  return result;
}

unint64_t sub_23A62C410()
{
  result = qword_27DF983F0;
  if (!qword_27DF983F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983F0);
  }

  return result;
}

unint64_t sub_23A62C468()
{
  result = qword_27DF983F8;
  if (!qword_27DF983F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983F8);
  }

  return result;
}

unint64_t sub_23A62C4C0()
{
  result = qword_27DF98400;
  if (!qword_27DF98400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98400);
  }

  return result;
}

unint64_t sub_23A62C518()
{
  result = qword_27DF98408;
  if (!qword_27DF98408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98408);
  }

  return result;
}

unint64_t sub_23A62C570()
{
  result = qword_27DF98410;
  if (!qword_27DF98410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98410);
  }

  return result;
}

unint64_t sub_23A62C5C8()
{
  result = qword_27DF98418;
  if (!qword_27DF98418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98418);
  }

  return result;
}

uint64_t sub_23A62C62C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23A6368C0();
  sub_23A62C7F0();
  v5 = sub_23A636900();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_23A62C83C(0xD000000000000016, 0x800000023A63B610, &v9);
    _os_log_impl(&dword_23A61C000, v5, v4, "%s called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EE88420](v7, -1, -1);
    MEMORY[0x23EE88420](v6, -1, -1);
  }

  return (*(v2 + 16))(a1);
}

uint64_t sub_23A62C794()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_23A62C7F0()
{
  result = qword_27DF981F8;
  if (!qword_27DF981F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF981F8);
  }

  return result;
}

unint64_t sub_23A62C83C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23A62C908(v11, 0, 0, 1, a1, a2);
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
    sub_23A628FEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23A62C908(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23A62CA14(a5, a6);
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
    result = sub_23A636A90();
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

void *sub_23A62CA14(uint64_t a1, unint64_t a2)
{
  v3 = sub_23A62CA60(a1, a2);
  sub_23A62CB90(&unk_284D4E620);
  return v3;
}

void *sub_23A62CA60(uint64_t a1, unint64_t a2)
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

  v6 = sub_23A62CC7C(v5, 0);
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

  result = sub_23A636A90();
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
        v10 = sub_23A6367F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23A62CC7C(v10, 0);
        result = sub_23A636A20();
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

uint64_t sub_23A62CB90(uint64_t result)
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

  result = sub_23A62CCF0(result, v11, 1, v3);
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

void *sub_23A62CC7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98420, &qword_23A638420);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23A62CCF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98420, &qword_23A638420);
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

uint64_t AskError.errorDescription.getter()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0xD000000000000041;
      }

      goto LABEL_8;
    }

    return 0xD000000000000039;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000022;
      }

LABEL_8:
      swift_getErrorValue();
      return sub_23A636C30();
    }

    return 0xD00000000000001ALL;
  }
}

uint64_t sub_23A62CEC8()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0xD000000000000041;
      }

      goto LABEL_8;
    }

    return 0xD000000000000039;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000022;
      }

LABEL_8:
      swift_getErrorValue();
      return sub_23A636C30();
    }

    return 0xD00000000000001ALL;
  }
}

uint64_t get_enum_tag_for_layout_string_13PermissionKit8AskErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23A62CFCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A62D020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_23A62D07C(void *result, int a2)
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

void sub_23A62D0AC(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23A6364F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277CEEAB0])
  {
    (*(v5 + 96))(v7, v4);
    v13 = *v7;
    v9 = v13;
    sub_23A62D2C0();
    v10 = v9;
    if (!swift_dynamicCast())
    {
      *a1 = v10;
      return;
    }

    v11 = v12;
    if (v12 >= 2)
    {
      if (v12 == 2)
      {
        v11 = 2;
      }

      else if (v12 != 3)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_8:
    *a1 = 0;
    return;
  }

  if (v8 == *MEMORY[0x277CEEAC0])
  {
    goto LABEL_8;
  }

  if (v8 != *MEMORY[0x277CEEAB8])
  {
    *a1 = 0;
    (*(v5 + 8))(v7, v4);
    return;
  }

  v11 = 1;
LABEL_14:
  *a1 = v11;
}

unint64_t sub_23A62D2C0()
{
  result = qword_27DF98428;
  if (!qword_27DF98428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF98428);
  }

  return result;
}

uint64_t CommunicationTopic.PersonInformation.init(handle:contactIdentifier:nameComponents:avatarImage:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *a1;
  v12 = type metadata accessor for CommunicationTopic.PersonInformation(0);
  v13 = *(v12 + 24);
  v14 = sub_23A636200();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = *(v12 + 28);
  *a6 = v11;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  result = sub_23A62D410(a4, &a6[v13]);
  *&a6[v15] = a5;
  return result;
}

uint64_t type metadata accessor for CommunicationTopic.PersonInformation(uint64_t a1)
{
  result = qword_27DF985F8;
  if (!qword_27DF985F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A62D410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CommunicationTopic.init(personInformation:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84FA0];
  *a2 = result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23A62D4A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x63696E756D6D6F63;
    v6 = 1952540771;
    if (a1 != 8)
    {
      v6 = 0x7463656E6E6F63;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C61436F65646976;
    if (a1 != 5)
    {
      v7 = 0x6C61436F69647561;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x646E65697266;
    v2 = 0x776F6C6C6F466562;
    v3 = 1819042147;
    if (a1 != 3)
    {
      v3 = 0x6567617373656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x776F6C6C6F66;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23A62D5DC(uint64_t a1)
{
  v2 = sub_23A62F494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D618(uint64_t a1)
{
  v2 = sub_23A62F494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D654(uint64_t a1)
{
  v2 = sub_23A62F5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D690(uint64_t a1)
{
  v2 = sub_23A62F5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D6CC(uint64_t a1)
{
  v2 = sub_23A62F590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D708(uint64_t a1)
{
  v2 = sub_23A62F590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D744(uint64_t a1)
{
  v2 = sub_23A62F3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D780(uint64_t a1)
{
  v2 = sub_23A62F3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D7C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A633040(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A62D7F8(uint64_t a1)
{
  v2 = sub_23A62F344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D834(uint64_t a1)
{
  v2 = sub_23A62F344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D870(uint64_t a1)
{
  v2 = sub_23A62F440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D8AC(uint64_t a1)
{
  v2 = sub_23A62F440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D8E8(uint64_t a1)
{
  v2 = sub_23A62F398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D924(uint64_t a1)
{
  v2 = sub_23A62F398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D960(uint64_t a1)
{
  v2 = sub_23A62F638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D99C(uint64_t a1)
{
  v2 = sub_23A62F638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D9D8(uint64_t a1)
{
  v2 = sub_23A62F68C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62DA14(uint64_t a1)
{
  v2 = sub_23A62F68C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62DA50(uint64_t a1)
{
  v2 = sub_23A62F53C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62DA8C(uint64_t a1)
{
  v2 = sub_23A62F53C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62DAC8(uint64_t a1)
{
  v2 = sub_23A62F4E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62DB04(uint64_t a1)
{
  v2 = sub_23A62F4E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommunicationTopic.Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98430, &qword_23A638548);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98438, &qword_23A638550);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98440, &qword_23A638558);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98448, &qword_23A638560);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98450, &qword_23A638568);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98458, &qword_23A638570);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v46 = &v37 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98460, &qword_23A638578);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v37 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98468, &qword_23A638580);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v37 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98470, &qword_23A638588);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98478, &qword_23A638590);
  v37 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98480, &qword_23A638598);
  v22 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v24 = &v37 - v23;
  v25 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62F344();
  v64 = v24;
  sub_23A636CC0();
  v26 = (v22 + 8);
  if (v25 > 4)
  {
    if (v25 <= 6)
    {
      if (v25 == 5)
      {
        v71 = 5;
        sub_23A62F4E8();
        v30 = v49;
        v28 = v64;
        v29 = v65;
        sub_23A636BA0();
        v32 = v50;
        v31 = v51;
      }

      else
      {
        v72 = 6;
        sub_23A62F494();
        v30 = v52;
        v28 = v64;
        v29 = v65;
        sub_23A636BA0();
        v32 = v53;
        v31 = v54;
      }
    }

    else if (v25 == 7)
    {
      v73 = 7;
      sub_23A62F440();
      v30 = v55;
      v28 = v64;
      v29 = v65;
      sub_23A636BA0();
      v32 = v56;
      v31 = v57;
    }

    else if (v25 == 8)
    {
      v74 = 8;
      sub_23A62F3EC();
      v30 = v58;
      v28 = v64;
      v29 = v65;
      sub_23A636BA0();
      v32 = v59;
      v31 = v60;
    }

    else
    {
      v75 = 9;
      sub_23A62F398();
      v30 = v61;
      v28 = v64;
      v29 = v65;
      sub_23A636BA0();
      v32 = v62;
      v31 = v63;
    }

    goto LABEL_20;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v68 = 2;
      sub_23A62F5E4();
      v33 = v40;
      v28 = v64;
      v29 = v65;
      sub_23A636BA0();
      (*(v41 + 8))(v33, v42);
      return (*v26)(v28, v29);
    }

    if (v25 == 3)
    {
      v69 = 3;
      sub_23A62F590();
      v27 = v43;
      v28 = v64;
      v29 = v65;
      sub_23A636BA0();
      (*(v44 + 8))(v27, v45);
      return (*v26)(v28, v29);
    }

    v70 = 4;
    sub_23A62F53C();
    v30 = v46;
    v28 = v64;
    v29 = v65;
    sub_23A636BA0();
    v32 = v47;
    v31 = v48;
LABEL_20:
    (*(v32 + 8))(v30, v31);
    return (*v26)(v28, v29);
  }

  if (v25)
  {
    v67[0] = 1;
    sub_23A62F638();
    v34 = v64;
    v35 = v65;
    sub_23A636BA0();
    (*(v38 + 8))(v18, v39);
    return (*v26)(v34, v35);
  }

  v66 = 0;
  sub_23A62F68C();
  v28 = v64;
  v29 = v65;
  sub_23A636BA0();
  (*(v37 + 8))(v21, v19);
  return (*v26)(v28, v29);
}

uint64_t CommunicationTopic.Action.hashValue.getter()
{
  v1 = *v0;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v1);
  return sub_23A636CA0();
}

uint64_t CommunicationTopic.Action.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF984E0, &qword_23A6385A0);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF984E8, &qword_23A6385A8);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF984F0, &qword_23A6385B0);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v74 = &v51 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF984F8, &qword_23A6385B8);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v80 = &v51 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98500, &qword_23A6385C0);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v79 = &v51 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98508, &qword_23A6385C8);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v78 = &v51 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98510, &qword_23A6385D0);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v73 = &v51 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98518, &qword_23A6385D8);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v77 = &v51 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98520, &qword_23A6385E0);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98528, &qword_23A6385E8);
  v54 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98530, &unk_23A6385F0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  v23 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_23A62F344();
  v24 = v83;
  sub_23A636CB0();
  if (!v24)
  {
    v52 = v18;
    v51 = v16;
    v53 = v15;
    v25 = v77;
    v26 = v78;
    v27 = v79;
    v28 = v80;
    v83 = v20;
    v29 = v81;
    v30 = sub_23A636B80();
    v31 = (2 * *(v30 + 16)) | 1;
    v84 = v30;
    v85 = v30 + 32;
    v86 = 0;
    v87 = v31;
    v32 = sub_23A61EE68();
    if (v32 != 10 && v86 == v87 >> 1)
    {
      v88 = v32;
      if (v32 <= 4u)
      {
        if (v32 <= 1u)
        {
          if (v32)
          {
            v89 = 1;
            sub_23A62F638();
            v49 = v53;
            sub_23A636B20();
            v50 = v83;
            (*(v55 + 8))(v49, v56);
            (*(v50 + 8))(v22, v19);
          }

          else
          {
            v89 = 0;
            sub_23A62F68C();
            v45 = v52;
            sub_23A636B20();
            v46 = v83;
            (*(v54 + 8))(v45, v51);
            (*(v46 + 8))(v22, v19);
          }

          swift_unknownObjectRelease();
          v38 = v82;
          v40 = v29;
        }

        else
        {
          if (v32 == 2)
          {
            v89 = 2;
            sub_23A62F5E4();
            sub_23A636B20();
            (*(v57 + 8))(v25, v58);
            (*(v83 + 8))(v22, v19);
          }

          else
          {
            if (v32 == 3)
            {
              v89 = 3;
              sub_23A62F590();
              v33 = v73;
              sub_23A636B20();
              v34 = v83;
              (*(v59 + 8))(v33, v60);
            }

            else
            {
              v89 = 4;
              sub_23A62F53C();
              sub_23A636B20();
              v34 = v83;
              (*(v62 + 8))(v26, v61);
            }

            (*(v34 + 8))(v22, v19);
          }

          swift_unknownObjectRelease();
          v40 = v81;
          v38 = v82;
        }

        goto LABEL_33;
      }

      if (v32 <= 6u)
      {
        v40 = v29;
        v47 = v83;
        if (v32 == 5)
        {
          v89 = 5;
          sub_23A62F4E8();
          sub_23A636B20();
          (*(v63 + 8))(v27, v64);
        }

        else
        {
          v89 = 6;
          sub_23A62F494();
          sub_23A636B20();
          (*(v65 + 8))(v28, v66);
        }

        (*(v47 + 8))(v22, v19);
        goto LABEL_32;
      }

      v40 = v29;
      v41 = v83;
      if (v32 == 7)
      {
        v89 = 7;
        sub_23A62F440();
        v42 = v74;
        sub_23A636B20();
        v44 = v67;
        v43 = v68;
      }

      else
      {
        if (v32 != 8)
        {
          v89 = 9;
          sub_23A62F398();
          v48 = v76;
          sub_23A636B20();
          (*(v71 + 8))(v48, v72);
          goto LABEL_29;
        }

        v89 = 8;
        sub_23A62F3EC();
        v42 = v75;
        sub_23A636B20();
        v44 = v69;
        v43 = v70;
      }

      (*(v44 + 8))(v42, v43);
LABEL_29:
      (*(v41 + 8))(v22, v19);
LABEL_32:
      swift_unknownObjectRelease();
      v38 = v82;
LABEL_33:
      *v40 = v88;
      return __swift_destroy_boxed_opaque_existential_1(v38);
    }

    v35 = sub_23A636A60();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98088, &qword_23A637570);
    *v37 = &type metadata for CommunicationTopic.Action;
    sub_23A636B30();
    sub_23A636A50();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v83 + 8))(v22, v19);
    swift_unknownObjectRelease();
  }

  v38 = v82;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t CommunicationTopic.personInformation.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CommunicationTopic.actions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t CommunicationTopic.init(personInformation:actions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_23A62F344()
{
  result = qword_27DF98488;
  if (!qword_27DF98488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98488);
  }

  return result;
}

unint64_t sub_23A62F398()
{
  result = qword_27DF98490;
  if (!qword_27DF98490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98490);
  }

  return result;
}

unint64_t sub_23A62F3EC()
{
  result = qword_27DF98498;
  if (!qword_27DF98498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98498);
  }

  return result;
}

unint64_t sub_23A62F440()
{
  result = qword_27DF984A0;
  if (!qword_27DF984A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984A0);
  }

  return result;
}

unint64_t sub_23A62F494()
{
  result = qword_27DF984A8;
  if (!qword_27DF984A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984A8);
  }

  return result;
}

unint64_t sub_23A62F4E8()
{
  result = qword_27DF984B0;
  if (!qword_27DF984B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984B0);
  }

  return result;
}

unint64_t sub_23A62F53C()
{
  result = qword_27DF984B8;
  if (!qword_27DF984B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984B8);
  }

  return result;
}

unint64_t sub_23A62F590()
{
  result = qword_27DF984C0;
  if (!qword_27DF984C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984C0);
  }

  return result;
}

unint64_t sub_23A62F5E4()
{
  result = qword_27DF984C8;
  if (!qword_27DF984C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984C8);
  }

  return result;
}

unint64_t sub_23A62F638()
{
  result = qword_27DF984D0;
  if (!qword_27DF984D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984D0);
  }

  return result;
}

unint64_t sub_23A62F68C()
{
  result = qword_27DF984D8;
  if (!qword_27DF984D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984D8);
  }

  return result;
}

uint64_t sub_23A62F6E0()
{
  if (*v0)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_23A62F720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000023A63B7E0 == a2 || (sub_23A636C10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23A636C10();

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
  return result;
}

uint64_t sub_23A62F808(uint64_t a1)
{
  v2 = sub_23A62FAC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62F844(uint64_t a1)
{
  v2 = sub_23A62FAC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommunicationTopic.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98538, &qword_23A638600);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62FAC0();

  sub_23A636CC0();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98548, &qword_23A638608);
  sub_23A62FE78(&qword_27DF98550, &qword_27DF98558, &protocol conformance descriptor for CommunicationTopic.PersonInformation, MEMORY[0x277D83948]);
  sub_23A636BF0();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98560, &qword_23A638610);
    sub_23A62FB14(&qword_27DF98568, sub_23A62FB8C, MEMORY[0x277D83B50]);
    sub_23A636BF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23A62FAC0()
{
  result = qword_27DF98540;
  if (!qword_27DF98540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98540);
  }

  return result;
}

uint64_t sub_23A62FB14(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF98560, &qword_23A638610);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A62FB8C()
{
  result = qword_27DF98570;
  if (!qword_27DF98570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98570);
  }

  return result;
}

uint64_t CommunicationTopic.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98578, &qword_23A638618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62FAC0();
  sub_23A636CB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98548, &qword_23A638608);
  v13 = 0;
  sub_23A62FE78(&qword_27DF98580, &qword_27DF98588, &protocol conformance descriptor for CommunicationTopic.PersonInformation, MEMORY[0x277D83978]);
  sub_23A636B70();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98560, &qword_23A638610);
  v13 = 1;
  sub_23A62FB14(&qword_27DF98590, sub_23A62FF14, MEMORY[0x277D83B70]);
  sub_23A636B70();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23A62FE78(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF98548, &qword_23A638608);
    sub_23A633630(a2, type metadata accessor for CommunicationTopic.PersonInformation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A62FF14()
{
  result = qword_27DF98598;
  if (!qword_27DF98598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98598);
  }

  return result;
}

unint64_t sub_23A62FFB4()
{
  v1 = 0x656C646E6168;
  v2 = 0x706D6F43656D616ELL;
  if (*v0 != 2)
  {
    v2 = 0x6D49726174617661;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_23A630048@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A633380(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A63007C(uint64_t a1)
{
  v2 = sub_23A630AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A6300B8(uint64_t a1)
{
  v2 = sub_23A630AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

id CommunicationTopic.PersonInformation.handle.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void CommunicationTopic.PersonInformation.handle.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t CommunicationTopic.PersonInformation.contactIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CommunicationTopic.PersonInformation.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CommunicationTopic.PersonInformation.nameComponents.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommunicationTopic.PersonInformation(0) + 24);

  return sub_23A62D410(a1, v3);
}

void *CommunicationTopic.PersonInformation.avatarImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for CommunicationTopic.PersonInformation(0) + 28));
  v2 = v1;
  return v1;
}

void CommunicationTopic.PersonInformation.avatarImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CommunicationTopic.PersonInformation(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t CommunicationTopic.PersonInformation.init(handle:nameComponents:avatarImage:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for CommunicationTopic.PersonInformation(0);
  v9 = *(v8 + 24);
  v10 = sub_23A636200();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = *(v8 + 28);
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = v7;
  result = sub_23A62D410(a2, &a4[v9]);
  *&a4[v11] = a3;
  return result;
}

uint64_t CommunicationTopic.PersonInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF985A0, &qword_23A638620);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for CommunicationTopic.PersonInformation(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 32);
  v14 = sub_23A636200();
  v15 = *(*(v14 - 8) + 56);
  v54 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = *(v10 + 36);
  v55 = v12;
  *&v12[v16] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_23A630AA4();
  v18 = v53;
  sub_23A636CB0();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25 = v54;
    v23 = v55;
    return sub_23A630AF8(v23 + v25);
  }

  v53 = v17;
  v49 = v16;
  v19 = v51;
  v59 = 0;
  sub_23A630B60();
  v20 = v52;
  v21 = v8;
  sub_23A636B70();
  v23 = v55;
  *v55 = v56;
  LOBYTE(v56) = 1;
  v24 = sub_23A636B40();
  v25 = v54;
  *(v23 + 8) = v24;
  *(v23 + 16) = v26;
  v48 = v26;
  LOBYTE(v56) = 2;
  sub_23A633630(&qword_27DF985B8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E70]);
  sub_23A636B50();
  sub_23A62D410(v5, v23 + v25);
  v59 = 3;
  sub_23A630BB4();
  sub_23A636B50();
  v27 = v19;
  v47 = v21;
  if (*(&v56 + 1) >> 60 != 15)
  {
    v44 = *(&v56 + 1);
    v45 = v56;
    v46 = sub_23A636B30();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_23A631950(0, v46[2] + 1, 1, v46);
    }

    v29 = v46[2];
    v28 = v46[3];
    v30 = v53;
    if (v29 >= v28 >> 1)
    {
      v46 = sub_23A631950((v28 > 1), v29 + 1, 1, v46);
      v30 = v53;
    }

    v57 = &type metadata for CommunicationTopic.PersonInformation.CodingKeys;
    v58 = v30;
    LOBYTE(v56) = 3;
    v31 = v46;
    v46[2] = v29 + 1;
    sub_23A631A98(&v56, &v31[5 * v29 + 4]);
    v32 = v44;
    v33 = sub_23A636240();
    v34 = CGImageSourceCreateWithData(v33, 0);

    if (v34)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v34, 0, 0);
      if (ImageAtIndex)
      {
        v36 = ImageAtIndex;
        (*(v27 + 8))(v47, v20);
        sub_23A629288(v45, v44);

        v23 = v55;
        *(v55 + v49) = v36;
        goto LABEL_14;
      }

      v40 = sub_23A636A60();
      swift_allocError();
      v42 = v41;
      sub_23A636A50();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84168], v40);
      swift_willThrow();
      sub_23A629288(v45, v44);

      v23 = v55;
    }

    else
    {
      v37 = sub_23A636A60();
      swift_allocError();
      v39 = v38;
      sub_23A636A50();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84168], v37);
      swift_willThrow();
      sub_23A629288(v45, v32);
    }

    (*(v27 + 8))(v47, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_23A630AF8(v23 + v25);
  }

  (*(v19 + 8))(v47, v20);
LABEL_14:
  sub_23A628E60(v23, v50);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23A628EC4(v23);
}

unint64_t sub_23A630AA4()
{
  result = qword_27DF985A8;
  if (!qword_27DF985A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985A8);
  }

  return result;
}

uint64_t sub_23A630AF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A630B60()
{
  result = qword_27DF985B0;
  if (!qword_27DF985B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985B0);
  }

  return result;
}

unint64_t sub_23A630BB4()
{
  result = qword_27DF985C0;
  if (!qword_27DF985C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985C0);
  }

  return result;
}

uint64_t CommunicationTopic.PersonInformation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF985C8, &qword_23A638628);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_23A630AA4();
  sub_23A636CC0();
  *&v29 = *v2;
  v9 = v29;
  v32 = 0;
  sub_23A631AB0();
  v10 = v9;
  v11 = v28;
  sub_23A636BF0();
  if (v11)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v28 = v5;

    LOBYTE(v29) = 1;
    sub_23A636BC0();
    v13 = type metadata accessor for CommunicationTopic.PersonInformation(0);
    LOBYTE(v29) = 2;
    sub_23A636200();
    sub_23A633630(&qword_27DF985D8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E58]);
    sub_23A636BD0();
    v14 = *(v2 + *(v13 + 28));
    if (v14)
    {
      v15 = v7;
      v16 = v14;
      v17 = v15;
      v18 = sub_23A636BB0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_23A631950(0, v18[2] + 1, 1, v18);
      }

      v20 = v18[2];
      v19 = v18[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v27 = v20 + 1;
        v25 = sub_23A631950((v19 > 1), v20 + 1, 1, v18);
        v21 = v27;
        v18 = v25;
      }

      v30 = &type metadata for CommunicationTopic.PersonInformation.CodingKeys;
      v31 = v8;
      LOBYTE(v29) = 3;
      v18[2] = v21;
      sub_23A631A98(&v29, &v18[5 * v20 + 4]);
      v22 = sub_23A630FC8(v18);
      v24 = v23;

      *&v29 = v22;
      *(&v29 + 1) = v24;
      v32 = 3;
      sub_23A631B04();
      sub_23A636BF0();
      (*(v28 + 8))(v17, v4);

      return sub_23A62929C(v22, v24);
    }

    else
    {
      return (*(v28 + 8))(v7, v4);
    }
  }
}

uint64_t sub_23A630FC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23A6362F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6362E0();
  sub_23A6362D0();
  (*(v5 + 8))(v7, v4);
  v8 = sub_23A6367A0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98710, &qword_23A6392D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A638530;
  v10 = *MEMORY[0x277CD3450];
  *(inited + 32) = *MEMORY[0x277CD3450];
  v11 = v10;
  Width = CGImageGetWidth(v2);
  v13 = MEMORY[0x277D83B88];
  *(inited + 40) = Width;
  v14 = *MEMORY[0x277CD3448];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = v14;
  *(inited + 80) = CGImageGetHeight(v2);
  v16 = *MEMORY[0x277CD2F30];
  *(inited + 104) = v13;
  *(inited + 112) = v16;
  v17 = MEMORY[0x277D839F8];
  *(inited + 120) = 0x4052000000000000;
  v18 = *MEMORY[0x277CD2F28];
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  *(inited + 160) = 0x4052000000000000;
  v19 = *MEMORY[0x277CD2D80];
  *(inited + 184) = v17;
  *(inited + 192) = v19;
  v20 = MEMORY[0x277D839B0];
  *(inited + 200) = 1;
  v21 = *MEMORY[0x277CD2D48];
  *(inited + 224) = v20;
  *(inited + 232) = v21;
  *(inited + 264) = v17;
  *(inited + 240) = 0x3FE6666666666666;
  v22 = v16;
  v23 = v18;
  v24 = v19;
  v25 = v21;
  sub_23A6334F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98718, &qword_23A6392E0);
  swift_arrayDestroy();
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_8;
  }

  v27 = Mutable;
  v28 = CGImageDestinationCreateWithData(Mutable, v8, 1uLL, 0);
  if (!v28)
  {

LABEL_8:

    v36 = sub_23A636A80();
    v29 = v8;
    swift_allocError();
    v38 = v37;
    type metadata accessor for CGImage(0);
    v38[3] = v39;
    *v38 = v2;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98720, &qword_23A6392E8) + 48);
    v55 = 0;
    v56 = 0xE000000000000000;
    v40 = v2;

    sub_23A636A30();
    MEMORY[0x23EE879B0](0xD000000000000031, 0x800000023A63B820);
    v41 = sub_23A6367B0();
    MEMORY[0x23EE879B0](v41);

    sub_23A636A50();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D841A8], v36);
    swift_willThrow();
LABEL_16:

    return v32;
  }

  v29 = v28;
  v54 = v8;
  type metadata accessor for CFString(0);
  sub_23A633630(&qword_27DF98018, type metadata accessor for CFString, &unk_23A6374E8);
  v30 = sub_23A636760();

  CGImageDestinationAddImage(v29, v2, v30);

  CGImageDestinationFinalize(v29);
  v31 = v27;
  v32 = sub_23A636250();
  v34 = v33;

  v35 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v35 != 2 || *(v32 + 16) == *(v32 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v35)
  {
    if (v32 == v32 >> 32)
    {
LABEL_13:
      v42 = sub_23A636A80();
      v53 = v31;
      v43 = v42;
      v57 = swift_allocError();
      v45 = v44;
      type metadata accessor for CGImage(0);
      v45[3] = v46;
      *v45 = v2;
      v47 = MEMORY[0x277D84F90];
      if (a1)
      {
        v47 = a1;
      }

      v52[2] = v47;
      v52[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98720, &qword_23A6392E8) + 48);
      v55 = 0;
      v56 = 0xE000000000000000;
      v48 = v2;

      sub_23A636A30();

      v55 = 0xD000000000000020;
      v56 = 0x800000023A63B860;
      v49 = v54;
      v50 = sub_23A6367B0();
      MEMORY[0x23EE879B0](v50);

      MEMORY[0x23EE879B0](0x706D652073617720, 0xEA00000000007974);
      sub_23A636A50();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D841A8], v43);
      swift_willThrow();
      sub_23A62929C(v32, v34);

      goto LABEL_16;
    }
  }

  else if ((v34 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  return v32;
}

void *sub_23A631668(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_23A631844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98750, &qword_23A639310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23A631950(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98738, &qword_23A6392F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98740, &qword_23A639300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23A631A98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_23A631AB0()
{
  result = qword_27DF985D0;
  if (!qword_27DF985D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985D0);
  }

  return result;
}

unint64_t sub_23A631B04()
{
  result = qword_27DF985E0;
  if (!qword_27DF985E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985E0);
  }

  return result;
}

unint64_t sub_23A631B5C()
{
  result = qword_27DF985E8;
  if (!qword_27DF985E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985E8);
  }

  return result;
}

unint64_t sub_23A631BB0(uint64_t a1)
{
  *(a1 + 8) = sub_23A629234();
  result = sub_23A631BE0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23A631BE0()
{
  result = qword_27DF985F0;
  if (!qword_27DF985F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985F0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23A631C50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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