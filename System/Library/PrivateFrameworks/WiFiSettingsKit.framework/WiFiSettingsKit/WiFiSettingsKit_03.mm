__n128 sub_2740E0A9C@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391B8, &qword_2741CF038);
  sub_2741C7A5C();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2740E0AFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = sub_2741C740C();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391D0, &qword_2741CF050);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391C8, &qword_2741CF048);
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = v25 - v13;
  v37 = *(a1 + 2);
  v34 = *(a1 + 2);
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939268, &qword_2741CF0A8);
  sub_2741C7A5C();
  v34 = v31;
  v35 = v32;
  if (qword_2809378F0 != -1)
  {
    swift_once();
  }

  v31 = xmmword_280946928;
  sub_2740A6A74();

  *&v31 = sub_2741C76AC();
  *(&v31 + 1) = v15;
  LOBYTE(v32) = v16 & 1;
  v33 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939280, &qword_2741CF0C0);
  sub_2740E2F3C();
  sub_2740A6D24(&qword_280939290, &qword_280939280, &qword_2741CF0C0, MEMORY[0x277CE14C0]);
  sub_2741C7AAC();
  sub_2741C73FC();
  v18 = sub_2740A6D24(&qword_2809391D8, &qword_2809391D0, &qword_2741CF050, MEMORY[0x277CDF038]);
  v19 = MEMORY[0x277CDE370];
  v20 = v29;
  sub_2741C771C();
  (*(v26 + 8))(v5, v20);
  (*(v7 + 8))(v10, v6);
  v31 = v37;
  sub_2741C7A3C();
  v36 = a1[1];
  v34 = *(a1 + 1);
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  v21[1] = *a1;
  v21[2] = v22;
  v21[3] = *(a1 + 2);

  sub_2740A6D94(&v36, &v31, &qword_280939260, &qword_2741CF0A0);
  sub_2740A6D94(&v34, &v31, &qword_280939240, &qword_2741CF090);
  sub_2740A6D94(&v37, &v31, &qword_280939268, &qword_2741CF0A8);
  *&v31 = v6;
  *(&v31 + 1) = v20;
  v32 = v18;
  v33 = v19;
  swift_getOpaqueTypeConformance2();
  sub_2740E2C18();
  v23 = v28;
  sub_2741C78CC();

  return (*(v27 + 8))(v14, v23);
}

uint64_t sub_2740E0FF0@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939298, &qword_2741CF0C8);
  v49 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1, v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v47 - v8;
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v47 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v47 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v47 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v47 - v23;
  if (qword_2809378F8 != -1)
  {
    swift_once();
  }

  v51 = qword_280946938;
  v52 = unk_280946940;
  sub_2740A6A74();

  *v24 = sub_2741C76AC();
  *(v24 + 1) = v25;
  v24[16] = v26 & 1;
  *(v24 + 3) = v27;
  v28 = v24;
  *(v24 + 16) = 257;
  if (qword_280937908 != -1)
  {
    swift_once();
  }

  v51 = qword_280946958;
  v52 = unk_280946960;

  *v21 = sub_2741C76AC();
  *(v21 + 1) = v29;
  v21[16] = v30 & 1;
  *(v21 + 3) = v31;
  *(v21 + 16) = 258;
  v32 = v21;
  if (qword_280937918 != -1)
  {
    swift_once();
  }

  v51 = qword_280946978;
  v52 = unk_280946980;

  *v17 = sub_2741C76AC();
  *(v17 + 1) = v33;
  v17[16] = v34 & 1;
  *(v17 + 3) = v35;
  *(v17 + 16) = 259;
  v36 = v49;
  v37 = *(v49 + 16);
  v48 = v28;
  v37(v13, v28, v1);
  v38 = v32;
  v37(v9, v32, v1);
  v37(v5, v17, v1);
  v39 = v36;
  v40 = v13;
  v47 = v13;
  v41 = v9;
  v42 = v5;
  v43 = v50;
  v37(v50, v40, v1);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809392A0, &qword_2741CF0D0);
  v37(&v43[*(v44 + 48)], v41, v1);
  v37(&v43[*(v44 + 64)], v42, v1);
  v45 = *(v39 + 8);
  v45(v17, v1);
  v45(v38, v1);
  v45(v48, v1);
  v45(v42, v1);
  v45(v41, v1);
  return (v45)(v47, v1);
}

uint64_t sub_2740E1414(char *a1, char *a2, _OWORD *a3)
{
  v8 = *a1;
  v3 = *a2;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741DAEE0);
  LOBYTE(v9) = v3;
  sub_2741C862C();
  sub_2740CB460(0, 0xE000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391B8, &qword_2741CF038);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_2740E2AE4();
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  *(v9 + 56) = v3;
  sub_2740C77E8();
  swift_endAccess();
  swift_getKeyPath();
  sub_2741C6A1C();

  sub_2741C7A3C();
  __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  swift_getKeyPath();
  sub_2741C6A0C();

  swift_beginAccess();
  v4 = *(v9 + 57);
  v5 = *(v9 + 56);

  v6 = sub_274198AF0(v5, v4);

  sub_2741C856C();
  if (v6)
  {
    MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DAF30);
    sub_2741C862C();
    sub_2740CB460(0, 0xE000000000000000);
  }

  else
  {
    MEMORY[0x2743E5FB0](0xD000000000000028, 0x80000002741DAF00);
    LOBYTE(v10) = v8;
    sub_2741C862C();
    sub_2740CB218(0, 0xE000000000000000, 2036625250, 0xE400000000000000);

    sub_2741C7A3C();
    swift_getKeyPath();
    sub_2741C6A0C();

    swift_getKeyPath();
    sub_2741C6A2C();

    swift_beginAccess();
    *(v10 + 56) = v8;
    sub_2740C77E8();
    swift_endAccess();
    swift_getKeyPath();
    sub_2741C6A1C();
  }
}

uint64_t sub_2740E1874@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391B8, &qword_2741CF038);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_2740E2AE4();
  sub_2741C6A0C();

  swift_beginAccess();
  v3 = *(v8 + 56);

  if (v3 <= 1)
  {
    if (v3)
    {
      if (qword_280937900 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_280937928 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v3 == 2)
  {
    if (qword_280937910 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_280937920 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:

  sub_2740A6A74();
  result = sub_2741C76AC();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_2740E1A60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = sub_2741C740C();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391F8, &qword_2741CF068);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391F0, &qword_2741CF060);
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = v25 - v13;
  v37 = *(a1 + 1);
  v34 = *(a1 + 1);
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939240, &qword_2741CF090);
  sub_2741C7A5C();
  v34 = v31;
  v35 = v32;
  if (qword_280937930 != -1)
  {
    swift_once();
  }

  v31 = xmmword_2809469A8;
  sub_2740A6A74();

  *&v31 = sub_2741C76AC();
  *(&v31 + 1) = v15;
  LOBYTE(v32) = v16 & 1;
  v33 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939248, &qword_2741CF098);
  sub_2740E2EDC();
  sub_2740A6D24(&qword_280939258, &qword_280939248, &qword_2741CF098, MEMORY[0x277CE14C0]);
  sub_2741C7AAC();
  sub_2741C73FC();
  v18 = sub_2740A6D24(&qword_280939200, &qword_2809391F8, &qword_2741CF068, MEMORY[0x277CDF038]);
  v19 = MEMORY[0x277CDE370];
  v20 = v29;
  sub_2741C771C();
  (*(v26 + 8))(v5, v20);
  (*(v7 + 8))(v10, v6);
  v31 = v37;
  sub_2741C7A3C();
  v36 = a1[1];
  v34 = *(a1 + 2);
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  v21[1] = *a1;
  v21[2] = v22;
  v21[3] = *(a1 + 2);

  sub_2740A6D94(&v36, &v31, &qword_280939260, &qword_2741CF0A0);
  sub_2740A6D94(&v37, &v31, &qword_280939240, &qword_2741CF090);
  sub_2740A6D94(&v34, &v31, &qword_280939268, &qword_2741CF0A8);
  *&v31 = v6;
  *(&v31 + 1) = v20;
  v32 = v18;
  v33 = v19;
  swift_getOpaqueTypeConformance2();
  sub_2740E2C74();
  v23 = v28;
  sub_2741C78CC();

  return (*(v27 + 8))(v14, v23);
}

uint64_t sub_2740E1F54@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939270, &qword_2741CF0B0);
  v49 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1, v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v47 - v8;
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v47 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v47 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v47 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v47 - v23;
  if (qword_280937938 != -1)
  {
    swift_once();
  }

  v51 = qword_2809469B8;
  v52 = unk_2809469C0;
  sub_2740A6A74();

  *v24 = sub_2741C76AC();
  *(v24 + 1) = v25;
  v24[16] = v26 & 1;
  *(v24 + 3) = v27;
  v28 = v24;
  *(v24 + 16) = 257;
  if (qword_280937940 != -1)
  {
    swift_once();
  }

  v51 = qword_2809469C8;
  v52 = unk_2809469D0;

  *v21 = sub_2741C76AC();
  *(v21 + 1) = v29;
  v21[16] = v30 & 1;
  *(v21 + 3) = v31;
  *(v21 + 16) = 258;
  v32 = v21;
  if (qword_280937948 != -1)
  {
    swift_once();
  }

  v51 = qword_2809469D8;
  v52 = unk_2809469E0;

  *v17 = sub_2741C76AC();
  *(v17 + 1) = v33;
  v17[16] = v34 & 1;
  *(v17 + 3) = v35;
  *(v17 + 16) = 259;
  v36 = v49;
  v37 = *(v49 + 16);
  v48 = v28;
  v37(v13, v28, v1);
  v38 = v32;
  v37(v9, v32, v1);
  v37(v5, v17, v1);
  v39 = v36;
  v40 = v13;
  v47 = v13;
  v41 = v9;
  v42 = v5;
  v43 = v50;
  v37(v50, v40, v1);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939278, &qword_2741CF0B8);
  v37(&v43[*(v44 + 48)], v41, v1);
  v37(&v43[*(v44 + 64)], v42, v1);
  v45 = *(v39 + 8);
  v45(v17, v1);
  v45(v38, v1);
  v45(v48, v1);
  v45(v42, v1);
  v45(v41, v1);
  return (v45)(v47, v1);
}

uint64_t sub_2740E2378(char *a1, char *a2, _OWORD *a3)
{
  v8 = *a1;
  v3 = *a2;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741DAE60);
  LOBYTE(v9) = v3;
  sub_2741C862C();
  sub_2740CB460(0, 0xE000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391B8, &qword_2741CF038);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_2740E2AE4();
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  *(v9 + 57) = v3;
  sub_2740C78C4();
  swift_endAccess();
  swift_getKeyPath();
  sub_2741C6A1C();

  sub_2741C7A3C();
  __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  swift_getKeyPath();
  sub_2741C6A0C();

  swift_beginAccess();
  v4 = *(v9 + 57);
  v5 = *(v9 + 56);

  v6 = sub_274198AF0(v5, v4);

  sub_2741C856C();
  if (v6)
  {
    MEMORY[0x2743E5FB0](0xD000000000000023, 0x80000002741DAEB0);
    sub_2741C862C();
    sub_2740CB460(0, 0xE000000000000000);
  }

  else
  {
    MEMORY[0x2743E5FB0](0xD000000000000029, 0x80000002741DAE80);
    LOBYTE(v10) = v8;
    sub_2741C862C();
    sub_2740CB218(0, 0xE000000000000000, 2036625250, 0xE400000000000000);

    sub_2741C7A3C();
    swift_getKeyPath();
    sub_2741C6A0C();

    swift_getKeyPath();
    sub_2741C6A2C();

    swift_beginAccess();
    *(v10 + 57) = v8;
    sub_2740C78C4();
    swift_endAccess();
    swift_getKeyPath();
    sub_2741C6A1C();
  }
}

id sub_2740E27D8@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391B8, &qword_2741CF038);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_2740E2AE4();
  sub_2741C6A0C();

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      if (qword_280937950 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_280937958 == -1)
    {
LABEL_6:

      sub_2740A6A74();
      result = sub_2741C76AC();
      *a2 = result;
      *(a2 + 8) = v6;
      *(a2 + 16) = v7 & 1;
      *(a2 + 24) = v8;
      return result;
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2740E2984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v5 = a1;
  type metadata accessor for UserSettingsModel(0);

  sub_2741C7A2C();
  swift_getKeyPath();
  sub_2740E2AE4();
  sub_2741C6A0C();

  swift_beginAccess();
  sub_2741C7A2C();
  swift_getKeyPath();
  sub_2741C6A0C();

  result = sub_2741C7A2C();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v2;
  *(a2 + 40) = v6;
  return result;
}

unint64_t sub_2740E2AE4()
{
  result = qword_280938290;
  if (!qword_280938290)
  {
    type metadata accessor for UserSettingsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938290);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2740E2B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2740E2B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2740E2C18()
{
  result = qword_2809391E0;
  if (!qword_2809391E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809391E0);
  }

  return result;
}

unint64_t sub_2740E2C74()
{
  result = qword_280939208;
  if (!qword_280939208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939208);
  }

  return result;
}

uint64_t sub_2740E2CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939168, &qword_2741CEFE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740E2D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939180, &qword_2741CF000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740E2DA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939180, &qword_2741CF000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2740E2E18()
{
  result = qword_280939220;
  if (!qword_280939220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939220);
  }

  return result;
}

uint64_t sub_2740E2E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939188, &qword_2741CF008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2740E2EDC()
{
  result = qword_280939250;
  if (!qword_280939250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939250);
  }

  return result;
}

unint64_t sub_2740E2F3C()
{
  result = qword_280939288;
  if (!qword_280939288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939288);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2740E3040(unsigned __int8 a1)
{
  if (a1 > 0xFu)
  {
    if (a1 == 16)
    {
      return 0x646570706F7473;
    }

    if (a1 != 32)
    {
      if (a1 == 64)
      {
        return 0xD000000000000010;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x736572206C6C6977;
  }

  else
  {
    if (a1 == 2)
    {
      return 0x676E696E6E616373;
    }

    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return 0x646573756170;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6D6F63206E616373;
  }
}

BOOL sub_2740E3188(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_2740E31B8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_2740E31E4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_2740E32C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_27416D254(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_2740E330C()
{
  result = qword_2809392B8;
  if (!qword_2809392B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809392B8);
  }

  return result;
}

unint64_t sub_2740E3364()
{
  result = qword_2809392C0;
  if (!qword_2809392C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809392C0);
  }

  return result;
}

unint64_t sub_2740E33BC()
{
  result = qword_2809392C8;
  if (!qword_2809392C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809392C8);
  }

  return result;
}

unint64_t sub_2740E3414()
{
  result = qword_2809392D0;
  if (!qword_2809392D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809392D0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2740E3478(uint64_t *a1, int a2)
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

uint64_t sub_2740E34C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740E3528(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_280937B90 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_280946F08 object:0 userInfo:0];

  return a1();
}

__n128 sub_2740E35D4@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_2741C70EC();
  sub_2740E3644(&v9);
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v7 = v13;
  result = v9;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  return result;
}

uint64_t sub_2740E3644@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809373F8 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v2 = sub_2741C76AC();
  v4 = v3;
  *a1 = v2;
  *(a1 + 8) = v3;
  v6 = v5 & 1;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_27409861C(v2, v3, v5 & 1);

  sub_2740A6AC8(v2, v4, v6);
}

uint64_t sub_2740E372C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809392D8, &qword_2741CF338);
  sub_2740A6D24(&qword_2809392E0, &qword_2809392D8, &qword_2741CF338, MEMORY[0x277CE1138]);
  sub_2741C7A7C();
  LODWORD(v3) = sub_2741C736C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809392E8, &qword_2741CF340);
  *(a1 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_2740E3830()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2740E3874()
{
  result = qword_2809392F0;
  if (!qword_2809392F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809392E8, &qword_2741CF340);
    sub_2740A6D24(&qword_2809392F8, &qword_280939300, qword_2741CF348, MEMORY[0x277CDF028]);
    sub_2740A6D24(&qword_280939308, &qword_280939310, &qword_2741D4C90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809392F0);
  }

  return result;
}

uint64_t sub_2740E3A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v27 = sub_2741C739C();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939318, &qword_2741CF438);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939320, &qword_2741CF440);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v24 - v18;
  v28 = a1;
  v29 = a2;
  v30 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939328, &qword_2741CF448);
  sub_2740A6D24(&qword_280939330, &qword_280939328, &qword_2741CF448, MEMORY[0x277CDE5A0]);
  sub_2741C7B9C();
  if (qword_280937A00 != -1)
  {
    swift_once();
  }

  v31 = qword_280946B58;
  v32 = unk_280946B60;
  v20 = sub_2740E46E0();
  v21 = sub_2740A6A74();
  v22 = MEMORY[0x277D837D0];
  sub_2741C777C();
  (*(v11 + 8))(v14, v10);
  sub_2741C738C();
  v31 = v10;
  v32 = v22;
  v33 = v20;
  v34 = v21;
  swift_getOpaqueTypeConformance2();
  sub_2741C781C();
  (*(v25 + 8))(v9, v27);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_2740E3D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939340, qword_2741CF450);
  sub_2740E47A8();
  return sub_2741C762C();
}

uint64_t sub_2740E3DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AC8, qword_2741CD810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AE0, &qword_2741D2B90);
  sub_2740A6D24(&qword_280938B00, &qword_280938AC8, qword_2741CD810, MEMORY[0x277D83980]);
  sub_2740C73B0();
  sub_2740A6D24(&qword_280938AE8, &qword_280938AE0, &qword_2741D2B90, MEMORY[0x277CDF028]);
  return sub_2741C7B5C();
}

uint64_t sub_2740E3F78(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B10, &qword_2741CCFA8);
  sub_2740A6D24(&qword_280938B18, &qword_280938B10, &qword_2741CCFA8, MEMORY[0x277CE1138]);
  return sub_2741C7A7C();
}

uint64_t sub_2740E4090(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  MEMORY[0x2743E5B70](&v10, v5);
  v6 = v10;
  if (*(v10 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode) != a4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    v11 = v6;
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_2740E41B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  *a5 = sub_2741C70EC();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B38, &qword_2741CCFD0);
  return sub_2740E4230(v8, a2, a3, a4, a5 + *(v10 + 44));
}

uint64_t sub_2740E4230@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B40, &qword_2741CCFD8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v42 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B48, &qword_2741CCFE0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v42 - v16;
  v48 = v8;
  v49 = v7;
  v47 = v6;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (qword_2809379C8 != -1)
      {
        swift_once();
      }

      v18 = &qword_280946AE8;
    }

    else
    {
      if (qword_2809379C0 != -1)
      {
        swift_once();
      }

      v18 = &qword_280946AD8;
    }
  }

  else if (v6)
  {
    if (qword_2809379B8 != -1)
    {
      swift_once();
    }

    v18 = &qword_280946AC8;
  }

  else
  {
    if (qword_280937408 != -1)
    {
      swift_once();
    }

    v18 = &qword_280945F48;
  }

  v19 = *v18;

  v52 = v19;
  v53 = v20;
  sub_2740A6A74();
  v21 = sub_2741C76AC();
  v23 = v22;
  v25 = v24;
  sub_2741C799C();
  v26 = sub_2741C763C();
  v28 = v27;
  v43 = v29;
  v31 = v30;

  sub_2740A6AC8(v21, v23, v25 & 1);

  v52 = v44;
  v53 = v45;
  v54 = v46;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  MEMORY[0x2743E5B70](&v51, v32);
  v33 = v51;
  swift_getKeyPath();
  v52 = v33;
  sub_2740C91EC();
  sub_2741C6A0C();

  LODWORD(v21) = *(v33 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode);

  v34 = 1;
  v36 = v48;
  v35 = v49;
  if (v21 == v47)
  {
    v52 = sub_2741C79CC();
    sub_2741C75BC();
    v37 = v42;
    sub_2741C76EC();

    (*(v36 + 32))(v17, v37, v35);
    v34 = 0;
  }

  (*(v36 + 56))(v17, v34, 1, v35);
  v38 = v50;
  sub_2740C7570(v17, v50);
  *a5 = v26;
  *(a5 + 8) = v28;
  v39 = v43 & 1;
  *(a5 + 16) = v43 & 1;
  *(a5 + 24) = v31;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B50, &qword_2741CCFE8);
  sub_2740C7570(v38, a5 + *(v40 + 64));
  sub_27409861C(v26, v28, v39);

  sub_2740C75E0(v17);
  sub_2740C75E0(v38);
  sub_2740A6AC8(v26, v28, v39);
}

unint64_t sub_2740E46E0()
{
  result = qword_280939338;
  if (!qword_280939338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939318, &qword_2741CF438);
    sub_2740A6D24(&qword_280939330, &qword_280939328, &qword_2741CF448, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939338);
  }

  return result;
}

unint64_t sub_2740E47A8()
{
  result = qword_280939348;
  if (!qword_280939348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939340, qword_2741CF450);
    sub_2740A6D24(&qword_280938AE8, &qword_280938AE0, &qword_2741D2B90, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939348);
  }

  return result;
}

uint64_t sub_2740E48BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939320, &qword_2741CF440);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939318, &qword_2741CF438);
  sub_2740E46E0();
  sub_2740A6A74();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2740E4978()
{
  swift_getKeyPath();
  sub_2740E5A58();
  sub_2741C6A0C();

  swift_beginAccess();
}

uint64_t sub_2740E4A00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

void *sub_2740E4A68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v18 = &v17 - v4;
  v0[7] = MEMORY[0x277D84F90];
  sub_2741C6A3C();
  v5 = [objc_allocWithZone(MEMORY[0x277D54CC8]) init];
  v19[3] = sub_2740E5ACC();
  v19[4] = &off_28832A9B8;
  v19[0] = v5;
  v6 = type metadata accessor for InstantHotspotBrowser();
  v7 = swift_allocObject();
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  sub_27409D4E4(v19, v7 + 16);
  if (qword_280937BC8 != -1)
  {
    swift_once();
  }

  v8 = unk_28093B510;
  swift_beginAccess();
  v9 = *(v7 + 40);
  v10 = *(v7 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v7 + 16, v9);
  v11 = *(v10 + 16);
  v12 = swift_unknownObjectRetain();
  v11(v12, v8, v9, v10);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v1[5] = v6;
  v1[6] = &off_28832D870;
  v1[2] = v7;
  v13 = sub_2741C80DC();
  v14 = v18;
  (*(*(v13 - 8) + 56))(v18, 1, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;

  sub_2740CE980(0, 0, v14, &unk_2741CF578, v15);

  return v1;
}

uint64_t sub_2740E4CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27409D648;

  return sub_2740E4D5C();
}

uint64_t sub_2740E4D5C()
{
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939370, &qword_2741CF550);
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939378, &qword_2741CF558);
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2740E4E90, 0, 0);
}

uint64_t sub_2740E4E90()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  __swift_project_boxed_opaque_existential_1((v0[22] + 16), *(v0[22] + 40));
  v4 = off_28832D878;
  type metadata accessor for InstantHotspotBrowser();
  v4();
  sub_2741C810C();
  (*(v2 + 8))(v1, v3);
  v0[29] = OBJC_IVAR____TtC15WiFiSettingsKit23HotspotDevicesListModel___observationRegistrar;
  v0[30] = 0;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_2740E4FCC;
  v6 = v0[26];

  return MEMORY[0x2822003E8](v0 + 19, 0, 0, v6);
}

uint64_t sub_2740E4FCC()
{

  return MEMORY[0x2822009F8](sub_2740E50C8, 0, 0);
}

uint64_t sub_2740E50C8()
{
  v1 = v0[19];
  v0[32] = v1;
  if (v1)
  {
    v0[17] = 0;
    v0[18] = 0xE000000000000000;
    sub_2741C856C();

    v0[15] = 0xD000000000000017;
    v0[16] = 0x80000002741DAFD0;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
    v3 = MEMORY[0x2743E6080](v1, v2);
    MEMORY[0x2743E5FB0](v3);

    sub_2740CB460(v0[15], v0[16]);

    sub_2741C80AC();
    v0[33] = sub_2741C809C();
    v5 = sub_2741C805C();

    return MEMORY[0x2822009F8](sub_2740E525C, v5, v4);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2740E525C()
{
  v1 = *(v0 + 256);

  v33 = *(v1 + 16);
  v34 = v1;
  if (v33)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v8 = *(v0 + 256) + 32;
    while (1)
    {
      if (v6 >= *(v34 + 16))
      {
        __break(1u);
        return MEMORY[0x2822003E8](v2, v3, v4, v5);
      }

      sub_27409D4E4(v8, v0 + 16);
      v9 = *(v0 + 40);
      v10 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
      v11 = (*(v10 + 16))(v9, v10);
      v13 = v12;
      if (qword_280937B98 != -1)
      {
        swift_once();
      }

      v14 = qword_280946F10;
      swift_beginAccess();
      v15 = v14[9];
      if (!v15)
      {
        break;
      }

      v35 = v7;
      v16 = v14[10];
      v17 = __swift_project_boxed_opaque_existential_1(v14 + 6, v15);
      v18 = *(v15 - 8);
      v19 = swift_task_alloc();
      (*(v18 + 16))(v19, v17, v15);
      v20 = (*(v16 + 32))(v15, v16);
      v22 = v21;
      (*(v18 + 8))(v19, v15);

      if (v11 == v20 && v13 == v22)
      {

        v7 = v35;
      }

      else
      {
        v24 = sub_2741C86DC();

        v7 = v35;
        if ((v24 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v2 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_5:
      ++v6;
      v8 += 40;
      if (v33 == v6)
      {
        goto LABEL_23;
      }
    }

LABEL_17:
    sub_27409D118((v0 + 16), v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 160) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_274198A90(0, *(v7 + 16) + 1, 1);
      v7 = *(v0 + 160);
    }

    v27 = *(v7 + 16);
    v26 = *(v7 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_274198A90((v26 > 1), v27 + 1, 1);
      v7 = *(v0 + 160);
    }

    *(v7 + 16) = v27 + 1;
    v2 = sub_27409D118((v0 + 56), v7 + 40 * v27 + 32);
    goto LABEL_5;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:
  v28 = *(v0 + 240);
  v29 = *(v0 + 176);

  swift_getKeyPath();
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  *(v30 + 24) = v7;
  *(v0 + 168) = v29;
  sub_2740E5A58();
  sub_2741C69FC();

  *(v0 + 240) = v28;
  v31 = swift_task_alloc();
  *(v0 + 248) = v31;
  *v31 = v0;
  v31[1] = sub_2740E4FCC;
  v5 = *(v0 + 208);
  v2 = v0 + 152;
  v3 = 0;
  v4 = 0;

  return MEMORY[0x2822003E8](v2, v3, v4, v5);
}

uint64_t sub_2740E5664(uint64_t a1)
{
  swift_getKeyPath();
  sub_2740E5A58();
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  result = sub_2741B478C(sub_2740E5A30);
  v3 = *(*(v1 + 56) + 16);
  if (v3 < result)
  {
    __break(1u);
  }

  else
  {
    sub_2741B4CAC(result, v3);
    swift_endAccess();
    swift_getKeyPath();
    sub_2741C6A1C();
  }

  return result;
}

uint64_t sub_2740E579C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2741C86DC();
  }

  return v12 & 1;
}

uint64_t sub_2740E5888()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC15WiFiSettingsKit23HotspotDevicesListModel___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HotspotDevicesListModel(uint64_t a1)
{
  result = qword_280939358;
  if (!qword_280939358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740E5988(uint64_t a1)
{
  result = sub_2741C6A4C();
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

unint64_t sub_2740E5A58()
{
  result = qword_280939368;
  if (!qword_280939368)
  {
    type metadata accessor for HotspotDevicesListModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939368);
  }

  return result;
}

unint64_t sub_2740E5ACC()
{
  result = qword_280939380;
  if (!qword_280939380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280939380);
  }

  return result;
}

uint64_t sub_2740E5B18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2740E5B58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27409D648;

  return sub_2740E4CCC();
}

uint64_t sub_2740E5C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2741C7E7C();
  sub_2741C7E7C();
  v8 = objc_allocWithZone(MEMORY[0x277CCAD08]);
  v9 = sub_2741C7E3C();
  v10 = sub_2741C7E3C();

  v11 = sub_2741C7E3C();

  v12 = [v8 initWithProxyHost:v9 port:a3 type:v10 realm:0 authenticationMethod:v11];

  v13 = [*(v5 + 112) credentialsForProtectionSpace_];
  if (v13)
  {
    v14 = v13;
    sub_2740E6284();
    v15 = sub_2741C7D6C();

    if (*(v15 + 16) && (v16 = sub_2741251AC(a4, a5), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      v19 = [v18 password];
      if (v19)
      {
        v20 = v19;
        v21 = sub_2741C7E7C();

        return v21;
      }
    }

    else
    {
    }
  }

  sub_2741C856C();

  MEMORY[0x2743E5FB0](a4, a5);
  sub_2740CB218(0xD000000000000020, 0x80000002741DB100, 0xD00000000000001CLL, 0x80000002741DB130);

  return 0;
}

void sub_2740E5E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2741C7E7C();
  sub_2741C7E7C();
  v5 = objc_allocWithZone(MEMORY[0x277CCAD08]);
  v6 = sub_2741C7E3C();
  v7 = sub_2741C7E3C();

  v8 = sub_2741C7E3C();

  v9 = [v5 initWithProxyHost:v6 port:a3 type:v7 realm:0 authenticationMethod:v8];

  sub_2741C7E7C();
  sub_2741C7E7C();
  v10 = objc_allocWithZone(MEMORY[0x277CCAD08]);
  v11 = sub_2741C7E3C();
  v12 = sub_2741C7E3C();

  v13 = sub_2741C7E3C();

  v14 = [v10 initWithProxyHost:v11 port:a3 type:v12 realm:0 authenticationMethod:v13];

  v21 = sub_2740E6114(v9, a4, a5);
  v15 = sub_2740E6114(v14, a4, a5);
  if (v21 && v15)
  {
    v16 = *(v17 + 112);
    v21 = v21;
    [v16 removeCredential:v21 forProtectionSpace:v9];
    [v16 removeCredential:v15 forProtectionSpace:v14];
  }

  else
  {
    sub_2740CB218(0xD000000000000020, 0x80000002741DB0A0, 0xD00000000000002BLL, 0x80000002741DB0D0);
  }
}

id sub_2740E6114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(v3 + 112) credentialsForProtectionSpace_];
  if (v6)
  {
    v7 = v6;
    sub_2740E6284();
    v8 = sub_2741C7D6C();

    if (*(v8 + 16))
    {
      v9 = sub_2741251AC(a2, a3);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);

        return v11;
      }
    }
  }

  else
  {
    sub_2740CB218(0xD000000000000027, 0x80000002741DB050, 0xD000000000000016, 0x80000002741DB080);
  }

  return 0;
}

uint64_t sub_2740E621C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2740E6284()
{
  result = qword_280939388;
  if (!qword_280939388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280939388);
  }

  return result;
}

uint64_t sub_2740E62D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2740E6318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740E6394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809393B0, &qword_2741CF690);
  return sub_2740E63EC(a1, a2 + *(v4 + 44));
}

uint64_t sub_2740E63EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809393B8, &qword_2741CF698);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E20, &qword_2741CF6A0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809393C0, &qword_2741CF6A8);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v42 - v18;
  if (*(a1 + 40) == 1)
  {
    sub_2741C6D3C();
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A60, &unk_2741CE130) + 36);
    v43 = a2;
    v21 = &v11[v20];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A78, &unk_2741CF6C0) + 28);
    v23 = *MEMORY[0x277CDF438];
    v24 = sub_2741C6CCC();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E18, &qword_2741CE170) + 36)] = 257;
    sub_2741C7C1C();
    sub_2741C6D8C();
    v25 = &v11[*(v8 + 36)];
    v26 = v48;
    *v25 = v47;
    *(v25 + 1) = v26;
    *(v25 + 2) = v49;
    sub_2740A6D94(v11, v7, &qword_280938E20, &qword_2741CF6A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809393C8, &unk_2741CF6B0);
    sub_2740D49E8();
    sub_2740E6AF4();
    sub_2741C72CC();
    a2 = v43;
    sub_27409D420(v11, &qword_280938E20, &qword_2741CF6A0);
  }

  else
  {
    sub_2741C7C1C();
    sub_2741C6D8C();
    *&v46[37] = v49;
    *&v46[21] = v48;
    *&v46[5] = v47;
    v27 = *&v46[16];
    *(v7 + 11) = *v46;
    LOBYTE(v45[0]) = 1;
    *v7 = 0;
    v7[8] = 1;
    *(v7 + 9) = 257;
    *(v7 + 27) = v27;
    *(v7 + 43) = *&v46[32];
    *(v7 + 7) = *&v46[45];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809393C8, &unk_2741CF6B0);
    sub_2740D49E8();
    sub_2740E6AF4();
    sub_2741C72CC();
  }

  v28 = *(a1 + 24);
  v29 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v45[0] = (*(v29 + 16))(v28, v29);
  v45[1] = v30;
  sub_2740A6A74();
  v31 = sub_2741C76AC();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_27409D4E4(a1, v45);
  sub_2740A6D94(v19, v16, &qword_2809393C0, &qword_2741CF6A8);
  sub_2740E6C04(v45, v44);
  sub_2740A6D94(v16, a2, &qword_2809393C0, &qword_2741CF6A8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809393E8, &qword_2741CF6D0);
  v39 = a2 + v38[12];
  *v39 = v31;
  *(v39 + 8) = v33;
  v35 &= 1u;
  *(v39 + 16) = v35;
  *(v39 + 24) = v37;
  v40 = a2 + v38[16];
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_2740E6C04(v44, a2 + v38[20]);
  sub_27409861C(v31, v33, v35);

  sub_2740E6C3C(v45);
  sub_27409D420(v19, &qword_2809393C0, &qword_2741CF6A8);
  sub_2740E6C3C(v44);
  sub_2740A6AC8(v31, v33, v35);

  return sub_27409D420(v16, &qword_2809393C0, &qword_2741CF6A8);
}

uint64_t sub_2740E6904@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939390, &qword_2741CF678) + 44);
  sub_2740E6A4C(v2, v10);
  v5 = swift_allocObject();
  v6 = v10[1];
  v5[1] = v10[0];
  v5[2] = v6;
  v7 = v10[3];
  v5[3] = v10[2];
  v5[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939398, &qword_2741CF680);
  sub_2740A6D24(&qword_2809393A0, &qword_280939398, &qword_2741CF680, MEMORY[0x277CE1138]);
  sub_2741C7A7C();
  v8 = sub_2741C736C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809393A8, &qword_2741CF688);
  *(v4 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_2740E6A84()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_2740E6AF4()
{
  result = qword_2809393D0;
  if (!qword_2809393D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809393C8, &unk_2741CF6B0);
    sub_2740E6B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809393D0);
  }

  return result;
}

unint64_t sub_2740E6B80()
{
  result = qword_2809393D8;
  if (!qword_2809393D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809393E0, qword_2741D36F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809393D8);
  }

  return result;
}

double sub_2740E6C6C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 48))(v4, v5);
  v7 = [v6 integerValue];

  LOBYTE(v5) = sub_2741C756C();
  sub_2741C6C6C();
  v32 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 40))(&v33, v15, v16);
  v17 = v33;
  LOBYTE(v15) = sub_2741C756C();
  sub_2741C6C6C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = (*(v27 + 32))(v26, v27);
  [v28 doubleValue];
  v30 = v29;

  *a2 = v7;
  *(a2 + 8) = v5;
  result = v32;
  *(a2 + 16) = v32;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 56) = v17;
  *(a2 + 64) = v15;
  *(a2 + 72) = v19;
  *(a2 + 80) = v21;
  *(a2 + 88) = v23;
  *(a2 + 96) = v25;
  *(a2 + 104) = 0;
  *(a2 + 112) = v30;
  return result;
}

__n128 sub_2740E6E18@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_2741C70EC();
  sub_2740E6C6C(v2, v7);
  *&v6[71] = v7[4];
  *&v6[87] = v7[5];
  *&v6[103] = v7[6];
  *&v6[119] = v8;
  *&v6[7] = v7[0];
  *&v6[23] = v7[1];
  *&v6[39] = v7[2];
  *&v6[55] = v7[3];
  *(a2 + 81) = *&v6[64];
  *(a2 + 97) = *&v6[80];
  *(a2 + 113) = *&v6[96];
  *(a2 + 128) = *&v6[111];
  *(a2 + 17) = *v6;
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 65) = *&v6[48];
  return result;
}

uint64_t sub_2740E6EE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2741C79BC();
  *a1 = result;
  return result;
}

uint64_t sub_2740E6F58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D0, &qword_2741CF940);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = sub_2741C678C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  if (*v0 <= 1u && !*v0)
  {
    if (qword_280937A18 != -1)
    {
      swift_once();
    }
  }

  sub_2741C677C();
  sub_2741C674C();
  v10 = 0xBFD999999999999ALL;
  v11 = 0;
  sub_2740E7520();
  sub_2741C675C();
  v7 = sub_2741C75AC();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_2741C75CC();
  sub_27409D420(v4, &qword_2809381D0, &qword_2741CF940);
  v10 = v8;
  sub_2740E7574();
  return sub_2741C675C();
}

uint64_t sub_2740E71DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2741C673C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_2740E6F58();
  result = sub_2741C769C();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

float sub_2740E727C@<S0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  result = v2 / 100.0;
  *a1 = result;
  *(a1 + 4) = 257;
  return result;
}

uint64_t getEnumTagSinglePayload for HotspotNetworkType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HotspotNetworkType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2740E7520()
{
  result = qword_280939410;
  if (!qword_280939410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939410);
  }

  return result;
}

unint64_t sub_2740E7574()
{
  result = qword_280939418;
  if (!qword_280939418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939418);
  }

  return result;
}

unint64_t sub_2740E75CC()
{
  result = qword_280939420;
  if (!qword_280939420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939428, &qword_2741CF948);
    sub_2740E7658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939420);
  }

  return result;
}

unint64_t sub_2740E7658()
{
  result = qword_280939430;
  if (!qword_280939430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939430);
  }

  return result;
}

uint64_t sub_2740E76D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2740E772C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2740E7A20();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2740E7790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2740E7A20();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2740E77F4(uint64_t a1)
{
  sub_2740E7A20();
  sub_2741C74CC();
  __break(1u);
}

uint64_t sub_2740E781C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(WiFiTrustCertificateViewController);

  v7 = sub_2741C7FCC();

  v8 = [v6 initWithCertificateChain_];

  v12[4] = a2;
  v12[5] = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2740E76D0;
  v12[3] = &block_descriptor_5;
  v9 = _Block_copy(v12);
  v10 = v8;

  [v10 setHandler_];

  _Block_release(v9);
  sub_2740CB460(0xD000000000000020, 0x80000002741DB160);
  return a1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2740E7984(uint64_t *a1, int a2)
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

uint64_t sub_2740E79CC(uint64_t result, int a2, int a3)
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

unint64_t sub_2740E7A20()
{
  result = qword_280939438;
  if (!qword_280939438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939438);
  }

  return result;
}

void *sub_2740E7A74@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for ProxyCredentialsPromptView(0);
  v3 = v2[5];
  type metadata accessor for CFNetworkAuthenticator();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  *(a1 + v3) = v4;
  v5 = v2[6];
  if (qword_280937B40 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v5);
  v7 = unk_280946E70;
  *v6 = qword_280946E68;
  v6[1] = v7;
  v8 = a1 + v2[7];

  sub_2741C7A2C();
  *v8 = v12;
  *(v8 + 2) = v13;
  v9 = a1 + v2[8];
  sub_2741C7A2C();
  *v9 = v12;
  *(v9 + 2) = v13;
  v10 = a1 + v2[9];
  sub_2740A5224();
  result = sub_2741C6CAC();
  *v10 = v12;
  *(v10 + 1) = *(&v12 + 1);
  v10[16] = v13;
  return result;
}

uint64_t sub_2740E7BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939468, &qword_2741CFB40);
  v80 = *(v72 - 8);
  v4 = MEMORY[0x28223BE20](v72, v3);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v79 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939470, &qword_2741CFB48);
  v9 = v8 - 8;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v78 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v66 - v14;
  *v15 = sub_2741C70EC();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939478, &qword_2741CFB50) + 44)];
  v17 = v15;
  v77 = v15;
  v18 = a1;
  v70 = a1;
  sub_2740E81AC(a1, v16);
  LOBYTE(a1) = sub_2741C751C();
  sub_2741C6C6C();
  v19 = &v17[*(v9 + 44)];
  *v19 = a1;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v24 = *(v18 + *(type metadata accessor for ProxyCredentialsPromptView(0) + 20));
  v25 = *(v24 + 24);
  v90 = *(v24 + 16);
  v91 = v25;
  sub_2740A6A74();

  v26 = sub_2741C76AC();
  v28 = v27;
  LOBYTE(v17) = v29;
  LODWORD(v90) = sub_2741C737C();
  v30 = sub_2741C764C();
  v32 = v31;
  v34 = v33;
  sub_2740A6AC8(v26, v28, v17 & 1);

  sub_2741C758C();
  v74 = sub_2741C767C();
  v76 = v35;
  LOBYTE(v26) = v36;
  v69 = v37;

  sub_2740A6AC8(v30, v32, v34 & 1);

  v38 = sub_2741C752C();
  LOBYTE(v30) = v38;
  v68 = v38;
  sub_2741C6C6C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v26 & 1;
  LOBYTE(v90) = v26 & 1;
  v67 = v26 & 1;
  LOBYTE(v85) = 0;
  KeyPath = swift_getKeyPath();
  v81 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939480, &qword_2741CFB88);
  sub_2740EA5F0();
  v48 = v79;
  sub_2741C761C();
  v49 = v78;
  sub_2740A6D94(v77, v78, &qword_280939470, &qword_2741CFB48);
  v50 = *(v80 + 16);
  v51 = v71;
  v52 = v48;
  v53 = v72;
  v50(v71, v52, v72);
  v54 = v49;
  v55 = v73;
  sub_2740A6D94(v54, v73, &qword_280939470, &qword_2741CFB48);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394A0, &qword_2741CFB98);
  v57 = (v55 + v56[12]);
  *&v85 = v74;
  *(&v85 + 1) = v76;
  LOBYTE(v86) = v47;
  *(&v86 + 1) = *v83;
  DWORD1(v86) = *&v83[3];
  v58 = v69;
  *(&v86 + 1) = v69;
  LOBYTE(v87) = v30;
  *(&v87 + 1) = *v82;
  DWORD1(v87) = *&v82[3];
  *(&v87 + 1) = v40;
  *&v88 = v42;
  *(&v88 + 1) = v44;
  *&v89[0] = v46;
  BYTE8(v89[0]) = 0;
  HIDWORD(v89[0]) = *&v84[3];
  *(v89 + 9) = *v84;
  *&v89[1] = KeyPath;
  BYTE8(v89[1]) = 1;
  v59 = v86;
  *v57 = v85;
  v57[1] = v59;
  v60 = v87;
  v61 = v88;
  v62 = v89[0];
  *(v57 + 73) = *(v89 + 9);
  v57[3] = v61;
  v57[4] = v62;
  v57[2] = v60;
  v50((v55 + v56[16]), v51, v53);
  v63 = v55 + v56[20];
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_2740A6D94(&v85, &v90, &qword_2809394A8, &qword_2741CFBA0);
  v64 = *(v80 + 8);
  v64(v79, v53);
  sub_27409D420(v77, &qword_280939470, &qword_2741CFB48);
  v64(v51, v53);
  v90 = v74;
  v91 = v76;
  v92 = v67;
  *v93 = *v83;
  *&v93[3] = *&v83[3];
  v94 = v58;
  v95 = v68;
  *v96 = *v82;
  *&v96[3] = *&v82[3];
  v97 = v40;
  v98 = v42;
  v99 = v44;
  v100 = v46;
  v101 = 0;
  *&v102[3] = *&v84[3];
  *v102 = *v84;
  v103 = KeyPath;
  v104 = 1;
  sub_27409D420(&v90, &qword_2809394A8, &qword_2741CFBA0);
  return sub_27409D420(v78, &qword_280939470, &qword_2741CFB48);
}

uint64_t sub_2740E81AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v127 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v122 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v3);
  v118 = &v103 - v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990) - 8;
  MEMORY[0x28223BE20](v120, v5);
  v119 = &v103 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394E8, &qword_2741CFBE8) - 8;
  v8 = MEMORY[0x28223BE20](v124, v7);
  v126 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v121 = &v103 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v123 = &v103 - v14;
  v15 = sub_2741C719C();
  v16 = *(v15 - 8);
  v111 = v15;
  v112 = v16;
  MEMORY[0x28223BE20](v15, v17);
  v108 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProxyCredentialsPromptView(0);
  v20 = *(v19 - 8);
  v117 = v19 - 8;
  MEMORY[0x28223BE20](v19 - 8, v21);
  v116 = v22;
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394F0, &qword_2741CFBF0);
  v103 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v103 - v26;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394F8, &qword_2741CFBF8);
  v106 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v28);
  v30 = &v103 - v29;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939500, &qword_2741CFC00) - 8;
  MEMORY[0x28223BE20](v105, v31);
  v33 = &v103 - v32;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939508, &qword_2741CFC08) - 8;
  v35 = MEMORY[0x28223BE20](v110, v34);
  v128 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v107 = &v103 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v129 = &v103 - v41;
  v113 = v23;
  sub_2740EA45C(a1, v23);
  v42 = *(v20 + 80);
  v43 = (v42 + 16) & ~v42;
  v114 = v43;
  v115 = v42;
  v44 = swift_allocObject();
  sub_2740EA4C4(v23, v44 + v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939510, &unk_2741CFC10);
  sub_2740EA6CC();
  sub_2741C7A7C();
  sub_2741C714C();
  v45 = sub_2740A6D24(&qword_280939520, &qword_2809394F0, &qword_2741CFBF0, MEMORY[0x277CDF028]);
  sub_2741C785C();

  (*(v103 + 8))(v27, v24);
  v46 = v108;
  sub_2741C718C();
  *&v139 = v24;
  *(&v139 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  sub_2740EA784();
  v47 = v104;
  v48 = v111;
  sub_2741C76FC();
  (*(v112 + 8))(v46, v48);
  (*(v106 + 8))(v30, v47);
  LODWORD(v27) = sub_2741C737C();
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939530, &qword_2741CFC20) + 36)] = v27;
  v49 = &v33[*(v105 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939538, &qword_2741CFC28);
  sub_2741C6F2C();
  *v49 = swift_getKeyPath();
  sub_2741C7C2C();
  sub_2741C6F1C();
  v50 = v107;
  sub_2740A6C18(v33, v107, &qword_280939500, &qword_2741CFC00);
  v51 = (v50 + *(v110 + 44));
  v52 = v163;
  v51[4] = v162;
  v51[5] = v52;
  v51[6] = v164;
  v53 = v159;
  *v51 = v158;
  v51[1] = v53;
  v54 = v161;
  v51[2] = v160;
  v51[3] = v54;
  sub_2740A6C18(v50, v129, &qword_280939508, &qword_2741CFC08);
  v55 = v117;
  v56 = v109;
  v57 = (v109 + *(v117 + 32));
  v58 = v57[1];
  *&v139 = *v57;
  *(&v139 + 1) = v58;
  sub_2740A6A74();

  v59 = sub_2741C76AC();
  v61 = v60;
  LOBYTE(v47) = v62;
  sub_2741C75EC();
  v63 = sub_2741C767C();
  v110 = v64;
  v111 = v63;
  LOBYTE(v45) = v65;
  v112 = v66;

  sub_2740A6AC8(v59, v61, v47 & 1);

  sub_2741C7C1C();
  sub_2741C6F1C();
  v157 = v45 & 1;
  v67 = v45 & 1;
  LODWORD(v108) = v67;
  v68 = v56;
  v69 = v113;
  sub_2740EA45C(v56, v113);
  v70 = v114;
  v71 = swift_allocObject();
  sub_2740EA4C4(v69, v71 + v70);
  v72 = v118;
  sub_2741C7A7C();
  v73 = v68 + *(v55 + 40);
  v74 = *v73;
  v75 = *(v73 + 16);
  v139 = v74;
  v140 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A3C();
  v76 = v130;

  v77 = HIBYTE(*(&v76 + 1)) & 0xFLL;
  if ((*(&v76 + 1) & 0x2000000000000000) == 0)
  {
    v77 = v76 & 0xFFFFFFFFFFFFLL;
  }

  v78 = v77 == 0;
  KeyPath = swift_getKeyPath();
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  v81 = v119;
  (*(v122 + 32))(v119, v72, v125);
  v82 = (v81 + *(v120 + 44));
  *v82 = KeyPath;
  v82[1] = sub_2740A6E2C;
  v82[2] = v80;
  sub_2741C7C3C();
  sub_2741C6F1C();
  v83 = v121;
  sub_2740A6C18(v81, v121, &qword_2809381A0, &qword_2741CB990);
  v84 = v123;
  v85 = (v83 + *(v124 + 44));
  v86 = v170;
  v85[4] = v169;
  v85[5] = v86;
  v85[6] = v171;
  v87 = v166;
  *v85 = v165;
  v85[1] = v87;
  v88 = v168;
  v85[2] = v167;
  v85[3] = v88;
  sub_2740A6C18(v83, v84, &qword_2809394E8, &qword_2741CFBE8);
  v89 = v128;
  sub_2740A6D94(v129, v128, &qword_280939508, &qword_2741CFC08);
  v90 = v126;
  sub_2740A6D94(v84, v126, &qword_2809394E8, &qword_2741CFBE8);
  v91 = v89;
  v92 = v127;
  sub_2740A6D94(v91, v127, &qword_280939508, &qword_2741CFC08);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939540, &unk_2741CFC90);
  v94 = (v92 + *(v93 + 48));
  v96 = v110;
  v95 = v111;
  *&v130 = v111;
  *(&v130 + 1) = v110;
  LOBYTE(v131) = v67;
  *(&v131 + 1) = *v156;
  DWORD1(v131) = *&v156[3];
  v97 = v112;
  *(&v131 + 1) = v112;
  v136 = v153;
  v137 = v154;
  v138 = v155;
  v135 = v152;
  v134 = v151;
  v133 = v150;
  v132 = v149;
  v98 = v154;
  v94[6] = v153;
  v94[7] = v98;
  v94[8] = v138;
  v99 = v133;
  v94[2] = v132;
  v94[3] = v99;
  v100 = v135;
  v94[4] = v134;
  v94[5] = v100;
  v101 = v131;
  *v94 = v130;
  v94[1] = v101;
  sub_2740A6D94(v90, v92 + *(v93 + 64), &qword_2809394E8, &qword_2741CFBE8);
  sub_2740A6D94(&v130, &v139, &qword_2809381B0, &qword_2741CB9D0);
  sub_27409D420(v84, &qword_2809394E8, &qword_2741CFBE8);
  sub_27409D420(v129, &qword_280939508, &qword_2741CFC08);
  sub_27409D420(v90, &qword_2809394E8, &qword_2741CFBE8);
  *&v139 = v95;
  *(&v139 + 1) = v96;
  LOBYTE(v140) = v108;
  *(&v140 + 1) = *v156;
  HIDWORD(v140) = *&v156[3];
  v141 = v97;
  v146 = v153;
  v147 = v154;
  v148 = v155;
  v142 = v149;
  v143 = v150;
  v145 = v152;
  v144 = v151;
  sub_27409D420(&v139, &qword_2809381B0, &qword_2741CB9D0);
  return sub_27409D420(v128, &qword_280939508, &qword_2741CFC08);
}

uint64_t sub_2740E8F28(uint64_t a1)
{
  v18 = sub_2741C70AC();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v17 - v8;
  v10 = sub_2741C6DBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740A6D94(a1, v9, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_2741C82AC();
    v15 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v18);
  }

  sub_2741C6DAC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2740E91A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2741C79CC();
  result = sub_2741C736C();
  *a1 = v2;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2740E91E8(uint64_t a1)
{
  type metadata accessor for ProxyCredentialsPromptView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A3C();

  sub_2741C7A3C();
}

uint64_t sub_2740E9298@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809378E8 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2740E933C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939498, &qword_2741CFB90);
  sub_2740A6D24(&qword_280939490, &qword_280939498, &qword_2741CFB90, MEMORY[0x277CE14C0]);
  return sub_2741C7B9C();
}

uint64_t sub_2740E93E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394B0, &qword_2741CFBA8);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394B8, &qword_2741CFBB0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v24 - v18;
  *v19 = sub_2741C70EC();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394C0, &qword_2741CFBB8);
  sub_2740E9628(a1, &v19[*(v20 + 44)]);
  *v11 = sub_2741C70EC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394C8, &qword_2741CFBC0);
  sub_2740E9A8C(a1, &v11[*(v21 + 44)]);
  sub_2740A6D94(v19, v16, &qword_2809394B8, &qword_2741CFBB0);
  sub_2740A6D94(v11, v8, &qword_2809394B0, &qword_2741CFBA8);
  sub_2740A6D94(v16, a2, &qword_2809394B8, &qword_2741CFBB0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394D0, &qword_2741CFBC8);
  sub_2740A6D94(v8, a2 + *(v22 + 48), &qword_2809394B0, &qword_2741CFBA8);
  sub_27409D420(v11, &qword_2809394B0, &qword_2741CFBA8);
  sub_27409D420(v19, &qword_2809394B8, &qword_2741CFBB0);
  sub_27409D420(v8, &qword_2809394B0, &qword_2741CFBA8);
  return sub_27409D420(v16, &qword_2809394B8, &qword_2741CFBB0);
}

uint64_t sub_2740E9628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938118, &unk_2741CB890);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938120, &unk_2741D05E0);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v46 = &v38 - v13;
  if (qword_2809374A0 != -1)
  {
    swift_once();
  }

  v47 = xmmword_280946078;
  sub_2740A6A74();

  v14 = sub_2741C76AC();
  v38 = v15;
  v39 = v14;
  v40 = v16;
  v41 = v17;
  sub_2741C714C();
  v18 = type metadata accessor for ProxyCredentialsPromptView(0);
  v19 = a1 + *(v18 + 28);
  v20 = *v19;
  v21 = *(v19 + 16);
  v49 = v20;
  v50 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  v22 = (a1 + *(v18 + 36));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v22) = v22[16];
  LOBYTE(v47) = v23;
  *(&v47 + 1) = v24;
  LOBYTE(v48) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v47 = v49;
  LOBYTE(v48) = v50;
  LOBYTE(v49) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890, MEMORY[0x277CDF1A8]);
  sub_2740A58C0();
  v25 = v46;
  v26 = v44;
  sub_2741C789C();

  (*(v43 + 8))(v6, v26);
  v27 = *(v8 + 16);
  v28 = v45;
  v27(v45, v25, v7);
  v29 = v39;
  v31 = v41;
  v30 = v42;
  v32 = v7;
  v33 = v38;
  *v42 = v39;
  v30[1] = v33;
  v34 = v40 & 1;
  *(v30 + 16) = v40 & 1;
  v30[3] = v31;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394E0, &qword_2741CFBE0);
  v27(v30 + *(v35 + 48), v28, v32);
  sub_27409861C(v29, v33, v34);
  v36 = *(v8 + 8);

  v36(v46, v32);
  v36(v28, v32);
  sub_2740A6AC8(v29, v33, v34);
}

uint64_t sub_2740E9A8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938158, &qword_2741CFBD0);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938160, &unk_2741CB900);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v46 = &v38 - v13;
  if (qword_2809374A8 != -1)
  {
    swift_once();
  }

  v47 = xmmword_280946088;
  sub_2740A6A74();

  v14 = sub_2741C76AC();
  v38 = v15;
  v39 = v14;
  v40 = v16;
  v41 = v17;
  sub_2741C714C();
  v18 = type metadata accessor for ProxyCredentialsPromptView(0);
  v19 = a1 + *(v18 + 32);
  v20 = *v19;
  v21 = *(v19 + 16);
  v49 = v20;
  v50 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C6CFC();
  v22 = (a1 + *(v18 + 36));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v22) = v22[16];
  LOBYTE(v47) = v23;
  *(&v47 + 1) = v24;
  LOBYTE(v48) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v47 = v49;
  LOBYTE(v48) = v50;
  LOBYTE(v49) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  sub_2740A6D24(&qword_280938178, &qword_280938158, &qword_2741CFBD0, MEMORY[0x277CDD798]);
  sub_2740A58C0();
  v25 = v46;
  v26 = v44;
  sub_2741C789C();

  (*(v43 + 8))(v6, v26);
  v27 = *(v8 + 16);
  v28 = v45;
  v27(v45, v25, v7);
  v29 = v39;
  v31 = v41;
  v30 = v42;
  v32 = v7;
  v33 = v38;
  *v42 = v39;
  v30[1] = v33;
  v34 = v40 & 1;
  *(v30 + 16) = v40 & 1;
  v30[3] = v31;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809394D8, &qword_2741CFBD8);
  v27(v30 + *(v35 + 48), v28, v32);
  sub_27409861C(v29, v33, v34);
  v36 = *(v8 + 8);

  v36(v46, v32);
  v36(v28, v32);
  sub_2740A6AC8(v29, v33, v34);
}

uint64_t sub_2740E9EDC(uint64_t a1)
{
  type metadata accessor for ProxyCredentialsPromptView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740E9F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8, a2);
  *a3 = sub_2741C71AC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939458, &qword_2741CFB28);
  sub_2740E7BF4(v3, a3 + *(v7 + 44));
  sub_2740EA45C(v3, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2740EA4C4(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939460, &unk_2741CFB30);
  v11 = (a3 + *(result + 36));
  *v11 = sub_2740EA528;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t type metadata accessor for ProxyCredentialsPromptView(uint64_t a1)
{
  result = qword_280939440;
  if (!qword_280939440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740EA13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2740EA218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2740EA2DC(uint64_t a1)
{
  sub_2740EA398(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CFNetworkAuthenticator();
    if (v2 <= 0x3F)
    {
      sub_2740EA3F0();
      if (v3 <= 0x3F)
      {
        sub_2740A5850(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2740EA398(uint64_t a1)
{
  if (!qword_280937EA8)
  {
    sub_2741C6DBC();
    v1 = sub_2741C6CDC();
    if (!v2)
    {
      atomic_store(v1, &qword_280937EA8);
    }
  }
}

void sub_2740EA3F0()
{
  if (!qword_280939450)
  {
    v0 = sub_2741C7A6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280939450);
    }
  }
}

uint64_t sub_2740EA45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProxyCredentialsPromptView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740EA4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProxyCredentialsPromptView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740EA540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2741C6FEC();
  *a1 = result;
  return result;
}

uint64_t sub_2740EA56C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2741C6FEC();
  *a1 = result;
  return result;
}

unint64_t sub_2740EA5F0()
{
  result = qword_280939488;
  if (!qword_280939488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939480, &qword_2741CFB88);
    sub_2740A6D24(&qword_280939490, &qword_280939498, &qword_2741CFB90, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939488);
  }

  return result;
}

unint64_t sub_2740EA6CC()
{
  result = qword_280939518;
  if (!qword_280939518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939510, &unk_2741CFC10);
    sub_2740A6D24(&qword_280939308, &qword_280939310, &qword_2741D4C90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939518);
  }

  return result;
}

unint64_t sub_2740EA784()
{
  result = qword_280939528;
  if (!qword_280939528)
  {
    sub_2741C719C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939528);
  }

  return result;
}

uint64_t sub_2740EA800(uint64_t a1)
{
  v2 = sub_2741C6F3C();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2741C6FBC();
}

uint64_t objectdestroyTm_9()
{
  v1 = *(type metadata accessor for ProxyCredentialsPromptView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2741C6DBC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740EAA5C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ProxyCredentialsPromptView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2740EAAEC()
{
  result = qword_280939548;
  if (!qword_280939548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939460, &unk_2741CFB30);
    sub_2740A6D24(&qword_280939550, &qword_280939558, &qword_2741CFCA0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939548);
  }

  return result;
}

const char *sub_2740EABAC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2741C7E7C();

    v0 = v2;
LABEL_5:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2741CC090;
  result = getprogname();
  if (result)
  {
    v6 = result;
    *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939560, &qword_2741CFCA8);
    *(v4 + 64) = sub_2740EACD4();
    *(v4 + 32) = v6;
    v7 = getpid();
    v8 = MEMORY[0x277D84A20];
    *(v4 + 96) = MEMORY[0x277D849A8];
    *(v4 + 104) = v8;
    *(v4 + 72) = v7;
    v3 = sub_2741C7E8C();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_2740EACD4()
{
  result = qword_280939568;
  if (!qword_280939568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939560, &qword_2741CFCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939568);
  }

  return result;
}

unint64_t sub_2740EAD4C()
{
  result = qword_280939570;
  if (!qword_280939570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939570);
  }

  return result;
}

uint64_t sub_2740EADC8()
{
  type metadata accessor for WiFiPasswordReceiver();
  result = swift_allocObject();
  qword_280939578 = result;
  unk_280939580 = &off_28832CC40;
  return result;
}

uint64_t sub_2740EAE04()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2740EAE70()
{
  v1 = *v0;
  if (*(v1 + 56))
  {

    sub_2741C814C();
  }

  *(v1 + 56) = 0;
}

uint64_t CWFSecurityType.description.getter(uint64_t a1)
{
  v1 = sub_2740EAF84(a1);

  return v1;
}

uint64_t sub_2740EAF48()
{
  v1 = sub_2740EAF84(*v0);

  return v1;
}

uint64_t sub_2740EAF84(uint64_t a1)
{
  if (a1 > 15)
  {
    if (a1 <= 63)
    {
      if (a1 == 16)
      {
        if (qword_280937428 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945F88;
        return *v1;
      }

      if (a1 == 32)
      {
        if (qword_280937420 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945F78;
        return *v1;
      }
    }

    else
    {
      switch(a1)
      {
        case 64:
          if (qword_280937438 != -1)
          {
            swift_once();
          }

          v1 = &qword_280945FA8;
          return *v1;
        case 128:
          if (qword_280937430 != -1)
          {
            swift_once();
          }

          v1 = &qword_280945F98;
          return *v1;
        case 256:
          if (qword_280937450 != -1)
          {
            swift_once();
          }

          v1 = &qword_280945FD8;
          return *v1;
      }
    }

LABEL_44:
    if (qword_280937408 != -1)
    {
      swift_once();
    }

    v1 = &qword_280945F48;
    return *v1;
  }

  if (a1 <= 1)
  {
    if (a1 == -1)
    {
      if (qword_280937458 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945FE8;
      return *v1;
    }

    if (a1 == 1)
    {
      if (qword_280937418 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945F68;
      return *v1;
    }

    goto LABEL_44;
  }

  switch(a1)
  {
    case 2:
      if (qword_280937410 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945F58;
      break;
    case 4:
      if (qword_280937448 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945FC8;
      break;
    case 8:
      if (qword_280937440 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945FB8;
      return *v1;
    default:
      goto LABEL_44;
  }

  return *v1;
}

unint64_t sub_2740EB298()
{
  result = qword_280937C80;
  if (!qword_280937C80)
  {
    type metadata accessor for CWFSecurityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937C80);
  }

  return result;
}

uint64_t sub_2740EB2F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2740EB338(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2740EB388(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2741C856C();
  MEMORY[0x2743E5FB0](60, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939588, qword_2741CFEE0);
  v5 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v5);

  MEMORY[0x2743E5FB0](0x3D746E756F6320, 0xE700000000000000);
  v6 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v6);

  MEMORY[0x2743E5FB0](0x3D646E616220, 0xE600000000000000);
  sub_2741C862C();
  if ((a3 & 1) == 0)
  {
    sub_2741C856C();

    v7 = sub_2741C881C();
    MEMORY[0x2743E5FB0](v7);

    MEMORY[0x2743E5FB0](0x7363657320, 0xE500000000000000);
    MEMORY[0x2743E5FB0](0x6F69746172756420, 0xEA00000000003D6ELL);
  }

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_2740EB598()
{
  sub_2740EB83C(v0 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings);
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkConfigurationState(uint64_t a1)
{
  result = qword_2809395A0;
  if (!qword_2809395A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2740EB698(uint64_t a1)
{
  sub_2740EB764(319);
  if (v1 <= 0x3F)
  {
    sub_2741C6A4C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2740EB764(uint64_t a1)
{
  if (!qword_2809395B0)
  {
    type metadata accessor for NetworkSettings(255);
    v1 = sub_2741C839C();
    if (!v2)
    {
      atomic_store(v1, &qword_2809395B0);
    }
  }
}

unint64_t sub_2740EB7BC(uint64_t a1)
{
  result = sub_2740EB7E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2740EB7E4()
{
  result = qword_2809395B8;
  if (!qword_2809395B8)
  {
    type metadata accessor for NetworkConfigurationState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809395B8);
  }

  return result;
}

uint64_t sub_2740EB83C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809395C0, qword_2741D1000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2740EB8A4(uint64_t a1, char a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v6 + 1528) = v5;
  *(v6 + 1520) = a5;
  *(v6 + 178) = a4;
  *(v6 + 1512) = a3;
  *(v6 + 177) = a2;
  *(v6 + 1504) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  *(v6 + 1536) = swift_task_alloc();
  v7 = type metadata accessor for EnterpriseIdentity(0);
  *(v6 + 1544) = v7;
  *(v6 + 1552) = *(v7 - 8);
  *(v6 + 1560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  *(v6 + 1568) = swift_task_alloc();
  v8 = type metadata accessor for KnownNetwork(0);
  *(v6 + 1576) = v8;
  *(v6 + 1584) = *(v8 - 8);
  *(v6 + 1592) = swift_task_alloc();
  v9 = sub_2741C6AFC();
  *(v6 + 1600) = v9;
  *(v6 + 1608) = *(v9 - 8);
  *(v6 + 1616) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2740EBAA0, 0, 0);
}

uint64_t sub_2740EBAA0()
{
  v1 = *(v0 + 178);
  v2 = *(v0 + 1512);
  v3 = *(v0 + 177);
  v4 = *(v0 + 1504);
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000001FLL, 0x80000002741DB280);
  v5 = *v4;
  *(v0 + 1624) = *v4;
  v6 = v4[1];
  *(v0 + 1632) = v6;
  v110 = v5;
  v108 = v6;
  MEMORY[0x2743E5FB0]();
  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741DB2A0);
  v7 = sub_27409984C(v3, v2, v1 & 0x101);
  MEMORY[0x2743E5FB0](v7);

  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 1616);
  v9 = *(v0 + 1608);
  v10 = *(v0 + 1600);
  v111 = *(v0 + 1520);
  v114 = *(v0 + 1504);
  v11 = __swift_project_value_buffer(v10, qword_280945DD8);
  *(v0 + 1640) = v11;
  v115 = v0;
  v12 = *(v9 + 16);
  *(v0 + 1648) = v12;
  *(v0 + 1656) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8, v11, v10);
  MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
  MEMORY[0x2743E5FB0](43, 0xE100000000000000);
  MEMORY[0x2743E5FB0](93, 0xE100000000000000);
  sub_2740CA9CC(91, 0xE100000000000000, 0, 0xE000000000000000);

  v13 = *(v9 + 8);
  *(v0 + 1664) = v13;
  *(v0 + 1672) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v10);
  sub_2741C856C();

  sub_2740A6D94(v111, v0 + 1064, &qword_280937FB8, &unk_2741D0410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB8, &unk_2741D0410);
  v14 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v14);

  v109 = v12;
  v12(v8, v11, v10);
  sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000019, 0x80000002741DB2C0);

  v112 = v13;
  v13(v8, v10);
  sub_27409D4E4(v114 + 56, v0 + 1144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_2740BA268(0, &qword_280937E60, 0x277D02B58);
  if (!swift_dynamicCast())
  {
    sub_2740CB218(0xD000000000000019, 0x80000002741DB2E0, 0xD000000000000023, 0x80000002741DB300);
    sub_2740F21F4();
    swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0;
    *(v22 + 48) = 12;
    swift_willThrow();
LABEL_27:

    v39 = *(v0 + 8);

    return v39();
  }

  v15 = *(v0 + 1504);
  v16 = (*(v0 + 178) & 0x100) == 0;
  v17 = *(v0 + 1472);
  *(v0 + 1680) = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D02AE0]) init];
  *(v0 + 1688) = v18;
  [v18 setRememberUponSuccessfulAssociation_];
  if ((*(v15 + 96) & 1) == 0)
  {
    sub_2740A6D94(*(v0 + 1520), v0 + 1224, &qword_280937FB8, &unk_2741D0410);
    v19 = *(v0 + 1248);
    if (v19)
    {
      v20 = *(v0 + 1256);
      __swift_project_boxed_opaque_existential_1((v0 + 1224), *(v0 + 1248));
      (*(v20 + 24))(v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1224));
      v21 = sub_2741C7E3C();
    }

    else
    {
      sub_27409D420(v0 + 1224, &qword_280937FB8, &unk_2741D0410);
      v21 = 0;
    }

    [v18 setPassword_];
  }

  if (*(v0 + 177) == 1)
  {
    v23 = *(v0 + 1520);
    v24 = [v17 networkProfile];
    [v24 setHiddenState_];
    sub_2740A6D94(v23, v0 + 664, &qword_280937FB8, &unk_2741D0410);
    if (*(v0 + 688))
    {
      sub_27409D118((v0 + 664), v0 + 744);
      v25 = *(v0 + 768);
      v26 = *(v0 + 776);
      __swift_project_boxed_opaque_existential_1((v0 + 744), v25);
      [v24 setPrivateMACAddressModeUserSetting_];
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));
    }

    else
    {
      sub_27409D420(v0 + 664, &qword_280937FB8, &unk_2741D0410);
    }

    [v18 setKnownNetworkProfile_];
  }

  swift_beginAccess();
  if (byte_280938DD8)
  {
    v27 = *(v0 + 1616);
    v28 = *(v0 + 1600);
    if (byte_280938DD8 == 4)
    {
      v109(*(v0 + 1616), v11, *(v0 + 1600));
      sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000011, 0x80000002741DB350);
      v112(v27, v28);
      sub_2740F21F4();
      swift_allocError();
      *v29 = v110;
      *(v29 + 8) = v108;
      *(v29 + 16) = 0u;
      *(v29 + 32) = 0u;
      v30 = 8;
    }

    else
    {
      v109(*(v0 + 1616), v11, *(v0 + 1600));
      sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000010, 0x80000002741DB330);
      v112(v27, v28);
      sub_2740F21F4();
      swift_allocError();
      *v29 = v110;
      *(v29 + 8) = v108;
      *(v29 + 16) = 0u;
      *(v29 + 32) = 0u;
      v30 = 9;
    }

    goto LABEL_26;
  }

  if (sub_274116EB0())
  {
    sub_2740A6D94(*(v0 + 1520), v0 + 904, &qword_280937FB8, &unk_2741D0410);
    v31 = *(v0 + 928);
    if (v31)
    {
      v32 = *(v0 + 936);
      __swift_project_boxed_opaque_existential_1((v0 + 904), *(v0 + 928));
      v33 = (*(v32 + 40))(v31, v32);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 904));
      if ((v33 & 1) == 0)
      {
        v34 = *(v0 + 1616);
        v35 = *(v0 + 1600);
        v109(v34, v11, v35);
        sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0x6E776F646B636F6CLL, 0xED000065646F6D20);
        v112(v34, v35);
        v36 = sub_274116EB0();
        sub_2740F21F4();
        swift_allocError();
        *v29 = v36;
        *(v29 + 8) = v110;
        *(v29 + 16) = v108;
        *(v29 + 24) = 0;
        *(v29 + 32) = 0;
        *(v29 + 40) = 0;
        v30 = 3;
LABEL_26:
        *(v29 + 48) = v30;
        swift_willThrow();

        goto LABEL_27;
      }
    }

    else
    {
      sub_27409D420(v0 + 904, &qword_280937FB8, &unk_2741D0410);
    }
  }

  if (sub_2740F06B8())
  {
    v37 = *(v0 + 1616);
    v38 = *(v0 + 1600);
    v109(v37, v11, v38);
    sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000035, 0x80000002741DB4A0);
    v112(v37, v38);
    sub_2740F21F4();
    swift_allocError();
    *v29 = v110;
    *(v29 + 8) = v108;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    v30 = 6;
    goto LABEL_26;
  }

  v41 = *(v0 + 1528);
  *(v0 + 888) = &type metadata for ScannedNetwork;
  *(v0 + 896) = sub_2740F2248();
  v42 = swift_allocObject();
  *(v0 + 864) = v42;
  v43 = v17;
  sub_27409D85C(v43, v42 + 16);
  swift_beginAccess();
  sub_2740A6D94(v41 + 48, v0 + 784, &qword_2809395D8, &qword_2741CFF78);
  swift_beginAccess();
  sub_2740F22E4(v0 + 864, v41 + 48);
  swift_endAccess();
  sub_274158900(v0 + 784);
  sub_27409D420(v0 + 784, &qword_2809395D8, &qword_2741CFF78);
  sub_27409D420(v0 + 864, &qword_2809395D8, &qword_2741CFF78);
  v44 = v43;
  sub_27409D85C(v44, v0 + 80);
  v45 = [*(v41 + 16) knownNetworkProfileMatchingScanResult_];
  *(v0 + 1696) = v45;
  if (!v45)
  {
    v52 = *(v0 + 1520);
    [*(v0 + 1688) setScanResult_];
    v53 = [objc_allocWithZone(WFAssociationParameters) init];
    *(v0 + 1744) = v53;
    sub_2740A6D94(v52, v0 + 824, &qword_280937FB8, &unk_2741D0410);
    v54 = *(v0 + 848);
    if (v54)
    {
      v55 = *(v0 + 856);
      __swift_project_boxed_opaque_existential_1((v0 + 824), *(v0 + 848));
      v56 = (*(v55 + 96))(v54, v55);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 824));
      if (v56 == 2)
      {
        [v53 setJoinedUsingWiFiPasswordSharing_];
      }
    }

    else
    {
      sub_27409D420(v0 + 824, &qword_280937FB8, &unk_2741D0410);
    }

    if (![*(v0 + 1680) isEAP])
    {
      goto LABEL_68;
    }

    v73 = *(v0 + 1520);
    v74 = [objc_allocWithZone(WFEnterpriseAssociationParameters) init];
    sub_2740A6D94(v73, v0 + 1104, &qword_280937FB8, &unk_2741D0410);
    v75 = *(v0 + 1128);
    if (v75)
    {
      v76 = *(v0 + 1136);
      __swift_project_boxed_opaque_existential_1((v0 + 1104), *(v0 + 1128));
      (*(v76 + 16))(v75, v76);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1104));
      v77 = sub_2741C7E3C();
    }

    else
    {
      sub_27409D420(v0 + 1104, &qword_280937FB8, &unk_2741D0410);
      v77 = 0;
    }

    v78 = *(v0 + 1520);
    [v74 setUsername_];

    sub_2740A6D94(v78, v0 + 1024, &qword_280937FB8, &unk_2741D0410);
    v79 = *(v0 + 1048);
    if (v79)
    {
      v80 = *(v0 + 1056);
      __swift_project_boxed_opaque_existential_1((v0 + 1024), *(v0 + 1048));
      (*(v80 + 24))(v79, v80);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1024));
      v81 = sub_2741C7E3C();
    }

    else
    {
      sub_27409D420(v0 + 1024, &qword_280937FB8, &unk_2741D0410);
      v81 = 0;
    }

    v82 = *(v0 + 1520);
    [v74 setPassword_];

    sub_2740A6D94(v82, v0 + 984, &qword_280937FB8, &unk_2741D0410);
    v83 = *(v0 + 1008);
    if (v83)
    {
      v84 = *(v0 + 1016);
      __swift_project_boxed_opaque_existential_1((v0 + 984), *(v0 + 1008));
      v85 = (*(v84 + 48))(v83, v84);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 984));
      if (v85)
      {
        v86 = sub_2741C7FCC();

        goto LABEL_62;
      }
    }

    else
    {
      sub_27409D420(v0 + 984, &qword_280937FB8, &unk_2741D0410);
    }

    v86 = 0;
LABEL_62:
    v87 = *(v0 + 1520);
    [v74 setCertificateChain_];

    sub_2740A6D94(v87, v0 + 944, &qword_280937FB8, &unk_2741D0410);
    v88 = *(v0 + 968);
    v89 = *(v0 + 1552);
    v90 = *(v0 + 1544);
    v91 = *(v0 + 1536);
    if (v88)
    {
      v92 = *(v0 + 976);
      __swift_project_boxed_opaque_existential_1((v0 + 944), *(v0 + 968));
      (*(v92 + 72))(v88, v92);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 944));
      if ((*(v89 + 48))(v91, 1, v90) != 1)
      {
        v93 = *(v0 + 1560);
        sub_2740F23D4(*(v0 + 1536), v93);
        v94 = v74;
        [v74 setTLSIdentity_];
        sub_2740F2438(v93, type metadata accessor for EnterpriseIdentity);
LABEL_67:
        v113 = *(v0 + 1664);
        v95 = *(v0 + 1648);
        v96 = *(v0 + 1640);
        v97 = *(v0 + 1616);
        v98 = *(v0 + 1600);
        [v53 setEnterpriseParameters_];
        sub_2741C856C();

        v99 = [v94 description];
        v100 = sub_2741C7E7C();
        v101 = v53;
        v103 = v102;

        MEMORY[0x2743E5FB0](v100, v103);
        v53 = v101;
        v0 = v115;

        v95(v97, v96, v98);
        sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0x6D61726150706165, 0xEF203A7372657465);

        v113(v97, v98);
LABEL_68:
        v104 = *(v0 + 1528);
        [*(v0 + 1688) appendAdditionalParameters_];
        v105 = [*(v104 + 16) currentScanResult];
        if (v105)
        {
          sub_27409D85C(v105, v0 + 496);
        }

        else
        {
          *(v0 + 592) = 0;
          *(v0 + 560) = 0u;
          *(v0 + 576) = 0u;
          *(v0 + 528) = 0u;
          *(v0 + 544) = 0u;
          *(v0 + 496) = 0u;
          *(v0 + 512) = 0u;
        }

        v106 = swift_task_alloc();
        *(v0 + 1752) = v106;
        *v106 = v0;
        v106[1] = sub_2740ED964;
        v107 = *(v0 + 1504);

        return sub_2740EF7E0(v107);
      }
    }

    else
    {
      sub_27409D420(v0 + 944, &qword_280937FB8, &unk_2741D0410);
      (*(v89 + 56))(v91, 1, 1, v90);
    }

    v94 = v74;
    sub_27409D420(*(v0 + 1536), &qword_280937DA0, &qword_2741CB190);
    goto LABEL_67;
  }

  v46 = v45;
  [v18 setKnownNetworkProfile_];
  v47 = [objc_opt_self() currentCarPlayExternalDevice];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 transportType];

    v50 = [v46 isCarPlay];
    if (v49 == 3 && (v50 & 1) == 0)
    {
      sub_2740F21F4();
      swift_allocError();
      *v51 = v110;
      *(v51 + 8) = v108;
      *(v51 + 16) = 0u;
      *(v51 + 32) = 0u;
      *(v51 + 48) = 5;
      swift_willThrow();

LABEL_48:
      sub_2740ACB2C(v0 + 80);
      goto LABEL_27;
    }
  }

  else
  {
    [v46 isCarPlay];
  }

  if (sub_2740D3E48() == 1)
  {
    v57 = *(v0 + 1616);
    v58 = *(v0 + 1600);
    v109(v57, v11, v58);
    sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000023, 0x80000002741DB470);
    v112(v57, v58);
    v59 = sub_2741C804C();
    v60 = sub_2741C7E3C();
    [v44 setOSSpecificValue:v59 forKey:v60];
  }

  v61 = *(v0 + 128);
  if (([v44 isPersonalHotspot] & 1) == 0 && (objc_msgSend(v46, sel_supportedSecurityTypes) & 0x40) != 0 && v61 == 80)
  {
    v64 = *(v0 + 1616);
    v65 = *(v0 + 1600);
    sub_2741C856C();

    MEMORY[0x2743E5FB0](v110, v108);
    v109(v64, v11, v65);
    sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000018, 0x80000002741DB450);

    v112(v64, v65);

    v66 = sub_2740EAF84([v46 strongestSupportedSecurityType]);
    v68 = v67;

    v69 = sub_2740EAF84(80);
    v71 = v70;
    sub_2740F21F4();
    swift_allocError();
    *v72 = v110;
    *(v72 + 8) = v108;
    *(v72 + 16) = v66;
    *(v72 + 24) = v68;
    *(v72 + 32) = v69;
    *(v72 + 40) = v71;
    *(v72 + 48) = 7;
    swift_willThrow();

    goto LABEL_48;
  }

  sub_274117670(v46, *(v0 + 1592));
  *(v0 + 1704) = sub_2741C80AC();
  *(v0 + 1712) = sub_2741C809C();
  v63 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740ECFB4, v63, v62);
}

uint64_t sub_2740ECFB4()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2740ED04C, 0, 0);
}

uint64_t sub_2740ED04C(uint64_t a1)
{
  *(v1 + 1720) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740ED0D8, v3, v2);
}

uint64_t sub_2740ED0D8()
{

  *(v0 + 1728) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740ED154, 0, 0);
}

uint64_t sub_2740ED154()
{
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[196];
  sub_27409CF58(v0[199], v3);
  (*(v1 + 56))(v3, 0, 1, v2);
  v0[217] = sub_2741C809C();
  v5 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740ED220, v5, v4);
}

uint64_t sub_2740ED220()
{
  v1 = *(v0 + 1568);

  sub_2741B8B0C(v1);

  sub_27409D420(v1, &qword_280938570, &qword_2741D1630);

  return MEMORY[0x2822009F8](sub_2740ED2B8, 0, 0);
}

uint64_t sub_2740ED2B8()
{
  v1 = *(v0 + 1592);

  sub_2740F2438(v1, type metadata accessor for KnownNetwork);
  v2 = *(v0 + 1520);
  [*(v0 + 1688) setScanResult_];
  v3 = [objc_allocWithZone(WFAssociationParameters) init];
  *(v0 + 1744) = v3;
  sub_2740A6D94(v2, v0 + 824, &qword_280937FB8, &unk_2741D0410);
  v4 = *(v0 + 848);
  if (v4)
  {
    v5 = *(v0 + 856);
    __swift_project_boxed_opaque_existential_1((v0 + 824), *(v0 + 848));
    v6 = (*(v5 + 96))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 824));
    if (v6 == 2)
    {
      [v3 setJoinedUsingWiFiPasswordSharing_];
    }
  }

  else
  {
    sub_27409D420(v0 + 824, &qword_280937FB8, &unk_2741D0410);
  }

  if ([*(v0 + 1680) isEAP])
  {
    v7 = *(v0 + 1520);
    v8 = [objc_allocWithZone(WFEnterpriseAssociationParameters) init];
    sub_2740A6D94(v7, v0 + 1104, &qword_280937FB8, &unk_2741D0410);
    v9 = *(v0 + 1128);
    if (v9)
    {
      v10 = *(v0 + 1136);
      __swift_project_boxed_opaque_existential_1((v0 + 1104), *(v0 + 1128));
      (*(v10 + 16))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1104));
      v11 = sub_2741C7E3C();
    }

    else
    {
      sub_27409D420(v0 + 1104, &qword_280937FB8, &unk_2741D0410);
      v11 = 0;
    }

    v12 = *(v0 + 1520);
    [v8 setUsername_];

    sub_2740A6D94(v12, v0 + 1024, &qword_280937FB8, &unk_2741D0410);
    v13 = *(v0 + 1048);
    if (v13)
    {
      v14 = *(v0 + 1056);
      __swift_project_boxed_opaque_existential_1((v0 + 1024), *(v0 + 1048));
      (*(v14 + 24))(v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1024));
      v15 = sub_2741C7E3C();
    }

    else
    {
      sub_27409D420(v0 + 1024, &qword_280937FB8, &unk_2741D0410);
      v15 = 0;
    }

    v16 = *(v0 + 1520);
    [v8 setPassword_];

    sub_2740A6D94(v16, v0 + 984, &qword_280937FB8, &unk_2741D0410);
    v17 = *(v0 + 1008);
    if (v17)
    {
      v18 = *(v0 + 1016);
      __swift_project_boxed_opaque_existential_1((v0 + 984), *(v0 + 1008));
      v19 = (*(v18 + 48))(v17, v18);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 984));
      if (v19)
      {
        v20 = sub_2741C7FCC();

        goto LABEL_17;
      }
    }

    else
    {
      sub_27409D420(v0 + 984, &qword_280937FB8, &unk_2741D0410);
    }

    v20 = 0;
LABEL_17:
    v21 = *(v0 + 1520);
    [v8 setCertificateChain_];

    sub_2740A6D94(v21, v0 + 944, &qword_280937FB8, &unk_2741D0410);
    v22 = *(v0 + 968);
    v23 = *(v0 + 1552);
    v24 = *(v0 + 1544);
    v25 = *(v0 + 1536);
    if (v22)
    {
      v26 = *(v0 + 976);
      __swift_project_boxed_opaque_existential_1((v0 + 944), *(v0 + 968));
      (*(v26 + 72))(v22, v26);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 944));
      if ((*(v23 + 48))(v25, 1, v24) != 1)
      {
        v27 = *(v0 + 1560);
        sub_2740F23D4(*(v0 + 1536), v27);
        v28 = v8;
        [v8 setTLSIdentity_];
        sub_2740F2438(v27, type metadata accessor for EnterpriseIdentity);
LABEL_22:
        v43 = *(v0 + 1664);
        v29 = *(v0 + 1648);
        v30 = *(v0 + 1640);
        v31 = *(v0 + 1616);
        v32 = *(v0 + 1600);
        [v3 setEnterpriseParameters_];
        sub_2741C856C();

        v33 = [v28 description];
        v34 = sub_2741C7E7C();
        v35 = v3;
        v37 = v36;

        MEMORY[0x2743E5FB0](v34, v37);
        v3 = v35;

        v29(v31, v30, v32);
        sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0x6D61726150706165, 0xEF203A7372657465);

        v43(v31, v32);
        goto LABEL_23;
      }
    }

    else
    {
      sub_27409D420(v0 + 944, &qword_280937FB8, &unk_2741D0410);
      (*(v23 + 56))(v25, 1, 1, v24);
    }

    v28 = v8;
    sub_27409D420(*(v0 + 1536), &qword_280937DA0, &qword_2741CB190);
    goto LABEL_22;
  }

LABEL_23:
  v38 = *(v0 + 1528);
  [*(v0 + 1688) appendAdditionalParameters_];
  v39 = [*(v38 + 16) currentScanResult];
  if (v39)
  {
    sub_27409D85C(v39, v0 + 496);
  }

  else
  {
    *(v0 + 592) = 0;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
  }

  v40 = swift_task_alloc();
  *(v0 + 1752) = v40;
  *v40 = v0;
  v40[1] = sub_2740ED964;
  v41 = *(v0 + 1504);

  return sub_2740EF7E0(v41);
}

uint64_t sub_2740ED964()
{
  v1 = *v0;

  sub_27409D420(v1 + 496, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_2740EDA78, 0, 0);
}

uint64_t sub_2740EDA78()
{
  v1 = v0[211];
  v2 = *(v0[191] + 16);
  v0[220] = v2;
  v0[2] = v0;
  v0[3] = sub_2740EDBA8;
  v3 = swift_continuation_init();
  v0[82] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809395E0, &qword_2741CFF88);
  v0[79] = v3;
  v0[75] = MEMORY[0x277D85DD0];
  v0[76] = 1107296256;
  v0[77] = sub_2740F0280;
  v0[78] = &block_descriptor_6;
  [v2 associateWithParameters:v1 reply:v0 + 75];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2740EDBA8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1768) = v1;
  if (v1)
  {
    v2 = sub_2740EE07C;
  }

  else
  {
    v2 = sub_2740EDCB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2740EDCB8()
{
  v10 = *(v0 + 1664);
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1616);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1504);

  sub_2741C856C();

  MEMORY[0x2743E5FB0](v4, v3);
  v1(v5, v2, v6);
  MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
  MEMORY[0x2743E5FB0](45, 0xE100000000000000);
  MEMORY[0x2743E5FB0](93, 0xE100000000000000);
  sub_2740CA9CC(91, 0xE100000000000000, 0xD000000000000019, 0x80000002741DB430);

  v10(v5, v6);
  sub_2740ACAC8(v7, v0 + 184);
  v8 = swift_task_alloc();
  *(v0 + 1776) = v8;
  *v8 = v0;
  v8[1] = sub_2740EDE98;

  return sub_2740F0DB4(v0 + 184);
}

uint64_t sub_2740EDE98()
{
  v1 = *v0;

  sub_27409D420(v1 + 184, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_2740EDFAC, 0, 0);
}

uint64_t sub_2740EDFAC()
{
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1680);

  sub_2740ACB2C(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2740EE07C()
{
  v1 = *(v0 + 1768);
  v2 = *(v0 + 1760);
  v41 = *(v0 + 1664);
  v3 = *(v0 + 1648);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1632);
  v6 = *(v0 + 1624);
  v7 = *(v0 + 1616);
  v8 = *(v0 + 1600);
  swift_willThrow();

  swift_getErrorValue();
  v40 = sub_2741C878C();
  sub_2741C856C();
  *(v0 + 1448) = 0;
  *(v0 + 1456) = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000016, 0x80000002741DB390);
  MEMORY[0x2743E5FB0](v6, v5);
  MEMORY[0x2743E5FB0](0x273D726F72726520, 0xE800000000000000);
  *(v0 + 1488) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  v9 = *(v0 + 1448);
  v10 = *(v0 + 1456);
  v3(v7, v4, v8);
  MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
  MEMORY[0x2743E5FB0](45, 0xE100000000000000);
  MEMORY[0x2743E5FB0](93, 0xE100000000000000);
  sub_2740CA9CC(91, 0xE100000000000000, v9, v10);

  v41(v7, v8);
  swift_getErrorValue();
  if (sub_27410FD70(*(v0 + 1360), *(v0 + 1368)))
  {
    swift_getErrorValue();
    v11 = sub_27410FDCC(*(v0 + 1336), *(v0 + 1344));
    v12 = *(v0 + 1664);
    v13 = *(v0 + 1648);
    v14 = *(v0 + 1640);
    v15 = *(v0 + 1616);
    v16 = *(v0 + 1600);
    if (v11 == 3)
    {
      v17 = sub_2741C680C();
      *(v0 + 1784) = v17;
      v18 = [v17 userInfo];
      v19 = sub_2741C7D6C();

      v20 = sub_274111150(v19);
      v22 = v21;
      *(v0 + 1792) = v20;
      *(v0 + 180) = v21;
      sub_2741C856C();

      v23 = sub_27410FE34(v20, v22);
      MEMORY[0x2743E5FB0](v23);

      MEMORY[0x2743E5FB0](39, 0xE100000000000000);
      v13(v15, v14, v16);
      sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000015, 0x80000002741DB410);

      v12(v15, v16);
      *(v0 + 1800) = sub_2741C80AC();
      *(v0 + 1808) = sub_2741C809C();
      v24 = sub_2741C805C();
      v26 = v25;
      v27 = sub_2740EE76C;
LABEL_12:

      return MEMORY[0x2822009F8](v27, v24, v26);
    }

    v13(*(v0 + 1616), *(v0 + 1640), *(v0 + 1600));
    sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000016, 0x80000002741DB3F0);
    v12(v15, v16);
    *(v0 + 384) = 0;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    v32 = swift_task_alloc();
    *(v0 + 1840) = v32;
    *v32 = v0;
    v32[1] = sub_2740EEB8C;
    v33 = v0 + 288;
  }

  else
  {
    if (v40 > -3901)
    {
      if (v40 == -3900 || v40 == -100)
      {
        v34 = *(v0 + 1664);
        v35 = *(v0 + 1616);
        v36 = *(v0 + 1600);
        (*(v0 + 1648))(v35, *(v0 + 1640), v36);
        sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000011, 0x80000002741DB3B0);
        v34(v35, v36);
        *(v0 + 1888) = sub_2741C80AC();
        *(v0 + 1896) = sub_2741C809C();
        v24 = sub_2741C805C();
        v26 = v37;
        v27 = sub_2740EF1B0;
        goto LABEL_12;
      }
    }

    else if ((v40 + 3925) < 2 || v40 == -3912)
    {
      v28 = *(v0 + 1664);
      v29 = *(v0 + 1616);
      v30 = *(v0 + 1600);
      (*(v0 + 1648))(v29, *(v0 + 1640), v30);
      sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000012, 0x80000002741DB3D0);
      v28(v29, v30);
      *(v0 + 1848) = sub_2741C80AC();
      *(v0 + 1856) = sub_2741C809C();
      v24 = sub_2741C805C();
      v26 = v31;
      v27 = sub_2740EEDC0;
      goto LABEL_12;
    }

    *(v0 + 488) = 0;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    v38 = swift_task_alloc();
    *(v0 + 1928) = v38;
    *v38 = v0;
    v38[1] = sub_2740EF5A4;
    v33 = v0 + 392;
  }

  return sub_2740F0DB4(v33);
}

uint64_t sub_2740EE76C()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2740EE804, 0, 0);
}

uint64_t sub_2740EE804(uint64_t a1)
{
  *(v1 + 1816) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EE890, v3, v2);
}

uint64_t sub_2740EE890()
{

  *(v0 + 1824) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740EE90C, 0, 0);
}

uint64_t sub_2740EE90C(uint64_t a1)
{
  *(v1 + 1184) = 0u;
  *(v1 + 1200) = 0u;
  *(v1 + 1216) = 0;
  *(v1 + 1832) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EE9A8, v3, v2);
}

uint64_t sub_2740EE9A8()
{

  sub_2741B9F04(3, v0 + 1184);

  sub_27409D420(v0 + 1184, &qword_2809395D8, &qword_2741CFF78);

  return MEMORY[0x2822009F8](sub_2740EEA40, 0, 0);
}

uint64_t sub_2740EEA40()
{
  v1 = *(v0 + 180);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1784);
  v4 = *(v0 + 1768);
  v5 = *(v0 + 1744);
  v6 = *(v0 + 1688);
  v11 = *(v0 + 1680);
  v7 = *(v0 + 1520);
  sub_2740F2380();
  swift_allocError();
  *v8 = v2;
  *(v8 + 8) = v1;
  sub_2740A6D94(v7, v8 + 16, &qword_280937FB8, &unk_2741D0410);
  swift_willThrow();

  sub_2740ACB2C(v0 + 80);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2740EEB8C()
{
  v1 = *v0;

  sub_27409D420(v1 + 288, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_2740EECA0, 0, 0);
}

uint64_t sub_2740EECA0(uint64_t a1)
{
  v2 = v1[221];
  v3 = v1[218];
  v4 = v1[211];
  v5 = v1[210];
  v6 = v1[204];
  v7 = v1[203];
  sub_2740F21F4();
  swift_allocError();
  *v8 = v7;
  *(v8 + 8) = v6;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 4;
  swift_willThrow();

  sub_2740ACB2C((v1 + 10));

  v9 = v1[1];

  return v9();
}

uint64_t sub_2740EEDC0()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2740EEE58, 0, 0);
}

uint64_t sub_2740EEE58(uint64_t a1)
{
  *(v1 + 1864) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EEEE4, v3, v2);
}

uint64_t sub_2740EEEE4()
{

  *(v0 + 1872) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740EEF60, 0, 0);
}

uint64_t sub_2740EEF60(uint64_t a1)
{
  *(v1 + 704) = 0u;
  *(v1 + 720) = 0u;
  *(v1 + 736) = 0;
  *(v1 + 1880) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EEFF8, v3, v2);
}

uint64_t sub_2740EEFF8()
{

  sub_2741B9F04(3, v0 + 704);

  sub_27409D420(v0 + 704, &qword_2809395D8, &qword_2741CFF78);

  return MEMORY[0x2822009F8](sub_2740EF090, 0, 0);
}

uint64_t sub_2740EF090(uint64_t a1)
{
  v2 = v1[221];
  v3 = v1[218];
  v4 = v1[211];
  v5 = v1[210];
  v6 = v1[204];
  v7 = v1[203];
  sub_2740F21F4();
  swift_allocError();
  *v8 = v7;
  *(v8 + 8) = v6;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 1;
  swift_willThrow();

  sub_2740ACB2C((v1 + 10));

  v9 = v1[1];

  return v9();
}

uint64_t sub_2740EF1B0()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2740EF248, 0, 0);
}

uint64_t sub_2740EF248(uint64_t a1)
{
  *(v1 + 1904) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EF2D4, v3, v2);
}

uint64_t sub_2740EF2D4()
{

  *(v0 + 1912) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740EF350, 0, 0);
}

uint64_t sub_2740EF350(uint64_t a1)
{
  *(v1 + 1264) = 0u;
  *(v1 + 1280) = 0u;
  *(v1 + 1296) = 0;
  *(v1 + 1920) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EF3EC, v3, v2);
}

uint64_t sub_2740EF3EC()
{

  sub_2741B9F04(3, v0 + 1264);

  sub_27409D420(v0 + 1264, &qword_2809395D8, &qword_2741CFF78);

  return MEMORY[0x2822009F8](sub_2740EF484, 0, 0);
}

uint64_t sub_2740EF484(uint64_t a1)
{
  v2 = v1[221];
  v3 = v1[218];
  v4 = v1[211];
  v5 = v1[210];
  v6 = v1[204];
  v7 = v1[203];
  sub_2740F21F4();
  swift_allocError();
  *v8 = v7;
  *(v8 + 8) = v6;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 2;
  swift_willThrow();

  sub_2740ACB2C((v1 + 10));

  v9 = v1[1];

  return v9();
}

uint64_t sub_2740EF5A4()
{
  v1 = *v0;

  sub_27409D420(v1 + 392, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_2740EF6B8, 0, 0);
}

uint64_t sub_2740EF6B8(uint64_t a1)
{
  v2 = v1[221];
  v3 = v1[218];
  v4 = v1[211];
  v5 = v1[210];
  v6 = v1[204];
  v7 = v1[203];
  sub_2740F21F4();
  swift_allocError();
  *v8 = v7;
  *(v8 + 8) = v6;
  *(v8 + 16) = v2;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 11;
  swift_willThrow();

  v9 = v2;

  sub_2740ACB2C((v1 + 10));

  v10 = v1[1];

  return v10();
}

uint64_t sub_2740EF7E0(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return MEMORY[0x2822009F8](sub_2740EF800, 0, 0);
}

uint64_t sub_2740EF800()
{
  *(v0 + 240) = sub_2741C80AC();
  *(v0 + 248) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EF898, v2, v1);
}

uint64_t sub_2740EF898()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2740EF930, 0, 0);
}

uint64_t sub_2740EF930(uint64_t a1)
{
  *(v1 + 256) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EF9BC, v3, v2);
}

uint64_t sub_2740EF9BC()
{

  *(v0 + 264) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740EFA38, 0, 0);
}

uint64_t sub_2740EFA38(uint64_t a1)
{
  *(v1 + 272) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EFAC4, v3, v2);
}

uint64_t sub_2740EFAC4()
{

  sub_2741B8FB8(8);

  return MEMORY[0x2822009F8](sub_2740EFB3C, 0, 0);
}

uint64_t sub_2740EFB3C(uint64_t a1)
{
  *(v1 + 280) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EFBC8, v3, v2);
}

uint64_t sub_2740EFBC8()
{

  return MEMORY[0x2822009F8](sub_2740EFC30, 0, 0);
}

uint64_t sub_2740EFC30(uint64_t a1)
{
  *(v1 + 288) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EFCBC, v3, v2);
}

uint64_t sub_2740EFCBC()
{

  *(v0 + 296) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740EFD38, 0, 0);
}

uint64_t sub_2740EFD38()
{
  v1 = *(v0 + 232);
  sub_2740ACAC8(*(v0 + 224), v0 + 16);
  v2 = [*(v1 + 16) currentScanResult];
  if (v2)
  {
    sub_27409D85C(v2, v0 + 120);
  }

  else
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
  }

  *(v0 + 304) = sub_2741C809C();
  v4 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EFE18, v4, v3);
}

uint64_t sub_2740EFE18()
{

  sub_2741B9380(v0 + 16, v0 + 120);

  sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_2740EFEC4, 0, 0);
}

uint64_t sub_2740EFEC4(uint64_t a1)
{
  *(v1 + 312) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740EFF50, v3, v2);
}

uint64_t sub_2740EFF50()
{

  return MEMORY[0x2822009F8](sub_2740EFFB8, 0, 0);
}

uint64_t sub_2740EFFB8(uint64_t a1)
{
  *(v1 + 320) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F0044, v3, v2);
}

uint64_t sub_2740F0044()
{

  *(v0 + 328) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740F00C0, 0, 0);
}

uint64_t sub_2740F00C0()
{
  v1 = v0[28];
  v0[5] = &type metadata for ScannedNetwork;
  v0[6] = sub_2740F2248();
  v2 = swift_allocObject();
  v0[2] = v2;
  sub_2740ACAC8(v1, v2 + 16);
  v0[42] = sub_2741C809C();
  v4 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F0188, v4, v3);
}

uint64_t sub_2740F0188()
{

  sub_2741B9F04(1, v0 + 16);

  sub_27409D420(v0 + 16, &qword_2809395D8, &qword_2741CFF78);

  return MEMORY[0x2822009F8](sub_2740F021C, 0, 0);
}

uint64_t sub_2740F021C()
{
  sub_274160514(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2740F0280(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2740F032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;

  return MEMORY[0x2822009F8](sub_2740F03BC, 0, 0);
}

uint64_t sub_2740F03BC()
{
  v1 = v0[15];
  v2 = *(v0[14] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938980, &qword_2741CCB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CCB60;
  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  v4 = v2;
  *(inited + 32) = sub_2741C834C();
  sub_2740C28B0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_2740F2498();
  v5 = sub_2741C81DC();

  v0[12] = 0;
  LODWORD(v1) = [v4 updateKnownNetworkProfile:v1 properties:v5 error:v0 + 12];

  v6 = v0[12];
  if (v1)
  {
    v7 = v6;
  }

  else
  {
    v8 = v0[15];
    v9 = v6;
    v10 = sub_2741C681C();

    swift_willThrow();
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000045, 0x80000002741DB540);
    v11 = [v8 networkName];
    if (v11)
    {
      v12 = v11;
      v13 = sub_2741C7E7C();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v0[10] = v13;
    v0[11] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938580, &qword_2741CD4E0);
    v16 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v16);

    MEMORY[0x2743E5FB0](0x3A726F727265202CLL, 0xE900000000000020);
    swift_getErrorValue();
    v17 = sub_2741C877C();
    MEMORY[0x2743E5FB0](v17);

    sub_2740CB218(0, 0xE000000000000000, 0xD000000000000036, 0x80000002741DB590);
  }

  v18 = v0[1];

  return v18();
}

char *sub_2740F06B8()
{
  v0 = sub_2741C7E3C();
  v1 = sub_2741C7E3C();
  v2 = SCDynamicStoreCreate(0, v1, 0, 0);
  v3 = SCDynamicStoreCopyValue(v2, v0);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3;
  if (([v3 respondsToSelector_] & 1) == 0)
  {
    v24 = 0uLL;
    *&v25 = 0;
    *(&v25 + 1) = 1;
    goto LABEL_7;
  }

  v5 = sub_2741C7E3C();
  v6 = [v4 objectForKeyedSubscript_];

  if (!v6)
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_9;
  }

  sub_2741C83DC();
  swift_unknownObjectRelease();
  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1) == 1)
  {
LABEL_7:
    swift_unknownObjectRelease();

    v7 = &unk_2809395F0;
    v8 = &unk_2741CFF98;
    v9 = &v24;
LABEL_46:
    sub_27409D420(v9, v7, v8);
    return 0;
  }

LABEL_9:
  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    swift_unknownObjectRelease();

LABEL_45:
    v7 = &qword_280937E28;
    v8 = &unk_2741CB3D0;
    v9 = &v26;
    goto LABEL_46;
  }

  sub_2740BA268(0, &qword_2809395F8, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_15:

    return 0;
  }

  *&v24 = 1701869908;
  *(&v24 + 1) = 0xE400000000000000;
  v10 = [v22 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_2741C83DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    swift_unknownObjectRelease();

    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  *&v24 = 0x74726F50726941;
  *(&v24 + 1) = 0xE700000000000000;
  v11 = [v22 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_2741C83DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    swift_unknownObjectRelease();

    goto LABEL_45;
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  *&v24 = 0x4E414E2D69666957;
  *(&v24 + 1) = 0xE800000000000000;
  v12 = [v22 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_2741C83DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    swift_unknownObjectRelease();

    v14 = v22;
LABEL_44:

    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();

    v15 = v22;
LABEL_50:

    return 0;
  }

  *&v24 = 0x746F6F7465756C42;
  *(&v24 + 1) = 0xE900000000000068;
  v13 = [v22 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_2741C83DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    swift_unknownObjectRelease();

    v14 = v22;
    goto LABEL_44;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();

    v15 = v22;
    goto LABEL_50;
  }

  v16 = [v22 integerValue];
  result = [v22 integerValue];
  v18 = __OFADD__(v16, result);
  v19 = &result[v16];
  if (v18)
  {
    __break(1u);
  }

  else
  {
    result = [v22 integerValue];
    v20 = &result[v19];
    if (!__OFADD__(v19, result))
    {
      sub_2741C856C();

      *&v24 = v20;
      v21 = sub_2741C86CC();
      MEMORY[0x2743E5FB0](v21);

      sub_2740CB460(0xD000000000000014, 0x80000002741DB520);

      swift_unknownObjectRelease();

      return (v20 != 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2740F0DD4()
{
  *(v0 + 168) = sub_2741C80AC();
  *(v0 + 176) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F0E6C, v2, v1);
}

uint64_t sub_2740F0E6C()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2740F0F04, 0, 0);
}

uint64_t sub_2740F0F04(uint64_t a1)
{
  *(v1 + 184) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F0F90, v3, v2);
}

uint64_t sub_2740F0F90()
{

  *(v0 + 192) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740F100C, 0, 0);
}

uint64_t sub_2740F100C(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v1 + 200) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F10A4, v3, v2);
}

uint64_t sub_2740F10A4()
{

  sub_2741B9F04(0, v0 + 16);

  sub_27409D420(v0 + 16, &qword_2809395D8, &qword_2741CFF78);

  return MEMORY[0x2822009F8](sub_2740F1138, 0, 0);
}

uint64_t sub_2740F1138()
{
  sub_274160514(1, 1);
  *(v0 + 208) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F11D0, v2, v1);
}

uint64_t sub_2740F11D0()
{

  return MEMORY[0x2822009F8](sub_2740F1238, 0, 0);
}

uint64_t sub_2740F1238(uint64_t a1)
{
  *(v1 + 216) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F12C4, v3, v2);
}

uint64_t sub_2740F12C4()
{

  *(v0 + 224) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740F1340, 0, 0);
}

uint64_t sub_2740F1340(uint64_t a1)
{
  *(v1 + 232) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F13CC, v3, v2);
}

uint64_t sub_2740F13CC()
{

  sub_2741B8FB8(32);

  return MEMORY[0x2822009F8](sub_2740F1444, 0, 0);
}

uint64_t sub_2740F1444(uint64_t a1)
{
  if (*(v1[20] + 8))
  {
    v1[30] = sub_2741C809C();
    v3 = sub_2741C805C();

    return MEMORY[0x2822009F8](sub_2740F150C, v3, v2);
  }

  else
  {
    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_2740F150C()
{

  return MEMORY[0x2822009F8](sub_2740F1574, 0, 0);
}

uint64_t sub_2740F1574(uint64_t a1)
{
  *(v1 + 248) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F1600, v3, v2);
}

uint64_t sub_2740F1600()
{

  *(v0 + 256) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2740F167C, 0, 0);
}

uint64_t sub_2740F167C()
{
  sub_2740A6D94(*(v0 + 160), v0 + 16, &qword_280938340, &qword_2741D1660);
  if (*(v0 + 24))
  {
    v1 = sub_2740F2248();
    v2 = swift_allocObject();
    v3 = *(v0 + 96);
    *(v2 + 80) = *(v0 + 80);
    *(v2 + 96) = v3;
    *(v2 + 112) = *(v0 + 112);
    v4 = *(v0 + 32);
    *(v2 + 16) = *(v0 + 16);
    *(v2 + 32) = v4;
    v5 = *(v0 + 64);
    *(v2 + 48) = *(v0 + 48);
    *(v2 + 64) = v5;
    v6 = &type metadata for ScannedNetwork;
  }

  else
  {
    sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
    v2 = 0;
    v6 = 0;
    v1 = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
  }

  *(v0 + 120) = v2;
  *(v0 + 144) = v6;
  *(v0 + 152) = v1;
  *(v0 + 264) = sub_2741C809C();
  v8 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740F17A4, v8, v7);
}

uint64_t sub_2740F17A4()
{

  sub_2741B9F04(2, v0 + 120);

  sub_27409D420(v0 + 120, &qword_2809395D8, &qword_2741CFF78);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2740F1830(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_2741C6AFC();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2740F18F0, 0, 0);
}

uint64_t sub_2740F18F0()
{
  sub_2740A6D94(v0[20], (v0 + 15), &qword_280937FB8, &unk_2741D0410);
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[19];
    __swift_project_boxed_opaque_existential_1(v0 + 15, v0[18]);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    v0[25] = v3;
    v0[26] = v4;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
    sub_2741C856C();

    MEMORY[0x2743E5FB0](v3, v5);
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[22];
    v9 = __swift_project_value_buffer(v8, qword_280945DD8);
    v0[27] = v9;
    v10 = *(v7 + 16);
    v0[28] = v10;
    v0[29] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v8);
    MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
    MEMORY[0x2743E5FB0](42, 0xE100000000000000);
    MEMORY[0x2743E5FB0](93, 0xE100000000000000);
    sub_2740CA9CC(91, 0xE100000000000000, 0xD00000000000001CLL, 0x80000002741DB240);

    v11 = *(v7 + 8);
    v0[30] = v11;
    v0[31] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v8);
    v12 = swift_task_alloc();
    v0[32] = v12;
    *v12 = v0;
    v12[1] = sub_2740F1CCC;

    return sub_274187020(v3, v5, 0, 1);
  }

  else
  {
    sub_27409D420((v0 + 15), &qword_280937FB8, &unk_2741D0410);
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];
    v17 = __swift_project_value_buffer(v16, qword_280945DD8);
    (*(v15 + 16))(v14, v17, v16);
    sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0x206E616373206F6ELL, 0xEE00746C75736572);
    (*(v15 + 8))(v14, v16);
    sub_2740F21F4();
    swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0;
    *(v18 + 48) = 12;
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2740F1CCC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_2740F211C;
  }

  else
  {
    v4 = sub_2740F1DE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2740F1DE0()
{
  v1 = *(v0 + 264);
  if (v1)
  {

    sub_27409D85C(v1, v0 + 16);
    v2 = swift_task_alloc();
    *(v0 + 280) = v2;
    *v2 = v0;
    v2[1] = sub_2740F1F90;
    v3 = *(v0 + 160);

    return sub_2740EB8A4(v0 + 16, 1, 0, 1, v3);
  }

  else
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    v9 = *(v0 + 176);
    (*(v0 + 224))(v7, *(v0 + 216), v9);
    sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000016, 0x80000002741DB260);
    v5(v7, v9);
    sub_2740F21F4();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2740F1F90()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  sub_2740ACB2C(v2 + 16);
  if (v0)
  {
    v3 = sub_2740F2188;
  }

  else
  {
    v3 = sub_2740F20AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2740F20AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2740F211C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2740F2188()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2740F21F4()
{
  result = qword_2809395C8;
  if (!qword_2809395C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809395C8);
  }

  return result;
}

unint64_t sub_2740F2248()
{
  result = qword_2809395D0;
  if (!qword_2809395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809395D0);
  }

  return result;
}

uint64_t sub_2740F229C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2740F22E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809395D8, &qword_2741CFF78);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2740F2380()
{
  result = qword_2809395E8;
  if (!qword_2809395E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809395E8);
  }

  return result;
}

uint64_t sub_2740F23D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740F2438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2740F2498()
{
  result = qword_280939600;
  if (!qword_280939600)
  {
    sub_2740BA268(255, &qword_280938410, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939600);
  }

  return result;
}

uint64_t sub_2740F2500(uint64_t a1, unsigned __int8 a2)
{
  sub_2741C7F0C();
}

uint64_t sub_2740F25E8(uint64_t a1, unsigned __int8 a2)
{
  sub_2741C87DC();
  sub_2741C7F0C();

  return sub_2741C880C();
}

WiFiSettingsKit::HotspotNetworkType_optional __swiftcall HotspotNetworkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2741C869C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HotspotNetworkType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6976726553206F4ELL;
  v3 = 4543564;
  if (v1 != 6)
  {
    v3 = 18229;
  }

  v4 = 18227;
  if (v1 != 4)
  {
    v4 = 18228;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1397903431;
  if (v1 != 2)
  {
    v5 = 1162298437;
  }

  if (*v0)
  {
    v2 = 30769;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2740F2804()
{
  result = qword_280939608;
  if (!qword_280939608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939608);
  }

  return result;
}

void sub_2740F2880(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006563;
  v4 = 0x6976726553206F4ELL;
  v5 = 0xE300000000000000;
  v6 = 4543564;
  if (v2 != 6)
  {
    v6 = 18229;
    v5 = 0xE200000000000000;
  }

  v7 = 18227;
  if (v2 != 4)
  {
    v7 = 18228;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE200000000000000;
  }

  v8 = 1397903431;
  if (v2 != 2)
  {
    v8 = 1162298437;
  }

  if (*v1)
  {
    v4 = 30769;
    v3 = 0xE200000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2740F295C()
{
  result = qword_280939610;
  if (!qword_280939610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939610);
  }

  return result;
}

uint64_t sub_2740F2A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C758C();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939618, &qword_2741D01E0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939620, &qword_2741D01E8) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  LODWORD(a1) = sub_2741C737C();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939628, &qword_2741D01F0) + 36)) = a1;
  v8 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939630, &qword_2741D0228);
  v10 = a2 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_2740F2B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2741C700C();
  *a1 = result;
  return result;
}

uint64_t sub_2740F2B30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2741C700C();
  *a1 = result;
  return result;
}

unint64_t sub_2740F2BC0()
{
  result = qword_280939638;
  if (!qword_280939638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939630, &qword_2741D0228);
    sub_2740F2C78();
    sub_2740A6D24(&qword_280939668, &qword_280939670, &qword_2741D2C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939638);
  }

  return result;
}

unint64_t sub_2740F2C78()
{
  result = qword_280939640;
  if (!qword_280939640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939628, &qword_2741D01F0);
    sub_2740F2D30();
    sub_2740A6D24(&qword_280939308, &qword_280939310, &qword_2741D4C90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939640);
  }

  return result;
}

unint64_t sub_2740F2D30()
{
  result = qword_280939648;
  if (!qword_280939648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939620, &qword_2741D01E8);
    sub_2740A6D24(&qword_280939650, &qword_280939618, &qword_2741D01E0, MEMORY[0x277CE04B0]);
    sub_2740A6D24(&qword_280939658, &qword_280939660, &qword_2741D3DE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939648);
  }

  return result;
}

uint64_t sub_2740F2E14()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = (v0 + 16);
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  v2 = [*(qword_280946F10 + 16) networkWarningFlags];
  v3 = 0x20u;
  while (1)
  {
    v5 = *(&unk_288325FB8 + v3);
    if ((v5 & ~v2) == 0)
    {
      break;
    }

LABEL_5:
    v3 += 8;
    if (v3 == 208)
    {
      swift_beginAccess();
      v16 = *v1;
      swift_bridgeObjectRetain_n();
      sub_2740F30BC(&v16);

      *(v15 + 16) = v16;

      return v15;
    }
  }

  v6 = MobileGestalt_get_current_device();
  if (v6)
  {
    v7 = v6;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v17 = 22;
    v18 = wapiCapability;
    sub_27410D098(v5, &v16);
    v9 = v16;
    swift_beginAccess();
    v10 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_2741770D4(0, *(v10 + 2) + 1, 1, v10);
      *v1 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2741770D4((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v4 = &v10[2 * v13];
    v4[32] = v9;
    v4[33] = wapiCapability;
    *v1 = v10;
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t WiFiDiagnoser.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2740F30BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2741B4B48(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2740F3128(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2740F3128(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2741C86BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2741C801C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2740F32B0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2740F3220(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2740F3220(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 2 * a3 - 2;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 2 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (v7 - 2 >= 3)
      {
        v10 = *v9;
        v11 = v10 >= v7 && v10 - 2 >= 3;
        if (!v11)
        {
LABEL_4:
          ++a3;
          v5 += 2;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v12 = v9[3];
      *(v9 + 1) = *v9;
      *v9 = v7;
      v9[1] = v12;
      v9 -= 2;
      v11 = __CFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2740F32B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_144:
      result = sub_2741B412C(v8);
      v8 = result;
    }

    v83 = (v8 + 16);
    v84 = *(v8 + 16);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = (v8 + 16 * v84);
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_2740F38CC((*a3 + 2 * *v85), (*a3 + 2 * *v87), (*a3 + 2 * v88), v5);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_136;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_137;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_138;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v90 = a4;
  while (2)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_57;
    }

    v11 = *a3;
    v12 = *(*a3 + 2 * v10);
    if (v12 - 2 > 2)
    {
      v14 = *(v11 + 2 * v7);
      v15 = v14 < v12 || v14 - 5 >= 0xFFFFFFFD;
      v13 = !v15;
    }

    else
    {
      v13 = 1;
    }

    v7 += 2;
    if (v9 + 2 >= v6)
    {
LABEL_24:
      if ((v13 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v10 = v6 - 1;
    v16 = (v11 + 2 * v9 + 4);
    while (1)
    {
      v18 = *v16;
      v16 += 2;
      v17 = v18;
      if (v18 - 2 <= 2)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_17;
      }

      if (v12 - 2 > 2)
      {
        if (v13 == v12 < v17)
        {
          v10 = v7 - 1;
          goto LABEL_24;
        }

        goto LABEL_17;
      }

      if (v13)
      {
        break;
      }

LABEL_17:
      ++v7;
      v12 = v17;
      if (v6 == v7)
      {
        v7 = v6;
        if ((v13 & 1) == 0)
        {
LABEL_34:
          if (v7 >= v6)
          {
            goto LABEL_57;
          }

          goto LABEL_35;
        }

LABEL_25:
        if (v7 < v9)
        {
          goto LABEL_143;
        }

        goto LABEL_26;
      }
    }

    v10 = v7 - 1;
    if (v7 < v9)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

LABEL_26:
    if (v9 > v10)
    {
      goto LABEL_34;
    }

    v19 = 0;
    v20 = 2 * v7;
    v21 = 2 * v9;
    v22 = v9;
    do
    {
      if (v22 != v7 + v19 - 1)
      {
        v27 = *a3;
        if (!*a3)
        {
          goto LABEL_147;
        }

        v23 = (v27 + v21);
        v24 = v27 + v20;
        v25 = *v23;
        v26 = v23[1];
        *v23 = *(v24 - 2);
        *(v24 - 2) = v25;
        *(v24 - 1) = v26;
      }

      ++v22;
      --v19;
      v20 -= 2;
      v21 += 2;
    }

    while (v22 < v7 + v19);
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_57;
    }

LABEL_35:
    if (__OFSUB__(v7, v9))
    {
      goto LABEL_140;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_57;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_141;
    }

    if (v9 + a4 < v6)
    {
      v6 = v9 + a4;
    }

    if (v6 < v9)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v7 == v6)
    {
LABEL_57:
      if (v7 < v9)
      {
        goto LABEL_139;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_274176EC4(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v5 = *(v8 + 16);
      v37 = *(v8 + 24);
      v38 = v5 + 1;
      if (v5 >= v37 >> 1)
      {
        result = sub_274176EC4((v37 > 1), v5 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v38;
      v39 = v8 + 32;
      v40 = (v8 + 32 + 16 * v5);
      *v40 = v9;
      v40[1] = v7;
      v92 = *v91;
      if (!*v91)
      {
        goto LABEL_149;
      }

      if (v5)
      {
        while (1)
        {
          v5 = v38 - 1;
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v41 = *(v8 + 32);
            v42 = *(v8 + 40);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_77:
            if (v44)
            {
              goto LABEL_126;
            }

            v57 = (v8 + 16 * v38);
            v59 = *v57;
            v58 = v57[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_128;
            }

            v63 = (v39 + 16 * v5);
            v65 = *v63;
            v64 = v63[1];
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_131;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_133;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v5 = v38 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          if (v38 < 2)
          {
            goto LABEL_134;
          }

          v67 = (v8 + 16 * v38);
          v69 = *v67;
          v68 = v67[1];
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_92:
          if (v62)
          {
            goto LABEL_130;
          }

          v70 = (v39 + 16 * v5);
          v72 = *v70;
          v71 = v70[1];
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_132;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_99:
          if (v5 - 1 >= v38)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (!*a3)
          {
            goto LABEL_146;
          }

          v78 = (v39 + 16 * (v5 - 1));
          v79 = *v78;
          v80 = (v39 + 16 * v5);
          v81 = v80[1];
          sub_2740F38CC((*a3 + 2 * *v78), (*a3 + 2 * *v80), (*a3 + 2 * v81), v92);
          if (v4)
          {
          }

          if (v81 < v79)
          {
            goto LABEL_121;
          }

          if (v5 > *(v8 + 16))
          {
            goto LABEL_122;
          }

          *v78 = v79;
          v78[1] = v81;
          v82 = *(v8 + 16);
          if (v5 >= v82)
          {
            goto LABEL_123;
          }

          v38 = v82 - 1;
          result = memmove((v39 + 16 * v5), v80 + 2, 16 * (v82 - 1 - v5));
          *(v8 + 16) = v82 - 1;
          if (v82 <= 2)
          {
            goto LABEL_3;
          }
        }

        v45 = v39 + 16 * v38;
        v46 = *(v45 - 64);
        v47 = *(v45 - 56);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_124;
        }

        v50 = *(v45 - 48);
        v49 = *(v45 - 40);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_125;
        }

        v52 = (v8 + 16 * v38);
        v54 = *v52;
        v53 = v52[1];
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_127;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_129;
        }

        if (v56 >= v48)
        {
          v74 = (v39 + 16 * v5);
          v76 = *v74;
          v75 = v74[1];
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_135;
          }

          if (v43 < v77)
          {
            v5 = v38 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_77;
      }

LABEL_3:
      v6 = a3[1];
      a4 = v90;
      if (v7 >= v6)
      {
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  v28 = *a3;
  v29 = *a3 + 2 * v7 - 2;
  v30 = v9 - v7;
LABEL_44:
  v31 = *(v28 + 2 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 - 2 >= 3)
    {
      v34 = *v33;
      if (v34 < v31 || v34 - 2 < 3)
      {
LABEL_43:
        ++v7;
        v29 += 2;
        --v30;
        if (v7 == v6)
        {
          v7 = v6;
          goto LABEL_57;
        }

        goto LABEL_44;
      }
    }

    if (!v28)
    {
      break;
    }

    v36 = v33[3];
    *(v33 + 1) = *v33;
    *v33 = v31;
    v33[1] = v36;
    v33 -= 2;
    v15 = __CFADD__(v32++, 1);
    if (v15)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_2740F38CC(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 2;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 2;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[2 * v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[2 * v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6;
      if (v15 - 2 >= 3)
      {
        v16 = *v4;
        if (v16 < v15 || v16 - 2 < 3)
        {
          break;
        }
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 2;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 2;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 2;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = *v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[2 * v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 2;
    v5 -= 2;
    v19 = v12;
    do
    {
      v20 = v5 + 2;
      v22 = *(v19 - 2);
      v19 -= 2;
      v21 = v22;
      if (v22 - 2 < 3 || ((v23 = *v18, v23 >= v21) ? (v24 = v23 - 2 >= 3) : (v24 = 0), v24))
      {
        if (v20 != v6)
        {
          *v5 = *v18;
        }

        if (v12 <= v4 || (v6 -= 2, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v20 != v12)
      {
        *v5 = *v19;
      }

      v5 -= 2;
      v12 = v19;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_39:
  v25 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= &v4[v25 & 0xFFFFFFFFFFFFFFFELL])
  {
    memmove(v6, v4, 2 * (v25 >> 1));
  }

  return 1;
}

id sub_2740F3AE0@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 121) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    *(a2 + 137) = wapiCapability;
    v6 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
    v7 = v6[7];
    *(a2 + v7) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
    swift_storeEnumTagMultiPayload();
    v8 = a2 + v6[8];
    type metadata accessor for AssociationModel(0);
    sub_2740FBB24(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
    *v8 = sub_2741C6CEC();
    *(v8 + 8) = v9 & 1;
    v10 = a2 + v6[9];
    LOBYTE(v43[0]) = 0;
    sub_2741C7A2C();
    v11 = *(&v33 + 1);
    *v10 = v33;
    *(v10 + 8) = v11;
    v12 = a2 + v6[10];
    LOBYTE(v43[0]) = 0;
    sub_2741C7A2C();
    v13 = *(&v33 + 1);
    *v12 = v33;
    *(v12 + 8) = v13;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_2740A6D94(&v33, v43, &qword_280937E78, &qword_2741D81E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
    sub_2741C7A2C();
    sub_27409D420(&v33, &qword_280937E78, &qword_2741D81E0);
    v14 = a2 + v6[12];
    if (qword_280937480 != -1)
    {
      swift_once();
    }

    v43[0] = xmmword_280946038;

    sub_2741C7A2C();
    v15 = v34;
    *v14 = v33;
    *(v14 + 16) = v15;
    v16 = (a2 + v6[13]);
    type metadata accessor for AssociationCredentials(0);
    swift_allocObject();
    *&v43[0] = sub_27410A05C();
    sub_2741C7A2C();
    v17 = v33;
    *v16 = v33;
    v18 = a2 + v6[14];
    LOBYTE(v43[0]) = 0;
    sub_2741C7A2C();
    v19 = *(&v33 + 1);
    *v18 = v33;
    *(v18 + 8) = v19;
    v20 = a2 + v6[15];
    sub_2740A5224();
    sub_2741C6CAC();
    v21 = *(&v33 + 1);
    v22 = v34;
    *v20 = v33;
    *(v20 + 8) = v21;
    *(v20 + 16) = v22;
    type metadata accessor for EnterpriseNetworkArchiveFetcher();
    swift_allocObject();
    v23 = sub_274112688();
    sub_2740ACAC8((v23 + 7), v43);
    sub_2740ACAC8(v43, &v29);
    type metadata accessor for PasswordPromptViewState(0);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    sub_2741C6A3C();
    *&v33 = v24;
    sub_2740ACAC8(&v29, &v33 + 8);
    v40 = v29;
    LOBYTE(v16) = v32;
    v41 = v32;

    v25 = sub_274178454();
    sub_2740ACB2C(&v29);
    v42 = v25;
    v36 = nullsub_1;
    v37 = 0;
    v38 = nullsub_1;
    v39 = 0;
    v30 = &type metadata for WiFiCredentialsPromptContext;
    v31 = &off_288329F38;
    *&v29 = swift_allocObject();
    sub_2740FAB1C(&v33, v29 + 16);
    sub_2740FAB78(&v29, a2);
    sub_27409D420(a2 + 40, &qword_280938340, &qword_2741D1660);
    sub_2740ACAC8(v43, a2 + 40);
    if (v16)
    {
      v29 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
      sub_2741C7A3C();
      if (*(v28 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) == v44)
      {
        sub_274108F9C();

        sub_2740ACB2C(v43);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath, v27);
        *&v29 = v28;
        sub_2740FBB24(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
        sub_2741C69FC();

        sub_2740ACB2C(v43);
      }
    }

    else
    {
      sub_2740ACB2C(v43);
    }

    return sub_2740FABE8(&v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2740F40BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2741C70AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  sub_2740A6D94(v1 + *(v12 + 28), v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_2741C82AC();
    v15 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2740F42C4()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for EnterpriseURLCredentialsPromptView(0) + 32));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2741C82AC();
    v9 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2740F4414@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396A8, &qword_2741D0388);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v87[-v5];
  v100 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v7);
  v107 = v8;
  v103 = &v87[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B0, &qword_2741D0390);
  MEMORY[0x28223BE20](v108, v9);
  v106 = &v87[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B8, &qword_2741D0398);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v102 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v87[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396C0, &unk_2741D03A0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v87[-v22];
  sub_2740A6D94(v2, &v111, &qword_280939678, &qword_2741D02B0);
  if (*(&v112 + 1))
  {
    v97 = v20;
    v24 = sub_27409D118(&v111, &v115);
    v98 = v3;
    MEMORY[0x28223BE20](v24, v25);
    v95 = v23;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396E0, &qword_2741D03B8);
    v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396E8, &qword_2741D03C0);
    v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396F0, &qword_2741D03C8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396F8, &qword_2741D03D0);
    v92 = v12;
    v27 = v26;
    v96 = v19;
    v93 = v11;
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939700, &qword_2741D03D8);
    v104 = v18;
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939708, &qword_2741D03E0);
    v94 = v6;
    v30 = v29;
    v31 = sub_2740A6D24(&qword_280939710, &qword_280939700, &qword_2741D03D8, MEMORY[0x277CDE580]);
    v32 = sub_2740A6D24(&qword_280939718, &qword_280939708, &qword_2741D03E0, MEMORY[0x277CDDF68]);
    *&v111 = v28;
    *(&v111 + 1) = v30;
    *&v112 = v31;
    *(&v112 + 1) = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v111 = v27;
    *(&v111 + 1) = OpaqueTypeConformance2;
    v34 = swift_getOpaqueTypeConformance2();
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939720, &qword_2741D03E8);
    v36 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8, MEMORY[0x277CDD7A8]);
    *&v111 = v35;
    *(&v111 + 1) = v36;
    v37 = swift_getOpaqueTypeConformance2();
    *&v111 = v90;
    *(&v111 + 1) = v89;
    *&v112 = v34;
    *(&v112 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v106;
    sub_2741C6E8C();
    sub_27409D4E4(&v115, &v111);
    v39 = v103;
    sub_2740FB2AC(v2, v103);
    v40 = *(v99 + 80);
    v41 = swift_allocObject();
    sub_27409D118(&v111, v41 + 16);
    v89 = type metadata accessor for EnterpriseURLCredentialsPromptView;
    sub_2740FBC04(v39, v41 + ((v40 + 56) & ~v40), type metadata accessor for EnterpriseURLCredentialsPromptView);
    v42 = &v38[*(v108 + 36)];
    *v42 = sub_2740FB500;
    v42[1] = v41;
    v42[2] = 0;
    v42[3] = 0;
    v43 = v100;
    v44 = v2 + *(v100 + 36);
    v45 = v2;
    v46 = *v44;
    v47 = *(v44 + 8);
    LOBYTE(v109) = v46;
    v110 = v47;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A5C();
    v48 = v111;
    v88 = v112;
    v91 = *(v43 + 44);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A3C();
    sub_2740FB2AC(v2, v39);
    v49 = (v40 + 16) & ~v40;
    v50 = swift_allocObject();
    sub_2740FBC04(v39, v50 + v49, type metadata accessor for EnterpriseURLCredentialsPromptView);
    v51 = v104;
    v52 = v106;
    sub_2741A323C(v48, *(&v48 + 1), v88, &v111, sub_2740FB568, v50, v104);

    sub_27409D420(&v111, &qword_280937E78, &qword_2741D81E0);
    sub_27409D420(v52, &qword_2809396B0, &qword_2741D0390);
    v53 = v45 + *(v43 + 40);
    v54 = *v53;
    v55 = *(v53 + 8);
    LOBYTE(v109) = v54;
    v110 = v55;
    sub_2741C7A5C();
    v100 = *(&v111 + 1);
    LODWORD(v106) = v112;
    sub_2741C7A3C();
    sub_2740FB2AC(v45, v39);
    v56 = swift_allocObject();
    sub_2740FBC04(v39, v56 + v49, v89);
    sub_2740A6D94(&v109, &v111, &qword_280937E78, &qword_2741D81E0);
    v57 = v92;
    v58 = v102;
    v59 = v93;
    (*(v92 + 16))(v102, v51, v93);
    v60 = (*(v57 + 80) + 56) & ~*(v57 + 80);
    v61 = (v101 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v63 = v112;
    *(v62 + 16) = v111;
    *(v62 + 32) = v63;
    *(v62 + 48) = v113;
    (*(v57 + 32))(v62 + v60, v58, v59);
    v64 = (v62 + v61);
    *v64 = sub_2740FB580;
    v64[1] = v56;

    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F30, &unk_2741D7CA0);
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
    v67 = sub_2740FB1EC();
    v68 = sub_2740A5DB0();
    v69 = sub_2740A5EE4();
    *&v111 = v108;
    *(&v111 + 1) = v65;
    *&v112 = v66;
    *(&v112 + 1) = v67;
    v113 = v68;
    v114 = v69;
    *&v86 = swift_getOpaqueTypeConformance2();
    *(&v86 + 1) = sub_2740A5F60();
    v70 = v95;
    v71 = v104;
    sub_2741C788C();

    sub_27409D420(&v109, &qword_280937E78, &qword_2741D81E0);
    (*(v57 + 8))(v71, v59);
    v72 = v97;
    v73 = v96;
    (*(v97 + 16))(v94, v70, v96);
    swift_storeEnumTagMultiPayload();
    *&v111 = v59;
    *(&v111 + 1) = v107;
    v112 = v86;
    swift_getOpaqueTypeConformance2();
    sub_2741C72CC();
    (*(v72 + 8))(v70, v73);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v115);
  }

  else
  {
    sub_27409D420(&v111, &qword_280939678, &qword_2741D02B0);
    sub_2741C714C();
    *v6 = sub_2741C768C();
    *(v6 + 1) = v75;
    v6[16] = v76 & 1;
    *(v6 + 3) = v77;
    swift_storeEnumTagMultiPayload();
    v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F30, &unk_2741D7CA0);
    v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
    v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
    v81 = sub_2740FB1EC();
    v82 = sub_2740A5DB0();
    v83 = sub_2740A5EE4();
    *&v111 = v108;
    *(&v111 + 1) = v79;
    *&v112 = v80;
    *(&v112 + 1) = v81;
    v113 = v82;
    v114 = v83;
    v84 = swift_getOpaqueTypeConformance2();
    v85 = sub_2740A5F60();
    *&v111 = v11;
    *(&v111 + 1) = v78;
    *&v112 = v84;
    *(&v112 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    return sub_2741C72CC();
  }
}

uint64_t sub_2740F5078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v39 = a3;
  v36 = sub_2741C70BC();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939700, &qword_2741D03D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396F8, &qword_2741D03D0);
  v34 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396E8, &qword_2741D03C0);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v32 = &v32 - v20;
  v42 = a1;
  v43 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939730, &unk_2741D0450);
  sub_2740A6D24(&qword_280939738, &qword_280939730, &unk_2741D0450, MEMORY[0x277CE14C0]);
  sub_2741C761C();
  v41 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939708, &qword_2741D03E0);
  v22 = sub_2740A6D24(&qword_280939710, &qword_280939700, &qword_2741D03D8, MEMORY[0x277CDE580]);
  v23 = sub_2740A6D24(&qword_280939718, &qword_280939708, &qword_2741D03E0, MEMORY[0x277CDDF68]);
  sub_2741C78BC();
  (*(v9 + 8))(v12, v8);
  v24 = v35;
  v25 = v36;
  (*(v35 + 104))(v7, *MEMORY[0x277CDDDC0], v36);
  v44 = v8;
  v45 = v21;
  v46 = v22;
  v47 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v32;
  sub_2741C783C();
  (*(v24 + 8))(v7, v25);
  (*(v34 + 8))(v16, v13);
  v40 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396F0, &qword_2741D03C8);
  v44 = v13;
  v45 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939720, &qword_2741D03E8);
  v29 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8, MEMORY[0x277CDD7A8]);
  v44 = v28;
  v45 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_2741C78BC();
  return (*(v38 + 8))(v27, v30);
}

uint64_t sub_2740F55DC@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939768, &qword_2741D04E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v46 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939770, &qword_2741D04E8);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v46 - v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939778, &qword_2741D04F0);
  v16 = *(v47 - 8);
  v18 = MEMORY[0x28223BE20](v47, v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v51 = &v46 - v22;
  v52 = a1;
  v53 = a2;
  v23 = *(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 160);
  v48 = v5;
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    if (a2[137])
    {
      if (qword_280937670 != -1)
      {
        swift_once();
      }

      v28 = &qword_280946418;
    }

    else
    {
      if (qword_280937668 != -1)
      {
        swift_once();
      }

      v28 = &qword_280946408;
    }

    v29 = *v28;

    v54 = v29;
    v55 = v30;
    sub_2740A6A74();
    v24 = sub_2741C76AC();
    v26 = v31 & 1;
  }

  v54 = v24;
  v55 = v25;
  v56 = v26;
  v57 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939780, &qword_2741D04F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939788, &unk_2741D0500);
  sub_2740A6D24(&qword_280939790, &qword_280939780, &qword_2741D04F8, MEMORY[0x277CE14C0]);
  sub_2740FBA2C();
  sub_2741C7BAC();
  v32 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v32[21] && *(v32 + 160) == 1)
  {
    MEMORY[0x28223BE20](v32, v33);
    *(&v46 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397A8, &qword_2741D5B40);
    sub_2740A6D24(&qword_2809397B0, &qword_2809397A8, &qword_2741D5B40, MEMORY[0x277CDF038]);
    v34 = v46;
    sub_2741C7B9C();
    v35 = v48;
    (*(v6 + 32))(v15, v34, v48);
    v36 = v35;
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v36 = v48;
  }

  (*(v6 + 56))(v15, v37, 1, v36);
  v38 = *(v16 + 16);
  v39 = v51;
  v40 = v47;
  v38(v20, v51, v47);
  v41 = v49;
  sub_2740A6D94(v15, v49, &qword_280939770, &qword_2741D04E8);
  v42 = v50;
  v38(v50, v20, v40);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397A0, &unk_2741D0510);
  sub_2740A6D94(v41, &v42[*(v43 + 48)], &qword_280939770, &qword_2741D04E8);
  sub_27409D420(v15, &qword_280939770, &qword_2741D04E8);
  v44 = *(v16 + 8);
  v44(v39, v40);
  sub_27409D420(v41, &qword_280939770, &qword_2741D04E8);
  return (v44)(v20, v40);
}

uint64_t sub_2740F5B48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397E0, &qword_2741D5B80);
  MEMORY[0x28223BE20](v69, v6);
  v8 = v57 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397E8, &qword_2741D0570);
  MEMORY[0x28223BE20](v65, v9);
  v68 = v57 - v10;
  v61 = type metadata accessor for IdentitySelectionView(0);
  MEMORY[0x28223BE20](v61, v11);
  v60 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397F0, &qword_2741D0578);
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v13);
  v62 = v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397F8, &qword_2741D0580);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v67 = v57 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380C8, &qword_2741CB848);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380D0, &qword_2741CB850);
  v29 = MEMORY[0x28223BE20](v27 - 8, v28);
  v64 = v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = v57 - v32;
  if (*(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 160) == 1)
  {
    *v26 = sub_2741C70EC();
    *(v26 + 1) = 0;
    v26[16] = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938108, &unk_2741CB880);
    v35 = a2;
    sub_2740F641C(a2, &v26[*(v34 + 44)]);
    sub_2740FBB6C(v26, v33);
    (*(v23 + 56))(v33, 0, 1, v22);
  }

  else
  {
    v35 = a2;
    (*(v23 + 56))(v33, 1, 1, v22);
  }

  v36 = __swift_project_boxed_opaque_existential_1(a1, a1[3])[21];
  if (!v36)
  {
    goto LABEL_8;
  }

  v58 = v19;
  v59 = a3;
  v37 = (v35 + *(type metadata accessor for EnterpriseURLCredentialsPromptView(0) + 52));
  v38 = *v37;
  v39 = v37[1];
  v70 = *v37;
  v71 = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v40 = v73;
  swift_getKeyPath();
  v70 = v40;
  sub_2740FBB24(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
  sub_2741C6A0C();

  v41 = *(v40 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);

  if (v41 != 2)
  {

    v19 = v58;
    a3 = v59;
LABEL_8:
    *v8 = sub_2741C70EC();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939800, &qword_2741D0588);
    sub_2740F73B8(v35, &v8[*(v53 + 44)]);
    sub_2740A6D94(v8, v68, &qword_2809397E0, &qword_2741D5B80);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_280939808, &qword_2809397F0, &qword_2741D0578, MEMORY[0x277CDD938]);
    sub_2740A6D24(&qword_280939810, &qword_2809397E0, &qword_2741D5B80, MEMORY[0x277CE1138]);
    v52 = v67;
    sub_2741C72CC();
    sub_27409D420(v8, &qword_2809397E0, &qword_2741D5B80);
    goto LABEL_9;
  }

  v57[1] = v57;
  MEMORY[0x28223BE20](v42, v43);
  v57[0] = &v57[-4];
  v57[-2] = v35;
  v73 = v38;
  v74 = v39;
  sub_2741C7A5C();
  v44 = v70;
  v45 = v71;
  v46 = v72;
  swift_getKeyPath();
  v70 = v44;
  v71 = v45;
  v72 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  v47 = v60;
  sub_2741C7B0C();

  *v47 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939820, &unk_2741D05C0);
  v48 = MEMORY[0x277CE1138];
  sub_2740A6D24(&qword_280939828, &qword_280939820, &unk_2741D05C0, MEMORY[0x277CE1138]);
  sub_2740FBB24(&qword_280939830, type metadata accessor for IdentitySelectionView, &unk_2741D77F0);
  v49 = v62;
  sub_2741C6DDC();
  v50 = v63;
  v51 = v66;
  (*(v63 + 16))(v68, v49, v66);
  swift_storeEnumTagMultiPayload();
  sub_2740A6D24(&qword_280939808, &qword_2809397F0, &qword_2741D0578, MEMORY[0x277CDD938]);
  sub_2740A6D24(&qword_280939810, &qword_2809397E0, &qword_2741D5B80, v48);
  v52 = v67;
  sub_2741C72CC();
  (*(v50 + 8))(v49, v51);
  v19 = v58;
  a3 = v59;
LABEL_9:
  v54 = v64;
  sub_2740A6D94(v33, v64, &qword_2809380D0, &qword_2741CB850);
  sub_2740A6D94(v52, v19, &qword_2809397F8, &qword_2741D0580);
  sub_2740A6D94(v54, a3, &qword_2809380D0, &qword_2741CB850);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939818, &qword_2741D0590);
  sub_2740A6D94(v19, a3 + *(v55 + 48), &qword_2809397F8, &qword_2741D0580);
  sub_27409D420(v52, &qword_2809397F8, &qword_2741D0580);
  sub_27409D420(v33, &qword_2809380D0, &qword_2741CB850);
  sub_27409D420(v19, &qword_2809397F8, &qword_2741D0580);
  return sub_27409D420(v54, &qword_2809380D0, &qword_2741CB850);
}

uint64_t sub_2740F641C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938110, &unk_2741D05D0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v95 = v69 - v5;
  v6 = sub_2741C6E4C();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v92 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v76 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v77 = v11;
  v81 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938118, &unk_2741CB890);
  v71 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v12);
  v70 = v69 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938120, &unk_2741D05E0);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v14);
  v79 = v69 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938128, &unk_2741CB8A0);
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v16);
  v78 = v69 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938130, &unk_2741D05F0);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v18);
  v85 = v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938138, &qword_2741CB8B0);
  v90 = *(v20 - 8);
  v91 = v20;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v89 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v97 = v69 - v25;
  if (qword_2809374A0 != -1)
  {
    swift_once();
  }

  v98 = xmmword_280946078;
  sub_2740A6A74();

  v73 = sub_2741C76AC();
  v72 = v26;
  v74 = v27;
  v75 = v28;
  v69[3] = sub_2741C714C();
  v69[2] = v29;
  v69[1] = v30;
  v31 = (a1 + *(v9 + 52));
  v33 = *v31;
  v32 = v31[1];
  *&v101 = v33;
  *(&v101 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v34 = v98;
  v35 = v99;
  swift_getKeyPath();
  v101 = v34;
  v102 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v36 = v70;
  sub_2741C7C8C();
  v37 = (a1 + *(v9 + 60));
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v37) = v37[16];
  LOBYTE(v98) = v38;
  *(&v98 + 1) = v39;
  LOBYTE(v99) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v98 = v101;
  LOBYTE(v99) = v102;
  LOBYTE(v101) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v41 = sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890, MEMORY[0x277CDF1A8]);
  v42 = sub_2740A58C0();
  v43 = v79;
  v44 = v80;
  sub_2741C789C();

  (*(v71 + 8))(v36, v44);
  v45 = v81;
  sub_2740FB2AC(a1, v81);
  v46 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v47 = swift_allocObject();
  sub_2740FBC04(v45, v47 + v46, type metadata accessor for EnterpriseURLCredentialsPromptView);
  v48 = v92;
  sub_2741C6E3C();
  *&v98 = v44;
  *(&v98 + 1) = v40;
  v99 = v41;
  v100 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v78;
  v51 = v84;
  sub_2741C78EC();

  (*(v93 + 8))(v48, v94);
  (*(v83 + 8))(v43, v51);
  *&v98 = v51;
  *(&v98 + 1) = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v85;
  v54 = v87;
  MEMORY[0x2743E5870](1, v87, v52);
  (*(v82 + 8))(v50, v54);
  v55 = v95;
  sub_2741C744C();
  v56 = sub_2741C745C();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  *&v98 = v54;
  *(&v98 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v57 = v97;
  v58 = v88;
  sub_2741C782C();
  sub_27409D420(v55, &qword_280938110, &unk_2741D05D0);
  (*(v86 + 8))(v53, v58);
  v60 = v89;
  v59 = v90;
  v61 = *(v90 + 16);
  v62 = v91;
  v61(v89, v57, v91);
  v63 = v96;
  v64 = v73;
  v65 = v72;
  *v96 = v73;
  v63[1] = v65;
  LOBYTE(v58) = v74 & 1;
  *(v63 + 16) = v74 & 1;
  v63[3] = v75;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938150, &qword_2741CB8E8);
  v61(v63 + *(v66 + 48), v60, v62);
  sub_27409861C(v64, v65, v58);
  v67 = *(v59 + 8);

  v67(v97, v62);
  v67(v60, v62);
  sub_2740A6AC8(v64, v65, v58);
}

double sub_2740F6E80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C70EC();
  v16 = 1;
  sub_2740F6F88(a1, &v10);
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
  sub_2740A6D94(&v17, &v9, &qword_280939838, &qword_2741D3B50);
  sub_27409D420(v22, &qword_280939838, &qword_2741D3B50);
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

uint64_t sub_2740F6F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for EnterpriseIdentity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2809374B0 != -1)
  {
    swift_once();
  }

  v51 = qword_280946098;
  v52 = unk_2809460A0;
  sub_2740A6A74();

  v13 = sub_2741C76AC();
  v46 = v14;
  v47 = v13;
  v45 = v15;
  v17 = v16;
  v18 = (a1 + *(type metadata accessor for EnterpriseURLCredentialsPromptView(0) + 52));
  v20 = *v18;
  v19 = v18[1];
  v51 = v20;
  v52 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v21 = v48;
  swift_getKeyPath();
  v51 = v21;
  sub_2740FBB24(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
  sub_2741C6A0C();

  v22 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  sub_2740A6D94(v21 + v22, v7, &qword_280937DA0, &qword_2741CB190);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_27409D420(v7, &qword_280937DA0, &qword_2741CB190);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    sub_2740FBC04(v7, v12, type metadata accessor for EnterpriseIdentity);
    v27 = v12[1];
    v48 = *v12;
    v49 = v27;

    v28 = sub_2741C76AC();
    v30 = v29;
    v32 = v31;
    LODWORD(v48) = sub_2741C737C();
    v23 = sub_2741C764C();
    v24 = v33;
    v44 = v17;
    v35 = v34;
    v26 = v36;
    sub_2740A6AC8(v28, v30, v32 & 1);

    sub_2740FBC6C(v12);
    v25 = v35 & 1;
    v17 = v44;
    sub_27409861C(v23, v24, v25);
  }

  v37 = v45 & 1;
  LOBYTE(v48) = v45 & 1;
  v50 = 1;
  v39 = v46;
  v38 = v47;
  sub_27409861C(v47, v46, v45 & 1);

  sub_2740ACA00(v23, v24, v25, v26);
  sub_2740ACA44(v23, v24, v25, v26);
  v40 = v48;
  v41 = v50;
  *a2 = v38;
  *(a2 + 8) = v39;
  *(a2 + 16) = v40;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = v41;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  sub_2740ACA44(v23, v24, v25, v26);
  sub_2740A6AC8(v38, v39, v37);
}

uint64_t sub_2740F73B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v76 = a2;
  v3 = sub_2741C6E4C();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v73 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v64 = v8;
  v67 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938158, &qword_2741CFBD0);
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v9);
  v57 = v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938160, &unk_2741CB900);
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v65 = v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938168, &qword_2741D5C10);
  v71 = *(v14 - 8);
  v72 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v70 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v77 = v56 - v19;
  if (qword_2809374A8 != -1)
  {
    swift_once();
  }

  v78 = xmmword_280946088;
  sub_2740A6A74();

  v59 = sub_2741C76AC();
  v58 = v20;
  v60 = v21;
  v61 = v22;
  v56[2] = sub_2741C714C();
  v56[1] = v23;
  v56[0] = v24;
  v25 = (a1 + *(v6 + 52));
  v27 = *v25;
  v26 = v25[1];
  *&v81 = v27;
  *(&v81 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v28 = v78;
  v29 = v79;
  swift_getKeyPath();
  v81 = v28;
  v82 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v30 = v57;
  sub_2741C6CFC();
  v31 = a1;
  v32 = (a1 + *(v6 + 60));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v32) = v32[16];
  LOBYTE(v78) = v33;
  *(&v78 + 1) = v34;
  LOBYTE(v79) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v78 = v81;
  LOBYTE(v79) = v82;
  LOBYTE(v81) = 2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v36 = sub_2740A6D24(&qword_280938178, &qword_280938158, &qword_2741CFBD0, MEMORY[0x277CDD798]);
  v37 = sub_2740A58C0();
  v39 = v65;
  v38 = v66;
  sub_2741C789C();

  (*(v62 + 8))(v30, v38);
  v40 = v67;
  sub_2740FB2AC(v31, v67);
  v41 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v42 = swift_allocObject();
  sub_2740FBC04(v40, v42 + v41, type metadata accessor for EnterpriseURLCredentialsPromptView);
  v43 = v73;
  sub_2741C6E3C();
  *&v78 = v38;
  *(&v78 + 1) = v35;
  v79 = v36;
  v80 = v37;
  swift_getOpaqueTypeConformance2();
  v44 = v77;
  v45 = v69;
  sub_2741C78EC();

  (*(v74 + 8))(v43, v75);
  (*(v68 + 8))(v39, v45);
  v47 = v70;
  v46 = v71;
  v48 = *(v71 + 16);
  v49 = v72;
  v48(v70, v44, v72);
  v50 = v76;
  v51 = v59;
  v52 = v58;
  *v76 = v59;
  v50[1] = v52;
  LOBYTE(v45) = v60 & 1;
  *(v50 + 16) = v60 & 1;
  v50[3] = v61;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939840, &unk_2741D5C40);
  v48(v50 + *(v53 + 48), v47, v49);
  sub_27409861C(v51, v52, v45);
  v54 = *(v46 + 8);

  v54(v77, v49);
  v54(v47, v49);
  sub_2740A6AC8(v51, v52, v45);
}

uint64_t sub_2740F7B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = sub_2741C80DC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_2740FB2AC(a1, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2741C80AC();
  v14 = sub_2741C809C();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_2740FBC04(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for EnterpriseURLCredentialsPromptView);
  sub_2740CE980(0, 0, v12, a3, v16);
}

uint64_t sub_2740F7D10(uint64_t a1)
{
  if (qword_2809373D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for EnterpriseURLCredentialsPromptView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397B8, &unk_2741D0550);
  sub_2740FBAC0();
  sub_2740A6D24(&qword_2809397C8, &qword_2809397B8, &unk_2741D0550, MEMORY[0x277CE14C0]);
  sub_2740A6A74();
  return sub_2741C7ABC();
}

uint64_t sub_2740F7EE8@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397D0, &unk_2741D5B70);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v29 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  if (qword_280937480 != -1)
  {
    swift_once();
  }

  v29 = xmmword_280946038;
  sub_2740A6A74();

  *v18 = sub_2741C76AC();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  *(v18 + 16) = 257;
  if (qword_280937488 != -1)
  {
    swift_once();
  }

  v29 = xmmword_280946048;

  *v15 = sub_2741C76AC();
  *(v15 + 1) = v22;
  v15[16] = v23 & 1;
  *(v15 + 3) = v24;
  *(v15 + 16) = 258;
  v25 = *(v3 + 16);
  v25(v11, v18, v2);
  v25(v7, v15, v2);
  v25(a1, v11, v2);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397D8, &unk_2741D0560);
  v25(&a1[*(v26 + 48)], v7, v2);
  v27 = *(v3 + 8);
  v27(v15, v2);
  v27(v18, v2);
  v27(v7, v2);
  return (v27)(v11, v2);
}

uint64_t sub_2740F81D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939760, &qword_2741D5AC0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v22 - v5;
  v7 = sub_2741C730C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F48, &qword_2741D04A0);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v22 - v16;
  sub_2741C72DC();
  v22[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  sub_2740DD218();
  sub_2741C6D2C();
  sub_2741C72EC();
  v22[4] = a1;
  sub_2741C6D2C();
  v18 = *(v3 + 48);
  v19 = *(v10 + 16);
  v19(v6, v17, v9);
  v19(&v6[v18], v14, v9);
  sub_2741C71EC();
  v20 = *(v10 + 8);
  v20(v14, v9);
  return (v20)(v17, v9);
}

uint64_t sub_2740F8464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  sub_2740FB2AC(a1, &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_2740FBC04(&v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for EnterpriseURLCredentialsPromptView);
  sub_2741C7A7C();
  v11 = (a1 + *(v5 + 64));
  v12 = *v11;
  v13 = *(v11 + 1);
  v18[16] = v12;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  LOBYTE(v6) = v18[15];
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_2740A7438;
  v17[2] = v15;
  return result;
}

uint64_t sub_2740F8650()
{
  v0 = sub_2741C6DBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740CB460(0xD00000000000001ELL, 0x80000002741DB730);
  sub_2740F40BC(v4);
  sub_2741C6DAC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2740F8738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26[-v11];
  sub_2740FB2AC(a1, &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_2740FBC04(&v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for EnterpriseURLCredentialsPromptView);
  sub_2741C7A7C();
  v15 = (a1 + *(v4 + 52));
  v17 = *v15;
  v16 = v15[1];
  v27 = v17;
  v28 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  LOBYTE(v6) = sub_274109704();

  if (v6)
  {
    v18 = (a1 + *(v4 + 56));
    v19 = *v18;
    v20 = *(v18 + 1);
    LOBYTE(v27) = v19;
    v28 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A3C();
    v21 = v26[8];
  }

  else
  {
    v21 = 1;
  }

  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  (*(v9 + 32))(a2, v12, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v25 = (a2 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = sub_2740A6E2C;
  v25[2] = v23;
  return result;
}

uint64_t sub_2740F8A1C(uint64_t a1)
{
  v2 = sub_2741C730C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939720, &qword_2741D03E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7];
  sub_2741C72FC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939740, &unk_2741D5A70);
  sub_2740A6D24(&qword_280939748, &qword_280939740, &unk_2741D5A70, MEMORY[0x277CE1198]);
  sub_2741C6D2C();
  v9 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8, MEMORY[0x277CDD7A8]);
  MEMORY[0x2743E53C0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

void *sub_2740F8C08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C71AC();
  v10 = 1;
  sub_2740F8CE4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_2740A6D94(__dst, &v7, &qword_280939750, &qword_2741D0460);
  sub_27409D420(v12, &qword_280939750, &qword_2741D0460);
  memcpy(&v9[7], __dst, 0x120uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x127uLL);
}

uint64_t sub_2740F8CE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_2741C713C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_2741C712C();
  sub_2741C711C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_2741C710C();

  sub_2741C711C();
  sub_2741C715C();
  v5 = sub_2741C768C();
  v7 = v6;
  v9 = v8;
  sub_2741C758C();
  v43 = sub_2741C767C();
  v44 = v10;
  v51 = v11;
  v13 = v12;

  sub_2740A6AC8(v5, v7, v9 & 1);

  v50 = sub_2741C752C();
  sub_2741C6C6C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v46 = v13 & 1;
  LOBYTE(v78[0]) = v13 & 1;
  LOBYTE(v69) = 0;
  v49 = sub_2741C753C();
  sub_2741C6C6C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v89) = 0;
  KeyPath = swift_getKeyPath();
  v48 = sub_2741C737C();
  if (qword_280937660 != -1)
  {
    swift_once();
  }

  v89 = qword_2809463F8;
  v90 = unk_280946400;
  sub_2740A6A74();

  v30 = sub_2741C76AC();
  v32 = v31;
  v34 = v33;
  sub_2741C75EC();
  v35 = sub_2741C767C();
  v37 = v36;
  v39 = v38;
  v42 = v40;

  sub_2740A6AC8(v30, v32, v34 & 1);

  sub_2741C7C1C();
  sub_2741C6F1C();
  v116 = v39 & 1;
  *&v60 = v43;
  *(&v60 + 1) = v51;
  LOBYTE(v61) = v46;
  *(&v61 + 1) = *v118;
  DWORD1(v61) = *&v118[3];
  *(&v61 + 1) = v44;
  LOBYTE(v62) = v50;
  *(&v62 + 1) = *v117;
  DWORD1(v62) = *&v117[3];
  *(&v62 + 1) = v15;
  *&v63 = v17;
  *(&v63 + 1) = v19;
  *&v64 = v21;
  BYTE8(v64) = 0;
  HIDWORD(v64) = *&v120[3];
  *(&v64 + 9) = *v120;
  LOBYTE(v65) = v49;
  DWORD1(v65) = *&v119[3];
  *(&v65 + 1) = *v119;
  *(&v65 + 1) = v23;
  *&v66 = v25;
  *(&v66 + 1) = v27;
  *&v67 = v29;
  BYTE8(v67) = 0;
  HIDWORD(v67) = *&v121[3];
  *(&v67 + 9) = *v121;
  *&v68 = KeyPath;
  BYTE8(v68) = 1;
  *(&v68 + 9) = v122;
  BYTE11(v68) = v123;
  HIDWORD(v68) = v48;
  v52[2] = v62;
  v52[3] = v63;
  v52[0] = v60;
  v52[1] = v61;
  v52[6] = v66;
  v52[7] = v67;
  v52[4] = v64;
  v52[5] = v65;
  *&v69 = v35;
  *(&v69 + 1) = v37;
  LOBYTE(v70) = v39 & 1;
  *(&v70 + 1) = *v115;
  DWORD1(v70) = *&v115[3];
  *(&v70 + 1) = v42;
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v71 = v53;
  v72 = v54;
  v73 = v55;
  v74 = v56;
  v52[14] = v56;
  v52[15] = v57;
  v52[16] = v58;
  v52[17] = v59;
  v52[8] = v68;
  v52[9] = v69;
  v52[12] = v54;
  v52[13] = v55;
  v52[10] = v70;
  v52[11] = v53;
  memcpy(a2, v52, 0x120uLL);
  v78[0] = v35;
  v78[1] = v37;
  v79 = v39 & 1;
  *v80 = *v115;
  *&v80[3] = *&v115[3];
  v81 = v42;
  v86 = v57;
  v87 = v58;
  v88 = v59;
  v82 = v53;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  sub_2740A6D94(&v60, &v89, &qword_280939758, &unk_2741D5AB0);
  sub_2740A6D94(&v69, &v89, &qword_2809381B0, &qword_2741CB9D0);
  sub_27409D420(v78, &qword_2809381B0, &qword_2741CB9D0);
  v89 = v43;
  v90 = v51;
  v91 = v46;
  *v92 = *v118;
  *&v92[3] = *&v118[3];
  v93 = v44;
  v94 = v50;
  *v95 = *v117;
  *&v95[3] = *&v117[3];
  v96 = v15;
  v97 = v17;
  v98 = v19;
  v99 = v21;
  v100 = 0;
  *&v101[3] = *&v120[3];
  *v101 = *v120;
  v102 = v49;
  *&v103[3] = *&v119[3];
  *v103 = *v119;
  v104 = v23;
  v105 = v25;
  v106 = v27;
  v107 = v29;
  v108 = 0;
  *v109 = *v121;
  *&v109[3] = *&v121[3];
  v110 = KeyPath;
  v111 = 1;
  v112 = v122;
  v113 = v123;
  v114 = v48;
  return sub_27409D420(&v89, &qword_280939758, &unk_2741D5AB0);
}

uint64_t sub_2740F92F0(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740F9394(uint64_t a1)
{
  v2 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v47 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  if (!v64)
  {
    return sub_27409D420(&v62, &qword_280937E78, &qword_2741D81E0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  result = swift_dynamicCast();
  if (result)
  {
    v12 = v55;
    v11 = v56;
    v13 = v57;
    v51 = v3;
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v14 = v61;
    if (v61 == 3)
    {
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_2741C856C();
      v62 = v55;
      v63 = v56;
      MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
      MEMORY[0x2743E5FB0](v11, v13);
      MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741D8EB0);
      v48 = v12;
      v49 = v11;
      v55 = v12;
      v56 = v11;
      v50 = v13;
      v16 = v52;
      v15 = v53;
      v57 = v13;
      v58 = v52;
      v17 = v54;
      v59 = v53;
      v60 = v54;
      v61 = 3;
      sub_2741C862C();
      sub_2740CB460(v62, v63);

      v18 = (a1 + v2[13]);
      v20 = *v18;
      v19 = v18[1];
      v55 = v20;
      v56 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
      sub_2741C7A3C();
      v21 = v62;
      if (*(v62 + 72) == 1)
      {
        *(v62 + 72) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v47 = &v47;
        MEMORY[0x28223BE20](KeyPath, v41);
        *(&v47 - 2) = v21;
        *(&v47 - 8) = 1;
        v55 = v21;
        sub_2740FBB24(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
        sub_2741C69FC();

        v17 = v54;
      }

      v42 = sub_2741C80DC();
      (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
      sub_2740FB2AC(a1, &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2741C80AC();
      v43 = sub_2741C809C();
      v44 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v45 = swift_allocObject();
      v46 = MEMORY[0x277D85700];
      *(v45 + 16) = v43;
      *(v45 + 24) = v46;
      sub_2740FBC04(&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for EnterpriseURLCredentialsPromptView);
      sub_2740CE980(0, 0, v9, &unk_2741D0448, v45);
      v33 = v48;
      v34 = v49;
      v35 = v50;
      v36 = v16;
      v37 = v15;
      v38 = v17;
      v39 = 3;
    }

    else
    {
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_2741C856C();
      v62 = v55;
      v63 = v56;
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D8E10);
      v22 = v12;
      v55 = v12;
      v56 = v11;
      v23 = v13;
      v24 = v52;
      v25 = v53;
      v57 = v13;
      v58 = v52;
      v26 = v54;
      v59 = v53;
      v60 = v54;
      v61 = v14;
      sub_2741C862C();
      sub_2740CB460(v62, v63);

      v27 = (a1 + v2[9]);
      v28 = *v27;
      v29 = *(v27 + 1);
      LOBYTE(v55) = v28;
      v56 = v29;
      LOBYTE(v62) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
      sub_2741C7A4C();
      v30 = (a1 + v2[15]);
      v31 = *v30;
      v32 = *(v30 + 1);
      LOBYTE(v30) = v30[16];
      LOBYTE(v55) = v31;
      v56 = v32;
      LOBYTE(v57) = v30;
      LOBYTE(v62) = 2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
      sub_2741C6C7C();
      v33 = v22;
      v34 = v11;
      v35 = v23;
      v36 = v24;
      v37 = v25;
      v38 = v26;
      v39 = v14;
    }

    sub_2740A66EC(v33, v34, v35, v36, v37, v38, v39);
  }

  return result;
}

uint64_t sub_2740F997C(char a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v32[-1] - v11;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A3C();
    if (v33[1])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
      if (swift_dynamicCast())
      {
        if (v37[0] != 1)
        {
          sub_2740A6040(v37, v38);
          sub_2740A609C(v38, v37);

          v34 = *&v37[2];
          v35 = *&v37[4];
          v36 = v37[6];
          if (v37[5])
          {
            sub_2740A609C(v38, v32);
            v13 = v32[0];
            sub_27409D420(v33, &qword_280937FB8, &unk_2741D0410);
            v14 = *(&v35 + 1);
            v15 = v36;
            __swift_mutable_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
            (*(v15 + 56))(v13, v14, v15);
          }

          sub_2740CB460(0xD000000000000035, 0x80000002741D8D00);
          v16 = sub_2741C80DC();
          (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
          sub_2740FB2AC(a2, &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_2741C80AC();
          v17 = sub_2741C809C();
          v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v19 = swift_allocObject();
          v20 = MEMORY[0x277D85700];
          *(v19 + 16) = v17;
          *(v19 + 24) = v20;
          sub_2740FBC04(v8, v19 + v18, type metadata accessor for EnterpriseURLCredentialsPromptView);
          sub_2740CE980(0, 0, v12, &unk_2741D0408, v19);

          sub_2740A61EC(v38);
          v21 = &qword_280937FB8;
          v22 = &unk_2741D0410;
          v23 = &v34;
          goto LABEL_11;
        }

LABEL_10:
        v21 = &qword_280937FA8;
        v22 = &unk_2741D03F0;
        v23 = v37;
LABEL_11:
        sub_27409D420(v23, v21, v22);
        goto LABEL_12;
      }
    }

    else
    {
      sub_27409D420(v32, &qword_280937E78, &qword_2741D81E0);
    }

    v37[0] = 1;
    memset(&v37[1], 0, 48);
    goto LABEL_10;
  }

LABEL_12:
  v24 = (a2 + *(v4 + 40));
  v25 = *v24;
  v26 = *(v24 + 1);
  v38[0] = v25;
  v39 = v26;
  LOBYTE(v37[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v27 = (a2 + *(v4 + 60));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v27) = v27[16];
  v38[0] = v28;
  v39 = v29;
  v40 = v27;
  LOBYTE(v37[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740F9D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[105] = a4;
  v5 = sub_2741C6DBC();
  v4[106] = v5;
  v4[107] = *(v5 - 8);
  v4[108] = swift_task_alloc();
  v4[109] = sub_2741C80AC();
  v4[110] = sub_2741C809C();
  v7 = sub_2741C805C();
  v4[111] = v7;
  v4[112] = v6;

  return MEMORY[0x2822009F8](sub_2740F9E8C, v7, v6);
}

uint64_t sub_2740F9E8C()
{
  v1 = *(v0 + 840);
  v2 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  *(v0 + 904) = v2;
  v3 = (v1 + v2[15]);
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v3) = v3[16];
  *(v0 + 696) = v4;
  *(v0 + 704) = v5;
  *(v0 + 712) = v3;
  *(v0 + 116) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C7C();
  v6 = (v1 + v2[14]);
  v7 = *v6;
  *(v0 + 118) = *v6;
  v8 = *(v6 + 1);
  *(v0 + 115) = 1;
  *(v0 + 912) = v8;
  *(v0 + 736) = v7;
  *(v0 + 744) = v8;
  *(v0 + 920) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  sub_2741C856C();

  sub_2740A6D94(v1 + 40, v0 + 16, &qword_280938340, &qword_2741D1660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938340, &qword_2741D1660);
  v9 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v9);

  sub_2740CB218(0xD000000000000028, 0x80000002741DB670, 0xD000000000000010, 0x80000002741D8D60);

  sub_2740A6D94(v1 + 40, v0 + 224, &qword_280938340, &qword_2741D1660);
  if (*(v0 + 232))
  {
    v10 = *(v0 + 840);
    *(v0 + 168) = *(v0 + 272);
    *(v0 + 184) = *(v0 + 288);
    *(v0 + 200) = *(v0 + 304);
    *(v0 + 216) = *(v0 + 320);
    *(v0 + 120) = *(v0 + 224);
    *(v0 + 136) = *(v0 + 240);
    *(v0 + 152) = *(v0 + 256);
    *(v0 + 928) = sub_2740F42C4();
    v11 = (v10 + v2[13]);
    v13 = *v11;
    v12 = v11[1];
    *(v0 + 752) = v13;
    *(v0 + 760) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
    sub_2741C7A3C();
    *(v0 + 600) = type metadata accessor for AssociationCredentials(0);
    *(v0 + 608) = &off_288329FD0;
    v14 = swift_task_alloc();
    *(v0 + 936) = v14;
    *v14 = v0;
    v14[1] = sub_2740FA200;

    return sub_274139F44(v0 + 120, 0, 0, 1, v0 + 576);
  }

  else
  {
    sub_27409D420(v0 + 224, &qword_280938340, &qword_2741D1660);
    return sub_2741C863C();
  }
}

uint64_t sub_2740FA200()
{
  v2 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v3 = *(v2 + 896);
    v4 = *(v2 + 888);
    v5 = sub_2740FA500;
  }

  else
  {
    sub_27409D420(v2 + 576, &qword_280937FB8, &unk_2741D0410);
    v5 = sub_2740FA35C;
    v4 = 0;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2740FA35C(uint64_t a1)
{
  *(v1 + 952) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740FA3E8, v3, v2);
}

uint64_t sub_2740FA3E8()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[106];

  sub_2740F40BC(v1);
  sub_2741C6DAC();
  (*(v2 + 8))(v1, v3);
  v4 = v0[112];
  v5 = v0[111];

  return MEMORY[0x2822009F8](sub_2740FA490, v5, v4);
}

uint64_t sub_2740FA490()
{

  sub_2740ACB2C(v0 + 120);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2740FA500()
{
  v1 = v0;
  v2 = *(v0 + 944);
  v3 = *(v0 + 912);
  v4 = *(v0 + 118);

  sub_2740ACB2C(v0 + 120);
  sub_27409D420(v0 + 576, &qword_280937FB8, &unk_2741D0410);
  sub_2741C856C();
  *(v0 + 768) = 0;
  *(v0 + 776) = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741D8D40);
  *(v0 + 832) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  sub_2740CB218(*(v1 + 768), *(v1 + 776), 0xD000000000000010, 0x80000002741D8D60);

  *(v0 + 113) = 0;
  *(v0 + 784) = v4;
  *(v0 + 792) = v3;
  sub_2741C7A4C();
  *(v0 + 816) = v2;
  v5 = v2;
  if (swift_dynamicCast())
  {
    v31 = *(v0 + 944);
    v6 = *(v0 + 904);
    v7 = *(v0 + 440);
    v8 = *(v1 + 448);
    v29 = *(v1 + 440);
    v30 = *(v1 + 840);
    v9 = *(v1 + 456);
    v10 = *(v1 + 464);
    v11 = *(v1 + 472);
    v12 = *(v1 + 480);
    *(v1 + 640) = &type metadata for WiFiAssociationError;
    v13 = *(v1 + 488);
    *(v1 + 648) = sub_2740A6654();
    v14 = swift_allocObject();
    *(v1 + 616) = v14;
    *(v14 + 16) = v7;
    *(v14 + 24) = v8;
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    *(v14 + 48) = v11;
    *(v14 + 56) = v12;
    *(v14 + 64) = v13;
    sub_2740A6D94(v1 + 616, v1 + 536, &qword_280937E78, &qword_2741D81E0);
    sub_2740A6800(v7, v8, v9, v10, v11, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v1 + 616, &qword_280937E78, &qword_2741D81E0);
    v15 = (v30 + *(v6 + 36));
    v16 = *v15;
    v17 = *(v15 + 1);
    *(v1 + 117) = 1;
    *(v1 + 720) = v16;
    *(v1 + 728) = v17;

    sub_2741C7A4C();
    sub_2740A66EC(v29, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v18 = *(v0 + 944);
    *(v0 + 824) = v18;
    v19 = v18;
    v20 = swift_dynamicCast();
    v21 = *(v0 + 944);
    if (v20)
    {
      v22 = *(v0 + 904);
      v23 = *(v0 + 840);
      sub_2740A6040(v0 + 384, v0 + 328);
      *(v0 + 520) = &type metadata for WiFiEnterpriseAssociationError;
      *(v0 + 528) = sub_2740A65B8();
      v24 = swift_allocObject();
      *(v0 + 496) = v24;
      sub_2740A609C(v0 + 328, v24 + 16);
      sub_2740A6D94(v0 + 496, v0 + 656, &qword_280937E78, &qword_2741D81E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
      sub_2741C7A4C();
      sub_27409D420(v0 + 496, &qword_280937E78, &qword_2741D81E0);
      v25 = v23 + *(v22 + 40);
      v26 = *(v25 + 8);
      *(v0 + 800) = *v25;
      *(v0 + 808) = v26;
      *(v0 + 114) = 1;

      sub_2741C7A4C();

      sub_2740A61EC(v0 + 328);
    }

    else
    {

      *(v0 + 384) = 1;
      *(v0 + 392) = 0u;
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      sub_27409D420(v0 + 384, &qword_280937FA8, &unk_2741D03F0);
    }
  }

  v27 = *(v1 + 8);

  return v27();
}

uint64_t sub_2740FA984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740FBB24(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);
  return result;
}

uint64_t type metadata accessor for EnterpriseURLCredentialsPromptView(uint64_t a1)
{
  result = qword_280939680;
  if (!qword_280939680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740FAAAC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_2740FAB78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939678, &qword_2741D02B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740FAC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2740FAD60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48) + 8) = (a2 - 1);
  }

  return result;
}

void sub_2740FAE2C(uint64_t a1)
{
  sub_2740FB0B8(319, &qword_280939690, &qword_280939698, &unk_2741D0328, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2740FB11C(319, &qword_2809396A0, &type metadata for ScannedNetwork, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2740FB16C(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2740FB16C(319, &qword_280937EB0, type metadata accessor for AssociationModel, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2740FB11C(319, &qword_280937EC8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_2740FB0B8(319, &qword_280937ED0, &qword_280937E78, &qword_2741D81E0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_2740FB11C(319, &qword_280939450, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_2740FB16C(319, &qword_280937EC0, type metadata accessor for AssociationCredentials, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_2740A5850(319);
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

void sub_2740FB0B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2740FB11C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2740FB16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2740FB1EC()
{
  result = qword_2809396C8;
  if (!qword_2809396C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396B0, &qword_2741D0390);
    sub_2740A6D24(&qword_2809396D0, &qword_2809396D8, &qword_2741D03B0, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809396C8);
  }

  return result;
}

uint64_t sub_2740FB2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740FB310()
{
  v1 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v5 = v0 + v3;
  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  }

  if (*(v5 + 48))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 96));
  }

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2741C6DBC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 44) + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + *(v1 + 44)));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740FB500()
{
  v1 = *(type metadata accessor for EnterpriseURLCredentialsPromptView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_2740F92F0((v0 + 16), v2);
}

uint64_t sub_2740FB580(char a1)
{
  v3 = *(type metadata accessor for EnterpriseURLCredentialsPromptView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2740F997C(a1, v4);
}

uint64_t sub_2740FB5F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B8, &qword_2741D0398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v5 = (v3 + 56) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

double sub_2740FB6E0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B8, &qword_2741D0398) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2741A885C(v1 + 16, *v4, v4[1], v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_2740FB7A4(uint64_t a1)
{
  v4 = *(type metadata accessor for EnterpriseURLCredentialsPromptView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_2740F9D90(a1, v6, v7, v1 + v5);
}

uint64_t sub_2740FB894()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2740FB8DC()
{
  sub_2740A66EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2740FB9B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EnterpriseURLCredentialsPromptView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2740FBA2C()
{
  result = qword_280939798;
  if (!qword_280939798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939788, &unk_2741D0500);
    sub_2740C51B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939798);
  }

  return result;
}

unint64_t sub_2740FBAC0()
{
  result = qword_2809397C0;
  if (!qword_2809397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809397C0);
  }

  return result;
}

uint64_t sub_2740FBB24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2740FBB6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380C8, &qword_2741CB848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740FBC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2740FBC6C(uint64_t a1)
{
  v2 = type metadata accessor for EnterpriseIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  }

  if (*(v5 + 48))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 96));
  }

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2741C6DBC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 44) + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + *(v1 + 44)));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for EnterpriseURLCredentialsPromptView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  }

  if (*(v5 + 48))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 96));
  }

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2741C6DBC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 44) + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + *(v1 + 44)));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}