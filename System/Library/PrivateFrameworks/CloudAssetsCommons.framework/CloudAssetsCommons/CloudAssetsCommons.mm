uint64_t static DownloadResponseMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  type metadata accessor for DownloadResponseMessage(0);
  OUTLINED_FUNCTION_1_0();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D8, &qword_2437EC008);
  OUTLINED_FUNCTION_3();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = (&v31 + *(v14 + 56) - v15);
  sub_2437B4704(a1, &v31 - v15);
  sub_2437B4704(a2, v17);
  OUTLINED_FUNCTION_7();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2437B4704(v16, v12);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864E0, &qword_2437EC010) + 48);
    v22 = *&v12[v20];
    v21 = *&v12[v20 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_2437B47C4(v12, &qword_27ED864D0, &qword_2437EC000);
LABEL_7:
      sub_2437B47C4(v16, &qword_27ED864D8, &qword_2437EC008);
LABEL_17:
      v19 = 0;
      return v19 & 1;
    }

    v23 = *(v17 + v20 + 8);
    v32 = *(v17 + v20);
    sub_2437B481C(v17, v6);
    v24 = type metadata accessor for AssetDownloadResponse(0);
    v25 = sub_2437B6150(&qword_27ED864E8, type metadata accessor for AssetDownloadResponse, &protocol conformance descriptor for AssetDownloadResponse);
    v26 = sub_2437B6150(&qword_27ED864F0, type metadata accessor for AssetDownloadResponse, &protocol conformance descriptor for AssetDownloadResponse);
    v27 = sub_2437B6150(&qword_27ED864F8, type metadata accessor for AssetDownloadResponse, &protocol conformance descriptor for AssetDownloadResponse);
    LOBYTE(v26) = static XPCResult<>.== infix(_:_:)(v12, v6, v24, v25, v26, v27);
    sub_2437B47C4(v12, &qword_27ED864D0, &qword_2437EC000);
    if (v26)
    {
      if (v22 == v32 && v21 == v23)
      {

        sub_2437B47C4(v6, &qword_27ED864D0, &qword_2437EC000);
LABEL_20:
        sub_2437B4768(v16);
        v19 = 1;
        return v19 & 1;
      }

      v29 = sub_2437EBA14();

      sub_2437B47C4(v6, &qword_27ED864D0, &qword_2437EC000);
      if (v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_2437B47C4(v6, &qword_27ED864D0, &qword_2437EC000);
    }

    sub_2437B4768(v16);
    goto LABEL_17;
  }

  sub_2437B4704(v16, v10);
  v18 = *v10;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_7;
  }

  v33 = *v17;
  v34 = v18;
  v19 = static SimultaneousTransferError.== infix(_:_:)(&v34, &v33);

  sub_2437B4768(v16);
  return v19 & 1;
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

uint64_t type metadata accessor for DownloadResponseMessage(uint64_t a1)
{
  result = qword_27ED87020;
  if (!qword_27ED87020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437B4704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadResponseMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437B4768(uint64_t a1)
{
  v2 = type metadata accessor for DownloadResponseMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437B47C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2437B481C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437B488C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_5(0x65736E6F70736572, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002437F2F20 == a2)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5(0xD000000000000019, 0x80000002437F2F20);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437B4944(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_2437B4988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B488C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437B49B4()
{
  sub_2437B5330();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437B49EC()
{
  sub_2437B5330();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437B4A24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_5(0x746C75736572, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002437F2F40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5(0xD000000000000015, 0x80000002437F2F40);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437B4B10(char a1)
{
  sub_2437EBA94();
  MEMORY[0x245D40160](a1 & 1);
  return sub_2437EBAD4();
}

uint64_t sub_2437B4B58(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_2437B4B90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437B4C2C()
{
  sub_2437EBA94();
  MEMORY[0x245D40160](0);
  return sub_2437EBAD4();
}

uint64_t sub_2437B4CA4(uint64_t a1)
{
  v2 = *v1;
  sub_2437EBA94();
  MEMORY[0x245D40160](v2);
  return sub_2437EBAD4();
}

uint64_t sub_2437B4CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B4A24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437B4D24()
{
  sub_2437B542C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437B4D5C()
{
  sub_2437B542C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437B4DA4(uint64_t a1)
{
  sub_2437EBA94();
  MEMORY[0x245D40160](0);
  return sub_2437EBAD4();
}

uint64_t sub_2437B4DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B4B90(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437B4E30()
{
  sub_2437B5384();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437B4E68()
{
  sub_2437B5384();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t DownloadResponseMessage.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86500, &qword_2437EC018);
  OUTLINED_FUNCTION_0();
  v31 = v3;
  v32 = v2;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86508, &qword_2437EC020);
  OUTLINED_FUNCTION_0();
  v34 = v8;
  v35 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_0(v13, v30);
  type metadata accessor for DownloadResponseMessage(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v14);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86510, &qword_2437EC028);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437B5330();
  sub_2437EBB04();
  sub_2437B4704(v36, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v16;
    v43 = 1;
    sub_2437B5384();
    v23 = v37;
    OUTLINED_FUNCTION_8();
    sub_2437EB994();
    v39 = v22;
    sub_2437B53D8();
    v24 = v32;
    sub_2437EB9D4();
    (*(v31 + 8))(v6, v24);
    (*(v18 + 8))(v21, v23);
  }

  else
  {
    v36 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864E0, &qword_2437EC010);
    v26 = v33;
    sub_2437B481C(v16, v33);
    v42 = 0;
    sub_2437B542C();
    v27 = v37;
    OUTLINED_FUNCTION_8();
    sub_2437EB994();
    v41 = 0;
    sub_2437B60B8(&qword_27ED86520, &protocol conformance descriptor for XPCResult<A>);
    v28 = v35;
    v29 = v38;
    sub_2437EB9D4();
    if (!v29)
    {
      v40 = 1;
      sub_2437EB9C4();
    }

    (*(v34 + 8))(v11, v28);
    sub_2437B47C4(v26, &qword_27ED864D0, &qword_2437EC000);
    return (*(v36 + 8))(v21, v27);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2437B5330()
{
  result = qword_27ED86E00;
  if (!qword_27ED86E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86E00);
  }

  return result;
}

unint64_t sub_2437B5384()
{
  result = qword_27ED86E08;
  if (!qword_27ED86E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86E08);
  }

  return result;
}

unint64_t sub_2437B53D8()
{
  result = qword_27ED86518;
  if (!qword_27ED86518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86518);
  }

  return result;
}

unint64_t sub_2437B542C()
{
  result = qword_27ED86E10[0];
  if (!qword_27ED86E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED86E10);
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

uint64_t DownloadResponseMessage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  type metadata accessor for DownloadResponseMessage(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v6);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2437B4704(v2, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x245D40160](1);
    v11[1] = v9;
    sub_2437B5668();
    sub_2437EB6D4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864E0, &qword_2437EC010);
    sub_2437B481C(v8, v5);
    MEMORY[0x245D40160](0);
    sub_2437B56BC();
    sub_2437EB6D4();
    OUTLINED_FUNCTION_7();
    sub_2437EB724();

    return sub_2437B47C4(v5, &qword_27ED864D0, &qword_2437EC000);
  }
}

unint64_t sub_2437B5668()
{
  result = qword_27ED86528;
  if (!qword_27ED86528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86528);
  }

  return result;
}

unint64_t sub_2437B56BC()
{
  result = qword_27ED86530;
  if (!qword_27ED86530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED864D0, &qword_2437EC000);
    sub_2437B6150(&qword_27ED864F8, type metadata accessor for AssetDownloadResponse, &protocol conformance descriptor for AssetDownloadResponse);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86530);
  }

  return result;
}

uint64_t DownloadResponseMessage.hashValue.getter()
{
  sub_2437EBA94();
  DownloadResponseMessage.hash(into:)(v1);
  return sub_2437EBAD4();
}

uint64_t DownloadResponseMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86538, &qword_2437EC030);
  OUTLINED_FUNCTION_0();
  v59 = v4;
  v60 = v3;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v62 = &v56 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86540, &qword_2437EC038);
  OUTLINED_FUNCTION_0();
  v61 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_0(v9, v56);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86548, &unk_2437EC040);
  OUTLINED_FUNCTION_0();
  v63 = v11;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  v15 = type metadata accessor for DownloadResponseMessage(0);
  OUTLINED_FUNCTION_1_0();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v56 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  v25 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_2437B5330();
  v26 = v67;
  sub_2437EBAF4();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v56 = v19;
  v57 = v24;
  v58 = v22;
  v67 = v15;
  v27 = v65;
  v28 = sub_2437EB974();
  result = sub_2437B5F3C(v28, 0);
  if (v31 == v32 >> 1)
  {
LABEL_7:
    v38 = v67;
    v39 = sub_2437EB8C4();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
    *v41 = v38;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v63 + 8))(v14, v10);
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  if (v31 < (v32 >> 1))
  {
    v69 = *(v30 + v31);
    sub_2437B5F84(v31 + 1, v32 >> 1, result, v30, v31, v32);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v69)
      {
        v73 = 1;
        sub_2437B5384();
        OUTLINED_FUNCTION_8();
        sub_2437EB904();
        sub_2437B6000();
        sub_2437EB954();
        v37 = v63;
        swift_unknownObjectRelease();
        v42 = OUTLINED_FUNCTION_10();
        v43(v42);
        (*(v37 + 8))(0, v10);
        v44 = v56;
        *v56 = v68;
        swift_storeEnumTagMultiPayload();
        v45 = v44;
      }

      else
      {
        v72 = 0;
        sub_2437B542C();
        OUTLINED_FUNCTION_8();
        sub_2437EB904();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864D0, &qword_2437EC000);
        v71 = 0;
        sub_2437B60B8(&qword_27ED86560, &protocol conformance descriptor for XPCResult<A>);
        sub_2437EB954();
        v70 = 1;
        v60 = sub_2437EB944();
        v62 = v46;
        swift_unknownObjectRelease();
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED864E0, &qword_2437EC010);
        v48 = v58;
        v49 = &v58[*(v47 + 48)];
        v50 = OUTLINED_FUNCTION_7();
        v51(v50);
        v52 = OUTLINED_FUNCTION_2();
        v53(v52);
        v54 = v62;
        *v49 = v60;
        v49[1] = v54;
        swift_storeEnumTagMultiPayload();
        v45 = v48;
      }

      v55 = v57;
      sub_2437B6054(v45, v57);
      sub_2437B6054(v55, v27);
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2437B5E80(uint64_t a1)
{
  sub_2437EBA94();
  DownloadResponseMessage.hash(into:)(v2);
  return sub_2437EBAD4();
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

uint64_t sub_2437B5F3C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2437B5F84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2437B6000()
{
  result = qword_27ED86558;
  if (!qword_27ED86558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86558);
  }

  return result;
}

uint64_t sub_2437B6054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadResponseMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437B60B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED864D0, &qword_2437EC000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437B6150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2437B61F4(uint64_t a1)
{
  sub_2437B6268(319);
  if (v1 <= 0x3F)
  {
    sub_2437B62E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2437B6268(uint64_t a1)
{
  if (!qword_27ED86570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED864D0, &qword_2437EC000);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27ED86570);
    }
  }
}

ValueMetadata *sub_2437B62E0()
{
  result = qword_27ED86578;
  if (!qword_27ED86578)
  {
    result = &type metadata for SimultaneousTransferError;
    atomic_store(&type metadata for SimultaneousTransferError, &qword_27ED86578);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCAsyncSequenceRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2437B63B8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2437B6484);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadResponseMessage.SimultaneousTransferErrorCodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for DownloadResponseMessage.SimultaneousTransferErrorCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437B65C0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437B6604()
{
  result = qword_27ED87130[0];
  if (!qword_27ED87130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87130);
  }

  return result;
}

unint64_t sub_2437B665C()
{
  result = qword_27ED87340[0];
  if (!qword_27ED87340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87340);
  }

  return result;
}

unint64_t sub_2437B66B4()
{
  result = qword_27ED87550[0];
  if (!qword_27ED87550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87550);
  }

  return result;
}

unint64_t sub_2437B670C()
{
  result = qword_27ED87660;
  if (!qword_27ED87660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED87660);
  }

  return result;
}

unint64_t sub_2437B6764()
{
  result = qword_27ED87668[0];
  if (!qword_27ED87668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87668);
  }

  return result;
}

unint64_t sub_2437B67BC()
{
  result = qword_27ED876F0;
  if (!qword_27ED876F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED876F0);
  }

  return result;
}

unint64_t sub_2437B6814()
{
  result = qword_27ED876F8[0];
  if (!qword_27ED876F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED876F8);
  }

  return result;
}

unint64_t sub_2437B686C()
{
  result = qword_27ED87780;
  if (!qword_27ED87780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED87780);
  }

  return result;
}

unint64_t sub_2437B68C4()
{
  result = qword_27ED87788[0];
  if (!qword_27ED87788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87788);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2)
{

  return sub_2437EBA14();
}

uint64_t AssetUploadRequest.id.getter()
{
  OUTLINED_FUNCTION_13();
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0();
  v0 = OUTLINED_FUNCTION_22();

  return v1(v0);
}

uint64_t AssetUploadRequest.tenantName.getter()
{
  type metadata accessor for AssetUploadRequest(0);

  return OUTLINED_FUNCTION_22();
}

uint64_t type metadata accessor for AssetUploadRequest(uint64_t a1)
{
  result = qword_27ED87AA0;
  if (!qword_27ED87AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetUploadRequest.workingDirectory.getter()
{
  v0 = OUTLINED_FUNCTION_13();
  type metadata accessor for AssetUploadRequest(v0);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t AssetUploadRequest.fileURL.getter()
{
  v0 = OUTLINED_FUNCTION_13();
  type metadata accessor for AssetUploadRequest(v0);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t AssetUploadRequest.storageLocation.getter()
{
  v0 = OUTLINED_FUNCTION_13();
  type metadata accessor for AssetUploadRequest(v0);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

void AssetUploadRequest.protector.getter()
{
  v2 = OUTLINED_FUNCTION_13();
  v3 = (v1 + *(type metadata accessor for AssetUploadRequest(v2) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  sub_2437B6C6C(v4, v5);

  sub_2437B6C6C(v6, v7);
}

void sub_2437B6C6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t AssetUploadRequest.credential.getter()
{
  v2 = OUTLINED_FUNCTION_13();
  v3 = type metadata accessor for AssetUploadRequest(v2);
  return sub_2437B8384(v1 + *(v3 + 40), v0, type metadata accessor for Credential);
}

uint64_t AssetUploadRequest.init(fileURL:storageLocation:protector:credential:)@<X0>(uint64_t a1@<X8>, __int128 *a2@<X2>)
{
  sub_2437EB3A4();
  v4 = type metadata accessor for AssetUploadRequest(0);
  v5 = (a1 + *(v4 + 20));
  *v5 = 0x616C506572616853;
  v5[1] = 0xE900000000000079;
  v6 = *(v4 + 24);
  OUTLINED_FUNCTION_2_0();
  sub_2437B8520(v7, v8, &protocol conformance descriptor for AssetUploadRequest);
  v23 = a2[1];
  v24 = *a2;
  sub_2437BB8E0(0x616C506572616853, 0xE900000000000079, a1 + v6);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  v10 = *(v9 + 32);
  OUTLINED_FUNCTION_16();
  v10();
  v11 = OUTLINED_FUNCTION_20();
  v12 = (v10)(v11);
  v20 = OUTLINED_FUNCTION_10_0(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24);

  return sub_2437B6E40(v20, v21);
}

uint64_t sub_2437B6E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Credential(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AssetUploadRequest.init(tenantName:fileURL:storageLocation:protector:credential:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __int128 *a4@<X4>)
{
  sub_2437EB3A4();
  v8 = type metadata accessor for AssetUploadRequest(0);
  v9 = (a3 + *(v8 + 20));
  *v9 = a1;
  v9[1] = a2;
  v10 = *(v8 + 24);
  OUTLINED_FUNCTION_2_0();
  sub_2437B8520(v11, v12, &protocol conformance descriptor for AssetUploadRequest);

  v27 = a4[1];
  v28 = *a4;
  sub_2437BB8E0(a1, a2, a3 + v10);

  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  v14 = *(v13 + 32);
  OUTLINED_FUNCTION_16();
  v14();
  v15 = OUTLINED_FUNCTION_20();
  v16 = (v14)(v15);
  v24 = OUTLINED_FUNCTION_10_0(v16, v17, v18, v19, v20, v21, v22, v23, v27, v28);

  return sub_2437B6E40(v24, v25);
}

uint64_t static AssetUploadRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2437EB394() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetUploadRequest(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19(v4[6]);
  if ((sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19(v4[7]);
  if ((sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19(v4[8]);
  if ((sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = *(a1 + v10 + 8);
  v12 = *(a1 + v10 + 16);
  v13 = *(a1 + v10 + 24);
  v29 = *(a1 + v10);
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v14 = (a2 + v10);
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v25 = *v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  sub_2437B6C6C(v29, v11);
  sub_2437B6C6C(v12, v13);
  sub_2437B6C6C(v25, v15);
  sub_2437B6C6C(v16, v17);
  LOBYTE(v12) = static Asset.Protector.== infix(_:_:)(&v29, &v25);
  v18 = v27;
  v19 = v28;
  sub_2437B7168(v25, v26);
  sub_2437B7168(v18, v19);
  v20 = v31;
  v21 = v32;
  sub_2437B7168(v29, v30);
  sub_2437B7168(v20, v21);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v22 = OUTLINED_FUNCTION_19(v4[10]);

  return static Credential.== infix(_:_:)(v22, v23);
}

uint64_t sub_2437B7168(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2437B71C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E746E616E6574 && a2 == 0xEA0000000000656DLL;
    if (v6 || (OUTLINED_FUNCTION_5(0x614E746E616E6574, 0xEA0000000000656DLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002437F2F60 == a2;
      if (v7 || (OUTLINED_FUNCTION_5(0xD000000000000010, 0x80000002437F2F60) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_5(0x4C5255656C6966, 0xE700000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_17();
          v11 = a1 == v9 && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_5(v9, v10) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0x6F746365746F7270 && a2 == 0xE900000000000072;
            if (v12 || (OUTLINED_FUNCTION_5(0x6F746365746F7270, 0xE900000000000072) & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
            {

              return 6;
            }

            else
            {
              v14 = OUTLINED_FUNCTION_5(0x69746E6564657263, 0xEA00000000006C61);

              if (v14)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2437B73D4(unsigned __int8 a1)
{
  sub_2437EBA94();
  MEMORY[0x245D40160](a1);
  return sub_2437EBAD4();
}

uint64_t sub_2437B741C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E746E616E6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x4C5255656C6966;
      break;
    case 4:
      result = OUTLINED_FUNCTION_17();
      break;
    case 5:
      result = 0x6F746365746F7270;
      break;
    case 6:
      result = 0x69746E6564657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437B7530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B71C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437B7564(uint64_t a1)
{
  sub_2437B78DC();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437B75A0(uint64_t a1)
{
  sub_2437B78DC();

  return MEMORY[0x2821FE720](a1);
}

uint64_t AssetUploadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86588, &qword_2437EC4C0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437B78DC();
  sub_2437EBB04();
  LOBYTE(v28) = 0;
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_1();
  sub_2437B8520(v11, v12, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_11();
  sub_2437EB9D4();
  if (!v2)
  {
    v13 = type metadata accessor for AssetUploadRequest(0);
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_11();
    sub_2437EB9C4();
    v14 = v13[6];
    LOBYTE(v28) = 2;
    sub_2437EB334();
    OUTLINED_FUNCTION_0_0();
    sub_2437B8520(v15, v16, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_7_0(v3 + v14);
    v17 = v13[7];
    LOBYTE(v28) = 3;
    OUTLINED_FUNCTION_7_0(v3 + v17);
    v18 = v13[8];
    LOBYTE(v28) = 4;
    OUTLINED_FUNCTION_7_0(v3 + v18);
    v19 = (v3 + v13[9]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v28 = *v19;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v32 = 5;
    sub_2437B6C6C(v28, v20);
    sub_2437B6C6C(v21, v22);
    sub_2437B7930();
    OUTLINED_FUNCTION_11();
    sub_2437EB9D4();
    v23 = v30;
    v24 = v31;
    sub_2437B7168(v28, v29);
    sub_2437B7168(v23, v24);
    LOBYTE(v28) = 6;
    type metadata accessor for Credential(0);
    OUTLINED_FUNCTION_3_0();
    sub_2437B8520(v25, v26, &protocol conformance descriptor for Credential);
    OUTLINED_FUNCTION_11();
    sub_2437EB9D4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2437B78DC()
{
  result = qword_27ED87810[0];
  if (!qword_27ED87810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87810);
  }

  return result;
}

unint64_t sub_2437B7930()
{
  result = qword_27ED865A0;
  if (!qword_27ED865A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED865A0);
  }

  return result;
}

uint64_t AssetUploadRequest.hash(into:)(uint64_t a1)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_1();
  sub_2437B8520(v1, v2, MEMORY[0x277CC9600]);
  sub_2437EB6D4();
  type metadata accessor for AssetUploadRequest(0);
  sub_2437EB724();
  sub_2437EB334();
  OUTLINED_FUNCTION_0_0();
  sub_2437B8520(v3, v4, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_16();
  sub_2437EB6D4();
  OUTLINED_FUNCTION_16();
  sub_2437EB6D4();
  OUTLINED_FUNCTION_16();
  sub_2437EB6D4();
  sub_2437B7B04();
  sub_2437EB6D4();
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_3_0();
  sub_2437B8520(v5, v6, &protocol conformance descriptor for Credential);
  return sub_2437EB6D4();
}

unint64_t sub_2437B7B04()
{
  result = qword_27ED865C0;
  if (!qword_27ED865C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED865C0);
  }

  return result;
}

uint64_t AssetUploadRequest.hashValue.getter()
{
  sub_2437EBA94();
  AssetUploadRequest.hash(into:)(v1);
  return sub_2437EBAD4();
}

uint64_t AssetUploadRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v80 = v5 - v4;
  v87 = sub_2437EB334();
  OUTLINED_FUNCTION_0();
  v84 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v75 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v75 - v14;
  v16 = sub_2437EB3B4();
  OUTLINED_FUNCTION_0();
  v83 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED865D0, &qword_2437EC4C8);
  OUTLINED_FUNCTION_0();
  v79 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = v75 - v24;
  v88 = type metadata accessor for AssetUploadRequest(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  v89 = v28 - v27;
  v29 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2437B78DC();
  v82 = v25;
  v30 = v85;
  sub_2437EBAF4();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v75[3] = v13;
  v76 = v15;
  v75[2] = v10;
  v31 = v80;
  LOBYTE(v90[0]) = 0;
  OUTLINED_FUNCTION_1_1();
  sub_2437B8520(v32, v33, MEMORY[0x277CC9618]);
  v34 = v81;
  sub_2437EB954();
  v35 = v16;
  v36 = v89;
  (*(v83 + 32))(v89, v21, v35);
  LOBYTE(v90[0]) = 1;
  v37 = sub_2437EB944();
  v38 = (v36 + v88[5]);
  *v38 = v37;
  v38[1] = v39;
  LOBYTE(v90[0]) = 2;
  OUTLINED_FUNCTION_0_0();
  sub_2437B8520(v40, v41, MEMORY[0x277CC9280]);
  v42 = v76;
  v43 = v87;
  v44 = OUTLINED_FUNCTION_9_1();
  *(v46 - 256) = v45;
  OUTLINED_FUNCTION_18(v44, v47, v48, v49, v45);
  v85 = v35;
  v50 = *(v84 + 32);
  v51 = v36 + v88[6];
  v76 = (v84 + 32);
  v75[0] = v50;
  v50(v51, v42, v43);
  LOBYTE(v90[0]) = 3;
  v52 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_18(v52, v54, v55, v56, *(v53 - 256));
  v57 = OUTLINED_FUNCTION_12(v88[7]);
  v58(v57);
  LOBYTE(v90[0]) = 4;
  v59 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_18(v59, v61, v62, v63, *(v60 - 256));
  v64 = OUTLINED_FUNCTION_12(v88[8]);
  v65(v64);
  v91 = 5;
  v66 = sub_2437B8330();
  OUTLINED_FUNCTION_18(&type metadata for Asset.Protector, &v91, v34, &type metadata for Asset.Protector, v66);
  v67 = (v36 + v88[9]);
  v68 = v90[1];
  *v67 = v90[0];
  v67[1] = v68;
  LOBYTE(v90[0]) = 6;
  OUTLINED_FUNCTION_3_0();
  v71 = sub_2437B8520(v69, v70, &protocol conformance descriptor for Credential);
  OUTLINED_FUNCTION_18(v78, v90, v34, v78, v71);
  v72 = OUTLINED_FUNCTION_5_0();
  v73(v72);
  sub_2437B6E40(v31, v36 + v88[10]);
  sub_2437B8384(v36, v77, type metadata accessor for AssetUploadRequest);
  __swift_destroy_boxed_opaque_existential_1(v86);
  return sub_2437B83E0(v36);
}

uint64_t sub_2437B82F4(uint64_t a1)
{
  sub_2437EBA94();
  AssetUploadRequest.hash(into:)(v2);
  return sub_2437EBAD4();
}

unint64_t sub_2437B8330()
{
  result = qword_27ED865E8;
  if (!qword_27ED865E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED865E8);
  }

  return result;
}

uint64_t sub_2437B8384(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1_0();
  v4 = OUTLINED_FUNCTION_22();
  v5(v4);
  return a2;
}

uint64_t sub_2437B83E0(uint64_t a1)
{
  v2 = type metadata accessor for AssetUploadRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2437B843C(void *a1)
{
  a1[1] = sub_2437B8520(&qword_27ED865F8, type metadata accessor for AssetUploadRequest, &protocol conformance descriptor for AssetUploadRequest);
  a1[2] = sub_2437B8520(&qword_27ED86600, type metadata accessor for AssetUploadRequest, &protocol conformance descriptor for AssetUploadRequest);
  result = sub_2437B8520(&qword_27ED86608, type metadata accessor for AssetUploadRequest, &protocol conformance descriptor for AssetUploadRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_2437B8520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2437B85B0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_21();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_2437EB334();
    OUTLINED_FUNCTION_21();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = type metadata accessor for Credential(0);
      v14 = a3[10];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_2437B86D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_21();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return;
    }

    sub_2437EB334();
    OUTLINED_FUNCTION_21();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = type metadata accessor for Credential(0);
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2437B87E0(uint64_t a1)
{
  result = sub_2437EB3B4();
  if (v2 <= 0x3F)
  {
    result = sub_2437EB334();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Credential(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetUploadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetUploadRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2437B89E4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2437B8A28()
{
  result = qword_27ED87BB0[0];
  if (!qword_27ED87BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87BB0);
  }

  return result;
}

unint64_t sub_2437B8A80()
{
  result = qword_27ED87CC0;
  if (!qword_27ED87CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED87CC0);
  }

  return result;
}

unint64_t sub_2437B8AD8()
{
  result = qword_27ED87CC8[0];
  if (!qword_27ED87CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87CC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return sub_2437EB9D4();
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  v13 = (v12 + *(v11 + 36));
  *v13 = a10;
  v13[1] = a9;
  return v10;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2437EB954();
}

uint64_t AssetDownloadRequest.id.getter()
{
  OUTLINED_FUNCTION_13();
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0();
  v0 = OUTLINED_FUNCTION_22();

  return v1(v0);
}

uint64_t AssetDownloadRequest.tenantName.getter()
{
  type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_31();

  return OUTLINED_FUNCTION_22();
}

uint64_t type metadata accessor for AssetDownloadRequest(uint64_t a1)
{
  result = qword_27ED87FE0;
  if (!qword_27ED87FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetDownloadRequest.workingDirectory.getter()
{
  v2 = OUTLINED_FUNCTION_13();
  v3 = *(type metadata accessor for AssetDownloadRequest(v2) + 24);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AssetDownloadRequest.asset.getter()
{
  v2 = OUTLINED_FUNCTION_13();
  v3 = type metadata accessor for AssetDownloadRequest(v2);
  return sub_2437BAD90(v1 + *(v3 + 28), v0);
}

uint64_t AssetDownloadRequest.fileURL.getter()
{
  v2 = OUTLINED_FUNCTION_13();
  v3 = *(type metadata accessor for AssetDownloadRequest(v2) + 36);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AssetDownloadRequest.credential.getter()
{
  v2 = OUTLINED_FUNCTION_13();
  type metadata accessor for AssetDownloadRequest(v2);
  OUTLINED_FUNCTION_14_1();
  return sub_2437BAD90(v1 + v3, v0);
}

uint64_t AssetDownloadRequest.storageReference.getter()
{
  type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t AssetDownloadRequest.storageReferenceSignature.getter()
{
  type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t AssetDownloadRequest.applicationID.getter()
{
  type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_31();

  return OUTLINED_FUNCTION_22();
}

void AssetDownloadRequest.init(asset:fileURL:credential:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_2437EB3A4();
  type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_13_0();
  *v7 = 0x616C506572616853;
  v7[1] = 0xE900000000000079;
  v9 = *(v8 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v10, v11, &protocol conformance descriptor for AssetDownloadRequest);
  sub_2437BB8E0(0x616C506572616853, 0xE900000000000079, a3 + v9);
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a1, v12);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_0();
  v13 = OUTLINED_FUNCTION_30();
  v14(v13);
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(a2, a3 + v15);
  *(a3 + *(v3 + 44)) = xmmword_2437EC710;
  *(a3 + *(v3 + 48)) = xmmword_2437EC710;
  OUTLINED_FUNCTION_3_1();
}

uint64_t sub_2437B90F8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v4(v3);
  OUTLINED_FUNCTION_4_0();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

void AssetDownloadRequest.init(tenantName:asset:fileURL:credential:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_2437EB3A4();
  type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_13_0();
  *v11 = a1;
  v11[1] = a2;
  v13 = *(v12 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v14, v15, &protocol conformance descriptor for AssetDownloadRequest);

  sub_2437BB8E0(a1, a2, a5 + v13);

  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a3, v16);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_0();
  v17 = OUTLINED_FUNCTION_30();
  v18(v17);
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(a4, a5 + v19);
  *(a5 + *(v5 + 44)) = xmmword_2437EC710;
  *(a5 + *(v5 + 48)) = xmmword_2437EC710;
  OUTLINED_FUNCTION_3_1();
}

void AssetDownloadRequest.init(skeleton:fileURL:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2437EB3A4();
  type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_13_0();
  *v4 = 0x616C506572616853;
  v4[1] = 0xE900000000000079;
  v6 = *(v5 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v7, v8, &protocol conformance descriptor for AssetDownloadRequest);
  sub_2437BB8E0(0x616C506572616853, 0xE900000000000079, a2 + v6);
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a1, v9);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_0();
  v10 = OUTLINED_FUNCTION_30();
  v11(v10);
  v12 = type metadata accessor for AssetSkeleton(0);
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(a1 + v13, a2 + v14);
  OUTLINED_FUNCTION_27(*(v12 + 20));
  OUTLINED_FUNCTION_27(*(v12 + 24));
  OUTLINED_FUNCTION_3_1();
}

void AssetDownloadRequest.init(tenantName:skeleton:fileURL:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2437EB3A4();
  type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_13_0();
  *v8 = a1;
  v8[1] = a2;
  v10 = *(v9 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v11, v12, &protocol conformance descriptor for AssetDownloadRequest);

  sub_2437BB8E0(a1, a2, a4 + v10);

  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a3, v13);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_0();
  v14 = OUTLINED_FUNCTION_30();
  v15(v14);
  v16 = type metadata accessor for AssetSkeleton(0);
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(a3 + v17, a4 + v18);
  OUTLINED_FUNCTION_27(*(v16 + 20));
  OUTLINED_FUNCTION_27(*(v16 + 24));
  OUTLINED_FUNCTION_3_1();
}

__n128 AssetDownloadRequest.init(asset:destination:credential:range:applicationID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2437EB3A4();
  v15 = *a3;
  v16 = a3[1];
  type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_13_0();
  *v17 = v15;
  v17[1] = v16;
  v19 = *(v18 + 24);
  OUTLINED_FUNCTION_1_2();
  sub_2437BAF20(v20, v21, &protocol conformance descriptor for AssetDownloadRequest);

  sub_2437BB8E0(v15, v16, a9 + v19);
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(a1, v22);
  v23 = a9 + v9[8];
  *v23 = a4;
  *(v23 + 8) = a5;
  *(v23 + 16) = a6 & 1;
  v24 = v9[9];
  sub_2437EB334();
  OUTLINED_FUNCTION_4_0();
  (*(v25 + 32))(a9 + v24, a2);
  OUTLINED_FUNCTION_14_1();
  sub_2437BAD90(a3, a9 + v26);
  v27 = (a9 + v9[13]);
  *v27 = a7;
  v27[1] = a8;
  *(a9 + v9[11]) = xmmword_2437EC710;
  OUTLINED_FUNCTION_15_0();
  sub_2437BADE4(a3, v28);
  result = xmmword_2437EC710;
  *(a9 + v9[12]) = xmmword_2437EC710;
  return result;
}

uint64_t static AssetDownloadRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2437EB394() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetDownloadRequest(0);
  v5 = OUTLINED_FUNCTION_17_0(v4[5]);
  v9 = v5 == v8 && v6 == v7;
  if (!v9 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19(v4[6]);
  if ((sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_19(v4[7]);
  if (!static Asset.== infix(_:_:)(v10, v11))
  {
    return 0;
  }

  v12 = v4[8];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 16);
  v15 = a2 + v12;
  if (v14)
  {
    if (!*(v15 + 16))
    {
      return 0;
    }

LABEL_18:
    OUTLINED_FUNCTION_19(v4[9]);
    if ((sub_2437EB2F4() & 1) == 0)
    {
      return 0;
    }

    v18 = OUTLINED_FUNCTION_19(v4[10]);
    if ((static Credential.== infix(_:_:)(v18, v19) & 1) == 0)
    {
      return 0;
    }

    v20 = OUTLINED_FUNCTION_17_0(v4[11]);
    if ((MEMORY[0x245D3FA00](v20) & 1) == 0)
    {
      return 0;
    }

    v21 = OUTLINED_FUNCTION_17_0(v4[12]);
    if ((MEMORY[0x245D3FA00](v21) & 1) == 0)
    {
      return 0;
    }

    v22 = v4[13];
    v23 = (a1 + v22);
    v24 = *(a1 + v22 + 8);
    v25 = (a2 + v22);
    v26 = v25[1];
    if (v24)
    {
      if (!v26)
      {
        return 0;
      }

      v27 = *v23 == *v25 && v24 == v26;
      if (!v27 && (sub_2437EBA14() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((*(v15 + 16) & 1) == 0 && *v13 == *v15 && v13[1] == *(v15 + 8))
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_2437B9774(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E746E616E6574 && a2 == 0xEA0000000000656DLL;
    if (v6 || (OUTLINED_FUNCTION_5(0x614E746E616E6574, 0xEA0000000000656DLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002437F2F60 == a2;
      if (v7 || (OUTLINED_FUNCTION_5(0xD000000000000010, 0x80000002437F2F60) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_5(0x7465737361, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
          if (v9 || (OUTLINED_FUNCTION_5(0x65676E6172, 0xE500000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
            if (v10 || (OUTLINED_FUNCTION_5(0x4C5255656C6966, 0xE700000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
              if (v11 || (OUTLINED_FUNCTION_5(0x69746E6564657263, 0xEA00000000006C61) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000002437F2F80 == a2;
                if (v12 || (OUTLINED_FUNCTION_5(0xD000000000000010, 0x80000002437F2F80) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x80000002437F2FA0 == a2;
                  if (v13 || (OUTLINED_FUNCTION_5(0xD000000000000019, 0x80000002437F2FA0) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = OUTLINED_FUNCTION_25();
                    if (a1 == v14 && a2 == v15)
                    {

                      return 9;
                    }

                    else
                    {
                      v17 = OUTLINED_FUNCTION_5(v14, v15);

                      if (v17)
                      {
                        return 9;
                      }

                      else
                      {
                        return 10;
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
  }
}

uint64_t sub_2437B99F8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E746E616E6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7465737361;
      break;
    case 4:
      result = 0x65676E6172;
      break;
    case 5:
      result = 0x4C5255656C6966;
      break;
    case 6:
      result = 0x69746E6564657263;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = OUTLINED_FUNCTION_25();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437B9B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437B9774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437B9B74(uint64_t a1)
{
  sub_2437BA004();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437B9BB0(uint64_t a1)
{
  sub_2437BA004();

  return MEMORY[0x2821FE720](a1);
}

uint64_t AssetDownloadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86620, &qword_2437EC720);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BA004();
  sub_2437EBB04();
  LOBYTE(v27) = 0;
  sub_2437EB3B4();
  OUTLINED_FUNCTION_6_0();
  sub_2437BAF20(v11, v12, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_10_1();
  sub_2437EB9D4();
  if (!v2)
  {
    v13 = type metadata accessor for AssetDownloadRequest(0);
    OUTLINED_FUNCTION_26(v13[5]);
    LOBYTE(v27) = 1;
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9C4();
    LOBYTE(v27) = 2;
    v14 = sub_2437EB334();
    OUTLINED_FUNCTION_9_2();
    sub_2437BAF20(v15, v16, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9D4();
    v26[1] = v14;
    LOBYTE(v27) = 3;
    type metadata accessor for Asset(0);
    OUTLINED_FUNCTION_8_0();
    sub_2437BAF20(v17, v18, &protocol conformance descriptor for Asset);
    OUTLINED_FUNCTION_10_1();
    sub_2437EB9D4();
    v19 = (v3 + v13[8]);
    v20 = *(v19 + 16);
    v27 = *v19;
    v28 = v20;
    v29 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86630, &qword_2437EC728);
    sub_2437BACD0(&qword_27ED86638, MEMORY[0x277D83B90], MEMORY[0x277D83D08]);
    OUTLINED_FUNCTION_10_1();
    sub_2437EB9B4();
    LOBYTE(v27) = 5;
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9D4();
    LOBYTE(v27) = 6;
    type metadata accessor for Credential(0);
    OUTLINED_FUNCTION_7_1();
    sub_2437BAF20(v21, v22, &protocol conformance descriptor for Credential);
    OUTLINED_FUNCTION_10_1();
    sub_2437EB9D4();
    *&v27 = OUTLINED_FUNCTION_26(v13[11]);
    *(&v27 + 1) = v23;
    v29 = 7;
    sub_2437B6C6C(v27, v23);
    sub_2437BA058();
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9D4();
    sub_2437B7168(v27, *(&v27 + 1));
    *&v27 = OUTLINED_FUNCTION_26(v13[12]);
    *(&v27 + 1) = v24;
    v29 = 8;
    sub_2437B6C6C(v27, v24);
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9D4();
    sub_2437B7168(v27, *(&v27 + 1));
    OUTLINED_FUNCTION_26(v13[13]);
    LOBYTE(v27) = 9;
    OUTLINED_FUNCTION_16_0();
    sub_2437EB9A4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2437BA004()
{
  result = qword_27ED87D50[0];
  if (!qword_27ED87D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED87D50);
  }

  return result;
}

unint64_t sub_2437BA058()
{
  result = qword_27ED86640;
  if (!qword_27ED86640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86640);
  }

  return result;
}

uint64_t AssetDownloadRequest.hash(into:)(uint64_t a1)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_6_0();
  sub_2437BAF20(v2, v3, MEMORY[0x277CC9600]);
  sub_2437EB6D4();
  v4 = type metadata accessor for AssetDownloadRequest(0);
  sub_2437EB724();
  sub_2437EB334();
  OUTLINED_FUNCTION_9_2();
  sub_2437BAF20(v5, v6, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_7();
  sub_2437EB6D4();
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_8_0();
  sub_2437BAF20(v7, v8, &protocol conformance descriptor for Asset);
  sub_2437EB6D4();
  v9 = (v1 + *(v4 + 32));
  if (*(v9 + 16) == 1)
  {
    sub_2437EBAB4();
  }

  else
  {
    v11 = *v9;
    v10 = v9[1];
    sub_2437EBAB4();
    MEMORY[0x245D40160](v11);
    MEMORY[0x245D40160](v10);
  }

  OUTLINED_FUNCTION_7();
  sub_2437EB6D4();
  type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_7_1();
  sub_2437BAF20(v12, v13, &protocol conformance descriptor for Credential);
  OUTLINED_FUNCTION_7();
  sub_2437EB6D4();
  sub_2437EB354();
  sub_2437EB354();
  if (!*(v1 + *(v4 + 52) + 8))
  {
    return sub_2437EBAB4();
  }

  sub_2437EBAB4();

  return sub_2437EB724();
}

uint64_t AssetDownloadRequest.hashValue.getter()
{
  sub_2437EBA94();
  AssetDownloadRequest.hash(into:)(v1);
  return sub_2437EBAD4();
}

uint64_t AssetDownloadRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = type metadata accessor for Credential(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v78 = v5 - v4;
  v80 = type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v79 = v8 - v7;
  sub_2437EB334();
  OUTLINED_FUNCTION_0();
  v88 = v10;
  v89 = v9;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v75 - v14;
  v16 = sub_2437EB3B4();
  OUTLINED_FUNCTION_0();
  v84 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86650, &qword_2437EC730);
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = v75 - v22;
  v90 = type metadata accessor for AssetDownloadRequest(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v85 = a1;
  v86 = v26 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BA004();
  v81 = v23;
  v27 = v87;
  sub_2437EBAF4();
  v82 = v16;
  if (v27)
  {
    v87 = v27;
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  v28 = v79;
  v87 = v13;
  v75[2] = v20;
  LOBYTE(v91) = 0;
  OUTLINED_FUNCTION_6_0();
  sub_2437BAF20(v29, v30, MEMORY[0x277CC9618]);
  OUTLINED_FUNCTION_29();
  sub_2437EB954();
  v35 = v86;
  v36 = OUTLINED_FUNCTION_7();
  v37(v36);
  LOBYTE(v91) = 1;
  v38 = sub_2437EB944();
  v39 = (v35 + v90[5]);
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v91) = 2;
  OUTLINED_FUNCTION_9_2();
  v43 = sub_2437BAF20(v41, v42, MEMORY[0x277CC9280]);
  v44 = v15;
  v45 = v89;
  sub_2437EB954();
  v75[1] = v43;
  v46 = v44;
  v47 = *(v88 + 32);
  v47(v35 + v90[6], v46, v45);
  LOBYTE(v91) = 3;
  OUTLINED_FUNCTION_8_0();
  sub_2437BAF20(v48, v49, &protocol conformance descriptor for Asset);
  OUTLINED_FUNCTION_29();
  sub_2437EB954();
  OUTLINED_FUNCTION_0_1();
  sub_2437B90F8(v28, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86630, &qword_2437EC728);
  v93 = 4;
  sub_2437BACD0(&qword_27ED86660, MEMORY[0x277D83BB8], MEMORY[0x277D83D38]);
  sub_2437EB934();
  v51 = v92;
  v52 = v35 + v90[8];
  *v52 = v91;
  *(v52 + 16) = v51;
  LOBYTE(v91) = 5;
  v53 = v87;
  sub_2437EB954();
  v54 = v90;
  v47(v35 + v90[9], v53, v45);
  LOBYTE(v91) = 6;
  OUTLINED_FUNCTION_7_1();
  sub_2437BAF20(v55, v56, &protocol conformance descriptor for Credential);
  OUTLINED_FUNCTION_29();
  v57 = v78;
  sub_2437EB954();
  v58 = v54;
  OUTLINED_FUNCTION_2_1();
  sub_2437B90F8(v57, v35 + v59);
  v93 = 7;
  sub_2437BAD3C();
  OUTLINED_FUNCTION_23();
  sub_2437EB954();
  v87 = 0;
  *(v35 + v54[11]) = v91;
  v93 = 8;
  OUTLINED_FUNCTION_23();
  v60 = v87;
  sub_2437EB954();
  v87 = v60;
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_22_0();
    v62(v61);
    v63 = 0;
  }

  else
  {
    *(v35 + v54[12]) = v91;
    LOBYTE(v91) = 9;
    v64 = v87;
    v65 = sub_2437EB924();
    v87 = v64;
    if (!v64)
    {
      v69 = v65;
      v70 = v66;
      v71 = OUTLINED_FUNCTION_32();
      v72(v71);
      v73 = v86;
      v74 = (v86 + v90[13]);
      *v74 = v69;
      v74[1] = v70;
      sub_2437BAD90(v73, v76);
      __swift_destroy_boxed_opaque_existential_1(v85);
      return sub_2437BADE4(v73, type metadata accessor for AssetDownloadRequest);
    }

    v67 = OUTLINED_FUNCTION_32();
    v68(v67);
    v63 = 1;
    v58 = v90;
    v35 = v86;
  }

  __swift_destroy_boxed_opaque_existential_1(v85);
  (*(v84 + 8))(v35, v82);

  v34 = v89;
  (*(v88 + 8))(v35 + v58[6], v89);
  sub_2437BADE4(v35 + v58[7], type metadata accessor for Asset);
  (*(v88 + 8))(v35 + v58[9], v34);
  OUTLINED_FUNCTION_15_0();
  sub_2437BADE4(v35 + v32, v33);
  result = sub_2437B7168(*(v35 + v58[11]), *(v35 + v58[11] + 8));
  if (v63)
  {
    return sub_2437B7168(*(v35 + v58[12]), *(v35 + v58[12] + 8));
  }

  return result;
}

uint64_t sub_2437BAC94(uint64_t a1)
{
  sub_2437EBA94();
  AssetDownloadRequest.hash(into:)(v2);
  return sub_2437EBAD4();
}

uint64_t sub_2437BACD0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86630, &qword_2437EC728);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2437BAD3C()
{
  result = qword_27ED86668;
  if (!qword_27ED86668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86668);
  }

  return result;
}

uint64_t sub_2437BAD90(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34();
  v4(v3);
  OUTLINED_FUNCTION_4_0();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t sub_2437BADE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2437BAE3C(void *a1)
{
  a1[1] = sub_2437BAF20(&qword_27ED86670, type metadata accessor for AssetDownloadRequest, &protocol conformance descriptor for AssetDownloadRequest);
  a1[2] = sub_2437BAF20(&qword_27ED86678, type metadata accessor for AssetDownloadRequest, &protocol conformance descriptor for AssetDownloadRequest);
  result = sub_2437BAF20(&qword_27ED86680, type metadata accessor for AssetDownloadRequest, &protocol conformance descriptor for AssetDownloadRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_2437BAF20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2437BAFB0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_34();
  sub_2437EB3B4();
  OUTLINED_FUNCTION_21();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_2437EB334();
    OUTLINED_FUNCTION_21();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      type metadata accessor for Asset(0);
      OUTLINED_FUNCTION_21();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[7];
      }

      else
      {
        v8 = type metadata accessor for Credential(0);
        v14 = a3[10];
      }
    }

    v9 = v3 + v14;
    goto LABEL_13;
  }

  v10 = *(v3 + a3[5] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_2437BB110(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_34();
  sub_2437EB3B4();
  OUTLINED_FUNCTION_21();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5] + 8) = (a2 - 1);
      return;
    }

    sub_2437EB334();
    OUTLINED_FUNCTION_21();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      type metadata accessor for Asset(0);
      OUTLINED_FUNCTION_21();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for Credential(0);
        v14 = a4[10];
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2437BB258(uint64_t a1)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_33();
  if (!(!v3 & v2))
  {
    sub_2437EB334();
    OUTLINED_FUNCTION_33();
    if (!(!v3 & v2))
    {
      v4 = type metadata accessor for Asset(319);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_2437BB364(319);
      if (v6 > 0x3F)
      {
        return v4;
      }

      else
      {
        type metadata accessor for Credential(319);
        OUTLINED_FUNCTION_33();
        if (!(!v3 & v2))
        {
          sub_2437BB3C8();
          OUTLINED_FUNCTION_33();
          if (!(!v3 & v2))
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_2437BB364(uint64_t a1)
{
  if (!qword_27ED86690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED86630, &qword_2437EC728);
    v1 = sub_2437EB864();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED86690);
    }
  }
}

void sub_2437BB3C8()
{
  if (!qword_27ED86698)
  {
    v0 = sub_2437EB864();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED86698);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetDownloadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDownloadRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2437BB56CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2437BB5A8()
{
  result = qword_27ED880F0;
  if (!qword_27ED880F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED880F0);
  }

  return result;
}

unint64_t sub_2437BB600()
{
  result = qword_27ED88200;
  if (!qword_27ED88200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88200);
  }

  return result;
}

unint64_t sub_2437BB658()
{
  result = qword_27ED88208[0];
  if (!qword_27ED88208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88208);
  }

  return result;
}

void OUTLINED_FUNCTION_3_1()
{
  v2 = (v0 + *(v1 + 52));
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + *(v1 + 32);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
}

__n128 OUTLINED_FUNCTION_27@<Q0>(uint64_t a1@<X8>)
{
  result = *(v3 + a1);
  *(v2 + v1) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_2437EB334();
}

void sub_2437BB8E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v3 = sub_2437EB2B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866A0, &unk_2437EC990);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_2437EB334();
  v11 = *(v10 - 8);
  v66 = v10;
  v67 = v11;
  MEMORY[0x28223BE20](v10);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v63 = v14;
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_3();
  v64 = v16;
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_3();
  v61 = v18;
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_3();
  v53 = v20;
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v21);
  v54 = &v52 - v22;
  v23 = NSHomeDirectory();
  sub_2437EB6F4();

  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v24 = *MEMORY[0x277CC91D8];
  v26 = (v4 + 104);
  v25 = *(v4 + 104);
  v25(v6, v24, v3);
  v27 = v58;
  sub_2437EB314();
  v28 = OUTLINED_FUNCTION_2_2(0x7972617262694CLL);
  v29 = v3;
  v25(v28, v24, v3);
  v62 = v25;
  v60 = sub_2437BBEF4();
  sub_2437EB324();
  v30 = *(v4 + 8);
  v65 = v4 + 8;
  v30(v6, v3);
  v31 = v66;
  v32 = *(v67 + 8);
  v67 += 8;
  v32(v27, v66);
  v33 = OUTLINED_FUNCTION_2_2(0x736568636143);
  v25(v33, v24, v29);
  v34 = v63;
  sub_2437EB324();
  v30(v6, v29);
  v32(v34, v31);
  v35 = OUTLINED_FUNCTION_2_2(0x74694B64756F6C43);
  v59 = v24;
  v58 = v26;
  v62(v35, v24, v29);
  v36 = v64;
  sub_2437EB324();
  v37 = v29;
  v63 = v30;
  v30(v6, v29);
  v64 = v32;
  v32(v36, v66);
  v38 = [objc_opt_self() mainBundle];
  v39 = [v38 bundleIdentifier];

  if (v39)
  {
    v40 = sub_2437EB6F4();
    v42 = v41;

    v68 = v40;
    v69 = v42;
    v43 = v59;
    v44 = v62;
    v62(v6, v59, v37);
    v45 = v53;
    v46 = v61;
    sub_2437EB324();
    v63(v6, v37);

    v64(v46, v66);
    v47 = OUTLINED_FUNCTION_2_2(0x73734164756F6C43);
    v44(v47, v43, v37);
    v48 = v54;
    sub_2437EB324();
    v49 = v63;
    v63(v6, v37);
    v50 = v45;
    v51 = v66;
    v64(v50, v66);
    v68 = v55;
    v69 = v56;
    v44(v6, v59, v37);
    sub_2437EB324();
    v49(v6, v37);
    v64(v48, v51);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2437BBEF4()
{
  result = qword_27ED866A8;
  if (!qword_27ED866A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED866A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = v1;
  return v2;
}

uint64_t type metadata accessor for ServiceIdentifier(uint64_t a1)
{
  result = qword_27ED88290;
  if (!qword_27ED88290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2437BC008(uint64_t a1)
{
  sub_2437BC07C();
  if (v1 <= 0x3F)
  {
    sub_2437BC0A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_2437BC07C()
{
  result = qword_27ED866B0;
  if (!qword_27ED866B0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27ED866B0);
  }

  return result;
}

void sub_2437BC0A4()
{
  if (!qword_27ED866B8)
  {
    v0 = sub_2437EB684();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED866B8);
    }
  }
}

uint64_t sub_2437BC0EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000002437F2FC0 == a2;
  if (v3 || (OUTLINED_FUNCTION_5(0xD000000000000015, 0x80000002437F2FC0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_14_2();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_5(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0xD000000000000010 && 0x80000002437F2FE0 == a2;
      if (v9 || (OUTLINED_FUNCTION_5(0xD000000000000010, 0x80000002437F2FE0) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_13_1();
        v12 = a1 == v10 && a2 == v11;
        if (v12 || (OUTLINED_FUNCTION_5(v10, v11) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_12_0();
          if (a1 == v13 && a2 == v14)
          {

            return 4;
          }

          else
          {
            v16 = OUTLINED_FUNCTION_5(v13, v14);

            if (v16)
            {
              return 4;
            }

            else
            {
              return 5;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2437BC228(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_2();
  switch(v3)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = OUTLINED_FUNCTION_13_1();
      break;
    case 4:
      result = OUTLINED_FUNCTION_12_0();
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_2437BC2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BC0EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437BC324()
{
  sub_2437BCB88();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC35C()
{
  sub_2437BCB88();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC394(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2437EBA14();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437BC418()
{
  sub_2437BCC84();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC450()
{
  sub_2437BCC84();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BC394(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437BC4D4()
{
  sub_2437BCCD8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC50C()
{
  sub_2437BCCD8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC544()
{
  sub_2437BCD2C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC57C()
{
  sub_2437BCD2C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC5B4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = j__swift_bridgeObjectRelease(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_2437BC5E4()
{
  sub_2437BCBDC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC61C()
{
  sub_2437BCBDC();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BC654()
{
  sub_2437BCC30();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BC68C()
{
  sub_2437BCC30();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t XPCError.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866C0, &qword_2437EC9E0);
  OUTLINED_FUNCTION_0();
  v51 = v4;
  v52 = v3;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_2();
  v50 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866C8, &qword_2437EC9E8);
  OUTLINED_FUNCTION_0();
  v48 = v8;
  v49 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_2();
  v47 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866D0, &qword_2437EC9F0);
  OUTLINED_FUNCTION_0();
  v45 = v12;
  v46 = v11;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_2();
  v44 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866D8, &qword_2437EC9F8);
  OUTLINED_FUNCTION_0();
  v42 = v16;
  v43 = v15;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866E0, &qword_2437ECA00);
  OUTLINED_FUNCTION_0();
  v41 = v21;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866E8, &qword_2437ECA08);
  OUTLINED_FUNCTION_0();
  v53 = v26;
  v54 = v25;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v27);
  v28 = v1[1];
  v40 = *v1;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BCB88();
  sub_2437EBB04();
  switch(v28)
  {
    case 0:
      v55 = 0;
      sub_2437BCD2C();
      OUTLINED_FUNCTION_17_1(&unk_28568C3F0);
      (*(v41 + 8))(v24, v20);
      v30 = OUTLINED_FUNCTION_11_0();
      v32 = v29;
      goto LABEL_7;
    case 1:
      v57 = 2;
      sub_2437BCC84();
      v33 = v44;
      OUTLINED_FUNCTION_8_1(&unk_28568C4A0);
      v35 = v45;
      v34 = v46;
      goto LABEL_6;
    case 2:
      v58 = 3;
      sub_2437BCC30();
      v33 = v47;
      OUTLINED_FUNCTION_8_1(&unk_28568C4C0);
      v35 = v48;
      v34 = v49;
      goto LABEL_6;
    case 3:
      v59 = 4;
      sub_2437BCBDC();
      v33 = v50;
      OUTLINED_FUNCTION_8_1(&unk_28568C4E0);
      v35 = v51;
      v34 = v52;
LABEL_6:
      (*(v35 + 8))(v33, v34);
      v30 = OUTLINED_FUNCTION_11_0();
      v32 = v20;
LABEL_7:
      result = v31(v30, v32);
      break;
    default:
      v56 = 1;
      sub_2437BCCD8();
      OUTLINED_FUNCTION_17_1(&unk_28568C480);
      v37 = v43;
      sub_2437EB9C4();
      (*(v42 + 8))(v19, v37);
      v38 = OUTLINED_FUNCTION_11_0();
      result = v39(v38, v29);
      break;
  }

  return result;
}

unint64_t sub_2437BCB88()
{
  result = qword_27ED882A0;
  if (!qword_27ED882A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882A0);
  }

  return result;
}

unint64_t sub_2437BCBDC()
{
  result = qword_27ED882A8;
  if (!qword_27ED882A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882A8);
  }

  return result;
}

unint64_t sub_2437BCC30()
{
  result = qword_27ED882B0;
  if (!qword_27ED882B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882B0);
  }

  return result;
}

unint64_t sub_2437BCC84()
{
  result = qword_27ED882B8;
  if (!qword_27ED882B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882B8);
  }

  return result;
}

unint64_t sub_2437BCCD8()
{
  result = qword_27ED882C0;
  if (!qword_27ED882C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED882C0);
  }

  return result;
}

unint64_t sub_2437BCD2C()
{
  result = qword_27ED882C8[0];
  if (!qword_27ED882C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED882C8);
  }

  return result;
}

uint64_t XPCError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866F0, &qword_2437ECA10);
  OUTLINED_FUNCTION_0();
  v75 = v3;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_2();
  v81 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED866F8, &qword_2437ECA18);
  OUTLINED_FUNCTION_0();
  v73 = v7;
  v74 = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_2();
  v78 = v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86700, &qword_2437ECA20);
  OUTLINED_FUNCTION_0();
  v70 = v10;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_2();
  v77 = v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86708, &qword_2437ECA28);
  OUTLINED_FUNCTION_0();
  v71 = v13;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86710, &qword_2437ECA30);
  OUTLINED_FUNCTION_0();
  v69 = v18;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86718, &qword_2437ECA38);
  OUTLINED_FUNCTION_0();
  v80 = v23;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BCB88();
  v27 = v83;
  sub_2437EBAF4();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v66 = v17;
  v67 = v21;
  v68 = v16;
  v29 = v81;
  v28 = v82;
  v83 = a1;
  v30 = sub_2437EB974();
  v34 = sub_2437B5F3C(v30, 0);
  if (v32 == v33 >> 1)
  {
    goto LABEL_7;
  }

  if (v32 >= (v33 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2437BD51CLL);
  }

  v65 = *(v31 + v32);
  sub_2437B5F84(v32 + 1, v33 >> 1, v34, v31, v32, v33);
  v36 = v35;
  v38 = v37;
  swift_unknownObjectRelease();
  if (v36 != v38 >> 1)
  {
LABEL_7:
    v45 = sub_2437EB8C4();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
    *v47 = &type metadata for XPCError;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = OUTLINED_FUNCTION_1_4();
    v49(v48);
    a1 = v83;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v79;
  switch(v65)
  {
    case 1:
      v85 = 1;
      sub_2437BCCD8();
      OUTLINED_FUNCTION_4_1(&unk_28568C480);
      v59 = sub_2437EB944();
      v60 = v80;
      v43 = v59;
      v44 = v61;
      swift_unknownObjectRelease();
      v62 = OUTLINED_FUNCTION_16_1();
      v63(v62);
      (*(v60 + 8))(v26, v22);
      break;
    case 2:
      v86 = 2;
      sub_2437BCC84();
      v53 = v77;
      OUTLINED_FUNCTION_4_1(&unk_28568C4A0);
      swift_unknownObjectRelease();
      (*(v70 + 8))(v53, v72);
      v54 = OUTLINED_FUNCTION_1_4();
      v55(v54);
      v43 = 0;
      v44 = 1;
      break;
    case 3:
      v87 = 3;
      sub_2437BCC30();
      v56 = v78;
      OUTLINED_FUNCTION_4_1(&unk_28568C4C0);
      swift_unknownObjectRelease();
      (*(v73 + 8))(v56, v74);
      v57 = OUTLINED_FUNCTION_1_4();
      v58(v57);
      v43 = 0;
      v44 = 2;
      break;
    case 4:
      v88 = 4;
      sub_2437BCBDC();
      OUTLINED_FUNCTION_4_1(&unk_28568C4E0);
      swift_unknownObjectRelease();
      (*(v75 + 8))(v29, v28);
      v51 = OUTLINED_FUNCTION_1_4();
      v52(v51);
      v43 = 0;
      v44 = 3;
      break;
    default:
      v84 = 0;
      sub_2437BCD2C();
      v40 = v67;
      OUTLINED_FUNCTION_4_1(&unk_28568C3F0);
      swift_unknownObjectRelease();
      (*(v69 + 8))(v40, v66);
      v41 = OUTLINED_FUNCTION_1_4();
      v42(v41);
      v43 = 0;
      v44 = 0;
      break;
  }

  *v39 = v43;
  v39[1] = v44;
  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t get_enum_tag_for_layout_string_18CloudAssetsCommons8XPCErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2437BD594(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_1();
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2437BD5E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_2437BD640(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2437BD66C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2437BD6F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2437BD7C0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t _s18CloudAssetsCommons21UploadResponseMessageO16SignalCodingKeysOwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_1();
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

_BYTE *sub_2437BD84C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437BD8E8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437BD948()
{
  result = qword_27ED88850[0];
  if (!qword_27ED88850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88850);
  }

  return result;
}

unint64_t sub_2437BD9A0()
{
  result = qword_27ED88B60[0];
  if (!qword_27ED88B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88B60);
  }

  return result;
}

unint64_t sub_2437BD9F8()
{
  result = qword_27ED88C70;
  if (!qword_27ED88C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88C70);
  }

  return result;
}

unint64_t sub_2437BDA50()
{
  result = qword_27ED88C78;
  if (!qword_27ED88C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88C78);
  }

  return result;
}

unint64_t sub_2437BDAA8()
{
  result = qword_27ED88D00;
  if (!qword_27ED88D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88D00);
  }

  return result;
}

unint64_t sub_2437BDB00()
{
  result = qword_27ED88D08[0];
  if (!qword_27ED88D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88D08);
  }

  return result;
}

unint64_t sub_2437BDB58()
{
  result = qword_27ED88D90;
  if (!qword_27ED88D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88D90);
  }

  return result;
}

unint64_t sub_2437BDBB0()
{
  result = qword_27ED88D98[0];
  if (!qword_27ED88D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88D98);
  }

  return result;
}

unint64_t sub_2437BDC08()
{
  result = qword_27ED88E20;
  if (!qword_27ED88E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88E20);
  }

  return result;
}

unint64_t sub_2437BDC60()
{
  result = qword_27ED88E28[0];
  if (!qword_27ED88E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88E28);
  }

  return result;
}

unint64_t sub_2437BDCB8()
{
  result = qword_27ED88EB0;
  if (!qword_27ED88EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88EB0);
  }

  return result;
}

unint64_t sub_2437BDD10()
{
  result = qword_27ED88EB8[0];
  if (!qword_27ED88EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88EB8);
  }

  return result;
}

unint64_t sub_2437BDD68()
{
  result = qword_27ED88F40;
  if (!qword_27ED88F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED88F40);
  }

  return result;
}

unint64_t sub_2437BDDC0()
{
  result = qword_27ED88F48[0];
  if (!qword_27ED88F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88F48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1)
{

  return sub_2437EB904();
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{

  return sub_2437EB994();
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1)
{

  return sub_2437EB994();
}

uint64_t AssetDownloadResponse.id.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t type metadata accessor for AssetDownloadResponse(uint64_t a1)
{
  result = qword_27ED89260;
  if (!qword_27ED89260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetDownloadResponse.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetDownloadResponse(0) + 24);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AssetDownloadResponse.init(id:asset:fileURL:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_1_0();
  (*(v14 + 32))(a7, a1);
  v15 = type metadata accessor for AssetDownloadResponse(0);
  sub_2437BE1C8(a2, a7 + v15[5]);
  v16 = v15[6];
  sub_2437EB334();
  OUTLINED_FUNCTION_1_0();
  result = (*(v17 + 32))(a7 + v16, a3);
  v19 = a7 + v15[7];
  *v19 = a4;
  *(v19 + 8) = a5;
  *(v19 + 16) = a6 & 1;
  return result;
}

uint64_t sub_2437BE1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Asset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static AssetDownloadResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2437EB394() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetDownloadResponse(0);
  if (!static Asset.== infix(_:_:)(a1 + *(v4 + 20), a2 + *(v4 + 20)) || (sub_2437EB2F4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 16);
  v8 = a2 + v5;
  if ((v7 & 1) == 0)
  {
    if (*(v8 + 16))
    {
      return 0;
    }

    return *v6 == *v8 && v6[1] == *(v8 + 8);
  }

  return (*(v8 + 16) & 1) != 0;
}

uint64_t sub_2437BE2D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_5(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_5(0x7465737361, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_5(0x4C5255656C6966, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_5(0x65676E6172, 0xE500000000000000);

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2437BE3F0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7465737361;
      break;
    case 2:
      result = 0x4C5255656C6966;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437BE478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BE2D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437BE4AC(uint64_t a1)
{
  sub_2437BE7B8();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_2437BE4E8(uint64_t a1)
{
  sub_2437BE7B8();

  return MEMORY[0x2821FE720](a1);
}

uint64_t AssetDownloadResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86720, &unk_2437ED080);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BE7B8();
  sub_2437EBB04();
  LOBYTE(v22) = 0;
  sub_2437EB3B4();
  OUTLINED_FUNCTION_0_3();
  sub_2437BF08C(v11, v12, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_4_2();
  sub_2437EB9D4();
  if (!v2)
  {
    v13 = type metadata accessor for AssetDownloadResponse(0);
    LOBYTE(v22) = 1;
    type metadata accessor for Asset(0);
    OUTLINED_FUNCTION_2_3();
    sub_2437BF08C(v14, v15, &protocol conformance descriptor for Asset);
    OUTLINED_FUNCTION_4_2();
    sub_2437EB9D4();
    LOBYTE(v22) = 2;
    sub_2437EB334();
    OUTLINED_FUNCTION_1_5();
    sub_2437BF08C(v16, v17, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_4_2();
    sub_2437EB9D4();
    v18 = (v3 + *(v13 + 28));
    v19 = *(v18 + 16);
    v22 = *v18;
    v23 = v19;
    v21[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86630, &qword_2437EC728);
    sub_2437BACD0(&qword_27ED86638, MEMORY[0x277D83B90], MEMORY[0x277D83D08]);
    OUTLINED_FUNCTION_4_2();
    sub_2437EB9B4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2437BE7B8()
{
  result = qword_27ED88FD0[0];
  if (!qword_27ED88FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED88FD0);
  }

  return result;
}

uint64_t AssetDownloadResponse.hash(into:)(uint64_t a1)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_0_3();
  sub_2437BF08C(v2, v3, MEMORY[0x277CC9600]);
  sub_2437EB6D4();
  v4 = type metadata accessor for AssetDownloadResponse(0);
  type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_2_3();
  v7 = sub_2437BF08C(v5, v6, &protocol conformance descriptor for Asset);
  OUTLINED_FUNCTION_10_3(v7);
  sub_2437EB334();
  OUTLINED_FUNCTION_1_5();
  v10 = sub_2437BF08C(v8, v9, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_10_3(v10);
  v11 = (v1 + *(v4 + 28));
  if (*(v11 + 16) == 1)
  {
    return sub_2437EBAB4();
  }

  v14 = *v11;
  v13 = v11[1];
  sub_2437EBAB4();
  MEMORY[0x245D40160](v14);
  return MEMORY[0x245D40160](v13);
}

uint64_t AssetDownloadResponse.hashValue.getter()
{
  sub_2437EBA94();
  AssetDownloadResponse.hash(into:)(v1);
  return sub_2437EBAD4();
}

uint64_t AssetDownloadResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_2437EB334();
  OUTLINED_FUNCTION_0();
  v48 = v4;
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v45 = v6 - v5;
  v47 = type metadata accessor for Asset(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = sub_2437EB3B4();
  OUTLINED_FUNCTION_0();
  v46 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  v51 = v15 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86728, &qword_2437ED090);
  OUTLINED_FUNCTION_0();
  v50 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v20 = type metadata accessor for AssetDownloadResponse(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v24 = v23 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437BE7B8();
  v52 = v19;
  v25 = v54;
  sub_2437EBAF4();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v10;
  v27 = v20;
  v54 = v24;
  v28 = v48;
  v29 = v49;
  LOBYTE(v55) = 0;
  OUTLINED_FUNCTION_0_3();
  sub_2437BF08C(v30, v31, MEMORY[0x277CC9618]);
  sub_2437EB954();
  v32 = *(v46 + 32);
  v33 = v51;
  v51 = v11;
  v32(v54, v33, v11);
  LOBYTE(v55) = 1;
  OUTLINED_FUNCTION_2_3();
  sub_2437BF08C(v34, v35, &protocol conformance descriptor for Asset);
  sub_2437EB954();
  sub_2437BE1C8(v26, v54 + v27[5]);
  LOBYTE(v55) = 2;
  OUTLINED_FUNCTION_1_5();
  sub_2437BF08C(v36, v37, MEMORY[0x277CC9280]);
  v38 = v45;
  sub_2437EB954();
  (*(v28 + 32))(v54 + v27[6], v38, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86630, &qword_2437EC728);
  v57 = 3;
  sub_2437BACD0(&qword_27ED86660, MEMORY[0x277D83BB8], MEMORY[0x277D83D38]);
  sub_2437EB934();
  (*(v50 + 8))(v52, v53);
  v39 = v56;
  v40 = v54;
  v41 = v54 + v27[7];
  *v41 = v55;
  *(v41 + 16) = v39;
  sub_2437BEF54(v40, v44, type metadata accessor for AssetDownloadResponse);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2437BEFB4(v40, type metadata accessor for AssetDownloadResponse);
}

uint64_t sub_2437BEF18(uint64_t a1)
{
  sub_2437EBA94();
  AssetDownloadResponse.hash(into:)(v2);
  return sub_2437EBAD4();
}

uint64_t sub_2437BEF54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2437BEFB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2437BF08C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2437BF11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_21();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Asset(0);
    OUTLINED_FUNCTION_21();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_2437EB334();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2437BF208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2437EB3B4();
  OUTLINED_FUNCTION_21();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Asset(0);
    OUTLINED_FUNCTION_21();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_2437EB334();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_2437BF2E8(uint64_t a1)
{
  sub_2437EB3B4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Asset(319);
    if (v2 <= 0x3F)
    {
      sub_2437EB334();
      if (v3 <= 0x3F)
      {
        sub_2437BB364(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetDownloadResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDownloadResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2437BF4F0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2437BF52C()
{
  result = qword_27ED89370[0];
  if (!qword_27ED89370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89370);
  }

  return result;
}

unint64_t sub_2437BF584()
{
  result = qword_27ED89480;
  if (!qword_27ED89480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED89480);
  }

  return result;
}

unint64_t sub_2437BF5DC()
{
  result = qword_27ED89488[0];
  if (!qword_27ED89488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89488);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{

  return sub_2437EB6D4();
}

unint64_t sub_2437BF6BC()
{
  result = qword_27ED86738;
  if (!qword_27ED86738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86738);
  }

  return result;
}

uint64_t static Signal.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_9();
    }

    return OUTLINED_FUNCTION_1();
  }

  if (*(a2 + 8))
  {
    return OUTLINED_FUNCTION_1();
  }

  return *a1 == *a2;
}

uint64_t sub_2437BF740()
{
  sub_2437BFDE8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BF778()
{
  sub_2437BFDE8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BF7B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000002437F3030 == a2;
  if (v3 || (OUTLINED_FUNCTION_19_1(0xD00000000000001BLL, 0x80000002437F3030) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002437F3050 == a2)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_1(0xD000000000000010, 0x80000002437F3050);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2437BF87C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_18_0(a1);
  MEMORY[0x245D40160](v1 & 1);
  return sub_2437EBAD4();
}

unint64_t sub_2437BF8BC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_2437BF900(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656E6961746E6F63 && a2 == 0xEE007865646E4972)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_19_1(0x656E6961746E6F63, 0xEE007865646E4972);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437BF980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BF7B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2437BF9A8()
{
  sub_2437BFD94();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BF9E0()
{
  sub_2437BFD94();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2437BFA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437BF900(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437BFA6C()
{
  sub_2437BFE3C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437BFAA4()
{
  sub_2437BFE3C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

void Signal.Event.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_14_3();
  v50 = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86740, "pO");
  OUTLINED_FUNCTION_0();
  v48 = v28;
  v49 = v27;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v29);
  v46 = v44 - v30;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86748, &qword_2437ED308);
  OUTLINED_FUNCTION_0();
  v45 = v31;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v32);
  v34 = v44 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86750, &qword_2437ED310);
  OUTLINED_FUNCTION_0();
  v37 = v36;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v38);
  v40 = v44 - v39;
  v44[1] = *v23;
  v41 = *(v23 + 8);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2437BFD94();
  sub_2437EBB04();
  if (v41)
  {
    sub_2437BFDE8();
    v42 = v46;
    OUTLINED_FUNCTION_17_2();
    sub_2437EB994();
    (*(v48 + 8))(v42, v49);
  }

  else
  {
    sub_2437BFE3C();
    OUTLINED_FUNCTION_17_2();
    sub_2437EB994();
    v43 = v47;
    sub_2437EB9E4();
    (*(v45 + 8))(v34, v43);
  }

  (*(v37 + 8))(v40, v35);
  OUTLINED_FUNCTION_15_1();
}

unint64_t sub_2437BFD94()
{
  result = qword_27ED89510;
  if (!qword_27ED89510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED89510);
  }

  return result;
}

unint64_t sub_2437BFDE8()
{
  result = qword_27ED89518;
  if (!qword_27ED89518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED89518);
  }

  return result;
}

unint64_t sub_2437BFE3C()
{
  result = qword_27ED89520[0];
  if (!qword_27ED89520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89520);
  }

  return result;
}

uint64_t Signal.Event.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x245D40160](1);
  }

  v2 = *v0;
  MEMORY[0x245D40160](0);
  return MEMORY[0x245D40180](v2);
}

uint64_t Signal.Event.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_18_0(a1);
  if (v3)
  {
    MEMORY[0x245D40160](1);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    MEMORY[0x245D40180](v2);
  }

  return sub_2437EBAD4();
}

void Signal.Event.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_3();
  v76 = v24;
  v26 = v25;
  v74 = v27;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86758, &qword_2437ED318);
  OUTLINED_FUNCTION_0();
  v73 = v28;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v29);
  v31 = v70 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86760, &qword_2437ED320);
  OUTLINED_FUNCTION_0();
  v72 = v32;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v33);
  v35 = v70 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86768, &unk_2437ED328);
  OUTLINED_FUNCTION_0();
  v75 = v37;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v38);
  v40 = v70 - v39;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2437BFD94();
  v41 = v76;
  sub_2437EBAF4();
  if (v41)
  {
    goto LABEL_9;
  }

  v70[1] = v35;
  v76 = v26;
  v42 = sub_2437EB974();
  v46 = sub_2437B5F3C(v42, 0);
  if (v44 == v45 >> 1)
  {
    goto LABEL_8;
  }

  v70[0] = 0;
  if (v44 < (v45 >> 1))
  {
    v47 = *(v43 + v44);
    v48 = sub_2437B5F84(v44 + 1, v45 >> 1, v46, v43, v44, v45);
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    v46 = v48;
    if (v50 == v52 >> 1)
    {
      if (v47)
      {
        sub_2437BFDE8();
        OUTLINED_FUNCTION_17_2();
        v53 = v70[0];
        sub_2437EB904();
        v54 = v74;
        if (v53)
        {
          goto LABEL_12;
        }

        swift_unknownObjectRelease();
        (*(v73 + 8))(v31, v71);
        v63 = OUTLINED_FUNCTION_6_1();
        v64(v63, v36);
        v65 = 0;
      }

      else
      {
        sub_2437BFE3C();
        v60 = v70[0];
        OUTLINED_FUNCTION_17_2();
        sub_2437EB904();
        v54 = v74;
        if (v60)
        {
LABEL_12:
          v61 = OUTLINED_FUNCTION_6_1();
          v62(v61, v36);
          swift_unknownObjectRelease();
          v26 = v76;
          goto LABEL_9;
        }

        v66 = sub_2437EB964();
        v67 = v75;
        v65 = v66;
        swift_unknownObjectRelease();
        v68 = OUTLINED_FUNCTION_16_2();
        v69(v68);
        (*(v67 + 8))(v40, v36);
      }

      *v54 = v65;
      *(v54 + 8) = v47;
      __swift_destroy_boxed_opaque_existential_1(v76);
      goto LABEL_10;
    }

LABEL_8:
    v74 = v46;
    v55 = sub_2437EB8C4();
    swift_allocError();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86550, &qword_2437ECA40);
    *v57 = &type metadata for Signal.Event;
    sub_2437EB914();
    sub_2437EB8B4();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D84160], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = OUTLINED_FUNCTION_6_1();
    v59(v58, v36);
    v26 = v76;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_10:
    OUTLINED_FUNCTION_15_1();
    return;
  }

  __break(1u);
}

uint64_t sub_2437C043C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_2437EBA94();
  if (v3)
  {
    MEMORY[0x245D40160](1);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    MEMORY[0x245D40180](v2);
  }

  return sub_2437EBAD4();
}

uint64_t sub_2437C04D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6675626F746F7270 && a2 == 0xEC00000061746144)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_19_1(0x6675626F746F7270, 0xEC00000061746144);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2437C0544(uint64_t a1)
{
  OUTLINED_FUNCTION_18_0(a1);
  OUTLINED_FUNCTION_20_0();
  return sub_2437EBAD4();
}

uint64_t sub_2437C0594(uint64_t a1)
{
  sub_2437EBA94();
  OUTLINED_FUNCTION_20_0();
  return sub_2437EBAD4();
}

uint64_t sub_2437C05D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2437C04D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2437C05FC()
{
  sub_2437C15D8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2437C0634()
{
  sub_2437C15D8();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Signal.events.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void sub_2437C06C0(uint64_t a1)
{
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v30 = v4;
  v5 = type metadata accessor for CloudAssets_Signal.Event(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = *v3;
  v13 = *(*v3 + 16);
  if (v13)
  {
    v28 = v1;
    v29 = v3;
    v34 = MEMORY[0x277D84F90];
    sub_2437C11A0(0, v13, 0);
    v14 = 0;
    v15 = v34;
    v16 = *(v6 + 80);
    v32 = v6;
    v33 = v12 + ((v16 + 32) & ~v16);
    v31 = v11;
    while (v14 < *(v12 + 16))
    {
      sub_2437C1ED4(v33 + *(v6 + 72) * v14, v11);
      sub_2437C1ED4(v11, v9);
      if (v9[8] != 1)
      {
        sub_2437BF6BC();
        swift_allocError();
        *v26 = 0xD000000000000026;
        v26[1] = 0x80000002437F3000;
        swift_willThrow();
        sub_2437C1684(v9, type metadata accessor for CloudAssets_Signal.Event);
        sub_2437C1684(v11, type metadata accessor for CloudAssets_Signal.Event);
        OUTLINED_FUNCTION_0_4();
        sub_2437C1684(v29, v27);

        goto LABEL_15;
      }

      v17 = v12;
      v18 = *v9;
      if (*v9)
      {
        sub_2437C1684(v9, type metadata accessor for CloudAssets_Signal.Event);
        v19 = 0;
        v20 = v11;
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        sub_2437C1684(v11, v21);
        v19 = *(v9 + 2);
        v20 = v9;
      }

      sub_2437C1684(v20, type metadata accessor for CloudAssets_Signal.Event);
      v23 = *(v34 + 16);
      v22 = *(v34 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2437C11A0((v22 > 1), v23 + 1, 1);
      }

      ++v14;
      *(v34 + 16) = v23 + 1;
      v24 = v34 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18 != 0;
      v11 = v31;
      v6 = v32;
      v12 = v17;
      if (v13 == v14)
      {
        sub_2437C1684(v29, type metadata accessor for CloudAssets_Signal);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    sub_2437C1684(v3, v25);
    v15 = MEMORY[0x277D84F90];
LABEL_14:
    *v30 = v15;
LABEL_15:
    OUTLINED_FUNCTION_15_1();
  }
}

void Signal.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  v12 = v11;
  v28 = v13;
  v14 = sub_2437EB444();
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_15();
  v30 = v16 - v15;
  type metadata accessor for CloudAssets_Signal(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86770, &qword_2437ED338);
  OUTLINED_FUNCTION_0();
  v29 = v22;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v23);
  v25 = &v27 - v24;
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_2437C15D8();
  sub_2437EBAF4();
  if (!v10)
  {
    v26 = v29;
    sub_2437BAD3C();
    sub_2437EB954();
    v27 = v21;
    v34 = v35;
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    sub_2437EB434();
    sub_2437C162C();
    sub_2437EB514();
    sub_2437C06C0(v20);
    (*(v26 + 8))(v25, v27);
    *v28 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_2437C0C48@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CloudAssets_Signal.Event(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *v1;
  CloudAssets_Signal.init()(a1);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2437C11C0(0, v11, 0);
    v12 = v20;
    v13 = (v10 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      CloudAssets_Signal.Event.init()(v7);
      if (v15)
      {
        *v7 = 1;
        v7[8] = 1;
      }

      else
      {
        *v7 = 0;
        v7[8] = 1;
        *(v7 + 2) = v14;
      }

      sub_2437C1E6C(v7, v9);
      v20 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2437C11C0((v16 > 1), v17 + 1, 1);
        v12 = v20;
      }

      *(v12 + 16) = v17 + 1;
      sub_2437C1E6C(v9, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17);
      v13 += 16;
      --v11;
    }

    while (v11);
  }

  *a1 = v12;
  return result;
}

void Signal.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_14_3();
  v23 = v2;
  v4 = v3;
  type metadata accessor for CloudAssets_Signal(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86788, &qword_2437ED340);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2437C15D8();
  sub_2437EBB04();
  v24 = v14;
  sub_2437C0C48(v8);
  sub_2437C162C();
  v15 = v23;
  v16 = sub_2437EB504();
  if (v15)
  {
    OUTLINED_FUNCTION_0_4();
    sub_2437C1684(v8, v18);
  }

  else
  {
    v19 = v16;
    v20 = v17;
    OUTLINED_FUNCTION_0_4();
    sub_2437C1684(v8, v21);
    v24 = v19;
    v25 = v20;
    sub_2437BA058();
    sub_2437EB9D4();
    sub_2437B7168(v24, v25);
  }

  (*(v10 + 8))(v13, v26);
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_2437C0FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t Signal.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x245D40160](v2);
  if (v2)
  {
    v4 = (v1 + 40);
    do
    {
      if (*v4)
      {
        result = MEMORY[0x245D40160](1);
      }

      else
      {
        v5 = *(v4 - 1);
        MEMORY[0x245D40160](0);
        result = MEMORY[0x245D40180](v5);
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t Signal.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_18_0(a1);
  sub_2437C1564(v4, v2);
  return sub_2437EBAD4();
}

uint64_t sub_2437C1128(uint64_t a1)
{
  v2 = *v1;
  sub_2437EBA94();
  sub_2437C1564(v4, v2);
  return sub_2437EBAD4();
}

char *sub_2437C11A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2437C11E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2437C11C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2437C12DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2437C11E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C0, &qword_2437ED928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_2437C12DC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867B8, &qword_2437ED920);
  v10 = *(type metadata accessor for CloudAssets_Signal.Event(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CloudAssets_Signal.Event(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2437C1490(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2437C1490(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for CloudAssets_Signal.Event(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for CloudAssets_Signal.Event(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_2437C1564(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245D40160](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      if (*v5)
      {
        result = MEMORY[0x245D40160](1);
      }

      else
      {
        v6 = *(v5 - 1);
        MEMORY[0x245D40160](0);
        result = MEMORY[0x245D40180](v6);
      }

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_2437C15D8()
{
  result = qword_27ED86778;
  if (!qword_27ED86778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86778);
  }

  return result;
}

unint64_t sub_2437C162C()
{
  result = qword_27ED86780;
  if (!qword_27ED86780)
  {
    type metadata accessor for CloudAssets_Signal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86780);
  }

  return result;
}

uint64_t sub_2437C1684(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2437C16E0()
{
  result = qword_27ED86790;
  if (!qword_27ED86790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86790);
  }

  return result;
}

unint64_t sub_2437C1738()
{
  result = qword_27ED86798;
  if (!qword_27ED86798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED86798);
  }

  return result;
}

unint64_t sub_2437C1790()
{
  result = qword_27ED867A0;
  if (!qword_27ED867A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED867A0);
  }

  return result;
}

unint64_t sub_2437C17E8()
{
  result = qword_27ED867A8;
  if (!qword_27ED867A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED867A8);
  }

  return result;
}

unint64_t sub_2437C1840()
{
  result = qword_27ED867B0;
  if (!qword_27ED867B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED867B0);
  }

  return result;
}

uint64_t sub_2437C18A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2437C18E0(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Signal.Event(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_13_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_1();
  }
}

uint64_t storeEnumTagSinglePayload for Signal.Event(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2437C1980(_DWORD *a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_13_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_1();
  }
}

uint64_t sub_2437C1990(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *sub_2437C19D0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2437C1A9CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2437C1AD0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2437C1B6CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2437C1BB0()
{
  result = qword_27ED89DB0[0];
  if (!qword_27ED89DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89DB0);
  }

  return result;
}

unint64_t sub_2437C1C08()
{
  result = qword_27ED89FC0[0];
  if (!qword_27ED89FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED89FC0);
  }

  return result;
}

unint64_t sub_2437C1C60()
{
  result = qword_27ED8A0D0;
  if (!qword_27ED8A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8A0D0);
  }

  return result;
}

unint64_t sub_2437C1CB8()
{
  result = qword_27ED8A0D8[0];
  if (!qword_27ED8A0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8A0D8);
  }

  return result;
}

unint64_t sub_2437C1D10()
{
  result = qword_27ED8A160;
  if (!qword_27ED8A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8A160);
  }

  return result;
}

unint64_t sub_2437C1D68()
{
  result = qword_27ED8A168[0];
  if (!qword_27ED8A168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8A168);
  }

  return result;
}

unint64_t sub_2437C1DC0()
{
  result = qword_27ED8A1F0;
  if (!qword_27ED8A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED8A1F0);
  }

  return result;
}

unint64_t sub_2437C1E18()
{
  result = qword_27ED8A1F8[0];
  if (!qword_27ED8A1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED8A1F8);
  }

  return result;
}

uint64_t sub_2437C1E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437C1ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Signal.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_18_0(uint64_t a1, ...)
{

  return sub_2437EBA94();
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1, uint64_t a2)
{

  return sub_2437EBA14();
}

void OUTLINED_FUNCTION_20_0()
{

  JUMPOUT(0x245D40160);
}

uint64_t CloudAssets_Asset.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_105();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_52();
  type metadata accessor for CloudAssets_Asset(v7);
  OUTLINED_FUNCTION_101();
  type metadata accessor for CloudAssets_Asset.ID(0);
  OUTLINED_FUNCTION_16_3(v1);
  if (v8)
  {
    OUTLINED_FUNCTION_87();
    *(a1 + 32) = xmmword_2437EC710;
    *(a1 + 48) = xmmword_2437EC710;
    sub_2437EB414();
    result = OUTLINED_FUNCTION_16_3(v1);
    if (!v8)
    {
      return sub_2437B47C4(v1, &qword_27ED867C8, &qword_2437ED970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    return sub_2437C27F4();
  }

  return result;
}

uint64_t CloudAssets_Asset.id.setter()
{
  v1 = OUTLINED_FUNCTION_55();
  v2 = type metadata accessor for CloudAssets_Asset(v1);
  sub_2437B47C4(v0 + *(v2 + 24), &qword_27ED867C8, &qword_2437ED970);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_147();
  type metadata accessor for CloudAssets_Asset.ID(0);
  v3 = OUTLINED_FUNCTION_50();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t CloudAssets_Asset.ID.init()@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_87();
  *(a2 + 32) = xmmword_2437EC710;
  *(a2 + 48) = xmmword_2437EC710;
  type metadata accessor for CloudAssets_Asset.ID(0);
  return sub_2437EB414();
}

void CloudAssets_Asset.id.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_150();
  v2 = OUTLINED_FUNCTION_122();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44(v3);
  v4 = OUTLINED_FUNCTION_97();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_48(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_104(v8);
  v10 = type metadata accessor for CloudAssets_Asset.ID(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_1_0();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_121(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_60(v15);
  v17 = type metadata accessor for CloudAssets_Asset(v16);
  OUTLINED_FUNCTION_128(*(v17 + 24));
  v18 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_53(v18, v19, v10);
  if (v20)
  {
    OUTLINED_FUNCTION_108();
    *(v12 + 32) = xmmword_2437EC710;
    *(v12 + 48) = xmmword_2437EC710;
    sub_2437EB414();
    v21 = OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53(v21, v22, v10);
    if (!v20)
    {
      sub_2437B47C4(v8, &qword_27ED867C8, &qword_2437ED970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_142();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t CloudAssets_Asset.hasID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
  OUTLINED_FUNCTION_48(v1);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_52();
  type metadata accessor for CloudAssets_Asset(v3);
  sub_2437C45F0();
  type metadata accessor for CloudAssets_Asset.ID(0);
  v4 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_53(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_2437B47C4(v0, &qword_27ED867C8, &qword_2437ED970);
  return v8;
}

Swift::Void __swiftcall CloudAssets_Asset.clearID()()
{
  v1 = type metadata accessor for CloudAssets_Asset(0);
  sub_2437B47C4(v0 + *(v1 + 24), &qword_27ED867C8, &qword_2437ED970);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_54();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t CloudAssets_Asset.protector.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_105();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_52();
  type metadata accessor for CloudAssets_Asset(v7);
  OUTLINED_FUNCTION_101();
  type metadata accessor for CloudAssets_Asset.Protector(0);
  OUTLINED_FUNCTION_16_3(v1);
  if (v8)
  {
    *a1 = xmmword_2437EC710;
    a1[1] = xmmword_2437EC710;
    sub_2437EB414();
    result = OUTLINED_FUNCTION_16_3(v1);
    if (!v8)
    {
      return sub_2437B47C4(v1, &qword_27ED867D0, &qword_2437ED978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    return sub_2437C27F4();
  }

  return result;
}

uint64_t sub_2437C2694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_48(v9);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  sub_2437C29BC();
  return a7(v7);
}

uint64_t CloudAssets_Asset.protector.setter()
{
  v1 = OUTLINED_FUNCTION_55();
  v2 = type metadata accessor for CloudAssets_Asset(v1);
  sub_2437B47C4(v0 + *(v2 + 28), &qword_27ED867D0, &qword_2437ED978);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_147();
  type metadata accessor for CloudAssets_Asset.Protector(0);
  v3 = OUTLINED_FUNCTION_50();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t CloudAssets_Asset.Protector.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_2437EC710;
  a1[1] = xmmword_2437EC710;
  type metadata accessor for CloudAssets_Asset.Protector(0);
  return sub_2437EB414();
}

uint64_t sub_2437C27F4()
{
  OUTLINED_FUNCTION_84();
  v1(0);
  OUTLINED_FUNCTION_1_0();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

void CloudAssets_Asset.protector.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_150();
  v2 = OUTLINED_FUNCTION_122();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44(v3);
  v4 = OUTLINED_FUNCTION_97();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_48(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_104(v8);
  v10 = type metadata accessor for CloudAssets_Asset.Protector(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_1_0();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_121(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_60(v15);
  v17 = type metadata accessor for CloudAssets_Asset(v16);
  OUTLINED_FUNCTION_128(*(v17 + 28));
  v18 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_53(v18, v19, v10);
  if (v20)
  {
    *v12 = xmmword_2437EC710;
    v12[1] = xmmword_2437EC710;
    sub_2437EB414();
    v21 = OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53(v21, v22, v10);
    if (!v20)
    {
      sub_2437B47C4(v8, &qword_27ED867D0, &qword_2437ED978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_142();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

uint64_t sub_2437C29BC()
{
  OUTLINED_FUNCTION_84();
  v1(0);
  OUTLINED_FUNCTION_1_0();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

uint64_t sub_2437C2A14()
{
  v1 = OUTLINED_FUNCTION_55();
  v2(v1);
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(v0);
  return v0;
}

void (*CloudAssets_Asset.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  type metadata accessor for CloudAssets_Asset(v0);
  return nullsub_1;
}

uint64_t CloudAssets_Asset.ID.signature.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Asset.ID.signature.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CloudAssets_Asset.ID.referenceSignature.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Asset.ID.referenceSignature.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t CloudAssets_Asset.ID.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_13();
  type metadata accessor for CloudAssets_Asset.ID(v0);
  sub_2437EB424();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_14_0();

  return v2(v1);
}

uint64_t CloudAssets_Asset.ID.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_55();
  type metadata accessor for CloudAssets_Asset.ID(v0);
  sub_2437EB424();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_141();

  return v2(v1);
}

void (*CloudAssets_Asset.ID.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  type metadata accessor for CloudAssets_Asset.ID(v0);
  return nullsub_1;
}

uint64_t CloudAssets_Asset.Protector.securityKey.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Asset.Protector.securityKey.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t CloudAssets_Asset.Protector.privacyKey.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_Asset.Protector.privacyKey.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void (*CloudAssets_Asset.Protector.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  type metadata accessor for CloudAssets_Asset.Protector(v0);
  return nullsub_1;
}

uint64_t CloudAssets_Asset.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for CloudAssets_Asset(0);
  sub_2437EB414();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for CloudAssets_Asset.Protector(0);
  v5 = OUTLINED_FUNCTION_49();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t CloudAssets_Credential.tenantName.setter()
{
  OUTLINED_FUNCTION_43();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t CloudAssets_Credential.requestorID.setter()
{
  OUTLINED_FUNCTION_43();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t CloudAssets_Credential.accessToken.setter()
{
  OUTLINED_FUNCTION_43();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CloudAssets_Credential.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_105();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_52();
  type metadata accessor for CloudAssets_Credential(v7);
  OUTLINED_FUNCTION_101();
  v8 = sub_2437EB3F4();
  OUTLINED_FUNCTION_16_3(v1);
  if (!v9)
  {
    return (*(*(v8 - 8) + 32))(a1, v1, v8);
  }

  sub_2437EB3E4();
  result = OUTLINED_FUNCTION_16_3(v1);
  if (!v9)
  {
    return sub_2437B47C4(v1, &qword_27ED867D8, &qword_2437ED980);
  }

  return result;
}

uint64_t sub_2437C3260(uint64_t a1)
{
  v2 = sub_2437EB3F4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return CloudAssets_Credential.expirationDate.setter();
}

uint64_t CloudAssets_Credential.expirationDate.setter()
{
  v2 = OUTLINED_FUNCTION_55();
  v3 = *(type metadata accessor for CloudAssets_Credential(v2) + 32);
  sub_2437B47C4(v1 + v3, &qword_27ED867D8, &qword_2437ED980);
  v4 = sub_2437EB3F4();
  OUTLINED_FUNCTION_1_0();
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void CloudAssets_Credential.expirationDate.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_130();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_44(v2);
  v3 = OUTLINED_FUNCTION_97();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_104(v7);
  v8 = sub_2437EB3F4();
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_0();
  *(v1 + 24) = v9;
  v11 = *(v10 + 64);
  *(v1 + 32) = __swift_coroFrameAllocStub(v11);
  *(v1 + 40) = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = *(type metadata accessor for CloudAssets_Credential(0) + 32);
  sub_2437C45F0();
  OUTLINED_FUNCTION_53(v7, 1, v8);
  if (v12)
  {
    sub_2437EB3E4();
    OUTLINED_FUNCTION_53(v7, 1, v8);
    if (!v12)
    {
      sub_2437B47C4(v7, &qword_27ED867D8, &qword_2437ED980);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_142();
    v14(v13);
  }

  OUTLINED_FUNCTION_131();
}

void sub_2437C354C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_150();
  v3 = *(*v2 + 12);
  v4 = (*v2)[4];
  v5 = (*v2)[5];
  v6 = (*v2)[2];
  v7 = (*v2)[3];
  v9 = **v2;
  v8 = (*v2)[1];
  if (v10)
  {
    (*(v7 + 16))((*v2)[4], v5, v6);
    sub_2437B47C4(v9 + v3, &qword_27ED867D8, &qword_2437ED980);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
    v14 = OUTLINED_FUNCTION_105();
    v15(v14);
  }

  else
  {
    sub_2437B47C4(v9 + v3, &qword_27ED867D8, &qword_2437ED980);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
  }

  free(v5);
  free(v4);
  free(v8);
  OUTLINED_FUNCTION_149();

  free(v19);
}

void (*CloudAssets_Credential.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  type metadata accessor for CloudAssets_Credential(v0);
  return nullsub_1;
}

uint64_t CloudAssets_Credential.init()@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_87();
  *(a2 + 32) = 0;
  *(a2 + 40) = v3;
  type metadata accessor for CloudAssets_Credential(0);
  sub_2437EB414();
  sub_2437EB3F4();
  v4 = OUTLINED_FUNCTION_49();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.storageReference.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.storageReference.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void CloudAssets_SimultaneousDownloadableAssets.credential.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_150();
  v2 = OUTLINED_FUNCTION_122();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44(v3);
  v4 = OUTLINED_FUNCTION_97();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_48(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_104(v8);
  *(v1 + 16) = type metadata accessor for CloudAssets_Credential(v9);
  OUTLINED_FUNCTION_1_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_121(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_60(v14);
  v16 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(v15);
  OUTLINED_FUNCTION_82(*(v16 + 32));
  OUTLINED_FUNCTION_29_0();
  if (v17)
  {
    OUTLINED_FUNCTION_108();
    *(v11 + 32) = 0;
    *(v11 + 40) = v18;
    sub_2437EB414();
    sub_2437EB3F4();
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_29_0();
    if (!v17)
    {
      sub_2437B47C4(v8, &qword_27ED867E0, &qword_2437ED988);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_120();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

uint64_t sub_2437C3A98()
{
  OUTLINED_FUNCTION_59();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_58();
  v1(v7);
  OUTLINED_FUNCTION_76();
  sub_2437C45F0();
  v8 = v0(0);
  OUTLINED_FUNCTION_53(v2, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  OUTLINED_FUNCTION_64();
  sub_2437B47C4(v11, v12, v13);
  return v10;
}

uint64_t sub_2437C3B88()
{
  OUTLINED_FUNCTION_59();
  v5 = v4(0);
  sub_2437B47C4(v1 + *(v5 + 32), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.storageReferenceSignature.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_2437B6C6C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.storageReferenceSignature.setter()
{
  OUTLINED_FUNCTION_43();
  result = sub_2437B7168(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_2437C3C9C()
{
  v0 = OUTLINED_FUNCTION_13();
  v1(v0);
  sub_2437EB424();
  OUTLINED_FUNCTION_1_0();
  v2 = OUTLINED_FUNCTION_14_0();

  return v3(v2);
}

uint64_t sub_2437C3D24()
{
  v0 = OUTLINED_FUNCTION_55();
  v1(v0);
  sub_2437EB424();
  OUTLINED_FUNCTION_1_0();
  v2 = OUTLINED_FUNCTION_141();

  return v3(v2);
}

void (*CloudAssets_SimultaneousDownloadableAssets.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(v0);
  return nullsub_1;
}

uint64_t CloudAssets_SimultaneousDownloadableAssets.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_2437EC710;
  *(a1 + 24) = xmmword_2437EC710;
  type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  sub_2437EB414();
  type metadata accessor for CloudAssets_Credential(0);
  v1 = OUTLINED_FUNCTION_49();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t CloudAssets_Signal.events.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2437C3EB8()
{
  v0 = OUTLINED_FUNCTION_13();
  v1(v0);
  sub_2437EB424();
  OUTLINED_FUNCTION_1_0();
  v2 = OUTLINED_FUNCTION_14_0();

  return v3(v2);
}

uint64_t sub_2437C3F60()
{
  v0 = OUTLINED_FUNCTION_55();
  v1(v0);
  sub_2437EB424();
  OUTLINED_FUNCTION_1_0();
  v2 = OUTLINED_FUNCTION_141();

  return v3(v2);
}

void (*CloudAssets_Signal.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  type metadata accessor for CloudAssets_Signal(v0);
  return nullsub_1;
}

unint64_t CloudAssets_Signal.EventType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t CloudAssets_Signal.EventType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_2437C4078@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAssets_Signal.EventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2437C40AC(uint64_t a1, char a2)
{
  sub_2437EBA94();
  sub_2437CBB18();
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

uint64_t sub_2437C410C()
{
  OUTLINED_FUNCTION_43();
  sub_2437CBAC0();
  v0 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E238](v0);
}

uint64_t sub_2437C4158(uint64_t a1, uint64_t a2, char a3)
{
  sub_2437EBA94();
  sub_2437CBB18();
  sub_2437EB6D4();
  return sub_2437EBAD4();
}

BOOL sub_2437C41D0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

void CloudAssets_Signal.Event.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t CloudAssets_Signal.Event.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_2437C4294()
{
  v0 = OUTLINED_FUNCTION_13();
  v1(v0);
  sub_2437EB424();
  OUTLINED_FUNCTION_1_0();
  v2 = OUTLINED_FUNCTION_14_0();

  return v3(v2);
}

uint64_t sub_2437C433C()
{
  v0 = OUTLINED_FUNCTION_55();
  v1(v0);
  sub_2437EB424();
  OUTLINED_FUNCTION_1_0();
  v2 = OUTLINED_FUNCTION_141();

  return v3(v2);
}

void (*CloudAssets_Signal.Event.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  type metadata accessor for CloudAssets_Signal.Event(v0);
  return nullsub_1;
}

uint64_t CloudAssets_Signal.Event.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  type metadata accessor for CloudAssets_Signal.Event(0);
  return sub_2437EB414();
}

uint64_t CloudAssets_Signal.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for CloudAssets_Signal(0);
  return sub_2437EB414();
}

uint64_t CloudAssets_AssetStreamHandle.asset.getter@<X0>(void *a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_105();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_48(v6);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_89();
  type metadata accessor for CloudAssets_AssetStreamHandle(0);
  sub_2437C45F0();
  type metadata accessor for CloudAssets_Asset(0);
  OUTLINED_FUNCTION_16_3(v2);
  if (v8)
  {
    *a2 = 0;
    sub_2437EB414();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    type metadata accessor for CloudAssets_Asset.Protector(0);
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_16_3(v2);
    if (!v8)
    {
      return sub_2437B47C4(v2, &qword_27ED867E8, &qword_2437ED990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
    return sub_2437C27F4();
  }

  return result;
}

uint64_t sub_2437C45B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2437C45F0()
{
  OUTLINED_FUNCTION_84();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1_0();
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);
  return v0;
}

uint64_t CloudAssets_AssetStreamHandle.asset.setter()
{
  v1 = OUTLINED_FUNCTION_55();
  v2 = type metadata accessor for CloudAssets_AssetStreamHandle(v1);
  sub_2437B47C4(v0 + *(v2 + 28), &qword_27ED867E8, &qword_2437ED990);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_147();
  type metadata accessor for CloudAssets_Asset(0);
  v3 = OUTLINED_FUNCTION_50();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void CloudAssets_AssetStreamHandle.asset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_150();
  v2 = OUTLINED_FUNCTION_122();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44(v3);
  v4 = OUTLINED_FUNCTION_97();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_48(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_104(v8);
  *(v1 + 16) = type metadata accessor for CloudAssets_Asset(v9);
  OUTLINED_FUNCTION_1_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_121(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_60(v14);
  v16 = type metadata accessor for CloudAssets_AssetStreamHandle(v15);
  OUTLINED_FUNCTION_82(*(v16 + 28));
  OUTLINED_FUNCTION_29_0();
  if (v17)
  {
    *v11 = 0;
    sub_2437EB414();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    type metadata accessor for CloudAssets_Asset.Protector(0);
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_29_0();
    if (!v17)
    {
      sub_2437B47C4(v8, &qword_27ED867E8, &qword_2437ED990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_120();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

uint64_t sub_2437C48DC()
{
  OUTLINED_FUNCTION_59();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_58();
  v1(v7);
  OUTLINED_FUNCTION_76();
  sub_2437C45F0();
  v8 = v0(0);
  OUTLINED_FUNCTION_53(v2, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  OUTLINED_FUNCTION_64();
  sub_2437B47C4(v11, v12, v13);
  return v10;
}

uint64_t sub_2437C49CC()
{
  OUTLINED_FUNCTION_59();
  v5 = v4(0);
  sub_2437B47C4(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_2437C4A60@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867E0, &qword_2437ED988);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_89();
  a1(0);
  sub_2437C45F0();
  type metadata accessor for CloudAssets_Credential(0);
  OUTLINED_FUNCTION_16_3(v2);
  if (!v7)
  {
    return sub_2437C27F4();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  sub_2437EB414();
  sub_2437EB3F4();
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  result = OUTLINED_FUNCTION_16_3(v2);
  if (!v7)
  {
    return sub_2437B47C4(v2, &qword_27ED867E0, &qword_2437ED988);
  }

  return result;
}

uint64_t sub_2437C4C14()
{
  v1 = OUTLINED_FUNCTION_55();
  v3 = v2(v1);
  sub_2437B47C4(v0 + *(v3 + 32), &qword_27ED867E0, &qword_2437ED988);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_147();
  type metadata accessor for CloudAssets_Credential(0);
  v4 = OUTLINED_FUNCTION_50();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void CloudAssets_AssetStreamHandle.credential.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_150();
  v2 = OUTLINED_FUNCTION_122();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44(v3);
  v4 = OUTLINED_FUNCTION_97();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_48(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_104(v8);
  *(v1 + 16) = type metadata accessor for CloudAssets_Credential(v9);
  OUTLINED_FUNCTION_1_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_121(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_60(v14);
  v16 = type metadata accessor for CloudAssets_AssetStreamHandle(v15);
  OUTLINED_FUNCTION_82(*(v16 + 32));
  OUTLINED_FUNCTION_29_0();
  if (v17)
  {
    OUTLINED_FUNCTION_108();
    *(v11 + 32) = 0;
    *(v11 + 40) = v18;
    sub_2437EB414();
    sub_2437EB3F4();
    OUTLINED_FUNCTION_54();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_29_0();
    if (!v17)
    {
      sub_2437B47C4(v8, &qword_27ED867E0, &qword_2437ED988);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_120();
    sub_2437C27F4();
  }

  OUTLINED_FUNCTION_149();
}

void sub_2437C4DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_69();
  v24 = v23;
  v25 = v22;
  v27 = *(*v26 + 10);
  v28 = (*v26)[3];
  v29 = (*v26)[4];
  v30 = (*v26)[2];
  v41 = (*v26)[1];
  v31 = **v26;
  if (v32)
  {
    sub_2437C29BC();
    sub_2437B47C4(v31 + v27, v25, v24);
    sub_2437C27F4();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v30);
    sub_2437C2A14();
  }

  else
  {
    sub_2437B47C4(v31 + v27, v22, v23);
    sub_2437C27F4();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v30);
  }

  free(v29);
  free(v28);
  free(v41);
  OUTLINED_FUNCTION_68();

  free(v39);
}

void (*CloudAssets_AssetStreamHandle.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_55();
  type metadata accessor for CloudAssets_AssetStreamHandle(v0);
  return nullsub_1;
}

uint64_t CloudAssets_AssetStreamHandle.init()()
{
  OUTLINED_FUNCTION_87();
  type metadata accessor for CloudAssets_AssetStreamHandle(0);
  sub_2437EB414();
  type metadata accessor for CloudAssets_Asset(0);
  OUTLINED_FUNCTION_54();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for CloudAssets_Credential(0);
  v6 = OUTLINED_FUNCTION_49();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void sub_2437C50BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_69();
  v7 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v7, qword_27ED8BE90);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3();
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_41(v10, xmmword_2437ED930);
  *v9 = "id";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v12 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0();
  v14 = *(v13 + 104);
  v15 = OUTLINED_FUNCTION_88();
  v14(v15);
  v16 = OUTLINED_FUNCTION_19_2();
  v17 = OUTLINED_FUNCTION_102(v16, "protector");
  (v14)(v17, v11, v12);
  v18 = OUTLINED_FUNCTION_22_1();
  v19 = OUTLINED_FUNCTION_80(v18, "size");
  v14(v19);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void CloudAssets_Asset.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_61();
        sub_2437EB4B4();
        break;
      case 2:
        type metadata accessor for CloudAssets_Asset(0);
        type metadata accessor for CloudAssets_Asset.Protector(0);
        OUTLINED_FUNCTION_4_4();
        v4 = &protocol conformance descriptor for CloudAssets_Asset.Protector;
        v5 = &unk_27ED868D8;
LABEL_9:
        sub_2437C98AC(v5, v3, v4);
        OUTLINED_FUNCTION_37();
        sub_2437EB4E4();
        break;
      case 1:
        type metadata accessor for CloudAssets_Asset(0);
        type metadata accessor for CloudAssets_Asset.ID(0);
        OUTLINED_FUNCTION_5_1();
        v4 = &protocol conformance descriptor for CloudAssets_Asset.ID;
        v5 = &unk_27ED868C0;
        goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_15_1();
}

void CloudAssets_Asset.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_76();
  sub_2437C542C();
  if (!v0)
  {
    OUTLINED_FUNCTION_34_0();
    sub_2437C5550();
    if (*v1)
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_76();
      sub_2437EB564();
    }

    type metadata accessor for CloudAssets_Asset(0);
    OUTLINED_FUNCTION_27_0();
  }
}

void sub_2437C542C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_62(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_51();
  type metadata accessor for CloudAssets_Asset.ID(v7);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = OUTLINED_FUNCTION_58();
  type metadata accessor for CloudAssets_Asset(v9);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_123();
  if (v10)
  {
    sub_2437B47C4(v0, &qword_27ED867C8, &qword_2437ED970);
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    sub_2437C27F4();
    OUTLINED_FUNCTION_5_1();
    sub_2437C98AC(v11, v12, &protocol conformance descriptor for CloudAssets_Asset.ID);
    v13 = OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_100(v13, 1, v14, v15);
    OUTLINED_FUNCTION_74();
    sub_2437C2A14();
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

void sub_2437C5550()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_62(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_51();
  type metadata accessor for CloudAssets_Asset.Protector(v7);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = OUTLINED_FUNCTION_58();
  type metadata accessor for CloudAssets_Asset(v9);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_123();
  if (v10)
  {
    sub_2437B47C4(v0, &qword_27ED867D0, &qword_2437ED978);
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    sub_2437C27F4();
    OUTLINED_FUNCTION_4_4();
    sub_2437C98AC(v11, v12, &protocol conformance descriptor for CloudAssets_Asset.Protector);
    v13 = OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_100(v13, 2, v14, v15);
    OUTLINED_FUNCTION_73();
    sub_2437C2A14();
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

void static CloudAssets_Asset.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_130();
  v14 = v13;
  v16 = v15;
  v51 = type metadata accessor for CloudAssets_Asset.Protector(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v48 = (v19 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D0, &qword_2437ED978);
  OUTLINED_FUNCTION_48(v20);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_143(v22, v46);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867F0, &qword_2437ED998);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v23);
  v25 = OUTLINED_FUNCTION_124(v24, v47);
  type metadata accessor for CloudAssets_Asset.ID(v25);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867C8, &qword_2437ED970);
  OUTLINED_FUNCTION_48(v27);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_89();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867F8, &qword_2437ED9A0) - 8;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v30);
  v31 = OUTLINED_FUNCTION_144();
  type metadata accessor for CloudAssets_Asset(v31);
  v32 = *(v29 + 56);
  sub_2437C45F0();
  sub_2437C45F0();
  OUTLINED_FUNCTION_16_3(v12);
  if (v33)
  {
    OUTLINED_FUNCTION_16_3(v12 + v32);
    if (v33)
    {
      sub_2437B47C4(v12, &qword_27ED867C8, &qword_2437ED970);
      goto LABEL_11;
    }

LABEL_9:
    v34 = &qword_27ED867F8;
    v35 = &qword_2437ED9A0;
    v36 = v12;
LABEL_28:
    sub_2437B47C4(v36, v34, v35);
    goto LABEL_29;
  }

  sub_2437C45F0();
  OUTLINED_FUNCTION_16_3(v12 + v32);
  if (v33)
  {
    OUTLINED_FUNCTION_74();
    sub_2437C2A14();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_1();
  sub_2437C27F4();
  v37 = static CloudAssets_Asset.ID.== infix(_:_:)();
  sub_2437C2A14();
  sub_2437C2A14();
  sub_2437B47C4(v12, &qword_27ED867C8, &qword_2437ED970);
  if ((v37 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  v38 = *(v50 + 48);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_53(v52, 1, v51);
  if (v33)
  {
    OUTLINED_FUNCTION_53(v52 + v38, 1, v51);
    if (v33)
    {
      sub_2437B47C4(v52, &qword_27ED867D0, &qword_2437ED978);
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  sub_2437C45F0();
  OUTLINED_FUNCTION_53(v52 + v38, 1, v51);
  if (v42)
  {
    OUTLINED_FUNCTION_73();
    sub_2437C2A14();
LABEL_21:
    v34 = &qword_27ED867F0;
    v35 = &qword_2437ED998;
LABEL_27:
    v36 = v52;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_9_3();
  sub_2437C27F4();
  if ((MEMORY[0x245D3FA00](*v49, v49[1], *v48, v48[1]) & 1) == 0 || (MEMORY[0x245D3FA00](v49[2], v49[3], v48[2], v48[3]) & 1) == 0)
  {
    sub_2437C2A14();
    sub_2437C2A14();
    v34 = &qword_27ED867D0;
    v35 = &qword_2437ED978;
    goto LABEL_27;
  }

  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  sub_2437C98AC(v43, v44, MEMORY[0x277D216D0]);
  v45 = sub_2437EB6E4();
  sub_2437C2A14();
  sub_2437C2A14();
  sub_2437B47C4(v52, &qword_27ED867D0, &qword_2437ED978);
  if ((v45 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  if (*v16 != *v14)
  {
LABEL_29:
    v41 = 0;
    goto LABEL_30;
  }

  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  sub_2437C98AC(v39, v40, MEMORY[0x277D216D0]);
  v41 = sub_2437EB6E4();
LABEL_30:
  OUTLINED_FUNCTION_134(v41);
  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437C5C50()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_0_5();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Asset);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C5CB4()
{
  OUTLINED_FUNCTION_0_5();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Asset);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C5D10()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_0_5();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Asset);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C5DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_69();
  v8 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v8, qword_27ED8BEA8);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3();
  v9 = OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_81(v9, xmmword_2437ED940);
  v11 = v7 + v10;
  OUTLINED_FUNCTION_96();
  *v11 = "partition";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v12 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0();
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_133();
  v14();
  v15 = OUTLINED_FUNCTION_19_2();
  v16 = OUTLINED_FUNCTION_102(v15, "owner_id");
  (v14)(v16, *MEMORY[0x277D21888], v12);
  v17 = OUTLINED_FUNCTION_22_1();
  *v17 = "signature";
  *(v17 + 1) = 9;
  v17[16] = 2;
  OUTLINED_FUNCTION_133();
  v14();
  v18 = OUTLINED_FUNCTION_42();
  v19 = OUTLINED_FUNCTION_80(v18, "reference_signature");
  (v14)(v19);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t CloudAssets_Asset.ID.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_132();
  while (1)
  {
    result = sub_2437EB484();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_64();
        sub_2437EB4C4();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_64();
        sub_2437EB4A4();
        break;
      default:
        continue;
    }
  }
}

uint64_t CloudAssets_Asset.ID.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_20_1();
  if (!v1 || (OUTLINED_FUNCTION_13_3(), result = sub_2437EB574(), !v0))
  {
    OUTLINED_FUNCTION_20_1();
    if (!v3 || (OUTLINED_FUNCTION_13_3(), result = sub_2437EB574(), !v0))
    {
      v4 = OUTLINED_FUNCTION_103();
      if (sub_2437C6100(v4, v5) || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_13_3(), result = sub_2437EB554(), !v0))
      {
        v6 = OUTLINED_FUNCTION_103();
        if (sub_2437C6100(v6, v7) || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_13_3(), result = sub_2437EB554(), !v0))
        {
          type metadata accessor for CloudAssets_Asset.ID(0);
          return OUTLINED_FUNCTION_27_0();
        }
      }
    }
  }

  return result;
}

BOOL sub_2437C6100(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t static CloudAssets_Asset.ID.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_2437EBA14() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_2437EBA14() & 1) == 0 || (MEMORY[0x245D3FA00](v1[4], v1[5], v0[4], v0[5]) & 1) == 0 || (MEMORY[0x245D3FA00](v1[6], v1[7], v0[6], v0[7]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CloudAssets_Asset.ID(0);
  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  v7 = sub_2437C98AC(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_39(v7) & 1;
}

uint64_t sub_2437C62E0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5_1();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Asset.ID);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C6344()
{
  OUTLINED_FUNCTION_5_1();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Asset.ID);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C63A0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5_1();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Asset.ID);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

uint64_t sub_2437C642C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x245D3FDF0](a2, a3);
  *a4 = 0xD000000000000011;
  *a5 = 0x80000002437F3070;
  return result;
}

void sub_2437C64B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_69();
  v8 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v8, qword_27ED8BEC0);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3();
  v9 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_41(v9, xmmword_2437ED950);
  *v7 = "security_key";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0();
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_88();
  v11(v12);
  v13 = OUTLINED_FUNCTION_19_2();
  v14 = OUTLINED_FUNCTION_80(v13, "privacy_key");
  v11(v14);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t CloudAssets_Asset.Protector.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_132();
  while (1)
  {
    result = sub_2437EB484();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_64();
      sub_2437EB4A4();
    }
  }

  return result;
}

uint64_t CloudAssets_Asset.Protector.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_13_3();
      result = sub_2437EB554();
      if (!v1)
      {
LABEL_8:
        v7 = v0[2];
        v8 = v0[3];
        switch(v8 >> 62)
        {
          case 1uLL:
            v9 = v7;
            v10 = v7 >> 32;
            goto LABEL_13;
          case 2uLL:
            v9 = *(v7 + 16);
            v10 = *(v7 + 24);
LABEL_13:
            if (v9 != v10)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          case 3uLL:
            goto LABEL_15;
          default:
            if ((v8 & 0xFF000000000000) == 0)
            {
              goto LABEL_15;
            }

LABEL_14:
            OUTLINED_FUNCTION_13_3();
            result = sub_2437EB554();
            if (!v1)
            {
LABEL_15:
              type metadata accessor for CloudAssets_Asset.Protector(0);
              result = OUTLINED_FUNCTION_27_0();
            }

            break;
        }
      }

      return result;
  }
}

uint64_t static CloudAssets_Asset.Protector.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  if ((MEMORY[0x245D3FA00](*v2, v1[1], *v0, v0[1]) & 1) == 0 || (MEMORY[0x245D3FA00](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CloudAssets_Asset.Protector(0);
  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  v5 = sub_2437C98AC(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_39(v5) & 1;
}

uint64_t sub_2437C68E8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4_4();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Asset.Protector);
  v2 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2437C694C()
{
  OUTLINED_FUNCTION_4_4();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Asset.Protector);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C69A8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4_4();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Asset.Protector);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C6A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_69();
  v8 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v8, qword_27ED8BED8);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3();
  v9 = OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_81(v9, xmmword_2437ED940);
  v11 = v7 + v10;
  OUTLINED_FUNCTION_96();
  *v11 = "tenant_name";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0();
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_94();
  v13();
  v14 = OUTLINED_FUNCTION_19_2();
  *v14 = "requestor_id";
  v14[1] = 12;
  v15 = OUTLINED_FUNCTION_79(v14);
  (v13)(v15);
  v16 = OUTLINED_FUNCTION_22_1();
  *v16 = "access_token";
  *(v16 + 1) = 12;
  v17 = OUTLINED_FUNCTION_79(v16);
  (v13)(v17);
  v18 = OUTLINED_FUNCTION_42();
  *v18 = "expiration_date";
  *(v18 + 1) = 15;
  v18[16] = 2;
  OUTLINED_FUNCTION_94();
  v13();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t CloudAssets_Credential.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_61();
        sub_2437EB4C4();
        break;
      case 4:
        type metadata accessor for CloudAssets_Credential(0);
        sub_2437EB3F4();
        OUTLINED_FUNCTION_24();
        sub_2437C98AC(&qword_27ED869D8, v3, MEMORY[0x277D21568]);
        OUTLINED_FUNCTION_37();
        sub_2437EB4E4();
        break;
      default:
        continue;
    }
  }
}

void CloudAssets_Credential.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_20_1();
  if (!v1 || (OUTLINED_FUNCTION_13_3(), sub_2437EB574(), !v0))
  {
    OUTLINED_FUNCTION_20_1();
    if (!v2 || (OUTLINED_FUNCTION_13_3(), sub_2437EB574(), !v0))
    {
      OUTLINED_FUNCTION_20_1();
      if (!v3 || (OUTLINED_FUNCTION_13_3(), sub_2437EB574(), !v0))
      {
        OUTLINED_FUNCTION_34_0();
        sub_2437C6D98();
        if (!v0)
        {
          type metadata accessor for CloudAssets_Credential(0);
          OUTLINED_FUNCTION_27_0();
        }
      }
    }
  }
}

void sub_2437C6D98()
{
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_48(v1);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_51();
  v3 = sub_2437EB3F4();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  type metadata accessor for CloudAssets_Credential(0);
  OUTLINED_FUNCTION_77();
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    sub_2437B47C4(v0, &qword_27ED867D8, &qword_2437ED980);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_97();
    v11(v10);
    OUTLINED_FUNCTION_24();
    sub_2437C98AC(v12, v13, MEMORY[0x277D21568]);
    sub_2437EB594();
    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_1();
}

void static CloudAssets_Credential.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_43();
  v21 = sub_2437EB3F4();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED867D8, &qword_2437ED980);
  OUTLINED_FUNCTION_48(v28);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v29);
  v31 = &v47 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED86820, &qword_2437ED9A8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_109();
  v34 = *v19 == *v18 && v19[1] == v18[1];
  if (!v34 && (sub_2437EBA14() & 1) == 0)
  {
    goto LABEL_25;
  }

  v35 = v19[2] == v18[2] && v19[3] == v18[3];
  if (!v35 && (sub_2437EBA14() & 1) == 0)
  {
    goto LABEL_25;
  }

  v36 = v19[4] == v18[4] && v19[5] == v18[5];
  if (!v36 && (sub_2437EBA14() & 1) == 0)
  {
    goto LABEL_25;
  }

  v48 = v23;
  v47 = type metadata accessor for CloudAssets_Credential(0);
  v37 = *(v32 + 48);
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_53(v20, 1, v21);
  if (v34)
  {
    OUTLINED_FUNCTION_53(v20 + v37, 1, v21);
    if (v34)
    {
      sub_2437B47C4(v20, &qword_27ED867D8, &qword_2437ED980);
LABEL_28:
      sub_2437EB424();
      OUTLINED_FUNCTION_3_4();
      sub_2437C98AC(v45, v46, MEMORY[0x277D216D0]);
      v39 = sub_2437EB6E4();
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_2437C45F0();
  OUTLINED_FUNCTION_53(v20 + v37, 1, v21);
  if (v38)
  {
    (*(v48 + 8))(v31, v21);
LABEL_24:
    sub_2437B47C4(v20, &qword_27ED86820, &qword_2437ED9A8);
    goto LABEL_25;
  }

  v40 = v48;
  (*(v48 + 32))(v27, v20 + v37, v21);
  OUTLINED_FUNCTION_24();
  sub_2437C98AC(v41, v42, MEMORY[0x277D21578]);
  OUTLINED_FUNCTION_138();
  v43 = sub_2437EB6E4();
  v44 = *(v40 + 8);
  v44(v27, v21);
  v44(v31, v21);
  sub_2437B47C4(v20, &qword_27ED867D8, &qword_2437ED980);
  if (v43)
  {
    goto LABEL_28;
  }

LABEL_25:
  v39 = 0;
LABEL_26:
  OUTLINED_FUNCTION_134(v39);
  OUTLINED_FUNCTION_131();
}

uint64_t sub_2437C7364(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_1_6();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_Credential);
  v3 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v3);
}

uint64_t sub_2437C73CC()
{
  OUTLINED_FUNCTION_1_6();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Credential);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C7428(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_1_6();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_Credential);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C74A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_69();
  v8 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v8, qword_27ED8BEF0);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3();
  v9 = OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_81(v9, xmmword_2437ED940);
  v11 = v7 + v10;
  OUTLINED_FUNCTION_96();
  *v11 = "assets";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v12 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0();
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_133();
  v14();
  v15 = OUTLINED_FUNCTION_19_2();
  v16 = OUTLINED_FUNCTION_102(v15, "storage_reference");
  (v14)(v16, *MEMORY[0x277D21888], v12);
  v17 = OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_102(v17, "credential");
  OUTLINED_FUNCTION_133();
  v14();
  v18 = OUTLINED_FUNCTION_42();
  v19 = OUTLINED_FUNCTION_80(v18, "storage_reference_signature");
  (v14)(v19);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

void CloudAssets_SimultaneousDownloadableAssets.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for CloudAssets_Asset(0);
        OUTLINED_FUNCTION_0_5();
        sub_2437C98AC(&qword_27ED86838, v3, &protocol conformance descriptor for CloudAssets_Asset);
        OUTLINED_FUNCTION_37();
        sub_2437EB4D4();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_61();
        sub_2437EB4A4();
        break;
      case 3:
        type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
        type metadata accessor for CloudAssets_Credential(0);
        OUTLINED_FUNCTION_1_6();
        sub_2437C98AC(&qword_27ED868F0, v4, &protocol conformance descriptor for CloudAssets_Credential);
        OUTLINED_FUNCTION_37();
        sub_2437EB4E4();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_15_1();
}

void CloudAssets_SimultaneousDownloadableAssets.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  if (!*(*v0 + 16) || (type metadata accessor for CloudAssets_Asset(0), OUTLINED_FUNCTION_0_5(), sub_2437C98AC(v3, v4, &protocol conformance descriptor for CloudAssets_Asset), OUTLINED_FUNCTION_56(), sub_2437EB584(), !v1))
  {
    v5 = OUTLINED_FUNCTION_103();
    if (sub_2437C6100(v5, v6) || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_13_3(), sub_2437EB554(), !v1))
    {
      OUTLINED_FUNCTION_34_0();
      sub_2437C8FB4();
      if (!v1)
      {
        if (!sub_2437C6100(*(v2 + 24), *(v2 + 32)))
        {
          OUTLINED_FUNCTION_13_3();
          sub_2437EB554();
        }

        type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
        OUTLINED_FUNCTION_27_0();
      }
    }
  }
}

uint64_t sub_2437C7C20(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7_3();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_SimultaneousDownloadableAssets);
  v3 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v3);
}

uint64_t sub_2437C7C84()
{
  OUTLINED_FUNCTION_7_3();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_SimultaneousDownloadableAssets);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C7CE0(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7_3();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_SimultaneousDownloadableAssets);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

uint64_t sub_2437C7D5C()
{
  v0 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v0, qword_27ED8BF08);
  v1 = OUTLINED_FUNCTION_22();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2437ED960;
  v6 = v5 + v4 + v3[14];
  *(v5 + v4) = 1;
  *v6 = "events";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0();
  (*(v8 + 104))(v6, v7);
  return sub_2437EB5B4();
}

uint64_t CloudAssets_Signal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for CloudAssets_Signal.Event(0);
      OUTLINED_FUNCTION_2_4();
      sub_2437C98AC(&qword_27ED86850, v3, &protocol conformance descriptor for CloudAssets_Signal.Event);
      OUTLINED_FUNCTION_37();
      sub_2437EB4D4();
    }
  }

  return result;
}

uint64_t CloudAssets_Signal.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  if (!*(*v0 + 16) || (type metadata accessor for CloudAssets_Signal.Event(0), OUTLINED_FUNCTION_2_4(), sub_2437C98AC(v2, v3, &protocol conformance descriptor for CloudAssets_Signal.Event), OUTLINED_FUNCTION_56(), result = sub_2437EB584(), !v1))
  {
    type metadata accessor for CloudAssets_Signal(0);
    return OUTLINED_FUNCTION_27_0();
  }

  return result;
}

uint64_t static CloudAssets_Signal.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_84();
  if ((sub_2437CB824(*v1, *v2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CloudAssets_Signal(0);
  sub_2437EB424();
  OUTLINED_FUNCTION_3_4();
  v5 = sub_2437C98AC(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_39(v5) & 1;
}

uint64_t sub_2437C8160(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_6_2();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_Signal);
  v3 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v3);
}

uint64_t sub_2437C81C4()
{
  OUTLINED_FUNCTION_6_2();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Signal);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C8220(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_6_2();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_Signal);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C8284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_69();
  v8 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v8, qword_27ED8BF20);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3();
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_65();
  *(v11 + 16) = xmmword_2437ED950;
  v12 = (v11 + v7);
  v13 = v11 + v7 + dword_27ED8BF58;
  *v12 = 0;
  *v13 = "STORAGE_CONTAINER_UPLOAD_START";
  *(v13 + 8) = 30;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0();
  v17 = *(v16 + 104);
  v18 = OUTLINED_FUNCTION_88();
  v17(v18);
  v19 = v12 + v10 + dword_27ED8BF58;
  *(v12 + v10) = 1;
  v20 = OUTLINED_FUNCTION_102(v19, "ALL_UPLOADS_FINISH");
  (v17)(v20, v14, v15);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t sub_2437C840C()
{
  result = MEMORY[0x245D3FDF0](0x746E6576452ELL, 0xE600000000000000);
  qword_27ED8BE80 = 0xD000000000000012;
  *algn_27ED8BE88 = 0x80000002437F30E0;
  return result;
}

uint64_t sub_2437C8498(void *a1, uint64_t *a2, void *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

void sub_2437C84EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_69();
  v8 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v8, qword_27ED8BF38);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3();
  v9 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_41(v9, xmmword_2437ED950);
  *v7 = "type";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0();
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_88();
  (v11)(v12);
  v13 = OUTLINED_FUNCTION_19_2();
  *v13 = "container_index";
  *(v13 + 8) = 15;
  *(v13 + 16) = 2;
  v11();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t CloudAssets_Signal.Event.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_61();
      sub_2437EB4B4();
    }

    else if (result == 1)
    {
      sub_2437CBAC0();
      OUTLINED_FUNCTION_37();
      sub_2437EB494();
    }
  }

  return result;
}

uint64_t CloudAssets_Signal.Event.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_21_0();
  if (!*v0 || (sub_2437CBAC0(), OUTLINED_FUNCTION_56(), result = sub_2437EB544(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_56(), OUTLINED_FUNCTION_76(), result = sub_2437EB564(), !v1))
    {
      type metadata accessor for CloudAssets_Signal.Event(0);
      return OUTLINED_FUNCTION_27_0();
    }
  }

  return result;
}

uint64_t static CloudAssets_Signal.Event.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_84();
  v5 = *v3;
  v6 = *v4;
  if (*(v3 + 8))
  {
    v5 = *v3 != 0;
  }

  if (*(v4 + 8) == 1)
  {
    if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (*(v2 + 16) == *(v1 + 16))
  {
    type metadata accessor for CloudAssets_Signal.Event(0);
    sub_2437EB424();
    OUTLINED_FUNCTION_3_4();
    v9 = sub_2437C98AC(v7, v8, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_39(v9) & 1;
  }

  return 0;
}

uint64_t sub_2437C88F4(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_2_4();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_Signal.Event);
  v3 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x28217E230](v3);
}

uint64_t sub_2437C8958()
{
  OUTLINED_FUNCTION_2_4();
  sub_2437C98AC(v0, v1, &protocol conformance descriptor for CloudAssets_Signal.Event);
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2437C89B4(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_2_4();
  sub_2437C98AC(v1, v2, &protocol conformance descriptor for CloudAssets_Signal.Event);
  OUTLINED_FUNCTION_18_1();

  return sub_2437EB534();
}

void sub_2437C8A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_69();
  v8 = sub_2437EB5C4();
  __swift_allocate_value_buffer(v8, &qword_27ED8BF50);
  OUTLINED_FUNCTION_33_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869C8, &qword_2437EE7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED869D0, &qword_2437EE7B8);
  OUTLINED_FUNCTION_17_3();
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_81(v11, xmmword_2437ED940);
  v13 = v7 + v12;
  OUTLINED_FUNCTION_96();
  *v13 = "asset";
  *(v13 + 8) = 5;
  *(v13 + 16) = 2;
  sub_2437EB5A4();
  OUTLINED_FUNCTION_1_0();
  v15 = *(v14 + 104);
  OUTLINED_FUNCTION_94();
  v15();
  v16 = OUTLINED_FUNCTION_19_2();
  *v16 = "credential";
  v16[1] = 10;
  v17 = OUTLINED_FUNCTION_79(v16);
  (v15)(v17);
  v18 = OUTLINED_FUNCTION_22_1();
  *v18 = "type";
  *(v18 + 1) = 4;
  v19 = OUTLINED_FUNCTION_79(v18);
  (v15)(v19);
  v20 = (v7 + 3 * v10);
  v21 = v20 + qword_27ED8BF88;
  *v20 = 4;
  *v21 = "applicationID";
  *(v21 + 1) = 13;
  v21[16] = 2;
  OUTLINED_FUNCTION_94();
  v15();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
}

uint64_t sub_2437C8BF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2437EB5C4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void CloudAssets_AssetStreamHandle.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_15_2();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_90();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for CloudAssets_AssetStreamHandle(0);
        type metadata accessor for CloudAssets_Asset(0);
        OUTLINED_FUNCTION_0_5();
        v4 = &protocol conformance descriptor for CloudAssets_Asset;
        v5 = &qword_27ED86838;
        goto LABEL_8;
      case 2:
        type metadata accessor for CloudAssets_AssetStreamHandle(0);
        type metadata accessor for CloudAssets_Credential(0);
        OUTLINED_FUNCTION_1_6();
        v4 = &protocol conformance descriptor for CloudAssets_Credential;
        v5 = &qword_27ED868F0;
LABEL_8:
        sub_2437C98AC(v5, v3, v4);
        OUTLINED_FUNCTION_37();
        sub_2437EB4E4();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_61();
        sub_2437EB4C4();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_15_1();
}