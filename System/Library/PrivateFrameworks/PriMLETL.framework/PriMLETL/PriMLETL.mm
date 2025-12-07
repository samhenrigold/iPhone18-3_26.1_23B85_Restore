__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F56C4FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F56C51C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_25F56C558()
{
  v0 = sub_25F5E3FB4();
  __swift_allocate_value_buffer(v0, qword_27FD9EA20);
  __swift_project_value_buffer(v0, qword_27FD9EA20);
  return sub_25F5E3FA4();
}

uint64_t sub_25F56C5D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_25F56C678(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25F56C6A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25F56C6D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_25F56C7DC(uint64_t a1, id *a2)
{
  result = sub_25F5E43D4();
  *a2 = 0;
  return result;
}

uint64_t sub_25F56C854(uint64_t a1, id *a2)
{
  v3 = sub_25F5E43E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25F56C8D4@<X0>(uint64_t *a1@<X8>)
{
  sub_25F5E43F4();
  v2 = sub_25F5E43C4();

  *a1 = v2;
  return result;
}

uint64_t sub_25F56C9BC(uint64_t a1, uint64_t a2)
{
  sub_25F5E4C34();
  swift_getWitnessTable();
  sub_25F5E38C4();
  return sub_25F5E4C54();
}

uint64_t sub_25F56CA24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25F56D0A8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25F56CA7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_25F5E38B4();
}

uint64_t sub_25F56CAEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F5E43F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F56CB18(uint64_t a1)
{
  v2 = sub_25F56CC74(&qword_27FD9D9D0, type metadata accessor for ECMessageHeaderKey, &unk_25F5E5D80);
  v3 = sub_25F56CC74(&qword_27FD9D9D8, type metadata accessor for ECMessageHeaderKey, &unk_25F5E5D20);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void *sub_25F56CBD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25F56CC74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F56CD4C(uint64_t a1)
{
  v2 = sub_25F56CC74(&qword_27FD9D9F0, type metadata accessor for DocumentReadingOptionKey, &unk_25F5E5E10);
  v3 = sub_25F56CC74(&qword_27FD9D9F8, type metadata accessor for DocumentReadingOptionKey, &unk_25F5E5AD8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25F56CE08@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25F5E43C4();

  *a2 = v3;
  return result;
}

uint64_t sub_25F56CE50(uint64_t a1)
{
  v2 = sub_25F56CC74(&qword_27FD9D9E0, type metadata accessor for DocumentType, &unk_25F5E5C30);
  v3 = sub_25F56CC74(&qword_27FD9D9E8, type metadata accessor for DocumentType, &unk_25F5E5BD8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25F56CF18()
{
  v0 = sub_25F5E43F4();
  v1 = MEMORY[0x25F8E2C30](v0);

  return v1;
}

uint64_t sub_25F56CF54(uint64_t a1)
{
  sub_25F5E43F4();
  sub_25F5E4334();
}

uint64_t sub_25F56CFA8()
{
  sub_25F5E43F4();
  sub_25F5E4C34();
  sub_25F5E4334();
  v0 = sub_25F5E4C54();

  return v0;
}

uint64_t sub_25F56D020(void *a1, uint64_t *a2)
{
  v2 = sub_25F5E43F4();
  v4 = v3;
  if (v2 == sub_25F5E43F4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25F5E4B84();
  }

  return v7 & 1;
}

uint64_t sub_25F56D0A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_25F56D1E0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_25F56D580()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20481);
  return sub_25F5E4C54();
}

uint64_t sub_25F56D600()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20481);
  return sub_25F5E4C54();
}

uint64_t sub_25F56D648@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F571338(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25F56D68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F573984();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_25F56D750(uint64_t a1)
{
  v2 = sub_25F5715DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56D78C(uint64_t a1)
{
  v2 = sub_25F5715DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F56D810()
{
  v1 = 7630441;
  v2 = 0x676E69727473;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 0x74616F6C66;
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

uint64_t sub_25F56D874@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F57191C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F56D8A8(uint64_t a1)
{
  v2 = sub_25F571588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56D8E4(uint64_t a1)
{
  v2 = sub_25F571588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F56D920(uint64_t a1)
{
  v2 = sub_25F571684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56D95C(uint64_t a1)
{
  v2 = sub_25F571684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F56D998(uint64_t a1)
{
  v2 = sub_25F5716D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56D9D4(uint64_t a1)
{
  v2 = sub_25F5716D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F56DA10()
{
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](0);
  return sub_25F5E4C54();
}

uint64_t sub_25F56DA54()
{
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](0);
  return sub_25F5E4C54();
}

uint64_t sub_25F56DA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F5E4B84();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F56DB14(uint64_t a1)
{
  v2 = sub_25F571630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56DB50(uint64_t a1)
{
  v2 = sub_25F571630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetadataType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAC0, &qword_25F5E5F00);
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v3);
  v66 = &v53[-v4];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAC8, &qword_25F5E5F08);
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v5);
  v65 = &v53[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAD0, &qword_25F5E5F10);
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAD8, &qword_25F5E5F18);
  v57 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v53[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAE0, &qword_25F5E5F20);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v53[-v19];
  v21 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v21);
  sub_25F571588();
  v22 = v67;
  sub_25F5E4C74();
  if (!v22)
  {
    v55 = v12;
    v56 = v20;
    v23 = v65;
    v24 = v66;
    v67 = v17;
    v25 = sub_25F5E4B04();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 4) : (v28 = 1), v28))
    {
      v29 = sub_25F5E4994();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DAF0, &qword_25F5E5F28);
      *v31 = &type metadata for MetadataType;
      v32 = v56;
      sub_25F5E4A34();
      sub_25F5E4984();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v67 + 8))(v32, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v25 + 32) > 1u)
      {
        v54 = *(v25 + 32);
        v28 = v27 == 2;
        v35 = v67;
        if (v28)
        {
          v71 = 2;
          sub_25F571630();
          v36 = v23;
          v37 = v56;
          sub_25F5E4A24();
          v38 = v60;
          v46 = sub_25F5E4A94();
          v39 = v36;
          v45 = v50;
          (*(v62 + 8))(v39, v38);
          (*(v35 + 8))(v37, v16);
          swift_unknownObjectRelease();
        }

        else
        {
          v72 = 3;
          sub_25F5715DC();
          v41 = v56;
          sub_25F5E4A24();
          v42 = v61;
          v51 = sub_25F5E4AA4();
          (*(v63 + 8))(v24, v42);
          (*(v35 + 8))(v41, v16);
          swift_unknownObjectRelease();
          v45 = 0;
          v46 = v51 & 1;
        }
      }

      else if (*(v25 + 32))
      {
        v54 = *(v25 + 32);
        v70 = 1;
        sub_25F571684();
        v40 = v56;
        sub_25F5E4A24();
        v47 = v58;
        sub_25F5E4AB4();
        v49 = v48;
        (*(v59 + 8))(v11, v47);
        (*(v67 + 8))(v40, v16);
        swift_unknownObjectRelease();
        v45 = 0;
        v46 = v49;
      }

      else
      {
        v69 = 0;
        sub_25F5716D8();
        v33 = v15;
        v34 = v56;
        sub_25F5E4A24();
        v54 = 0;
        v44 = v55;
        LODWORD(v46) = sub_25F5E4AE4();
        (*(v57 + 8))(v33, v44);
        (*(v67 + 8))(v34, v16);
        swift_unknownObjectRelease();
        v45 = 0;
        v46 = v46;
      }

      v52 = v64;
      *v64 = v46;
      v52[1] = v45;
      *(v52 + 16) = v54;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v68);
}

uint64_t MetadataEncodingParameters.metadataMorpheusProgram.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetadataEncodingParameters.metadataMorpheusProgram.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MetadataEncodingParameters.metadataMorpheusProgramName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MetadataEncodingParameters.metadataMorpheusProgramName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MetadataEncodingParameters.categoryNames.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t MetadataEncodingParameters.nearestNeighborDistanceName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetadataEncodingParameters.nearestNeighborDistanceName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MetadataEncodingParameters.getMorpeusProgram(task:)(uint64_t a1)
{
  v3 = sub_25F5E4444();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_25F5E3554();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[1])
  {
    sub_25F5E4024();
    return sub_25F5E4014();
  }

  v12 = v1[3];
  if (!v12)
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v18 = sub_25F5E3FB4();
    __swift_project_value_buffer(v18, qword_27FD9EA20);
    v19 = sub_25F5E3F94();
    v20 = sub_25F5E47B4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25F56A000, v19, v20, "Cannot find metadataMorpheusProgram or metadataMorpheusProgramName in MetadataEncodingParameters.", v21, 2u);
      MEMORY[0x25F8E3B70](v21, -1, -1);
    }

    sub_25F57172C();
    swift_allocError();
    v23 = 1;
    goto LABEL_19;
  }

  v13 = v8;
  v14 = v1[2];
  sub_25F5E3D14();
  if (!v15)
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v24 = sub_25F5E3FB4();
    __swift_project_value_buffer(v24, qword_27FD9EA20);

    v25 = sub_25F5E3F94();
    v26 = sub_25F5E47B4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_25F570AF8(v14, v12, &v53);
      _os_log_impl(&dword_25F56A000, v25, v26, "Morpheus Program attachment %s not found.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x25F8E3B70](v28, -1, -1);
      MEMORY[0x25F8E3B70](v27, -1, -1);
    }

    v29 = sub_25F5E3F94();
    v30 = sub_25F5E47A4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53 = v32;
      *v31 = 136315138;
      sub_25F5E3D04();
      v33 = MEMORY[0x25F8E2CF0]();
      v35 = v34;

      v36 = sub_25F570AF8(v33, v35, &v53);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_25F56A000, v29, v30, "Task attachments = %s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x25F8E3B70](v32, -1, -1);
      MEMORY[0x25F8E3B70](v31, -1, -1);
    }

    sub_25F57172C();
    swift_allocError();
    v23 = 2;
LABEL_19:
    *v22 = v23;
    return swift_willThrow();
  }

  sub_25F5E3504();

  v16 = sub_25F5E3574();
  if (v2)
  {
    return (*(v6 + 8))(v10, v13);
  }

  v37 = v16;
  v38 = v17;
  (*(v6 + 8))(v10, v13);
  sub_25F5E4424();
  v39 = sub_25F5E4414();
  if (v40)
  {
    v52[4] = v39;
    v52[5] = v40;
    v52[2] = 10;
    v52[3] = 0xE100000000000000;
    v52[0] = 28252;
    v52[1] = 0xE200000000000000;
    sub_25F571874();
    sub_25F5718C8();
    sub_25F5E4714();

    sub_25F5E4024();
    v41 = sub_25F5E4014();

    sub_25F571820(v37, v38);
    return v41;
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v42 = sub_25F5E3FB4();
    __swift_project_value_buffer(v42, qword_27FD9EA20);
    sub_25F5717CC(v37, v38);
    v43 = sub_25F5E3F94();
    v44 = sub_25F5E47B4();
    sub_25F571820(v37, v38);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v53 = v46;
      *v45 = 136315138;
      sub_25F5717CC(v37, v38);
      v47 = sub_25F5E3584();
      v49 = v48;
      sub_25F571820(v37, v38);
      v50 = sub_25F570AF8(v47, v49, &v53);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_25F56A000, v43, v44, "Morpheus Program decoding failed: %s.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x25F8E3B70](v46, -1, -1);
      MEMORY[0x25F8E3B70](v45, -1, -1);
    }

    sub_25F57172C();
    swift_allocError();
    *v51 = 3;
    swift_willThrow();
    return sub_25F571820(v37, v38);
  }
}

uint64_t sub_25F56EC88@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = sub_25F5E3D14();
  if (v7)
  {
    *a3 = result;
    a3[1] = v7;
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v8 = sub_25F5E3FB4();
    __swift_project_value_buffer(v8, qword_27FD9EA20);

    v9 = sub_25F5E3F94();
    v10 = sub_25F5E47B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_25F570AF8(v5, v4, &v24);
      _os_log_impl(&dword_25F56A000, v9, v10, "Categories attachment %s not found.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x25F8E3B70](v12, -1, -1);
      MEMORY[0x25F8E3B70](v11, -1, -1);
    }

    v13 = sub_25F5E3F94();
    v14 = sub_25F5E47A4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_25F5E3D04();
      v18 = sub_25F5E3554();
      v19 = MEMORY[0x25F8E2CF0](v17, v18);
      v21 = v20;

      v22 = sub_25F570AF8(v19, v21, &v24);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_25F56A000, v13, v14, "Task attachments = %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x25F8E3B70](v16, -1, -1);
      MEMORY[0x25F8E3B70](v15, -1, -1);
    }

    sub_25F57172C();
    swift_allocError();
    *v23 = 4;
    return swift_willThrow();
  }

  return result;
}

unint64_t MetadataEncodingParameters.getMorpeusProgramKeywords(task:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  result = sub_25F571A78(MEMORY[0x277D84F90]);
  if (v4)
  {
    v6 = result;

    v7 = sub_25F571BA8(v4, a1);
    if (v2)
    {
    }

    else
    {
      v8 = v7;

      sub_25F5E3C24();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB30, &qword_25F5E5F30);
      *&v11 = v8;
      sub_25F571D88(&v11, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_25F5710A0(v10, 0x79726F6765746163, 0xEE0073687461705FLL, isUniquelyReferenced_nonNull_native);
      return v6;
    }
  }

  return result;
}

uint64_t sub_25F56F038()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1);
  return sub_25F5E4C54();
}

uint64_t sub_25F56F080()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1);
  return sub_25F5E4C54();
}

unint64_t sub_25F56F0C4()
{
  v1 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  v2 = 0xD000000000000017;
  if (*v0)
  {
    v2 = 0xD00000000000001BLL;
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

uint64_t sub_25F56F154@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F572958(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F56F17C(uint64_t a1)
{
  v2 = sub_25F571D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F56F1B8(uint64_t a1)
{
  v2 = sub_25F571D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetadataEncodingParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB38, &qword_25F5E5F38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F571D98();
  sub_25F5E4C74();
  if (!v2)
  {
    v34 = 0;
    v10 = sub_25F5E4A44();
    v13 = v12;
    v29 = v10;
    v33 = 1;
    v14 = sub_25F5E4A44();
    v16 = v15;
    v28 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB30, &qword_25F5E5F30);
    v32 = 2;
    sub_25F571DEC();
    sub_25F5E4A84();
    v27 = a2;
    v17 = v30;
    v31 = 3;
    v18 = sub_25F5E4A44();
    v20 = v19;
    v21 = *(v6 + 8);
    v26 = v18;
    v21(v9, v5);
    v22 = v27;
    v23 = v28;
    *v27 = v29;
    v22[1] = v13;
    v22[2] = v23;
    v22[3] = v16;
    v24 = v26;
    v22[4] = v17;
    v22[5] = v24;
    v22[6] = v20;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25F56F51C(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  sub_25F573A4C(a1, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC80, &qword_25F5E68E0);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC88, &qword_25F5E68E8);
    if (swift_dynamicCast())
    {
      sub_25F573A2C(&v66, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25F5E5EE0;
      v14 = __swift_project_boxed_opaque_existential_1Tm(v63, v64);
      MEMORY[0x28223BE20](v14, v14);
      (*(v16 + 16))(v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_25F573AEC();
      sub_25F5E42E4();
      *(v5 + 32) = v69;
      *(v5 + 40) = 0;
      *(v5 + 48) = 1;
      goto LABEL_45;
    }

    if (swift_dynamicCast())
    {
      v17 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25F5E5EE0;
      *(v5 + 32) = v17;
      *(v5 + 40) = 0;
      *(v5 + 48) = 3;
      goto LABEL_46;
    }

    if (swift_dynamicCast())
    {
      v18 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25F5E5EE0;
      *(v5 + 32) = v18;
      *(v5 + 48) = 2;
      goto LABEL_46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC90, &qword_25F5E68F0);
    if (!swift_dynamicCast())
    {
      *&v66 = 0;
      *(&v66 + 1) = 0xE000000000000000;
      sub_25F5E49B4();
      v2 = 0;
      v5 = 0xE000000000000000;
      if (qword_27FD9D8B0 != -1)
      {
        goto LABEL_78;
      }

      goto LABEL_30;
    }

    v5 = v63[0];
    v22 = *(v63[0] + 16);
    if (v22)
    {
      v69 = MEMORY[0x277D84F90];
      sub_25F5711F0(0, v22, 0);
      v23 = 0;
      v4 = v69;
      v2 = v63[0] + 32;
      do
      {
        if (v23 >= *(v5 + 16))
        {
          goto LABEL_74;
        }

        sub_25F573A4C(v2, &v66);
        v24 = sub_25F56F51C(&v66);
        if (v1)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v66);

          goto LABEL_46;
        }

        v25 = v24;
        __swift_destroy_boxed_opaque_existential_1Tm(&v66);
        v69 = v4;
        v27 = *(v4 + 16);
        v26 = *(v4 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_25F5711F0((v26 > 1), v27 + 1, 1);
          v4 = v69;
        }

        ++v23;
        *(v4 + 16) = v27 + 1;
        *(v4 + 8 * v27 + 32) = v25;
        v2 += 32;
      }

      while (v22 != v23);
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    v50 = *(v4 + 16);
    if (!v50)
    {
      v5 = MEMORY[0x277D84F90];
LABEL_70:

      goto LABEL_46;
    }

    v51 = 0;
    v62 = (v4 + 32);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v51 >= *(v4 + 16))
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        swift_once();
LABEL_30:
        v28 = sub_25F5E3FB4();
        __swift_project_value_buffer(v28, qword_27FD9EA20);
        sub_25F573A4C(v4, &v66);

        v29 = sub_25F5E3F94();
        v30 = sub_25F5E47B4();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v63[0] = v32;
          *v31 = 136315394;
          v33 = sub_25F570AF8(v2, v5, v63);

          *(v31 + 4) = v33;
          *(v31 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1Tm(&v66, v67);
          swift_getDynamicType();
          v34 = sub_25F5E4D04();
          v36 = v35;
          __swift_destroy_boxed_opaque_existential_1Tm(&v66);
          v5 = sub_25F570AF8(v34, v36, v63);

          *(v31 + 14) = v5;
          _os_log_impl(&dword_25F56A000, v29, v30, "Cannot cast %s with type %s to MetadataType.", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F8E3B70](v32, -1, -1);
          MEMORY[0x25F8E3B70](v31, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v66);
        }

        sub_25F57172C();
        swift_allocError();
        *v49 = 0;
        swift_willThrow();
        goto LABEL_46;
      }

      v52 = v62[v51];
      v2 = *(v52 + 16);
      v53 = *(v5 + 16);
      v54 = v53 + v2;
      if (__OFADD__(v53, v2))
      {
        goto LABEL_72;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v54 <= *(v5 + 24) >> 1)
      {
        if (!*(v52 + 16))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v53 <= v54)
        {
          v56 = v53 + v2;
        }

        else
        {
          v56 = v53;
        }

        v5 = sub_25F5782CC(isUniquelyReferenced_nonNull_native, v56, 1, v5);
        if (!*(v52 + 16))
        {
LABEL_53:

          if (v2)
          {
            goto LABEL_73;
          }

          goto LABEL_54;
        }
      }

      if ((*(v5 + 24) >> 1) - *(v5 + 16) < v2)
      {
        goto LABEL_75;
      }

      swift_arrayInitWithCopy();

      if (v2)
      {
        v57 = *(v5 + 16);
        v58 = __OFADD__(v57, v2);
        v59 = v57 + v2;
        if (v58)
        {
          goto LABEL_76;
        }

        *(v5 + 16) = v59;
      }

LABEL_54:
      if (v50 == ++v51)
      {
        goto LABEL_70;
      }
    }
  }

  sub_25F573A2C(&v66, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25F5E5EE0;
  v6 = v64;
  v2 = v65;
  v7 = __swift_project_boxed_opaque_existential_1Tm(v63, v64);
  v8 = v60;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v7);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  if ((sub_25F5E48B4() & 1) != 0 && sub_25F5E48A4() > 32)
  {
    LODWORD(v69) = 0x80000000;
    if (sub_25F5E48B4())
    {
      v12 = sub_25F5E48A4();
      if (v12 >= 32)
      {
        v61 = v60;
        MEMORY[0x28223BE20](v12, v13);
        v62 = v1;
        sub_25F573B40();
        sub_25F5E4884();
        v4 = sub_25F5E4374();
        v8 = v60;
        v3 = v62;
        (*(v9 + 8))(v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v4)
        {
          goto LABEL_77;
        }

        goto LABEL_34;
      }

      goto LABEL_28;
    }

    v62 = v60;
    v19 = sub_25F5E48B4();
    v20 = sub_25F5E48A4();
    if (v19)
    {
      if (v20 <= 32)
      {
        v61 = *(*(v2 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v60[3] = v60;
        MEMORY[0x28223BE20](AssociatedTypeWitness, v38);
        v60[1] = v60 - v39;
        swift_getAssociatedConformanceWitness();
        v40 = sub_25F5E4BA4();
        v60[2] = v60;
        MEMORY[0x28223BE20](v40, v41);
        sub_25F5E4B64();
        v4 = sub_25F5E4374();
        (*(v9 + 8))(v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v4)
        {
          goto LABEL_77;
        }

        sub_25F5E4894();
        v8 = v62;
      }

      else
      {
        v61 = v60;
        MEMORY[0x28223BE20](v20, v21);
        sub_25F573B40();
        sub_25F5E4884();
        v4 = sub_25F5E4374();
        (*(v9 + 8))(v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        v8 = v62;
        if (v4)
        {
          goto LABEL_77;
        }
      }

      goto LABEL_34;
    }

    v8 = v62;
    if (v20 < 32)
    {
LABEL_28:
      sub_25F5E4894();
    }
  }

LABEL_34:
  if (sub_25F5E48A4() <= 32)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v62 = v3;
    v42 = v8;
    LODWORD(v69) = 0x7FFFFFFF;
    v43 = sub_25F5E48B4();
    v44 = sub_25F5E48A4();
    if ((v43 & 1) == 0)
    {
      break;
    }

    if (v44 < 33)
    {
      goto LABEL_43;
    }

LABEL_37:
    MEMORY[0x28223BE20](v44, v45);
    v10 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25F573B40();
    sub_25F5E4884();
    v46 = sub_25F5E4374();
    (*(v9 + 8))(v10, v6);
    v8 = v42;
    v3 = v62;
    if (v46)
    {
      __break(1u);
LABEL_39:
      if (sub_25F5E48A4() == 32 && (sub_25F5E48B4() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_44;
  }

  if (v44 >= 32)
  {
    goto LABEL_37;
  }

LABEL_43:
  sub_25F5E4894();
LABEL_44:
  v47 = sub_25F5E4894();
  (*(v9 + 8))(v11, v6);
  *(v5 + 32) = v47;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
LABEL_45:
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
LABEL_46:
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  return v5;
}

uint64_t sub_25F5701E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC10, &unk_25F5E6870);
  result = sub_25F5E49D4();
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v25 = result + 64;
  v28 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_25F573A4C(*(v26 + 56) + 32 * v15, v27);

      v19 = sub_25F56F51C(v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      if (v1)
      {
        break;
      }

      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v28;
      v20 = (*(v28 + 48) + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      *(*(result + 56) + 8 * v15) = v19;
      v21 = *(result + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_17;
      }

      *(result + 16) = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v24 = v28;

    return v24;
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ExtractedItem.addMetadata(_:override:)(Swift::OpaquePointer _, Swift::Bool override)
{
  v5 = sub_25F5701E8(_._rawValue);
  if (!v3)
  {
    v6 = v5;
    v7 = *(type metadata accessor for ExtractedItem(0) + 40);
    if (override)
    {

      *(v2 + v7) = v6;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v2 + v7);
      sub_25F572AD0(v6, sub_25F5712F0, 0, isUniquelyReferenced_nonNull_native, &v9);

      *(v2 + v7) = v9;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ExtractedItem.addDefaultMetadata()()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F5E5EF0;
  *(inited + 32) = 0x7364726F576D756ELL;
  *(inited + 40) = 0xE800000000000000;
  v4 = type metadata accessor for ExtractedItem(0);
  v5 = (v0 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_25F5D1470(0, 0, 0x7FFFFFFFFFFFFFFFLL, *v5, v7);
  v9 = MEMORY[0x277D83B88];
  *(inited + 48) = v8;
  *(inited + 72) = v9;
  strcpy((inited + 80), "numSentences");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = sub_25F5D1470(1, 0, 0x7FFFFFFFFFFFFFFFLL, v6, v7);
  *(inited + 120) = v9;
  strcpy((inited + 128), "numCharacters");
  *(inited + 142) = -4864;
  v10 = sub_25F5E44C4();
  *(inited + 168) = v9;
  *(inited + 144) = v10;
  v11 = sub_25F571A78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6B0, &unk_25F5E85A0);
  swift_arrayDestroy();
  v12 = *(v2 + v4[6]);
  if (v12)
  {
    if (*(v12 + 16))
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
      *&v21 = v12;
      sub_25F571D88(&v21, v20);

      goto LABEL_7;
    }

    v22 = MEMORY[0x277D837D0];
    v13 = 0x5D5954504D455BLL;
    v14 = 0xE700000000000000;
  }

  else
  {
    v22 = MEMORY[0x277D837D0];
    v13 = 0x5D4C494E5BLL;
    v14 = 0xE500000000000000;
  }

  *&v21 = v13;
  *(&v21 + 1) = v14;
  sub_25F571D88(&v21, v20);
LABEL_7:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v11;
  sub_25F5710A0(v20, 1936154996, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v16 = sub_25F5701E8(v23);
  if (v1)
  {
  }

  else
  {
    v17 = v4[10];
    v18 = v16;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *&v21 = *(v2 + v17);
    sub_25F572AD0(v18, sub_25F5712F0, 0, v19, &v21);

    *(v2 + v17) = v21;
  }
}

void *ExtractedItem.getMetadataAsAny()()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedItem(0) + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB60, &qword_25F5E5F58);
  result = sub_25F5E49D4();
  v3 = result;
  v4 = 0;
  v5 = v1 + 64;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  v30 = result + 8;
  v31 = v1;
  v29 = result;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v33 = (v8 - 1) & v8;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v31 + 48) + 16 * v13);
      v15 = v14[1];
      v34 = *v14;
      v16 = *(*(v31 + 56) + 8 * v13);
      v17 = *(v16 + 16);
      if (v17)
      {
        v37 = MEMORY[0x277D84F90];
        v32 = v15;

        sub_25F571210(0, v17, 0);
        v18 = v37;
        v19 = (v16 + 48);
        do
        {
          v20 = *(v19 - 2);
          if (*v19 > 1u)
          {
            if (*v19 == 2)
            {
              v22 = *(v19 - 1);
              v36 = MEMORY[0x277D837D0];
              *&v35 = v20;
              *(&v35 + 1) = v22;
            }

            else
            {
              v36 = MEMORY[0x277D839B0];
              LOBYTE(v35) = v20 & 1;
            }
          }

          else
          {
            if (*v19)
            {
              v21 = MEMORY[0x277D83A90];
            }

            else
            {
              v21 = MEMORY[0x277D849A8];
            }

            v36 = v21;
            LODWORD(v35) = v20;
          }

          v37 = v18;
          v24 = *(v18 + 16);
          v23 = *(v18 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_25F571210((v23 > 1), v24 + 1, 1);
            v18 = v37;
          }

          v19 += 24;
          *(v18 + 16) = v24 + 1;
          sub_25F571D88(&v35, (v18 + 32 * v24 + 32));
          --v17;
        }

        while (v17);

        v3 = v29;
        result = v32;
      }

      else
      {

        v18 = MEMORY[0x277D84F90];
      }

      *(v30 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v25 = (v3[6] + 16 * v13);
      *v25 = v34;
      v25[1] = result;
      *(v3[7] + 8 * v13) = v18;
      v26 = v3[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v3[2] = v28;
      v8 = v33;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
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
        return v3;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v33 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25F5709C8(uint64_t a1, uint64_t a2)
{
  sub_25F5E4C34();
  sub_25F5E4334();
  v4 = sub_25F5E4C54();

  return sub_25F570A40(a1, a2, v4);
}

unint64_t sub_25F570A40(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25F5E4B84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25F570AF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F570BC4(v11, 0, 0, 1, a1, a2);
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
    sub_25F573A4C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25F570BC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25F570CD0(a5, a6);
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
    result = sub_25F5E49A4();
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

void *sub_25F570CD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_25F570D1C(a1, a2);
  sub_25F570E4C(&unk_2871943F0);
  return v3;
}

void *sub_25F570D1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25F570F38(v5, 0);
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

  result = sub_25F5E49A4();
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
        v10 = sub_25F5E4524();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F570F38(v10, 0);
        result = sub_25F5E4924();
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

uint64_t sub_25F570E4C(uint64_t result)
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

  result = sub_25F570FAC(result, v11, 1, v3);
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

void *sub_25F570F38(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCB0, &unk_25F5E71C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F570FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCB0, &unk_25F5E71C0);
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

_OWORD *sub_25F5710A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25F5709C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25F57AAC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25F579030(v16, a4 & 1);
    v11 = sub_25F5709C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_25F5E4BC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_25F571D88(a1, v22);
  }

  else
  {
    sub_25F57AA10(v11, a2, a3, a1, v21);
  }
}

void *sub_25F5711F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F5C67C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F571210(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F5C68F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F571230(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F5C6A08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F571250(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F5C6B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F571270(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F5C6B3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F571290(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F5C6C40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F5712B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F5C6D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F5712D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F5C6F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25F5712F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_25F571338(uint64_t a1)
{
  if ((a1 - 20481) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 20481;
  }
}

uint64_t _s8PriMLETL12MetadataTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        sub_25F573C18(*a1, v3, 1);
        sub_25F573C18(v5, v6, 1);
        v8 = *&v2 == *&v5;
        return v8 & 1;
      }
    }

    else if (!*(a2 + 16))
    {
      sub_25F573C18(*a1, v3, 0);
      sub_25F573C18(v5, v6, 0);
      v8 = v2 == v5;
      return v8 & 1;
    }

LABEL_17:
    sub_25F573C00(v5, v6, v7);
    sub_25F573C18(v2, v3, v4);
    sub_25F573C18(v5, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  if (v4 != 2)
  {
    if (v7 == 3)
    {
      sub_25F573C18(*a1, v3, 3);
      sub_25F573C18(v5, v6, 3);
      v8 = v5 ^ v2 ^ 1;
      return v8 & 1;
    }

    goto LABEL_17;
  }

  if (v7 != 2)
  {

    goto LABEL_17;
  }

  v9 = *a1;
  if (v2 != v5 || v3 != v6)
  {
    v11 = sub_25F5E4B84();
    sub_25F573C00(v5, v6, 2);
    sub_25F573C00(v2, v3, 2);
    sub_25F573C18(v2, v3, 2);
    sub_25F573C18(v5, v6, 2);
    return v11 & 1;
  }

  sub_25F573C00(v9, v3, 2);
  sub_25F573C00(v2, v3, 2);
  sub_25F573C18(v2, v3, 2);
  sub_25F573C18(v2, v3, 2);
  v8 = 1;
  return v8 & 1;
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

unint64_t sub_25F571588()
{
  result = qword_27FD9DAE8;
  if (!qword_27FD9DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DAE8);
  }

  return result;
}

unint64_t sub_25F5715DC()
{
  result = qword_27FD9DAF8;
  if (!qword_27FD9DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DAF8);
  }

  return result;
}

unint64_t sub_25F571630()
{
  result = qword_27FD9DB00;
  if (!qword_27FD9DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB00);
  }

  return result;
}

unint64_t sub_25F571684()
{
  result = qword_27FD9DB08;
  if (!qword_27FD9DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB08);
  }

  return result;
}

unint64_t sub_25F5716D8()
{
  result = qword_27FD9DB10;
  if (!qword_27FD9DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB10);
  }

  return result;
}

unint64_t sub_25F57172C()
{
  result = qword_27FD9DB18;
  if (!qword_27FD9DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB18);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_25F5717CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25F571820(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_25F571874()
{
  result = qword_27FD9DB20;
  if (!qword_27FD9DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB20);
  }

  return result;
}

unint64_t sub_25F5718C8()
{
  result = qword_27FD9DB28;
  if (!qword_27FD9DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB28);
  }

  return result;
}

uint64_t sub_25F57191C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

unint64_t sub_25F571A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCA8, &qword_25F5E6900);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v13, &qword_27FD9E6B0, &unk_25F5E85A0);
      v5 = v13;
      v6 = v14;
      result = sub_25F5709C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F571D88(&v15, (v3[7] + 32 * result));
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

void *sub_25F571BA8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC78, &unk_25F5E71B0);
  result = sub_25F5E49D4();
  v5 = 0;
  v31 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v30 = result + 8;
  v32 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = 16 * v16;
      v18 = (*(v31 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = (*(v31 + 56) + 16 * v16);
      v22 = v21[1];
      v34[0] = *v21;
      v34[1] = v22;

      sub_25F56EC88(v34, v33);

      if (v2)
      {
        break;
      }

      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v32;
      v23 = v33[0];
      v24 = (v32[6] + v17);
      *v24 = v20;
      v24[1] = v19;
      v25 = (v32[7] + v17);
      v26 = v33[1];
      *v25 = v23;
      v25[1] = v26;
      v27 = v32[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_17;
      }

      v32[2] = v29;
      v11 = v35;
      if (!v35)
      {
        goto LABEL_5;
      }
    }

    return v32;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v35 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

_OWORD *sub_25F571D88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25F571D98()
{
  result = qword_27FD9DB40;
  if (!qword_27FD9DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB40);
  }

  return result;
}

unint64_t sub_25F571DEC()
{
  result = qword_27FD9DB48;
  if (!qword_27FD9DB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DB30, &qword_25F5E5F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB48);
  }

  return result;
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

unint64_t sub_25F571EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC78, &unk_25F5E71B0);
    v3 = sub_25F5E49F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25F5709C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_25F571FDC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC10, &unk_25F5E6870);
    v5 = sub_25F5E49F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = a2(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v2)
      {

        return v5;
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

unint64_t sub_25F5720F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC40, &qword_25F5E68A0);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v11, &qword_27FD9DC48, &qword_25F5E68A8);
      v5 = v11;
      result = sub_25F57A8B4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25F571D88(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_25F572218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC28, &qword_25F5E6888);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v11, &qword_27FD9DC30, &qword_25F5E6890);
      v5 = v11;
      result = sub_25F57A948(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25F571D88(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_25F572340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC68, &qword_25F5E68C8);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v13, &qword_27FD9DC70, &unk_25F5E68D0);
      v5 = v13;
      v6 = v14;
      result = sub_25F5709C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F573A2C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_25F572474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC58, &qword_25F5E7200);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F573B94(v4, &v13, &qword_27FD9DC60, &qword_25F5E68C0);
      v5 = v13;
      v6 = v14;
      result = sub_25F5709C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F573A2C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_25F5725A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC50, &unk_25F5E68B0);
    v3 = sub_25F5E49F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25F5709C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_25F5726A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC18, &qword_25F5E7180);
  v3 = sub_25F5E49F4();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27[0] = v5;
  *(v27 + 15) = *(a1 + 95);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_25F573B94(&v24, v23, &qword_27FD9DC20, &qword_25F5E6880);
  result = sub_25F5709C8(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = v3[7] + 56 * result;
    v13 = v25;
    v14 = v26;
    v15 = v27[0];
    *(v12 + 47) = *(v27 + 15);
    *(v12 + 16) = v14;
    *(v12 + 32) = v15;
    *v12 = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = (v10 + 72);
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27[0] = v21;
    *(v27 + 15) = *(v10 + 63);
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_25F573B94(&v24, v23, &qword_27FD9DC20, &qword_25F5E6880);
    result = sub_25F5709C8(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F572854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC38, &qword_25F5E6898);
    v3 = sub_25F5E49F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25F5709C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_25F572958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000017 && 0x800000025F5EC140 == a2;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000025F5EC160 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xED000073656D614ELL || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000025F5EC180 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F572AD0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_25F5709C8(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_25F57AC68();
      }
    }

    else
    {
      sub_25F5792E8(v26, v39 & 1);
      v28 = sub_25F5709C8(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_25F573A44(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_25F5E4BC4();
  __break(1u);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F572D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F572DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25F572E3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25F572E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetadataEncodingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetadataEncodingError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PerSampleMorpheusStepConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PerSampleMorpheusStepConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Tag.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Tag.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_25F573300()
{
  result = qword_27FD9DB68;
  if (!qword_27FD9DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB68);
  }

  return result;
}

unint64_t sub_25F573358()
{
  result = qword_27FD9DB70;
  if (!qword_27FD9DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB70);
  }

  return result;
}

unint64_t sub_25F5733B0()
{
  result = qword_27FD9DB78;
  if (!qword_27FD9DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB78);
  }

  return result;
}

unint64_t sub_25F573408()
{
  result = qword_27FD9DB80;
  if (!qword_27FD9DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB80);
  }

  return result;
}

unint64_t sub_25F573460()
{
  result = qword_27FD9DB88;
  if (!qword_27FD9DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB88);
  }

  return result;
}

unint64_t sub_25F5734B8()
{
  result = qword_27FD9DB90;
  if (!qword_27FD9DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB90);
  }

  return result;
}

unint64_t sub_25F573510()
{
  result = qword_27FD9DB98;
  if (!qword_27FD9DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DB98);
  }

  return result;
}

unint64_t sub_25F573568()
{
  result = qword_27FD9DBA0;
  if (!qword_27FD9DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBA0);
  }

  return result;
}

unint64_t sub_25F5735C0()
{
  result = qword_27FD9DBA8;
  if (!qword_27FD9DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBA8);
  }

  return result;
}

unint64_t sub_25F573618()
{
  result = qword_27FD9DBB0;
  if (!qword_27FD9DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBB0);
  }

  return result;
}

unint64_t sub_25F573670()
{
  result = qword_27FD9DBB8;
  if (!qword_27FD9DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBB8);
  }

  return result;
}

unint64_t sub_25F5736C8()
{
  result = qword_27FD9DBC0;
  if (!qword_27FD9DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBC0);
  }

  return result;
}

unint64_t sub_25F573720()
{
  result = qword_27FD9DBC8;
  if (!qword_27FD9DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBC8);
  }

  return result;
}

unint64_t sub_25F573778()
{
  result = qword_27FD9DBD0;
  if (!qword_27FD9DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBD0);
  }

  return result;
}

unint64_t sub_25F5737D0()
{
  result = qword_27FD9DBD8;
  if (!qword_27FD9DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBD8);
  }

  return result;
}

unint64_t sub_25F573828()
{
  result = qword_27FD9DBE0;
  if (!qword_27FD9DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBE0);
  }

  return result;
}

unint64_t sub_25F573880()
{
  result = qword_27FD9DBE8;
  if (!qword_27FD9DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBE8);
  }

  return result;
}

unint64_t sub_25F5738D8()
{
  result = qword_27FD9DBF0;
  if (!qword_27FD9DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBF0);
  }

  return result;
}

unint64_t sub_25F573930()
{
  result = qword_27FD9DBF8;
  if (!qword_27FD9DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DBF8);
  }

  return result;
}

unint64_t sub_25F573984()
{
  result = qword_27FD9DC00;
  if (!qword_27FD9DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DC00);
  }

  return result;
}

unint64_t sub_25F5739D8()
{
  result = qword_27FD9DC08;
  if (!qword_27FD9DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DC08);
  }

  return result;
}

uint64_t sub_25F573A2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25F573A4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25F573AEC()
{
  result = qword_27FD9DC98;
  if (!qword_27FD9DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DC98);
  }

  return result;
}

unint64_t sub_25F573B40()
{
  result = qword_27FD9DCA0;
  if (!qword_27FD9DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCA0);
  }

  return result;
}

uint64_t sub_25F573B94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F573C00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_25F573C18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_25F573C74()
{
  v1 = 0x79654B7475706E69;
  v2 = 0x7375656870726F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x614665726F6E6769;
  }

  if (*v0)
  {
    v1 = 0x654B74757074756FLL;
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

uint64_t sub_25F573D10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F575CD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F573D38(uint64_t a1)
{
  v2 = sub_25F574110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F573D74(uint64_t a1)
{
  v2 = sub_25F574110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerSampleMorpheusStepConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCB8, &unk_25F5E6920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F574110();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  v22 = 0;
  sub_25F574164();
  sub_25F5E4AD4();
  v17 = v18;
  v22 = 1;
  sub_25F5E4AD4();
  v10 = v18;
  v22 = 2;
  sub_25F5741E8();
  sub_25F5E4AD4();
  v15 = v18;
  v16 = v19;
  v21 = v20;
  LOBYTE(v18) = 3;
  v12 = sub_25F5E4AA4();
  (*(v6 + 8))(v9, v5);
  v13 = v16;
  *a2 = v17;
  *(a2 + 8) = v10;
  v14 = v15;
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;
  *(a2 + 32) = v21;
  *(a2 + 33) = v12 & 1;

  sub_25F57423C(v14, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_25F5741E0(v14, v13);
}

unint64_t sub_25F574110()
{
  result = qword_27FD9DCC0;
  if (!qword_27FD9DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCC0);
  }

  return result;
}

unint64_t sub_25F574164()
{
  result = qword_27FD9DCC8;
  if (!qword_27FD9DCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DB58, &qword_25F5E5F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCC8);
  }

  return result;
}

unint64_t sub_25F5741E8()
{
  result = qword_27FD9DCD0;
  if (!qword_27FD9DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCD0);
  }

  return result;
}

uint64_t sub_25F57425C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x466D6172676F7250;
  }

  else
  {
    v3 = 0x6D6172676F7250;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEF68746150656C69;
  }

  if (*a2)
  {
    v5 = 0x466D6172676F7250;
  }

  else
  {
    v5 = 0x6D6172676F7250;
  }

  if (*a2)
  {
    v6 = 0xEF68746150656C69;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F5E4B84();
  }

  return v8 & 1;
}

uint64_t sub_25F574310()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5743A0(uint64_t a1)
{
  sub_25F5E4334();
}

uint64_t sub_25F57441C()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5744A8@<X0>(char *a2@<X8>)
{
  v3 = sub_25F5E4A14();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25F574508(uint64_t *a1@<X8>)
{
  v2 = 0x6D6172676F7250;
  if (*v1)
  {
    v2 = 0x466D6172676F7250;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEF68746150656C69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F574554()
{
  if (*v0)
  {
    return 0x466D6172676F7250;
  }

  else
  {
    return 0x6D6172676F7250;
  }
}

uint64_t sub_25F57459C@<X0>(char *a3@<X8>)
{
  v4 = sub_25F5E4A14();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25F57460C(uint64_t a1)
{
  v2 = sub_25F574880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F574648(uint64_t a1)
{
  v2 = sub_25F574880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MorpheusProgramConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCD8, &qword_25F5E6930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F574880();
  sub_25F5E4C74();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_25F5E4A94();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_25F574880()
{
  result = qword_27FD9DCE0;
  if (!qword_27FD9DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCE0);
  }

  return result;
}

unint64_t sub_25F5748D4()
{
  result = qword_27FD9DCE8;
  if (!qword_27FD9DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCE8);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F574970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F5749B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MorpheusProgramConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MorpheusProgramConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F574B88()
{
  result = qword_27FD9DCF0;
  if (!qword_27FD9DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCF0);
  }

  return result;
}

unint64_t sub_25F574BE0()
{
  result = qword_27FD9DCF8;
  if (!qword_27FD9DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DCF8);
  }

  return result;
}

unint64_t sub_25F574C38()
{
  result = qword_27FD9DD00;
  if (!qword_27FD9DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD00);
  }

  return result;
}

unint64_t sub_25F574C90()
{
  result = qword_27FD9DD08;
  if (!qword_27FD9DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD08);
  }

  return result;
}

unint64_t sub_25F574CE8()
{
  result = qword_27FD9DD10;
  if (!qword_27FD9DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD10);
  }

  return result;
}

unint64_t sub_25F574D40()
{
  result = qword_27FD9DD18;
  if (!qword_27FD9DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD18);
  }

  return result;
}

uint64_t sub_25F574D94(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  return MEMORY[0x2822009F8](sub_25F574DC4, 0, 0);
}

uint64_t sub_25F574DC4()
{
  *(v0 + 136) = *(v0 + 49);
  if (*(v0 + 48))
  {
    sub_25F5748D4();
    swift_allocError();
    *v1 = 2;
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_25F5E4024();
    v2 = sub_25F5E4014();
    *(v0 + 104) = v2;
    v5 = v2;
    v6 = *(v0 + 136);
    sub_25F575EFC(v0 + 16, v0 + 56);

    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_25F574F60;
    v8 = *(v0 + 96);

    return sub_25F5A186C(v8, v6, v0 + 16, v5);
  }
}

uint64_t sub_25F574F60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    sub_25F575F34(v4 + 16);
    v5 = sub_25F57511C;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_25F575F34(v4 + 16);
    v5 = sub_25F5750B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F5750B4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_25F57511C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F575180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  return MEMORY[0x2822009F8](sub_25F5751A4, 0, 0);
}

uint64_t sub_25F5751A4()
{
  v76 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(*v1 + 16);
  if (v5)
  {
    v75[0] = MEMORY[0x277D84F90];

    sub_25F571210(0, v5, 0);
    v6 = v75[0];
    v7 = (v3 + 40);
    while (1)
    {
      v8 = *v7;
      if (!*(v2 + 16))
      {
        break;
      }

      v9 = *(v7 - 1);

      v10 = sub_25F5709C8(v9, v8);
      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }

      sub_25F573A4C(*(v2 + 56) + 32 * v10, v0 + 64);

      sub_25F571D88((v0 + 64), (v0 + 16));
      v75[0] = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25F571210((v12 > 1), v13 + 1, 1);
        v6 = v75[0];
      }

      *(v6 + 16) = v13 + 1;
      sub_25F571D88((v0 + 16), (v6 + 32 * v13 + 32));
      v7 += 2;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

LABEL_18:
    sub_25F5748D4();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    goto LABEL_19;
  }

LABEL_10:
  sub_25F571A78(MEMORY[0x277D84F90]);
  sub_25F5E4004();

  if (!*(v0 + 40))
  {

    sub_25F575F64(v0 + 16);
    if (qword_27FD9D8B0 != -1)
    {
LABEL_65:
      swift_once();
    }

    v22 = sub_25F5E3FB4();
    __swift_project_value_buffer(v22, qword_27FD9EA20);
    v23 = sub_25F5E3F94();
    v24 = sub_25F5E47B4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 192);
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v25;
      _os_log_impl(&dword_25F56A000, v23, v24, "Morpheus program returned nil, filter datapoint %ld", v26, 0xCu);
      MEMORY[0x25F8E3B70](v26, -1, -1);
    }

    goto LABEL_26;
  }

  sub_25F571D88((v0 + 16), (v0 + 64));
  sub_25F5E3FD4();
  if (sub_25F5E3FE4())
  {

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v14 = sub_25F5E3FB4();
    __swift_project_value_buffer(v14, qword_27FD9EA20);
    v15 = sub_25F5E3F94();
    v16 = sub_25F5E47B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 192);
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v17;
      _os_log_impl(&dword_25F56A000, v15, v16, "Morpheus program returned nil, filter datapoint %ld", v18, 0xCu);
      MEMORY[0x25F8E3B70](v18, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
LABEL_26:
    v27 = 0;
LABEL_27:
    v28 = *(v0 + 8);

    return v28(v27);
  }

  v29 = v4[2];
  if (v29 == 1)
  {
    v29 = v4[4];
    v30 = v4[5];
    v31 = qword_27FD9D8B0;

    if (v31 != -1)
    {
LABEL_67:
      swift_once();
    }

    v32 = sub_25F5E3FB4();
    __swift_project_value_buffer(v32, qword_27FD9EA20);

    v33 = sub_25F5E3F94();
    v34 = sub_25F5E4794();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 192);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75[0] = v37;
      *v36 = 134218242;
      *(v36 + 4) = v35;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_25F570AF8(v29, v30, v75);
      _os_log_impl(&dword_25F56A000, v33, v34, "Processing of item %ld: key=%s", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x25F8E3B70](v37, -1, -1);
      MEMORY[0x25F8E3B70](v36, -1, -1);
    }

    v38 = *(v0 + 200);
    sub_25F573A4C(v0 + 96, v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v38;
    sub_25F5710A0((v0 + 16), v29, v30, isUniquelyReferenced_nonNull_native);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    v27 = v75[0];
    goto LABEL_27;
  }

  sub_25F573A4C(v0 + 96, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC90, &qword_25F5E68F0);
  if (swift_dynamicCast())
  {
    v30 = *(v0 + 128);
    if (!v29)
    {
      v27 = *(v0 + 200);
LABEL_59:

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
      goto LABEL_27;
    }

    v40 = 0;
    v41 = v30 + 32;
    v27 = *(v0 + 200);
    v42 = v4 + 5;
    while (1)
    {
      v44 = *(v30 + 16);
      if (v40 == v44)
      {
        goto LABEL_59;
      }

      if (v40 >= v44)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v45 = *(v42 - 1);
      v46 = *v42;
      v73 = v41;
      sub_25F573A4C(v41, v0 + 32);
      sub_25F571D88((v0 + 32), (v0 + 128));
      v47 = qword_27FD9D8B0;

      if (v47 != -1)
      {
        swift_once();
      }

      v48 = sub_25F5E3FB4();
      __swift_project_value_buffer(v48, qword_27FD9EA20);

      v49 = sub_25F5E3F94();
      v50 = sub_25F5E4794();

      v74 = v45;
      v72 = v42;
      if (os_log_type_enabled(v49, v50))
      {
        v71 = v40;
        v51 = v30;
        v52 = v29;
        v53 = *(v0 + 192);
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v75[0] = v55;
        *v54 = 134218242;
        *(v54 + 4) = v53;
        v29 = v52;
        v30 = v51;
        v40 = v71;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_25F570AF8(v74, v46, v75);
        _os_log_impl(&dword_25F56A000, v49, v50, "Processing of item %ld: key=%s", v54, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        v56 = v55;
        v45 = v74;
        MEMORY[0x25F8E3B70](v56, -1, -1);
        MEMORY[0x25F8E3B70](v54, -1, -1);
      }

      sub_25F573A4C(v0 + 128, v0 + 160);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v27;
      v59 = sub_25F5709C8(v45, v46);
      v60 = v27[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_64;
      }

      v63 = v58;
      if (v27[3] >= v62)
      {
        if (v57)
        {
          if (v58)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_25F57AAC4();
          if (v63)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        sub_25F579030(v62, v57);
        v64 = sub_25F5709C8(v74, v46);
        if ((v63 & 1) != (v65 & 1))
        {

          return sub_25F5E4BC4();
        }

        v59 = v64;
        if (v63)
        {
LABEL_38:

          v27 = v75[0];
          v43 = (*(v75[0] + 56) + 32 * v59);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          sub_25F571D88((v0 + 160), v43);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
          goto LABEL_39;
        }
      }

      v27 = v75[0];
      *(v75[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
      v66 = (v27[6] + 16 * v59);
      *v66 = v74;
      v66[1] = v46;
      sub_25F571D88((v0 + 160), (v27[7] + 32 * v59));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
      v67 = v27[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        __break(1u);
        goto LABEL_67;
      }

      v27[2] = v69;
LABEL_39:
      ++v40;
      v41 = v73 + 32;
      v42 = v72 + 2;
      if (v29 == v40)
      {
        goto LABEL_59;
      }
    }
  }

  sub_25F5748D4();
  swift_allocError();
  *v70 = 6;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
LABEL_19:
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_25F575B40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F574D94(a1);
}

uint64_t sub_25F575BD4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_25F575CD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B7475706E69 && a2 == 0xE900000000000073;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xEA00000000007379 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7375656870726F6DLL && a2 == 0xEF6D6172676F7250 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614665726F6E6769 && a2 == 0xEE00736572756C69)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F575E5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_25F575EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F575F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD20, &unk_25F5E6DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 TaggingStepConfig.init(inputKey:outputKey:inferenceConfig:allowListedTags:denyListedTags:maxNumTags:storeInBiome:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v11 = *(a5 + 80);
  *(a9 + 96) = *(a5 + 64);
  *(a9 + 112) = v11;
  *(a9 + 128) = *(a5 + 96);
  *(a9 + 144) = *(a5 + 112);
  v12 = *(a5 + 16);
  *(a9 + 32) = *a5;
  *(a9 + 48) = v12;
  result = *(a5 + 32);
  v14 = *(a5 + 48);
  *(a9 + 64) = result;
  *(a9 + 80) = v14;
  *(a9 + 152) = a6;
  *(a9 + 160) = a7;
  *(a9 + 168) = a8;
  *(a9 + 176) = a10 & 1;
  *(a9 + 177) = a11;
  return result;
}

uint64_t sub_25F576024()
{
  v1 = *v0;
  v2 = 0x79654B7475706E69;
  v3 = 0x61546D754E78616DLL;
  if (v1 != 5)
  {
    v3 = 0x426E4965726F7473;
  }

  v4 = 0x73694C776F6C6C61;
  if (v1 != 3)
  {
    v4 = 0x7473694C796E6564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x654B74757074756FLL;
  if (v1 != 1)
  {
    v5 = 0x636E657265666E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F576134@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F57BDBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F576168(uint64_t a1)
{
  v2 = sub_25F576778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5761A4(uint64_t a1)
{
  v2 = sub_25F576778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaggingStepConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD28, &unk_25F5E6DF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - v8;
  v10 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_25F576778();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v83);
  }

  v11 = v6;
  LOBYTE(v50[0]) = 0;
  v12 = v5;
  v13 = sub_25F5E4A94();
  v38 = v14;
  LOBYTE(v50[0]) = 1;
  *&v37 = sub_25F5E4A94();
  *(&v37 + 1) = v15;
  v65 = 2;
  sub_25F576820();
  sub_25F5E4AD4();
  v79 = v70;
  v80 = v71;
  v81 = v72;
  v82 = v73;
  v75 = v66;
  v76 = v67;
  v77 = v68;
  v78 = v69;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD40, &qword_25F5E85F0);
  LOBYTE(v39[0]) = 3;
  v35 = sub_25F576874();
  v36 = v16;
  sub_25F5E4A84();
  v34 = v50[0];
  LOBYTE(v39[0]) = 4;
  v36 = 0;
  sub_25F5E4A84();
  v35 = v50[0];
  LOBYTE(v50[0]) = 5;
  v17 = sub_25F5E4A74();
  v74 = v18 & 1;
  v64 = 6;
  LOBYTE(v16) = sub_25F5E4AA4();
  (*(v11 + 8))(v9, v12);
  LODWORD(v36) = v16 & 1;
  v20 = *(&v37 + 1);
  v19 = v38;
  *&v39[0] = v13;
  *(&v39[0] + 1) = v38;
  v39[1] = v37;
  v44 = v79;
  v45 = v80;
  v46 = v81;
  LOBYTE(v47) = v82;
  v40 = v75;
  v41 = v76;
  v42 = v77;
  v43 = v78;
  v21 = v17;
  v33 = v17;
  v22 = v34;
  v23 = v35;
  *(&v47 + 1) = v34;
  *&v48 = v35;
  *(&v48 + 1) = v21;
  v32 = v74;
  LOBYTE(v49) = v74;
  HIBYTE(v49) = v36;
  v24 = v37;
  *a2 = v39[0];
  *(a2 + 16) = v24;
  v25 = v45;
  *(a2 + 96) = v44;
  *(a2 + 112) = v25;
  v26 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v26;
  v27 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v27;
  v28 = v48;
  v29 = v47;
  *(a2 + 128) = v46;
  *(a2 + 144) = v29;
  *(a2 + 160) = v28;
  *(a2 + 176) = v49;
  sub_25F5768F0(v39, v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  v50[0] = v13;
  v50[1] = v19;
  v50[2] = v37;
  v50[3] = v20;
  v55 = v79;
  v56 = v80;
  v57 = v81;
  v58 = v82;
  v51 = v75;
  v52 = v76;
  v53 = v77;
  v54 = v78;
  v59 = v22;
  v60 = v23;
  v61 = v33;
  v62 = v32;
  v63 = v36;
  return sub_25F576928(v50);
}

unint64_t sub_25F576778()
{
  result = qword_27FD9DD30;
  if (!qword_27FD9DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD30);
  }

  return result;
}

unint64_t sub_25F576820()
{
  result = qword_27FD9DD38;
  if (!qword_27FD9DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD38);
  }

  return result;
}

unint64_t sub_25F576874()
{
  result = qword_27FD9DD48;
  if (!qword_27FD9DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DD40, &qword_25F5E85F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD48);
  }

  return result;
}

__n128 TaggingStep.init(config:chatPromptResponder:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v3;
  *(a3 + 160) = *(a1 + 160);
  v4 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v4;
  v5 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v5;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  result = *a2;
  v9 = *(a2 + 16);
  *(a3 + 184) = *a2;
  *(a3 + 176) = *(a1 + 176);
  *(a3 + 200) = v9;
  *(a3 + 216) = *(a2 + 32);
  return result;
}

uint64_t TaggingStep.process(_:)(uint64_t a1)
{
  v2[113] = v1;
  v2[112] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD50, &qword_25F5E6E08);
  v2[114] = v3;
  v2[115] = *(v3 - 8);
  v2[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD58, &qword_25F5E6E10);
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v4 = type metadata accessor for ExtractedItem(0);
  v2[119] = v4;
  v2[120] = *(v4 - 8);
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F576B3C, 0, 0);
}

uint64_t sub_25F576B3C()
{
  v56 = v0;
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = *(v1 + 8);
  v52 = *v1;
  v4 = *(v2 + 16);
  *(v0 + 984) = v4;
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = *(v0 + 960);
    v53 = MEMORY[0x277D84F90];
    sub_25F571250(0, v4, 0);
    v5 = v53;
    v7 = (v2 + 32);
    do
    {
      v8 = *(v0 + 976);
      v54[0] = *v7;

      sub_25F5777FC(v54, v52, v3, (v0 + 888), v8);

      v10 = *(v53 + 16);
      v9 = *(v53 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_25F571250((v9 > 1), v10 + 1, 1);
      }

      v11 = *(v0 + 976);
      *(v53 + 16) = v10 + 1;
      sub_25F57B6DC(v11, v53 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10);
      ++v7;
      --v4;
    }

    while (v4);
    v1 = *(v0 + 904);
  }

  *(v0 + 992) = v5;
  v12 = *(v1 + 32);
  v13 = *(v1 + 48);
  v14 = *(v1 + 80);
  *(v0 + 352) = *(v1 + 64);
  *(v0 + 368) = v14;
  *(v0 + 320) = v12;
  *(v0 + 336) = v13;
  v15 = *(v1 + 96);
  v16 = *(v1 + 112);
  v17 = *(v1 + 128);
  *(v0 + 432) = *(v1 + 144);
  *(v0 + 400) = v16;
  *(v0 + 416) = v17;
  *(v0 + 384) = v15;
  v18 = *(v1 + 152);
  v19 = *(v1 + 176);
  v20 = *(v1 + 177);
  v21 = *(v1 + 160);
  v22 = *(v1 + 32);
  v23 = *(v1 + 48);
  v24 = *(v1 + 80);
  *(v0 + 48) = *(v1 + 64);
  *(v0 + 64) = v24;
  *(v0 + 16) = v22;
  *(v0 + 32) = v23;
  v25 = *(v1 + 96);
  v26 = *(v1 + 112);
  v27 = *(v1 + 128);
  *(v0 + 128) = *(v1 + 144);
  *(v0 + 96) = v26;
  *(v0 + 112) = v27;
  *(v0 + 80) = v25;
  LOBYTE(v54[0]) = v19;
  *(v0 + 136) = v18;
  *(v0 + 144) = v21;
  *(v0 + 160) = v19;
  *(v0 + 161) = v20;
  sub_25F573B94(v1 + 184, v0 + 720, &qword_27FD9DD60, &unk_25F5E6E18);
  if (*(v0 + 744))
  {
    sub_25F573A2C((v0 + 720), v0 + 680);
    sub_25F57B740(v0 + 320, v0 + 560);
  }

  else
  {
    v34 = *(v0 + 904);
    v35 = *(v0 + 328);
    v36 = *(v0 + 344);
    v50 = *(v0 + 336);
    v51 = *(v0 + 320);
    v49 = *(v0 + 376);
    v48 = *(v0 + 384);
    v47 = *(v0 + 392);
    v46 = *(v0 + 400);
    v45 = *(v0 + 408);
    v44 = *(v0 + 416);
    v43 = *(v0 + 424);
    v42 = *(v0 + 432);
    v38 = *(v34 + 72);
    v39 = *(v34 + 80);
    v54[0] = *(v34 + 64);
    v37 = v54[0];
    v54[1] = v38;
    v55 = v39;
    v40 = type metadata accessor for LLMInference(0);
    swift_allocObject();
    sub_25F57B740(v0 + 320, v0 + 440);

    sub_25F57B79C(v37, v38, v39);
    v41 = LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(v51, v35, v50, v36, v54, v49, v48, v47, v46, v45, v44, v43, v42);
    *(v0 + 704) = v40;
    *(v0 + 712) = &protocol witness table for LLMInference;
    *(v0 + 680) = v41;
    if (*(v0 + 744))
    {
      sub_25F57C148(v0 + 720, &qword_27FD9DD60, &unk_25F5E6E18);
    }
  }

  v28 = *(v0 + 128);
  *(v0 + 264) = *(v0 + 112);
  *(v0 + 280) = v28;
  *(v0 + 296) = *(v0 + 144);
  v29 = *(v0 + 64);
  *(v0 + 200) = *(v0 + 48);
  *(v0 + 216) = v29;
  v30 = *(v0 + 96);
  *(v0 + 232) = *(v0 + 80);
  *(v0 + 248) = v30;
  v31 = *(v0 + 32);
  *(v0 + 168) = *(v0 + 16);
  *(v0 + 312) = *(v0 + 160);
  *(v0 + 184) = v31;
  v32 = swift_task_alloc();
  *(v0 + 1000) = v32;
  *v32 = v0;
  v32[1] = sub_25F576FFC;

  return getTags(for:taggingArgs:chatPromptResponder:)(v5, (v0 + 168), v0 + 680);
}

uint64_t sub_25F576FFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1008) = a1;
  *(v3 + 1016) = v1;

  if (v1)
  {
    v4 = sub_25F577748;
  }

  else
  {
    sub_25F57B7B4(v3 + 16);
    v4 = sub_25F57712C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_25F57712C()
{
  v1 = 0;
  v58 = *(v0 + 960);
  v59 = *(v0 + 1008);
  v2 = *(v0 + 920);
  v65 = *(v0 + 912);
  v61 = *(v0 + 904);
  v62 = *(v0 + 952);
  v3 = *(v59 + 16);
  v63 = (v2 + 48);
  v64 = (v2 + 56);
  v60 = *(v0 + 896) + 32;
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    goto LABEL_3;
  }

LABEL_2:
  v5 = 1;
  v6 = v3;
  while (1)
  {
    v11 = *(v0 + 944);
    v12 = *(v0 + 936);
    v13 = *(v0 + 912);
    (*v64)(v12, v5, 1, v13);
    sub_25F57B86C(v12, v11, &qword_27FD9DD58, &qword_25F5E6E10);
    if ((*v63)(v11, 1, v13) == 1)
    {
      break;
    }

    v14 = *(v0 + 984);
    v15 = *(v0 + 944);
    v16 = *v15;
    sub_25F57B6DC(v15 + *(v65 + 48), *(v0 + 968));
    if (v16 >= v14)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v66 = v4;
    v17 = *(v60 + 8 * v16);
    v18 = *(v62 + 24);
    if (*(*(v0 + 968) + v18))
    {
      v19 = *(*(v0 + 968) + v18);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v21 = *(v61 + 16);
    v20 = *(v61 + 24);
    *(v0 + 784) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    *(v0 + 760) = v19;
    sub_25F571D88((v0 + 760), (v0 + 792));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_25F5709C8(v21, v20);
    v25 = v17[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_44;
    }

    v28 = v23;
    if (v17[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v23)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_25F57AAC4();
        if (v28)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_25F579030(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_25F5709C8(v21, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_40;
      }

      v24 = v29;
      if (v28)
      {
LABEL_17:
        v31 = (v17[7] + 32 * v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        sub_25F571D88((v0 + 792), v31);
        goto LABEL_21;
      }
    }

    v17[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v17[6] + 16 * v24);
    *v32 = v21;
    v32[1] = v20;
    sub_25F571D88((v0 + 792), (v17[7] + 32 * v24));
    v33 = v17[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_47;
    }

    v17[2] = v35;

LABEL_21:

    MEMORY[0x25F8E2BC0](0x65566C65646F6D5FLL, 0xED00006E6F697372);
    v36 = *(v0 + 704);
    v37 = *(v0 + 712);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 680), v36);
    v38 = (*(v37 + 8))(v36, v37);
    *(v0 + 848) = MEMORY[0x277D837D0];
    *(v0 + 824) = v38;
    *(v0 + 832) = v39;
    sub_25F571D88((v0 + 824), (v0 + 856));
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = sub_25F5709C8(v21, v20);
    v43 = v17[2];
    v44 = (v42 & 1) == 0;
    v34 = __OFADD__(v43, v44);
    v45 = v43 + v44;
    if (v34)
    {
      goto LABEL_45;
    }

    v46 = v42;
    if (v17[3] < v45)
    {
      sub_25F579030(v45, v40);
      v41 = sub_25F5709C8(v21, v20);
      if ((v46 & 1) != (v47 & 1))
      {
LABEL_40:

        sub_25F5E4BC4();
        return;
      }

LABEL_26:
      if (v46)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (v40)
    {
      goto LABEL_26;
    }

    v51 = v41;
    sub_25F57AAC4();
    v41 = v51;
    if (v46)
    {
LABEL_27:
      v48 = v41;

      v49 = v17;
      v50 = (v17[7] + 32 * v48);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      sub_25F571D88((v0 + 856), v50);
      goto LABEL_31;
    }

LABEL_29:
    v49 = v17;
    v17[(v41 >> 6) + 8] |= 1 << v41;
    v52 = (v17[6] + 16 * v41);
    *v52 = v21;
    v52[1] = v20;
    sub_25F571D88((v0 + 856), (v17[7] + 32 * v41));
    v53 = v17[2];
    v34 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v34)
    {
      goto LABEL_48;
    }

    v17[2] = v54;
LABEL_31:
    v4 = v66;
    v1 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_25F5783E8(0, v66[2] + 1, 1, v66);
    }

    v56 = v4[2];
    v55 = v4[3];
    if (v56 >= v55 >> 1)
    {
      v4 = sub_25F5783E8((v55 > 1), v56 + 1, 1, v4);
    }

    sub_25F57B8D4(*(v0 + 968));
    v4[2] = v56 + 1;
    v4[v56 + 4] = v49;
    if (v6 == v3)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v1 >= *(v59 + 16))
    {
      goto LABEL_46;
    }

    v7 = *(v0 + 936);
    v8 = *(v0 + 928);
    v6 = v1 + 1;
    v9 = *(v0 + 1008) + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v1;
    v10 = *(v65 + 48);
    *v8 = v1;
    sub_25F57B808(v9, v8 + v10);
    sub_25F57B86C(v8, v7, &qword_27FD9DD50, &qword_25F5E6E08);
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  v57 = *(v0 + 8);

  v57(v4);
}

uint64_t sub_25F577748()
{
  sub_25F57B7B4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F5777FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v93 = v85 - v11;
  v12 = sub_25F5E3774();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v85 - v18;
  v20 = sub_25F5E3794();
  v94 = *(v20 - 8);
  v95 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v97 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ExtractedItem(0);
  MEMORY[0x28223BE20](v102, v23);
  v25 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = v85 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = v85 - v32;
  v34 = *a1;
  if (!*(v34 + 16))
  {
    goto LABEL_8;
  }

  v35 = sub_25F5709C8(a2, a3);
  if ((v36 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25F573A4C(*(v34 + 56) + 32 * v35, v100);
  sub_25F571D88(v100, v101);
  sub_25F573A4C(v101, v100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
LABEL_8:
    sub_25F5748D4();
    v41 = swift_allocError();
    *v42 = 0;
    result = swift_willThrow();
    *a4 = v41;
    return result;
  }

  v88 = v98;
  v87 = v99;
  if (*(v34 + 16) && (v37 = sub_25F5709C8(0x64496D657469, 0xE600000000000000), (v38 & 1) != 0))
  {
    sub_25F573A4C(*(v34 + 56) + 32 * v37, v100);
    v39 = sub_25F5E36D4();
    v40 = swift_dynamicCast();
    (*(*(v39 - 8) + 56))(v33, v40 ^ 1u, 1, v39);
  }

  else
  {
    v44 = sub_25F5E36D4();
    (*(*(v44 - 8) + 56))(v33, 1, 1, v44);
  }

  v45 = v102;
  if (*(v34 + 16) && (v46 = sub_25F5709C8(1702125924, 0xE400000000000000), (v47 & 1) != 0))
  {
    sub_25F573A4C(*(v34 + 56) + 32 * v46, v100);
    v48 = sub_25F5E3694();
    v49 = swift_dynamicCast();
    (*(*(v48 - 8) + 56))(v29, v49 ^ 1u, 1, v48);
  }

  else
  {
    v50 = sub_25F5E3694();
    (*(*(v50 - 8) + 56))(v29, 1, 1, v50);
  }

  if (*(v34 + 16) && (v51 = sub_25F5709C8(0xD000000000000015, 0x800000025F5EC1A0), (v52 & 1) != 0))
  {
    sub_25F573A4C(*(v34 + 56) + 32 * v51, v100);
    v53 = swift_dynamicCast();
    v54 = v98;
    if (!v53)
    {
      v54 = 0;
    }

    v89 = v54;
    if (v53)
    {
      v55 = v99;
    }

    else
    {
      v55 = 0;
    }

    if (!*(v34 + 16))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v89 = 0;
    v55 = 0;
    if (!*(v34 + 16))
    {
      goto LABEL_31;
    }
  }

  v56 = sub_25F5709C8(0xD000000000000013, 0x800000025F5EC1C0);
  if (v57)
  {
    sub_25F573A4C(*(v34 + 56) + 32 * v56, v100);
    v58 = swift_dynamicCast();
    v59 = v98;
    if (!v58)
    {
      v59 = 0;
    }

    v85[0] = v59;
    if (v58)
    {
      v60 = v99;
    }

    else
    {
      v60 = 0;
    }

    v90 = v60;
    goto LABEL_32;
  }

LABEL_31:
  v85[0] = 0;
  v90 = 0;
LABEL_32:
  v61 = MEMORY[0x277D84F90];
  v86 = sub_25F571FC4(MEMORY[0x277D84F90]);
  *&v25[v45[6]] = 0;
  v85[1] = sub_25F571FC4(v61);
  v62 = v97;
  sub_25F5E3754();
  sub_25F573B94(v33, v25, &qword_27FD9DE10, &unk_25F5E7240);
  v63 = &v25[v45[5]];
  v64 = v87;
  *v63 = v88;
  *(v63 + 1) = v64;
  sub_25F573B94(v29, &v25[v45[7]], &unk_27FD9E500, &unk_25F5EA410);
  if (!v55)
  {
    sub_25F5E3784();
    sub_25F5E3764();
    (*(v91 + 8))(v15, v92);
    v65 = sub_25F5E3704();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v19, 1, v65) == 1)
    {
      sub_25F57C148(v19, &qword_27FD9DE08, &unk_25F5E7230);
      v89 = 0;
      v55 = 0;
    }

    else
    {
      v89 = sub_25F5E36F4();
      v55 = v67;
      (*(v66 + 8))(v19, v65);
    }

    v45 = v102;
    v62 = v97;
  }

  v68 = &v25[v45[8]];
  *v68 = v89;
  v68[1] = v55;
  v69 = v90;
  if (v90)
  {
    (*(v94 + 8))(v62, v95);
    sub_25F57C148(v29, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v33, &qword_27FD9DE10, &unk_25F5E7240);

    v70 = v85[0];
  }

  else
  {
    v71 = v93;
    v72 = v62;
    sub_25F5E3744();
    v73 = v71;
    v74 = sub_25F5E3734();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      (*(v94 + 8))(v72, v95);
      sub_25F57C148(v29, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v33, &qword_27FD9DE10, &unk_25F5E7240);
      sub_25F57C148(v73, &qword_27FD9DE00, &unk_25F5E9D40);

      v70 = 0;
      v69 = 0;
    }

    else
    {
      v70 = sub_25F5E36F4();
      v90 = v76;
      (*(v94 + 8))(v72, v95);
      sub_25F57C148(v29, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v33, &qword_27FD9DE10, &unk_25F5E7240);
      v77 = v74;
      v69 = v90;
      (*(v75 + 8))(v93, v77);
    }
  }

  v78 = v45[10];
  v79 = &v25[v45[9]];
  *v79 = v70;
  v79[1] = v69;
  *&v25[v78] = v86;
  v80 = v96;
  sub_25F57B6DC(v25, v96);
  if (!*(v34 + 16))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v101);
  }

  v81 = sub_25F5709C8(1936154996, 0xE400000000000000);
  if ((v82 & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v101);
  }

  sub_25F573A4C(*(v34 + 56) + 32 * v81, v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  result = swift_dynamicCast();
  if (result)
  {
    v83 = v98;
    v84 = v45[6];

    *(v80 + v84) = v83;
  }

  return result;
}

uint64_t sub_25F578238(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return TaggingStep.process(_:)(a1);
}

char *sub_25F5782CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F5783E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDF0, &qword_25F5E7218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDF8, &unk_25F5E7220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F578544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE0, &qword_25F5E71F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F578650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDC0, &qword_25F5E71D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F57875C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDD8, &qword_25F5E71F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F5788CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDD0, &unk_25F5E71E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_25F5789F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_25F578BD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD90, &qword_25F5E7188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F578CF8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD98, &unk_25F5E7190);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_25F578EE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDB0, &qword_25F5E71A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDB8, &qword_25F5E71A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25F579030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCA8, &qword_25F5E6900);
  v33 = v4;
  result = sub_25F5E49E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_25F571D88(v24, v34);
      }

      else
      {
        sub_25F573A4C(v24, v34);
      }

      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25F571D88(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25F5792E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC10, &unk_25F5E6870);
  v34 = v4;
  result = sub_25F5E49E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F579590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC78, &unk_25F5E71B0);
  v37 = v4;
  result = sub_25F5E49E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F579850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC58, &qword_25F5E7200);
  v33 = v4;
  result = sub_25F5E49E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_25F573A2C(v24, v34);
      }

      else
      {
        sub_25F57C0E4(v24, v34);
      }

      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25F573A2C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25F579B14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDC8, &qword_25F5E71D8);
  result = sub_25F5E49E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_25F5E4C24();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F579D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC50, &unk_25F5E68B0);
  v34 = v4;
  result = sub_25F5E49E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F57A024(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC18, &qword_25F5E7180);
  v40 = v4;
  result = sub_25F5E49E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 56 * v21;
      if (v40)
      {
        v42 = *v25;
        v41 = *(v25 + 8);
        v44 = *(v25 + 24);
        v26 = *(v25 + 32);
        v46 = *(v25 + 40);
        v43 = *(v25 + 48);
        v45 = *(v25 + 49);
        v47 = *(v25 + 50);
      }

      else
      {
        v27 = *v25;
        v28 = *(v25 + 16);
        v29 = *(v25 + 32);
        *&v49[15] = *(v25 + 47);
        *&v48[16] = v28;
        *v49 = v29;
        *v48 = v27;
        v47 = v49[18];
        v45 = v49[17];
        v46 = *(&v29 + 1);
        v43 = v49[16];
        v44 = *(&v28 + 1);
        v26 = v29;
        v42 = v27;
        v41 = *&v48[8];

        sub_25F57C030(v48, v50);
      }

      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v48[0] = v26;
      v50[0] = v43;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v42;
      *(v17 + 8) = v41;
      *(v17 + 24) = v44;
      *(v17 + 32) = v26;
      *(v17 + 40) = v46;
      *(v17 + 48) = v43;
      *(v17 + 49) = v45;
      *(v17 + 50) = v47;
      ++*(v7 + 16);
      v5 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25F57A3C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC38, &qword_25F5E6898);
  v35 = v4;
  result = sub_25F5E49E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_25F57A668(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_25F5E43F4();
      v8 = v7;
      if (v6 == sub_25F5E43F4() && v8 == v9)
      {
        break;
      }

      v11 = sub_25F5E4B84();

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

unint64_t sub_25F57A76C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_25F57C08C();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25F5E38B4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25F57A848(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25F57A8B4(uint64_t a1)
{
  sub_25F5E43F4();
  sub_25F5E4C34();
  sub_25F5E4334();
  v2 = sub_25F5E4C54();

  return sub_25F57A668(a1, v2);
}

unint64_t sub_25F57A948(uint64_t a1)
{
  sub_25F5E4C34();
  type metadata accessor for CFString(0);
  sub_25F57C08C();
  sub_25F5E38C4();
  v2 = sub_25F5E4C54();

  return sub_25F57A76C(a1, v2);
}

unint64_t sub_25F57A9CC(uint64_t a1)
{
  v2 = sub_25F5E4C24();

  return sub_25F57A848(a1, v2);
}

_OWORD *sub_25F57AA10(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25F571D88(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_25F57AA7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_25F57AAC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCA8, &qword_25F5E6900);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25F573A4C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25F571D88(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25F57AC68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC10, &unk_25F5E6870);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F57ADD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC78, &unk_25F5E71B0);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F57AF50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC58, &qword_25F5E7200);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_25F57C0E4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25F573A2C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25F57B0F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDC8, &qword_25F5E71D8);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F57B254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC50, &unk_25F5E68B0);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F57B3BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC18, &qword_25F5E7180);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 56;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[15] = *(v19 + v17 + 47);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 47) = *&v34[15];
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;

        result = sub_25F57C030(&v32, v31);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_25F57B570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC38, &qword_25F5E6898);
  v2 = *v0;
  v3 = sub_25F5E49D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_25F57B6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F57B79C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_25F57B808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F57B86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F57B8D4(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_25F57B978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
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

uint64_t sub_25F57B9C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8PriMLETL20ChatPromptResponding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_25F57BA94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_25F57BADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaggingStepConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaggingStepConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}