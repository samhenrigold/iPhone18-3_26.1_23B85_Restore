unint64_t sub_24881F778()
{
  result = qword_27EEAA588;
  if (!qword_27EEAA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA588);
  }

  return result;
}

uint64_t sub_24881F7CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24881F834()
{
  result = qword_27EEAA590;
  if (!qword_27EEAA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA590);
  }

  return result;
}

unint64_t sub_24881F888()
{
  result = qword_27EEAA5A0;
  if (!qword_27EEAA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA5A0);
  }

  return result;
}

unint64_t sub_24881F8DC()
{
  result = qword_27EEAA5B0;
  if (!qword_27EEAA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA5B0);
  }

  return result;
}

uint64_t SessionRecoveryData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA5B8, &qword_24882F360);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v39 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA5C0, &qword_24882F368);
  v45 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA5C8, &qword_24882F370);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA5D0, &unk_24882F378);
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for SessionRecoveryData(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24881F778();
  v21 = v54;
  sub_24882B558();
  if (!v21)
  {
    v40 = v17;
    v41 = v14;
    v23 = v49;
    v22 = v50;
    v54 = v19;
    v42 = v11;
    v25 = v51;
    v24 = v52;
    v26 = sub_24882B428();
    v27 = (2 * *(v26 + 16)) | 1;
    v56 = v26;
    v57 = v26 + 32;
    v58 = 0;
    v59 = v27;
    v28 = sub_2487FF2E4();
    if (v28 == 3 || v58 != v59 >> 1)
    {
      v32 = sub_24882B2E8();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60);
      *v34 = v42;
      sub_24882B3C8();
      sub_24882B2D8();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v53 + 8))(v10, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28)
      {
        if (v28 == 1)
        {
          v60 = 1;
          sub_24881F888();
          v29 = v22;
          sub_24882B3B8();
          v30 = v53;
          type metadata accessor for InSessionRecoveryData(0);
          sub_24881E87C(&qword_27EEAA5E0, type metadata accessor for InSessionRecoveryData, &protocol conformance descriptor for InSessionRecoveryData);
          v31 = v40;
          sub_24882B418();
          (*(v45 + 8))(v29, v25);
        }

        else
        {
          v60 = 2;
          sub_24881F834();
          sub_24882B3B8();
          v30 = v53;
          type metadata accessor for DescentSummary(0);
          sub_24881E87C(&qword_27EEAA5D8, type metadata accessor for DescentSummary, "A̠9 e");
          v31 = v41;
          v38 = v47;
          v37 = v48;
          sub_24882B418();
          (*(v46 + 8))(v37, v38);
        }

        (*(v30 + 8))(v10, v8);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v36 = v54;
        sub_24881F7CC(v31, v54, type metadata accessor for SessionRecoveryData);
      }

      else
      {
        v60 = 0;
        sub_24881F8DC();
        sub_24882B3B8();
        (*(v43 + 8))(v23, v44);
        (*(v53 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v36 = v54;
        swift_storeEnumTagMultiPayload();
      }

      sub_24881F7CC(v36, v24, type metadata accessor for SessionRecoveryData);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v55);
}

uint64_t sub_248820104(uint64_t a1)
{
  result = sub_24882ABE8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UnderwaterTime(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2488201A4(uint64_t a1)
{
  result = type metadata accessor for InSessionRecoveryData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DescentSummary(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InSessionRecoveryData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InSessionRecoveryData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2488203AC()
{
  result = qword_27EEAA608;
  if (!qword_27EEAA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA608);
  }

  return result;
}

unint64_t sub_248820404()
{
  result = qword_27EEAA610;
  if (!qword_27EEAA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA610);
  }

  return result;
}

unint64_t sub_24882045C()
{
  result = qword_27EEAA618;
  if (!qword_27EEAA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA618);
  }

  return result;
}

unint64_t sub_2488204B4()
{
  result = qword_27EEAA620;
  if (!qword_27EEAA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA620);
  }

  return result;
}

unint64_t sub_24882050C()
{
  result = qword_27EEAA628;
  if (!qword_27EEAA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA628);
  }

  return result;
}

unint64_t sub_248820564()
{
  result = qword_27EEAA630;
  if (!qword_27EEAA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA630);
  }

  return result;
}

unint64_t sub_2488205BC()
{
  result = qword_27EEAA638;
  if (!qword_27EEAA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA638);
  }

  return result;
}

unint64_t sub_248820614()
{
  result = qword_27EEAA640;
  if (!qword_27EEAA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA640);
  }

  return result;
}

unint64_t sub_24882066C()
{
  result = qword_27EEAA648;
  if (!qword_27EEAA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA648);
  }

  return result;
}

unint64_t sub_2488206C4()
{
  result = qword_27EEAA650;
  if (!qword_27EEAA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA650);
  }

  return result;
}

unint64_t sub_24882071C()
{
  result = qword_27EEAA658;
  if (!qword_27EEAA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA658);
  }

  return result;
}

unint64_t sub_248820774()
{
  result = qword_27EEAA660;
  if (!qword_27EEAA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA660);
  }

  return result;
}

unint64_t sub_2488207CC()
{
  result = qword_27EEAA668;
  if (!qword_27EEAA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA668);
  }

  return result;
}

unint64_t sub_248820824()
{
  result = qword_27EEAA670;
  if (!qword_27EEAA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA670);
  }

  return result;
}

uint64_t sub_248820878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955;
  if (v4 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461777265646E75 && a2 == 0xEE00656D69547265 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x687470654478616DLL && a2 == 0xE800000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000248830B10 == a2 || (sub_24882B4B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000248830CE0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24882B4B8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_248820A40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69737365536E69 && a2 == 0xE90000000000006ELL || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24882B4B8();

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

uint64_t sub_248820B6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LastDive.dive.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_248820C10(a1, v1);
}

uint64_t sub_248820C10(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t LastDive.graphData.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_248820CB0@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_248820D38(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24882AD18();
}

uint64_t HealthKitProvider.maxDepth.setter(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24882AD18();
}

uint64_t (*HealthKitProvider.maxDepth.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24882ACF8();
  return sub_248820EE0;
}

uint64_t sub_248820F00(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA688, &qword_24882FA20);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t HealthKitProvider.$maxDepth.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA688, &qword_24882FA20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*HealthKitProvider.$maxDepth.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA688, &qword_24882FA20);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__maxDepth;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  sub_24882ACD8();
  swift_endAccess();
  return sub_24882132C;
}

uint64_t sub_248821344()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();
}

uint64_t sub_2488213B4@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24882143C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24882AD18();
}

uint64_t HealthKitProvider.minTemperature.setter(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24882AD18();
}

uint64_t (*HealthKitProvider.minTemperature.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24882ACF8();
  return sub_248825EDC;
}

uint64_t sub_248821600(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6A0, &qword_24882FA78);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t HealthKitProvider.$minTemperature.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6A0, &qword_24882FA78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*HealthKitProvider.$minTemperature.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6A0, &qword_24882FA78);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__minTemperature;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  sub_24882ACD8();
  swift_endAccess();
  return sub_248825EE0;
}

uint64_t HealthKitProvider.lastDive.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();
}

uint64_t sub_248821AA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();
}

uint64_t sub_248821B20(uint64_t a1, uint64_t *a2)
{
  sub_248825C18(a1, v4, &qword_27EEAA6B0, &qword_24882FAC8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248825C18(v4, &v3, &qword_27EEAA6B0, &qword_24882FAC8);

  sub_24882AD18();
  return sub_24880C924(v4, &qword_27EEAA6B0, &qword_24882FAC8);
}

uint64_t HealthKitProvider.lastDive.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248825C18(a1, &v3, &qword_27EEAA6B0, &qword_24882FAC8);

  sub_24882AD18();
  return sub_24880C924(a1, &qword_27EEAA6B0, &qword_24882FAC8);
}

uint64_t (*HealthKitProvider.lastDive.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24882ACF8();
  return sub_248825EDC;
}

void sub_248821D28(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_248821DAC(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_24882ACD8();
  return swift_endAccess();
}

uint64_t sub_248821E24(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_24882ACD8();
  return swift_endAccess();
}

uint64_t sub_248821EA0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6C0, &qword_24882FAD8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t HealthKitProvider.$lastDive.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6C0, &qword_24882FAD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  sub_24882ACE8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*HealthKitProvider.$lastDive.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6C0, &qword_24882FAD8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__lastDive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  sub_24882ACD8();
  swift_endAccess();
  return sub_248825EE0;
}

void sub_2488222CC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_24882ACE8();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_24882ACE8();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t HealthKitProvider.__allocating_init(withConfiguration:maxDepth:minTemperature:)(uint64_t a1)
{
  v1 = *(a1 + 112);
  v13 = *(a1 + 96);
  v14 = v1;
  v15 = *(a1 + 128);
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v3 = *(a1 + 80);
  v11 = *(a1 + 64);
  v12 = v3;
  v4 = *(a1 + 16);
  v5 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  swift_allocObject();
  v6 = sub_2488250B8(&v8, v5);

  return v6;
}

uint64_t HealthKitProvider.__allocating_init(withConfiguration:healthStore:)(__int128 *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_2488250B8(a1, a2);

  return v4;
}

uint64_t HealthKitProvider.init(withConfiguration:healthStore:)(__int128 *a1, void *a2)
{
  v3 = sub_2488250B8(a1, a2);

  return v3;
}

uint64_t sub_248822550(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2488225B0(v2);
  }

  return result;
}

uint64_t sub_2488225B0(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (!*(result + 16) || (sub_248825B0C(result + 32, v13), v15 == 255))
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  v9[0] = v13[0];
  v9[1] = v13[1];
  v10 = v14;
  v11 = v15;
  sub_248820C10(v9, v12);
  sub_248820C10(v12, &v16);
  *(&v18 + 1) = 0;
  if (!*(&v17 + 1))
  {
LABEL_10:
    sub_24880C924(&v16, &qword_27EEAA6B0, &qword_24882FAC8);
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_248825C18(&v19, &v16, &qword_27EEAA6B0, &qword_24882FAC8);

    sub_24882AD18();
    sub_24880C924(&v19, &qword_27EEAA6B0, &qword_24882FAC8);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v19 = 0;
    BYTE8(v19) = 3;

    sub_24882AD18();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v19 = 0;
    BYTE8(v19) = 1;

    return sub_24882AD18();
  }

  v19 = v16;
  v20 = v17;
  v21 = v18;
  sub_248825B68(&v19, &v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248825C18(&v16, v13, &qword_27EEAA6B0, &qword_24882FAC8);

  sub_24882AD18();
  sub_24880C924(&v16, &qword_27EEAA6B0, &qword_24882FAC8);
  v1 = *(&v20 + 1);
  v2 = v21;
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  (*(v2 + 24))(&v16, v1, v2);
  v3 = v16;
  v4 = BYTE8(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v13[0] = v3;
  BYTE8(v13[0]) = v4;

  sub_24882AD18();
  v5 = *(&v20 + 1);
  v6 = v21;
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  (*(v6 + 32))(&v16, v5, v6);
  v7 = v17 > 1u;
  if (v17 <= 1u)
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v16 = v8;
  BYTE8(v16) = v7;

  sub_24882AD18();
  sub_248823004(&v19);
  return sub_248825BA0(&v19);
}

Swift::Void __swiftcall HealthKitProvider.refresh()()
{
  v0 = sub_24882AD58();
  v14 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24882AD88();
  v3 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEA9960 != -1)
  {
    swift_once();
  }

  v6 = sub_24882AC88();
  __swift_project_value_buffer(v6, qword_27EEAA840);
  v7 = sub_24882AC68();
  v8 = sub_24882B148();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2487F4000, v7, v8, "HealthKitProvider: Refreshing data", v9, 2u);
    MEMORY[0x24C1DA290](v9, -1, -1);
  }

  sub_248806BE0();
  v10 = sub_24882B168();
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2488255E8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248822FC0;
  aBlock[3] = &block_descriptor_0;
  v12 = _Block_copy(aBlock);

  sub_24882AD78();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_248825BD0(&unk_27EEAA7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6D0, &qword_24882FAE0);
  sub_248825AC4(&unk_27EEAA800, &qword_27EEAA6D0, &qword_24882FAE0, MEMORY[0x277D83970]);
  sub_24882B258();
  MEMORY[0x24C1D98E0](0, v5, v2, v12);
  _Block_release(v12);

  (*(v14 + 8))(v2, v0);
  (*(v3 + 8))(v5, v13);
}

void sub_248822CE4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24882AD08();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_248825C18(&v10, &v8, &qword_27EEAA6B0, &qword_24882FAC8);

    sub_24882AD18();
    sub_24880C924(&v10, &qword_27EEAA6B0, &qword_24882FAC8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24882AD08();

    v1 = v10;
    v2 = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v1;
    v9 = v2;

    sub_24882AD18();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24882AD08();

    v3 = v10;
    LOBYTE(v1) = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v3;
    v9 = v1;
    sub_24882AD18();
  }

  else
  {
    if (qword_27EEA9960 != -1)
    {
      swift_once();
    }

    v4 = sub_24882AC88();
    __swift_project_value_buffer(v4, qword_27EEAA840);
    v5 = sub_24882AC68();
    v6 = sub_24882B138();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2487F4000, v5, v6, "HealthKitProvider: Deallocated while refreshing", v7, 2u);
      MEMORY[0x24C1DA290](v7, -1, -1);
    }
  }
}

uint64_t sub_248822FC0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_248823004(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v56 - v5;
  v6 = sub_24882ABE8();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6F0, &qword_24882FAE8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  Operation = type metadata accessor for GraphFetchOperation(0);
  v15 = *(Operation - 8);
  MEMORY[0x28223BE20](Operation);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 40))(v18, v19);
  v21 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 48);
  v70 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 32);
  v71 = v21;
  v72 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 64);
  v22 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 16);
  v68 = *(v1 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration);
  v69 = v22;
  if (DepthSettings.deepDiveTimeThreshold.getter() <= v20)
  {
    v34 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider_graphFetchOperation;
    swift_beginAccess();
    v60 = v34;
    sub_248825C18(v2 + v34, v13, &qword_27EEAA6F0, &qword_24882FAE8);
    v35 = (*(v15 + 48))(v13, 1, Operation);
    v61 = v15;
    if (v35 == 1)
    {
      sub_24880C924(v13, &qword_27EEAA6F0, &qword_24882FAE8);
    }

    else
    {
      sub_248825DB0(v13, v17);
      if (qword_27EEA9960 != -1)
      {
        swift_once();
      }

      v36 = sub_24882AC88();
      __swift_project_value_buffer(v36, qword_27EEAA840);
      sub_248820B6C(a1, &v68);
      v37 = sub_24882AC68();
      v38 = sub_24882B148();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v57 = v39;
        v59 = swift_slowAlloc();
        v66 = v59;
        *v39 = 136315138;
        v58 = v38;
        __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
        v40 = v62;
        sub_24882B2A8();
        sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v41 = v64;
        v42 = sub_24882B498();
        v44 = v43;
        (*(v63 + 8))(v40, v41);
        __swift_destroy_boxed_opaque_existential_0(&v68);
        v45 = sub_2487F852C(v42, v44, &v66);

        v46 = v57;
        *(v57 + 1) = v45;
        v47 = v46;
        _os_log_impl(&dword_2487F4000, v37, v58, "HealthKitProvider: Cancelling existing graph fetch for uuid=%s", v46, 0xCu);
        v48 = v59;
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x24C1DA290](v48, -1, -1);
        MEMORY[0x24C1DA290](v47, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v68);
      }

      sub_24882B0C8();
      sub_248825E7C(v17, type metadata accessor for GraphFetchOperation);
    }

    v49 = sub_24882B0B8();
    v50 = v65;
    (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
    sub_248820B6C(a1, &v68);
    sub_24882B098();

    v51 = sub_24882B088();
    v52 = swift_allocObject();
    v53 = MEMORY[0x277D85700];
    v52[2] = v51;
    v52[3] = v53;
    sub_248820C10(&v68, (v52 + 4));
    v52[9] = v2;
    v54 = sub_248825F90(0, 0, v50, &unk_24882FBB0, v52);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_24882B2A8();
    *&v11[*(Operation + 20)] = v54;
    (*(v61 + 56))(v11, 0, 1, Operation);
    v55 = v60;
    swift_beginAccess();
    sub_248825D40(v11, v2 + v55);
    swift_endAccess();
  }

  else
  {
    if (qword_27EEA9960 != -1)
    {
      swift_once();
    }

    v23 = sub_24882AC88();
    __swift_project_value_buffer(v23, qword_27EEAA840);
    sub_248820B6C(a1, &v68);
    v24 = sub_24882AC68();
    v25 = sub_24882B148();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v67[0] = v27;
      *v26 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
      v28 = v62;
      sub_24882B2A8();
      sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = v64;
      v30 = sub_24882B498();
      v32 = v31;
      (*(v63 + 8))(v28, v29);
      __swift_destroy_boxed_opaque_existential_0(&v68);
      v33 = sub_2487F852C(v30, v32, v67);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_2487F4000, v24, v25, "HealthKitProvider: Graph data not needed for dive uuid=%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1DA290](v27, -1, -1);
      MEMORY[0x24C1DA290](v26, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v68);
    }
  }
}

uint64_t sub_24882384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA758, &qword_24882FBB8);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA760, qword_24882FBC0);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v7 = sub_24882ABE8();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_24882B098();
  v5[28] = sub_24882B088();
  v9 = sub_24882B078();
  v5[29] = v9;
  v5[30] = v8;

  return MEMORY[0x2822009F8](sub_2488239F8, v9, v8);
}

uint64_t sub_2488239F8()
{
  v18 = v0;
  if (qword_27EEA9960 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_24882AC88();
  v0[31] = __swift_project_value_buffer(v2, qword_27EEAA840);
  sub_248820B6C(v1, (v0 + 2));
  v3 = sub_24882AC68();
  v4 = sub_24882B148();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = v0[24];
    v7 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_24882B2A8();
    sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_24882B498();
    v12 = v11;
    (*(v7 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v13 = sub_2487F852C(v10, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2487F4000, v3, v4, "HealthKitProvider: Starting graph data fetch for uuid=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1DA290](v9, -1, -1);
    MEMORY[0x24C1DA290](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  __swift_project_boxed_opaque_existential_1(v0[17], *(v0[17] + 24));
  sub_24882B2A8();
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  v14[1] = sub_248823CB0;
  v15 = v0[26];

  return sub_248809448(v15, 40);
}

uint64_t sub_248823CB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *(*v2 + 200);
  v7 = *(*v2 + 192);
  v4[33] = a1;
  v4[34] = v1;

  v8 = *(v6 + 8);
  v4[35] = v8;
  v4[36] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v9 = v3[30];
  v10 = v3[29];
  if (v1)
  {
    v11 = sub_2488243A4;
  }

  else
  {
    v11 = sub_248823E64;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

void sub_248823E64()
{
  v52 = v0;
  v1 = v0[33];
  v2 = v0[20];
  v50 = v0[19];

  v3 = 0;
  v49 = v1;
  v4 = *(v1 + 16);
  v5 = (v2 + 56);
  v6 = (v2 + 48);
  while (1)
  {
    if (v3 == v4)
    {
      v7 = 1;
      v3 = v4;
    }

    else
    {
      if (v3 >= *(v49 + 16))
      {
        __break(1u);
        return;
      }

      v8 = v0[33];
      v10 = v0[21];
      v9 = v0[22];
      v11 = *(type metadata accessor for DepthIntervalSummary(0) - 8);
      v12 = v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v3;
      v13 = *(v50 + 48);
      *v10 = v3;
      sub_24880BF68(v12, v10 + v13);
      sub_248825E14(v10, v9, &qword_27EEAA758, &qword_24882FBB8);
      v7 = 0;
      ++v3;
    }

    v15 = v0[22];
    v14 = v0[23];
    v16 = v0[19];
    (*v5)(v15, v7, 1, v16);
    sub_248825E14(v15, v14, &qword_27EEAA760, qword_24882FBC0);
    if ((*v6)(v14, 1, v16) == 1)
    {
      break;
    }

    v17 = v0[23];
    v18 = *v17;
    v19 = v17 + *(v50 + 48);
    v20 = v19 + *(type metadata accessor for DepthIntervalSummary(0) + 20);
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    sub_248825E7C(v19, type metadata accessor for DepthIntervalSummary);
    v24 = sub_24882AC68();
    v25 = sub_24882B148();
    v26 = os_log_type_enabled(v24, v25);
    if (v23)
    {
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v18;
        v28 = v25;
        v29 = v24;
        v30 = "HealthKitProvider: %ld: NULL";
        v31 = v27;
        v32 = 12;
LABEL_2:
        _os_log_impl(&dword_2487F4000, v29, v28, v30, v31, v32);
        MEMORY[0x24C1DA290](v27, -1, -1);
      }
    }

    else if (v26)
    {
      v27 = swift_slowAlloc();
      *v27 = 134218496;
      *(v27 + 4) = v18;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v22;
      *(v27 + 22) = 2048;
      *(v27 + 24) = v21;
      v28 = v25;
      v29 = v24;
      v30 = "HealthKitProvider: %ld: %f-%f";
      v31 = v27;
      v32 = 32;
      goto LABEL_2;
    }
  }

  sub_248820B6C(v0[17], (v0 + 12));

  v33 = sub_24882AC68();
  v34 = sub_24882B148();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v0[35];
    v36 = v0[27];
    v37 = v0[24];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51 = v39;
    *v38 = 134218242;
    *(v38 + 4) = *(v49 + 16);

    *(v38 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    sub_24882B2A8();
    sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v40 = sub_24882B498();
    v42 = v41;
    v35(v36, v37);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v43 = sub_2487F852C(v40, v42, &v51);

    *(v38 + 14) = v43;
    _os_log_impl(&dword_2487F4000, v33, v34, "HealthKitProvider: Completed graph fetch with count=%ld for uuid=%s", v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x24C1DA290](v39, -1, -1);
    MEMORY[0x24C1DA290](v38, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  }

  v44 = v0[35];
  v45 = v0[33];
  v46 = v0[27];
  v47 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0[17], *(v0[17] + 24));
  sub_24882B2A8();
  sub_248824658(v45, v46);

  v44(v46, v47);

  v48 = v0[1];

  v48();
}

uint64_t sub_2488243A4()
{
  v22 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 136);

  sub_248820B6C(v2, v0 + 56);
  v3 = v1;
  v4 = sub_24882AC68();
  v5 = sub_24882B138();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = *(v0 + 280);
    v20 = *(v0 + 272);
    v6 = *(v0 + 216);
    v7 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315394;
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_24882B2A8();
    sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_24882B498();
    v13 = v12;
    v19(v6, v7);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v14 = sub_2487F852C(v11, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = v20;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_2487F4000, v4, v5, "HealthKitProvider: Failed to fetch graph data for uuid=%s with error=%@", v8, 0x16u);
    sub_24880C924(v9, &qword_27EEAA230, &qword_24882D968);
    MEMORY[0x24C1DA290](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1DA290](v10, -1, -1);
    MEMORY[0x24C1DA290](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  v17 = *(v0 + 8);

  return v17();
}

void sub_248824658(uint64_t a1, uint64_t a2)
{
  v4 = sub_24882ABE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24882AD08();

  if (*(&v46 + 1))
  {
    v48[1] = v46;
    v48[2] = v47;
    v48[0] = v45;
    __swift_project_boxed_opaque_existential_1(v48, *(&v46 + 1));
    sub_24882B2A8();
    v11 = _s9DepthCore11DiveSummaryV2eeoiySbAC_ACtFZ_0();
    v12 = *(v5 + 8);
    v12(v10, v4);
    if (v11)
    {
      if (qword_27EEA9960 != -1)
      {
        swift_once();
      }

      v13 = sub_24882AC88();
      __swift_project_value_buffer(v13, qword_27EEAA840);
      sub_248825B68(v48, &v45);
      v14 = sub_24882AC68();
      v15 = sub_24882B148();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v43 = a1;
        v44[0] = v17;
        v18 = v17;
        *v16 = 136315138;
        v42 = v12;
        __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
        sub_24882B2A8();
        sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v19 = sub_24882B498();
        v21 = v20;
        v42(v10, v4);
        sub_248825BA0(&v45);
        v22 = sub_2487F852C(v19, v21, v44);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_2487F4000, v14, v15, "HealthKitProvider: Adding graph data for uuid=%s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        v23 = v18;
        a1 = v43;
        MEMORY[0x24C1DA290](v23, -1, -1);
        MEMORY[0x24C1DA290](v16, -1, -1);
      }

      else
      {

        sub_248825BA0(&v45);
      }

      sub_248820B6C(v48, &v45);
      *(&v47 + 1) = a1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_248825C18(&v45, v44, &qword_27EEAA6B0, &qword_24882FAC8);

      sub_24882AD18();
      sub_24880C924(&v45, &qword_27EEAA6B0, &qword_24882FAC8);
    }

    else
    {
      if (qword_27EEA9960 != -1)
      {
        swift_once();
      }

      v28 = sub_24882AC88();
      __swift_project_value_buffer(v28, qword_27EEAA840);
      sub_248825B68(v48, &v45);
      (*(v5 + 16))(v8, a2, v4);
      v29 = sub_24882AC68();
      v30 = sub_24882B148();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44[0] = v43;
        *v31 = 136315394;
        LODWORD(v42) = v30;
        __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
        sub_24882B2A8();
        sub_248825BD0(&qword_27EEAA250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v32 = sub_24882B498();
        v33 = v12;
        v35 = v34;
        v33(v10, v4);
        sub_248825BA0(&v45);
        v36 = sub_2487F852C(v32, v35, v44);

        *(v31 + 4) = v36;
        *(v31 + 12) = 2080;
        v37 = sub_24882B498();
        v39 = v38;
        v33(v8, v4);
        v40 = sub_2487F852C(v37, v39, v44);

        *(v31 + 14) = v40;
        _os_log_impl(&dword_2487F4000, v29, v42, "HealthKitProvider: Not updating lastDive graph data, current dive is %s, graph data supplied for %s", v31, 0x16u);
        v41 = v43;
        swift_arrayDestroy();
        MEMORY[0x24C1DA290](v41, -1, -1);
        MEMORY[0x24C1DA290](v31, -1, -1);
      }

      else
      {

        v12(v8, v4);
        sub_248825BA0(&v45);
      }
    }

    sub_248825BA0(v48);
  }

  else
  {
    sub_24880C924(&v45, &qword_27EEAA6B0, &qword_24882FAC8);
    if (qword_27EEA9960 != -1)
    {
      swift_once();
    }

    v24 = sub_24882AC88();
    __swift_project_value_buffer(v24, qword_27EEAA840);
    v25 = sub_24882AC68();
    v26 = sub_24882B148();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2487F4000, v25, v26, "HealthKitProvider: Not updating lastDive graphData, lastDive is nil", v27, 2u);
      MEMORY[0x24C1DA290](v27, -1, -1);
    }
  }
}

uint64_t HealthKitProvider.deinit()
{
  v1 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__maxDepth;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__minTemperature;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__lastDive;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 112);
  v12[6] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 96);
  v12[7] = v7;
  v13 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 128);
  v8 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 32);
  v12[3] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 80);
  v12[4] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 64);
  v12[5] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration);
  v12[1] = v10;
  sub_2487F5E64(v12);

  sub_24880C924(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_graphFetchOperation, &qword_27EEAA6F0, &qword_24882FAE8);

  return v0;
}

uint64_t HealthKitProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__maxDepth;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__minTemperature;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__lastDive;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 112);
  v12[6] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 96);
  v12[7] = v7;
  v13 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 128);
  v8 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 32);
  v12[3] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 80);
  v12[4] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 64);
  v12[5] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration);
  v12[1] = v10;
  sub_2487F5E64(v12);

  sub_24880C924(v0 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_graphFetchOperation, &qword_27EEAA6F0, &qword_24882FAE8);

  return swift_deallocClassInstance();
}

uint64_t sub_2488250B8(__int128 *a1, void *a2)
{
  v3 = v2;
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B8, &qword_24882FAD0);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA698, &qword_24882FA70);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA680, &qword_24882FA18);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = a1[7];
  v46 = a1[6];
  v47 = v16;
  v48 = *(a1 + 16);
  v17 = a1[3];
  v42 = a1[2];
  v43 = v17;
  v18 = a1[5];
  v44 = a1[4];
  v45 = v18;
  v19 = a1[1];
  v40 = *a1;
  v41 = v19;
  v20 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__maxDepth;
  *&v39[0] = 0;
  BYTE8(v39[0]) = 3;
  sub_24882ACC8();
  (*(v13 + 32))(v3 + v20, v15, v12);
  v21 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__minTemperature;
  *&v39[0] = 0;
  BYTE8(v39[0]) = 1;
  sub_24882ACC8();
  (*(v9 + 32))(v3 + v21, v11, v8);
  v22 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider__lastDive;
  memset(v39, 0, sizeof(v39));
  sub_248825C18(v39, v38, &qword_27EEAA6B0, &qword_24882FAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6B0, &qword_24882FAC8);
  sub_24882ACC8();
  sub_24880C924(v39, &qword_27EEAA6B0, &qword_24882FAC8);
  (*(v5 + 32))(v3 + v22, v7, v36);
  v23 = OBJC_IVAR____TtC9DepthCore17HealthKitProvider_graphFetchOperation;
  Operation = type metadata accessor for GraphFetchOperation(0);
  (*(*(Operation - 8) + 56))(v3 + v23, 1, 1, Operation);
  *(v3 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_subscriptions) = MEMORY[0x277D84FA0];
  v25 = v3 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_configuration;
  v26 = v47;
  *(v25 + 96) = v46;
  *(v25 + 112) = v26;
  *(v25 + 128) = v48;
  v27 = v43;
  *(v25 + 32) = v42;
  *(v25 + 48) = v27;
  v28 = v45;
  *(v25 + 64) = v44;
  *(v25 + 80) = v28;
  v29 = v41;
  *v25 = v40;
  *(v25 + 16) = v29;
  type metadata accessor for HealthKitHistoryObserver();
  v30 = swift_allocObject();
  *&v39[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA748, &unk_24882FC10);
  swift_allocObject();
  v31 = v37;
  v32 = sub_24882ACB8();
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  *(v30 + 16) = v32;
  *(v30 + 24) = v31;
  *(v3 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_historyObserver) = v30;
  type metadata accessor for DiveGraphDataProvider();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v3 + OBJC_IVAR____TtC9DepthCore17HealthKitProvider_diveGraphDataProvider) = v33;
  *&v39[0] = v32;
  swift_allocObject();
  swift_weakInit();
  sub_248825AC4(&qword_27EEAA750, &qword_27EEAA748, &unk_24882FC10, MEMORY[0x277CBCE48]);
  v34 = v31;

  sub_24882AD38();

  swift_beginAccess();
  sub_24882AC98();
  swift_endAccess();

  return v3;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248825608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_248825650(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_2488256D4(uint64_t a1)
{
  sub_248825884(319, &qword_27EEAA710, &type metadata for WaterDepth);
  if (v1 <= 0x3F)
  {
    sub_248825884(319, &qword_27EEAA718, &type metadata for Temperature);
    if (v2 <= 0x3F)
    {
      sub_2488258D0(319);
      if (v3 <= 0x3F)
      {
        sub_248825934(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_248825884(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24882AD28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2488258D0(uint64_t a1)
{
  if (!qword_27EEAA720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEAA6B0, &qword_24882FAC8);
    v1 = sub_24882AD28();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEAA720);
    }
  }
}

void sub_248825934(uint64_t a1)
{
  if (!qword_27EEAA728)
  {
    type metadata accessor for GraphFetchOperation(255);
    v1 = sub_24882B218();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEAA728);
    }
  }
}

void sub_2488259D4(uint64_t a1)
{
  sub_24882ABE8();
  if (v1 <= 0x3F)
  {
    sub_248825A58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_248825A58()
{
  if (!qword_27EEAA740)
  {
    v0 = sub_24882B0D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA740);
    }
  }
}

uint64_t sub_248825AC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_248825BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_248825C18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_248825C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248801C8C;

  return sub_24882384C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_248825D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6F0, &qword_24882FAE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_248825DB0(uint64_t a1, uint64_t a2)
{
  Operation = type metadata accessor for GraphFetchOperation(0);
  (*(*(Operation - 8) + 32))(a2, a1, Operation);
  return a2;
}

uint64_t sub_248825E14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_248825E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248825F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2488291F4(a3, v25 - v10);
  v12 = sub_24882B0B8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24880C924(v11, &qword_27EEA9F48, &qword_24882FBA0);
  }

  else
  {
    sub_24882B0A8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24882B078();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24882AF68() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24880C924(a3, &qword_27EEA9F48, &qword_24882FBA0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24880C924(a3, &qword_27EEA9F48, &qword_24882FBA0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_248826280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2488291F4(a3, v25 - v10);
  v12 = sub_24882B0B8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24880C924(v11, &qword_27EEA9F48, &qword_24882FBA0);
  }

  else
  {
    sub_24882B0A8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24882B078();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24882AF68() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA7B8, &qword_24882FE10);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24880C924(a3, &qword_27EEA9F48, &qword_24882FBA0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24880C924(a3, &qword_27EEA9F48, &qword_24882FBA0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA7B8, &qword_24882FE10);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t HealthKitHistoryObserver.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA748, &unk_24882FC10);
  swift_allocObject();
  v3 = sub_24882ACB8();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = v3;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t DiveHistoryEntry.isSaved.getter()
{
  sub_248825B0C(v0, v3);
  v1 = v3[40];
  sub_24882680C(v3);
  return v1;
}

uint64_t DiveHistoryEntry.id.getter()
{
  sub_248825B0C(v0, v4);
  sub_248820C10(v4, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v2 + 56))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_24882670C()
{
  sub_248825B0C(v0, v4);
  sub_248820C10(v4, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v2 + 56))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t HealthKitHistoryObserver.init(healthStore:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA748, &unk_24882FC10);
  swift_allocObject();
  v3 = sub_24882ACB8();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  return v1;
}

void sub_24882683C()
{
  sub_2487FCC20(0, &qword_27EEAA030, 0x277CCD8D8);
  v1 = [swift_getObjCClassFromMetadata() workoutType];
  v2 = [objc_opt_self() predicateForWorkoutsWithWorkoutActivityType_];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = objc_allocWithZone(MEMORY[0x277CCD730]);
  v8[4] = sub_248829694;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2488288A0;
  v8[3] = &block_descriptor_1;
  v5 = _Block_copy(v8);

  v6 = [v4 initWithSampleType:v1 predicate:v2 updateHandler:v5];

  _Block_release(v5);

  [*(v0 + 24) executeQuery_];
  v7 = *(v0 + 56);
  *(v0 + 56) = v6;
}

double sub_2488269D0(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v11 = sub_24882AC88();
  __swift_project_value_buffer(v11, qword_27EEAA810);
  v12 = sub_24882AC68();
  v13 = sub_24882B148();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2487F4000, v12, v13, "DiveHistorySource: Workout observer query triggered", v14, 2u);
    MEMORY[0x24C1DA290](v14, -1, -1);
  }

  if (a4)
  {
    v15 = a4;
    v16 = sub_24882AC68();
    v17 = sub_24882B138();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a4;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_2487F4000, v16, v17, "DiveWorkoutSource: Failed to observer dive workouts with error %@", v18, 0xCu);
      sub_24880C924(v19, &qword_27EEAA230, &qword_24882D968);
      MEMORY[0x24C1DA290](v19, -1, -1);
      MEMORY[0x24C1DA290](v18, -1, -1);
    }

    a2();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      v25 = sub_24882B0B8();
      (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v24;
      v26[5] = a2;
      v26[6] = a3;

      sub_248825F90(0, 0, v10, &unk_24882FE50, v26);
    }
  }

  return result;
}

uint64_t sub_248826CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_248801C8C;

  return sub_248826D74(a5, a6);
}

uint64_t sub_248826D74(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA768, &qword_24882FD78);
  v3[12] = swift_task_alloc();
  v4 = type metadata accessor for DiveSummary(0);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA770, &qword_24882FD80);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA778, &qword_24882FD88);
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA780, &unk_24882FD90);
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  v8 = sub_24882AC38();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA050, &qword_24882CD28);
  v3[29] = swift_task_alloc();
  v9 = sub_24882AC48();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = sub_24882AB78();
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248827150, 0, 0);
}

uint64_t sub_248827150()
{
  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v1 = sub_24882AC88();
  v0[38] = __swift_project_value_buffer(v1, qword_27EEAA810);
  v2 = sub_24882AC68();
  v3 = sub_24882B148();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2487F4000, v2, v3, "DiveHistorySource: Starting new historical query", v4, 2u);
    MEMORY[0x24C1DA290](v4, -1, -1);
  }

  v48 = v0[35];
  v49 = v0[34];
  v5 = v0[32];
  v6 = v0[31];
  v46 = v0[30];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];

  sub_24882AB68();
  sub_24882AC28();
  sub_24882AC28();
  (*(v9 + 104))(v8, *MEMORY[0x277CC9968], v10);
  sub_24882AC18();
  (*(v9 + 8))(v8, v10);
  v11 = *(v6 + 8);
  v11(v5, v46);
  v12 = (*(v48 + 48))(v7, 1, v49);
  if (v12 == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = v0[34];
    v14 = v0[35];
    v16 = v0[33];
    v18 = v0[29];
    v17 = v0[30];
    v43 = v0[24];
    v44 = v0[23];
    v41 = v0[25];
    v42 = v0[22];
    v45 = v0[21];
    v47 = v0[20];
    v50 = v0[10];
    sub_24882ABF8();
    v11(v16, v17);
    v19 = *(v14 + 8);
    v0[39] = v19;
    v0[40] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v18, v15);
    v20 = objc_opt_self();
    v21 = sub_24882AB28();
    v22 = sub_24882AB28();
    v23 = [v20 predicateForSamplesWithStartDate:v21 endDate:v22 options:0];
    v0[41] = v23;

    v24 = [v20 _predicateForObjectsFromAppleWatches];
    v0[42] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA788, &unk_24882FDA0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24882FC00;
    *(v25 + 32) = v23;
    *(v25 + 40) = v24;
    v26 = v23;
    v27 = v24;
    *(v25 + 48) = [v20 predicateForWorkoutsWithWorkoutActivityType_];
    v28 = objc_allocWithZone(MEMORY[0x277CCA920]);
    sub_2487FCC20(0, &qword_27EEAA790, 0x277CCAC30);
    v29 = sub_24882AFE8();

    v30 = [v28 initWithType:1 subpredicates:v29];
    v0[43] = v30;

    sub_2487FCC20(0, &qword_27EEAA038, 0x277CCD8A8);
    v31 = v30;
    sub_24882ADE8();

    KeyPath = swift_getKeyPath();
    MEMORY[0x24C1D9220](KeyPath, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA798, &qword_24882FDD8);
    v33 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_24882BFD0;
    (*(v43 + 16))(v34 + v33, v41, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA7A0, &unk_24882FDE0);
    v35 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_24882BFD0;
    (*(v45 + 16))(v36 + v35, v42, v47);
    sub_2487FCC20(0, &qword_27EEAA7A8, 0x277CCDBE8);
    sub_24882ADF8();
    v37 = *(v50 + 24);
    v0[44] = v37;
    v38 = v37;
    v39 = swift_task_alloc();
    v0[45] = v39;
    *v39 = v0;
    v39[1] = sub_2488276BC;
    v13 = v0[17];
    v12 = v38;
  }

  return MEMORY[0x282120380](v12, v13);
}

uint64_t sub_2488276BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_248827E9C;
  }

  else
  {

    v4 = sub_2488277D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2488277D8()
{
  v1 = *(v0 + 368);
  v51 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24882B358())
  {
    v3 = MEMORY[0x277D84F90];
    v53 = v1;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = *(v0 + 112);
    v58 = v1 & 0xC000000000000001;
    v55 = *(v0 + 368) + 32;
    v57 = v1 & 0xFFFFFFFFFFFFFF8;
    v1 = v5 + 48;
    while (1)
    {
      if (v58)
      {
        v6 = MEMORY[0x24C1D9A30](v4, *(v0 + 368));
      }

      else
      {
        if (v4 >= *(v57 + 16))
        {
          goto LABEL_35;
        }

        v6 = *(v55 + 8 * v4);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = *(v0 + 96);
      v10 = *(v0 + 104);
      static DiveSummary.fromHKWorkout(_:)(v6, v9);

      if ((*v1)(v9, 1, v10) == 1)
      {
        sub_24880C924(*(v0 + 96), &qword_27EEAA768, &qword_24882FD78);
      }

      else
      {
        sub_248828FC0(*(v0 + 96), *(v0 + 128));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_248828D88(0, v3[2] + 1, 1, v3, &qword_27EEAA7C0, &unk_24882FE20, type metadata accessor for DiveSummary);
        }

        v12 = v3[2];
        v11 = v3[3];
        if (v12 >= v11 >> 1)
        {
          v3 = sub_248828D88((v11 > 1), v12 + 1, 1, v3, &qword_27EEAA7C0, &unk_24882FE20, type metadata accessor for DiveSummary);
        }

        v13 = *(v0 + 128);
        v3[2] = v12 + 1;
        sub_248828FC0(v13, v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12);
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_18:
  v14 = v3[2];
  if (v14)
  {
    v15 = *(v0 + 112);
    v60 = MEMORY[0x277D84F90];
    sub_2487FC2D0(0, v14, 0);
    v16 = v60;
    v17 = v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = *(v15 + 72);
    do
    {
      v19 = *(v0 + 120);
      v20 = *(v0 + 104);
      sub_248829024(v17, v19);
      *(v0 + 40) = v20;
      *(v0 + 48) = sub_248829088(&qword_27EEAA7B0, type metadata accessor for DiveSummary, &protocol conformance descriptor for DiveSummary);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_248828FC0(v19, boxed_opaque_existential_1);
      *(v0 + 56) = 1;
      v23 = *(v60 + 16);
      v22 = *(v60 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2487FC2D0((v22 > 1), v23 + 1, 1);
      }

      *(v60 + 16) = v23 + 1;
      v24 = (v60 + 48 * v23);
      v25 = *(v0 + 16);
      v26 = *(v0 + 32);
      *(v24 + 57) = *(v0 + 41);
      v24[2] = v25;
      v24[3] = v26;
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v27 = sub_24882AC68();
  v28 = sub_24882B148();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    *(v29 + 4) = *(v16 + 16);

    *(v29 + 12) = 2048;
    if (v51)
    {
      v30 = sub_24882B358();
    }

    else
    {
      v30 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 14) = v30;

    _os_log_impl(&dword_2487F4000, v27, v28, "DiveHistorySource: Parsed %ld valid dive summaries from %ld workouts", v29, 0x16u);
    MEMORY[0x24C1DA290](v29, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v45 = *(v0 + 344);
  v46 = *(v0 + 336);
  v47 = *(v0 + 328);
  v56 = *(v0 + 312);
  v59 = *(v0 + 296);
  v31 = *(v0 + 272);
  v32 = *(v0 + 192);
  v52 = *(v0 + 200);
  v54 = *(v0 + 288);
  v49 = *(v0 + 176);
  v50 = *(v0 + 184);
  v33 = *(v0 + 168);
  v48 = *(v0 + 160);
  v34 = *(v0 + 144);
  v43 = *(v0 + 136);
  v44 = *(v0 + 152);
  v35 = *(v0 + 88);
  v36 = sub_24882B0B8();
  (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  sub_24882B098();

  v38 = sub_24882B088();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  v39[2] = v38;
  v39[3] = v40;
  v39[4] = v37;
  v39[5] = v16;

  sub_248826280(0, 0, v35, &unk_24882FDF8, v39);

  (*(v34 + 8))(v44, v43);
  (*(v33 + 8))(v49, v48);
  (*(v32 + 8))(v52, v50);
  v56(v54, v31);
  v56(v59, v31);
  sub_248828160(*(v0 + 64), *(v0 + 72));

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_248827E9C()
{
  v1 = *(v0 + 376);

  v2 = v1;
  v3 = sub_24882AC68();
  v4 = sub_24882B138();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 376);
  v24 = *(v0 + 344);
  v25 = *(v0 + 336);
  v26 = *(v0 + 328);
  v7 = *(v0 + 312);
  v30 = *(v0 + 296);
  v8 = *(v0 + 272);
  v9 = *(v0 + 192);
  v28 = *(v0 + 200);
  v29 = *(v0 + 288);
  v27 = *(v0 + 184);
  v10 = *(v0 + 168);
  v22 = *(v0 + 160);
  v23 = *(v0 + 176);
  v11 = *(v0 + 144);
  v20 = *(v0 + 136);
  v21 = *(v0 + 152);
  if (v5)
  {
    v12 = swift_slowAlloc();
    v19 = v7;
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2487F4000, v3, v4, "DiveHistorySource: Failed to query dive workout history with error %@", v12, 0xCu);
    sub_24880C924(v13, &qword_27EEAA230, &qword_24882D968);
    v16 = v13;
    v7 = v19;
    MEMORY[0x24C1DA290](v16, -1, -1);
    MEMORY[0x24C1DA290](v12, -1, -1);
  }

  (*(v11 + 8))(v21, v20);
  (*(v10 + 8))(v23, v22);
  (*(v9 + 8))(v28, v27);
  v7(v29, v8);
  v7(v30, v8);
  sub_248828160(*(v0 + 64), *(v0 + 72));

  v17 = *(v0 + 8);

  return v17();
}

void sub_248828160(void (*a1)(void), uint64_t a2)
{
  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v4 = sub_24882AC88();
  __swift_project_value_buffer(v4, qword_27EEAA810);
  sub_2487F5FD8(a1, a2);
  v5 = sub_24882AC68();
  v6 = sub_24882B148();
  sub_248806BB0(a1, a2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 5457241;
    }

    else
    {
      v9 = 20302;
    }

    if (a1)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    v11 = sub_2487F852C(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2487F4000, v5, v6, "DiveHistorySource: Calling completion %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1DA290](v8, -1, -1);
    MEMORY[0x24C1DA290](v7, -1, -1);
  }

  if (a1)
  {
    a1();
  }
}

void sub_2488282F0(id *a1)
{
  v1 = [*a1 endDate];
  sub_24882AB58();
}

uint64_t sub_248828350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  sub_24882B098();
  v5[9] = sub_24882B088();
  v7 = sub_24882B078();

  return MEMORY[0x2822009F8](sub_2488283EC, v7, v6);
}

uint64_t sub_2488283EC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 64);

    *(v0 + 40) = v2;

    sub_24882ACA8();
  }

  **(v0 + 48) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

double sub_2488284CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  if (*(v0 + 56))
  {
    if (qword_27EEA9950 != -1)
    {
      swift_once();
    }

    v4 = sub_24882AC88();
    __swift_project_value_buffer(v4, qword_27EEAA810);
    v12 = sub_24882AC68();
    v5 = sub_24882B138();
    if (os_log_type_enabled(v12, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2487F4000, v12, v5, "DiveHistorySource: start() should not be called multiple times", v6, 2u);
      MEMORY[0x24C1DA290](v6, -1, -1);
    }

    v7 = v12;
  }

  else
  {
    sub_24882683C();
    v9 = sub_24882B0B8();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v0;

    sub_248825F90(0, 0, v3, &unk_24882FC28, v10);
  }

  return result;
}

uint64_t sub_2488286BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248807F14;

  return sub_248826D74(0, 0);
}

uint64_t sub_248828754()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248807F14;

  return sub_2488286BC();
}

uint64_t HealthKitHistoryObserver.deinit()
{

  sub_248806BB0(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t HealthKitHistoryObserver.__deallocating_deinit()
{

  sub_248806BB0(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_2488288A0(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a4;
  v6(v10, sub_2488296B4, v8, a4);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2488289DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248828A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_248828A64(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_248828B10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_248828C08;

  return v6(a1);
}

uint64_t sub_248828C08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_248828D00(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_248828D88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_248828F64(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_248828F84@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_248828FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiveSummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_248829024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiveSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248829088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_248829134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248807F14;

  return sub_248828350(a1, v4, v5, v7, v6);
}

uint64_t sub_2488291F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248829264(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_248829358;

  return v5(v2 + 32);
}

uint64_t sub_248829358()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24882946C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248807F14;

  return sub_248829264(a1, v4);
}

uint64_t sub_248829524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248801C8C;

  return sub_248829264(a1, v4);
}

uint64_t sub_2488295DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248807F14;

  return sub_248828B10(a1, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2488296C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248801C8C;

  return sub_248826CC8(a1, v4, v5, v6, v7, v8);
}

__n128 DiveConfiguration.depth.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 DiveConfiguration.depth.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t DiveConfiguration.temperature.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 112);
  *(a1 + 32) = v6;
  return sub_248812C50(v2, v3, v4, v5, v6);
}

__n128 DiveConfiguration.temperature.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_248812CB0(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v5;
  *(v1 + 112) = v3;
  return result;
}

void DiveConfiguration.units.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 115);
  *a1 = *(v1 + 114);
  a1[1] = v2;
}

_BYTE *DiveConfiguration.units.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 114) = *result;
  *(v1 + 115) = v2;
  return result;
}

__n128 DiveConfiguration.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 120);
  *a1 = result;
  return result;
}

__n128 DiveConfiguration.location.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 120) = *a1;
  return result;
}

double DiveConfiguration.init()@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V1.2D, #1.0 }

  *a1 = xmmword_24882D920;
  *(a1 + 16) = _Q1;
  *(a1 + 32) = xmmword_24882D930;
  *(a1 + 48) = xmmword_24882D940;
  *(a1 + 64) = xmmword_24882D950;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 16777344;
  *(a1 + 116) = 1;
  result = 120.0;
  *(a1 + 120) = xmmword_24882FE60;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2488299E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 136))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 113);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_248829A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 113) = a2 + 1;
    }
  }

  return result;
}

uint64_t BackgroundTimer.__allocating_init(interval:completion:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_allocObject();
  v6 = sub_248829CDC(a1, a2, a3);

  return v6;
}

uint64_t BackgroundTimer.init(interval:completion:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_248829CDC(a1, a2, a3);

  return v3;
}

uint64_t sub_248829B50()
{
  sub_24882AD58();
  sub_24882A42C(&unk_27EEAA7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA6D0, &qword_24882FAE0);
  sub_24882A474(&unk_27EEAA800, &qword_27EEAA6D0, &qword_24882FAE0);
  return sub_24882B258();
}

uint64_t BackgroundTimer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_248829CDC(uint64_t a1, uint64_t a2, double a3)
{
  v48 = a1;
  v49 = a2;
  v4 = sub_24882AD58();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24882AD88();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24882AD48();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24882ADA8();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - v15;
  v16 = sub_24882B198();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24882AD68();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2487FCC20(0, &qword_27EEAA7C8, 0x277D85CA0);
  sub_2487FCC20(0, &qword_27EEAA7D0, 0x277D85C78);
  (*(v21 + 104))(v23, *MEMORY[0x277D851C8], v20);
  v24 = sub_24882B188();
  (*(v21 + 8))(v23, v20);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24882A42C(&qword_27EEAA7D8, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA7E0, &qword_24882FF78);
  sub_24882A474(&qword_27EEAA7E8, &qword_27EEAA7E0, &qword_24882FF78);
  sub_24882B258();
  v25 = sub_24882B1A8();

  (*(v17 + 8))(v19, v16);
  v26 = v46;
  *(v46 + 16) = v25;
  ObjectType = swift_getObjectType();
  sub_24882AD98();
  v28 = v41;
  sub_24882ADB8();
  v29 = v43;
  v30 = *(v42 + 8);
  v30(v14, v43);
  *v10 = 0;
  v32 = v44;
  v31 = v45;
  (*(v44 + 104))(v10, *MEMORY[0x277D85168], v45);
  MEMORY[0x24C1D9960](v28, v10, ObjectType, a3);
  (*(v32 + 8))(v10, v31);
  v30(v28, v29);
  v33 = v26;
  swift_getObjectType();
  v34 = swift_allocObject();
  v35 = v49;
  *(v34 + 16) = v48;
  *(v34 + 24) = v35;
  aBlock[4] = sub_24882A3EC;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248822FC0;
  aBlock[3] = &block_descriptor_2;
  v36 = _Block_copy(aBlock);

  v37 = v47;
  sub_24882AD78();
  v38 = v50;
  sub_248829B50();
  sub_24882B1B8();
  _Block_release(v36);
  (*(v53 + 8))(v38, v54);
  (*(v51 + 8))(v37, v52);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_24882B1D8();
  swift_unknownObjectRelease();
  return v33;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24882A42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24882A474(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24882A5A4()
{
  sub_24882A98C();
  result = sub_24882B208();
  qword_27EEAA858 = result;
  return result;
}

id static DepthLog.osLogger.getter()
{
  if (qword_27EEA9968 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEAA858;

  return v1;
}

uint64_t sub_24882A7D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24882AC88();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_24882AC78();
}

uint64_t sub_24882A880@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_24882AC88();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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

unint64_t sub_24882A98C()
{
  result = qword_27EEAA8F0;
  if (!qword_27EEAA8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEAA8F0);
  }

  return result;
}