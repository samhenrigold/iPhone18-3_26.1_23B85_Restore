uint64_t sub_242704F04(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 80);
  v8 = *v2;
  *(v8 + 64) = a1;
  *(v8 + 72) = v1;

  sub_242705380(v3, v4, v5);
  if (v1)
  {
    v6 = sub_2427051E4;
  }

  else
  {
    v6 = sub_242705060;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_242705060()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    if (qword_27ECBA968 != -1)
    {
      swift_once();
    }

    v2 = sub_242732244();
    __swift_project_value_buffer(v2, qword_27ECBADF0);
    v3 = v1;
    v4 = sub_242732224();
    v5 = sub_2427327B4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 64);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v3;
      *v8 = v6;
      v9 = v3;
      _os_log_impl(&dword_2426EB000, v4, v5, "Using credential: %@", v7, 0xCu);
      sub_2427053AC(v8);
      MEMORY[0x245D17E30](v8, -1, -1);
      MEMORY[0x245D17E30](v7, -1, -1);
    }

    v10 = 0;
    v11 = *(v0 + 64);
  }

  else
  {
    v11 = 0;
    v10 = 2;
  }

  v12 = *(v0 + 8);

  return v12(v10, v11);
}

uint64_t sub_2427051E4()
{
  if (qword_27ECBA968 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_242732244();
  __swift_project_value_buffer(v2, qword_27ECBADF0);
  v3 = v1;
  v4 = sub_242732224();
  v5 = sub_2427327D4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2426EB000, v4, v5, "Failed to perform authentication: %@", v8, 0xCu);
    sub_2427053AC(v9);
    MEMORY[0x245D17E30](v9, -1, -1);
    MEMORY[0x245D17E30](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(2, 0);
}

uint64_t sub_242705380(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_242705394(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_242705394(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2427053AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECBAE80, &qword_242736EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242705418()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBAEF0);
  __swift_project_value_buffer(v0, qword_27ECBAEF0);
  return sub_242732234();
}

unint64_t sub_24270549C(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = v1[1];
  v3 = v1[2];
  if (*(v1 + 1))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | *v1;
  if (*(v1 + 2))
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  return sub_242709328(v5 | v6, v2, v3);
}

uint64_t sub_2427054F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2426ECBC0;

  return MEMORY[0x28211ECF8](a1, a2);
}

id sub_2427055A4(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_242731CF4();
  v4 = [v2 downloadTaskWithRequest_];

  return v4;
}

id sub_2427055F8()
{
  v1 = [*v0 configuration];

  return v1;
}

uint64_t sub_242705630()
{
  if (*v0)
  {
    return 0x4C5255656C6966;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_242705664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_242732AE4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242732AE4();

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

uint64_t sub_242705740(uint64_t a1)
{
  v2 = sub_242705E08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24270577C(uint64_t a1)
{
  v2 = sub_242705E08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2427057C4(uint64_t a1)
{
  v2 = sub_242705EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242705800(uint64_t a1)
{
  v2 = sub_242705EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242705840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242732AE4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2427058C0(uint64_t a1)
{
  v2 = sub_242705E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2427058FC(uint64_t a1)
{
  v2 = sub_242705E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileDownloadResult.Output.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAF08, &qword_242737B40);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v34 = &v31 - v4;
  v5 = sub_242731F34();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAF10, &qword_242737B48);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for FileDownloadResult.Output(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAF18, &qword_242737B50);
  v16 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v17);
  v19 = &v31 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242705E08();
  sub_242732BF4();
  sub_242707028(v39, v15, type metadata accessor for FileDownloadResult.Output);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v35;
    v21 = v33;
    v22 = v15;
    v23 = v36;
    (*(v35 + 32))(v33, v22, v36);
    LOBYTE(v41) = 1;
    sub_242705E5C();
    v24 = v34;
    v25 = v40;
    sub_242732A64();
    sub_242706594(&qword_27ECBAF30, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    v26 = v38;
    sub_242732AB4();
    (*(v37 + 8))(v24, v26);
    (*(v20 + 8))(v21, v23);
    return (*(v16 + 8))(v19, v25);
  }

  else
  {
    v29 = *v15;
    v28 = v15[1];
    LOBYTE(v41) = 0;
    sub_242705EB0();
    v30 = v40;
    sub_242732A64();
    v41 = v29;
    v42 = v28;
    sub_242705F04();
    sub_242732AB4();
    (*(v32 + 8))(v11, v8);
    (*(v16 + 8))(v19, v30);
    return sub_2426FBA18(v29, v28);
  }
}

unint64_t sub_242705E08()
{
  result = qword_27ECBAF20;
  if (!qword_27ECBAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAF20);
  }

  return result;
}

unint64_t sub_242705E5C()
{
  result = qword_27ECBAF28;
  if (!qword_27ECBAF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAF28);
  }

  return result;
}

unint64_t sub_242705EB0()
{
  result = qword_27ECBAF38;
  if (!qword_27ECBAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAF38);
  }

  return result;
}

unint64_t sub_242705F04()
{
  result = qword_27ECBAF40;
  if (!qword_27ECBAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAF40);
  }

  return result;
}

uint64_t FileDownloadResult.Output.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAF48, &qword_242737B58);
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v56 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAF50, &qword_242737B60);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v55 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAF58, &qword_242737B68);
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for FileDownloadResult.Output(0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v46 - v24;
  v26 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_242705E08();
  v27 = v57;
  sub_242732BE4();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  v47 = v22;
  v48 = v25;
  v57 = v18;
  v29 = v55;
  v28 = v56;
  v30 = v54;
  v31 = sub_242732A54();
  v32 = (2 * *(v31 + 16)) | 1;
  v59 = v31;
  v60 = v31 + 32;
  v61 = 0;
  v62 = v32;
  v33 = sub_2427030AC();
  v34 = v13;
  if (v33 == 2 || v61 != v62 >> 1)
  {
    v36 = sub_242732934();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC20, &unk_242737B70);
    *v38 = v14;
    sub_2427329F4();
    sub_242732924();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v30 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  if (v33)
  {
    LOBYTE(v58) = 1;
    sub_242705E5C();
    v35 = v28;
    sub_2427329E4();
    sub_242731F34();
    sub_242706594(&qword_27ECBAF60, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v41 = v57;
    v42 = v52;
    sub_242732A44();
    (*(v53 + 8))(v35, v42);
    (*(v30 + 8))(v34, v10);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v44 = v41;
  }

  else
  {
    LOBYTE(v58) = 0;
    sub_242705EB0();
    sub_2427329E4();
    sub_242706640();
    v40 = v51;
    sub_242732A44();
    (*(v50 + 8))(v29, v40);
    (*(v30 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v43 = v47;
    *v47 = v58;
    swift_storeEnumTagMultiPayload();
    v44 = v43;
  }

  v45 = v48;
  sub_2427065DC(v44, v48);
  sub_2427065DC(v45, v49);
  return __swift_destroy_boxed_opaque_existential_1Tm(v63);
}

uint64_t sub_242706594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2427065DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileDownloadResult.Output(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242706640()
{
  result = qword_27ECBAF68;
  if (!qword_27ECBAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAF68);
  }

  return result;
}

uint64_t FileDownloadResult.suggestedFileName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileDownloadResult(0) + 20));

  return v1;
}

uint64_t FileDownloadResult.utType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FileDownloadResult(0) + 24);

  return sub_24270679C(v3, a1);
}

uint64_t sub_24270679C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24270680C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x657079547475;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74757074756FLL;
  }
}

uint64_t sub_242706864@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242707D60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24270688C(uint64_t a1)
{
  v2 = sub_242706B18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2427068C8(uint64_t a1)
{
  v2 = sub_242706B18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileDownloadResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAF70, &qword_242737B80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242706B18();
  sub_242732BF4();
  v9[15] = 0;
  type metadata accessor for FileDownloadResult.Output(0);
  sub_242706594(&qword_27ECBAF80, type metadata accessor for FileDownloadResult.Output, &protocol conformance descriptor for FileDownloadResult.Output);
  sub_242732AB4();
  if (!v1)
  {
    type metadata accessor for FileDownloadResult(0);
    v9[14] = 1;
    sub_242732A74();
    v9[13] = 2;
    sub_2427321D4();
    sub_242706F74(&qword_27ECBAF88, MEMORY[0x28223BA50]);
    sub_242732A84();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242706B18()
{
  result = qword_27ECBAF78;
  if (!qword_27ECBAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAF78);
  }

  return result;
}

uint64_t FileDownloadResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for FileDownloadResult.Output(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAF90, &qword_242737B88);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = v28 - v10;
  v12 = type metadata accessor for FileDownloadResult(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_242706B18();
  sub_242732BE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  v17 = v30;
  v18 = v15;
  v35 = 0;
  sub_242706594(&qword_27ECBAF98, type metadata accessor for FileDownloadResult.Output, &protocol conformance descriptor for FileDownloadResult.Output);
  v19 = v31;
  sub_242732A44();
  sub_2427065DC(v7, v18);
  v34 = 1;
  v20 = sub_242732A04();
  v21 = (v18 + *(v12 + 20));
  *v21 = v20;
  v21[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
  v28[1] = v28;
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = v28 - v25;
  sub_2427321D4();
  v33 = 2;
  sub_242706F74(&qword_27ECBAFA0, MEMORY[0x28223BA58]);
  sub_242732A14();
  (*(v17 + 8))(v11, v19);
  sub_242706FB8(v26, v18 + *(v12 + 24));
  sub_242707028(v18, v29, type metadata accessor for FileDownloadResult);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return sub_242707090(v18, type metadata accessor for FileDownloadResult);
}

uint64_t sub_242706F74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2427321D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242706FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242707028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242707090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FileDownloadResult.outputFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FileDownloadResult.Output(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242707028(v2, v7, type metadata accessor for FileDownloadResult.Output);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_242731F34();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, v7, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    sub_242707090(v7, type metadata accessor for FileDownloadResult.Output);
    v11 = sub_242731F34();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t FileDownloadResult.outputData.getter()
{
  v1 = type metadata accessor for FileDownloadResult.Output(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242707028(v0, v4, type metadata accessor for FileDownloadResult.Output);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v4;
  }

  sub_242707090(v4, type metadata accessor for FileDownloadResult.Output);
  return 0;
}

uint64_t FileDownloadResult.fileData.getter()
{
  v1 = type metadata accessor for FileDownloadResult.Output(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242707028(v0, v4, type metadata accessor for FileDownloadResult.Output);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v4;
  }

  sub_242707090(v4, type metadata accessor for FileDownloadResult.Output);
  return 0;
}

uint64_t sub_242707478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileDownloadResult.Output(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2427075CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FileDownloadResult.Output(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_242707700(uint64_t a1)
{
  type metadata accessor for FileDownloadResult.Output(319);
  if (v1 <= 0x3F)
  {
    sub_24270779C();
    if (v2 <= 0x3F)
    {
      sub_2427077EC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24270779C()
{
  if (!qword_27ECBAFB8)
  {
    v0 = sub_242732834();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECBAFB8);
    }
  }
}

void sub_2427077EC(uint64_t a1)
{
  if (!qword_27ECBAFC0)
  {
    sub_2427321D4();
    v1 = sub_242732834();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECBAFC0);
    }
  }
}

uint64_t sub_242707894(uint64_t a1)
{
  result = sub_242731F34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_242707944()
{
  result = qword_27ECBAFD8;
  if (!qword_27ECBAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAFD8);
  }

  return result;
}

unint64_t sub_24270799C()
{
  result = qword_27ECBAFE0;
  if (!qword_27ECBAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAFE0);
  }

  return result;
}

unint64_t sub_2427079F4()
{
  result = qword_27ECBAFE8;
  if (!qword_27ECBAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAFE8);
  }

  return result;
}

unint64_t sub_242707A4C()
{
  result = qword_27ECBAFF0;
  if (!qword_27ECBAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAFF0);
  }

  return result;
}

unint64_t sub_242707AA4()
{
  result = qword_27ECBAFF8;
  if (!qword_27ECBAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAFF8);
  }

  return result;
}

unint64_t sub_242707AFC()
{
  result = qword_27ECBB000;
  if (!qword_27ECBB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB000);
  }

  return result;
}

unint64_t sub_242707B54()
{
  result = qword_27ECBB008;
  if (!qword_27ECBB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB008);
  }

  return result;
}

unint64_t sub_242707BAC()
{
  result = qword_27ECBB010;
  if (!qword_27ECBB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB010);
  }

  return result;
}

unint64_t sub_242707C04()
{
  result = qword_27ECBB018;
  if (!qword_27ECBB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB018);
  }

  return result;
}

unint64_t sub_242707C5C()
{
  result = qword_27ECBB020;
  if (!qword_27ECBB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB020);
  }

  return result;
}

unint64_t sub_242707CB4()
{
  result = qword_27ECBB028;
  if (!qword_27ECBB028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB028);
  }

  return result;
}

unint64_t sub_242707D0C()
{
  result = qword_27ECBB030;
  if (!qword_27ECBB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB030);
  }

  return result;
}

uint64_t sub_242707D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_242732AE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242733BC0 == a2 || (sub_242732AE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079547475 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242732AE4();

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

void sub_242707E7C()
{
  v1 = sub_242732484();
  v2 = [v0 valueForHTTPHeaderField_];

  if (v2)
  {
    v3 = sub_2427324B4();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    v7 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v8 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {

      return;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v35 = 0;
      sub_24270827C(v3, v5, 10);
      goto LABEL_64;
    }

    if ((v5 & 0x2000000000000000) != 0)
    {
      v34[0] = v3;
      v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v3 == 43)
      {
        if (v6)
        {
          if (--v6)
          {
            v23 = 0;
            v24 = v34 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_72:
        __break(1u);
        return;
      }

      if (v3 != 45)
      {
        if (v6)
        {
          v30 = 0;
          v31 = v34;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              break;
            }

            v30 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v6)
      {
        if (--v6)
        {
          v15 = 0;
          v16 = v34 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v9 = sub_242732944();
      }

      v10 = *v9;
      if (v10 == 43)
      {
        if (v7 >= 1)
        {
          v6 = v7 - 1;
          if (v7 != 1)
          {
            v19 = 0;
            if (v9)
            {
              v20 = v9 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  goto LABEL_62;
                }

                v22 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  goto LABEL_62;
                }

                v19 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  goto LABEL_62;
                }

                ++v20;
                if (!--v6)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      if (v10 != 45)
      {
        if (v7)
        {
          v27 = 0;
          if (v9)
          {
            while (1)
            {
              v28 = *v9 - 48;
              if (v28 > 9)
              {
                goto LABEL_62;
              }

              v29 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_62;
              }

              v27 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_62;
              }

              ++v9;
              if (!--v7)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        LOBYTE(v6) = 1;
        goto LABEL_63;
      }

      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v11 = 0;
          if (v9)
          {
            v12 = v9 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_62;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_62;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_62;
              }

              ++v12;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v6) = 0;
LABEL_63:
          v35 = v6;
LABEL_64:

          return;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }
}

void *sub_242708208(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBABD8, &qword_242736F10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_24270827C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_242732634();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_242708808(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_242732944();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_242708808(uint64_t a1, unint64_t a2)
{
  v2 = sub_242732644();
  v6 = sub_242708888(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_242708888(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_242732854();
    if (!v9 || (v10 = v9, v11 = sub_242708208(v9, 0), v12 = sub_2427089E0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_242732544();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_242732544();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_242732944();
LABEL_4:

  return sub_242732544();
}

unint64_t sub_2427089E0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_242711138(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2427325D4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_242732944();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_242711138(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2427325B4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_242708C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  sub_24270679C(a1, &v15 - v4);
  v6 = sub_2427321D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_242708E30(v5);
  }

  else
  {
    v8 = sub_2427321B4();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    if (v10)
    {
      return v8;
    }
  }

  v12 = sub_242708E98();
  v14 = v13;

  if (v14)
  {
    return v12;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_242708D6C()
{
  v0 = 47;
  v8 = 47;
  v1 = sub_242731EF4();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v0 = sub_242731EF4();
    v8 = v0;
  }

  v5 = sub_242731F14();
  if (v6)
  {
    MEMORY[0x245D17090](v5);

    MEMORY[0x245D17090](63, 0xE100000000000000);

    return v8;
  }

  return v0;
}

uint64_t sub_242708E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242708E98()
{
  v0 = sub_242731E24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB038, &qword_242738C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242737530;
  v10 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v11 = v10;
  sub_24272106C(inited);
  swift_setDeallocating();
  sub_2427090EC(inited + 32);
  sub_242731E84();

  sub_242731E04();
  (*(v1 + 8))(v4, v0);
  v12 = sub_2427321D4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_242708E30(v8);
    return 0;
  }

  else
  {
    v15 = sub_2427321B4();
    (*(v13 + 8))(v8, v12);
    return v15;
  }
}

uint64_t sub_2427090EC(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242709148()
{
  sub_242732BA4();
  sub_242732BC4();
  return sub_242732BD4();
}

uint64_t sub_2427091BC(uint64_t a1)
{
  sub_242732BA4();
  sub_242732BC4();
  return sub_242732BD4();
}

_DWORD *sub_242709200@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_24270922C()
{
  sub_242732BA4();
  sub_242732BC4();
  return sub_242732BD4();
}

uint64_t sub_2427092AC(uint64_t a1)
{
  sub_242732BA4();
  sub_242732BC4();
  return sub_242732BD4();
}

_DWORD *sub_2427092F4@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_242709328(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_242732484();
  }

  else
  {
    sub_2427094D8();
    v4 = sub_242732824();
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB048, &qword_2427380E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2427380D0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  *(inited + 56) = 0x64616F6C70557369;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  *(inited + 80) = 0x7365636375537369;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 104), "failure_reason");
  *(inited + 119) = -18;
  *(inited + 120) = v5;
  v7 = sub_242730E4C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB050, &qword_2427380E8);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_2427094D8()
{
  result = qword_27ECBB040;
  if (!qword_27ECBB040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECBB040);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_242709538(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_242709594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_24270961C()
{
  result = qword_27ECBB058;
  if (!qword_27ECBB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB058);
  }

  return result;
}

unint64_t sub_242709674()
{
  result = qword_27ECBB060;
  if (!qword_27ECBB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB060);
  }

  return result;
}

uint64_t sub_2427096C8(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    v32 = a2 >> 62;
    sub_2426FBFA0(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
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
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_242731DA4();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_242731DD4();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_242731DA4();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_242731DD4();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD08, &qword_242738770);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_242737530;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_2427324D4();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_2426FBFA0((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_242709A44(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB0E0, &qword_242738780);
  if (swift_dynamicCast())
  {
    sub_2426F0FE4(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_242731DF4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2426FED88(__src, &qword_27ECBB0E8, &qword_242738788);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_242732944();
  }

  sub_2427111B4(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_242711AA8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v34[2] = v39;
  v10 = sub_24271127C(sub_242712108, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_242731F74();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_242711138(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2427325A4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2427325D4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_242732944();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_242711138(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2427325B4();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_242731F84();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_242731F84();
    sub_2426FD498(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_2426FD498(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2426FC2A4(*&__src[0], *(&__src[0] + 1));

  sub_2426FBA18(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_242709F64()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB068);
  v1 = __swift_project_value_buffer(v0, qword_27ECBB068);
  if (qword_27ECBA998 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27ECBF8F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_24270A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2427328F4();

  MEMORY[0x245D17090](a1, a2);
  MEMORY[0x245D17090](34, 0xE100000000000000);
  MEMORY[0x245D17090](a3, a4);
  MEMORY[0x245D17090](34, 0xE100000000000000);
  MEMORY[0x245D17090](0x3D6D6C616572202CLL, 0xE900000000000022);

  MEMORY[0x245D17090](0x3D65636E6F6E202CLL, 0xEA00000000002222);
  MEMORY[0x245D17090](0x2F223D697275202CLL, 0xE900000000000022);
  MEMORY[0x245D17090](0x6E6F70736572202CLL, 0xED000022223D6573);
  return 0xD000000000000011;
}

uint64_t sub_24270A190()
{
  sub_2427328F4();

  MEMORY[0x245D17090](*v0, v0[1]);
  MEMORY[0x245D17090](8236, 0xE200000000000000);
  type metadata accessor for GBAResult(0);
  sub_242731FF4();
  sub_24271282C(&qword_27ECBB0C8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v1 = sub_242732AD4();
  MEMORY[0x245D17090](v1);

  MEMORY[0x245D17090](10589, 0xE200000000000000);
  return 0x6C75736552414247;
}

uint64_t sub_24270A298(uint64_t a1, unint64_t a2, int a3)
{
  v234 = *MEMORY[0x277D85DE8];
  v218 = type metadata accessor for GBAResult(0);
  MEMORY[0x28223BE20](v218, v6);
  v8 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CC9318];
  v10 = MEMORY[0x277CC9300];

  v11 = sub_242709A44(a1, a2);
  v13 = v12;
  if ((a3 & 0x10000) != 0)
  {
    v23 = sub_242711C48(&unk_285500938);
    v25 = v24;
    *&v233 = v11;
    *(&v233 + 1) = v13;
    v229 = v9;
    v230 = v10;
    v226 = v23;
    v227 = v24;
    v26 = __swift_project_boxed_opaque_existential_1(&v226, v9);
    v27 = *v26;
    v28 = v26[1];
    sub_2426FC2A4(v11, v13);
    sub_2426FC2A4(v23, v25);
    sub_242711824(v27, v28, &v233);
    v21 = v23;
    v22 = v25;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBABD8, &qword_242736F10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2427382A0;
    *(v14 + 32) = 1;
    *(v14 + 34) = 1;
    *(v14 + 35) = BYTE1(a3);
    *(v14 + 36) = a3;
    v15 = sub_242711C48(v14);
    v17 = v16;

    *&v233 = v11;
    *(&v233 + 1) = v13;
    v229 = v9;
    v230 = v10;
    v226 = v15;
    v227 = v17;
    v18 = __swift_project_boxed_opaque_existential_1(&v226, v9);
    v19 = *v18;
    v20 = v18[1];
    sub_2426FC2A4(v11, v13);
    sub_2426FC2A4(v15, v17);
    sub_242711824(v19, v20, &v233);
    v21 = v15;
    v22 = v17;
  }

  sub_2426FBA18(v21, v22);
  sub_2426FBA18(v11, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v29 = v233;
  if (qword_27ECBA978 != -1)
  {
    swift_once();
  }

  v30 = sub_242732244();
  v31 = __swift_project_value_buffer(v30, qword_27ECBB068);
  sub_2426FC2A4(v29, *(&v29 + 1));
  v224 = v31;
  v32 = sub_242732224();
  v33 = sub_2427327C4();
  sub_2426FBA18(v29, *(&v29 + 1));
  v34 = os_log_type_enabled(v32, v33);
  v217 = v29 >> 64;
  v222 = v29;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v226 = v36;
    *v35 = 136315138;
    *&v233 = sub_2427096C8(v29, *(&v29 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD10, &qword_242737550);
    sub_242712710(&qword_27ECBAD18, &qword_27ECBAD10, &qword_242737550, MEMORY[0x277D83958]);
    v37 = sub_242732474();
    v39 = v38;

    v40 = sub_2426FBA6C(v37, v39, &v226);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_2426EB000, v32, v33, "NAF ID: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x245D17E30](v36, -1, -1);
    MEMORY[0x245D17E30](v35, -1, -1);
  }

  sub_242711D24(v225, v8);
  v41 = sub_242732224();
  v42 = sub_2427327C4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v223 = 0;
    v45 = v44;
    *&v233 = v44;
    *v43 = 136315138;
    v46 = v218;
    v47 = &v8[*(v218 + 28)];
    v48 = v47[1];
    v49 = v47[2];
    v50 = v47[3];
    v51 = v47[4];
    v52 = v47[5];
    v226 = *v47;
    v227 = v48;
    v228 = v49;
    v229 = v50;
    v230 = v51;
    v231 = v52;
    sub_2426FC2A4(v226, v48);
    sub_2426FC2A4(v49, v50);
    sub_2426FC2A4(v51, v52);
    v53 = sub_242732514();
    v55 = v54;
    sub_242711D88(v8);
    v56 = sub_2426FBA6C(v53, v55, &v233);

    *(v43 + 4) = v56;
    _os_log_impl(&dword_2426EB000, v41, v42, "%s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x245D17E30](v45, -1, -1);
    MEMORY[0x245D17E30](v43, -1, -1);

    v57 = MEMORY[0x277CC9318];
    v58 = MEMORY[0x277CC9300];
  }

  else
  {

    sub_242711D88(v8);
    v57 = MEMORY[0x277CC9318];
    v58 = MEMORY[0x277CC9300];
    v46 = v218;
  }

  v59 = (v225 + *(v46 + 28));
  v61 = v59[5];
  v62 = v59[2];
  v63 = v59[3];
  *&v233 = v59[4];
  v60 = v233;
  *(&v233 + 1) = v61;
  v229 = v57;
  v230 = v58;
  v226 = v62;
  v227 = v63;
  v64 = __swift_project_boxed_opaque_existential_1(&v226, v57);
  v65 = *v64;
  v66 = v64[1];
  sub_2426FC2A4(v60, v61);
  sub_2426FC2A4(v62, v63);
  sub_242711824(v65, v66, &v233);
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v67 = v233;
  v68 = sub_242711C48(&unk_285500960);
  v70 = v69;
  v71 = sub_242709A44(0x656D2D616267, 0xE600000000000000);
  v72 = v71;
  v219 = v73;
  v74 = v73 >> 62;
  if ((v73 >> 62) <= 1)
  {
    v75 = v217;
    if (!v74)
    {
      LOWORD(v76) = BYTE6(v219);
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v75 = v217;
  if (v74 != 2)
  {
LABEL_23:
    LOWORD(v76) = 0;
    goto LABEL_24;
  }

  v78 = *(v71 + 16);
  v77 = *(v71 + 24);
  v76 = v77 - v78;
  if (__OFSUB__(v77, v78))
  {
    __break(1u);
LABEL_18:
    if (__OFSUB__(HIDWORD(v71), v71))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v76 = HIDWORD(v71) - v71;
  }

  if ((v76 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_93;
  }

  if (v76 >> 16)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  v221 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBABD8, &qword_242736F10);
  v79 = swift_allocObject();
  v223 = xmmword_2427382B0;
  *(v79 + 16) = xmmword_2427382B0;
  *(v79 + 32) = BYTE1(v76);
  *(v79 + 33) = v76;
  v216 = sub_242711C48(v79);
  v215 = v80;

  v81 = v218;
  v82 = (v225 + *(v218 + 24));
  v83 = *v82;
  v84 = v82[1];
  v85 = v84 >> 62;
  v220 = *(&v67 + 1);
  if ((v84 >> 62) <= 1)
  {
    if (!v85)
    {
      LOWORD(v86) = BYTE6(v84);
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  if (v85 != 2)
  {
    goto LABEL_36;
  }

  v88 = *(v83 + 16);
  v87 = *(v83 + 24);
  v86 = v87 - v88;
  if (__OFSUB__(v87, v88))
  {
    __break(1u);
LABEL_31:
    if (__OFSUB__(HIDWORD(v83), v83))
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v86 = HIDWORD(v83) - v83;
  }

  if ((v86 & 0x8000000000000000) != 0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (!(v86 >> 16))
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_36:
  LOWORD(v86) = 0;
LABEL_37:
  v208 = v84;
  v209 = v83;
  v89 = swift_allocObject();
  *(v89 + 16) = v223;
  *(v89 + 32) = BYTE1(v86);
  *(v89 + 33) = v86;
  v214 = sub_242711C48(v89);
  v213 = v90;

  v91 = (v225 + *(v81 + 32));
  v92 = *v91;
  v93 = v91[1];

  v225 = sub_242709A44(v92, v93);
  v218 = v94;
  v95 = v94 >> 62;
  if ((v94 >> 62) <= 1)
  {
    if (!v95)
    {
      LOWORD(v96) = BYTE6(v218);
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  if (v95 != 2)
  {
    goto LABEL_49;
  }

  v98 = v225[2];
  v97 = v225[3];
  v96 = v97 - v98;
  if (__OFSUB__(v97, v98))
  {
    __break(1u);
LABEL_44:
    if (__OFSUB__(HIDWORD(v225), v225))
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v96 = HIDWORD(v225) - v225;
  }

  if ((v96 & 0x8000000000000000) != 0)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (!(v96 >> 16))
  {
    goto LABEL_50;
  }

  __break(1u);
LABEL_49:
  LOWORD(v96) = 0;
LABEL_50:
  v99 = swift_allocObject();
  *(v99 + 16) = v223;
  *(v99 + 32) = BYTE1(v96);
  *(v99 + 33) = v96;
  v211 = sub_242711C48(v99);
  v212 = v100;

  v101 = v75 >> 62;
  if ((v75 >> 62) > 1)
  {
    if (v101 != 2)
    {
      goto LABEL_62;
    }

    v104 = *(v222 + 16);
    v103 = *(v222 + 24);
    v102 = v103 - v104;
    if (!__OFSUB__(v103, v104))
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  else if (!v101)
  {
    LOWORD(v102) = BYTE6(v75);
    goto LABEL_63;
  }

  if (__OFSUB__(HIDWORD(v222), v222))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v102 = HIDWORD(v222) - v222;
LABEL_59:
  if ((v102 & 0x8000000000000000) != 0)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (!(v102 >> 16))
  {
    goto LABEL_63;
  }

  __break(1u);
LABEL_62:
  LOWORD(v102) = 0;
LABEL_63:
  v105 = swift_allocObject();
  *(v105 + 16) = v223;
  *(v105 + 32) = BYTE1(v102);
  *(v105 + 33) = v102;
  v210 = sub_242711C48(v105);
  *&v223 = v106;

  v107 = v68;
  *&v232 = v68;
  *(&v232 + 1) = v70;
  v108 = MEMORY[0x277CC9318];
  v229 = MEMORY[0x277CC9318];
  v109 = v70;
  v230 = MEMORY[0x277CC9300];
  v110 = MEMORY[0x277CC9300];
  v111 = v75;
  v112 = v219;
  v226 = v72;
  v227 = v219;
  v113 = __swift_project_boxed_opaque_existential_1(&v226, MEMORY[0x277CC9318]);
  v114 = *v113;
  v115 = v113[1];
  v206 = v107;
  v205 = v109;
  sub_2426FC2A4(v107, v109);
  v207 = v72;
  sub_2426FC2A4(v72, v112);
  sub_242711824(v114, v115, &v232);
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v116 = v232;
  v233 = v232;
  v229 = v108;
  v230 = v110;
  v117 = v110;
  v118 = v216;
  v119 = v215;
  v226 = v216;
  v227 = v215;
  v120 = __swift_project_boxed_opaque_existential_1(&v226, v108);
  v121 = *v120;
  v122 = v120[1];
  sub_2426FC2A4(v116, *(&v116 + 1));
  sub_2426FC2A4(v118, v119);
  sub_242711824(v121, v122, &v233);
  sub_2426FBA18(v116, *(&v116 + 1));
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v123 = v233;
  v232 = v233;
  v229 = v108;
  v230 = v117;
  v124 = v209;
  v125 = v208;
  v226 = v209;
  v227 = v208;
  v126 = __swift_project_boxed_opaque_existential_1(&v226, v108);
  v127 = *v126;
  v128 = v126[1];
  sub_2426FC2A4(v123, *(&v123 + 1));
  sub_2426FC2A4(v124, v125);
  sub_242711824(v127, v128, &v232);
  sub_2426FBA18(v123, *(&v123 + 1));
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v129 = v232;
  v233 = v232;
  v229 = v108;
  v230 = v117;
  v130 = v214;
  v131 = v213;
  v226 = v214;
  v227 = v213;
  v132 = __swift_project_boxed_opaque_existential_1(&v226, v108);
  v133 = *v132;
  v134 = v132[1];
  sub_2426FC2A4(v129, *(&v129 + 1));
  sub_2426FC2A4(v130, v131);
  sub_242711824(v133, v134, &v233);
  sub_2426FBA18(v129, *(&v129 + 1));
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v135 = v233;
  v232 = v233;
  v229 = v108;
  v230 = v117;
  v136 = v225;
  v137 = v218;
  v226 = v225;
  v227 = v218;
  v138 = __swift_project_boxed_opaque_existential_1(&v226, v108);
  v139 = *v138;
  v140 = v138[1];
  sub_2426FC2A4(v135, *(&v135 + 1));
  sub_2426FC2A4(v136, v137);
  sub_242711824(v139, v140, &v232);
  sub_2426FBA18(v135, *(&v135 + 1));
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v141 = v232;
  v233 = v232;
  v229 = v108;
  v230 = v117;
  v142 = v211;
  v143 = v212;
  v226 = v211;
  v227 = v212;
  v144 = __swift_project_boxed_opaque_existential_1(&v226, v108);
  v145 = *v144;
  v146 = v144[1];
  sub_2426FC2A4(v141, *(&v141 + 1));
  sub_2426FC2A4(v142, v143);
  sub_242711824(v145, v146, &v233);
  sub_2426FBA18(v141, *(&v141 + 1));
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v147 = v233;
  v232 = v233;
  v229 = v108;
  v230 = v117;
  v148 = v222;
  v226 = v222;
  v227 = v111;
  v149 = __swift_project_boxed_opaque_existential_1(&v226, v108);
  v150 = *v149;
  v151 = v149[1];
  sub_2426FC2A4(v148, v111);
  sub_2426FC2A4(v147, *(&v147 + 1));
  sub_242711824(v150, v151, &v232);
  sub_2426FBA18(v147, *(&v147 + 1));
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v152 = v232;
  v233 = v232;
  v229 = v108;
  v230 = v117;
  v153 = v210;
  v154 = v223;
  v226 = v210;
  v227 = v223;
  v155 = __swift_project_boxed_opaque_existential_1(&v226, v108);
  v156 = *v155;
  v157 = v155[1];
  sub_2426FC2A4(v152, *(&v152 + 1));
  sub_2426FC2A4(v153, v154);
  sub_242711824(v156, v157, &v233);
  sub_2426FBA18(v152, *(&v152 + 1));
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  v209 = *(&v233 + 1);
  v158 = v233;
  v226 = sub_2427096C8(v233, *(&v233 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD10, &qword_242737550);
  sub_242712710(&qword_27ECBAD18, &qword_27ECBAD10, &qword_242737550, MEMORY[0x277D83958]);
  v159 = sub_242732474();
  v161 = v160;

  v162 = sub_242732224();
  v163 = sub_2427327C4();

  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v226 = v165;
    *v164 = 136315138;
    v166 = sub_2426FBA6C(v159, v161, &v226);

    *(v164 + 4) = v166;
    _os_log_impl(&dword_2426EB000, v162, v163, "S: %s", v164, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v165);
    MEMORY[0x245D17E30](v165, -1, -1);
    MEMORY[0x245D17E30](v164, -1, -1);
  }

  else
  {
  }

  v168 = v220;
  v167 = v221;
  sub_2426FC2A4(v221, v220);
  v169 = sub_242732224();
  v170 = sub_2427327C4();
  sub_2426FBA18(v167, v168);
  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v226 = v172;
    *v171 = 136315138;
    *&v233 = sub_2427096C8(v167, v220);
    v173 = sub_242732474();
    v175 = v174;

    v176 = sub_2426FBA6C(v173, v175, &v226);

    *(v171 + 4) = v176;
    v167 = v221;
    _os_log_impl(&dword_2426EB000, v169, v170, "Ks: %s", v171, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v172);
    v177 = v172;
    v168 = v220;
    MEMORY[0x245D17E30](v177, -1, -1);
    MEMORY[0x245D17E30](v171, -1, -1);
  }

  v178 = v207;
  v179 = v209;
  v180 = sub_242721AF8(v158, v209, v167, v168);
  v229 = MEMORY[0x277CC9318];
  v230 = MEMORY[0x277CC9300];
  v226 = v180;
  v227 = v181;
  v182 = __swift_project_boxed_opaque_existential_1(&v226, MEMORY[0x277CC9318]);
  v183 = *v182;
  v184 = v182[1];
  v185 = v184 >> 62;
  v186 = v222;
  if ((v184 >> 62) > 1)
  {
    if (v185 != 2)
    {
      *(&v232 + 6) = 0;
      *&v232 = 0;
      v187 = &v232;
      goto LABEL_90;
    }

    v188 = *(v183 + 16);
    v189 = *(v183 + 24);
    v190 = sub_242731DA4();
    if (v190)
    {
      v191 = sub_242731DD4();
      v183 = v188 - v191;
      if (__OFSUB__(v188, v191))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v190 += v183;
    }

    v192 = __OFSUB__(v189, v188);
    v193 = v189 - v188;
    if (!v192)
    {
      goto LABEL_82;
    }

    __break(1u);
  }

  else if (!v185)
  {
    *&v232 = *v182;
    WORD4(v232) = v184;
    BYTE10(v232) = BYTE2(v184);
    BYTE11(v232) = BYTE3(v184);
    BYTE12(v232) = BYTE4(v184);
    BYTE13(v232) = BYTE5(v184);
    v187 = (&v232 + BYTE6(v184));
LABEL_90:
    sub_242711620(&v232, v187, &v233);
    sub_2426FBA18(v158, v179);
    v201 = v221;
    v202 = v168;
    goto LABEL_91;
  }

  v194 = v183;
  v195 = v183 >> 32;
  v193 = v195 - v194;
  if (v195 < v194)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v190 = sub_242731DA4();
  if (v190)
  {
    v196 = sub_242731DD4();
    if (!__OFSUB__(v194, v196))
    {
      v190 += v194 - v196;
      goto LABEL_82;
    }

LABEL_102:
    __break(1u);
  }

LABEL_82:
  v197 = sub_242731DC4();
  if (v197 >= v193)
  {
    v198 = v193;
  }

  else
  {
    v198 = v197;
  }

  v199 = &v190[v198];
  if (v190)
  {
    v200 = v199;
  }

  else
  {
    v200 = 0;
  }

  sub_242711620(v190, v200, &v233);
  sub_2426FBA18(v158, v179);
  v202 = v220;
  v201 = v221;
LABEL_91:
  sub_2426FBA18(v201, v202);
  sub_2426FBA18(v210, v223);
  sub_2426FBA18(v211, v212);
  sub_2426FBA18(v225, v218);
  sub_2426FBA18(v214, v213);
  sub_2426FBA18(v216, v215);
  sub_2426FBA18(v178, v219);
  sub_2426FBA18(v206, v205);
  sub_2426FBA18(v186, v217);
  v203 = v233;
  __swift_destroy_boxed_opaque_existential_1Tm(&v226);
  return v203;
}

uint64_t sub_24270B434()
{
  *(v1 + 40) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB160, &qword_2427387E0);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24270B4D0, v0, 0);
}

uint64_t sub_24270B4D0()
{
  v16 = v0;
  if (qword_27ECBA978 != -1)
  {
    swift_once();
  }

  v1 = sub_242732244();
  __swift_project_value_buffer(v1, qword_27ECBB068);

  v2 = sub_242732224();
  v3 = sub_2427327B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_242732AD4();
    v8 = sub_2426FBA6C(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2426EB000, v2, v3, "[%s] Resetting cached result", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x245D17E30](v5, -1, -1);
    MEMORY[0x245D17E30](v4, -1, -1);
  }

  v9 = v0[5];
  v10 = v0[6];
  v11 = type metadata accessor for GBAResult(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_cachedResult;
  swift_beginAccess();
  sub_242712758(v10, v9 + v12);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_24270B730(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2426F07F0;

  return sub_24270B7CC(a1);
}

uint64_t sub_24270B7CC(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = sub_242731D54();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v4 = sub_242731F34();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB148, &qword_2427387C8);
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB150, &qword_2427387D0);
  v2[51] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB158, &qword_2427387D8);
  v2[52] = v6;
  v2[53] = *(v6 - 8);
  v2[54] = swift_task_alloc();
  v7 = sub_242731FF4();
  v2[55] = v7;
  v2[56] = *(v7 - 8);
  v2[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB160, &qword_2427387E0);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v8 = type metadata accessor for GBAResult(0);
  v2[60] = v8;
  v2[61] = *(v8 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24270BBB4, v1, 0);
}

uint64_t sub_24270BBB4()
{
  v147 = v0;
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[59];
  v4 = v0[32];
  v5 = OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_cachedResult;
  v0[67] = OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_cachedResult;
  swift_beginAccess();
  sub_2426FC2F8(v4 + v5, v3, &qword_27ECBB160, &qword_2427387E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2426FED88(v0[59], &qword_27ECBB160, &qword_2427387E0);
  }

  else
  {
    v7 = v0[56];
    v6 = v0[57];
    v8 = v0[55];
    sub_2427127C8(v0[59], v0[66]);
    sub_242731FE4();
    v9 = sub_242731FD4();
    (*(v7 + 8))(v6, v8);
    if ((v9 & 1) == 0)
    {
      if (qword_27ECBA978 != -1)
      {
        swift_once();
      }

      v51 = v0[66];
      v52 = v0[65];
      v53 = sub_242732244();
      __swift_project_value_buffer(v53, qword_27ECBB068);
      sub_242711D24(v51, v52);

      v54 = sub_242732224();
      v55 = sub_2427327B4();

      v56 = os_log_type_enabled(v54, v55);
      v57 = v0[65];
      if (v56)
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v145 = v59;
        *v58 = 136315394;
        sub_242732024();
        sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v60 = sub_242732AD4();
        v62 = sub_2426FBA6C(v60, v61, &v145);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2080;
        sub_24271282C(&qword_27ECBB0C8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v63 = sub_242732AD4();
        v65 = v64;
        sub_242711D88(v57);
        v66 = sub_2426FBA6C(v63, v65, &v145);

        *(v58 + 14) = v66;
        _os_log_impl(&dword_2426EB000, v54, v55, "[%s] Found valid cached GBA result (expires %s)", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D17E30](v59, -1, -1);
        MEMORY[0x245D17E30](v58, -1, -1);
      }

      else
      {

        sub_242711D88(v57);
      }

      sub_2427127C8(v0[66], v0[31]);

      v79 = v0[1];
      goto LABEL_32;
    }

    if (qword_27ECBA978 != -1)
    {
      swift_once();
    }

    v10 = sub_242732244();
    __swift_project_value_buffer(v10, qword_27ECBB068);

    v11 = sub_242732224();
    v12 = sub_2427327B4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[66];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v145 = v16;
      *v15 = 136315138;
      sub_242732024();
      sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_242732AD4();
      v19 = sub_2426FBA6C(v17, v18, &v145);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2426EB000, v11, v12, "[%s] Cached GBA result has expired, clearing", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x245D17E30](v16, -1, -1);
      MEMORY[0x245D17E30](v15, -1, -1);
    }

    sub_242711D88(v14);
    v20 = v0[58];
    (*(v0[61] + 56))(v20, 1, 1, v0[60]);
    swift_beginAccess();
    sub_242712758(v20, v4 + v5);
    swift_endAccess();
  }

  if (qword_27ECBA978 != -1)
  {
    swift_once();
  }

  v21 = sub_242732244();
  v0[68] = __swift_project_value_buffer(v21, qword_27ECBB068);

  v22 = sub_242732224();
  v23 = sub_2427327B4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v145 = v25;
    *v24 = 136315138;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_242732AD4();
    v28 = sub_2426FBA6C(v26, v27, &v145);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2426EB000, v22, v23, "[%s] Performing authentication", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x245D17E30](v25, -1, -1);
    MEMORY[0x245D17E30](v24, -1, -1);
  }

  v29 = v0[32] + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_configuration;
  v31 = *(v29 + 88);
  v30 = *(v29 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB168, &qword_2427387E8);
  sub_242732064();
  sub_242712710(&qword_27ECBB170, &qword_27ECBB148, &qword_2427387C8, MEMORY[0x277D85AC0]);
  sub_242732054();
  v143 = v31;
  v144 = v30;
  sub_242732644();
  sub_242732084();
  v32 = v0[49];
  v33 = v0[50];
  v34 = v0[47];
  v35 = v0[48];

  v36 = *(v35 + 8);
  v36(v32, v34);
  v36(v33, v34);
  v37 = v0[52];
  v38 = v0[53];
  v39 = v0[51];
  if ((*(v38 + 48))(v39, 1, v37) == 1)
  {
    sub_2426FED88(v39, &qword_27ECBB150, &qword_2427387D0);
    sub_242712428();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
LABEL_27:

    v79 = v0[1];
LABEL_32:

    return v79();
  }

  (*(v38 + 32))(v0[54], v39, v37);
  v145 = 0;
  v146 = 0xE000000000000000;
  sub_2427328F4();

  v145 = 0x636E6D2E667362;
  v146 = 0xE700000000000000;
  swift_getKeyPath();
  sub_2427320A4();

  v41 = MEMORY[0x245D17030](v0[2], v0[3], v0[4], v0[5]);
  v43 = v42;

  MEMORY[0x245D17090](v41, v43);

  MEMORY[0x245D17090](1667460398, 0xE400000000000000);
  swift_getKeyPath();
  sub_2427320A4();

  v44 = MEMORY[0x245D17030](v0[6], v0[7], v0[8], v0[9]);
  v46 = v45;

  MEMORY[0x245D17090](v44, v46);

  MEMORY[0x245D17090](0xD000000000000014, 0x8000000242733CD0);
  v48 = v145;
  v47 = v146;
  v49 = 1886680168;
  if (*(v29 + 113))
  {
    v49 = 0x7370747468;
    v50 = 0xE500000000000000;
  }

  else
  {
    v50 = 0xE400000000000000;
  }

  if (*(v29 + 112))
  {
    v145 = v49;
    v146 = v50;

    MEMORY[0x245D17090](3092282, 0xE300000000000000);
    MEMORY[0x245D17090](v48, v47);
  }

  else
  {
    v67 = *(v29 + 104);
    v145 = v49;
    v146 = v50;

    MEMORY[0x245D17090](3092282, 0xE300000000000000);
    MEMORY[0x245D17090](v48, v47);
    MEMORY[0x245D17090](58, 0xE100000000000000);
    v0[30] = v67;
    v68 = sub_242732AD4();
    MEMORY[0x245D17090](v68);
  }

  sub_242731F24();
  v70 = v0[45];
  v69 = v0[46];
  v72 = v0[39];
  v71 = v0[40];

  sub_2426FC2F8(v69, v70, &qword_27ECBAB20, &unk_242737540);
  if ((*(v71 + 48))(v70, 1, v72) == 1)
  {
    v74 = v0[53];
    v73 = v0[54];
    v75 = v0[52];
    v76 = v0[45];
    v77 = v0[46];

    sub_2426FED88(v76, &qword_27ECBAB20, &unk_242737540);
    sub_242712428();
    swift_allocError();
    *v78 = 1;
    swift_willThrow();
    sub_2426FED88(v77, &qword_27ECBAB20, &unk_242737540);
    (*(v74 + 8))(v73, v75);
    goto LABEL_27;
  }

  v141 = v47;
  v142 = v29;
  v80 = v0[44];
  v81 = v0[43];
  v82 = v0[39];
  v83 = v0[40];
  (*(v83 + 32))(v80, v0[45], v82);
  v139 = *(v83 + 16);
  v139(v81, v80, v82);

  v84 = sub_242732224();
  v85 = sub_2427327B4();

  v86 = os_log_type_enabled(v84, v85);
  v87 = v0[43];
  v88 = v0[39];
  v89 = v0[40];
  v140 = v48;
  if (v86)
  {
    v90 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v145 = v136;
    *v90 = 136315394;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v91 = sub_242732AD4();
    v93 = sub_2426FBA6C(v91, v92, &v145);

    *(v90 + 4) = v93;
    *(v90 + 12) = 2080;
    sub_24271282C(&qword_27ECBAB60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v94 = sub_242732AD4();
    v96 = v95;
    v138 = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v97 = *(v89 + 8);
    v97(v87, v88);
    v98 = sub_2426FBA6C(v94, v96, &v145);

    *(v90 + 14) = v98;
    _os_log_impl(&dword_2426EB000, v84, v85, "[%s] BSF URL: %s", v90, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v136, -1, -1);
    MEMORY[0x245D17E30](v90, -1, -1);
  }

  else
  {

    v138 = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v97 = *(v89 + 8);
    v97(v87, v88);
  }

  v0[69] = v97;
  v101 = v0[41];
  v100 = v0[42];
  v103 = v0[38];
  v102 = v0[39];
  v104 = v0[37];
  v105 = v0[34];
  v137 = v0[33];
  v139(v100, v0[44], v102);
  v139(v101, v100, v102);
  sub_242731D24();
  sub_242716F70(v103);
  v106 = *(v105 + 8);
  v0[70] = v106;
  v0[71] = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v106(v104, v137);
  v0[72] = v138;
  v97(v100, v102);
  v107 = sub_242731CF4();
  [v107 mutableCopy];

  sub_242732894();
  swift_unknownObjectRelease();
  sub_2426F10AC(0, &qword_27ECBAB00, 0x277CCAB70);
  swift_dynamicCast();
  v108 = v0[29];
  v0[73] = v108;
  v109 = v142;
  v110 = *(*__swift_project_boxed_opaque_existential_1(v142 + 6, v142[9]) + 32);
  os_unfair_lock_lock((v110 + 32));
  if (*(v110 + 16))
  {
    v111 = *(v110 + 24);
    swift_getObjectType();
    v112 = 0;
    if ((sub_242719E58() & 1) != 0 && v111)
    {
      v112 = [v111 dataPlanTier] > 2;
    }
  }

  else
  {
    v112 = 0;
  }

  v114 = v0[37];
  v113 = v0[38];
  v116 = v0[33];
  v115 = v0[34];
  os_unfair_lock_unlock((v110 + 32));

  [v108 _setAllowsUCA_];
  sub_242731D14();
  (*(v115 + 40))(v113, v114, v116);
  sub_242731CD4();

  sub_24270A02C(v143, v144, v140, v141);

  sub_242731D44();

  sub_242731D44();

  v117 = sub_242732224();
  v118 = sub_2427327C4();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v145 = v120;
    *v119 = 136315394;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v109 = v142;
    v121 = sub_242732AD4();
    v123 = sub_2426FBA6C(v121, v122, &v145);

    *(v119 + 4) = v123;
    *(v119 + 12) = 2080;
    swift_beginAccess();
    sub_24271282C(&qword_27ECBB140, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
    v124 = sub_242732AD4();
    v126 = sub_2426FBA6C(v124, v125, &v145);

    *(v119 + 14) = v126;
    _os_log_impl(&dword_2426EB000, v117, v118, "[%s] %s", v119, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v120, -1, -1);
    MEMORY[0x245D17E30](v119, -1, -1);
  }

  v127 = v0[38];
  v128 = v0[36];
  v129 = v0[33];
  v130 = v0[34];
  v131 = v109[4];
  v132 = v109[5];
  __swift_project_boxed_opaque_existential_1(v109 + 1, v131);
  swift_beginAccess();
  v133 = *(v130 + 16);
  v0[74] = v133;
  v0[75] = (v130 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v133(v128, v127, v129);
  v134 = swift_task_alloc();
  v0[76] = v134;
  *v134 = v0;
  v134[1] = sub_24270D164;
  v135 = v0[36];

  return sub_2426ECA94(v135, v131, v132);
}

uint64_t sub_24270D164(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  v8[77] = a3;
  v8[78] = v3;

  v9 = v7[70];
  v10 = v7[36];
  v11 = v7[33];
  v12 = v7[32];
  v9(v10, v11);
  if (v3)
  {
    v13 = sub_24270DEE4;
  }

  else
  {
    sub_2426FBA18(a1, a2);
    v13 = sub_24270D308;
  }

  return MEMORY[0x2822009F8](v13, v12, 0);
}

uint64_t sub_24270D308()
{
  v34 = v0;
  v1 = *(v0 + 616);

  v2 = v1;
  v3 = sub_242732224();
  v4 = sub_2427327C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 616);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v6 = 136315394;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_242732AD4();
    v11 = sub_2426FBA6C(v9, v10, &v33);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v5;
    *v7 = v5;
    v12 = v5;
    _os_log_impl(&dword_2426EB000, v3, v4, "[%s] %@", v6, 0x16u);
    sub_2426FED88(v7, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x245D17E30](v8, -1, -1);
    MEMORY[0x245D17E30](v6, -1, -1);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13 && (v14 = v13, [v13 statusCode] == 401))
  {
    (*(v0 + 592))(*(v0 + 280), *(v0 + 304), *(v0 + 264));
    v15 = swift_task_alloc();
    *(v0 + 632) = v15;
    *v15 = v0;
    v15[1] = sub_24270D7A0;
    v16 = *(v0 + 512);
    v17 = *(v0 + 280);

    return sub_24270E2FC(v16, v14, v17);
  }

  else
  {
    v19 = *(v0 + 616);
    v20 = *(v0 + 584);
    v32 = *(v0 + 560);
    v21 = *(v0 + 552);
    v22 = *(v0 + 424);
    v30 = *(v0 + 416);
    v31 = *(v0 + 432);
    v23 = *(v0 + 368);
    v24 = *(v0 + 352);
    v25 = *(v0 + 312);
    v28 = *(v0 + 264);
    v29 = *(v0 + 304);
    sub_242712428();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();

    v21(v24, v25);
    sub_2426FED88(v23, &qword_27ECBAB20, &unk_242737540);
    (*(v22 + 8))(v31, v30);
    v32(v29, v28);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_24270D7A0()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = v2[70];
  v4 = v2[35];
  v5 = v2[33];
  v6 = v2[32];
  v3(v4, v5);
  if (v0)
  {
    v7 = sub_24270E0EC;
  }

  else
  {
    v7 = sub_24270D924;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24270D924()
{
  v48 = v0;
  sub_242711D24(v0[64], v0[63]);

  v1 = sub_242732224();
  v2 = sub_2427327C4();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[63];
  if (v3)
  {
    v5 = v0[62];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v47 = v7;
    *v6 = 136315394;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v8 = sub_242732AD4();
    v10 = sub_2426FBA6C(v8, v9, &v47);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    sub_242711D24(v4, v5);
    v11 = sub_242732514();
    v13 = v12;
    sub_242711D88(v4);
    v14 = sub_2426FBA6C(v11, v13, &v47);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2426EB000, v1, v2, "[%s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v7, -1, -1);
    MEMORY[0x245D17E30](v6, -1, -1);
  }

  else
  {

    sub_242711D88(v4);
  }

  v15 = sub_242732224();
  v16 = sub_2427327B4();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[77];
  v19 = v0[69];
  v21 = v0[53];
  v20 = v0[54];
  v22 = v0[52];
  v23 = v0[46];
  v44 = v0[44];
  v46 = v0[73];
  v43 = v0[39];
  if (v17)
  {
    v42 = v0[54];
    v40 = v0[69];
    v24 = swift_slowAlloc();
    v41 = v22;
    v25 = swift_slowAlloc();
    v47 = v25;
    *v24 = 136315138;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_242732AD4();
    v28 = sub_2426FBA6C(v26, v27, &v47);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2426EB000, v15, v16, "[%s] Authentication completed successfuly, caching result", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x245D17E30](v25, -1, -1);
    MEMORY[0x245D17E30](v24, -1, -1);

    v40(v44, v43);
    sub_2426FED88(v23, &qword_27ECBAB20, &unk_242737540);
    (*(v21 + 8))(v42, v41);
  }

  else
  {

    v19(v44, v43);
    sub_2426FED88(v23, &qword_27ECBAB20, &unk_242737540);
    (*(v21 + 8))(v20, v22);
  }

  v45 = v0[70];
  v29 = v0[67];
  v30 = v0[64];
  v31 = v0[60];
  v32 = v0[61];
  v33 = v0[58];
  v34 = v0[38];
  v36 = v0[32];
  v35 = v0[33];
  v37 = v0[31];
  sub_242711D24(v30, v33);
  (*(v32 + 56))(v33, 0, 1, v31);
  swift_beginAccess();
  sub_242712758(v33, v36 + v29);
  swift_endAccess();
  sub_2427127C8(v30, v37);
  v45(v34, v35);

  v38 = v0[1];

  return v38();
}

uint64_t sub_24270DEE4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 424);
  v11 = *(v0 + 432);
  v12 = *(v0 + 560);
  v3 = *(v0 + 416);
  v4 = *(v0 + 368);
  v5 = *(v0 + 352);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 264);

  v1(v5, v6);
  sub_2426FED88(v4, &qword_27ECBAB20, &unk_242737540);
  (*(v2 + 8))(v11, v3);
  v12(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24270E0EC()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  v3 = *(v0 + 424);
  v12 = *(v0 + 432);
  v13 = *(v0 + 560);
  v11 = *(v0 + 416);
  v4 = *(v0 + 368);
  v5 = *(v0 + 352);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 264);

  v2(v5, v6);
  sub_2426FED88(v4, &qword_27ECBAB20, &unk_242737540);
  (*(v3 + 8))(v12, v11);
  v13(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24270E2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[147] = v3;
  v4[146] = a3;
  v4[145] = a2;
  v4[144] = a1;
  v5 = sub_242731D54();
  v4[148] = v5;
  v4[149] = *(v5 - 8);
  v4[150] = swift_task_alloc();
  v4[151] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24270E3D4, v3, 0);
}

uint64_t sub_24270E3D4()
{
  v57 = v0;
  sub_24271C824(*(v0 + 1160), v0 + 424);
  v1 = *(v0 + 472);
  *(v0 + 384) = *(v0 + 456);
  *(v0 + 400) = v1;
  *(v0 + 416) = *(v0 + 488);
  v2 = *(v0 + 440);
  *(v0 + 352) = *(v0 + 424);
  *(v0 + 368) = v2;
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  *(v0 + 1216) = v3;
  *(v0 + 1224) = v4;
  v5 = *(v0 + 440);
  v6 = *(v0 + 448);
  *(v0 + 1232) = v5;
  *(v0 + 1240) = v6;
  v7 = *(v0 + 456);
  *(v0 + 417) = v7;
  if (!v4)
  {
    goto LABEL_4;
  }

  v8 = *(v0 + 473);
  *(v0 + 1008) = *(v0 + 457);
  *(v0 + 1024) = v8;
  v9 = sub_242731F54();
  *(v0 + 1248) = v9;
  *(v0 + 1256) = v10;
  if (v10 >> 60 == 15)
  {
    sub_2426FED88(v0 + 424, &qword_27ECBB128, &qword_2427387B0);
LABEL_4:
    sub_242712428();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
LABEL_35:

    v50 = *(v0 + 8);

    return v50();
  }

  v54 = v9;
  v55 = v10;
  if (v7 <= 1 && v7)
  {
  }

  else
  {
    v12 = sub_242732AE4();

    if ((v12 & 1) == 0)
    {
      v14 = v54;
      v13 = v55;
      if (qword_27ECBA978 != -1)
      {
        swift_once();
      }

      v15 = sub_242732244();
      __swift_project_value_buffer(v15, qword_27ECBB068);

      v16 = sub_242732224();
      v17 = sub_2427327D4();

      sub_2426FED88(v0 + 424, &qword_27ECBB128, &qword_2427387B0);
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v56[0] = v19;
        *v18 = 136315650;
        sub_242732024();
        sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v20 = sub_242732AD4();
        v22 = sub_2426FBA6C(v20, v21, v56);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2080;
        v23 = 0xE700000000000000;
        v24 = 0x3635322D414853;
        if (v7 != 2)
        {
          v24 = 0x2D3231352D414853;
          v23 = 0xEB00000000363532;
        }

        v25 = 0xE300000000000000;
        v26 = 3490893;
        if (v7)
        {
          v26 = 0x444D2D3176414B41;
          v25 = 0xE900000000000035;
        }

        if (v7 <= 1)
        {
          v27 = v26;
        }

        else
        {
          v27 = v24;
        }

        if (v7 <= 1)
        {
          v28 = v25;
        }

        else
        {
          v28 = v23;
        }

        v29 = sub_2426FBA6C(v27, v28, v56);

        *(v18 + 14) = v29;
        *(v18 + 22) = 2080;
        *(v18 + 24) = sub_2426FBA6C(0x444D2D3176414B41, 0xE900000000000035, v56);
        _os_log_impl(&dword_2426EB000, v16, v17, "[%s] Unexpected algorithm: %s (expected: %s", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x245D17E30](v19, -1, -1);
        MEMORY[0x245D17E30](v18, -1, -1);

        v14 = v54;
        v13 = v55;
      }

      else
      {
      }

      sub_242712428();
      swift_allocError();
      *v49 = 2;
      swift_willThrow();
      v45 = v14;
      goto LABEL_34;
    }
  }

  v52 = v7;
  if (qword_27ECBA978 != -1)
  {
    swift_once();
  }

  v30 = sub_242732244();
  *(v0 + 1264) = __swift_project_value_buffer(v30, qword_27ECBB068);

  sub_2426FC2F8(v0 + 424, v0 + 496, &qword_27ECBB128, &qword_2427387B0);
  v31 = sub_242732224();
  v32 = sub_2427327C4();

  sub_2426FED88(v0 + 424, &qword_27ECBB128, &qword_2427387B0);
  v53 = v32;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v56[0] = v51;
    *v33 = 136315394;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_242732AD4();
    v36 = sub_2426FBA6C(v34, v35, v56);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    *(v0 + 640) = v3;
    *(v0 + 648) = v4;
    *(v0 + 656) = v5;
    *(v0 + 664) = v6;
    *(v0 + 672) = v52;
    v37 = *(v0 + 1024);
    *(v0 + 673) = *(v0 + 1008);
    *(v0 + 689) = v37;
    v38 = *(v0 + 400);
    *(v0 + 600) = *(v0 + 384);
    *(v0 + 616) = v38;
    *(v0 + 632) = *(v0 + 416);
    v39 = *(v0 + 368);
    *(v0 + 568) = *(v0 + 352);
    *(v0 + 584) = v39;
    sub_2427126B4(v0 + 568, v0 + 712);
    v40 = sub_242732514();
    v42 = sub_2426FBA6C(v40, v41, v56);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_2426EB000, v31, v53, "[%s] Auth Info: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v51, -1, -1);
    MEMORY[0x245D17E30](v33, -1, -1);
  }

  v13 = v55;
  sub_2426FC2A4(v54, v55);
  sub_242711DE4(v54, v55, (v0 + 880));
  v43 = *(v0 + 888);
  if (v43 >> 60 == 15)
  {
    sub_2426FED88(v0 + 424, &qword_27ECBB128, &qword_2427387B0);
    sub_242712428();
    swift_allocError();
    *v44 = 3;
    swift_willThrow();
    v45 = v54;
LABEL_34:
    sub_2426FD498(v45, v13);
    goto LABEL_35;
  }

  *(v0 + 784) = *(v0 + 880);
  *(v0 + 792) = v43;
  v46 = *(v0 + 912);
  *(v0 + 800) = *(v0 + 896);
  *(v0 + 816) = v46;
  v47 = swift_task_alloc();
  *(v0 + 1272) = v47;
  *v47 = v0;
  v47[1] = sub_24270EBD8;

  return sub_242710114(v0 + 784);
}

uint64_t sub_24270EBD8(uint64_t a1)
{
  v3 = *v2;
  v3[160] = a1;
  v3[161] = v1;

  if (v1)
  {
    v4 = v3[147];
    sub_2426FED88((v3 + 53), &qword_27ECBB128, &qword_2427387B0);
    v5 = sub_24270FAD4;
    v6 = v4;
  }

  else
  {
    v6 = v3[147];
    v5 = sub_24270ED14;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_24270ED14()
{
  v57 = v0;
  sub_242711FE0(*(v0 + 1280), (v0 + 832));
  v1 = *(v0 + 832);
  *(v0 + 1296) = v1;
  v2 = *(v0 + 840);
  *(v0 + 1304) = v2;
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 1280);
    v4 = *(v0 + 1256);
    v5 = *(v0 + 1248);
    sub_2426FED88(v0 + 424, &qword_27ECBB128, &qword_2427387B0);
    sub_242712428();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();

    sub_2426FED88(v0 + 880, &qword_27ECBB130, &qword_2427387B8);
    sub_2426FD498(v5, v4);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v53 = *(v0 + 417);
    v52 = *(v0 + 1240);
    v9 = *(v0 + 1232);
    v51 = *(v0 + 1216);
    v10 = *(v0 + 1192);
    v11 = *(v0 + 1184);
    v12 = *(v0 + 1176);
    v13 = *(v0 + 1168);
    v14 = *(v0 + 864);
    *(v0 + 1040) = *(v0 + 848);
    *(v0 + 1056) = v14;
    v15 = (v12 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_configuration);
    v16 = *(v12 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_configuration + 88);
    *(v0 + 1312) = v16;
    v54 = v15;
    v17 = v15[12];
    *(v0 + 1320) = v17;
    *(v0 + 1120) = v1;
    *(v0 + 1128) = v2;
    *(v0 + 952) = v11;
    *(v0 + 960) = &off_285502158;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 928));
    v55 = *(v10 + 16);
    v55(boxed_opaque_existential_1, v13, v11);
    *(v0 + 16) = v51;
    *(v0 + 32) = v9;
    *(v0 + 40) = v52;
    *(v0 + 48) = v53;
    v19 = *(v0 + 1024);
    *(v0 + 49) = *(v0 + 1008);
    *(v0 + 65) = v19;
    *(v0 + 88) = v16;
    *(v0 + 96) = v17;
    *(v0 + 104) = *(v0 + 1120);
    sub_2426F0FFC(v0 + 928, v0 + 120);
    *(v0 + 160) = 1;

    sub_2427125A8(v0 + 1120, v0 + 1136);
    v20 = sub_24271EF0C(8, 0, 0xE000000000000000);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 928));
    *(v0 + 168) = v20;
    *(v0 + 176) = v22;
    sub_242712604(v0 + 16, v0 + 184);

    v23 = sub_242732224();
    v24 = sub_2427327C4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v56[0] = v26;
      *v25 = 136315394;
      sub_242732024();
      sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_242732AD4();
      v29 = sub_2426FBA6C(v27, v28, v56);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = sub_24270183C();
      v32 = v31;
      sub_242712660(v0 + 184);
      v33 = sub_2426FBA6C(v30, v32, v56);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_2426EB000, v23, v24, "[%s] Auth Response: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D17E30](v26, -1, -1);
      MEMORY[0x245D17E30](v25, -1, -1);
    }

    else
    {

      sub_242712660(v0 + 184);
    }

    v55(*(v0 + 1208), *(v0 + 1168), *(v0 + 1184));
    sub_24270183C();
    sub_242731D44();

    v34 = sub_242732224();
    v35 = sub_2427327C4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v56[0] = v37;
      *v36 = 136315394;
      sub_242732024();
      sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = sub_242732AD4();
      v40 = sub_2426FBA6C(v38, v39, v56);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      swift_beginAccess();
      sub_24271282C(&qword_27ECBB140, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
      v41 = sub_242732AD4();
      v43 = sub_2426FBA6C(v41, v42, v56);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_2426EB000, v34, v35, "[%s] %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D17E30](v37, -1, -1);
      MEMORY[0x245D17E30](v36, -1, -1);
    }

    v44 = *(v0 + 1208);
    v45 = *(v0 + 1200);
    v46 = *(v0 + 1184);
    v47 = v54[4];
    v48 = v54[5];
    __swift_project_boxed_opaque_existential_1(v54 + 1, v47);
    swift_beginAccess();
    v55(v45, v44, v46);
    v49 = swift_task_alloc();
    *(v0 + 1328) = v49;
    *v49 = v0;
    v49[1] = sub_24270F40C;
    v50 = *(v0 + 1200);

    return sub_2426ECA94(v50, v47, v48);
  }
}

uint64_t sub_24270F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[167] = a1;
  v6[168] = a2;
  v6[169] = a3;
  v6[170] = v3;

  v7 = v5[150];
  v8 = v5[149];
  v9 = v5[148];
  v10 = v5[147];
  v11 = *(v8 + 8);
  v12 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v3)
  {
    v6[173] = v11;
    v6[174] = v12;
    v11(v7, v9);
    v13 = sub_24270FB70;
  }

  else
  {
    v6[171] = v11;
    v6[172] = v12;
    v11(v7, v9);
    v13 = sub_24270F5C0;
  }

  return MEMORY[0x2822009F8](v13, v10, 0);
}

uint64_t sub_24270F5C0()
{
  v58 = v0;
  v1 = *(v0 + 1352);

  v2 = v1;
  v3 = sub_242732224();
  v4 = sub_2427327C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1352);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v57 = v8;
    *v6 = 136315394;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_242732AD4();
    v11 = sub_2426FBA6C(v9, v10, &v57);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v5;
    *v7 = v5;
    v12 = v5;
    _os_log_impl(&dword_2426EB000, v3, v4, "[%s] %@", v6, 0x16u);
    sub_2426FED88(v7, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x245D17E30](v8, -1, -1);
    MEMORY[0x245D17E30](v6, -1, -1);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13 || (v14 = v13, [v13 statusCode] != 200))
  {
    v55 = *(v0 + 1368);
    v24 = *(v0 + 1352);
    v25 = *(v0 + 1344);
    v26 = *(v0 + 1336);
    v27 = *(v0 + 1280);
    v28 = *(v0 + 1256);
    v29 = *(v0 + 1248);
    v53 = *(v0 + 1208);
    v30 = *(v0 + 1184);
    sub_242712428();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();
    sub_2426FBA18(v26, v25);
    sub_2426FED88(v0 + 880, &qword_27ECBB130, &qword_2427387B8);
    sub_2426FED88(v0 + 832, &qword_27ECBB138, &qword_2427387C0);

    sub_2426FD498(v29, v28);
    sub_242712660(v0 + 16);
    v55(v53, v30);
    goto LABEL_8;
  }

  v15 = *(v0 + 1360);
  sub_24270FC68(*(v0 + 1336), *(v0 + 1344), v14, (v0 + 968));
  v56 = *(v0 + 1368);
  v16 = *(v0 + 1352);
  v17 = *(v0 + 1344);
  v18 = *(v0 + 1336);
  if (v15)
  {
    v19 = *(v0 + 1280);
    v20 = *(v0 + 1256);
    v21 = *(v0 + 1248);
    v22 = *(v0 + 1208);
    v23 = *(v0 + 1184);
    sub_242712660(v0 + 16);
    sub_2426FD498(v21, v20);

    sub_2426FBA18(v18, v17);
    sub_2426FED88(v0 + 832, &qword_27ECBB138, &qword_2427387C0);
    sub_2426FED88(v0 + 880, &qword_27ECBB130, &qword_2427387B8);
    v56(v22, v23);
LABEL_8:

    v32 = *(v0 + 8);
    goto LABEL_9;
  }

  v50 = *(v0 + 1312);
  v48 = *(v0 + 1296);
  v49 = *(v0 + 1304);
  v47 = *(v0 + 1256);
  v45 = *(v0 + 1280);
  v46 = *(v0 + 1248);
  v54 = *(v0 + 1208);
  v51 = *(v0 + 1320);
  v52 = *(v0 + 1184);
  v34 = *(v0 + 1152);
  __swift_project_boxed_opaque_existential_1((v0 + 968), *(v0 + 992));
  v35 = sub_242732314();
  v37 = v36;
  __swift_project_boxed_opaque_existential_1((v0 + 968), *(v0 + 992));
  v38 = type metadata accessor for GBAResult(0);
  sub_242732324();

  sub_2426FBA18(v18, v17);
  sub_2426FD498(v46, v47);
  sub_242712660(v0 + 16);
  *v34 = v35;
  v34[1] = v37;
  v39 = (v34 + v38[6]);
  v40 = *(v0 + 784);
  v41 = *(v0 + 816);
  v39[1] = *(v0 + 800);
  v39[2] = v41;
  *v39 = v40;
  v42 = v34 + v38[7];
  *v42 = v48;
  *(v42 + 1) = v49;
  v43 = *(v0 + 1056);
  *(v42 + 1) = *(v0 + 1040);
  *(v42 + 2) = v43;
  v44 = (v34 + v38[8]);
  *v44 = v50;
  v44[1] = v51;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 968));
  v56(v54, v52);

  v32 = *(v0 + 8);
LABEL_9:

  return v32();
}

uint64_t sub_24270FAD4()
{
  v1 = v0[157];
  v2 = v0[156];
  sub_2426FED88((v0 + 110), &qword_27ECBB130, &qword_2427387B8);
  sub_2426FD498(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24270FB70()
{
  v1 = v0[173];
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[151];
  v6 = v0[148];
  sub_2426FED88((v0 + 110), &qword_27ECBB130, &qword_2427387B8);
  sub_2426FED88((v0 + 104), &qword_27ECBB138, &qword_2427387C0);

  sub_2426FD498(v4, v3);
  sub_242712660((v0 + 2));
  v1(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24270FC68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_2427324F4();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(a1 + 16);
      v12 = *(a1 + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v15 >= 1)
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    sub_242712428();
    swift_allocError();
    v22 = 6;
LABEL_26:
    *v21 = v22;
    return swift_willThrow();
  }

  if (!v11)
  {
    if (!BYTE6(a2))
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(a1) - a1 < 1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v42 = v4;
  v16 = sub_242732484();
  v17 = [a3 valueForHTTPHeaderField_];

  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = sub_2427324B4();
  v20 = v19;

  if (v18 == 0xD00000000000001CLL && 0x80000002427337E0 == v20)
  {

    goto LABEL_16;
  }

  v23 = sub_242732AE4();

  if ((v23 & 1) == 0)
  {
LABEL_25:
    sub_242712428();
    swift_allocError();
    v22 = 7;
    goto LABEL_26;
  }

LABEL_16:
  if (qword_27ECBA978 != -1)
  {
LABEL_29:
    swift_once();
  }

  v24 = sub_242732244();
  __swift_project_value_buffer(v24, qword_27ECBB068);

  sub_2426FC2A4(a1, a2);
  v25 = sub_242732224();
  v26 = sub_2427327C4();

  sub_2426FBA18(a1, a2);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41[0] = v40;
    *v27 = 136315394;
    sub_242732024();
    v39 = v26;
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = sub_242732AD4();
    v30 = sub_2426FBA6C(v28, v29, v41);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    sub_2427324E4();
    v31 = sub_2427324C4();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = sub_2426FBA6C(v31, v33, v41);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_2426EB000, v25, v39, "[%s] %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v40, -1, -1);
    MEMORY[0x245D17E30](v27, -1, -1);
  }

  v35 = sub_242732214();
  swift_allocObject();
  v36 = sub_242732204();
  v41[3] = v35;
  v41[4] = &off_285502278;
  v41[0] = v36;
  __swift_project_boxed_opaque_existential_1(v41, v35);
  a4[3] = sub_242732334();
  a4[4] = &off_285502260;
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_24271250C();
  v37 = v42;
  sub_2427321F4();
  if (v37)
  {
    __swift_deallocate_boxed_opaque_existential_1(a4);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v41);
}

uint64_t sub_242710114(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;

  return MEMORY[0x2822009F8](sub_2427101A4, v1, 0);
}

uint64_t sub_2427101A4()
{
  v47 = v0;
  v1 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  v2 = sub_242712190();
  v0[10] = 0;
  v0[21] = v2;
  v3 = [v2 getDescriptorsForDomain:1 error:v0 + 10];
  v0[22] = v3;
  v4 = v0[10];
  if (!v3)
  {
    v22 = v4;
    sub_242731E64();

    swift_willThrow();
LABEL_37:

    v40 = v1[1];

    return v40();
  }

  v5 = v3;
  v6 = v4;
  v7 = [v5 descriptors];
  if (!v7)
  {
LABEL_36:
    sub_242712428();
    swift_allocError();
    *v39 = 5;
    swift_willThrow();

    goto LABEL_37;
  }

  v8 = v7;
  sub_2426F10AC(0, &qword_27ECBB0F8, 0x277CC3718);
  v9 = sub_242732684();

  v42 = v5;
  v43 = v2;
  if (v9 >> 62)
  {
LABEL_34:
    v10 = sub_242732984();
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_35:

    v5 = v42;
    goto LABEL_36;
  }

LABEL_5:
  v11 = 0;
  v12 = v1[20];
  v45 = v1;
  v13 = OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_configuration;
  v44 = OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_configuration;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x245D17410](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v14 = *(v9 + 8 * v11 + 32);
    }

    v1[23] = v14;
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v16 = *(v12 + v13);
    v17 = v14;
    if ([v17 domain] != 1)
    {

      goto LABEL_7;
    }

    v18 = v12;
    v19 = [v17 instance];
    v20 = [v19 integerValue];

    if (v20 != 1)
    {
      break;
    }

    v12 = v18;
    v13 = v44;
    v1 = v45;
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_7:

    ++v11;
    if (v15 == v10)
    {
      goto LABEL_35;
    }
  }

  v21 = v20 == 2;
  v12 = v18;
  v13 = v44;
  v1 = v45;
  if (!v21 || (v16 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_22:

  if (qword_27ECBA978 != -1)
  {
    swift_once();
  }

  v23 = sub_242732244();
  __swift_project_value_buffer(v23, qword_27ECBB068);

  v24 = sub_242732224();
  v25 = sub_2427327B4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v12;
    v28 = swift_slowAlloc();
    v46[0] = v28;
    *v26 = 136315394;
    sub_242732024();
    sub_24271282C(&qword_27ECBB108, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v29 = sub_242732AD4();
    v31 = sub_2426FBA6C(v29, v30, v46);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    if (*(v27 + v44))
    {
      v32 = 7305076;
    }

    else
    {
      v32 = 6647407;
    }

    v33 = sub_2426FBA6C(v32, 0xE300000000000000, v46);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_2426EB000, v24, v25, "[%s] Performing AKA authentication for subscriptionID %s", v26, 0x16u);
    swift_arrayDestroy();
    v1 = v45;
    MEMORY[0x245D17E30](v28, -1, -1);
    MEMORY[0x245D17E30](v26, -1, -1);
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CC3770]) init];
  v1[24] = v34;
  v35 = sub_242731FA4();
  [v34 setRand_];

  v36 = sub_242731FA4();
  [v34 setAutn_];

  v37 = [objc_allocWithZone(MEMORY[0x277CC3780]) init];
  v1[25] = v37;
  [v37 setAlgorithm_];
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_242710804;
  v38 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB100, &qword_242738798);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2427040AC;
  v1[13] = &block_descriptor_1;
  v1[14] = v38;
  [v43 authenticate:v17 request:v37 completion:?];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_242710804()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_242710A0C;
  }

  else
  {
    v4 = sub_242710950;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_242710950()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  v5 = *(v0 + 144);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_242710A0C(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[23];
  v3 = v1[24];
  v6 = v1[21];
  v5 = v1[22];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_242710AD0()
{
  v1 = OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_id;
  v2 = sub_242732024();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_242712874(v0 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_configuration);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_factory));

  sub_2426FED88(v0 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_cachedResult, &qword_27ECBB160, &qword_2427387E0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_242710BC0(uint64_t a1)
{
  sub_242732024();
  if (v1 <= 0x3F)
  {
    sub_242710CB4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_242710CB4(uint64_t a1)
{
  if (!qword_27ECBB0B0)
  {
    type metadata accessor for GBAResult(255);
    v1 = sub_242732834();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECBB0B0);
    }
  }
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_242710D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242710DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242710E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_242731FF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242710EE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_242731FF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242710F88(uint64_t a1)
{
  result = sub_242731FF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242711068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2427110C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_242711138(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2427325E4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245D170C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t *sub_2427111B4@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2427119F0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_242731DE4();
      swift_allocObject();
      v8 = sub_242731D94();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_242731F64();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_24271127C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_2426FBA18(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2426FBA18(v7, v6);
    *v4 = xmmword_2427382C0;
    sub_2426FBA18(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_242731DA4() && __OFSUB__(v7, sub_242731DD4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_242731DE4();
      swift_allocObject();
      v14 = sub_242731D84();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_242711720(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_2426FBA18(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2427382C0;
    sub_2426FBA18(0, 0xC000000000000000);
    sub_242731F44();
    result = sub_242711720(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_242711620@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2427119F0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_242711B48(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_242711BC4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2427116B4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_242711720(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_242731DA4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_242731DD4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_242731DC4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2427117D4@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_242732904();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_242711824(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_242731F84();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_24271195C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_24271195C(v4, v5);
  }

  return sub_242731F84();
}

uint64_t sub_24271195C(uint64_t a1, uint64_t a2)
{
  result = sub_242731DA4();
  if (!result || (result = sub_242731DD4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_242731DC4();
      return sub_242731F84();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2427119F0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_242711AA8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_242731DE4();
      swift_allocObject();
      sub_242731DB4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_242731F64();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_242711B48(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_242731DE4();
  swift_allocObject();
  result = sub_242731D94();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_242731F64();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_242711BC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_242731DE4();
  swift_allocObject();
  result = sub_242731D94();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_242711C48(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB0D0, &qword_242738778);
  v10 = sub_242712710(&qword_27ECBB0D8, &qword_27ECBB0D0, &qword_242738778, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_242711620(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

uint64_t sub_242711D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GBAResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242711D88(uint64_t a1)
{
  v2 = type metadata accessor for GBAResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242711DE4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (v9)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v10 < 32)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v6)
    {
      if (BYTE6(a2) >= 0x20uLL)
      {
        goto LABEL_11;
      }

LABEL_8:
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0xF000000000000000;
LABEL_35:
      result = sub_2426FBA18(v4, a2);
      *a3 = v11;
      a3[1] = v16;
      a3[2] = v12;
      a3[3] = v13;
      a3[4] = v14;
      a3[5] = v15;
      return result;
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (HIDWORD(result) - result < 32)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (v6)
  {
    if (v6 == 2)
    {
      result = *(result + 16);
      v17 = *(v4 + 24);
    }

    else
    {
      result = result;
      v17 = v4 >> 32;
    }
  }

  else
  {
    result = 0;
    v17 = BYTE6(a2);
  }

  if (v17 < result || result > 16)
  {
    __break(1u);
    goto LABEL_37;
  }

  v11 = sub_242731F94();
  v16 = v18;
  result = sub_242731F94();
  v12 = result;
  v13 = v19;
  if (v6 == 2)
  {
    v21 = *(v4 + 16);
    v20 = *(v4 + 24);
    v9 = __OFSUB__(v20, v21);
    v22 = v20 - v21;
    if (v9)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v22 < 33)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v6 == 1)
    {
      if (!__OFSUB__(HIDWORD(v4), v4))
      {
        if (HIDWORD(v4) - v4 < 33)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      goto LABEL_39;
    }

    if (BYTE6(a2) < 0x21uLL)
    {
LABEL_29:
      v14 = 0;
      v15 = 0xF000000000000000;
      goto LABEL_35;
    }
  }

LABEL_25:
  if (v6)
  {
    if (v6 == 2)
    {
      v24 = *(v4 + 16);
      v23 = *(v4 + 24);
    }

    else
    {
      v24 = v4;
      v23 = v4 >> 32;
    }
  }

  else
  {
    v24 = 0;
    v23 = BYTE6(a2);
  }

  if (v23 >= 32 && v23 >= v24)
  {
    v14 = sub_242731F94();
    v15 = v25;
    goto LABEL_35;
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_242711FE0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 res];
  if (!v4)
  {

LABEL_9:
    v6 = 0;
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v18 = 0;
    v8 = 0xF000000000000000;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_242731FC4();
  v8 = v7;

  v9 = [a1 ik];
  if (!v9)
  {

LABEL_8:
    sub_2426FBA18(v6, v8);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_242731FC4();
  v13 = v12;

  v14 = [a1 ck];
  if (!v14)
  {

    sub_2426FBA18(v11, v13);
    goto LABEL_8;
  }

  v15 = v14;
  v16 = sub_242731FC4();
  v18 = v17;

LABEL_10:
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = v16;
  a2[5] = v18;
}

void *sub_242712108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2427116B4(sub_242712170, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

id sub_242712190()
{
  v12 = sub_242732804();
  v0 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2427327F4();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_242732274();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v11[1] = sub_2426F10AC(0, &qword_27ECBB4B0, 0x277D85C78);
  sub_242732264();
  v13 = MEMORY[0x277D84F90];
  sub_24271282C(&qword_27ECBB110, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECBB4C0, &qword_242739200);
  sub_242712710(&qword_27ECBB118, &unk_27ECBB4C0, &qword_242739200, MEMORY[0x277D83970]);
  sub_2427328A4();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v12);
  v8 = sub_242732814();
  v9 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];

  return v9;
}

unint64_t sub_242712428()
{
  result = qword_27ECBB0F0;
  if (!qword_27ECBB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB0F0);
  }

  return result;
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

unint64_t sub_24271250C()
{
  result = qword_27ECBB120;
  if (!qword_27ECBB120)
  {
    sub_242732334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB120);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x245D17E30);
  }

  return result;
}

uint64_t sub_242712710(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_242712758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB160, &qword_2427387E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427127C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GBAResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24271282C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for HTTPGBAAuthenticator.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPGBAAuthenticator.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242712A08()
{
  result = qword_27ECBB178;
  if (!qword_27ECBB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB178);
  }

  return result;
}

uint64_t FileDownloadRequest.init(fileURL:destinationFileURL:cryptoMaterial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FileDownloadRequest(0);
  v9 = *(v8 + 24);
  v10 = sub_242732154();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = sub_242731F34();
  v12 = *(*(v11 - 8) + 32);
  v12(a4, a1, v11);
  v12(a4 + *(v8 + 20), a2, v11);

  return sub_242712BC0(a3, a4 + v9);
}

uint64_t type metadata accessor for FileDownloadRequest(uint64_t a1)
{
  result = qword_27ECBB1A8;
  if (!qword_27ECBB1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242712BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FileDownloadRequest.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242731F34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FileDownloadRequest.fileURL.setter(uint64_t a1)
{
  v3 = sub_242731F34();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FileDownloadRequest.destinationFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FileDownloadRequest(0) + 20);
  v4 = sub_242731F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FileDownloadRequest.destinationFileURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FileDownloadRequest(0) + 20);
  v4 = sub_242731F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FileDownloadRequest.cryptoMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FileDownloadRequest(0) + 24);

  return sub_242712EA4(v3, a1);
}

uint64_t sub_242712EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FileDownloadRequest.cryptoMaterial.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FileDownloadRequest(0) + 24);

  return sub_242712BC0(a1, v3);
}

unint64_t sub_242712FA0()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x614D6F7470797263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4C5255656C6966;
  }
}

uint64_t sub_24271300C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242713E14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242713034(uint64_t a1)
{
  v2 = sub_2427132EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242713070(uint64_t a1)
{
  v2 = sub_2427132EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileDownloadRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB180, &qword_242738908);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2427132EC();
  sub_242732BF4();
  v12 = 0;
  sub_242731F34();
  sub_2427138BC(&qword_27ECBAF30, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_242732AB4();
  if (!v1)
  {
    type metadata accessor for FileDownloadRequest(0);
    v11 = 1;
    sub_242732AB4();
    v10 = 2;
    sub_242732154();
    sub_2427138BC(&qword_27ECBB190, MEMORY[0x277CF6F00], MEMORY[0x277CF6F08]);
    sub_242732A84();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2427132EC()
{
  result = qword_27ECBB188;
  if (!qword_27ECBB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB188);
  }

  return result;
}

uint64_t FileDownloadRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v30 - v5;
  v37 = sub_242731F34();
  v34 = *(v37 - 8);
  v8 = MEMORY[0x28223BE20](v37, v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v35 = &v30 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB198, &qword_242738910);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for FileDownloadRequest(0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 24);
  v22 = sub_242732154();
  v23 = *(*(v22 - 8) + 56);
  v40 = v20;
  v41 = v21;
  v23(&v20[v21], 1, 1, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2427132EC();
  v24 = v39;
  sub_242732BE4();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_242713854(&v40[v41]);
  }

  else
  {
    v39 = a1;
    v32 = v6;
    v44 = 0;
    sub_2427138BC(&qword_27ECBAF60, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v25 = v35;
    sub_242732A44();
    v26 = *(v34 + 32);
    v27 = v40;
    v35 = (v34 + 32);
    v31 = v26;
    v26(v40, v25, v37);
    v43 = 1;
    sub_242732A44();
    v31(v27 + *(v16 + 20), v10, v37);
    v42 = 2;
    sub_2427138BC(&qword_27ECBB1A0, MEMORY[0x277CF6F00], MEMORY[0x277CF6F10]);
    v28 = v32;
    sub_242732A14();
    (*(v36 + 8))(v15, v38);
    sub_242712BC0(v28, v27 + v41);
    sub_242713904(v27, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    return sub_242713968(v27);
  }
}

uint64_t sub_242713854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2427138BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242713904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileDownloadRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242713968(uint64_t a1)
{
  v2 = type metadata accessor for FileDownloadRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242713A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242731F34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_242713B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_242731F34();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_242713C20(uint64_t a1)
{
  sub_242731F34();
  if (v1 <= 0x3F)
  {
    sub_242713CA4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242713CA4(uint64_t a1)
{
  if (!qword_27ECBB1B8)
  {
    sub_242732154();
    v1 = sub_242732834();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECBB1B8);
    }
  }
}

unint64_t sub_242713D10()
{
  result = qword_27ECBB1C0;
  if (!qword_27ECBB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB1C0);
  }

  return result;
}

unint64_t sub_242713D68()
{
  result = qword_27ECBB1C8;
  if (!qword_27ECBB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB1C8);
  }

  return result;
}

unint64_t sub_242713DC0()
{
  result = qword_27ECBB1D0;
  if (!qword_27ECBB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB1D0);
  }

  return result;
}

uint64_t sub_242713E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v4 || (sub_242732AE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242733D20 == a2 || (sub_242732AE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D6F7470797263 && a2 == 0xEE006C6169726574)
  {

    return 2;
  }

  else
  {
    v6 = sub_242732AE4();

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

uint64_t sub_242713F3C(uint64_t a1, unint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB1D8, &qword_242738AA8);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB1E0, &qword_242738AB0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB1E8, &qword_242738AB8);
  v25 = *(v15 - 8);
  v26 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v24 = &v24 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB1F0, &qword_242738AC0);
  sub_242732064();
  sub_242714388();
  sub_242732054();
  sub_242732644();

  sub_242732084();

  v18 = *(v3 + 8);
  v18(v7, v2);
  v18(v10, v2);
  v20 = v25;
  v19 = v26;
  if ((*(v25 + 48))(v14, 1, v26) == 1)
  {
    sub_2427143EC(v14);
    return 0;
  }

  else
  {
    v22 = v24;
    (*(v20 + 32))(v24, v14, v19);
    swift_getKeyPath();
    sub_2427320A4();

    v23 = MEMORY[0x245D17030](v27, v28, v29, v30);

    swift_getKeyPath();
    sub_2427320A4();

    MEMORY[0x245D17030](v27, v28, v29, v30);

    (*(v20 + 8))(v22, v19);
    return v23;
  }
}

unint64_t sub_242714388()
{
  result = qword_27ECBB1F8;
  if (!qword_27ECBB1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBB1D8, &qword_242738AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB1F8);
  }

  return result;
}

uint64_t sub_2427143EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB1E0, &qword_242738AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24271447C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24271463C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2427144AC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0x6567412D72657355;
  v5 = 0xE400000000000000;
  v6 = 1953722184;
  if (v2 != 6)
  {
    v6 = 0x66412D7972746552;
    v5 = 0xEB00000000726574;
  }

  v7 = 0xED00006E6F697461;
  v8 = 0x7A69726F68747541;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000002427338A0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000065707954;
  result = 0x2D746E65746E6F43;
  if (v2 != 2)
  {
    v9 = 0xEE006874676E654CLL;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000018;
    v3 = 0x8000000242733850;
  }

  if (*v1 > 1u)
  {
    v4 = 0x2D746E65746E6F43;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
  return result;
}

unint64_t sub_2427145E8()
{
  result = qword_27ECBB200;
  if (!qword_27ECBB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB200);
  }

  return result;
}

unint64_t sub_24271463C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2427329D4();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242714688()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB208);
  __swift_project_value_buffer(v0, qword_27ECBB208);
  return sub_242732234();
}

unint64_t sub_2427146F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2427328F4();

  v10 = 0xD000000000000026;
  v11 = 0x8000000242733DB0;
  MEMORY[0x245D17090](a1, a2);
  MEMORY[0x245D17090](34, 0xE100000000000000);
  result = 0xD000000000000026;
  if (a4)
  {
    strcpy(v9, "; filename=");
    BYTE5(v9[1]) = 0;
    HIWORD(v9[1]) = -5120;
    MEMORY[0x245D17090](a3, a4);
    MEMORY[0x245D17090](34, 0xE100000000000000);
    MEMORY[0x245D17090](v9[0], v9[1]);

    return v10;
  }

  return result;
}

uint64_t sub_242714808()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2427328F4();

  strcpy(v4, "Content-Type: ");
  MEMORY[0x245D17090](v1, v2);
  return v4[0];
}

uint64_t sub_24271488C()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (sub_242732984())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = 757926413;
    v3 = 0xE400000000000000;
    goto LABEL_6;
  }

  v2 = 11565;
  v3 = 0xE200000000000000;
LABEL_6:
  v5 = v2;
  v6 = v3;
  MEMORY[0x245D17090](*v0, v0[1]);
  MEMORY[0x245D17090](2573, 0xE200000000000000);
  sub_242714944(v5, v6);
}

unint64_t sub_242714944(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  result = sub_242709A44(a1, a2);
  v8 = result;
  v9 = v7;
  v10 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v7);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v13 = *(result + 16);
  v12 = *(result + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_8:
    LODWORD(v11) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v11 = v11;
  }

LABEL_11:
  v15 = *(v3 + 40);
  v14 = __OFADD__(v15, v11);
  v16 = v15 + v11;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + 40) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  sub_2426FC2A4(v8, v9);
  v18 = sub_242731FA4();
  [v17 initWithData_];

  v19 = sub_2426FBA18(v8, v9);
  MEMORY[0x245D17170](v19);
  if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_17:
    sub_242732694();
  }

  sub_2427326A4();

  return sub_2426FBA18(v8, v9);
}

uint64_t sub_242714AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2426FBFA0(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    do
    {
      sub_2426F0FFC(v4, &v17);
      v5 = v19;
      v6 = v20;
      __swift_project_boxed_opaque_existential_1(&v17, v19);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      v21 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2426FBFA0((v10 > 1), v11 + 1, 1);
        v2 = v21;
      }

      *(v2 + 16) = v11 + 1;
      v12 = v2 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD10, &qword_242737550);
  sub_2427023DC();
  v13 = sub_242732474();
  v15 = v14;

  v17 = v13;
  v18 = v15;
  MEMORY[0x245D17090](168626701, 0xE400000000000000);
  sub_242714944(v17, v18);
}

uint64_t sub_242714C44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v69 = a4;
  v65 = a3;
  v64 = a2;
  v6 = sub_242731F34();
  v68 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_242731E24();
  v67 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB038, &qword_242738C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242737530;
  v15 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v16 = v15;
  sub_24272106C(inited);
  swift_setDeallocating();
  sub_2427090EC(inited + 32);
  sub_242731E84();

  if (!v4)
  {
    v62 = v9;
    v18 = v68;
    v63 = v10;
    v69 = sub_242708C00(v69);
    v20 = v19;
    v21 = sub_242731E14();
    v22 = a1;
    if (v23)
    {

      if (qword_27ECBA980 != -1)
      {
        swift_once();
      }

      v24 = sub_242732244();
      __swift_project_value_buffer(v24, qword_27ECBB208);
      v25 = v18;
      v26 = v62;
      (*(v18 + 2))(v62, v22, v6);
      v27 = sub_242732224();
      v28 = sub_2427327D4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v70 = v30;
        *v29 = 136315138;
        sub_2427157A8();
        v31 = sub_242732AD4();
        v32 = v26;
        v34 = v33;
        (*(v25 + 1))(v32, v6);
        v35 = sub_2426FBA6C(v31, v34, &v70);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_2426EB000, v27, v28, "Unable to determine size of file at: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x245D17E30](v30, -1, -1);
        MEMORY[0x245D17E30](v29, -1, -1);
      }

      else
      {

        (*(v18 + 1))(v26, v6);
      }

      v53 = v63;
      v54 = v67;
LABEL_19:
      sub_242715754();
      swift_allocError();
      *v61 = 1;
      swift_willThrow();
      return (*(v54 + 8))(v13, v53);
    }

    v36 = v21;
    v68 = v13;
    v37 = sub_242731EE4();
    v39 = v38;
    v40 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
    v41 = sub_242732484();
    v42 = [v40 initWithFileAtPath_];

    if (!v42)
    {

      if (qword_27ECBA980 != -1)
      {
        swift_once();
      }

      v55 = sub_242732244();
      __swift_project_value_buffer(v55, qword_27ECBB208);

      v56 = sub_242732224();
      v57 = sub_2427327D4();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v70 = v59;
        *v58 = 136315138;
        v60 = sub_2426FBA6C(v37, v39, &v70);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_2426EB000, v56, v57, "Unable to open file at: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x245D17E30](v59, -1, -1);
        MEMORY[0x245D17E30](v58, -1, -1);
      }

      else
      {
      }

      v53 = v63;
      v54 = v67;
      v13 = v68;
      goto LABEL_19;
    }

    v43 = v66;
    v44 = *(v66 + 40);
    v45 = __OFADD__(v44, v36);
    v46 = v44 + v36;
    if (v45)
    {
      __break(1u);
    }

    else
    {
      *(v66 + 40) = v46;
      sub_24271488C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB228, &qword_242738C48);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_2427382B0;
      v48 = sub_242731E94();
      v50 = v49;
      *(v47 + 56) = &type metadata for HTTPMultipartFormDataBuilder.ContentDisposition;
      *(v47 + 64) = &off_285501E28;
      v51 = swift_allocObject();
      *(v47 + 32) = v51;
      v52 = v65;
      v51[2] = v64;
      v51[3] = v52;
      v51[4] = v48;
      v51[5] = v50;
      *(v47 + 96) = &type metadata for HTTPMultipartFormDataBuilder.ContentType;
      *(v47 + 104) = &off_285501E18;
      *(v47 + 72) = v69;
      *(v47 + 80) = v20;

      sub_242714AB4(v47);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB230, &unk_242738C50);
      swift_arrayDestroy();
      v39 = v42;
      MEMORY[0x245D17170]();
      if (*((*(v43 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v43 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_10:
        sub_2427326A4();

        return (*(v67 + 8))(v68, v63);
      }
    }

    sub_242732694();
    goto LABEL_10;
  }

  return result;
}

id sub_242715380()
{
  v7 = 757926413;
  v8 = 0xE400000000000000;
  MEMORY[0x245D17090](*v0, v0[1]);
  MEMORY[0x245D17090](11565, 0xE200000000000000);
  sub_242714944(757926413, 0xE400000000000000);

  v1 = v0[4];
  v2 = type metadata accessor for AggregateInputStream();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream] = 0;
  *&v3[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_underlyingStreamError] = 0;
  *&v3[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_streams] = v1;
  *&v3[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status] = 0;
  v4 = &v3[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_streamIterator];
  *v4 = v1;
  *(v4 + 1) = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  swift_bridgeObjectRetain_n();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_242715470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24271488C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB228, &qword_242738C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2427382B0;
  *(inited + 56) = &type metadata for HTTPMultipartFormDataBuilder.ContentDisposition;
  *(inited + 64) = &off_285501E28;
  v6 = swift_allocObject();
  *(inited + 32) = v6;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = 0;
  v6[5] = 0;
  *(inited + 96) = &type metadata for HTTPMultipartFormDataBuilder.ContentType;
  *(inited + 104) = &off_285501E18;
  *(inited + 72) = 0x616C702F74786574;
  *(inited + 80) = 0xEA00000000006E69;

  sub_242714AB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB230, &unk_242738C50);
  swift_arrayDestroy();
  v7 = sub_242732004();
  sub_242714944(v7, v8);
}

uint64_t sub_2427155C8@<X0>(void *a1@<X8>)
{
  sub_2427328F4();

  v2 = sub_24271F118(20);
  MEMORY[0x245D17090](v2);

  sub_2427328F4();

  result = MEMORY[0x245D17090](0xD000000000000018, 0x8000000242733D70);
  *a1 = 0xD000000000000018;
  a1[1] = 0x8000000242733D70;
  a1[2] = 0xD00000000000001ELL;
  a1[3] = 0x8000000242733D90;
  a1[4] = MEMORY[0x277D84F90];
  a1[5] = 0;
  return result;
}

uint64_t sub_2427156B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2427156F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_242715754()
{
  result = qword_27ECBB220;
  if (!qword_27ECBB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB220);
  }

  return result;
}

unint64_t sub_2427157A8()
{
  result = qword_27ECBAB60;
  if (!qword_27ECBAB60)
  {
    sub_242731F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAB60);
  }

  return result;
}

uint64_t sub_242715800()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24271584C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_242715894(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2427158EC(uint64_t a1, int a2)
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

uint64_t sub_242715934(uint64_t result, int a2, int a3)
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

unint64_t sub_242715998()
{
  result = qword_27ECBB238;
  if (!qword_27ECBB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB238);
  }

  return result;
}

uint64_t sub_242715BD8(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_242704820;

  return sub_2427167EC(v12);
}

id sub_242715D24()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_242715DCC()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_242715E24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2426F07F0;

  return sub_242715BD8(v2, v3, v4, v5, v6);
}

uint64_t sub_242715EEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2426F1158;

  return v6();
}

uint64_t sub_242715FD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2426F07F0;

  return v7();
}

uint64_t sub_2427160C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAE78, &qword_242739D30);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_24271637C(a3, v24 - v11);
  v13 = sub_242732714();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2427163EC(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_242732704();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2427326B4();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_242732524() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2427163EC(a3);

    return v22;
  }

LABEL_8:
  sub_2427163EC(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24271637C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAE78, &qword_242739D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427163EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAE78, &qword_242739D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242716454(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24271654C;

  return v6(a1);
}

uint64_t sub_24271654C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_242716644()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24271667C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2426F1158;

  return sub_242716454(a1, v4);
}

uint64_t sub_242716734(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2426F07F0;

  return sub_242716454(a1, v4);
}

uint64_t sub_2427167EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24271680C, 0, 0);
}

uint64_t sub_24271680C()
{
  v1 = sub_242701104(*(v0 + 16));
  if (v3 == 0xFF)
  {
    v8 = 1;
  }

  else
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    sub_242705380(v1, v2, v3);
    v6 = [v5 failureResponse];
    v7 = *(v4 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse);
    *(v4 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse) = v6;

    v8 = 2;
  }

  v9 = *(v0 + 8);

  return v9(v8, 0);
}

uint64_t sub_2427168C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 3490893;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x3635322D414853;
    }

    else
    {
      v4 = 0x2D3231352D414853;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEB00000000363532;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x444D2D3176414B41;
    }

    else
    {
      v4 = 3490893;
    }

    if (v3)
    {
      v5 = 0xE900000000000035;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x3635322D414853;
  if (a2 != 2)
  {
    v8 = 0x2D3231352D414853;
    v7 = 0xEB00000000363532;
  }

  if (a2)
  {
    v2 = 0x444D2D3176414B41;
    v6 = 0xE900000000000035;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242732AE4();
  }

  return v11 & 1;
}

uint64_t sub_242716A1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000746ELL;
  v3 = 0x6567412D72657355;
  v4 = a1;
  v5 = 1953722184;
  if (a1 == 6)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x66412D7972746552;
    v6 = 0xEB00000000726574;
  }

  v7 = 0x7A69726F68747541;
  v8 = 0xED00006E6F697461;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x80000002427338A0;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
  }

  else
  {
    v7 = v5;
  }

  v9 = 0xEC00000065707954;
  if (a1 != 2)
  {
    v9 = 0xEE006874676E654CLL;
  }

  v10 = 0x8000000242733850;
  v11 = 0xD000000000000018;
  if (a1)
  {
    v11 = 0x6567412D72657355;
    v10 = 0xEA0000000000746ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v10;
  }

  else
  {
    v11 = 0x2D746E65746E6F43;
  }

  if (a1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 3)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE400000000000000;
        if (v12 != 1953722184)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0xEB00000000726574;
        if (v12 != 0x66412D7972746552)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00006E6F697461;
      if (v12 != 0x7A69726F68747541)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0x80000002427338A0;
      if (v12 != 0xD000000000000010)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      v3 = 0x2D746E65746E6F43;
      if (a2 == 2)
      {
        v2 = 0xEC00000065707954;
        if (v12 != 0x2D746E65746E6F43)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0xEE006874676E654CLL;
    }

    else if (!a2)
    {
      v2 = 0x8000000242733850;
      if (v12 != 0xD000000000000018)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v12 != v3)
    {
LABEL_44:
      v14 = sub_242732AE4();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v13 != v2)
  {
    goto LABEL_44;
  }

  v14 = 1;
LABEL_45:

  return v14 & 1;
}

uint64_t sub_242716CAC(uint64_t a1, unsigned __int8 a2)
{
  sub_242732554();
}

uint64_t sub_242716E04(uint64_t a1, unsigned __int8 a2)
{
  sub_242732BA4();
  sub_242732554();

  return sub_242732BD4();
}

uint64_t sub_242716F70@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_242731F34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v32 - v10;
  v12 = sub_242731D54();
  (*(*(v12 - 8) + 16))(a2, v2, v12);

  v14 = sub_242718134(v13);

  v16 = 0;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v37 = (v5 + 16);
  v38 = (v5 + 48);
  v35 = (v5 + 8);
  while (v19)
  {
LABEL_9:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    if (*(*(v14 + 48) + (v22 | (v16 << 6))) == 6)
    {
      sub_242731D34();
      if ((*v38)(v11, 1, v4))
      {
        result = sub_2427181A8(v11);
      }

      else
      {
        v34 = a2;
        v23 = v36;
        (*v37)(v36, v11, v4);
        sub_2427181A8(v11);
        v24 = sub_242731ED4();
        if (v25)
        {
          v26 = v24;
          v27 = v25;
          v33 = v4;
          v28 = sub_242731F04();
          if ((v29 & 1) == 0)
          {
            v40 = v26;
            v41 = v27;
            v30 = v28;
            MEMORY[0x245D17090](58, 0xE100000000000000);
            v39 = v30;
            v31 = sub_242732AD4();
            MEMORY[0x245D17090](v31);
          }

          v4 = v33;
          (*v35)(v23, v33);
          a2 = v34;
          sub_242731D44();
        }

        else
        {
          result = (*v35)(v23, v4);
          a2 = v34;
        }
      }
    }
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v14 + 56 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2427172BC(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_242716E04(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    v8 = 0xEC00000065707954;
    v9 = 0xEA0000000000746ELL;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v10 == 6)
          {
            v15 = 0xE400000000000000;
            v14 = 1953722184;
          }

          else
          {
            v14 = 0x66412D7972746552;
            v15 = 0xEB00000000726574;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v14 = 0x7A69726F68747541;
          }

          else
          {
            v14 = 0xD000000000000010;
          }

          if (v10 == 4)
          {
            v15 = 0xED00006E6F697461;
          }

          else
          {
            v15 = 0x80000002427338A0;
          }
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0xEE006874676E654CLL;
        }

        v12 = 0xD000000000000018;
        if (*(*(v4 + 48) + v7))
        {
          v12 = 0x6567412D72657355;
          v13 = 0xEA0000000000746ELL;
        }

        else
        {
          v13 = 0x8000000242733850;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = 0x2D746E65746E6F43;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }
      }

      v16 = 0x66412D7972746552;
      if (v3 == 6)
      {
        v16 = 1953722184;
      }

      v17 = 0xEB00000000726574;
      if (v3 == 6)
      {
        v17 = 0xE400000000000000;
      }

      v18 = 0x7A69726F68747541;
      if (v3 != 4)
      {
        v18 = 0xD000000000000010;
      }

      v19 = 0xED00006E6F697461;
      if (v3 != 4)
      {
        v19 = 0x80000002427338A0;
      }

      if (v3 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = v3 == 2 ? v8 : 0xEE006874676E654CLL;
      v21 = 0xD000000000000018;
      if (v3)
      {
        v21 = 0x6567412D72657355;
      }

      else
      {
        v9 = 0x8000000242733850;
      }

      if (v3 <= 1u)
      {
        v20 = v9;
      }

      else
      {
        v21 = 0x2D746E65746E6F43;
      }

      v22 = v3 <= 3u ? v21 : v16;
      v23 = v3 <= 3u ? v20 : v17;
      if (v14 == v22 && v15 == v23)
      {
        break;
      }

      v24 = v8;
      v25 = sub_242732AE4();

      if (v25)
      {
        goto LABEL_57;
      }

      v7 = (v7 + 1) & v30;
      v8 = v24;
      v9 = 0xEA0000000000746ELL;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    sub_24271794C(v3, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_2427175D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB258, &qword_242738E20);
  result = sub_2427328C4();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_242732BA4();
      sub_242732554();

      result = sub_242732BD4();
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

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
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

uint64_t sub_24271794C(uint64_t result, unint64_t a2, char a3)
{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_62;
  }

  if (a3)
  {
    sub_2427175D8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_242717CB0();
      goto LABEL_62;
    }

    sub_242717DF0(v5 + 1);
  }

  v7 = *v3;
  result = sub_242716E04(*(*v3 + 40), v33);
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v32 = ~v8;
    v9 = 0xEE006874676E654CLL;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 3)
      {
        if (*(*(v7 + 48) + a2) > 5u)
        {
          if (v10 == 6)
          {
            v15 = 0xE400000000000000;
            v14 = 1953722184;
          }

          else
          {
            v14 = 0x66412D7972746552;
            v15 = 0xEB00000000726574;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v14 = 0x7A69726F68747541;
          }

          else
          {
            v14 = 0xD000000000000010;
          }

          if (v10 == 4)
          {
            v15 = 0xED00006E6F697461;
          }

          else
          {
            v15 = 0x80000002427338A0;
          }
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = 0xEC00000065707954;
        }

        else
        {
          v11 = v9;
        }

        v12 = 0xD000000000000018;
        if (*(*(v7 + 48) + a2))
        {
          v12 = 0x6567412D72657355;
          v13 = 0xEA0000000000746ELL;
        }

        else
        {
          v13 = 0x8000000242733850;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = 0x2D746E65746E6F43;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }
      }

      v16 = 0x66412D7972746552;
      if (v33 == 6)
      {
        v16 = 1953722184;
      }

      v17 = 0xEB00000000726574;
      if (v33 == 6)
      {
        v17 = 0xE400000000000000;
      }

      v18 = 0x7A69726F68747541;
      if (v33 != 4)
      {
        v18 = 0xD000000000000010;
      }

      v19 = 0xED00006E6F697461;
      if (v33 != 4)
      {
        v19 = 0x80000002427338A0;
      }

      if (v33 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = v9;
      v21 = v33 == 2 ? 0xEC00000065707954 : v9;
      v22 = 0xD000000000000018;
      if (v33)
      {
        v22 = 0x6567412D72657355;
        v23 = 0xEA0000000000746ELL;
      }

      else
      {
        v23 = 0x8000000242733850;
      }

      if (v33 <= 1u)
      {
        v21 = v23;
      }

      else
      {
        v22 = 0x2D746E65746E6F43;
      }

      v24 = v33 <= 3u ? v22 : v16;
      v25 = v33 <= 3u ? v21 : v17;
      if (v14 == v24 && v15 == v25)
      {
        goto LABEL_65;
      }

      v26 = sub_242732AE4();

      if (v26)
      {
        goto LABEL_66;
      }

      a2 = (a2 + 1) & v32;
      v9 = v20;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_62:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v33;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_65:

LABEL_66:
  result = sub_242732B04();
  __break(1u);
  return result;
}

void *sub_242717CB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB258, &qword_242738E20);
  v2 = *v0;
  v3 = sub_2427328B4();
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

uint64_t sub_242717DF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB258, &qword_242738E20);
  result = sub_2427328C4();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_242732BA4();
      sub_242732554();

      result = sub_242732BD4();
      v12 = -1 << *(v5 + 32);
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
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_242718134(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_242718210();
  result = MEMORY[0x245D17290](v2, &type metadata for HTTPHeader, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2427172BC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2427181A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242718210()
{
  result = qword_27ECBB250;
  if (!qword_27ECBB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB250);
  }

  return result;
}

uint64_t sub_242718264()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB260);
  __swift_project_value_buffer(v0, qword_27ECBB260);
  return sub_242732234();
}

uint64_t sub_2427182E4()
{
  v1 = OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB2A0, &unk_242738E60);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_242718358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncTaskDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AsyncTaskDelegate(uint64_t a1)
{
  result = qword_27ECBB280;
  if (!qword_27ECBB280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24271845C(uint64_t a1)
{
  sub_2427184EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2427184EC(uint64_t a1)
{
  if (!qword_27ECBB290)
  {
    sub_242718568();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
    v1 = sub_2427326E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECBB290);
    }
  }
}

unint64_t sub_242718568()
{
  result = qword_27ECBB298;
  if (!qword_27ECBB298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECBB298);
  }

  return result;
}

void sub_242718640(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB2A0, &unk_242738E60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - v9;
  if (qword_27ECBA988 != -1)
  {
    swift_once();
  }

  v11 = sub_242732244();
  __swift_project_value_buffer(v11, qword_27ECBB260);
  v12 = a1;
  v13 = a2;
  v14 = sub_242732224();
  v15 = sub_2427327B4();

  if (os_log_type_enabled(v14, v15))
  {
    v35 = v2;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2112;
    v18 = v12;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v16 + 14) = v20;
    v17[1] = v21;
    _os_log_impl(&dword_2426EB000, v14, v15, "Task [%@] completed with error: %@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECBAE80, &qword_242736EF0);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v17, -1, -1);
    MEMORY[0x245D17E30](v16, -1, -1);
    v3 = v35;
  }

  if (a2)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation, v6);
    v36 = a2;
    v22 = a2;
    sub_2427326C4();
LABEL_12:
    (*(v7 + 8))(v10, v6);
    return;
  }

  v23 = [v12 response];
  if (v23)
  {
    v24 = v23;
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation, v6);
    v36 = v24;
    sub_2427326D4();
    goto LABEL_12;
  }

  v25 = v12;
  v26 = sub_242732224();
  v27 = sub_2427327D4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_2426EB000, v26, v27, "No response set for task [%@]", v28, 0xCu);
    sub_2427053AC(v29);
    MEMORY[0x245D17E30](v29, -1, -1);
    MEMORY[0x245D17E30](v28, -1, -1);
  }

  sub_242718A7C();
  v31 = swift_allocError();
  *v32 = 0;
  v32[1] = 0;
  swift_willThrow();
  (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation, v6);
  v36 = v31;
  v33 = v31;
  sub_2427326C4();
  (*(v7 + 8))(v10, v6);
}