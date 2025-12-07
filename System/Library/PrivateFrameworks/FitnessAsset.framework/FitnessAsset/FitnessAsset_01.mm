uint64_t type metadata accessor for MonogramAction(uint64_t a1)
{
  result = qword_27C7BB2F0;
  if (!qword_27C7BB2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C41F5EC()
{
  result = qword_27C7BB280;
  if (!qword_27C7BB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB280);
  }

  return result;
}

uint64_t sub_20C41F640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C41F6A4()
{
  result = qword_27C7BB288;
  if (!qword_27C7BB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB288);
  }

  return result;
}

uint64_t sub_20C41F6F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C41F768()
{
  result = qword_27C7BB290;
  if (!qword_27C7BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB290);
  }

  return result;
}

uint64_t sub_20C41F7BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Monogram(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C41F800()
{
  result = qword_27C7BB2B0;
  if (!qword_27C7BB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB2B0);
  }

  return result;
}

unint64_t sub_20C41F854()
{
  result = qword_27C7BB2B8;
  if (!qword_27C7BB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB2B8);
  }

  return result;
}

uint64_t sub_20C41F8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C41F910()
{
  result = qword_27C7BB2C0;
  if (!qword_27C7BB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB2C0);
  }

  return result;
}

uint64_t MonogramAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB2C8, &qword_20C462D58);
  v53 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v52 = &v42 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB2D0, &qword_20C462D60);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB2D8, &qword_20C462D68);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB2E0, &unk_20C462D70);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for MonogramAction(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_20C41F5EC();
  v17 = v56;
  sub_20C4609B0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v56 = v10;
  v19 = v50;
  v18 = v51;
  v43 = v12;
  v44 = v15;
  v20 = v52;
  v21 = v53;
  v45 = 0;
  v22 = v54;
  v23 = sub_20C460850();
  v24 = (2 * *(v23 + 16)) | 1;
  v58 = v23;
  v59 = v23 + 32;
  v60 = 0;
  v61 = v24;
  v25 = sub_20C41ED38();
  if (v25 != 3 && v60 == v61 >> 1)
  {
    if (v25)
    {
      v26 = v55;
      if (v25 == 1)
      {
        v62 = 1;
        sub_20C41F768();
        v27 = v18;
        v28 = v45;
        sub_20C4607F0();
        if (!v28)
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
          sub_20C420144(&qword_27C7BB2E8, MEMORY[0x277D0A930]);
          v30 = v43;
          v31 = v47;
          sub_20C460840();
          (*(v49 + 8))(v27, v31);
          (*(v26 + 8))(v9, v7);
          swift_unknownObjectRelease();
          (*(*(v29 - 8) + 56))(v30, 0, 2, v29);
          v32 = v44;
          sub_20C4200E0(v30, v44);
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v62 = 2;
      sub_20C41F6A4();
      v39 = v45;
      sub_20C4607F0();
      if (v39)
      {
LABEL_16:
        (*(v26 + 8))(v9, v7);
        goto LABEL_10;
      }

      (*(v21 + 8))(v20, v48);
      (*(v26 + 8))(v9, v7);
      swift_unknownObjectRelease();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
      v32 = v44;
      (*(*(v41 - 8) + 56))(v44, 2, 2, v41);
    }

    else
    {
      v62 = 0;
      sub_20C41F910();
      v37 = v45;
      sub_20C4607F0();
      v38 = v55;
      if (v37)
      {
        (*(v55 + 8))(v9, v7);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v57);
      }

      (*(v19 + 8))(v6, v46);
      (*(v38 + 8))(v9, v7);
      swift_unknownObjectRelease();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
      v32 = v44;
      (*(*(v40 - 8) + 56))(v44, 1, 2, v40);
    }

LABEL_19:
    sub_20C4200E0(v32, v22);
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v33 = sub_20C460770();
  swift_allocError();
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670);
  *v35 = v56;
  sub_20C460800();
  sub_20C460760();
  (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
  swift_willThrow();
  (*(v55 + 8))(v9, v7);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_20C4200E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C420144(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB268, &qword_20C462D40);
    sub_20C41F7BC(&qword_27C7BB2A0, &protocol conformance descriptor for Monogram);
    sub_20C41F7BC(&qword_27C7BB2A8, &protocol conformance descriptor for Monogram);
    sub_20C41F800();
    sub_20C41F854();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C420268(uint64_t a1)
{
  sub_20C4202C0(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_20C4202C0(uint64_t a1)
{
  if (!qword_28110B3B8)
  {
    type metadata accessor for Monogram(255);
    sub_20C4139F0();
    v1 = sub_20C460980();
    if (!v2)
    {
      atomic_store(v1, &qword_28110B3B8);
    }
  }
}

unint64_t sub_20C420370()
{
  result = qword_27C7BB300;
  if (!qword_27C7BB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB300);
  }

  return result;
}

unint64_t sub_20C4203C8()
{
  result = qword_27C7BB308;
  if (!qword_27C7BB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB308);
  }

  return result;
}

unint64_t sub_20C420420()
{
  result = qword_27C7BB310;
  if (!qword_27C7BB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB310);
  }

  return result;
}

unint64_t sub_20C420478()
{
  result = qword_27C7BB318;
  if (!qword_27C7BB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB318);
  }

  return result;
}

unint64_t sub_20C4204D0()
{
  result = qword_27C7BB320;
  if (!qword_27C7BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB320);
  }

  return result;
}

unint64_t sub_20C420528()
{
  result = qword_27C7BB328;
  if (!qword_27C7BB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB328);
  }

  return result;
}

unint64_t sub_20C420580()
{
  result = qword_27C7BB330;
  if (!qword_27C7BB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB330);
  }

  return result;
}

unint64_t sub_20C4205D8()
{
  result = qword_27C7BB338;
  if (!qword_27C7BB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB338);
  }

  return result;
}

unint64_t sub_20C420630()
{
  result = qword_27C7BB340;
  if (!qword_27C7BB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB340);
  }

  return result;
}

unint64_t sub_20C420688()
{
  result = qword_27C7BB348;
  if (!qword_27C7BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB348);
  }

  return result;
}

uint64_t sub_20C4206DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6546726174617661 && a2 == 0xED00006465686374 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6176416863746566 && a2 == 0xEB00000000726174)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t sub_20C420818(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_20C420884(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_20C420954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C4608D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C4209E4(uint64_t a1)
{
  v2 = sub_20C420BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C420A20(uint64_t a1)
{
  v2 = sub_20C420BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonogramState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB350, &qword_20C4631B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C420BC0();
  sub_20C4609C0();
  type metadata accessor for MonogramLoadState(0);
  sub_20C420EC0(&qword_27C7BB360, &protocol conformance descriptor for MonogramLoadState);
  sub_20C4608B0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_20C420BC0()
{
  result = qword_27C7BB358;
  if (!qword_27C7BB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB358);
  }

  return result;
}

uint64_t MonogramState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  State = type metadata accessor for MonogramLoadState(0);
  MEMORY[0x28223BE20](State);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB368, &qword_20C4631C0);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for MonogramState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C420BC0();
  sub_20C4609B0();
  if (!v2)
  {
    v12 = v16;
    sub_20C420EC0(&qword_27C7BB370, &protocol conformance descriptor for MonogramLoadState);
    v13 = v17;
    sub_20C460840();
    (*(v15 + 8))(v8, v6);
    sub_20C420F04(v13, v11, type metadata accessor for MonogramLoadState);
    sub_20C420F04(v11, v12, type metadata accessor for MonogramState);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MonogramState(uint64_t a1)
{
  result = qword_27C7BB378;
  if (!qword_27C7BB378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C420EC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MonogramLoadState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C420F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C420F84(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB350, &qword_20C4631B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C420BC0();
  sub_20C4609C0();
  type metadata accessor for MonogramLoadState(0);
  sub_20C420EC0(&qword_27C7BB360, &protocol conformance descriptor for MonogramLoadState);
  sub_20C4608B0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20C421118(uint64_t a1)
{
  result = type metadata accessor for MonogramLoadState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20C421198()
{
  result = qword_27C7BB388;
  if (!qword_27C7BB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB388);
  }

  return result;
}

unint64_t sub_20C4211F0()
{
  result = qword_27C7BB390;
  if (!qword_27C7BB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB390);
  }

  return result;
}

unint64_t sub_20C421248()
{
  result = qword_27C7BB398;
  if (!qword_27C7BB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB398);
  }

  return result;
}

unint64_t sub_20C4212B0()
{
  v1 = 0x656D614E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x41676E697373696DLL;
  }
}

uint64_t sub_20C421318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C4223B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C421340(uint64_t a1)
{
  v2 = sub_20C42188C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42137C(uint64_t a1)
{
  v2 = sub_20C42188C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C4213B8(uint64_t a1)
{
  v2 = sub_20C421988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C4213F4(uint64_t a1)
{
  v2 = sub_20C421988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C421430(uint64_t a1)
{
  v2 = sub_20C421934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42146C(uint64_t a1)
{
  v2 = sub_20C421934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C4214A8(uint64_t a1)
{
  v2 = sub_20C4218E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C4214E4(uint64_t a1)
{
  v2 = sub_20C4218E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonogramError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3A0, &qword_20C463370);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3A8, &qword_20C463378);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3B0, &qword_20C463380);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3B8, &qword_20C463388);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C42188C();
  sub_20C4609C0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_20C421934();
      v9 = v21;
      sub_20C460870();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_20C4218E0();
      v9 = v24;
      sub_20C460870();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_20C421988();
    sub_20C460870();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_20C42188C()
{
  result = qword_27C7BB3C0;
  if (!qword_27C7BB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB3C0);
  }

  return result;
}

unint64_t sub_20C4218E0()
{
  result = qword_27C7BB3C8;
  if (!qword_27C7BB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB3C8);
  }

  return result;
}

unint64_t sub_20C421934()
{
  result = qword_27C7BB3D0;
  if (!qword_27C7BB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB3D0);
  }

  return result;
}

unint64_t sub_20C421988()
{
  result = qword_27C7BB3D8;
  if (!qword_27C7BB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB3D8);
  }

  return result;
}

uint64_t MonogramError.hashValue.getter()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

uint64_t MonogramError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3E0, &qword_20C463390);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3E8, &qword_20C463398);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3F0, &qword_20C4633A0);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3F8, &unk_20C4633A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C42188C();
  v15 = v36;
  sub_20C4609B0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_20C460850();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_20C41ED38();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_20C460770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670);
      *v24 = &type metadata for MonogramError;
      sub_20C460800();
      sub_20C460760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_20C421934();
          sub_20C4607F0();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_20C4218E0();
          v26 = v17;
          sub_20C4607F0();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_20C421988();
        sub_20C4607F0();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_20C422004()
{
  result = qword_27C7BB400;
  if (!qword_27C7BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB400);
  }

  return result;
}

unint64_t sub_20C42209C()
{
  result = qword_27C7BB408;
  if (!qword_27C7BB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB408);
  }

  return result;
}

unint64_t sub_20C4220F4()
{
  result = qword_27C7BB410;
  if (!qword_27C7BB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB410);
  }

  return result;
}

unint64_t sub_20C42214C()
{
  result = qword_27C7BB418;
  if (!qword_27C7BB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB418);
  }

  return result;
}

unint64_t sub_20C4221A4()
{
  result = qword_27C7BB420;
  if (!qword_27C7BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB420);
  }

  return result;
}

unint64_t sub_20C4221FC()
{
  result = qword_27C7BB428;
  if (!qword_27C7BB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB428);
  }

  return result;
}

unint64_t sub_20C422254()
{
  result = qword_27C7BB430;
  if (!qword_27C7BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB430);
  }

  return result;
}

unint64_t sub_20C4222AC()
{
  result = qword_27C7BB438;
  if (!qword_27C7BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB438);
  }

  return result;
}

unint64_t sub_20C422304()
{
  result = qword_27C7BB440;
  if (!qword_27C7BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB440);
  }

  return result;
}

unint64_t sub_20C42235C()
{
  result = qword_27C7BB448;
  if (!qword_27C7BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB448);
  }

  return result;
}

uint64_t sub_20C4223B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x41676E697373696DLL && a2 == 0xEE0044495344746CLL;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6F6ELL && a2 == 0xE600000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C467730 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

double DynamicImageAssetLocalState.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_20C422500()
{
  if (*v0)
  {
    return 0x657A695377656976;
  }

  else
  {
    return 0x79654B6568636163;
  }
}

uint64_t sub_20C422534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B6568636163 && a2 == 0xE800000000000000;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657A695377656976 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C422610(uint64_t a1)
{
  v2 = sub_20C422900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42264C(uint64_t a1)
{
  v2 = sub_20C422900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicImageAssetLocalState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB450, &unk_20C463860);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = v1[3];
  v28 = v1[2];
  v29 = v7;
  v30 = v1[4];
  v8 = v1[1];
  v26 = *v1;
  v27 = v8;
  v9 = *(v1 + 10);
  v13 = *(v1 + 11);
  v14 = v9;
  v12 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40B904(&v26, &v21);
  sub_20C422900();
  sub_20C4609C0();
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;
  v21 = v26;
  v20 = 0;
  sub_20C40B974();
  sub_20C460880();
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[0] = v21;
  v19[1] = v22;
  sub_20C40B440(v19, &qword_27C7BAC68, &unk_20C464890);
  if (!v2)
  {
    v16 = v14;
    v17 = v13;
    v18 = v12;
    v15 = 1;
    type metadata accessor for CGSize();
    sub_20C40BDA0(&qword_28110B3E0, MEMORY[0x277CBF288]);
    sub_20C460880();
  }

  return (*(v31 + 8))(v6, v4);
}

unint64_t sub_20C422900()
{
  result = qword_27C7BB458;
  if (!qword_27C7BB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB458);
  }

  return result;
}

uint64_t DynamicImageAssetLocalState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB460, &qword_20C463870);
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v17 - v6;
  v54 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C422900();
  sub_20C4609B0();
  if (v2)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = v22;
    v46 = v21;
    v47 = v24;
    v48 = v23;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = v54;
  }

  else
  {
    v19 = v5;
    v56 = 0;
    sub_20C40BDE4();
    v8 = v20;
    sub_20C460810();
    v17 = v35;
    v18 = v36;
    v21 = v38;
    v22 = v37;
    v23 = v40;
    v24 = v39;
    v11 = v41;
    v10 = v42;
    memset(v34, 0, sizeof(v34));
    sub_20C40B440(v34, &qword_27C7BAC68, &unk_20C464890);
    type metadata accessor for CGSize();
    v55 = 1;
    sub_20C40BDA0(&qword_27C7BAC78, MEMORY[0x277CBF2A0]);
    sub_20C460810();
    (*(v19 + 8))(v7, v8);
    v19 = *(&v32 + 1);
    v20 = v32;
    LOBYTE(v8) = v33;
    v54 = v33;
    v25 = v17;
    v26 = v18;
    v13 = v21;
    v12 = v22;
    *&v27 = v22;
    *(&v27 + 1) = v21;
    *&v28 = v24;
    *(&v28 + 1) = v23;
    *&v29 = v11;
    *(&v29 + 1) = v10;
    v30 = v32;
    v31 = v33;
    *(a2 + 96) = v33;
    v14 = v26;
    *a2 = v25;
    *(a2 + 16) = v14;
    v15 = v28;
    *(a2 + 32) = v27;
    *(a2 + 48) = v15;
    v16 = v30;
    *(a2 + 64) = v29;
    *(a2 + 80) = v16;
    sub_20C422CE8(&v25, &v43);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v43 = v17;
    v44 = v18;
    v45 = v12;
    v46 = v13;
    v47 = v24;
    v48 = v23;
    v49 = v11;
    v50 = v10;
    v51 = v20;
    v52 = v19;
    v53 = v8;
  }

  return sub_20C422CB8(&v43);
}

uint64_t DynamicImageAssetLocalState.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 10);
  v5 = *(v1 + 11);
  v6 = *(v1 + 96);
  if (v3)
  {
    v8 = *v1;
    *&v9[8] = *(v1 + 24);
    *&v9[24] = *(v1 + 40);
    *&v9[40] = *(v1 + 56);
    *&v9[56] = *(v1 + 9);
    *v9 = *(v1 + 2);
    sub_20C460950();
    v10 = *v1;
    v11 = v3;
    v12 = *(v1 + 24);
    v13 = *(v1 + 40);
    v14 = *(v1 + 56);
    v15 = *(v1 + 9);
    sub_20C40C520(&v10, v16);
    ImageAssetCacheKey.hash(into:)(a1);
    v16[2] = *&v9[16];
    v16[3] = *&v9[32];
    v16[4] = *&v9[48];
    v16[0] = v8;
    v16[1] = *v9;
    sub_20C40C57C(v16);
    if (v6)
    {
      return sub_20C460950();
    }
  }

  else
  {
    sub_20C460950();
    if (v6)
    {
      return sub_20C460950();
    }
  }

  sub_20C460950();
  return sub_20C40C1A4(v4, v5);
}

uint64_t DynamicImageAssetLocalState.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  v4 = *(v0 + 96);
  sub_20C460930();
  if (!v1)
  {
    sub_20C460950();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C460950();
    sub_20C40C1A4(v2, v3);
    return sub_20C460970();
  }

  v11 = *v0;
  *v12 = v1;
  *&v12[8] = *(v0 + 24);
  *&v12[24] = *(v0 + 40);
  *&v12[40] = *(v0 + 56);
  *&v12[56] = *(v0 + 9);
  v6 = v11;
  v7 = *v12;
  v8 = *&v12[16];
  v9 = *&v12[32];
  v10 = *&v12[48];
  sub_20C460950();
  sub_20C40C520(&v11, v13);
  ImageAssetCacheKey.hash(into:)(v14);
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v13[0] = v6;
  v13[1] = v7;
  sub_20C40C57C(v13);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C460950();
  return sub_20C460970();
}

uint64_t sub_20C422F9C()
{
  sub_20C460930();
  DynamicImageAssetLocalState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C422FE0(uint64_t a1)
{
  sub_20C460930();
  DynamicImageAssetLocalState.hash(into:)(v2);
  return sub_20C460970();
}

BOOL _s12FitnessAsset012DynamicImageB10LocalStateV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v47 = a1[2];
  v48 = v4;
  v49 = a1[4];
  v5 = a1[1];
  v45 = *a1;
  v46 = v5;
  v7 = *(a1 + 10);
  v6 = *(a1 + 11);
  v8 = *(a1 + 96);
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[1];
  v50[0] = *a2;
  v50[1] = v12;
  v50[3] = v10;
  v50[4] = v11;
  v50[2] = v9;
  v14 = *(a2 + 10);
  v13 = *(a2 + 11);
  v15 = *(a2 + 96);
  v16 = v46;
  v17 = v12;
  if (v46)
  {
    v37 = *a1;
    *&v38[8] = *(a1 + 24);
    *&v38[24] = *(a1 + 40);
    *&v38[40] = *(a1 + 56);
    v18 = *(a1 + 9);
    *v38 = v46;
    *&v38[56] = v18;
    v32 = v37;
    v33 = *v38;
    v34 = *&v38[16];
    v35 = *&v38[32];
    v36 = *&v38[48];
    if (v12)
    {
      v30 = *a2;
      *&v31[8] = *(a2 + 24);
      *&v31[24] = *(a2 + 40);
      *&v31[40] = *(a2 + 56);
      *&v31[56] = *(a2 + 9);
      *v31 = v12;
      v19 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v32, &v30);
      v28[2] = *&v31[16];
      v28[3] = *&v31[32];
      v28[4] = *&v31[48];
      v28[0] = v30;
      v28[1] = *v31;
      sub_20C40B904(&v45, v29);
      sub_20C40B904(v50, v29);
      sub_20C40B904(&v37, v29);
      sub_20C40C57C(v28);
      v29[2] = v34;
      v29[3] = v35;
      v29[4] = v36;
      v29[0] = v32;
      v29[1] = v33;
      sub_20C40C57C(v29);
      v30 = *a1;
      *&v31[8] = *(a1 + 24);
      *&v31[24] = *(a1 + 40);
      *&v31[40] = *(a1 + 56);
      v20 = *(a1 + 9);
      *v31 = v16;
      *&v31[56] = v20;
      sub_20C40B440(&v30, &qword_27C7BAC68, &unk_20C464890);
      if (!v19)
      {
        return 0;
      }

      if (v8)
      {
        return (v15 & 1) != 0;
      }

      return (v15 & 1) == 0 && v7 == v14 && v6 == v13;
    }

    *&v31[16] = *&v38[16];
    *&v31[32] = *&v38[32];
    *&v31[48] = *&v38[48];
    v30 = v37;
    *v31 = *v38;
    sub_20C40B904(&v45, v29);
    sub_20C40B904(v50, v29);
    sub_20C40B904(&v37, v29);
    sub_20C40C57C(&v30);
LABEL_10:
    v37 = *a1;
    *&v38[8] = *(a1 + 24);
    *&v38[24] = *(a1 + 40);
    *&v38[40] = *(a1 + 56);
    v21 = *(a1 + 9);
    *v38 = v16;
    *&v38[56] = v21;
    v39 = *a2;
    v22 = *(a2 + 24);
    v23 = *(a2 + 40);
    v24 = *(a2 + 56);
    v25 = *(a2 + 9);
    v40 = v17;
    v44 = v25;
    v43 = v24;
    v42 = v23;
    v41 = v22;
    sub_20C40B440(&v37, &qword_27C7BACA0, &qword_20C463AC0);
    return 0;
  }

  if (v12)
  {
    sub_20C40B904(&v45, &v37);
    sub_20C40B904(v50, &v37);
    goto LABEL_10;
  }

  v37 = *a1;
  *&v38[8] = *(a1 + 24);
  *&v38[24] = *(a1 + 40);
  *&v38[40] = *(a1 + 56);
  v27 = *(a1 + 9);
  *v38 = 0;
  *&v38[56] = v27;
  sub_20C40B904(&v45, &v32);
  sub_20C40B904(v50, &v32);
  sub_20C40B440(&v37, &qword_27C7BAC68, &unk_20C464890);
  if ((v8 & 1) == 0)
  {
    return (v15 & 1) == 0 && v7 == v14 && v6 == v13;
  }

  return (v15 & 1) != 0;
}

unint64_t sub_20C423360()
{
  result = qword_27C7BB468;
  if (!qword_27C7BB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB468);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20C4233E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20C42343C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_20C4234D0()
{
  result = qword_27C7BB470;
  if (!qword_27C7BB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB470);
  }

  return result;
}

unint64_t sub_20C423528()
{
  result = qword_27C7BB478;
  if (!qword_27C7BB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB478);
  }

  return result;
}

unint64_t sub_20C423580()
{
  result = qword_27C7BB480;
  if (!qword_27C7BB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB480);
  }

  return result;
}

void sub_20C4235D4()
{
  qword_27C7C40A0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v0 = qword_27C7C40A0;
  [v0 setCountLimit_];
  [v0 baf:0 setEvictsObjectsWhenApplicationEntersBackground:?];
}

uint64_t MonogramFeature.init(environment:fetcher:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = a1[2];
  return sub_20C423670(a2, (a3 + 3));
}

uint64_t sub_20C423670(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t MonogramFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v126 = a4;
  v127 = a2;
  v124 = a3;
  v119 = a1;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB488, &qword_20C463AD0);
  v125 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v5 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v121 = &v110 - v7;
  MEMORY[0x28223BE20](v8);
  v120 = &v110 - v9;
  v118 = sub_20C45FC90();
  v117 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v115 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v110 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v110 - v21;
  State = type metadata accessor for MonogramLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v110 - v27;
  v29 = type metadata accessor for MonogramAction(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v110 - v33;
  sub_20C42701C(v126, &v110 - v33, type metadata accessor for MonogramAction);
  v126 = v14;
  v35 = (*(v14 + 48))(v34, 2, v13);
  if (!v35)
  {
    sub_20C41F6F8(v34, v16);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
    sub_20C4243BC(v16, v25);
    sub_20C45FC80();
    sub_20C40B440(v16, &qword_27C7BB268, &qword_20C462D40);
    (*(*(v81 - 8) + 56))(v25, 0, 2, v81);
    return sub_20C420884(v25, v127);
  }

  if (v35 == 1)
  {
    v36 = v127;
    sub_20C42701C(v127, v28, type metadata accessor for MonogramLoadState);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
    result = (*(*(v37 - 8) + 48))(v28, 2, v37);
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      goto LABEL_5;
    }

    v101 = *(v37 + 48);
    sub_20C41F6F8(v28, v22);
    v102 = v117;
    v103 = &v28[v101];
    v104 = v116;
    v105 = v118;
    (*(v117 + 32))(v116, v103, v118);
    sub_20C4243BC(v22, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v102 + 8))(v104, v105);
      sub_20C40B440(v22, &qword_27C7BB268, &qword_20C462D40);
      return sub_20C40B440(v19, &qword_27C7BB268, &qword_20C462D40);
    }

    v106 = v115;
    sub_20C45FC80();
    sub_20C45FC60();
    v108 = v107;
    v109 = *(v102 + 8);
    v109(v106, v105);
    v109(v104, v105);
    result = sub_20C40B440(v22, &qword_27C7BB268, &qword_20C462D40);
    if (v108 > 600.0)
    {
LABEL_5:
      (*(v126 + 56))(v31, 2, 2, v13);
      v39 = v36;
      v40 = v124;
      v41 = v122;
      MonogramFeature.reduce(localState:sharedState:sideEffects:action:)(v119, v39, v124, v31);
      sub_20C427084(v31, type metadata accessor for MonogramAction);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
      v43 = v42[16];
      v44 = v42[20];
      v45 = v120;
      v46 = &v120[v42[24]];
      LOBYTE(v128) = 1;
      v127 = sub_20C42442C();
      sub_20C460720();
      v47 = *MEMORY[0x277D043F0];
      v48 = sub_20C460410();
      v49 = *(v48 - 8);
      v50 = *(v49 + 104);
      LODWORD(v126) = v47;
      v119 = v48;
      v118 = v50;
      v117 = v49 + 104;
      (v50)(&v45[v43], v47);
      v51 = *MEMORY[0x277D043E0];
      v52 = sub_20C460400();
      v53 = *(v52 - 8);
      v54 = *(v53 + 104);
      LODWORD(v116) = v51;
      v115 = v52;
      v114 = v54;
      v113 = v53 + 104;
      (v54)(&v45[v44], v51);
      sub_20C4267F4(v41, &v128);
      v55 = swift_allocObject();
      v56 = v131;
      *(v55 + 48) = v130;
      *(v55 + 64) = v56;
      *(v55 + 80) = v132;
      *(v55 + 96) = v133;
      v57 = v129;
      *(v55 + 16) = v128;
      *(v55 + 32) = v57;
      *v46 = &unk_20C463AF8;
      *(v46 + 1) = v55;
      sub_20C4605F0();
      v58 = v125;
      v59 = *(v125 + 104);
      v112 = *MEMORY[0x277D043B0];
      v60 = v123;
      v111 = v59;
      v59(v45);
      v61 = *v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_20C426D44(0, *(v61 + 2) + 1, 1, v61, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
      }

      v63 = *(v61 + 2);
      v62 = *(v61 + 3);
      if (v63 >= v62 >> 1)
      {
        v61 = sub_20C426D44((v62 > 1), v63 + 1, 1, v61, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
      }

      *(v61 + 2) = v63 + 1;
      v66 = *(v58 + 32);
      v65 = v58 + 32;
      v64 = v66;
      v67 = (*(v65 + 48) + 32) & ~*(v65 + 48);
      v68 = *(v65 + 40);
      v125 = v65;
      v66(&v61[v67 + v68 * v63], v120, v60);
      v69 = v42[16];
      v70 = v42[20];
      v71 = v121;
      v72 = &v121[v42[24]];
      LOBYTE(v128) = 2;
      sub_20C460720();
      (v118)(&v71[v69], v126, v119);
      v73 = &v71[v70];
      v74 = v123;
      v114(v73, v116, v115);
      sub_20C4267F4(v122, &v128);
      v75 = swift_allocObject();
      v76 = v131;
      *(v75 + 48) = v130;
      *(v75 + 64) = v76;
      *(v75 + 80) = v132;
      *(v75 + 96) = v133;
      v77 = v129;
      *(v75 + 16) = v128;
      *(v75 + 32) = v77;
      *v72 = &unk_20C463B08;
      *(v72 + 1) = v75;
      sub_20C4605F0();
      v111(v71, v112, v74);
      v79 = *(v61 + 2);
      v78 = *(v61 + 3);
      if (v79 >= v78 >> 1)
      {
        v61 = sub_20C426D44((v78 > 1), v79 + 1, 1, v61, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
      }

      *(v61 + 2) = v79 + 1;
      v80 = v124;
      result = v64(&v61[v67 + v79 * v68], v121, v74);
      *v80 = v61;
    }
  }

  else
  {
    v82 = v127;
    sub_20C427084(v127, type metadata accessor for MonogramLoadState);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
    (*(*(v83 - 8) + 56))(v82, 2, 2, v83);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
    v85 = v84[16];
    v86 = v84[20];
    v87 = &v5[v84[24]];
    LOBYTE(v128) = 0;
    sub_20C42442C();
    sub_20C460720();
    v88 = *MEMORY[0x277D04400];
    v89 = sub_20C460410();
    (*(*(v89 - 8) + 104))(&v5[v85], v88, v89);
    sub_20C4267F4(v122, &v128);
    v90 = swift_allocObject();
    v91 = v131;
    *(v90 + 48) = v130;
    *(v90 + 64) = v91;
    *(v90 + 80) = v132;
    *(v90 + 96) = v133;
    v92 = v129;
    *(v90 + 16) = v128;
    *(v90 + 32) = v92;
    *v87 = &unk_20C463AE8;
    *(v87 + 1) = v90;
    sub_20C4605F0();
    v93 = *MEMORY[0x277D043E8];
    v94 = sub_20C460400();
    (*(*(v94 - 8) + 104))(&v5[v86], v93, v94);
    v95 = v125;
    v96 = v123;
    (*(v125 + 104))(v5, *MEMORY[0x277D043B0], v123);
    v97 = v124;
    v98 = *v124;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_20C426D44(0, v98[2] + 1, 1, v98, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
    }

    v100 = v98[2];
    v99 = v98[3];
    if (v100 >= v99 >> 1)
    {
      v98 = sub_20C426D44((v99 > 1), v100 + 1, 1, v98, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
    }

    v98[2] = v100 + 1;
    result = (*(v95 + 32))(v98 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v100, v5, v96);
    *v97 = v98;
  }

  return result;
}

uint64_t sub_20C4243BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C42442C()
{
  result = qword_27C7BB4A0;
  if (!qword_27C7BB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB4A0);
  }

  return result;
}

uint64_t sub_20C424480(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MonogramAction(0);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4F0, &qword_20C463C60);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4F8, &qword_20C463C68);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = sub_20C4605E0();
  v2[12] = sub_20C4605D0();
  v6 = sub_20C4605A0();
  v2[13] = v6;
  v2[14] = v5;

  return MEMORY[0x2822009F8](sub_20C424618, v6, v5);
}

uint64_t sub_20C424618()
{
  v4 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_20C42470C;
  v2 = v0[7];

  return v4(v2);
}

uint64_t sub_20C42470C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_20C42482C, v3, v2);
}

uint64_t sub_20C42482C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_20C460600();
  (*(v2 + 8))(v1, v3);
  v4 = sub_20C4605D0();
  v0[16] = v4;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_20C42491C;
  v6 = v0[8];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 19, v4, v7, v6);
}

uint64_t sub_20C42491C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_20C424A60, v3, v2);
}

uint64_t sub_20C424A60()
{
  if (*(v0 + 152) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 32);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
    (*(*(v4 - 8) + 56))(v3, 2, 2, v4);
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
    *v5 = v0;
    v5[1] = sub_20C424BF4;
    v7 = *(v0 + 32);

    return MEMORY[0x282159B08](v7, v6);
  }
}

uint64_t sub_20C424BF4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_20C427084(v2, type metadata accessor for MonogramAction);
  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_20C424D4C, v4, v3);
}

uint64_t sub_20C424D4C(uint64_t a1)
{
  v2 = sub_20C4605D0();
  v1[16] = v2;
  v3 = swift_task_alloc();
  v1[17] = v3;
  *v3 = v1;
  v3[1] = sub_20C42491C;
  v4 = v1[8];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v1 + 19, v2, v5, v4);
}

uint64_t sub_20C424E08(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  type metadata accessor for MonogramAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_20C4605E0();
  v2[16] = sub_20C4605D0();
  v4 = sub_20C4605A0();
  v2[17] = v4;
  v2[18] = v3;

  return MEMORY[0x2822009F8](sub_20C424ED0, v4, v3);
}

uint64_t sub_20C424ED0()
{
  v3 = (*(*(v0 + 104) + 32) + **(*(v0 + 104) + 32));
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_20C424FC4;

  return v3(v0 + 56);
}

uint64_t sub_20C424FC4()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_20C4250E4, v3, v2);
}

uint64_t sub_20C4250E4()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C460630();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C4605D0();
  v0[20] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_20C4252BC;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 23, v5, v7);
}

uint64_t sub_20C4252BC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return MEMORY[0x2822009F8](sub_20C4253D0, v4, v5);
  }

  return result;
}

uint64_t sub_20C4253D0()
{
  if (*(v0 + 184) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 112);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
    (*(*(v4 - 8) + 56))(v3, 2, 2, v4);
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
    *v5 = v0;
    v5[1] = sub_20C425530;
    v7 = *(v0 + 112);

    return MEMORY[0x282159B08](v7, v6);
  }
}

uint64_t sub_20C425530()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_20C427084(v2, type metadata accessor for MonogramAction);
  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_20C425688, v4, v3);
}

uint64_t sub_20C425688(uint64_t a1)
{
  v2 = sub_20C4605D0();
  v1[20] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_20C4252BC;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 23, v2, v4);
}

uint64_t sub_20C425764(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  type metadata accessor for MonogramAction(0);
  v2[5] = swift_task_alloc();
  type metadata accessor for Monogram(0);
  v2[6] = swift_task_alloc();
  sub_20C4605E0();
  v2[7] = sub_20C4605D0();
  v4 = sub_20C4605A0();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_20C425854, v4, v3);
}

uint64_t sub_20C425854()
{
  v3 = (**(v0 + 32) + ***(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_20C425940;

  return v3();
}

uint64_t sub_20C425940(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v5 = *(v3 + 72);
  v6 = *(v3 + 64);
  if (v1)
  {
    v7 = sub_20C4261F4;
  }

  else
  {
    v7 = sub_20C425A84;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20C425A84()
{
  v1 = v0[4];
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v2);
  v9 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_20C425BBC;
  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[3];

  return v9(v6, v7, v5, v2, v3);
}

uint64_t sub_20C425BBC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_20C4264F0;
  }

  else
  {
    v5 = sub_20C425CF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C425CF8()
{
  v1 = v0[5];
  sub_20C42701C(v0[6], v1, type metadata accessor for Monogram);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 2, v2);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
  *v3 = v0;
  v3[1] = sub_20C425E2C;
  v5 = v0[5];

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_20C425E2C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  sub_20C427084(v2, type metadata accessor for MonogramAction);
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20C425F84, v4, v3);
}

uint64_t sub_20C425F84()
{
  v1 = *(v0 + 48);

  sub_20C427084(v1, type metadata accessor for Monogram);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C426020()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  sub_20C427084(v2, type metadata accessor for MonogramAction);
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20C426178, v4, v3);
}

uint64_t sub_20C426178()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C4261F4()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 136);
    if (qword_28110B658 != -1)
    {
      swift_once();
    }

    v4 = sub_20C460000();
    __swift_project_value_buffer(v4, qword_28110E2C0);
    v5 = sub_20C45FFE0();
    v6 = sub_20C460660();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_20C4139F0();
      swift_allocError();
      *v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_20C404000, v5, v6, "Failed to fetch Account Avatar: %@", v7, 0xCu);
      sub_20C40B440(v8, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v8, -1, -1);
      MEMORY[0x20F2FB570](v7, -1, -1);
    }

    v11 = *(v0 + 40);

    *v11 = v3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v11, 0, 2, v12);
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
    *v13 = v0;
    v13[1] = sub_20C426020;
    v15 = *(v0 + 40);

    return MEMORY[0x282159B08](v15, v14);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_20C4264F0()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 136);
    if (qword_28110B658 != -1)
    {
      swift_once();
    }

    v4 = sub_20C460000();
    __swift_project_value_buffer(v4, qword_28110E2C0);
    v5 = sub_20C45FFE0();
    v6 = sub_20C460660();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_20C4139F0();
      swift_allocError();
      *v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_20C404000, v5, v6, "Failed to fetch Account Avatar: %@", v7, 0xCu);
      sub_20C40B440(v8, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v8, -1, -1);
      MEMORY[0x20F2FB570](v7, -1, -1);
    }

    v11 = *(v0 + 40);

    *v11 = v3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v11, 0, 2, v12);
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
    *v13 = v0;
    v13[1] = sub_20C426020;
    v15 = *(v0 + 40);

    return MEMORY[0x282159B08](v15, v14);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_20C42682C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C413D30;

  return sub_20C425764(a1, v1 + 16);
}

uint64_t sub_20C4268CC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C414268;

  return sub_20C424480(a1, v1 + 16);
}

uint64_t objectdestroyTm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20C4269B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C414268;

  return sub_20C424E08(a1, v1 + 16);
}

unint64_t sub_20C426AE0()
{
  result = qword_28110B428;
  if (!qword_28110B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B428);
  }

  return result;
}

uint64_t sub_20C426B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C426BE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_20C426C30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_20C426CA8()
{
  result = qword_27C7BB4C0;
  if (!qword_27C7BB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB4C0);
  }

  return result;
}

void *sub_20C426D44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20C42701C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C427084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MonogramEnvironment.init(fetchPrimaryAccount:makeAccountChangedStream:makeRemoteBrowsingIdentityUpdatedStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
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

uint64_t sub_20C427108(uint64_t *a1, int a2)
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

uint64_t sub_20C427150(uint64_t result, int a2, int a3)
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

uint64_t sub_20C4271AC()
{
  v0 = sub_20C460000();
  __swift_allocate_value_buffer(v0, qword_28110E2C0);
  __swift_project_value_buffer(v0, qword_28110E2C0);
  return sub_20C45FFF0();
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

uint64_t sub_20C4272A8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_20C4273EC;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB518, &qword_20C463D28);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_20C427818;
    v0[13] = &block_descriptor;
    v0[14] = v3;
    [v2 performRequestWithHandler_];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_20C4273EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_20C4277A8;
  }

  else
  {
    v2 = sub_20C4274FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C4274FC()
{
  v28 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 152);
  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v4 photoData];
      if (v6)
      {
        v7 = v6;
        v8 = sub_20C45FC50();
        v10 = v9;

        v11 = [v4 cropRect];
        if (v11)
        {
          v25 = 0;
          v26 = 0;
          v27 = 1;
          v12 = v11;
          MEMORY[0x20F2FABF0](v11, &v25);

          if ((v27 & 1) == 0)
          {
            v13 = v25;
            v14 = v26;
            v15 = objc_allocWithZone(MEMORY[0x277D755B8]);
            sub_20C4279B8(v8, v10);
            v16 = sub_20C45FC40();
            v17 = [v15 initWithData_];

            sub_20C427964(v8, v10);
            if (v17)
            {
              v18 = [v17 CGImage];

              if (v18)
              {
                v30.origin = v13;
                v30.size = v14;
                v19 = CGImageCreateWithImageInRect(v18, v30);

                if (v19)
                {
                  v20 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

                  sub_20C427964(v8, v10);
                  v21 = *(v0 + 8);

                  return v21(v20);
                }
              }
            }
          }
        }

        sub_20C427964(v8, v10);
      }

      else
      {
      }
    }
  }

  sub_20C4139F0();
  swift_allocError();
  *v23 = 2;
  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20C4277A8(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_20C427818(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_20C427900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20C427964(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20C4279B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20C427A0C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C427AA0;

  return MonogramFetcher.fetchAccountProfileImage(_:for:)(v4, a2);
}

uint64_t sub_20C427AA0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t MonogramView.init(store:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_20C4142D4;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 24) = a3;
  return result;
}

uint64_t sub_20C427C18@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  State = type metadata accessor for MonogramLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5C0, &qword_20C463E98);
  sub_20C417418(&qword_27C7BB5C8, &qword_27C7BB5C0, &qword_20C463E98, MEMORY[0x277D04410]);
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  if ((*(*(v10 - 8) + 48))(v3, 2, v10))
  {
    sub_20C429728(v3, type metadata accessor for MonogramLoadState);
  }

  else
  {
    v11 = *(v10 + 48);
    sub_20C41F6F8(v3, v9);
    v12 = sub_20C45FC90();
    (*(*(v12 - 8) + 8))(&v3[v11], v12);
    sub_20C41F6F8(v9, v6);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v14 = v18;
      sub_20C429788(v6, v18);
      v13 = 0;
      goto LABEL_6;
    }

    sub_20C40B440(v6, &qword_27C7BB268, &qword_20C462D40);
  }

  v13 = 1;
  v14 = v18;
LABEL_6:
  v15 = type metadata accessor for Monogram(0);
  return (*(*(v15 - 8) + 56))(v14, v13, 1, v15);
}

uint64_t MonogramView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB520, "\nL");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v29 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB528, "NL");
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB530, &qword_20C463D70);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB538, &qword_20C463D78);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v17 = *(v1 + 8);
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v29 = *v1;
  v30 = v19;
  v32 = v29;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  sub_20C428210(v4);
  sub_20C4603E0();
  sub_20C4600A0();
  sub_20C409BD0(v4, v8, &qword_27C7BB520, "\nL");
  v20 = &v8[*(v6 + 44)];
  v21 = v41;
  *(v20 + 4) = v40;
  *(v20 + 5) = v21;
  *(v20 + 6) = v42;
  v22 = v37;
  *v20 = v36;
  *(v20 + 1) = v22;
  v23 = v39;
  *(v20 + 2) = v38;
  *(v20 + 3) = v23;
  LOBYTE(v4) = sub_20C4602F0();
  sub_20C409BD0(v8, v12, &qword_27C7BB528, "NL");
  v12[*(v10 + 44)] = v4;
  v24 = swift_allocObject();
  v26 = v29;
  v25 = v30;
  *(v24 + 16) = v29;
  *(v24 + 24) = v17;
  *(v24 + 32) = v18;
  *(v24 + 40) = v25;
  sub_20C409BD0(v12, v16, &qword_27C7BB530, &qword_20C463D70);
  v27 = &v16[*(v14 + 44)];
  *v27 = sub_20C4287BC;
  v27[1] = v24;
  v27[2] = 0;
  v27[3] = 0;
  sub_20C409BD0(v16, v31, &qword_27C7BB538, &qword_20C463D78);
  sub_20C414B3C(v26, v17);
}

void sub_20C428210(void *a1@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB568, &qword_20C463E68);
  MEMORY[0x28223BE20](v32);
  v4 = (v28 - v3);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5D0, &qword_20C463EA0);
  MEMORY[0x28223BE20](v31);
  v6 = (v28 - v5);
  v7 = sub_20C4603C0();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5D8, &qword_20C463EA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v28 - v11);
  v14 = *v1;
  v13 = v1[1];
  v15 = *(v1 + 16);
  v16 = v1[3];
  v33 = *v1;
  v34 = v13;
  v35 = v15;
  v36 = v16;
  sub_20C427C18(v28 - v11);
  v17 = type metadata accessor for Monogram(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    sub_20C40B440(v12, &qword_27C7BB5D8, &qword_20C463EA8);
  }

  else
  {
    v28[1] = a1;
    v19 = *v12;
    v18 = v12[1];

    sub_20C429728(v12, type metadata accessor for Monogram);
    if (qword_27C7BAC00 != -1)
    {
      swift_once();
    }

    v20 = qword_27C7C40A0;
    v33 = v19;
    v34 = v18;
    v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF88, &qword_20C461DF8));
    v22 = sub_20C45FE40();
    v23 = [v20 objectForKey_];

    if (v23)
    {
      v24 = v23;
      sub_20C4603A0();
      v26 = v29;
      v25 = v30;
      (*(v29 + 104))(v9, *MEMORY[0x277CE0FE0], v30);
      v27 = sub_20C4603D0();

      (*(v26 + 8))(v9, v25);
      *v6 = v27;
      swift_storeEnumTagMultiPayload();
      sub_20C429334();

      sub_20C460220();

      return;
    }
  }

  v33 = v14;
  v34 = v13;
  v35 = v15;
  v36 = v16;
  sub_20C4287F0(v4);
  sub_20C409B04(v4, v6, &qword_27C7BB568, &qword_20C463E68);
  swift_storeEnumTagMultiPayload();
  sub_20C429334();
  sub_20C460220();
  sub_20C40B440(v4, &qword_27C7BB568, &qword_20C463E68);
}

uint64_t sub_20C428658(uint64_t a1, uint64_t a2, char a3)
{
  v3 = type metadata accessor for MonogramAction(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5C0, &qword_20C463E98);
  sub_20C417418(&qword_27C7BB5C8, &qword_27C7BB5C0, &qword_20C463E98, MEMORY[0x277D04410]);
  sub_20C460020();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  (*(*(v6 - 8) + 56))(v5, 1, 2, v6);
  sub_20C460440();

  return sub_20C429728(v5, type metadata accessor for MonogramAction);
}

uint64_t sub_20C4287F0@<X0>(void *a1@<X8>)
{
  v75 = a1;
  v2 = sub_20C460080();
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x28223BE20](v2);
  v68 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v59 - v5;
  v6 = sub_20C4603C0();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB578, &qword_20C463E70);
  MEMORY[0x28223BE20](v74);
  v71 = &v59 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5E0, &qword_20C463EB0);
  MEMORY[0x28223BE20](v72);
  v73 = (&v59 - v9);
  v63 = sub_20C45FBD0();
  v10 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_20C45FBE0();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5D8, &qword_20C463EA8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - v16;
  v18 = sub_20C45FC10();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v25 = *(v1 + 16);
  v26 = *(v1 + 3);
  v77 = *v1;
  v78 = v25;
  v79 = v26;
  sub_20C427C18(v17);
  v27 = type metadata accessor for Monogram(0);
  if ((*(*(v27 - 8) + 48))(v17, 1, v27) == 1)
  {
    sub_20C40B440(v17, &qword_27C7BB5D8, &qword_20C463EA8);
    sub_20C4603B0();
    v29 = v64;
    v28 = v65;
    v30 = v66;
    (*(v65 + 104))(v64, *MEMORY[0x277CE0FE0], v66);
    v31 = sub_20C4603D0();

    (*(v28 + 8))(v29, v30);
    v32 = sub_20C460230();
    *&v77 = v31;
    DWORD2(v77) = v32;
    v33 = v67;
    sub_20C460070();
    v34 = v68;
    sub_20C460060();
    v35 = v70;
    v36 = *(v69 + 8);
    v36(v33, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB580, &qword_20C463E78);
    sub_20C4294B4();
    v37 = v71;
    sub_20C460350();
    v36(v34, v35);

    v38 = (v37 + *(v74 + 36));
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5A8, &qword_20C463E88) + 28);
    sub_20C460140();
    v40 = sub_20C460150();
    (*(*(v40 - 8) + 56))(v38 + v39, 0, 1, v40);
    *v38 = swift_getKeyPath();
    sub_20C409B04(v37, v73, &qword_27C7BB578, &qword_20C463E70);
    swift_storeEnumTagMultiPayload();
    sub_20C4293C0();
    sub_20C460220();
    return sub_20C40B440(v37, &qword_27C7BB578, &qword_20C463E70);
  }

  else
  {
    v42 = *(v19 + 16);
    v43 = &v17[*(v27 + 20)];
    v60 = v18;
    v42(v21, v43, v18);
    sub_20C429728(v17, type metadata accessor for Monogram);
    (*(v19 + 32))(v24, v21, v18);
    v44 = v63;
    (*(v10 + 104))(v12, *MEMORY[0x277CC8E30], v63);
    MEMORY[0x20F2FA120](v12);
    (*(v10 + 8))(v12, v44);
    sub_20C4295FC();
    v45 = v62;
    sub_20C45FC00();
    (*(v61 + 8))(v14, v45);
    v76 = v77;
    sub_20C429654();
    v46 = sub_20C460310();
    v48 = v47;
    v50 = v49;
    v51 = sub_20C460300();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_20C4296A8(v46, v48, v50 & 1);

    v58 = v73;
    *v73 = v51;
    v58[1] = v53;
    *(v58 + 16) = v55 & 1;
    v58[3] = v57;
    swift_storeEnumTagMultiPayload();
    sub_20C4293C0();
    sub_20C460220();
    return (*(v19 + 8))(v24, v60);
  }
}

uint64_t sub_20C429050(uint64_t a1, int a2)
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

uint64_t sub_20C429098(uint64_t result, int a2, int a3)
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

unint64_t sub_20C4290D8()
{
  result = qword_27C7BB540;
  if (!qword_27C7BB540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB538, &qword_20C463D78);
    sub_20C429164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB540);
  }

  return result;
}

unint64_t sub_20C429164()
{
  result = qword_27C7BB548;
  if (!qword_27C7BB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB530, &qword_20C463D70);
    sub_20C42921C();
    sub_20C417418(&qword_27C7BB5B0, &qword_27C7BB5B8, &qword_20C463E90, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB548);
  }

  return result;
}

unint64_t sub_20C42921C()
{
  result = qword_27C7BB550;
  if (!qword_27C7BB550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB528, "NL");
    sub_20C4292A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB550);
  }

  return result;
}

unint64_t sub_20C4292A8()
{
  result = qword_27C7BB558;
  if (!qword_27C7BB558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB520, "\nL");
    sub_20C429334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB558);
  }

  return result;
}

unint64_t sub_20C429334()
{
  result = qword_27C7BB560;
  if (!qword_27C7BB560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB568, &qword_20C463E68);
    sub_20C4293C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB560);
  }

  return result;
}

unint64_t sub_20C4293C0()
{
  result = qword_27C7BB570;
  if (!qword_27C7BB570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB578, &qword_20C463E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB580, &qword_20C463E78);
    sub_20C4294B4();
    swift_getOpaqueTypeConformance2();
    sub_20C417418(&qword_27C7BB5A0, &qword_27C7BB5A8, &qword_20C463E88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB570);
  }

  return result;
}

unint64_t sub_20C4294B4()
{
  result = qword_27C7BB588;
  if (!qword_27C7BB588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB580, &qword_20C463E78);
    sub_20C417418(&qword_27C7BB590, &qword_27C7BB598, &qword_20C463E80, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB588);
  }

  return result;
}

uint64_t sub_20C42956C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F0, &qword_20C463EE8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20C4296B8(a1, &v5 - v3);
  return sub_20C460100();
}

unint64_t sub_20C4295FC()
{
  result = qword_27C7BB5E8;
  if (!qword_27C7BB5E8)
  {
    sub_20C45FBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB5E8);
  }

  return result;
}

unint64_t sub_20C429654()
{
  result = qword_28110B410;
  if (!qword_28110B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B410);
  }

  return result;
}

uint64_t sub_20C4296A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20C4296B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F0, &qword_20C463EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C429728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C429788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Monogram(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImageSequenceView.init(imagesNamed:startFrame:endFrame:bundle:framesPerSecond:repeatCount:isAnimating:flipsContentForRightToLeftDirection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  if (a4)
  {
    a3 = *(result + 16) - 1;
  }

  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a6;
  *(a9 + 32) = a5;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 49) = a10 & 1;
  return result;
}

id ImageSequenceView.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setContentMode_];
  [v0 setClipsToBounds_];

  ImageSequenceView.updateUIView(_:context:)(v0);
  return v0;
}

unint64_t ImageSequenceView.updateUIView(_:context:)(void *a1)
{
  v6 = v2[1];
  v5 = v2[2];
  if (v5 < v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    v18 = sub_20C4607A0();
    if (!v18)
    {
      goto LABEL_30;
    }

LABEL_18:
    v19 = __OFSUB__(v18, 1);
    result = v18 - 1;
    if (v19)
    {
      __break(1u);
    }

    else if ((v4 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v4 + 8 * result + 32);
LABEL_23:
        v22 = v21;
        goto LABEL_31;
      }

      __break(1u);
      return result;
    }

    v21 = MEMORY[0x20F2FACB0](result, v4);
    goto LABEL_23;
  }

  v29 = *(v2 + 48);
  v7 = *(v2 + 49);
  v8 = *v2;
  v4 = MEMORY[0x277D84F90];
  v9 = *v2 + 16 * v6 + 40;
  v3 = v2[4];
  v27 = v2[3];
  v31 = MEMORY[0x277D84F90];
  v1 = v5 + 1;
  do
  {
    if (v7)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v6 >= *(v8 + 16))
      {
        goto LABEL_27;
      }

      v11 = sub_20C4604C0();

      v12 = [objc_opt_self() imageNamed:v11 inBundle:v3 withConfiguration:0];

      if (v12)
      {
        v13 = [v12 imageFlippedForRightToLeftLayoutDirection];

        if (v13)
        {
LABEL_14:
          MEMORY[0x20F2FAAB0]();
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C460570();
          }

          sub_20C460580();
          v4 = v31;
        }
      }
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v6 >= *(v8 + 16))
      {
        goto LABEL_26;
      }

      v14 = v3;
      v15 = sub_20C4604C0();

      v16 = [objc_opt_self() imageNamed:v15 inBundle:v14 withConfiguration:0];

      if (v16)
      {
        goto LABEL_14;
      }
    }

    ++v6;
    v9 += 16;
  }

  while (v1 != v6);
  v3 = a1;
  LODWORD(v10) = 1132068864;
  [a1 setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v17) = 1132068864;
  [a1 setContentCompressionResistancePriority:0 forAxis:v17];
  v1 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_29;
  }

  v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    goto LABEL_18;
  }

LABEL_30:
  v22 = 0;
LABEL_31:
  [v3 setImage_];

  sub_20C406B94();
  v23 = sub_20C460560();
  [v3 setAnimationImages_];

  if (v1)
  {
    v24 = sub_20C4607A0();
  }

  else
  {
    v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v3 setAnimationDuration_];
  v25 = &selRef_startAnimating;
  if (!v29)
  {
    v25 = &selRef_stopAnimating;
  }

  v26 = *v25;

  return [v3 v26];
}

unint64_t sub_20C429C20()
{
  result = qword_28110B7B0;
  if (!qword_28110B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B7B0);
  }

  return result;
}

id sub_20C429C74()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setContentMode_];
  [v0 setClipsToBounds_];

  ImageSequenceView.updateUIView(_:context:)(v0);
  return v0;
}

uint64_t sub_20C429D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C429F00();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_20C429DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C429F00();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_20C429E14(uint64_t a1)
{
  sub_20C429F00();
  sub_20C4601F0();
  __break(1u);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20C429E58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_20C429EA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20C429F00()
{
  result = qword_28110B7A8;
  if (!qword_28110B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B7A8);
  }

  return result;
}

uint64_t DynamicImageAssetEnvironment.init(fetchRemoteImage:evaluateImageAssetCacheKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_20C429F60(uint64_t *a1, int a2)
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

uint64_t sub_20C429FA8(uint64_t result, int a2, int a3)
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

uint64_t DynamicPredicateLogicalDescriptor.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_20C45FF30();
  v10 = sub_20C45FF40();
  DynamicPredicateDescriptor.makePredicateExpression<A>(using:)(a1, v10, a2, a3, v15);

  if (!v4)
  {
    v12 = sub_20C45FF50();
    DynamicPredicateDescriptor.makePredicateExpression<A>(using:)(a1, v12, a2, a3, v14);

    a4[3] = &type metadata for ArtworkPredicateLogicalOperation;
    a4[4] = &protocol witness table for ArtworkPredicateLogicalOperation;
    v13 = swift_allocObject();
    *a4 = v13;
    sub_20C42A130(v15, v13 + 16);
    sub_20C42A130(v14, v13 + 56);
    *(v13 + 96) = v9 & 1;
    __swift_destroy_boxed_opaque_existential_1(v14);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t sub_20C42A130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DynamicImageAssetState.loadStateRegistries.getter()
{
  type metadata accessor for DynamicImageAssetState(0);
}

uint64_t DynamicImageAssetState.loadStateRegistries.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DynamicImageAssetState(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20C42A374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t DynamicImageAssetState.init(descriptor:layoutEnvironment:loadStateRegistries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for DynamicImageAssetState(0);
  v10 = v9[6];
  v11 = type metadata accessor for ImageAsset(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = v9[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  (*(*(v13 - 8) + 32))(a4 + v12, a1, v13);
  result = sub_20C42A374(a2, a4, &qword_27C7BB5F8, &unk_20C4640A0);
  *(a4 + v9[5]) = a3;
  return result;
}

unint64_t sub_20C42A560()
{
  v1 = 0x7470697263736564;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20C42A5E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C42BFF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C42A61C(uint64_t a1)
{
  v2 = sub_20C42A974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42A658(uint64_t a1)
{
  v2 = sub_20C42A974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicImageAssetState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB610, &qword_20C4640B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C42A974();
  sub_20C4609C0();
  v14 = 0;
  type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  sub_20C4064C0(&qword_27C7BB0A0, type metadata accessor for DynamicArtworkLayoutEnvironment, &protocol conformance descriptor for DynamicArtworkLayoutEnvironment);
  sub_20C460880();
  if (!v2)
  {
    v10[1] = *(v3 + *(type metadata accessor for DynamicImageAssetState(0) + 20));
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB620, &unk_20C4640C0);
    sub_20C42A9C8();
    sub_20C4608B0();
    v12 = 2;
    type metadata accessor for ImageAsset(0);
    sub_20C4064C0(&qword_28110BC98, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
    sub_20C460880();
    v11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
    sub_20C417418(&qword_27C7BB630, &qword_27C7BB608, &qword_20C4640B0, MEMORY[0x277D09DE0]);
    sub_20C4608B0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20C42A974()
{
  result = qword_27C7BB618;
  if (!qword_27C7BB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB618);
  }

  return result;
}

unint64_t sub_20C42A9C8()
{
  result = qword_27C7BB628;
  if (!qword_27C7BB628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB620, &unk_20C4640C0);
    sub_20C4064C0(&qword_28110BC98, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
    sub_20C41056C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB628);
  }

  return result;
}

uint64_t DynamicImageAssetState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB638, &qword_20C4640D8);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v26 - v10;
  v12 = type metadata accessor for DynamicImageAssetState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v31 = v12;
  v16 = *(v12 + 24);
  v17 = type metadata accessor for ImageAsset(0);
  v18 = *(*(v17 - 8) + 56);
  v35 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20C42A974();
  v32 = v11;
  v20 = v34;
  sub_20C4609B0();
  if (v20)
  {
    v22 = v35;
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_20C40B440(v14, &qword_27C7BB5F8, &unk_20C4640A0);
    return sub_20C40B440(&v14[v22], &qword_27C7BB600, &unk_20C464880);
  }

  else
  {
    v21 = v30;
    v41 = 0;
    sub_20C4064C0(&qword_27C7BB140, type metadata accessor for DynamicArtworkLayoutEnvironment, &protocol conformance descriptor for DynamicArtworkLayoutEnvironment);
    sub_20C460810();
    sub_20C42A374(v9, v14, &qword_27C7BB5F8, &unk_20C4640A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB620, &unk_20C4640C0);
    v40 = 1;
    sub_20C42B078();
    sub_20C460840();
    *&v14[*(v31 + 20)] = v37;
    v39 = 2;
    sub_20C4064C0(&qword_27C7BAF30, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
    sub_20C460810();
    sub_20C42A374(v6, &v14[v35], &qword_27C7BB600, &unk_20C464880);
    v38 = 3;
    sub_20C417418(&qword_27C7BB648, &qword_27C7BB608, &qword_20C4640B0, MEMORY[0x277D09DF0]);
    v24 = v28;
    v23 = v29;
    sub_20C460840();
    (*(v21 + 8))(v32, v33);
    (*(v26 + 32))(&v14[*(v31 + 28)], v24, v23);
    sub_20C42B134(v14, v27);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_20C42BCC8(v14, type metadata accessor for DynamicImageAssetState);
  }
}

unint64_t sub_20C42B078()
{
  result = qword_27C7BB640;
  if (!qword_27C7BB640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB620, &unk_20C4640C0);
    sub_20C4064C0(&qword_27C7BAF30, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
    sub_20C410934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB640);
  }

  return result;
}

uint64_t sub_20C42B134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicImageAssetState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DynamicImageAssetState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v20 = type metadata accessor for ImageAsset(0);
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - v14;
  sub_20C409B04(v2, &v19 - v14, &qword_27C7BB5F8, &unk_20C4640A0);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    sub_20C460950();
  }

  else
  {
    sub_20C42BC60(v15, v12, type metadata accessor for DynamicArtworkLayoutEnvironment);
    sub_20C460950();
    DynamicArtworkLayoutEnvironment.hash(into:)(a1);
    sub_20C42BCC8(v12, type metadata accessor for DynamicArtworkLayoutEnvironment);
  }

  v16 = type metadata accessor for DynamicImageAssetState(0);
  sub_20C412334(a1, *(v2 + *(v16 + 20)));
  sub_20C409B04(v2 + *(v16 + 24), v8, &qword_27C7BB600, &unk_20C464880);
  if ((*(v4 + 48))(v8, 1, v20) == 1)
  {
    sub_20C460950();
  }

  else
  {
    v17 = v19;
    sub_20C42BC60(v8, v19, type metadata accessor for ImageAsset);
    sub_20C460950();
    ImageAsset.hash(into:)(a1);
    sub_20C42BCC8(v17, type metadata accessor for ImageAsset);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  sub_20C417418(&qword_27C7BB650, &qword_27C7BB608, &qword_20C4640B0, MEMORY[0x277D09DE8]);
  return sub_20C460460();
}

uint64_t DynamicImageAssetState.hashValue.getter()
{
  sub_20C460930();
  DynamicImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C42B5B0()
{
  sub_20C460930();
  DynamicImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C42B5F4(uint64_t a1)
{
  sub_20C460930();
  DynamicImageAssetState.hash(into:)(v2);
  return sub_20C460970();
}

uint64_t _s12FitnessAsset012DynamicImageB5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v40 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB678, &qword_20C4642F0);
  MEMORY[0x28223BE20](v43);
  v46 = &v40 - v8;
  v9 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB680, &qword_20C4642F8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v20 = *(v19 + 56);
  v47 = a1;
  sub_20C409B04(a1, &v40 - v17, &qword_27C7BB5F8, &unk_20C4640A0);
  sub_20C409B04(a2, &v18[v20], &qword_27C7BB5F8, &unk_20C4640A0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_20C40B440(v18, &qword_27C7BB5F8, &unk_20C4640A0);
      goto LABEL_9;
    }

LABEL_6:
    v22 = &qword_27C7BB680;
    v23 = &qword_20C4642F8;
    v24 = v18;
LABEL_7:
    sub_20C40B440(v24, v22, v23);
    goto LABEL_18;
  }

  sub_20C409B04(v18, v15, &qword_27C7BB5F8, &unk_20C4640A0);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    sub_20C42BCC8(v15, type metadata accessor for DynamicArtworkLayoutEnvironment);
    goto LABEL_6;
  }

  sub_20C42BC60(&v18[v20], v12, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v25 = _s12FitnessAsset31DynamicArtworkLayoutEnvironmentV2eeoiySbAC_ACtFZ_0(v15, v12);
  sub_20C42BCC8(v12, type metadata accessor for DynamicArtworkLayoutEnvironment);
  sub_20C42BCC8(v15, type metadata accessor for DynamicArtworkLayoutEnvironment);
  sub_20C40B440(v18, &qword_27C7BB5F8, &unk_20C4640A0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v26 = type metadata accessor for DynamicImageAssetState(0);
  v27 = v47;
  sub_20C411008(*(v47 + *(v26 + 20)), *(a2 + *(v26 + 20)));
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = *(v26 + 24);
  v30 = *(v43 + 48);
  v31 = v46;
  sub_20C409B04(v27 + v29, v46, &qword_27C7BB600, &unk_20C464880);
  sub_20C409B04(a2 + v29, v31 + v30, &qword_27C7BB600, &unk_20C464880);
  v32 = v45;
  v33 = *(v44 + 48);
  if (v33(v31, 1, v45) != 1)
  {
    v34 = v42;
    sub_20C409B04(v31, v42, &qword_27C7BB600, &unk_20C464880);
    if (v33(v31 + v30, 1, v32) != 1)
    {
      v35 = v31 + v30;
      v36 = v41;
      sub_20C42BC60(v35, v41, type metadata accessor for ImageAsset);
      v37 = _s12FitnessAsset05ImageB0V2eeoiySbAC_ACtFZ_0(v34, v36);
      sub_20C42BCC8(v36, type metadata accessor for ImageAsset);
      sub_20C42BCC8(v34, type metadata accessor for ImageAsset);
      sub_20C40B440(v31, &qword_27C7BB600, &unk_20C464880);
      if (v37)
      {
        goto LABEL_17;
      }

LABEL_18:
      v38 = 0;
      return v38 & 1;
    }

    sub_20C42BCC8(v34, type metadata accessor for ImageAsset);
    goto LABEL_15;
  }

  if (v33(v31 + v30, 1, v32) != 1)
  {
LABEL_15:
    v22 = &qword_27C7BB678;
    v23 = &qword_20C4642F0;
    v24 = v31;
    goto LABEL_7;
  }

  sub_20C40B440(v31, &qword_27C7BB600, &unk_20C464880);
LABEL_17:
  type metadata accessor for Artwork(0);
  sub_20C4064C0(&qword_28110B638, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v38 = sub_20C45FD90();
  return v38 & 1;
}

uint64_t sub_20C42BC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C42BCC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for AssetPlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPlatform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C42BEEC()
{
  result = qword_27C7BB660;
  if (!qword_27C7BB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB660);
  }

  return result;
}

unint64_t sub_20C42BF44()
{
  result = qword_27C7BB668;
  if (!qword_27C7BB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB668);
  }

  return result;
}

unint64_t sub_20C42BF9C()
{
  result = qword_27C7BB670;
  if (!qword_27C7BB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB670);
  }

  return result;
}

uint64_t sub_20C42BFF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x800000020C467710 == a2;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C4677A0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C4677C0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C4608D0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ImageAsset.cropCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImageAsset(0) + 20));

  return v1;
}

uint64_t ImageAsset.fileType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ImageAsset(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ImageAsset.init(backgroundColor:cropCode:fileType:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  sub_20C409B04(a1, a5, &qword_27C7BAC10, &qword_20C462070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB688, &qword_20C464A40);
  sub_20C45FE50();
  sub_20C40B440(a2, &qword_27C7BB688, &qword_20C464A40);
  sub_20C40B440(a1, &qword_27C7BAC10, &qword_20C462070);
  v10 = type metadata accessor for ImageAsset(0);
  v11 = (a5 + v10[5]);
  *v11 = v13;
  v11[1] = v14;
  *(a5 + v10[6]) = v9;
  return sub_20C409BD0(a4, a5 + v10[7], &qword_27C7BAC18, &unk_20C464A00);
}

uint64_t sub_20C42C354()
{
  v1 = 0x756F72676B636162;
  v2 = 0x65707954656C6966;
  if (*v0 != 2)
  {
    v2 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    v1 = 0x65646F43706F7263;
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

uint64_t sub_20C42C3E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C42DA08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C42C40C(uint64_t a1)
{
  v2 = sub_20C42D70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42C448(uint64_t a1)
{
  v2 = sub_20C42D70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAsset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB690, &qword_20C464300);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C42D70C();
  sub_20C4609C0();
  v11[15] = 0;
  sub_20C45FD00();
  sub_20C405D3C(qword_28110B4E0, MEMORY[0x277D09D68], MEMORY[0x277D09D70]);
  sub_20C460880();
  if (!v2)
  {
    v9 = type metadata accessor for ImageAsset(0);
    v11[14] = 1;
    sub_20C460890();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_20C42D760();
    sub_20C4608B0();
    v11[11] = 3;
    sub_20C45FC30();
    sub_20C405D3C(&qword_28110BEB8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_20C460880();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImageAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB698, &qword_20C464308);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_20C42D70C();
  v16 = v29;
  sub_20C4609B0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v17 = v27;
  v18 = v14;
  v29 = v5;
  sub_20C45FD00();
  v35 = 0;
  sub_20C405D3C(&qword_27C7BAC30, MEMORY[0x277D09D68], MEMORY[0x277D09D88]);
  v19 = v28;
  sub_20C460810();
  sub_20C409BD0(v8, v18, &qword_27C7BAC10, &qword_20C462070);
  v34 = 1;
  v20 = sub_20C460820();
  v21 = (v18 + v12[5]);
  *v21 = v20;
  v21[1] = v22;
  v32 = 2;
  sub_20C42D7B4();
  sub_20C460840();
  *(v18 + v12[6]) = v33;
  sub_20C45FC30();
  v31 = 3;
  sub_20C405D3C(&qword_27C7BAC38, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v23 = v29;
  sub_20C460810();
  (*(v17 + 8))(v11, v19);
  sub_20C409BD0(v23, v18 + v12[7], &qword_27C7BAC18, &unk_20C464A00);
  sub_20C42D808(v18, v26);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_20C42D86C(v18);
}

void ImageAsset.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C45FC30();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_20C45FD00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_20C409B04(v2, &v18 - v13, &qword_27C7BAC10, &qword_20C462070);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_20C460950();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_20C460950();
    sub_20C405D3C(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_20C460460();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for ImageAsset(0);
  sub_20C4604F0();
  sub_20C4604F0();

  sub_20C409B04(v2 + *(v15 + 28), v7, &qword_27C7BAC18, &unk_20C464A00);
  v16 = v19;
  if ((*(v19 + 48))(v7, 1, v3) == 1)
  {
    sub_20C460950();
  }

  else
  {
    v17 = v18;
    (*(v16 + 32))(v18, v7, v3);
    sub_20C460950();
    sub_20C405D3C(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_20C460460();
    (*(v16 + 8))(v17, v3);
  }
}

uint64_t ImageAsset.hashValue.getter()
{
  sub_20C460930();
  ImageAsset.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C42CFCC()
{
  sub_20C460930();
  ImageAsset.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C42D010(uint64_t a1)
{
  sub_20C460930();
  ImageAsset.hash(into:)(v2);
  return sub_20C460970();
}

BOOL _s12FitnessAsset05ImageB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FC30();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v51 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC48, &qword_20C4613F0);
  MEMORY[0x28223BE20](v53);
  v54 = &v51 - v8;
  v9 = sub_20C45FD00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC50, &qword_20C4613F8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v51 - v17;
  v20 = *(v19 + 56);
  sub_20C409B04(a1, &v51 - v17, &qword_27C7BAC10, &qword_20C462070);
  sub_20C409B04(a2, &v18[v20], &qword_27C7BAC10, &qword_20C462070);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_20C40B440(v18, &qword_27C7BAC10, &qword_20C462070);
      goto LABEL_11;
    }

LABEL_6:
    v22 = &qword_27C7BAC50;
    v23 = &qword_20C4613F8;
    v24 = v18;
LABEL_7:
    sub_20C40B440(v24, v22, v23);
    return 0;
  }

  sub_20C409B04(v18, v15, &qword_27C7BAC10, &qword_20C462070);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    (*(v10 + 8))(v15, v9);
    goto LABEL_6;
  }

  (*(v10 + 32))(v12, &v18[v20], v9);
  sub_20C405D3C(&qword_28110B4D0, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
  v26 = sub_20C4604B0();
  v27 = *(v10 + 8);
  v27(v12, v9);
  v27(v15, v9);
  sub_20C40B440(v18, &qword_27C7BAC10, &qword_20C462070);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v28 = type metadata accessor for ImageAsset(0);
  v29 = v28[5];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if ((v30 != *v32 || v31 != v32[1]) && (sub_20C4608D0() & 1) == 0)
  {
    return 0;
  }

  v33 = v28[6];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34)
  {
    v36 = 6778986;
  }

  else
  {
    v36 = 6778480;
  }

  if (v35)
  {
    v37 = 6778986;
  }

  else
  {
    v37 = 6778480;
  }

  if (v36 == v37)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v38 = sub_20C4608D0();
    swift_bridgeObjectRelease_n();
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  v39 = v28[7];
  v40 = *(v53 + 48);
  v41 = a1 + v39;
  v42 = v54;
  sub_20C409B04(v41, v54, &qword_27C7BAC18, &unk_20C464A00);
  sub_20C409B04(a2 + v39, v42 + v40, &qword_27C7BAC18, &unk_20C464A00);
  v44 = v55;
  v43 = v56;
  v45 = *(v55 + 48);
  if (v45(v42, 1, v56) == 1)
  {
    if (v45(v42 + v40, 1, v43) == 1)
    {
      sub_20C40B440(v42, &qword_27C7BAC18, &unk_20C464A00);
      return 1;
    }

    goto LABEL_28;
  }

  v46 = v52;
  sub_20C409B04(v42, v52, &qword_27C7BAC18, &unk_20C464A00);
  if (v45(v42 + v40, 1, v43) == 1)
  {
    (*(v44 + 8))(v46, v43);
LABEL_28:
    v22 = &qword_27C7BAC48;
    v23 = &qword_20C4613F0;
    v24 = v42;
    goto LABEL_7;
  }

  v47 = v42 + v40;
  v48 = v51;
  (*(v44 + 32))(v51, v47, v43);
  sub_20C405D3C(&qword_28110BEA8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v49 = sub_20C4604B0();
  v50 = *(v44 + 8);
  v50(v48, v43);
  v50(v46, v43);
  sub_20C40B440(v42, &qword_27C7BAC18, &unk_20C464A00);
  return (v49 & 1) != 0;
}

unint64_t sub_20C42D70C()
{
  result = qword_28110BCB0;
  if (!qword_28110BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BCB0);
  }

  return result;
}

unint64_t sub_20C42D760()
{
  result = qword_28110B580[0];
  if (!qword_28110B580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28110B580);
  }

  return result;
}

unint64_t sub_20C42D7B4()
{
  result = qword_27C7BB6A0;
  if (!qword_27C7BB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB6A0);
  }

  return result;
}

uint64_t sub_20C42D808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C42D86C(uint64_t a1)
{
  v2 = type metadata accessor for ImageAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C42D904()
{
  result = qword_27C7BB6A8;
  if (!qword_27C7BB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB6A8);
  }

  return result;
}

unint64_t sub_20C42D95C()
{
  result = qword_28110BCA0;
  if (!qword_28110BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BCA0);
  }

  return result;
}

unint64_t sub_20C42D9B4()
{
  result = qword_28110BCA8;
  if (!qword_28110BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BCA8);
  }

  return result;
}

uint64_t sub_20C42DA08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65707954656C6966 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C4608D0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ImageAssetEnvironment.init(fetchRemoteImage:evaluateImageAssetCacheKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void ImageAssetCache.insertImage(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_20C45FE20();
  (*(v7 + 16))(v9, a2, v6);
  v11 = sub_20C45FE30();
  [v10 setObject:a1 forKey:v11];
}

id ImageAssetCache.image(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_20C45FE20();
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_20C45FE30();
  v10 = [v8 objectForKey_];

  return v10;
}

void ImageAssetCache.init(countLimit:)(uint64_t a1@<X0>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C7BB6B0, &qword_20C464558);
  sub_20C45FE20();
  sub_20C406B94();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a4 = v6;
  v7 = v6;
  [v7 setCountLimit_];
  [v7 baf:0 setEvictsObjectsWhenApplicationEntersBackground:?];
}

uint64_t sub_20C42DE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20C42DED0(uint64_t *a1, int a2)
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

uint64_t sub_20C42DF18(uint64_t result, int a2, int a3)
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

uint64_t AssetPlatform.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656E6F6870;
  v2 = 30324;
  if (a1 != 2)
  {
    v2 = 0x6863746177;
  }

  if (a1)
  {
    v1 = 0x74656C626174;
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

uint64_t sub_20C42E004(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656E6F6870;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0xE200000000000000;
  v6 = 30324;
  if (v3 != 2)
  {
    v6 = 0x6863746177;
    v5 = 0xE500000000000000;
  }

  v7 = 0x74656C626174;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x656E6F6870;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE500000000000000;
  v11 = 0xE200000000000000;
  v12 = 30324;
  if (*a2 != 2)
  {
    v12 = 0x6863746177;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x74656C626174;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_20C4608D0();
  }

  return v15 & 1;
}

unint64_t sub_20C42E11C@<X0>(Swift::String *a1@<X0>, FitnessAsset::AssetPlatform_optional *a2@<X8>)
{
  result = _s12FitnessAsset0B8PlatformO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_20C42E14C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656E6F6870;
  v4 = 0xE200000000000000;
  v5 = 30324;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x74656C626174;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_20C42E280()
{
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

uint64_t sub_20C42E32C(uint64_t a1)
{
  sub_20C4604F0();
}

uint64_t sub_20C42E3C4(uint64_t a1)
{
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

unint64_t _s12FitnessAsset0B8PlatformO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C4607E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20C42E4BC()
{
  result = qword_27C7BB738;
  if (!qword_27C7BB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB740, &qword_20C464618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB738);
  }

  return result;
}

unint64_t sub_20C42E524()
{
  result = qword_27C7BB748;
  if (!qword_27C7BB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB748);
  }

  return result;
}

unint64_t sub_20C42E588()
{
  result = qword_27C7BB750;
  if (!qword_27C7BB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB750);
  }

  return result;
}

void sub_20C42E5DC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    if (a1)
    {
      sub_20C42E830();
      v5 = v4;
      v6 = a1;
      v7 = sub_20C4606C0();

      if (v7)
      {
        return;
      }

      v4 = *(v2 + 16);
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
  }

  *(v2 + 16) = a1;
  v8 = a1;

  v9 = *(v2 + 24);

  [v9 setContact_];
}

uint64_t AvatarViewControllerWrapper.Coordinator.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id AvatarViewControllerWrapper.makeUIViewController(context:)()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB758, &qword_20C464700);
  sub_20C4602D0();
  v2 = *(v9 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_20C42E830();
  v3 = v2;
  v4 = v1;
  v5 = sub_20C4606C0();

  if ((v5 & 1) == 0)
  {
    v2 = *(v9 + 16);
LABEL_4:
    *(v9 + 16) = v1;
    v6 = v1;

    [*(v9 + 24) setContact_];
  }

  sub_20C4602D0();
  v7 = [*(v9 + 24) wrappedViewController];

  return v7;
}

unint64_t sub_20C42E830()
{
  result = qword_27C7BB760;
  if (!qword_27C7BB760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7BB760);
  }

  return result;
}

uint64_t AvatarViewControllerWrapper.updateUIViewController(_:context:)()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB758, &qword_20C464700);
  sub_20C4602D0();
  v2 = *(v8 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_20C42E830();
  v3 = v2;
  v4 = v1;
  v5 = sub_20C4606C0();

  if ((v5 & 1) == 0)
  {
    v2 = *(v8 + 16);
LABEL_4:
    *(v8 + 16) = v1;
    v6 = v1;

    [*(v8 + 24) setContact_];
  }
}

uint64_t AvatarViewControllerWrapper.makeCoordinator()()
{
  type metadata accessor for AvatarViewControllerWrapper.Coordinator();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = [objc_allocWithZone(SMUAvatarViewController) init];
  return v0;
}

unint64_t sub_20C42E9C8()
{
  result = qword_27C7BB768;
  if (!qword_27C7BB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB768);
  }

  return result;
}

id sub_20C42EA1C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB758, &qword_20C464700);
  sub_20C4602D0();
  sub_20C42E5DC(v1);

  sub_20C4602D0();
  v2 = [*(v4 + 24) wrappedViewController];

  return v2;
}

uint64_t sub_20C42EAC4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB758, &qword_20C464700);
  sub_20C4602D0();
  sub_20C42E5DC(v1);
}

id sub_20C42EB34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AvatarViewControllerWrapper.Coordinator();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = [objc_allocWithZone(SMUAvatarViewController) init];
  *(v2 + 24) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_20C42EBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C42ECE0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20C42EC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C42ECE0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20C42EC90(uint64_t a1)
{
  sub_20C42ECE0();
  sub_20C4602B0();
  __break(1u);
}

unint64_t sub_20C42ECE0()
{
  result = qword_27C7BB770;
  if (!qword_27C7BB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB770);
  }

  return result;
}

BOOL sub_20C42ED34()
{
  v1 = v0;
  v2 = sub_20C45FC90();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_20C409B04(v1, &v27 - v15, &qword_27C7BAF10, &qword_20C4640D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 1;
    }

    v18 = sub_20C45FCC0();
    (*(*(v18 - 8) + 8))(v16, v18);
  }

  else
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
    sub_20C409BD0(v16, v13, &qword_27C7BAF60, &unk_20C462050);
    v20 = v27;
    v21 = &v16[v19];
    v22 = v28;
    (*(v27 + 32))(v7, v21, v28);
    sub_20C409B04(v13, v10, &qword_27C7BAF60, &unk_20C462050);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20C45FC80();
      sub_20C45FC60();
      v24 = v23;
      v25 = *(v20 + 8);
      v25(v4, v22);
      v25(v7, v22);
      sub_20C40B440(v13, &qword_27C7BAF60, &unk_20C462050);
      sub_20C40B440(v10, &qword_27C7BAF60, &unk_20C462050);
      return v24 > 600.0;
    }

    (*(v20 + 8))(v7, v22);
    sub_20C40B440(v13, &qword_27C7BAF60, &unk_20C462050);
    sub_20C40B440(v10, &qword_27C7BAF60, &unk_20C462050);
  }

  return 0;
}

uint64_t sub_20C42F0B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_20C45FF30();
  v6 = sub_20C45FF40();
  sub_20C42F1BC(a1, v6, v11);

  if (!v2)
  {
    v8 = sub_20C45FF50();
    sub_20C42F1BC(a1, v8, v10);

    a2[3] = &type metadata for ArtworkPredicateLogicalOperation;
    a2[4] = &protocol witness table for ArtworkPredicateLogicalOperation;
    v9 = swift_allocObject();
    *a2 = v9;
    sub_20C42A130(v11, v9 + 16);
    sub_20C42A130(v10, v9 + 56);
    *(v9 + 96) = v5 & 1;
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t sub_20C42F1BC@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v36 = a3;
  v4 = sub_20C45FF60();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C45FF90();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C45FFD0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C45FE80();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v24 = swift_projectBox();
      v26 = v31;
      v25 = v32;
      (*(v31 + 16))(v9, v24, v32);
      sub_20C437EDC(v35, v36);
      return (*(v26 + 8))(v9, v25);
    }

    else
    {
      v28 = swift_projectBox();
      v30 = v33;
      v29 = v34;
      (*(v33 + 16))(v6, v28, v34);
      sub_20C42F0B8(v35, v36);
      return (*(v30 + 8))(v6, v29);
    }
  }

  else if (v18)
  {
    v27 = swift_projectBox();
    (*(v11 + 16))(v13, v27, v10);
    sub_20C436A64(v35, v36);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v19 = swift_projectBox();
    (*(v15 + 16))(v17, v19, v14);
    v20 = sub_20C45FE70();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAED8, &qword_20C461BC0);
    v22 = v36;
    v36[3] = v21;
    v22[4] = sub_20C40FF88();
    *v22 = v20 & 1;
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_20C42F574(uint64_t a1)
{
  v36 = sub_20C45FC30();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v30 - v4;
  v5 = sub_20C45FD00();
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C45FCC0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DynamicImageAssetFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C43A9C4(v37, v19, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48)];
    v21 = *(v20 + 4);
    v46 = *(v20 + 3);
    v47 = v21;
    v22 = *(v20 + 2);
    v44 = *(v20 + 1);
    v45 = v22;
    v43 = *v20;
    sub_20C43AA2C(v19, v12, type metadata accessor for ImageAsset);
    MEMORY[0x20F2FAEA0](1);
    sub_20C409B04(v12, v9, &qword_27C7BAC10, &qword_20C462070);
    v23 = v33;
    if ((*(v33 + 48))(v9, 1, v5) == 1)
    {
      sub_20C460950();
    }

    else
    {
      v25 = v31;
      (*(v23 + 32))(v31, v9, v5);
      sub_20C460950();
      sub_20C43BD3C(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
      sub_20C460460();
      (*(v23 + 8))(v25, v5);
    }

    v26 = v36;
    v27 = v35;
    sub_20C4604F0();
    sub_20C4604F0();

    v28 = v34;
    sub_20C409B04(&v12[*(v10 + 28)], v34, &qword_27C7BAC18, &unk_20C464A00);
    if ((*(v27 + 48))(v28, 1, v26) == 1)
    {
      sub_20C460950();
    }

    else
    {
      v29 = v32;
      (*(v27 + 32))(v32, v28, v26);
      sub_20C460950();
      sub_20C43BD3C(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_20C460460();
      (*(v27 + 8))(v29, v26);
    }

    v40 = v45;
    v41 = v46;
    v42 = v47;
    v38 = v43;
    v39 = v44;
    ImageAssetCacheKey.hash(into:)(a1);
    sub_20C40C57C(&v43);
    return sub_20C43AA94(v12, type metadata accessor for ImageAsset);
  }

  else
  {
    (*(v14 + 32))(v16, v19, v13);
    MEMORY[0x20F2FAEA0](0);
    sub_20C43BD3C(&qword_28110BE90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_20C460460();
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_20C42FC28()
{
  sub_20C460930();
  sub_20C42F574(v1);
  return sub_20C460970();
}

uint64_t sub_20C42FC6C(uint64_t a1)
{
  sub_20C460930();
  sub_20C42F574(v2);
  return sub_20C460970();
}

void sub_20C42FCAC()
{
  qword_27C7C40A8 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v0 = qword_27C7C40A8;
  [v0 setCountLimit_];
  [v0 baf:0 setEvictsObjectsWhenApplicationEntersBackground:?];
}

__n128 DynamicImageAssetFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C45FCB0();
  v4 = (a2 + *(type metadata accessor for DynamicImageAssetFeature(0) + 20));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v6;
  return result;
}

uint64_t DynamicImageAssetFeature.dispose(localState:sharedState:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ImageAsset(0);
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF50, &unk_20C464870);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = *(a2 + *(type metadata accessor for DynamicImageAssetState(0) + 20));
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v44 = v10;
  v45 = a2;

  v17 = 0;
  v18 = 0;
  v42 = v9;
  if (v14)
  {
    while (1)
    {
      v48 = v18;
      v19 = v17;
LABEL_13:
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v44;
      v25 = v49;
      sub_20C43A9C4(*(v44 + 48) + *(v43 + 72) * v23, v49, type metadata accessor for ImageAsset);
      v26 = *(*(v24 + 56) + 8 * v23);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      v28 = *(v27 + 48);
      v29 = v25;
      v30 = v47;
      sub_20C43AA2C(v29, v47, type metadata accessor for ImageAsset);
      *(v30 + v28) = v26;
      (*(*(v27 - 8) + 56))(v30, 0, 1, v27);

      v21 = v19;
      v31 = v30;
      v9 = v42;
      v18 = v48;
LABEL_14:
      sub_20C409BD0(v31, v9, &qword_27C7BAF50, &unk_20C464870);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      if ((*(*(v32 - 8) + 48))(v9, 1, v32) == 1)
      {
      }

      v33 = *&v9[*(v32 + 48)];
      v34 = v49;
      v35 = sub_20C43AA2C(v9, v49, type metadata accessor for ImageAsset);
      MEMORY[0x28223BE20](v35);
      *(&v41 - 2) = v46;
      sub_20C43A808(sub_20C4302F4, (&v41 - 4), v33);
      v37 = v36;

      MEMORY[0x28223BE20](v38);
      *(&v41 - 2) = v45;
      *(&v41 - 1) = v34;
      sub_20C430638(sub_20C43A988, (&v41 - 4), v37);

      result = sub_20C43AA94(v34, type metadata accessor for ImageAsset);
      v17 = v21;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v15 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v15;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
        v40 = v47;
        (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
        v31 = v40;
        v14 = 0;
        goto LABEL_14;
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v48 = v18;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C4301F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  v8 = sub_20C45FCC0();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a3) = sub_20C452F50(a2, v7);
  sub_20C40B440(v7, &qword_27C7BAF10, &qword_20C4640D0);
  return a3 & 1;
}

uint64_t sub_20C4302FC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1[3];
  v19[2] = a1[2];
  v19[3] = v11;
  v19[4] = a1[4];
  v12 = a1[1];
  v19[0] = *a1;
  v19[1] = v12;
  sub_20C43A9C4(a3, v10, type metadata accessor for ImageAsset);
  type metadata accessor for DynamicImageAssetState(0);
  v13 = sub_20C4304EC(v18, v10);
  if (*v14)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    sub_20C40C520(v19, v17);
    sub_20C453554(v7, v19);
  }

  (v13)(v18, 0);
  return sub_20C43AA94(v10, type metadata accessor for ImageAsset);
}

uint64_t (*sub_20C4304EC(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for ImageAsset(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_20C43A9C4(a2, v8, type metadata accessor for ImageAsset);
  v6[5] = sub_20C43B2D0(v6, v9);
  return sub_20C4305C8;
}

void sub_20C4305C8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_20C43AA94(v2, type metadata accessor for ImageAsset);
  free(v2);

  free(v1);
}

uint64_t sub_20C430638(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + 80 * (__clz(__rbit64(v9)) | (v13 << 6)));
      v30[0] = *v14;
      v15 = v14[4];
      v17 = v14[1];
      v16 = v14[2];
      v30[3] = v14[3];
      v30[4] = v15;
      v30[1] = v17;
      v30[2] = v16;
      v18 = v14[3];
      v27 = v14[2];
      v28 = v18;
      v29 = v14[4];
      v19 = v14[1];
      v25 = *v14;
      v26 = v19;
      sub_20C40C520(v30, &v20);
      a1(&v25);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v22 = v27;
      v23 = v28;
      v24 = v29;
      v20 = v25;
      v21 = v26;
      result = sub_20C40C57C(&v20);
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v22 = v27;
    v23 = v28;
    v24 = v29;
    v20 = v25;
    v21 = v26;
    sub_20C40C57C(&v20);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DynamicImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v362 = a1;
  v363 = a4;
  v364 = a2;
  v354 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  MEMORY[0x28223BE20](v4 - 8);
  v337 = &v313 - v5;
  v6 = sub_20C45FCC0();
  v349 = *(v6 - 8);
  v350 = v6;
  MEMORY[0x28223BE20](v6);
  v325 = &v313 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = type metadata accessor for DynamicImageAssetFeature(0);
  v329 = *(v353 - 8);
  MEMORY[0x28223BE20](v353);
  v330 = v8;
  v331 = &v313 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for DynamicImageAssetFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v340);
  v315 = &v313 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v321 = &v313 - v11;
  MEMORY[0x28223BE20](v12);
  v320 = &v313 - v13;
  MEMORY[0x28223BE20](v14);
  v339 = &v313 - v15;
  MEMORY[0x28223BE20](v16);
  v328 = &v313 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E0, &qword_20C463C50);
  v341 = *(v18 - 8);
  v342 = v18;
  MEMORY[0x28223BE20](v18);
  v316 = &v313 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v323 = &v313 - v21;
  MEMORY[0x28223BE20](v22);
  v322 = &v313 - v23;
  MEMORY[0x28223BE20](v24);
  v338 = &v313 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  MEMORY[0x28223BE20](v26 - 8);
  v335 = &v313 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v334 = &v313 - v29;
  MEMORY[0x28223BE20](v30);
  v336 = &v313 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v313 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v333 = &v313 - v36;
  v37 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  v355 = *(v37 - 8);
  v356 = v37;
  MEMORY[0x28223BE20](v37);
  v39 = &v313 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v343 = &v313 - v41;
  MEMORY[0x28223BE20](v42);
  v346 = &v313 - v43;
  MEMORY[0x28223BE20](v44);
  v345 = &v313 - v45;
  MEMORY[0x28223BE20](v46);
  v326 = &v313 - v47;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v357 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v348 = &v313 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v352 = &v313 - v50;
  v51 = type metadata accessor for ImageAsset(0);
  v52 = *(v51 - 8);
  v358 = v51;
  v359 = v52;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v314 = &v313 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v332 = &v313 - v55;
  MEMORY[0x28223BE20](v56);
  v319 = &v313 - v57;
  MEMORY[0x28223BE20](v58);
  v351 = &v313 - v59;
  MEMORY[0x28223BE20](v60);
  v317 = &v313 - v61;
  MEMORY[0x28223BE20](v62);
  v324 = &v313 - v63;
  MEMORY[0x28223BE20](v64);
  v66 = &v313 - v65;
  MEMORY[0x28223BE20](v67);
  v318 = &v313 - v68;
  MEMORY[0x28223BE20](v69);
  v344 = &v313 - v70;
  MEMORY[0x28223BE20](v71);
  v73 = &v313 - v72;
  MEMORY[0x28223BE20](v74);
  v327 = &v313 - v75;
  MEMORY[0x28223BE20](v76);
  v347 = &v313 - v77;
  MEMORY[0x28223BE20](v78);
  v80 = &v313 - v79;
  v81 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v81);
  v83 = &v313 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v86 = (&v313 - v85);
  sub_20C43A9C4(v363, &v313 - v85, type metadata accessor for DynamicImageAssetAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v89 = (v86 + *(v88 + 48));
        v90 = v89[3];
        v391[3] = v89[4];
        v391[1] = v89[2];
        v391[2] = v90;
        v91 = v89[1];
        v390 = *v89;
        v391[0] = v91;
        v92 = (v86 + *(v88 + 64));
        v93 = *v92;
        v94 = v92[1];
        sub_20C43AA2C(v86, v80, type metadata accessor for ImageAsset);
        v95 = v352;
        swift_storeEnumTagMultiPayload();
        v417 = v391[1];
        v418 = v391[2];
        v419 = v391[3];
        v415 = v390;
        v416 = v391[0];
        v96 = v364;
        sub_20C43C69C(v95, v80, &v415);
        sub_20C40B440(v95, &qword_27C7BAF10, &qword_20C4640D0);
        sub_20C40C57C(&v390);
        v34 = v333;
        sub_20C409B04(v96, v333, &qword_27C7BB5F8, &unk_20C4640A0);
        if ((*(v355 + 48))(v34, 1, v356) == 1)
        {
          sub_20C43AA94(v80, type metadata accessor for ImageAsset);
LABEL_22:
          v104 = &qword_27C7BB5F8;
          v105 = &unk_20C4640A0;
          v106 = v34;
          return sub_20C40B440(v106, v104, v105);
        }

        v153 = v326;
        sub_20C43AA2C(v34, v326, type metadata accessor for DynamicArtworkLayoutEnvironment);
        v154 = &v83[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48)];
        sub_20C43A9C4(v153, v83, type metadata accessor for DynamicArtworkLayoutEnvironment);
        *v154 = v93;
        *(v154 + 1) = v94;
        swift_storeEnumTagMultiPayload();
        DynamicImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(v362, v96, v354, v83);
        sub_20C43AA94(v83, type metadata accessor for DynamicImageAssetAction);
        sub_20C43AA94(v153, type metadata accessor for DynamicArtworkLayoutEnvironment);
        v122 = type metadata accessor for ImageAsset;
        return sub_20C43AA94(v80, v122);
      }

      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v124 = (v86 + *(v123 + 48));
      v125 = v124[3];
      v391[3] = v124[4];
      v126 = v124[1];
      v391[1] = v124[2];
      v391[2] = v125;
      v390 = *v124;
      v391[0] = v126;
      v367 = v391[1];
      v368 = v125;
      v369 = v391[3];
      v365 = v390;
      v366 = v126;
      v127 = (v86 + *(v123 + 64));
      v128 = *v127;
      v129 = v127[1];
      v130 = v347;
      sub_20C43AA2C(v86, v347, type metadata accessor for ImageAsset);
      v131 = v362;
      if ((*(v362 + 96) & 1) == 0 && v128 == *(v362 + 80) && v129 == *(v362 + 88) || !*(v362 + 16))
      {
        v175 = *(v362 + 48);
        v417 = *(v362 + 32);
        v418 = v175;
        v419 = *(v362 + 64);
        v176 = *(v362 + 16);
        v415 = *v362;
        v416 = v176;
        sub_20C40C520(&v390, &v413);
        sub_20C40B440(&v415, &qword_27C7BAC68, &unk_20C464890);
        v177 = v368;
        v131[2] = v367;
        v131[3] = v177;
        v131[4] = v369;
        v178 = v366;
        *v131 = v365;
        v131[1] = v178;
      }

      v417 = v391[1];
      v418 = v391[2];
      v419 = v391[3];
      v415 = v390;
      v416 = v391[0];
      v179 = v336;
      sub_20C43C7F4(v130, &v415, v336);
      v180 = *(v357 + 48);
      v181 = v360;
      v182 = v180(v179, 1, v360);
      v183 = v361;
      v184 = v348;
      if (v182 == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v180(v179, 1, v181) != 1)
        {
          sub_20C40B440(v179, &qword_27C7BAFB8, &unk_20C461F90);
        }
      }

      else
      {
        sub_20C409BD0(v179, v348, &qword_27C7BAF10, &qword_20C4640D0);
      }

      if (!sub_20C42ED34())
      {
        sub_20C40C57C(&v390);
        sub_20C40B440(v184, &qword_27C7BAF10, &qword_20C4640D0);
        return sub_20C43AA94(v130, type metadata accessor for ImageAsset);
      }

      v186 = v352;
      (*(v349 + 16))(v352, v183, v350);
      swift_storeEnumTagMultiPayload();
      v417 = v391[1];
      v418 = v391[2];
      v419 = v391[3];
      v415 = v390;
      v416 = v391[0];
      sub_20C43C69C(v186, v130, &v415);
      sub_20C40B440(v186, &qword_27C7BAF10, &qword_20C4640D0);
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
      v188 = v187[16];
      v362 = v187[20];
      v189 = v338;
      v363 = &v338[v187[24]];
      v364 = v188;
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120);
      v191 = v328;
      v192 = (v328 + *(v190 + 48));
      sub_20C43A9C4(v130, v328, type metadata accessor for ImageAsset);
      v193 = v391[2];
      v192[2] = v391[1];
      v192[3] = v193;
      v192[4] = v391[3];
      v194 = v391[0];
      *v192 = v390;
      v192[1] = v194;
      swift_storeEnumTagMultiPayload();
      sub_20C43A9C4(v191, v339, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
      sub_20C40C520(&v390, &v415);
      sub_20C43BD3C(&qword_27C7BB778, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier, &unk_20C4649C0);
      sub_20C460720();
      sub_20C43AA94(v191, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
      sub_20C4605F0();
      v195 = *MEMORY[0x277D043E0];
      v196 = sub_20C460400();
      (*(*(v196 - 8) + 104))(&v189[v362], v195, v196);
      v197 = v327;
      sub_20C43A9C4(v130, v327, type metadata accessor for ImageAsset);
      v198 = v331;
      sub_20C43A9C4(v183, v331, type metadata accessor for DynamicImageAssetFeature);
      v199 = (*(v359 + 80) + 16) & ~*(v359 + 80);
      v200 = (v53 + v199 + 7) & 0xFFFFFFFFFFFFFFF8;
      v201 = (*(v329 + 80) + v200 + 16) & ~*(v329 + 80);
      v202 = (v330 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
      v203 = swift_allocObject();
      sub_20C43AA2C(v197, v203 + v199, type metadata accessor for ImageAsset);
      v204 = (v203 + v200);
      *v204 = v128;
      v204[1] = v129;
      sub_20C43AA2C(v198, v203 + v201, type metadata accessor for DynamicImageAssetFeature);
      v205 = (v203 + v202);
      v206 = v391[2];
      v205[2] = v391[1];
      v205[3] = v206;
      v205[4] = v391[3];
      v207 = v391[0];
      *v205 = v390;
      v205[1] = v207;
      v208 = v363;
      *v363 = &unk_20C4648F8;
      *(v208 + 1) = v203;
      v209 = *MEMORY[0x277D043F8];
      v210 = sub_20C460410();
      (*(*(v210 - 8) + 104))(&v189[v364], v209, v210);
      v212 = v341;
      v211 = v342;
      (*(v341 + 104))(v189, *MEMORY[0x277D043B0], v342);
      v213 = v354;
      v214 = *v354;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v214 = sub_20C426CFC(0, v214[2] + 1, 1, v214);
      }

      v216 = v214[2];
      v215 = v214[3];
      if (v216 >= v215 >> 1)
      {
        v214 = sub_20C426CFC((v215 > 1), v216 + 1, 1, v214);
      }

      sub_20C40B440(v348, &qword_27C7BAF10, &qword_20C4640D0);
      sub_20C43AA94(v347, type metadata accessor for ImageAsset);
      v214[2] = v216 + 1;
      result = (*(v212 + 32))(v214 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v216, v338, v211);
      goto LABEL_100;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v108 = *(v86 + *(v107 + 48));
      v109 = (v86 + *(v107 + 64));
      v110 = v109[3];
      v391[3] = v109[4];
      v391[1] = v109[2];
      v391[2] = v110;
      v111 = v109[1];
      v390 = *v109;
      v391[0] = v111;
      sub_20C43AA2C(v86, v73, type metadata accessor for ImageAsset);
      v417 = v391[1];
      v418 = v391[2];
      v419 = v391[3];
      v415 = v390;
      v416 = v391[0];
      v112 = v334;
      sub_20C43C7F4(v73, &v415, v334);
      if ((*(v357 + 48))(v112, 1, v360) == 1)
      {
        sub_20C43AA94(v73, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v390);
        v104 = &qword_27C7BAFB8;
        v105 = &unk_20C461F90;
        v106 = v112;
        return sub_20C40B440(v106, v104, v105);
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_20C43AA94(v73, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v390);
        v104 = &qword_27C7BAF10;
        v105 = &qword_20C4640D0;
        v106 = v112;
        return sub_20C40B440(v106, v104, v105);
      }

      v169 = v349;
      v168 = v350;
      v170 = v325;
      (*(v349 + 32))(v325, v112, v350);
      if ((sub_20C45FCA0() & 1) == 0)
      {
        sub_20C40C57C(&v390);
        (*(v169 + 8))(v170, v168);
        return sub_20C43AA94(v73, type metadata accessor for ImageAsset);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060);
      v171 = v352;
      *v352 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
      swift_storeEnumTagMultiPayload();
      sub_20C45FC80();
      swift_storeEnumTagMultiPayload();
      v417 = v391[1];
      v418 = v391[2];
      v419 = v391[3];
      v415 = v390;
      v416 = v391[0];
      sub_20C43C69C(v171, v73, &v415);
      sub_20C40B440(v171, &qword_27C7BAF10, &qword_20C4640D0);
      (*(v169 + 8))(v170, v168);
      v172 = v73;
      goto LABEL_70;
    }

    v140 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
    v141 = *v140;
    v142 = v140[1];
    v143 = v345;
    sub_20C43AA2C(v86, v345, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v144 = type metadata accessor for DynamicImageAssetState(0);
    v145 = v364;
    v146 = v344;
    v147 = v361;
    sub_20C4357E8(v364 + *(v144 + 28), v143, v344);
    v148 = *(v144 + 24);
    sub_20C40B440(v145 + v148, &qword_27C7BB600, &unk_20C464880);
    sub_20C43A9C4(v146, v145 + v148, type metadata accessor for ImageAsset);
    (*(v359 + 56))(v145 + v148, 0, 1, v358);
    (*(v147 + *(v353 + 20) + 16))(&v413, v146, v141, v142);
    v417 = v414[1];
    v418 = v414[2];
    v419 = v414[3];
    v415 = v413;
    v416 = v414[0];
    v407 = v413;
    v225 = *&v414[0];
    v406 = *(&v414[3] + 1);
    v405 = *(&v414[2] + 8);
    v404 = *(&v414[1] + 8);
    v403 = *(v414 + 8);
    v226 = v362;
    v227 = *(v362 + 48);
    v412 = *(v362 + 64);
    v228 = *(v362 + 32);
    v411 = v227;
    v410 = v228;
    v229 = *(v362 + 16);
    v408 = *v362;
    v409 = v229;
    v402 = v408;
    v230 = v229;
    v231 = *(v362 + 40);
    v398 = *(v362 + 24);
    v399 = v231;
    v400 = *(v362 + 56);
    v401 = *(v362 + 72);
    if (*&v414[0])
    {
      v390 = v413;
      *(v391 + 8) = *(v414 + 8);
      *(&v391[1] + 8) = *(&v414[1] + 8);
      *(&v391[2] + 8) = *(&v414[2] + 8);
      *&v391[0] = *&v414[0];
      *(&v391[3] + 1) = *(&v414[3] + 1);
      v385 = v413;
      v386 = v391[0];
      v387 = v391[1];
      v388 = v391[2];
      v389 = v391[3];
      if (v230)
      {
        v371 = *v362;
        *(v372 + 8) = *(v362 + 24);
        *(&v372[1] + 8) = *(v362 + 40);
        *(&v372[2] + 8) = *(v362 + 56);
        *(&v372[3] + 1) = *(v362 + 72);
        *&v372[0] = v230;
        v232 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v385, &v371);
        v375 = v372[1];
        v376 = v372[2];
        v377 = v372[3];
        v373 = v371;
        v374 = v372[0];
        sub_20C40C520(&v415, v370);
        sub_20C40C520(&v415, v370);
        sub_20C409B04(&v408, v370, &qword_27C7BAC68, &unk_20C464890);
        sub_20C409B04(&v390, v370, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40C57C(&v373);
        v380 = v387;
        v381 = v388;
        v382 = v389;
        v378 = v385;
        v379 = v386;
        sub_20C40C57C(&v378);
        v383 = v413;
        *(v384 + 8) = *(v414 + 8);
        *(&v384[1] + 8) = *(&v414[1] + 8);
        *(&v384[2] + 8) = *(&v414[2] + 8);
        *&v384[0] = v225;
        *(&v384[3] + 1) = *(&v414[3] + 1);
        sub_20C40B440(&v383, &qword_27C7BAC68, &unk_20C464890);
        if (v232)
        {
          sub_20C40C57C(&v415);
          sub_20C40C57C(&v415);
LABEL_91:
          sub_20C43AA94(v344, type metadata accessor for ImageAsset);
          return sub_20C43AA94(v345, type metadata accessor for DynamicArtworkLayoutEnvironment);
        }

        goto LABEL_81;
      }

      v384[1] = v391[1];
      v384[2] = v391[2];
      v384[3] = v391[3];
      v383 = v390;
      v384[0] = v391[0];
      sub_20C40C520(&v415, &v378);
      sub_20C40C520(&v415, &v378);
      sub_20C409B04(&v408, &v378, &qword_27C7BAC68, &unk_20C464890);
      sub_20C409B04(&v390, &v378, &qword_27C7BAC68, &unk_20C464890);
      sub_20C40C57C(&v383);
    }

    else
    {
      if (!v230)
      {
        v390 = v413;
        *(v391 + 8) = *(v414 + 8);
        *(&v391[1] + 8) = *(&v414[1] + 8);
        *(&v391[2] + 8) = *(&v414[2] + 8);
        *&v391[0] = 0;
        *(&v391[3] + 1) = *(&v414[3] + 1);
        sub_20C409B04(&v408, &v385, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40B440(&v390, &qword_27C7BAC68, &unk_20C464890);
        goto LABEL_91;
      }

      sub_20C40C520(&v415, &v390);
      sub_20C40C520(&v415, &v390);
      sub_20C409B04(&v408, &v390, &qword_27C7BAC68, &unk_20C464890);
    }

    v390 = v413;
    *(v391 + 8) = *(v414 + 8);
    *(&v391[1] + 8) = *(&v414[1] + 8);
    *(&v391[2] + 8) = *(&v414[2] + 8);
    *&v391[0] = v225;
    *(&v391[3] + 1) = *(&v414[3] + 1);
    v392 = v402;
    v393 = v230;
    v397 = v401;
    v396 = v400;
    v395 = v399;
    v394 = v398;
    sub_20C40B440(&v390, &qword_27C7BACA0, &qword_20C463AC0);
LABEL_81:
    v269 = *(v226 + 48);
    v391[1] = *(v226 + 32);
    v391[2] = v269;
    v391[3] = *(v226 + 64);
    v270 = *(v226 + 16);
    v390 = *v226;
    v391[0] = v270;
    sub_20C40B440(&v390, &qword_27C7BAC68, &unk_20C464890);
    *v226 = v407;
    *(v226 + 16) = v225;
    v271 = v404;
    *(v226 + 24) = v403;
    *(v226 + 40) = v271;
    *(v226 + 56) = v405;
    *(v226 + 72) = v406;
    v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
    v364 = v272[12];
    v273 = v272[16];
    v274 = v272[20];
    v248 = v322;
    v275 = &v322[v272[24]];
    v276 = v320;
    (*(v349 + 16))(v320, v147, v350);
    swift_storeEnumTagMultiPayload();
    sub_20C43A9C4(v276, v339, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
    sub_20C43BD3C(&qword_27C7BB778, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier, &unk_20C4649C0);
    sub_20C460720();
    sub_20C43AA94(v276, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
    v277 = *MEMORY[0x277D04400];
    v278 = sub_20C460410();
    (*(*(v278 - 8) + 104))(&v248[v273], v277, v278);
    v279 = *MEMORY[0x277D043E0];
    v280 = sub_20C460400();
    (*(*(v280 - 8) + 104))(&v248[v274], v279, v280);
    v281 = v344;
    v282 = v318;
    sub_20C43A9C4(v344, v318, type metadata accessor for ImageAsset);
    v283 = (*(v359 + 80) + 16) & ~*(v359 + 80);
    v284 = (v53 + v283 + 7) & 0xFFFFFFFFFFFFFFF8;
    v285 = swift_allocObject();
    sub_20C43AA2C(v282, v285 + v283, type metadata accessor for ImageAsset);
    v286 = (v285 + v284);
    v287 = v418;
    v286[2] = v417;
    v286[3] = v287;
    v286[4] = v419;
    v288 = v416;
    *v286 = v415;
    v286[1] = v288;
    v289 = (v285 + ((v284 + 87) & 0xFFFFFFFFFFFFFFF8));
    *v289 = v141;
    v289[1] = v142;
    *v275 = &unk_20C4648D8;
    *(v275 + 1) = v285;
    sub_20C4605F0();
    v264 = v341;
    v263 = v342;
    (*(v341 + 104))(v248, *MEMORY[0x277D043B0], v342);
    v213 = v354;
    v214 = *v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v214 = sub_20C426CFC(0, v214[2] + 1, 1, v214);
    }

    v266 = v214[2];
    v290 = v214[3];
    v267 = v266 + 1;
    if (v266 >= v290 >> 1)
    {
      v214 = sub_20C426CFC((v290 > 1), v266 + 1, 1, v214);
    }

    sub_20C43AA94(v281, type metadata accessor for ImageAsset);
    v268 = v345;
LABEL_99:
    sub_20C43AA94(v268, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v214[2] = v267;
    result = (*(v264 + 32))(v214 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v266, v248, v263);
LABEL_100:
    *v213 = v214;
    return result;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v97 = v364;
    if (EnumCaseMultiPayload == 4)
    {
      v98 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
      v99 = v98[3];
      v391[3] = v98[4];
      v391[1] = v98[2];
      v391[2] = v99;
      v100 = v98[1];
      v390 = *v98;
      v391[0] = v100;
      v101 = v86;
      v102 = v66;
      sub_20C43AA2C(v101, v66, type metadata accessor for ImageAsset);
      v417 = v391[1];
      v418 = v391[2];
      v419 = v391[3];
      v415 = v390;
      v416 = v391[0];
      v103 = v335;
      sub_20C43C7F4(v102, &v415, v335);
      if ((*(v357 + 48))(v103, 1, v360) == 1)
      {
        sub_20C43AA94(v102, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v390);
        v104 = &qword_27C7BAFB8;
        v105 = &unk_20C461F90;
        v106 = v103;
        return sub_20C40B440(v106, v104, v105);
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_20C43AA94(v102, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v390);
        v104 = &qword_27C7BAF10;
        v105 = &qword_20C4640D0;
        v106 = v103;
        return sub_20C40B440(v106, v104, v105);
      }

      (*(v349 + 8))(v103, v350);
      if (qword_28110B658 != -1)
      {
        swift_once();
      }

      v155 = sub_20C460000();
      __swift_project_value_buffer(v155, qword_28110E2C0);
      v156 = v324;
      sub_20C43A9C4(v102, v324, type metadata accessor for ImageAsset);
      sub_20C40C520(&v390, &v415);
      v157 = sub_20C45FFE0();
      v158 = sub_20C460680();
      sub_20C40C57C(&v390);
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *&v408 = v160;
        *v159 = 141558530;
        *(v159 + 4) = 1752392040;
        *(v159 + 12) = 2080;
        sub_20C43A9C4(v156, v317, type metadata accessor for ImageAsset);
        v161 = sub_20C4604E0();
        v163 = v162;
        sub_20C43AA94(v156, type metadata accessor for ImageAsset);
        v164 = sub_20C43A260(v161, v163, &v408);

        *(v159 + 14) = v164;
        *(v159 + 22) = 2082;
        v417 = v391[1];
        v418 = v391[2];
        v419 = v391[3];
        v415 = v390;
        v416 = v391[0];
        sub_20C40C520(&v390, &v413);
        v165 = sub_20C4604E0();
        v167 = sub_20C43A260(v165, v166, &v408);

        *(v159 + 24) = v167;
        _os_log_impl(&dword_20C404000, v157, v158, "Loaded %{mask.hash}s (%{public}s)", v159, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2FB570](v160, -1, -1);
        MEMORY[0x20F2FB570](v159, -1, -1);
      }

      else
      {

        sub_20C43AA94(v156, type metadata accessor for ImageAsset);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060);
      v241 = v352;
      sub_20C43A9C4(v102, v352, type metadata accessor for ImageAsset);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
      swift_storeEnumTagMultiPayload();
      sub_20C45FC80();
      swift_storeEnumTagMultiPayload();
      v417 = v391[1];
      v418 = v391[2];
      v419 = v391[3];
      v415 = v390;
      v416 = v391[0];
      sub_20C43C69C(v241, v102, &v415);
      sub_20C40B440(v241, &qword_27C7BAF10, &qword_20C4640D0);
      v172 = v102;
LABEL_70:
      sub_20C43AA94(v172, type metadata accessor for ImageAsset);
      return sub_20C40C57C(&v390);
    }

    v132 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
    v133 = *v132;
    v134 = v132[1];
    v135 = v346;
    sub_20C43AA2C(v86, v346, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v136 = type metadata accessor for DynamicImageAssetState(0);
    v137 = v351;
    v138 = v361;
    sub_20C4357E8(v97 + *(v136 + 28), v135, v351);
    v139 = *(v136 + 24);
    sub_20C40B440(v97 + v139, &qword_27C7BB600, &unk_20C464880);
    sub_20C43A9C4(v137, v97 + v139, type metadata accessor for ImageAsset);
    (*(v359 + 56))(v97 + v139, 0, 1, v358);
    (*(v138 + *(v353 + 20) + 16))(&v413, v137, v133, v134);
    v417 = v414[1];
    v418 = v414[2];
    v419 = v414[3];
    v415 = v413;
    v416 = v414[0];
    v407 = v413;
    v217 = *&v414[0];
    v406 = *(&v414[3] + 1);
    v405 = *(&v414[2] + 8);
    v404 = *(&v414[1] + 8);
    v403 = *(v414 + 8);
    v218 = v362;
    v219 = *(v362 + 48);
    v412 = *(v362 + 64);
    v220 = *(v362 + 32);
    v411 = v219;
    v410 = v220;
    v221 = *(v362 + 16);
    v408 = *v362;
    v409 = v221;
    v402 = v408;
    v222 = v221;
    v223 = *(v362 + 40);
    v398 = *(v362 + 24);
    v399 = v223;
    v400 = *(v362 + 56);
    v401 = *(v362 + 72);
    if (*&v414[0])
    {
      v390 = v413;
      *(v391 + 8) = *(v414 + 8);
      *(&v391[1] + 8) = *(&v414[1] + 8);
      *(&v391[2] + 8) = *(&v414[2] + 8);
      *&v391[0] = *&v414[0];
      *(&v391[3] + 1) = *(&v414[3] + 1);
      v385 = v413;
      v386 = v391[0];
      v387 = v391[1];
      v388 = v391[2];
      v389 = v391[3];
      if (v222)
      {
        v371 = *v362;
        *(v372 + 8) = *(v362 + 24);
        *(&v372[1] + 8) = *(v362 + 40);
        *(&v372[2] + 8) = *(v362 + 56);
        *(&v372[3] + 1) = *(v362 + 72);
        *&v372[0] = v222;
        v224 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v385, &v371);
        v375 = v372[1];
        v376 = v372[2];
        v377 = v372[3];
        v373 = v371;
        v374 = v372[0];
        sub_20C40C520(&v415, v370);
        sub_20C40C520(&v415, v370);
        sub_20C409B04(&v408, v370, &qword_27C7BAC68, &unk_20C464890);
        sub_20C409B04(&v390, v370, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40C57C(&v373);
        v380 = v387;
        v381 = v388;
        v382 = v389;
        v378 = v385;
        v379 = v386;
        sub_20C40C57C(&v378);
        v383 = v413;
        *(v384 + 8) = *(v414 + 8);
        *(&v384[1] + 8) = *(&v414[1] + 8);
        *(&v384[2] + 8) = *(&v414[2] + 8);
        *&v384[0] = v217;
        *(&v384[3] + 1) = *(&v414[3] + 1);
        sub_20C40B440(&v383, &qword_27C7BAC68, &unk_20C464890);
        if (v224)
        {
          sub_20C40C57C(&v415);
          sub_20C40C57C(&v415);
LABEL_89:
          v291 = v346;
          sub_20C43AA94(v351, type metadata accessor for ImageAsset);
          return sub_20C43AA94(v291, type metadata accessor for DynamicArtworkLayoutEnvironment);
        }

LABEL_74:
        v242 = *(v218 + 48);
        v391[1] = *(v218 + 32);
        v391[2] = v242;
        v391[3] = *(v218 + 64);
        v243 = *(v218 + 16);
        v390 = *v218;
        v391[0] = v243;
        sub_20C40B440(&v390, &qword_27C7BAC68, &unk_20C464890);
        *v218 = v407;
        *(v218 + 16) = v217;
        v244 = v404;
        *(v218 + 24) = v403;
        *(v218 + 40) = v244;
        *(v218 + 56) = v405;
        *(v218 + 72) = v406;
        v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
        v246 = v245[16];
        v247 = v245[20];
        v248 = v323;
        v249 = &v323[v245[24]];
        v250 = v321;
        (*(v349 + 16))(v321, v138, v350);
        swift_storeEnumTagMultiPayload();
        sub_20C43A9C4(v250, v339, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        sub_20C43BD3C(&qword_27C7BB778, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier, &unk_20C4649C0);
        sub_20C460720();
        sub_20C43AA94(v250, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        v251 = *MEMORY[0x277D04400];
        v252 = sub_20C460410();
        (*(*(v252 - 8) + 104))(&v248[v246], v251, v252);
        v253 = *MEMORY[0x277D043E0];
        v254 = sub_20C460400();
        (*(*(v254 - 8) + 104))(&v248[v247], v253, v254);
        v255 = v319;
        sub_20C43A9C4(v351, v319, type metadata accessor for ImageAsset);
        v256 = (*(v359 + 80) + 16) & ~*(v359 + 80);
        v257 = (v53 + v256 + 7) & 0xFFFFFFFFFFFFFFF8;
        v258 = swift_allocObject();
        sub_20C43AA2C(v255, v258 + v256, type metadata accessor for ImageAsset);
        v259 = (v258 + v257);
        v260 = v418;
        v259[2] = v417;
        v259[3] = v260;
        v259[4] = v419;
        v261 = v416;
        *v259 = v415;
        v259[1] = v261;
        v262 = (v258 + ((v257 + 87) & 0xFFFFFFFFFFFFFFF8));
        *v262 = v133;
        v262[1] = v134;
        *v249 = &unk_20C4648C0;
        *(v249 + 1) = v258;
        sub_20C4605F0();
        v264 = v341;
        v263 = v342;
        (*(v341 + 104))(v248, *MEMORY[0x277D043B0], v342);
        v213 = v354;
        v214 = *v354;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v214 = sub_20C426CFC(0, v214[2] + 1, 1, v214);
        }

        v266 = v214[2];
        v265 = v214[3];
        v267 = v266 + 1;
        if (v266 >= v265 >> 1)
        {
          v214 = sub_20C426CFC((v265 > 1), v266 + 1, 1, v214);
        }

        sub_20C43AA94(v351, type metadata accessor for ImageAsset);
        v268 = v346;
        goto LABEL_99;
      }

      v384[1] = v391[1];
      v384[2] = v391[2];
      v384[3] = v391[3];
      v383 = v390;
      v384[0] = v391[0];
      sub_20C40C520(&v415, &v378);
      sub_20C40C520(&v415, &v378);
      sub_20C409B04(&v408, &v378, &qword_27C7BAC68, &unk_20C464890);
      sub_20C409B04(&v390, &v378, &qword_27C7BAC68, &unk_20C464890);
      sub_20C40C57C(&v383);
    }

    else
    {
      if (!v222)
      {
        v390 = v413;
        *(v391 + 8) = *(v414 + 8);
        *(&v391[1] + 8) = *(&v414[1] + 8);
        *(&v391[2] + 8) = *(&v414[2] + 8);
        *&v391[0] = 0;
        *(&v391[3] + 1) = *(&v414[3] + 1);
        sub_20C409B04(&v408, &v385, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40B440(&v390, &qword_27C7BAC68, &unk_20C464890);
        goto LABEL_89;
      }

      sub_20C40C520(&v415, &v390);
      sub_20C40C520(&v415, &v390);
      sub_20C409B04(&v408, &v390, &qword_27C7BAC68, &unk_20C464890);
    }

    v390 = v413;
    *(v391 + 8) = *(v414 + 8);
    *(&v391[1] + 8) = *(&v414[1] + 8);
    *(&v391[2] + 8) = *(&v414[2] + 8);
    *&v391[0] = v217;
    *(&v391[3] + 1) = *(&v414[3] + 1);
    v392 = v402;
    v393 = v222;
    v397 = v401;
    v396 = v400;
    v395 = v399;
    v394 = v398;
    sub_20C40B440(&v390, &qword_27C7BACA0, &qword_20C463AC0);
    goto LABEL_74;
  }

  v113 = v364;
  if (EnumCaseMultiPayload == 6)
  {
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
    v115 = (v86 + *(v114 + 48));
    v117 = *v115;
    v116 = v115[1];
    v80 = v343;
    sub_20C43AA2C(v86, v343, type metadata accessor for DynamicArtworkLayoutEnvironment);
    sub_20C40B440(v113, &qword_27C7BB5F8, &unk_20C4640A0);
    sub_20C43A9C4(v80, v113, type metadata accessor for DynamicArtworkLayoutEnvironment);
    (*(v355 + 56))(v113, 0, 1, v356);
    v118 = v362;
    *(v362 + 80) = v117;
    *(v118 + 88) = v116;
    *(v118 + 96) = 0;
    v119 = type metadata accessor for DynamicImageAssetState(0);
    v120 = v337;
    sub_20C409B04(v113 + *(v119 + 24), v337, &qword_27C7BB600, &unk_20C464880);
    if ((*(v359 + 48))(v120, 1, v358) == 1)
    {
      sub_20C40B440(v120, &qword_27C7BB600, &unk_20C464880);
      v121 = &v83[*(v114 + 48)];
      sub_20C43A9C4(v80, v83, type metadata accessor for DynamicArtworkLayoutEnvironment);
      *v121 = v117;
      v121[1] = v116;
      swift_storeEnumTagMultiPayload();
      DynamicImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(v118, v113, v354, v83);
      sub_20C43AA94(v83, type metadata accessor for DynamicImageAssetAction);
      v122 = type metadata accessor for DynamicArtworkLayoutEnvironment;
      return sub_20C43AA94(v80, v122);
    }

    v173 = v332;
    sub_20C43AA2C(v120, v332, type metadata accessor for ImageAsset);
    v174 = v361;
    (*(v361 + *(v353 + 20) + 16))(&v413, v173, v117, v116);
    v417 = v414[1];
    v418 = v414[2];
    v419 = v414[3];
    v415 = v413;
    v416 = v414[0];
    v407 = v413;
    v233 = *&v414[0];
    v406 = *(&v414[3] + 1);
    v405 = *(&v414[2] + 8);
    v404 = *(&v414[1] + 8);
    v403 = *(v414 + 8);
    v234 = *(v118 + 48);
    v412 = *(v118 + 64);
    v235 = *(v118 + 32);
    v411 = v234;
    v410 = v235;
    v236 = *(v118 + 16);
    v408 = *v118;
    v409 = v236;
    v402 = v408;
    v237 = v236;
    v238 = *(v118 + 40);
    v398 = *(v118 + 24);
    v399 = v238;
    v400 = *(v118 + 56);
    v401 = *(v118 + 72);
    if (*&v414[0])
    {
      v390 = v413;
      *(v391 + 8) = *(v414 + 8);
      *(&v391[1] + 8) = *(&v414[1] + 8);
      *(&v391[2] + 8) = *(&v414[2] + 8);
      *&v391[0] = *&v414[0];
      *(&v391[3] + 1) = *(&v414[3] + 1);
      v385 = v413;
      v386 = v391[0];
      v387 = v391[1];
      v388 = v391[2];
      v389 = v391[3];
      if (v237)
      {
        v371 = *v118;
        *(v372 + 8) = *(v118 + 24);
        *(&v372[1] + 8) = *(v118 + 40);
        *(&v372[2] + 8) = *(v118 + 56);
        *(&v372[3] + 1) = *(v118 + 72);
        *&v372[0] = v237;
        v239 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v385, &v371);
        v375 = v372[1];
        v376 = v372[2];
        v377 = v372[3];
        v373 = v371;
        v374 = v372[0];
        sub_20C40C520(&v415, v370);
        sub_20C40C520(&v415, v370);
        sub_20C409B04(&v408, v370, &qword_27C7BAC68, &unk_20C464890);
        sub_20C409B04(&v390, v370, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40C57C(&v373);
        v380 = v387;
        v381 = v388;
        v382 = v389;
        v378 = v385;
        v379 = v386;
        sub_20C40C57C(&v378);
        v383 = v413;
        *(v384 + 8) = *(v414 + 8);
        *(&v384[1] + 8) = *(&v414[1] + 8);
        *(&v384[2] + 8) = *(&v414[2] + 8);
        *&v384[0] = v233;
        *(&v384[3] + 1) = *(&v414[3] + 1);
        sub_20C40B440(&v383, &qword_27C7BAC68, &unk_20C464890);
        v240 = v343;
        if (v239)
        {
          sub_20C40C57C(&v415);
          sub_20C40C57C(&v415);
LABEL_102:
          sub_20C43AA94(v332, type metadata accessor for ImageAsset);
          return sub_20C43AA94(v240, type metadata accessor for DynamicArtworkLayoutEnvironment);
        }

LABEL_94:
        v292 = *(v118 + 48);
        v391[1] = *(v118 + 32);
        v391[2] = v292;
        v391[3] = *(v118 + 64);
        v293 = *(v118 + 16);
        v390 = *v118;
        v391[0] = v293;
        sub_20C40B440(&v390, &qword_27C7BAC68, &unk_20C464890);
        *v118 = v407;
        *(v118 + 16) = v233;
        v294 = v404;
        *(v118 + 24) = v403;
        *(v118 + 40) = v294;
        *(v118 + 56) = v405;
        *(v118 + 72) = v406;
        v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
        v296 = v295[16];
        v297 = v295[20];
        v298 = v315;
        v248 = v316;
        v299 = &v316[v295[24]];
        (*(v349 + 16))(v315, v174, v350);
        swift_storeEnumTagMultiPayload();
        sub_20C43A9C4(v298, v339, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        sub_20C43BD3C(&qword_27C7BB778, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier, &unk_20C4649C0);
        sub_20C460720();
        sub_20C43AA94(v298, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        v300 = *MEMORY[0x277D04400];
        v301 = sub_20C460410();
        (*(*(v301 - 8) + 104))(&v248[v296], v300, v301);
        v302 = *MEMORY[0x277D043E0];
        v303 = sub_20C460400();
        (*(*(v303 - 8) + 104))(&v248[v297], v302, v303);
        v304 = v314;
        sub_20C43A9C4(v332, v314, type metadata accessor for ImageAsset);
        v305 = (*(v359 + 80) + 16) & ~*(v359 + 80);
        v306 = (v53 + v305 + 7) & 0xFFFFFFFFFFFFFFF8;
        v307 = swift_allocObject();
        sub_20C43AA2C(v304, v307 + v305, type metadata accessor for ImageAsset);
        v308 = (v307 + v306);
        v309 = v418;
        v308[2] = v417;
        v308[3] = v309;
        v308[4] = v419;
        v310 = v416;
        *v308 = v415;
        v308[1] = v310;
        v311 = (v307 + ((v306 + 87) & 0xFFFFFFFFFFFFFFF8));
        *v311 = v117;
        v311[1] = v116;
        *v299 = &unk_20C4648B0;
        *(v299 + 1) = v307;
        sub_20C4605F0();
        v264 = v341;
        v263 = v342;
        (*(v341 + 104))(v248, *MEMORY[0x277D043B0], v342);
        v213 = v354;
        v214 = *v354;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v214 = sub_20C426CFC(0, v214[2] + 1, 1, v214);
        }

        v266 = v214[2];
        v312 = v214[3];
        v267 = v266 + 1;
        if (v266 >= v312 >> 1)
        {
          v214 = sub_20C426CFC((v312 > 1), v266 + 1, 1, v214);
        }

        sub_20C43AA94(v332, type metadata accessor for ImageAsset);
        v268 = v343;
        goto LABEL_99;
      }

      v384[1] = v391[1];
      v384[2] = v391[2];
      v384[3] = v391[3];
      v383 = v390;
      v384[0] = v391[0];
      sub_20C40C520(&v415, &v378);
      sub_20C40C520(&v415, &v378);
      sub_20C409B04(&v408, &v378, &qword_27C7BAC68, &unk_20C464890);
      sub_20C409B04(&v390, &v378, &qword_27C7BAC68, &unk_20C464890);
      sub_20C40C57C(&v383);
    }

    else
    {
      if (!v237)
      {
        v390 = v413;
        *(v391 + 8) = *(v414 + 8);
        *(&v391[1] + 8) = *(&v414[1] + 8);
        *(&v391[2] + 8) = *(&v414[2] + 8);
        *&v391[0] = 0;
        *(&v391[3] + 1) = *(&v414[3] + 1);
        sub_20C409B04(&v408, &v385, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40B440(&v390, &qword_27C7BAC68, &unk_20C464890);
        v240 = v343;
        goto LABEL_102;
      }

      sub_20C40C520(&v415, &v390);
      sub_20C40C520(&v415, &v390);
      sub_20C409B04(&v408, &v390, &qword_27C7BAC68, &unk_20C464890);
    }

    v390 = v413;
    *(v391 + 8) = *(v414 + 8);
    *(&v391[1] + 8) = *(&v414[1] + 8);
    *(&v391[2] + 8) = *(&v414[2] + 8);
    *&v391[0] = v233;
    *(&v391[3] + 1) = *(&v414[3] + 1);
    v392 = v402;
    v393 = v237;
    v397 = v401;
    v396 = v400;
    v395 = v399;
    v394 = v398;
    sub_20C40B440(&v390, &qword_27C7BACA0, &qword_20C463AC0);
    goto LABEL_94;
  }

  v149 = *v86;
  v150 = v86[1];
  v151 = v362;
  *(v362 + 80) = *v86;
  *(v151 + 88) = v150;
  *(v151 + 96) = 0;
  sub_20C409B04(v113, v34, &qword_27C7BB5F8, &unk_20C4640A0);
  if ((*(v355 + 48))(v34, 1, v356) == 1)
  {
    goto LABEL_22;
  }

  sub_20C43AA2C(v34, v39, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v185 = &v83[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48)];
  sub_20C43A9C4(v39, v83, type metadata accessor for DynamicArtworkLayoutEnvironment);
  *v185 = v149;
  *(v185 + 1) = v150;
  swift_storeEnumTagMultiPayload();
  DynamicImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(v151, v113, v354, v83);
  sub_20C43AA94(v83, type metadata accessor for DynamicImageAssetAction);
  return sub_20C43AA94(v39, type metadata accessor for DynamicArtworkLayoutEnvironment);
}

uint64_t sub_20C433C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 496) = a3;
  *(v6 + 504) = a4;
  *(v6 + 480) = a5;
  *(v6 + 488) = a6;
  *(v6 + 464) = a1;
  *(v6 + 472) = a2;
  v7 = sub_20C4605B0();
  *(v6 + 512) = v7;
  *(v6 + 520) = *(v7 - 8);
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = type metadata accessor for DynamicImageAssetAction(0);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = type metadata accessor for ImageAsset(0);
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 584) = swift_task_alloc();
  sub_20C4605E0();
  *(v6 + 592) = sub_20C4605D0();
  v9 = sub_20C4605A0();
  *(v6 + 600) = v9;
  *(v6 + 608) = v8;

  return MEMORY[0x2822009F8](sub_20C433E0C, v9, v8);
}

uint64_t sub_20C433E0C()
{
  v29 = v0;
  if (qword_28110B658 != -1)
  {
    swift_once();
  }

  v1 = v0[73];
  v2 = v0[59];
  v3 = sub_20C460000();
  v0[77] = __swift_project_value_buffer(v3, qword_28110E2C0);
  sub_20C43A9C4(v2, v1, type metadata accessor for ImageAsset);
  v4 = sub_20C45FFE0();
  v5 = sub_20C460680();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[73];
  if (v6)
  {
    v8 = v0[72];
    v10 = v0[60];
    v9 = v0[61];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 141558530;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2080;
    sub_20C43A9C4(v7, v8, type metadata accessor for ImageAsset);
    v13 = sub_20C4604E0();
    v15 = v14;
    sub_20C43AA94(v7, type metadata accessor for ImageAsset);
    v16 = sub_20C43A260(v13, v15, &v28);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2082;
    v0[54] = v10;
    v0[55] = v9;
    type metadata accessor for CGSize();
    v17 = sub_20C4604E0();
    v19 = sub_20C43A260(v17, v18, &v28);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_20C404000, v4, v5, "Fetching %{mask.hash}s (%{public}s)", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2FB570](v12, -1, -1);
    MEMORY[0x20F2FB570](v11, -1, -1);
  }

  else
  {

    sub_20C43AA94(v7, type metadata accessor for ImageAsset);
  }

  v20 = v0[62];
  v21 = (v20 + *(type metadata accessor for DynamicImageAssetFeature(0) + 20));
  v27 = (*v21 + **v21);
  v22 = swift_task_alloc();
  v0[78] = v22;
  *v22 = v0;
  v22[1] = sub_20C434150;
  v23.n128_u64[0] = v0[60];
  v24.n128_u64[0] = v0[61];
  v25 = v0[59];

  return v27(v25, v23, v24);
}

uint64_t sub_20C434150(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 632) = a1;
  *(v4 + 640) = v1;

  v5 = *(v3 + 608);
  v6 = *(v3 + 600);
  if (v1)
  {
    v7 = sub_20C4350D0;
  }

  else
  {
    v7 = sub_20C434298;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20C434298()
{
  v77 = v0;
  v1 = *(v0 + 640);
  sub_20C460620();
  if (v1)
  {

    *(v0 + 656) = v1;
    *(v0 + 448) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 568);
      v4 = *(v0 + 472);

      sub_20C43A9C4(v4, v3, type metadata accessor for ImageAsset);
      v5 = sub_20C45FFE0();
      v6 = sub_20C460660();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 576);
        v8 = *(v0 + 568);
        v10 = *(v0 + 480);
        v9 = *(v0 + 488);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v76[0] = v12;
        *v11 = 136315394;
        sub_20C43A9C4(v8, v7, type metadata accessor for ImageAsset);
        v13 = sub_20C4604E0();
        v15 = v14;
        sub_20C43AA94(v8, type metadata accessor for ImageAsset);
        v16 = sub_20C43A260(v13, v15, v76);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2080;
        *(v0 + 416) = v10;
        *(v0 + 424) = v9;
        type metadata accessor for CGSize();
        v17 = sub_20C4604E0();
        v19 = sub_20C43A260(v17, v18, v76);

        *(v11 + 14) = v19;
        _os_log_impl(&dword_20C404000, v5, v6, "Fetching %s for %s cancelled", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2FB570](v12, -1, -1);
        MEMORY[0x20F2FB570](v11, -1, -1);
      }

      else
      {
        v52 = *(v0 + 568);

        sub_20C43AA94(v52, type metadata accessor for ImageAsset);
      }

      (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));

      v53 = *(v0 + 8);

      return v53();
    }

    v37 = *(v0 + 560);
    v38 = *(v0 + 472);

    sub_20C43A9C4(v38, v37, type metadata accessor for ImageAsset);
    v39 = v1;
    v40 = sub_20C45FFE0();
    v41 = sub_20C460660();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 576);
      v43 = *(v0 + 560);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76[0] = v75;
      *v44 = 136446466;
      sub_20C43A9C4(v43, v42, type metadata accessor for ImageAsset);
      v46 = sub_20C4604E0();
      v48 = v47;
      sub_20C43AA94(v43, type metadata accessor for ImageAsset);
      v49 = sub_20C43A260(v46, v48, v76);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2114;
      v50 = v1;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v51;
      *v45 = v51;
      _os_log_impl(&dword_20C404000, v40, v41, "unable to fetch %{public}s: %{public}@", v44, 0x16u);
      sub_20C40B440(v45, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x20F2FB570](v75, -1, -1);
      MEMORY[0x20F2FB570](v44, -1, -1);
    }

    else
    {
      v55 = *(v0 + 560);

      sub_20C43AA94(v55, type metadata accessor for ImageAsset);
    }

    *(v0 + 456) = v1;
    v56 = v1;
    v57 = swift_dynamicCast();
    v58 = *(v0 + 544);
    v59 = *(v0 + 504);
    v60 = *(v0 + 472);
    if (v57)
    {
      v61 = *(v0 + 680);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v63 = *(v62 + 48);
      v64 = (v58 + *(v62 + 64));
      sub_20C43A9C4(v60, v58, type metadata accessor for ImageAsset);
      *(v58 + v63) = v61;
      *v64 = *v59;
      v65 = v59[4];
      v67 = v59[1];
      v66 = v59[2];
      v64[3] = v59[3];
      v64[4] = v65;
      v64[1] = v67;
      v64[2] = v66;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v59, v0 + 96);
      v34 = swift_task_alloc();
      *(v0 + 672) = v34;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
      *v34 = v0;
      v36 = sub_20C434F78;
    }

    else
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v69 = *(v68 + 48);
      v70 = (v58 + *(v68 + 64));
      sub_20C43A9C4(v60, v58, type metadata accessor for ImageAsset);
      *(v58 + v69) = 0;
      *v70 = *v59;
      v71 = v59[4];
      v73 = v59[1];
      v72 = v59[2];
      v70[3] = v59[3];
      v70[4] = v71;
      v70[1] = v73;
      v70[2] = v72;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v59, v0 + 16);
      v34 = swift_task_alloc();
      *(v0 + 664) = v34;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
      *v34 = v0;
      v36 = sub_20C434D5C;
    }
  }

  else
  {
    if (qword_27C7BAC08 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 632);
    v21 = *(v0 + 544);
    v22 = *(v0 + 504);
    v23 = *(v0 + 472);
    v24 = qword_27C7C40A8;
    *(v0 + 176) = *v22;
    v25 = v22[4];
    v27 = v22[1];
    v26 = v22[2];
    *(v0 + 224) = v22[3];
    *(v0 + 240) = v25;
    *(v0 + 192) = v27;
    *(v0 + 208) = v26;
    v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB030, &qword_20C464A30));
    sub_20C40C520(v22, v0 + 256);
    v29 = sub_20C45FE40();
    [v24 setObject:v20 forKey:v29];

    v30 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
    sub_20C43A9C4(v23, v21, type metadata accessor for ImageAsset);
    *v30 = *v22;
    v31 = v22[4];
    v33 = v22[1];
    v32 = v22[2];
    v30[3] = v22[3];
    v30[4] = v31;
    v30[1] = v33;
    v30[2] = v32;
    swift_storeEnumTagMultiPayload();
    sub_20C40C520(v22, v0 + 336);
    v34 = swift_task_alloc();
    *(v0 + 648) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
    *v34 = v0;
    v36 = sub_20C434B44;
  }

  v34[1] = v36;
  v74 = *(v0 + 544);

  return MEMORY[0x282159B08](v74, v35);
}

uint64_t sub_20C434B44()
{
  v1 = *v0;
  v2 = *(*v0 + 544);

  sub_20C43AA94(v2, type metadata accessor for DynamicImageAssetAction);
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);

  return MEMORY[0x2822009F8](sub_20C434C9C, v4, v3);
}

uint64_t sub_20C434C9C()
{
  v1 = *(v0 + 632);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C434D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 544);

  sub_20C43AA94(v2, type metadata accessor for DynamicImageAssetAction);
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);

  return MEMORY[0x2822009F8](sub_20C434EB4, v4, v3);
}

uint64_t sub_20C434EB4()
{
  v1 = *(v0 + 656);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C434F78()
{
  v1 = *v0;
  v2 = *(*v0 + 544);

  sub_20C43AA94(v2, type metadata accessor for DynamicImageAssetAction);
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);

  return MEMORY[0x2822009F8](sub_20C43C698, v4, v3);
}

uint64_t sub_20C4350D0()
{
  v63 = v0;
  v1 = *(v0 + 640);
  *(v0 + 656) = v1;
  *(v0 + 448) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 568);
    v4 = *(v0 + 472);

    sub_20C43A9C4(v4, v3, type metadata accessor for ImageAsset);
    v5 = sub_20C45FFE0();
    v6 = sub_20C460660();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 576);
      v8 = *(v0 + 568);
      v10 = *(v0 + 480);
      v9 = *(v0 + 488);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v62 = v12;
      *v11 = 136315394;
      sub_20C43A9C4(v8, v7, type metadata accessor for ImageAsset);
      v13 = sub_20C4604E0();
      v15 = v14;
      sub_20C43AA94(v8, type metadata accessor for ImageAsset);
      v16 = sub_20C43A260(v13, v15, &v62);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      *(v0 + 416) = v10;
      *(v0 + 424) = v9;
      type metadata accessor for CGSize();
      v17 = sub_20C4604E0();
      v19 = sub_20C43A260(v17, v18, &v62);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_20C404000, v5, v6, "Fetching %s for %s cancelled", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FB570](v12, -1, -1);
      MEMORY[0x20F2FB570](v11, -1, -1);
    }

    else
    {
      v35 = *(v0 + 568);

      sub_20C43AA94(v35, type metadata accessor for ImageAsset);
    }

    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v20 = *(v0 + 560);
    v21 = *(v0 + 472);

    sub_20C43A9C4(v21, v20, type metadata accessor for ImageAsset);
    v22 = v1;
    v23 = sub_20C45FFE0();
    v24 = sub_20C460660();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 576);
      v26 = *(v0 + 560);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = v61;
      *v27 = 136446466;
      sub_20C43A9C4(v26, v25, type metadata accessor for ImageAsset);
      v29 = sub_20C4604E0();
      v31 = v30;
      sub_20C43AA94(v26, type metadata accessor for ImageAsset);
      v32 = sub_20C43A260(v29, v31, &v62);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2114;
      v33 = v1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      _os_log_impl(&dword_20C404000, v23, v24, "unable to fetch %{public}s: %{public}@", v27, 0x16u);
      sub_20C40B440(v28, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x20F2FB570](v61, -1, -1);
      MEMORY[0x20F2FB570](v27, -1, -1);
    }

    else
    {
      v38 = *(v0 + 560);

      sub_20C43AA94(v38, type metadata accessor for ImageAsset);
    }

    *(v0 + 456) = v1;
    v39 = v1;
    v40 = swift_dynamicCast();
    v41 = *(v0 + 544);
    v42 = *(v0 + 504);
    v43 = *(v0 + 472);
    if (v40)
    {
      v44 = *(v0 + 680);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v46 = *(v45 + 48);
      v47 = (v41 + *(v45 + 64));
      sub_20C43A9C4(v43, v41, type metadata accessor for ImageAsset);
      *(v41 + v46) = v44;
      *v47 = *v42;
      v48 = v42[4];
      v50 = v42[1];
      v49 = v42[2];
      v47[3] = v42[3];
      v47[4] = v48;
      v47[1] = v50;
      v47[2] = v49;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v42, v0 + 96);
      v51 = swift_task_alloc();
      *(v0 + 672) = v51;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
      *v51 = v0;
      v53 = sub_20C434F78;
    }

    else
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v55 = *(v54 + 48);
      v56 = (v41 + *(v54 + 64));
      sub_20C43A9C4(v43, v41, type metadata accessor for ImageAsset);
      *(v41 + v55) = 0;
      *v56 = *v42;
      v57 = v42[4];
      v59 = v42[1];
      v58 = v42[2];
      v56[3] = v42[3];
      v56[4] = v57;
      v56[1] = v59;
      v56[2] = v58;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v42, v0 + 16);
      v51 = swift_task_alloc();
      *(v0 + 664) = v51;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
      *v51 = v0;
      v53 = sub_20C434D5C;
    }

    v51[1] = v53;
    v60 = *(v0 + 544);

    return MEMORY[0x282159B08](v60, v52);
  }
}

uint64_t sub_20C4357E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB688, &qword_20C464A40);
  MEMORY[0x28223BE20](v61);
  v60 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v51 - v7;
  v8 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7C0, &qword_20C464A48);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7C8, &qword_20C464A50);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v57 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v57);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7D0, &qword_20C464A58);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  v54 = a1;
  v25 = sub_20C45FD80();
  v55 = a2;
  v63 = a2;
  sub_20C436880(sub_20C43C3BC, v25, v24);

  v58 = v24;
  sub_20C409B04(v24, v21, &qword_27C7BB7D0, &qword_20C464A58);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    sub_20C40B440(v21, &qword_27C7BB7D0, &qword_20C464A58);
    sub_20C45FD70();
    v26 = v53;
    sub_20C45FDB0();
    v27 = *(v52 + 8);
    v27(v12, v26);
    sub_20C45FD70();
    v28 = sub_20C45FDC0();
    v30 = v29;
    v27(v12, v26);
    if (qword_28110B658 != -1)
    {
      swift_once();
    }

    v31 = sub_20C460000();
    __swift_project_value_buffer(v31, qword_28110E2C0);
    v32 = v56;
    sub_20C43A9C4(v55, v56, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v33 = sub_20C45FFE0();
    v34 = sub_20C460660();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v64 = v36;
      *v35 = 136446210;
      v37 = DynamicArtworkLayoutEnvironment.description.getter();
      v39 = v38;
      sub_20C43AA94(v32, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v40 = sub_20C43A260(v37, v39, &v64);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_20C404000, v33, v34, "[DynamicAssetFeature] Failed to find preferred artwork for environment %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x20F2FB570](v36, -1, -1);
      MEMORY[0x20F2FB570](v35, -1, -1);
    }

    else
    {

      sub_20C43AA94(v32, type metadata accessor for DynamicArtworkLayoutEnvironment);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v21, v13);
    sub_20C45FD50();
    v41 = sub_20C45FD60();
    if (v42)
    {
      v28 = v41;
    }

    else
    {
      v28 = 0;
    }

    if (v42)
    {
      v30 = v42;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    (*(v14 + 8))(v16, v13);
  }

  v43 = v59;
  sub_20C409B04(v18, v59, &qword_27C7BAC10, &qword_20C462070);
  v64 = v28;
  v65 = v30;
  sub_20C45FDD0();
  sub_20C43BD3C(&qword_27C7BB7D8, MEMORY[0x277D09E00], MEMORY[0x277D09E20]);
  v44 = v60;
  sub_20C45FE60();
  v45 = *(v57 + 20);
  v46 = type metadata accessor for ImageAsset(0);
  v47 = v62;
  sub_20C409B04(&v18[v45], v62 + v46[7], &qword_27C7BAC18, &unk_20C464A00);
  sub_20C409B04(v43, v47, &qword_27C7BAC10, &qword_20C462070);
  sub_20C45FE50();
  sub_20C40B440(v44, &qword_27C7BB688, &qword_20C464A40);
  sub_20C40B440(v43, &qword_27C7BAC10, &qword_20C462070);
  sub_20C43AA94(v18, type metadata accessor for Artwork);
  result = sub_20C40B440(v58, &qword_27C7BB7D0, &qword_20C464A58);
  v49 = v65;
  v50 = (v47 + v46[5]);
  *v50 = v64;
  v50[1] = v49;
  *(v47 + v46[6]) = 1;
  return result;
}

uint64_t sub_20C435F4C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 96) = a1;
  *(v5 + 136) = type metadata accessor for DynamicImageAssetAction(0);
  *(v5 + 144) = swift_task_alloc();
  sub_20C4605E0();
  *(v5 + 152) = sub_20C4605D0();
  v7 = sub_20C4605A0();
  *(v5 + 160) = v7;
  *(v5 + 168) = v6;

  return MEMORY[0x2822009F8](sub_20C43601C, v7, v6);
}

uint64_t sub_20C43601C()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
  v7 = (v1 + *(v6 + 48));
  v8 = (v1 + *(v6 + 64));
  sub_20C43A9C4(v5, v1, type metadata accessor for ImageAsset);
  *v7 = *v4;
  v9 = v4[4];
  v11 = v4[1];
  v10 = v4[2];
  v7[3] = v4[3];
  v7[4] = v9;
  v7[1] = v11;
  v7[2] = v10;
  *v8 = v3;
  v8[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(v4, (v0 + 2));
  v12 = swift_task_alloc();
  v0[22] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
  *v12 = v0;
  v12[1] = sub_20C436170;
  v14 = v0[18];

  return MEMORY[0x282159B08](v14, v13);
}

uint64_t sub_20C436170()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  sub_20C43AA94(v2, type metadata accessor for DynamicImageAssetAction);
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C4362C8, v4, v3);
}

uint64_t sub_20C4362C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C436334(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 96) = a1;
  *(v5 + 136) = type metadata accessor for DynamicImageAssetAction(0);
  *(v5 + 144) = swift_task_alloc();
  sub_20C4605E0();
  *(v5 + 152) = sub_20C4605D0();
  v7 = sub_20C4605A0();
  *(v5 + 160) = v7;
  *(v5 + 168) = v6;

  return MEMORY[0x2822009F8](sub_20C436404, v7, v6);
}

uint64_t sub_20C436404()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
  v7 = (v1 + *(v6 + 48));
  v8 = (v1 + *(v6 + 64));
  sub_20C43A9C4(v5, v1, type metadata accessor for ImageAsset);
  *v7 = *v4;
  v9 = v4[4];
  v11 = v4[1];
  v10 = v4[2];
  v7[3] = v4[3];
  v7[4] = v9;
  v7[1] = v11;
  v7[2] = v10;
  *v8 = v3;
  v8[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(v4, (v0 + 2));
  v12 = swift_task_alloc();
  v0[22] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
  *v12 = v0;
  v12[1] = sub_20C436558;
  v14 = v0[18];

  return MEMORY[0x282159B08](v14, v13);
}

uint64_t sub_20C436558()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  sub_20C43AA94(v2, type metadata accessor for DynamicImageAssetAction);
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C43C694, v4, v3);
}

uint64_t sub_20C4366B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7C8, &qword_20C464A50);
  v7 = sub_20C45FD40();
  sub_20C43A9C4(a2, v6, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v8 = *v6 + 1;
  v9 = v6[1] + 1;
  v10 = sub_20C45FDE0();
  v12 = v11;
  v13 = v6[*(v4 + 36)];
  v14 = sub_20C45FDE0();
  v16 = v15;
  sub_20C43AA94(v6, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v26[0] = v8;
  v26[1] = v9;
  v26[2] = v10;
  v26[3] = v12;
  v27 = v13;
  v28 = v14;
  v29 = v16;
  v17 = v22[1];
  sub_20C42F1BC(v26, v7, v23);

  sub_20C43C3DC(v26);
  if (v17)
  {

    return 0;
  }

  else
  {
    v19 = v24;
    v20 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v20 + 16))(&v30, v19, v20);
    v18 = v30;
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return v18;
}

uint64_t sub_20C436880@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7C8, &qword_20C464A50);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_20C436A64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v194 = a2;
  v2 = a1[1];
  v181 = *a1;
  v182 = a1;
  v4 = a1[2];
  v3 = a1[3];
  *&v183 = v2;
  *(&v183 + 1) = v4;
  v184 = v3;
  v185 = *(a1 + 32);
  v5 = a1[6];
  *&v186 = a1[5];
  *(&v186 + 1) = v5;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7E0, &qword_20C464A60);
  MEMORY[0x28223BE20](v198);
  v199 = &v176 - v6;
  v214 = sub_20C45FEF0();
  v7 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v9 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v176 - v11;
  v197 = sub_20C45FF00();
  MEMORY[0x28223BE20](v197);
  v180 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v177 = &v176 - v15;
  MEMORY[0x28223BE20](v16);
  v178 = &v176 - v17;
  MEMORY[0x28223BE20](v18);
  v192 = &v176 - v19;
  MEMORY[0x28223BE20](v20);
  v179 = &v176 - v21;
  MEMORY[0x28223BE20](v22);
  v191 = (&v176 - v23);
  MEMORY[0x28223BE20](v24);
  v190 = (&v176 - v25);
  MEMORY[0x28223BE20](v26);
  v189 = (&v176 - v27);
  MEMORY[0x28223BE20](v28);
  v193 = &v176 - v29;
  MEMORY[0x28223BE20](v30);
  v188 = &v176 - v31;
  MEMORY[0x28223BE20](v32);
  v196 = &v176 - v33;
  MEMORY[0x28223BE20](v34);
  v195 = &v176 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v176 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v176 - v40;
  sub_20C45FFB0();
  sub_20C45FED0();
  v42 = MEMORY[0x277D0A8D8];
  v187 = v41;
  sub_20C43AA94(v41, MEMORY[0x277D0A8D8]);
  sub_20C45FFC0();
  sub_20C45FED0();
  sub_20C43AA94(v38, v42);
  v43 = sub_20C45FEE0();
  v44 = *(v7 + 8);
  v45 = v9;
  v46 = v214;
  v44(v45, v214);
  v44(v12, v46);
  if ((v43 & 1) == 0)
  {
    sub_20C43C430();
    swift_allocError();
    v68 = 6;
LABEL_61:
    *v67 = v68;
    return swift_willThrow();
  }

  v47 = sub_20C45FFA0();
  v48 = v195;
  sub_20C45FFB0();
  v49 = v196;
  sub_20C45FFC0();
  v50 = v199;
  v51 = (v199 + *(v198 + 48));
  v52 = MEMORY[0x277D0A8D8];
  sub_20C43AA2C(v48, v199, MEMORY[0x277D0A8D8]);
  sub_20C43AA2C(v49, v51, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v69 = v188;
      sub_20C43A9C4(v50, v188, MEMORY[0x277D0A8D8]);
      v70 = *v69;
      v71 = swift_getEnumCaseMultiPayload();
      if (!v71)
      {
        v139 = v187;
        sub_20C43A9C4(v51, v187, MEMORY[0x277D0A8D8]);
        LOBYTE(v139) = *v139;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB828, &qword_20C464AF8);
        v141 = v194;
        v194[3] = v140;
        v141[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
        *v141 = v70;
        *(v141 + 1) = v139;
        *(v141 + 2) = v47;
LABEL_67:
        v175 = MEMORY[0x277D0A8D8];
        sub_20C43AA94(v51, MEMORY[0x277D0A8D8]);
        v102 = v50;
        v101 = v175;
        return sub_20C43AA94(v102, v101);
      }

      if (v71 == 3)
      {
        v72 = v179;
        sub_20C43A9C4(v51, v179, MEMORY[0x277D0A8D8]);
        v73 = sub_20C45FF20();
        v74 = *(v73 - 8);
        if ((*(v74 + 88))(v72, v73) == *MEMORY[0x277D0A918])
        {
          v75 = sub_20C45FE10();
          MEMORY[0x28223BE20](v75);
          *(&v176 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v176 - 1) = sub_20C43C484();
          KeyPath = swift_getKeyPath();
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB808, &qword_20C464AA8);
          v78 = v194;
          v194[3] = v77;
          v78[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
          v79 = swift_allocObject();
          v80 = v181;
          *&v204 = KeyPath;
          *(&v204 + 1) = v181;
          v81 = *(&v183 + 1);
          v82 = v183;
          v205 = v183;
          v83 = v184;
          *&v206 = v184;
          v84 = v185;
          BYTE8(v206) = v185;
          v85 = *(&v186 + 1);
          v86 = v186;
          v207 = v186;
          v87 = v183;
          *(v79 + 24) = v204;
          *(v79 + 40) = v87;
          v88 = v207;
          *(v79 + 56) = v206;
          *v78 = v79;
          *(v79 + 16) = v75;
          *(v79 + 72) = v88;
          *(v79 + 88) = v47;
          v208 = KeyPath;
LABEL_64:
          v209 = v80;
          *&v210 = v82;
          *(&v210 + 1) = v81;
          v211 = v83;
          v212 = v84;
          *&v213 = v86;
          *(&v213 + 1) = v85;
          sub_20C43C4D8(v182, v201);
          goto LABEL_65;
        }

        (*(v74 + 8))(v72, v73);
      }

      goto LABEL_44;
    }

    v103 = v189;
    sub_20C43A9C4(v50, v189, MEMORY[0x277D0A8D8]);
    v90 = *v103;
    v104 = swift_getEnumCaseMultiPayload();
    if (v104 != 1)
    {
      if (v104 == 3)
      {
        v105 = v180;
        sub_20C43A9C4(v51, v180, MEMORY[0x277D0A8D8]);
        v106 = sub_20C45FF20();
        v107 = *(v106 - 8);
        v108 = (*(v107 + 88))(v105, v106);
        if (v108 == *MEMORY[0x277D0A910])
        {
          MEMORY[0x28223BE20](v108);
          *(&v176 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v176 - 1) = sub_20C43C484();
          v109 = swift_getKeyPath();
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB808, &qword_20C464AA8);
          v111 = v194;
          v194[3] = v110;
          v111[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
          v112 = swift_allocObject();
          v80 = v181;
          *&v204 = v109;
          *(&v204 + 1) = v181;
          v81 = *(&v183 + 1);
          v82 = v183;
          v205 = v183;
          v83 = v184;
          *&v206 = v184;
          v84 = v185;
          BYTE8(v206) = v185;
          v85 = *(&v186 + 1);
          v86 = v186;
          v207 = v186;
          v113 = v183;
          *(v112 + 24) = v204;
          *(v112 + 40) = v113;
          v114 = v207;
          *(v112 + 56) = v206;
          *v111 = v112;
          *(v112 + 16) = v90;
          *(v112 + 72) = v114;
          *(v112 + 88) = v47;
LABEL_63:
          v208 = v109;
          goto LABEL_64;
        }

        (*(v107 + 8))(v105, v106);
      }

LABEL_44:
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v145 = v192;
        sub_20C43A9C4(v51, v192, MEMORY[0x277D0A8D8]);
        v146 = sub_20C45FF20();
        v147 = *(v146 - 8);
        v148 = (*(v147 + 88))(v145, v146);
        if (v148 == *MEMORY[0x277D0A918] || v148 == *MEMORY[0x277D0A910])
        {
          goto LABEL_60;
        }

        (*(v147 + 8))(v145, v146);
      }

      v149 = swift_getEnumCaseMultiPayload();
      if (v149 < 3)
      {
        goto LABEL_54;
      }

      if (v149 == 3)
      {
        v150 = swift_getEnumCaseMultiPayload();
        if (v150 < 3)
        {
          v51 = v50;
LABEL_54:
          sub_20C43AA94(v51, MEMORY[0x277D0A8D8]);
          sub_20C43C430();
          swift_allocError();
          v68 = 2;
          goto LABEL_61;
        }

        if (v150 == 3)
        {
          sub_20C43C430();
          swift_allocError();
          *v165 = 10;
          swift_willThrow();
          return sub_20C40B440(v50, &qword_27C7BB7E0, &qword_20C464A60);
        }

        v151 = v51;
        v51 = v50;
      }

      else
      {
        v151 = v50;
      }

      sub_20C43AA94(v151, MEMORY[0x277D0A8D8]);
      goto LABEL_54;
    }

    v142 = v187;
    sub_20C43A9C4(v51, v187, MEMORY[0x277D0A8D8]);
    v91 = *v142;
    sub_20C43AA94(v51, MEMORY[0x277D0A8D8]);
LABEL_40:
    sub_20C43AA94(v50, MEMORY[0x277D0A8D8]);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7F8, &qword_20C464A70);
    v144 = v194;
    v194[3] = result;
    v144[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
    *v144 = v90;
    v144[1] = v91;
    *(v144 + 16) = v47;
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v89 = v190;
    sub_20C43A9C4(v50, v190, MEMORY[0x277D0A8D8]);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_44;
    }

    v90 = *v89;
    v91 = *v51;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload == 3)
  {
    LODWORD(v214) = v47;
    v54 = v193;
    sub_20C43A9C4(v50, v193, MEMORY[0x277D0A8D8]);
    v55 = sub_20C45FF20();
    v56 = *(v55 - 8);
    v57 = *(v56 + 88);
    v58 = v57(v54, v55);
    v59 = v58;
    if (v58 == *MEMORY[0x277D0A918])
    {
      v60 = swift_getEnumCaseMultiPayload();
      if (v60)
      {
        if (v60 == 3)
        {
          v61 = v178;
          sub_20C43A9C4(v51, v178, MEMORY[0x277D0A8D8]);
          if (v57(v61, v55) == v59)
          {
            if (qword_28110B658 != -1)
            {
              swift_once();
            }

            v62 = sub_20C460000();
            __swift_project_value_buffer(v62, qword_28110E2C0);
            v63 = sub_20C45FFE0();
            v64 = sub_20C460660();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v208 = v66;
              *v65 = 136315138;
              *(v65 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v208);
              _os_log_impl(&dword_20C404000, v63, v64, "%s", v65, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v66);
              MEMORY[0x20F2FB570](v66, -1, -1);
              MEMORY[0x20F2FB570](v65, -1, -1);
            }

LABEL_36:

            v120 = *(&v186 + 1);
            v121 = v214;
            MEMORY[0x28223BE20](v122);
            *(&v176 - 2) = &type metadata for ArtworkPredicateInput;
            *(&v176 - 1) = sub_20C43C484();
            v123 = swift_getKeyPath();
            v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB818, &qword_20C464AB8);
            v125 = v194;
            v194[3] = v124;
            v125[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
            v126 = swift_allocObject();
            *v125 = v126;
            v127 = v181;
            *&v201[0] = v123;
            *(&v201[0] + 1) = v181;
            v128 = v183;
            v201[1] = v183;
            v129 = v184;
            *&v202 = v184;
            v130 = v185;
            BYTE8(v202) = v185;
            v131 = v186;
            *&v203 = v186;
            *(&v203 + 1) = v120;
            *&v204 = v123;
            *(&v204 + 1) = v181;
            v205 = v183;
            *&v206 = v184;
            BYTE8(v206) = v185;
            *&v207 = v186;
            *(&v207 + 1) = v120;
            v132 = v201[0];
            v133 = v183;
            v134 = v203;
            *(v126 + 48) = v202;
            *(v126 + 64) = v134;
            *(v126 + 16) = v132;
            *(v126 + 32) = v133;
            v135 = v204;
            v136 = v205;
            v137 = v207;
            *(v126 + 112) = v206;
            *(v126 + 128) = v137;
            *(v126 + 80) = v135;
            *(v126 + 96) = v136;
            *(v126 + 144) = v121;
            v208 = v123;
            v209 = v127;
            v210 = v128;
            v211 = v129;
            v212 = v130;
            *&v213 = v131;
            *(&v213 + 1) = v120;
            sub_20C43C4D8(v182, v200);
            sub_20C409B04(v201, v200, &qword_27C7BB810, &qword_20C464AB0);
            v138 = v200;
LABEL_66:
            sub_20C409B04(&v204, v138, &qword_27C7BB810, &qword_20C464AB0);
            sub_20C40B440(&v208, &qword_27C7BB810, &qword_20C464AB0);
            goto LABEL_67;
          }

LABEL_59:
          (*(v56 + 8))(v61, v55);
          goto LABEL_60;
        }

        goto LABEL_60;
      }

      v152 = sub_20C43A9C4(v51, v187, MEMORY[0x277D0A8D8]);
      MEMORY[0x28223BE20](v152);
      *(&v176 - 2) = &type metadata for ArtworkPredicateInput;
      *(&v176 - 1) = sub_20C43C484();
      v153 = swift_getKeyPath();
      sub_20C43C4D8(v182, &v208);
      v154 = sub_20C45FE10();
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB820, &qword_20C464AC0);
      v156 = v194;
      v194[3] = v155;
      v156[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
      v157 = swift_allocObject();
      *v156 = v157;
      v158 = v181;
      *&v204 = v153;
      *(&v204 + 1) = v181;
      v159 = v183;
      v205 = v183;
      v160 = v184;
      *&v206 = v184;
      v161 = v185;
      BYTE8(v206) = v185;
      v162 = v186;
      v207 = v186;
      v163 = v183;
      *(v157 + 16) = v204;
      *(v157 + 32) = v163;
      v164 = v207;
      *(v157 + 48) = v206;
      *(v157 + 64) = v164;
      *(v157 + 80) = v154;
      *(v157 + 88) = v214;
      v208 = v153;
      v209 = v158;
      v210 = v159;
      v211 = v160;
      v212 = v161;
      v213 = v162;
LABEL_65:
      v138 = v201;
      goto LABEL_66;
    }

    if (v58 == *MEMORY[0x277D0A910])
    {
      v115 = swift_getEnumCaseMultiPayload();
      if (v115 != 1)
      {
        if (v115 == 3)
        {
          v61 = v177;
          sub_20C43A9C4(v51, v177, MEMORY[0x277D0A8D8]);
          if (v57(v61, v55) == v59)
          {
            if (qword_28110B658 != -1)
            {
              swift_once();
            }

            v116 = sub_20C460000();
            __swift_project_value_buffer(v116, qword_28110E2C0);
            v63 = sub_20C45FFE0();
            v117 = sub_20C460660();
            if (os_log_type_enabled(v63, v117))
            {
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v208 = v119;
              *v118 = 136315138;
              *(v118 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v208);
              _os_log_impl(&dword_20C404000, v63, v117, "%s", v118, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v119);
              MEMORY[0x20F2FB570](v119, -1, -1);
              MEMORY[0x20F2FB570](v118, -1, -1);
            }

            goto LABEL_36;
          }

          goto LABEL_59;
        }

LABEL_60:
        v166 = MEMORY[0x277D0A8D8];
        sub_20C43AA94(v51, MEMORY[0x277D0A8D8]);
        sub_20C43AA94(v50, v166);
        sub_20C43C430();
        swift_allocError();
        v68 = 5;
        goto LABEL_61;
      }

      v167 = v187;
      v168 = sub_20C43A9C4(v51, v187, MEMORY[0x277D0A8D8]);
      v169 = *v167;
      MEMORY[0x28223BE20](v168);
      *(&v176 - 2) = &type metadata for ArtworkPredicateInput;
      *(&v176 - 1) = sub_20C43C484();
      v109 = swift_getKeyPath();
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB820, &qword_20C464AC0);
      v171 = v194;
      v194[3] = v170;
      v171[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
      v172 = swift_allocObject();
      *v171 = v172;
      v80 = v181;
      *&v204 = v109;
      *(&v204 + 1) = v181;
      v81 = *(&v183 + 1);
      v82 = v183;
      v205 = v183;
      v83 = v184;
      *&v206 = v184;
      v84 = v185;
      BYTE8(v206) = v185;
      v85 = *(&v186 + 1);
      v86 = v186;
      v207 = v186;
      v173 = v183;
      *(v172 + 16) = v204;
      *(v172 + 32) = v173;
      v174 = v207;
      *(v172 + 48) = v206;
      *(v172 + 64) = v174;
      *(v172 + 80) = v169;
      *(v172 + 88) = v214;
      goto LABEL_63;
    }

    (*(v56 + 8))(v193, v55);
    goto LABEL_44;
  }

  v92 = v191;
  sub_20C43A9C4(v50, v191, MEMORY[0x277D0A8D8]);
  v93 = v92[1];
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    goto LABEL_44;
  }

  v94 = *v92;
  v95 = *v51;
  v96 = v51[1];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7F0, &qword_20C464A68);
  v98 = v47;
  v99 = v194;
  v194[3] = v97;
  v99[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
  v100 = swift_allocObject();
  *v99 = v100;
  *(v100 + 16) = v94;
  *(v100 + 24) = v93;
  *(v100 + 32) = v95;
  *(v100 + 40) = v96;
  *(v100 + 48) = v98;
  v101 = MEMORY[0x277D0A8D8];
  v102 = v50;
  return sub_20C43AA94(v102, v101);
}

void *sub_20C437EDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v331 = a2;
  v2 = a1[1];
  v323 = *a1;
  *&v324 = v2;
  v3 = a1[3];
  *(&v324 + 1) = a1[2];
  v325 = v3;
  v326 = *(a1 + 32);
  v4 = a1[6];
  *&v327 = a1[5];
  *(&v327 + 1) = v4;
  v328 = a1;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB830, &qword_20C464B00);
  MEMORY[0x28223BE20](v333);
  v334 = &v305 - v5;
  v353 = sub_20C45FEB0();
  v336 = *(v353 - 8);
  MEMORY[0x28223BE20](v353);
  v335 = &v305 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v305 - v8;
  v332 = sub_20C45FEC0();
  MEMORY[0x28223BE20](v332);
  v314 = &v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v312 = &v305 - v12;
  MEMORY[0x28223BE20](v13);
  v313 = &v305 - v14;
  MEMORY[0x28223BE20](v15);
  v311 = &v305 - v16;
  MEMORY[0x28223BE20](v17);
  v305 = &v305 - v18;
  MEMORY[0x28223BE20](v19);
  v307 = &v305 - v20;
  MEMORY[0x28223BE20](v21);
  v306 = &v305 - v22;
  MEMORY[0x28223BE20](v23);
  v308 = &v305 - v24;
  MEMORY[0x28223BE20](v25);
  v309 = &v305 - v26;
  MEMORY[0x28223BE20](v27);
  v330 = &v305 - v28;
  MEMORY[0x28223BE20](v29);
  v310 = &v305 - v30;
  MEMORY[0x28223BE20](v31);
  v320 = (&v305 - v32);
  MEMORY[0x28223BE20](v33);
  v321 = (&v305 - v34);
  MEMORY[0x28223BE20](v35);
  v318 = &v305 - v36;
  MEMORY[0x28223BE20](v37);
  v319 = (&v305 - v38);
  MEMORY[0x28223BE20](v39);
  v317 = (&v305 - v40);
  MEMORY[0x28223BE20](v41);
  v316 = (&v305 - v42);
  MEMORY[0x28223BE20](v43);
  v322 = &v305 - v44;
  MEMORY[0x28223BE20](v45);
  v315 = &v305 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v305 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v305 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v305 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v305 - v57;
  sub_20C45FF70();
  sub_20C45FE90();
  v59 = MEMORY[0x277D0A8D0];
  v329 = v58;
  sub_20C43AA94(v58, MEMORY[0x277D0A8D0]);
  sub_20C45FF80();
  v60 = v335;
  sub_20C45FE90();
  sub_20C43AA94(v55, v59);
  v61 = sub_20C45FEA0();
  v62 = *(v336 + 8);
  v63 = v60;
  v64 = v353;
  v62(v63, v353);
  v62(v9, v64);
  if (v61)
  {
    sub_20C45FF70();
    sub_20C45FF80();
    v65 = v334;
    v66 = (v334 + *(v333 + 48));
    v67 = MEMORY[0x277D0A8D0];
    sub_20C43AA2C(v52, v334, MEMORY[0x277D0A8D0]);
    sub_20C43AA2C(v49, v66, v67);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v69 = v65;
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v70 = v315;
          sub_20C43A9C4(v65, v315, MEMORY[0x277D0A8D0]);
          v71 = *v70;
          v72 = swift_getEnumCaseMultiPayload();
          if (v72)
          {
            if (v72 == 4)
            {
              v73 = v310;
              sub_20C43A9C4(v66, v310, MEMORY[0x277D0A8D0]);
              v74 = sub_20C45FF10();
              v75 = *(v74 - 8);
              if ((*(v75 + 88))(v73, v74) == *MEMORY[0x277D0A8F0])
              {
                v76 = sub_20C45FE10();
                MEMORY[0x28223BE20](v76);
                *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
                *(&v305 - 1) = sub_20C43C484();
                KeyPath = swift_getKeyPath();
                v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB870, &qword_20C464BD0);
                v79 = v331;
                v331[3] = v78;
                v79[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
                v80 = swift_allocObject();
                v82 = v323;
                v81 = v324;
                *&v342 = KeyPath;
                *(&v342 + 1) = v323;
                v84 = *(&v324 + 1);
                v83 = v325;
                v343 = v324;
                *&v344 = v325;
                v85 = v326;
                BYTE8(v344) = v326;
                v86 = *(&v327 + 1);
                v87 = v327;
                v345 = v327;
                v88 = v324;
                *(v80 + 24) = v342;
                *(v80 + 40) = v88;
                v89 = v345;
                *(v80 + 56) = v344;
                *v79 = v80;
                *(v80 + 16) = v76;
                *(v80 + 72) = v89;
                v346 = KeyPath;
LABEL_89:
                v347 = v82;
                v348 = v81;
                v349 = v84;
                v350 = v83;
                v351 = v85;
                *&v352 = v87;
                *(&v352 + 1) = v86;
                sub_20C43C4D8(v328, &v338);
                v178 = &qword_27C7BB810;
                v179 = &qword_20C464AB0;
                goto LABEL_90;
              }

              (*(v75 + 8))(v73, v74);
            }

            goto LABEL_67;
          }

          v180 = v329;
          sub_20C43A9C4(v66, v329, MEMORY[0x277D0A8D0]);
          LOBYTE(v180) = *v180;
          v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8A8, &qword_20C464C08);
          v182 = v331;
          v331[3] = v181;
          v182[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          *v182 = v71;
          *(v182 + 1) = v180;
LABEL_92:
          v263 = MEMORY[0x277D0A8D0];
          sub_20C43AA94(v66, MEMORY[0x277D0A8D0]);
          v112 = v69;
          v111 = v263;
          return sub_20C43AA94(v112, v111);
        }

        v125 = v316;
        sub_20C43A9C4(v65, v316, MEMORY[0x277D0A8D0]);
        v126 = *v125;
        v127 = swift_getEnumCaseMultiPayload();
        if (v127 != 1)
        {
          if (v127 == 4)
          {
            v128 = v311;
            sub_20C43A9C4(v66, v311, MEMORY[0x277D0A8D0]);
            v129 = sub_20C45FF10();
            v130 = *(v129 - 8);
            v131 = (*(v130 + 88))(v128, v129);
            if (v131 == *MEMORY[0x277D0A8E8])
            {
              MEMORY[0x28223BE20](v131);
              *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
              *(&v305 - 1) = sub_20C43C484();
              v132 = swift_getKeyPath();
              v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB870, &qword_20C464BD0);
              v134 = v331;
              v331[3] = v133;
              v134[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
              v135 = swift_allocObject();
              v82 = v323;
              v81 = v324;
              *&v342 = v132;
              *(&v342 + 1) = v323;
              v84 = *(&v324 + 1);
              v83 = v325;
              v343 = v324;
              *&v344 = v325;
              v85 = v326;
              BYTE8(v344) = v326;
              v86 = *(&v327 + 1);
              v87 = v327;
              v345 = v327;
              v136 = v324;
              *(v135 + 24) = v342;
              *(v135 + 40) = v136;
              v137 = v345;
              *(v135 + 56) = v344;
              *v134 = v135;
              *(v135 + 16) = v126;
              *(v135 + 72) = v137;
LABEL_88:
              v346 = v132;
              goto LABEL_89;
            }

            goto LABEL_52;
          }

LABEL_67:
          if (swift_getEnumCaseMultiPayload() != 4)
          {
            goto LABEL_74;
          }

          v237 = v330;
          sub_20C43A9C4(v66, v330, MEMORY[0x277D0A8D0]);
          v238 = sub_20C45FF10();
          v239 = *(v238 - 8);
          v240 = (*(v239 + 88))(v237, v238);
          if (v240 != *MEMORY[0x277D0A8F0] && v240 != *MEMORY[0x277D0A8E8] && v240 != *MEMORY[0x277D0A900] && v240 != *MEMORY[0x277D0A908] && v240 != *MEMORY[0x277D0A8F8])
          {
            (*(v239 + 8))(v330, v238);
LABEL_74:
            v241 = 1 << swift_getEnumCaseMultiPayload();
            if ((v241 & 0x2B) == 0)
            {
              if ((v241 & 0xC4) != 0)
              {
                v242 = v69;
              }

              else
              {
                v243 = 1 << swift_getEnumCaseMultiPayload();
                if ((v243 & 0x2B) != 0)
                {
                  v66 = v69;
                  goto LABEL_78;
                }

                if ((v243 & 0xC4) == 0)
                {
                  sub_20C43C430();
                  swift_allocError();
                  *v276 = 10;
                  swift_willThrow();
                  return sub_20C40B440(v69, &qword_27C7BB830, &qword_20C464B00);
                }

                v242 = v66;
                v66 = v69;
              }

              sub_20C43AA94(v242, MEMORY[0x277D0A8D0]);
            }

LABEL_78:
            sub_20C43AA94(v66, MEMORY[0x277D0A8D0]);
            sub_20C43C430();
            swift_allocError();
            v91 = 2;
            goto LABEL_115;
          }

LABEL_114:
          v304 = MEMORY[0x277D0A8D0];
          sub_20C43AA94(v66, MEMORY[0x277D0A8D0]);
          sub_20C43AA94(v69, v304);
          sub_20C43C430();
          swift_allocError();
          v91 = 7;
          goto LABEL_115;
        }

        v183 = v329;
        sub_20C43A9C4(v66, v329, MEMORY[0x277D0A8D0]);
        v145 = *v183;
        sub_20C43AA94(v66, MEMORY[0x277D0A8D0]);
LABEL_48:
        sub_20C43AA94(v69, MEMORY[0x277D0A8D0]);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB868, &qword_20C464B98);
        v184 = v331;
        v331[3] = result;
        v184[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        *v184 = v126;
        v184[1] = v145;
        return result;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v144 = v319;
        sub_20C43A9C4(v65, v319, MEMORY[0x277D0A8D0]);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_67;
        }

        v126 = *v144;
        v145 = *v66;
        goto LABEL_48;
      }

      v113 = v317;
      sub_20C43A9C4(v65, v317, MEMORY[0x277D0A8D0]);
      v115 = *v113;
      v114 = v113[1];
      v116 = swift_getEnumCaseMultiPayload();
      if (v116 != 2)
      {
        if (v116 == 4)
        {
          v117 = v313;
          sub_20C43A9C4(v66, v313, MEMORY[0x277D0A8D0]);
          v118 = sub_20C45FF10();
          v119 = *(v118 - 8);
          v120 = (*(v119 + 88))(v117, v118);
          if (v120 == *MEMORY[0x277D0A900])
          {
            goto LABEL_54;
          }

          goto LABEL_56;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v121 = v65;
        v122 = v321;
        sub_20C43A9C4(v121, v321, MEMORY[0x277D0A8D0]);
        v114 = v122[1];
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_36;
        }

        v115 = *v122;
        v123 = *v66;
        v124 = v66[1];
LABEL_35:
        sub_20C43AA94(v69, MEMORY[0x277D0A8D0]);
        v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB848, &qword_20C464B48);
        v150 = v331;
        v331[3] = v149;
        v150[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        result = swift_allocObject();
        *v150 = result;
        result[2] = v115;
        result[3] = v114;
        result[4] = v123;
        result[5] = v124;
        return result;
      }

      v146 = v320;
      sub_20C43A9C4(v65, v320, MEMORY[0x277D0A8D0]);
      v115 = *v146;
      v114 = v146[1];
      v147 = swift_getEnumCaseMultiPayload();
      if (v147 == 4)
      {
        v117 = v314;
        sub_20C43A9C4(v66, v314, MEMORY[0x277D0A8D0]);
        v118 = sub_20C45FF10();
        v119 = *(v118 - 8);
        v120 = (*(v119 + 88))(v117, v118);
        if (v120 == *MEMORY[0x277D0A8F8])
        {
LABEL_54:
          MEMORY[0x28223BE20](v120);
          *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v305 - 1) = sub_20C43C484();
          v199 = swift_getKeyPath();
          v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB838, &qword_20C464B38);
          v201 = v331;
          v331[3] = v200;
          v201[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v202 = swift_allocObject();
          *v201 = v202;
          v204 = v323;
          v203 = v324;
          *&v342 = v199;
          *(&v342 + 1) = v323;
          v206 = *(&v324 + 1);
          v205 = v325;
          v343 = v324;
          *&v344 = v325;
          v207 = v326;
          BYTE8(v344) = v326;
          v208 = *(&v327 + 1);
          v209 = v327;
          v345 = v327;
          *(v202 + 16) = v115;
          *(v202 + 24) = v114;
          v210 = v343;
          *(v202 + 32) = v342;
          *(v202 + 48) = v210;
          v211 = v345;
          *(v202 + 64) = v344;
          *(v202 + 80) = v211;
          v346 = v199;
LABEL_55:
          v347 = v204;
          v348 = v203;
          v349 = v206;
          v350 = v205;
          v351 = v207;
          *&v352 = v209;
          *(&v352 + 1) = v208;
          sub_20C43C4D8(v328, &v338);
          v178 = &unk_27C7BB840;
          v179 = &unk_20C464B40;
          goto LABEL_90;
        }

LABEL_56:

        (*(v119 + 8))(v117, v118);
        goto LABEL_67;
      }

      if (v147 != 7)
      {
LABEL_36:

        goto LABEL_67;
      }

LABEL_34:
      v148 = v329;
      sub_20C43A9C4(v66, v329, MEMORY[0x277D0A8D0]);
      v123 = *v148;
      v124 = v148[1];
      sub_20C43AA94(v66, MEMORY[0x277D0A8D0]);
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v92 = v322;
      sub_20C43A9C4(v65, v322, MEMORY[0x277D0A8D0]);
      v93 = sub_20C45FF10();
      v94 = *(v93 - 8);
      v95 = *(v94 + 88);
      v96 = v95(v92, v93);
      if (v96 == *MEMORY[0x277D0A8F0])
      {
        v97 = swift_getEnumCaseMultiPayload();
        if (!v97)
        {
          MEMORY[0x28223BE20](v97);
          *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v305 - 1) = sub_20C43C484();
          v98 = swift_getKeyPath();
          sub_20C43C4D8(v328, &v346);
          v99 = sub_20C45FE10();
          v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8A0, &qword_20C464C00);
          v101 = v331;
          v331[3] = v100;
          v101[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v102 = swift_allocObject();
          *v101 = v102;
          v104 = v323;
          v103 = v324;
          *&v342 = v98;
          *(&v342 + 1) = v323;
          v106 = *(&v324 + 1);
          v105 = v325;
          v343 = v324;
          *&v344 = v325;
          v107 = v326;
          BYTE8(v344) = v326;
          v108 = v327;
          v345 = v327;
          v109 = v324;
          *(v102 + 16) = v342;
          *(v102 + 32) = v109;
          v110 = v345;
          *(v102 + 48) = v344;
          *(v102 + 64) = v110;
          *(v102 + 80) = v99;
          v346 = v98;
          v347 = v104;
          v348 = v103;
          v349 = v106;
          v350 = v105;
          v351 = v107;
          v352 = v108;
          sub_20C409B04(&v342, &v338, &qword_27C7BB810, &qword_20C464AB0);
          sub_20C40B440(&v346, &qword_27C7BB810, &qword_20C464AB0);
          v111 = MEMORY[0x277D0A8D0];
          v112 = v69;
          return sub_20C43AA94(v112, v111);
        }

        goto LABEL_114;
      }

      if (v96 == *MEMORY[0x277D0A8E8])
      {
        v152 = v96;
        v153 = swift_getEnumCaseMultiPayload();
        if (v153 == 1)
        {
          v254 = v329;
          v255 = sub_20C43A9C4(v66, v329, MEMORY[0x277D0A8D0]);
          v256 = *v254;
          MEMORY[0x28223BE20](v255);
          *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v305 - 1) = sub_20C43C484();
          v132 = swift_getKeyPath();
          v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8A0, &qword_20C464C00);
          v258 = v331;
          v331[3] = v257;
          v258[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v259 = swift_allocObject();
          *v258 = v259;
          v82 = v323;
          v81 = v324;
          *&v342 = v132;
          *(&v342 + 1) = v323;
          v84 = *(&v324 + 1);
          v83 = v325;
          v343 = v324;
          *&v344 = v325;
          v85 = v326;
          BYTE8(v344) = v326;
          v86 = *(&v327 + 1);
          v87 = v327;
          v345 = v327;
          v260 = v324;
          *(v259 + 16) = v342;
          *(v259 + 32) = v260;
          v261 = v345;
          *(v259 + 48) = v344;
          *(v259 + 64) = v261;
          *(v259 + 80) = v256;
          goto LABEL_88;
        }

        if (v153 != 4)
        {
          goto LABEL_114;
        }

        v154 = v309;
        sub_20C43A9C4(v66, v309, MEMORY[0x277D0A8D0]);
        if (v95(v154, v93) == v152)
        {
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v155 = sub_20C460000();
          __swift_project_value_buffer(v155, qword_28110E2C0);
          v156 = sub_20C45FFE0();
          v157 = sub_20C460660();
          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v346 = v159;
            *v158 = 136315138;
            *(v158 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v346);
            _os_log_impl(&dword_20C404000, v156, v157, "%s", v158, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v159);
            MEMORY[0x20F2FB570](v159, -1, -1);
            MEMORY[0x20F2FB570](v158, -1, -1);
          }

          v160 = v328;
          MEMORY[0x28223BE20](v161);
          *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v305 - 1) = sub_20C43C484();
          v162 = swift_getKeyPath();
          v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB898, &qword_20C464BF8);
          v164 = v331;
          v331[3] = v163;
          v164[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v165 = swift_allocObject();
          *v164 = v165;
          v167 = v323;
          v166 = v324;
          *&v338 = v162;
          *(&v338 + 1) = v323;
          v169 = *(&v324 + 1);
          v168 = v325;
          v339 = v324;
          *&v340 = v325;
          v170 = v326;
          BYTE8(v340) = v326;
          v171 = v327;
          v341 = v327;
          *&v342 = v162;
          *(&v342 + 1) = v323;
          v343 = v324;
          *&v344 = v325;
          BYTE8(v344) = v326;
          v345 = v327;
          v172 = v338;
          v173 = v324;
          v174 = v327;
          v165[3] = v340;
          v165[4] = v174;
          v165[1] = v172;
          v165[2] = v173;
          v175 = v342;
          v176 = v343;
          v177 = v345;
          v165[7] = v344;
          v165[8] = v177;
          v165[5] = v175;
          v165[6] = v176;
          v346 = v162;
          v347 = v167;
          v348 = v166;
          v349 = v169;
          v350 = v168;
          v351 = v170;
          v352 = v171;
          sub_20C43C4D8(v160, v337);
          v178 = &qword_27C7BB810;
          v179 = &qword_20C464AB0;
          goto LABEL_106;
        }

LABEL_113:
        (*(v94 + 8))(v154, v93);
        goto LABEL_114;
      }

      if (v96 == *MEMORY[0x277D0A900])
      {
        v212 = v96;
        v213 = swift_getEnumCaseMultiPayload();
        if (v213 != 2)
        {
          if (v213 != 4)
          {
            goto LABEL_114;
          }

          v154 = v308;
          sub_20C43A9C4(v66, v308, MEMORY[0x277D0A8D0]);
          if (v95(v154, v93) != v212)
          {
            goto LABEL_113;
          }

          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v214 = sub_20C460000();
          __swift_project_value_buffer(v214, qword_28110E2C0);
          v215 = sub_20C45FFE0();
          v216 = sub_20C460660();
          if (os_log_type_enabled(v215, v216))
          {
            v217 = swift_slowAlloc();
            v218 = swift_slowAlloc();
            v346 = v218;
            *v217 = 136315138;
            *(v217 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v346);
            _os_log_impl(&dword_20C404000, v215, v216, "%s", v217, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v218);
            MEMORY[0x20F2FB570](v218, -1, -1);
            MEMORY[0x20F2FB570](v217, -1, -1);
          }

LABEL_65:

          v219 = v328;
          MEMORY[0x28223BE20](v220);
          *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v305 - 1) = sub_20C43C484();
          v221 = swift_getKeyPath();
          v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB878, &qword_20C464BD8);
          v223 = v331;
          v331[3] = v222;
          v223[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v224 = swift_allocObject();
          *v223 = v224;
          v226 = v323;
          v225 = v324;
          *&v338 = v221;
          *(&v338 + 1) = v323;
          v228 = *(&v324 + 1);
          v227 = v325;
          v339 = v324;
          *&v340 = v325;
          v229 = v326;
          BYTE8(v340) = v326;
          v230 = v327;
          v341 = v327;
          *&v342 = v221;
          *(&v342 + 1) = v323;
          v343 = v324;
          *&v344 = v325;
          BYTE8(v344) = v326;
          v345 = v327;
          v231 = v338;
          v232 = v324;
          v233 = v327;
          v224[3] = v340;
          v224[4] = v233;
          v224[1] = v231;
          v224[2] = v232;
          v234 = v342;
          v235 = v343;
          v236 = v345;
          v224[7] = v344;
          v224[8] = v236;
          v224[5] = v234;
          v224[6] = v235;
          v346 = v221;
          v347 = v226;
          v348 = v225;
          v349 = v228;
          v350 = v227;
          v351 = v229;
          v352 = v230;
          sub_20C43C4D8(v219, v337);
          v178 = &unk_27C7BB840;
          v179 = &unk_20C464B40;
LABEL_106:
          sub_20C409B04(&v338, v337, v178, v179);
          v262 = v337;
          goto LABEL_91;
        }

        goto LABEL_97;
      }

      if (v96 != *MEMORY[0x277D0A908])
      {
        if (v96 != *MEMORY[0x277D0A8F8])
        {
          (*(v94 + 8))(v92, v93);
          goto LABEL_67;
        }

        v264 = v96;
        v265 = swift_getEnumCaseMultiPayload();
        if (v265 == 4)
        {
          v154 = v305;
          sub_20C43A9C4(v66, v305, MEMORY[0x277D0A8D0]);
          if (v95(v154, v93) != v264)
          {
            goto LABEL_113;
          }

          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v300 = sub_20C460000();
          __swift_project_value_buffer(v300, qword_28110E2C0);
          v215 = sub_20C45FFE0();
          v301 = sub_20C460660();
          if (os_log_type_enabled(v215, v301))
          {
            v302 = swift_slowAlloc();
            v303 = swift_slowAlloc();
            v346 = v303;
            *v302 = 136315138;
            *(v302 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v346);
            _os_log_impl(&dword_20C404000, v215, v301, "%s", v302, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v303);
            MEMORY[0x20F2FB570](v303, -1, -1);
            MEMORY[0x20F2FB570](v302, -1, -1);
          }

          goto LABEL_65;
        }

        if (v265 != 7)
        {
          goto LABEL_114;
        }

LABEL_97:
        v266 = v329;
        v267 = sub_20C43A9C4(v66, v329, MEMORY[0x277D0A8D0]);
        v268 = *v266;
        v269 = v266[1];
        MEMORY[0x28223BE20](v267);
        *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
        *(&v305 - 1) = sub_20C43C484();
        v270 = swift_getKeyPath();
        v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB880, &qword_20C464BE0);
        v272 = v331;
        v331[3] = v271;
        v272[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        v273 = swift_allocObject();
        *v272 = v273;
        v204 = v323;
        v203 = v324;
        *&v342 = v270;
        *(&v342 + 1) = v323;
        v206 = *(&v324 + 1);
        v205 = v325;
        v343 = v324;
        *&v344 = v325;
        v207 = v326;
        BYTE8(v344) = v326;
        v208 = *(&v327 + 1);
        v209 = v327;
        v345 = v327;
        v274 = v324;
        *(v273 + 16) = v342;
        *(v273 + 32) = v274;
        v275 = v345;
        *(v273 + 48) = v344;
        *(v273 + 64) = v275;
        *(v273 + 80) = v268;
        *(v273 + 88) = v269;
        v346 = v270;
        goto LABEL_55;
      }

      v244 = v96;
      v245 = swift_getEnumCaseMultiPayload();
      if (v245 == 4)
      {
        v154 = v307;
        sub_20C43A9C4(v66, v307, MEMORY[0x277D0A8D0]);
        if (v95(v154, v93) == v244)
        {
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v277 = sub_20C460000();
          __swift_project_value_buffer(v277, qword_28110E2C0);
          v278 = sub_20C45FFE0();
          v279 = sub_20C460660();
          if (os_log_type_enabled(v278, v279))
          {
            v280 = swift_slowAlloc();
            v281 = swift_slowAlloc();
            v346 = v281;
            *v280 = 136315138;
            *(v280 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v346);
            _os_log_impl(&dword_20C404000, v278, v279, "%s", v280, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v281);
            MEMORY[0x20F2FB570](v281, -1, -1);
            MEMORY[0x20F2FB570](v280, -1, -1);
          }

          v282 = v328;
          MEMORY[0x28223BE20](v283);
          *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v305 - 1) = sub_20C43C484();
          v284 = swift_getKeyPath();
          v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB888, &qword_20C464BE8);
          v286 = v331;
          v331[3] = v285;
          v286[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v287 = swift_allocObject();
          *v286 = v287;
          v289 = v323;
          v288 = v324;
          *&v338 = v284;
          *(&v338 + 1) = v323;
          v291 = *(&v324 + 1);
          v290 = v325;
          v339 = v324;
          *&v340 = v325;
          v292 = v326;
          BYTE8(v340) = v326;
          v293 = v327;
          v341 = v327;
          *&v342 = v284;
          *(&v342 + 1) = v323;
          v343 = v324;
          *&v344 = v325;
          BYTE8(v344) = v326;
          v345 = v327;
          v294 = v338;
          v295 = v324;
          v296 = v327;
          v287[3] = v340;
          v287[4] = v296;
          v287[1] = v294;
          v287[2] = v295;
          v297 = v342;
          v298 = v343;
          v299 = v345;
          v287[7] = v344;
          v287[8] = v299;
          v287[5] = v297;
          v287[6] = v298;
          v346 = v284;
          v347 = v289;
          v348 = v288;
          v349 = v291;
          v350 = v290;
          v351 = v292;
          v352 = v293;
          sub_20C43C4D8(v282, v337);
          v178 = &unk_27C7BB858;
          v179 = &unk_20C464B88;
          goto LABEL_106;
        }

        goto LABEL_113;
      }

      if (v245 != 5)
      {
        goto LABEL_114;
      }

      v246 = v306;
      v247 = sub_20C43A9C4(v66, v306, MEMORY[0x277D0A8D0]);
      v248 = *v246;
      MEMORY[0x28223BE20](v247);
      *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
      *(&v305 - 1) = sub_20C43C484();
      v186 = swift_getKeyPath();
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB890, &qword_20C464BF0);
      v250 = v331;
      v331[3] = v249;
      v250[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
      v251 = swift_allocObject();
      *v250 = v251;
      v191 = v323;
      v190 = v324;
      *&v342 = v186;
      *(&v342 + 1) = v323;
      v193 = *(&v324 + 1);
      v192 = v325;
      v343 = v324;
      *&v344 = v325;
      v194 = v326;
      BYTE8(v344) = v326;
      v195 = *(&v327 + 1);
      v196 = v327;
      v345 = v327;
      v252 = v324;
      *(v251 + 16) = v342;
      *(v251 + 32) = v252;
      v253 = v345;
      *(v251 + 48) = v344;
      *(v251 + 64) = v253;
      *(v251 + 80) = v248;
    }

    else
    {
      v138 = v318;
      sub_20C43A9C4(v65, v318, MEMORY[0x277D0A8D0]);
      v139 = *v138;
      v140 = swift_getEnumCaseMultiPayload();
      if (v140 != 4)
      {
        if (v140 == 5)
        {
          v141 = v329;
          sub_20C43A9C4(v66, v329, MEMORY[0x277D0A8D0]);
          LOBYTE(v141) = *v141;
          v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB860, &qword_20C464B90);
          v143 = v331;
          v331[3] = v142;
          v143[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          *v143 = v139;
          *(v143 + 1) = v141;
          goto LABEL_92;
        }

        goto LABEL_67;
      }

      v128 = v312;
      sub_20C43A9C4(v66, v312, MEMORY[0x277D0A8D0]);
      v129 = sub_20C45FF10();
      v130 = *(v129 - 8);
      v185 = (*(v130 + 88))(v128, v129);
      if (v185 != *MEMORY[0x277D0A908])
      {
LABEL_52:
        (*(v130 + 8))(v128, v129);
        goto LABEL_67;
      }

      MEMORY[0x28223BE20](v185);
      *(&v305 - 2) = &type metadata for ArtworkPredicateInput;
      *(&v305 - 1) = sub_20C43C484();
      v186 = swift_getKeyPath();
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB850, &qword_20C464B80);
      v188 = v331;
      v331[3] = v187;
      v188[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
      v189 = swift_allocObject();
      v191 = v323;
      v190 = v324;
      *&v342 = v186;
      *(&v342 + 1) = v323;
      v193 = *(&v324 + 1);
      v192 = v325;
      v343 = v324;
      *&v344 = v325;
      v194 = v326;
      BYTE8(v344) = v326;
      v195 = *(&v327 + 1);
      v196 = v327;
      v345 = v327;
      v197 = v324;
      *(v189 + 24) = v342;
      *(v189 + 40) = v197;
      v198 = v345;
      *(v189 + 56) = v344;
      *v188 = v189;
      *(v189 + 16) = v139;
      *(v189 + 72) = v198;
    }

    v346 = v186;
    v347 = v191;
    v348 = v190;
    v349 = v193;
    v350 = v192;
    v351 = v194;
    *&v352 = v196;
    *(&v352 + 1) = v195;
    sub_20C43C4D8(v328, &v338);
    v178 = &unk_27C7BB858;
    v179 = &unk_20C464B88;
LABEL_90:
    v262 = &v338;
LABEL_91:
    sub_20C409B04(&v342, v262, v178, v179);
    sub_20C40B440(&v346, v178, v179);
    goto LABEL_92;
  }

  sub_20C43C430();
  swift_allocError();
  v91 = 8;
LABEL_115:
  *v90 = v91;
  return swift_willThrow();
}