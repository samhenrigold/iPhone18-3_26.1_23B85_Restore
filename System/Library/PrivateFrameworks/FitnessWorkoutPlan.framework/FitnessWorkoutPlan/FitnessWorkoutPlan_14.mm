uint64_t sub_1E5A05A70(uint64_t a1)
{
  v2 = sub_1E5A066C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05AAC(uint64_t a1)
{
  v2 = sub_1E5A066C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A05AE8(uint64_t a1)
{
  v2 = sub_1E5A065C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05B24(uint64_t a1)
{
  v2 = sub_1E5A065C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A05B60()
{
  if (*v0)
  {
    return 0x7954746165706572;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E5A05BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7954746165706572 && a2 == 0xEA00000000006570)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E5A2C114();

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

uint64_t sub_1E5A05C84(uint64_t a1)
{
  v2 = sub_1E5A0661C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05CC0(uint64_t a1)
{
  v2 = sub_1E5A0661C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A05CFC(uint64_t a1)
{
  v2 = sub_1E5A06780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05D38(uint64_t a1)
{
  v2 = sub_1E5A06780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviousPlanLockupAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009C8, &qword_1E5A429D0);
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009D0, &qword_1E5A429D8);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009D8, &qword_1E5A429E0);
  v42 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009E0, &unk_1E5A429E8);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009E8, &qword_1E5A429F8);
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for PreviousPlanLockupAction(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009F0, &qword_1E5A42A00);
  v54 = *(v19 - 8);
  v55 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A064BC();
  sub_1E5A2C224();
  sub_1E5A06510(v53, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v27 = v12;
    v28 = v9;
    v30 = v49;
    v29 = v50;
    v31 = v51;
    v32 = v52;
    if (EnumCaseMultiPayload)
    {
      v36 = v18[16];
      v62 = 2;
      sub_1E5A0661C();
      v37 = v55;
      sub_1E5A2C024();
      v61 = 0;
      v38 = v56;
      sub_1E5A2C064();

      if (!v38)
      {
        v60 = v36;
        v59 = 1;
        sub_1E5A06670();
        sub_1E5A2C0B4();
      }

      (*(v42 + 8))(v31, v32);
      return (*(v54 + 8))(v21, v37);
    }

    else
    {
      v33 = v27;
      sub_1E59A1634(v18, v27);
      v58 = 1;
      sub_1E5A066C4();
      v34 = v55;
      sub_1E5A2C024();
      type metadata accessor for PreviousPlanDetail(0);
      sub_1E5A07308(&qword_1ECFFF468, &protocol conformance descriptor for PreviousPlanDetail);
      sub_1E5A2C054();
      (*(v30 + 8))(v28, v29);
      sub_1E5A06718(v33);
      return (*(v54 + 8))(v21, v34);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v57 = 0;
      sub_1E5A06780();
      v24 = v55;
      sub_1E5A2C024();
      (*(v40 + 8))(v15, v41);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v63 = 3;
        sub_1E5A065C8();
        v23 = v43;
        v24 = v55;
        sub_1E5A2C024();
        v26 = v44;
        v25 = v45;
      }

      else
      {
        v64 = 4;
        sub_1E5A06574();
        v23 = v46;
        v24 = v55;
        sub_1E5A2C024();
        v26 = v47;
        v25 = v48;
      }

      (*(v26 + 8))(v23, v25);
    }

    return (*(v54 + 8))(v21, v24);
  }
}

uint64_t type metadata accessor for PreviousPlanLockupAction(uint64_t a1)
{
  result = qword_1ED000A68;
  if (!qword_1ED000A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5A064BC()
{
  result = qword_1ED0009F8;
  if (!qword_1ED0009F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0009F8);
  }

  return result;
}

uint64_t sub_1E5A06510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviousPlanLockupAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5A06574()
{
  result = qword_1ED000A00;
  if (!qword_1ED000A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A00);
  }

  return result;
}

unint64_t sub_1E5A065C8()
{
  result = qword_1ED000A08;
  if (!qword_1ED000A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A08);
  }

  return result;
}

unint64_t sub_1E5A0661C()
{
  result = qword_1ED000A10;
  if (!qword_1ED000A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A10);
  }

  return result;
}

unint64_t sub_1E5A06670()
{
  result = qword_1ED000A18;
  if (!qword_1ED000A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A18);
  }

  return result;
}

unint64_t sub_1E5A066C4()
{
  result = qword_1ED000A20;
  if (!qword_1ED000A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A20);
  }

  return result;
}

uint64_t sub_1E5A06718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5A06780()
{
  result = qword_1ED000A28;
  if (!qword_1ED000A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A28);
  }

  return result;
}

uint64_t PreviousPlanLockupAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A30, &qword_1E5A42A08);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A38, &qword_1E5A42A10);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v61 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A40, &qword_1E5A42A18);
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v80 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A48, &qword_1E5A42A20);
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v61 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A50, &qword_1E5A42A28);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v78 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A58, &unk_1E5A42A30);
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v14 = type metadata accessor for PreviousPlanLockupAction(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  v23 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1E5A064BC();
  v24 = v83;
  sub_1E5A2C214();
  if (v24)
  {
    goto LABEL_9;
  }

  v25 = v78;
  v63 = v19;
  v62 = v16;
  v27 = v79;
  v26 = v80;
  v64 = v22;
  v83 = v14;
  v28 = v81;
  v29 = sub_1E5A2C004();
  v30 = (2 * *(v29 + 16)) | 1;
  v84 = v29;
  v85 = v29 + 32;
  v86 = 0;
  v87 = v30;
  v31 = sub_1E58BC5BC();
  if (v31 == 5 || v86 != v87 >> 1)
  {
    v35 = sub_1E5A2BE84();
    swift_allocError();
    v36 = v13;
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v38 = v83;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v35 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v77 + 8))(v36, v11);
    swift_unknownObjectRelease();
LABEL_9:
    v39 = v82;
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  if (v31 <= 1u)
  {
    if (v31)
    {
      v89 = 1;
      sub_1E5A066C4();
      sub_1E5A2BF44();
      v46 = v13;
      v47 = v77;
      type metadata accessor for PreviousPlanDetail(0);
      v50 = v27;
      sub_1E5A07308(&qword_1ECFFF4A0, &protocol conformance descriptor for PreviousPlanDetail);
      v51 = v63;
      v52 = v67;
      sub_1E5A2BF84();
      (*(v68 + 8))(v50, v52);
      (*(v47 + 8))(v46, v11);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v49 = v64;
      sub_1E5A07250(v51, v64);
    }

    else
    {
      v89 = 0;
      sub_1E5A06780();
      sub_1E5A2BF44();
      v41 = v77;
      (*(v65 + 8))(v25, v66);
      (*(v41 + 8))(v13, v11);
      swift_unknownObjectRelease();
      v49 = v64;
      swift_storeEnumTagMultiPayload();
    }

    v48 = v82;
    v32 = v28;
  }

  else
  {
    if (v31 == 2)
    {
      v89 = 2;
      sub_1E5A0661C();
      v42 = v26;
      sub_1E5A2BF44();
      v32 = v28;
      v89 = 0;
      v43 = v72;
      v44 = sub_1E5A2BF94();
      v54 = v53;
      v55 = v42;
      v56 = v13;
      v57 = v44;
      v88 = 1;
      sub_1E5A072B4();
      sub_1E5A2BFE4();
      (*(v74 + 8))(v55, v43);
      (*(v77 + 8))(v56, v11);
      swift_unknownObjectRelease();
      v58 = v89;
      v59 = v62;
      *v62 = v57;
      v59[1] = v54;
      *(v59 + 16) = v58;
      swift_storeEnumTagMultiPayload();
      v60 = v59;
      v49 = v64;
      sub_1E5A07250(v60, v64);
    }

    else
    {
      v32 = v28;
      if (v31 == 3)
      {
        v89 = 3;
        sub_1E5A065C8();
        v33 = v75;
        sub_1E5A2BF44();
        v34 = v77;
        (*(v69 + 8))(v33, v70);
      }

      else
      {
        v89 = 4;
        sub_1E5A06574();
        v45 = v76;
        sub_1E5A2BF44();
        v34 = v77;
        (*(v71 + 8))(v45, v73);
      }

      (*(v34 + 8))(v13, v11);
      swift_unknownObjectRelease();
      v49 = v64;
      swift_storeEnumTagMultiPayload();
    }

    v48 = v82;
  }

  sub_1E5A07250(v49, v32);
  v39 = v48;
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1E5A07250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviousPlanLockupAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5A072B4()
{
  result = qword_1ED000A60;
  if (!qword_1ED000A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A60);
  }

  return result;
}

uint64_t sub_1E5A07308(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviousPlanDetail(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E5A0737C(uint64_t a1)
{
  sub_1E5898FBC(319);
  if (v1 <= 0x3F)
  {
    sub_1E5A073F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5A073F0()
{
  if (!qword_1ED000A78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED000A78);
    }
  }
}

unint64_t sub_1E5A074B8()
{
  result = qword_1ED000A80;
  if (!qword_1ED000A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A80);
  }

  return result;
}

unint64_t sub_1E5A07510()
{
  result = qword_1ED000A88;
  if (!qword_1ED000A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A88);
  }

  return result;
}

unint64_t sub_1E5A07568()
{
  result = qword_1ED000A90;
  if (!qword_1ED000A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A90);
  }

  return result;
}

unint64_t sub_1E5A075C0()
{
  result = qword_1ED000A98;
  if (!qword_1ED000A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A98);
  }

  return result;
}

unint64_t sub_1E5A07618()
{
  result = qword_1ED000AA0;
  if (!qword_1ED000AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AA0);
  }

  return result;
}

unint64_t sub_1E5A07670()
{
  result = qword_1ED000AA8;
  if (!qword_1ED000AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AA8);
  }

  return result;
}

unint64_t sub_1E5A076C8()
{
  result = qword_1ED000AB0;
  if (!qword_1ED000AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AB0);
  }

  return result;
}

unint64_t sub_1E5A07720()
{
  result = qword_1ED000AB8;
  if (!qword_1ED000AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AB8);
  }

  return result;
}

unint64_t sub_1E5A07778()
{
  result = qword_1ED000AC0;
  if (!qword_1ED000AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AC0);
  }

  return result;
}

unint64_t sub_1E5A077D0()
{
  result = qword_1ED000AC8;
  if (!qword_1ED000AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AC8);
  }

  return result;
}

unint64_t sub_1E5A07828()
{
  result = qword_1ED000AD0;
  if (!qword_1ED000AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AD0);
  }

  return result;
}

unint64_t sub_1E5A07880()
{
  result = qword_1ED000AD8;
  if (!qword_1ED000AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AD8);
  }

  return result;
}

unint64_t sub_1E5A078D8()
{
  result = qword_1ED000AE0;
  if (!qword_1ED000AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AE0);
  }

  return result;
}

unint64_t sub_1E5A07930()
{
  result = qword_1ED000AE8;
  if (!qword_1ED000AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AE8);
  }

  return result;
}

unint64_t sub_1E5A07988()
{
  result = qword_1ED000AF0;
  if (!qword_1ED000AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AF0);
  }

  return result;
}

uint64_t sub_1E5A079DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A47390 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A473B0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A473D0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72656C4165646968 && a2 == 0xE900000000000074)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

FitnessWorkoutPlan::WorkoutPlanMusicGenre __swiftcall WorkoutPlanMusicGenre.init(identifier:name:)(Swift::String identifier, Swift::String name)
{
  *v2 = identifier;
  v2[1] = name;
  result.name = name;
  result.identifier = identifier;
  return result;
}

uint64_t static WorkoutPlanMusicGenre.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanMusicGenre.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutPlanMusicGenre.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E5A07C44(uint64_t a1)
{
  v2 = sub_1E5A07EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A07C80(uint64_t a1)
{
  v2 = sub_1E5A07EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static WorkoutPlanMusicGenre.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E5A2C114(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E5A2C114();
    }
  }

  return result;
}

uint64_t WorkoutPlanMusicGenre.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000AF8, &qword_1E5A43060);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A07EF4();
  sub_1E5A2C224();
  v12 = 0;
  v8 = v10[3];
  sub_1E5A2C064();
  if (!v8)
  {
    v11 = 1;
    sub_1E5A2C064();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5A07EF4()
{
  result = qword_1ED000B00;
  if (!qword_1ED000B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B00);
  }

  return result;
}

uint64_t WorkoutPlanMusicGenre.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B08, &qword_1E5A43068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A07EF4();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1E5A2BF94();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1E5A2BF94();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanMusicGenre.hash(into:)(uint64_t a1)
{
  sub_1E5A2BB74();

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanMusicGenre.hashValue.getter()
{
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

unint64_t sub_1E5A08230()
{
  result = qword_1ED000B10;
  if (!qword_1ED000B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B10);
  }

  return result;
}

unint64_t sub_1E5A082A8()
{
  result = qword_1ED000B18;
  if (!qword_1ED000B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B18);
  }

  return result;
}

unint64_t sub_1E5A08300()
{
  result = qword_1ED000B20;
  if (!qword_1ED000B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B20);
  }

  return result;
}

unint64_t sub_1E5A08358()
{
  result = qword_1ED000B28;
  if (!qword_1ED000B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B28);
  }

  return result;
}

uint64_t sub_1E5A083E0@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_1E5A2ABC4();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1E5A2ABE4();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  sub_1E5A2ABF4();
  sub_1E5A2ABD4();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B38, &qword_1E5A43390) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_1E5A08670@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1E5A2A914();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B30, &qword_1E5A43388);
  return sub_1E5A083E0((a1 + *(v4 + 44)));
}

unint64_t sub_1E5A086D0()
{
  result = qword_1ED000B40;
  if (!qword_1ED000B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000B48, &qword_1E5A43398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B40);
  }

  return result;
}

__n128 PlanCompletionFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

void PlanCompletionFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, uint64_t *a3, unsigned __int8 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC308, &unk_1E5A433A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  v21 = *a4;
  v22 = v4[1];
  v84 = *v4;
  v85 = v22;
  v86 = v4[2];
  if (v21 == 1)
  {
    if (*a2)
    {
      return;
    }

    *a2 = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v24 = v23[16];
    v82 = a3;
    v25 = v23[20];
    v26 = &v20[v23[24]];
    v83[0] = 3;
    v81 = sub_1E5A08F50();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v27 = *MEMORY[0x1E6999B60];
    v28 = sub_1E5A2B924();
    v29 = *(v28 - 8);
    v30 = *(v29 + 104);
    v80 = v27;
    v79 = v28;
    v75 = v29 + 104;
    v76 = v30;
    (v30)(&v20[v24], v27);
    v31 = *MEMORY[0x1E6999B40];
    v32 = sub_1E5A2B914();
    v33 = *(v32 - 8);
    v34 = *(v33 + 104);
    v74 = v31;
    v73 = v32;
    v72 = v34;
    v71 = v33 + 104;
    (v34)(&v20[v25], v31);
    *v26 = &unk_1E5A433C0;
    *(v26 + 1) = 0;
    v35 = *(v9 + 104);
    v78 = *MEMORY[0x1E6999AD8];
    v67 = v9 + 104;
    v77 = v35;
    v35(v20);
    v36 = *v82;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1E58E7534(0, *(v36 + 2) + 1, 1, v36);
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_1E58E7534((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v40 = *(v9 + 32);
    v39 = v9 + 32;
    v69 = (*(v39 + 48) + 32) & ~*(v39 + 48);
    v68 = *(v39 + 40);
    v70 = v40;
    v40(&v36[v69 + v68 * v38], v20, v8);
    v41 = v23[16];
    v42 = v23[20];
    v43 = &v17[v23[24]];
    v83[0] = 0;
    sub_1E5A2BE14();
    sub_1E5A2BCB4();
    v76(&v17[v41], v80, v79);
    v72(&v17[v42], v74, v73);
    v44 = swift_allocObject();
    v45 = v85;
    v44[1] = v84;
    v44[2] = v45;
    v44[3] = v86;
    *v43 = &unk_1E5A433D0;
    *(v43 + 1) = v44;
    v77(v17, v78, v8);
    sub_1E5A0A370(&v84, v83);
    v47 = *(v36 + 2);
    v46 = *(v36 + 3);
    if (v47 >= v46 >> 1)
    {
      v36 = sub_1E58E7534((v46 > 1), v47 + 1, 1, v36);
    }

    a3 = v82;
    *(v36 + 2) = v47 + 1;
    v70(&v36[v69 + v47 * v68], v17, v8);
    v48 = v23[16];
    v49 = v23[20];
    v50 = &v14[v23[24]];
    v83[0] = 1;
    sub_1E5A2BE14();
    sub_1E5A2BCB4();
    v76(&v14[v48], v80, v79);
    v72(&v14[v49], v74, v73);
    v51 = swift_allocObject();
    v52 = v85;
    v51[1] = v84;
    v51[2] = v52;
    v51[3] = v86;
    *v50 = &unk_1E5A433E0;
    *(v50 + 1) = v51;
    v77(v14, v78, v8);
    sub_1E5A0A370(&v84, v83);
    v54 = *(v36 + 2);
    v53 = *(v36 + 3);
    if (v54 >= v53 >> 1)
    {
      v36 = sub_1E58E7534((v53 > 1), v54 + 1, 1, v36);
    }

    *(v36 + 2) = v54 + 1;
    v70(&v36[v69 + v54 * v68], v14, v8);
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v56 = v55[16];
    v57 = v55[20];
    v58 = &v11[v55[24]];
    v83[0] = 2;
    sub_1E5A08F50();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v59 = *MEMORY[0x1E6999B50];
    v60 = sub_1E5A2B924();
    (*(*(v60 - 8) + 104))(&v11[v56], v59, v60);
    v61 = *MEMORY[0x1E6999B40];
    v62 = sub_1E5A2B914();
    (*(*(v62 - 8) + 104))(&v11[v57], v61, v62);
    v63 = swift_allocObject();
    v64 = v85;
    v63[1] = v84;
    v63[2] = v64;
    v63[3] = v86;
    *v58 = &unk_1E5A433B8;
    *(v58 + 1) = v63;
    (*(v9 + 104))(v11, *MEMORY[0x1E6999AD8], v8);
    v36 = *a3;
    sub_1E5A0A370(&v84, v83);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1E58E7534(0, *(v36 + 2) + 1, 1, v36);
    }

    v66 = *(v36 + 2);
    v65 = *(v36 + 3);
    if (v66 >= v65 >> 1)
    {
      v36 = sub_1E58E7534((v65 > 1), v66 + 1, 1, v36);
    }

    *(v36 + 2) = v66 + 1;
    (*(v9 + 32))(&v36[((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v66], v11, v8);
  }

  *a3 = v36;
}

unint64_t sub_1E5A08F50()
{
  result = qword_1EE2CFCF8;
  if (!qword_1EE2CFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFCF8);
  }

  return result;
}

uint64_t sub_1E5A08FA4()
{
  *(v0 + 16) = sub_1E5A2BC84();
  *(v0 + 24) = sub_1E5A2BC74();
  *(v0 + 40) = 0;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B50, &unk_1E5A43510);
  *v1 = v0;
  v1[1] = sub_1E594D5A4;

  return MEMORY[0x1EEE01A40](v0 + 40, v2);
}

uint64_t sub_1E5A09084(uint64_t a1, int **a2)
{
  v2[12] = a1;
  v2[13] = sub_1E5A2BC84();
  v2[14] = sub_1E5A2BC74();
  v6 = (*a2 + **a2);
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v2;
  v4[1] = sub_1E5A09198;

  return v6(v2 + 7);
}

uint64_t sub_1E5A09198()
{
  v2 = *v1;
  v2[16] = v0;

  v4 = sub_1E5A2BC54();
  v2[17] = v4;
  v2[18] = v3;
  if (v0)
  {
    v5 = sub_1E5A098F8;
  }

  else
  {
    v5 = sub_1E5A092F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5A092F8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_1E5A2BC74();
  v0[19] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1E5A094D0;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 22, v5, v7);
}

uint64_t sub_1E5A094D0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return MEMORY[0x1EEE6DFA0](sub_1E5A095E4, v4, v5);
  }

  return result;
}

uint64_t sub_1E5A095E4()
{
  if (*(v0 + 176) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 177) = 0;
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B50, &unk_1E5A43510);
    *v3 = v0;
    v3[1] = sub_1E5A096FC;

    return MEMORY[0x1EEE01A40](v0 + 177, v4);
  }
}

uint64_t sub_1E5A096FC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1E5A0981C, v3, v2);
}

uint64_t sub_1E5A0981C(uint64_t a1)
{
  v2 = sub_1E5A2BC74();
  v1[19] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[20] = v3;
  *v3 = v1;
  v3[1] = sub_1E5A094D0;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 22, v2, v4);
}

uint64_t sub_1E5A098F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5A0995C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = sub_1E5A2BC84();
  v2[14] = sub_1E5A2BC74();
  v6 = (*(a2 + 16) + **(a2 + 16));
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v2;
  v4[1] = sub_1E5A09A70;

  return v6(v2 + 7);
}

uint64_t sub_1E5A09A70()
{
  v2 = *v1;
  v2[16] = v0;

  v4 = sub_1E5A2BC54();
  v2[17] = v4;
  v2[18] = v3;
  if (v0)
  {
    v5 = sub_1E5A0A640;
  }

  else
  {
    v5 = sub_1E5A09BD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5A09BD0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_1E5A2BC74();
  v0[19] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1E5A09DA8;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 22, v5, v7);
}

uint64_t sub_1E5A09DA8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return MEMORY[0x1EEE6DFA0](sub_1E5A09EBC, v4, v5);
  }

  return result;
}

uint64_t sub_1E5A09EBC()
{
  if (*(v0 + 176) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 177) = 0;
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B50, &unk_1E5A43510);
    *v3 = v0;
    v3[1] = sub_1E5A09FD4;

    return MEMORY[0x1EEE01A40](v0 + 177, v4);
  }
}

uint64_t sub_1E5A09FD4()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1E5A0A0F4, v3, v2);
}

uint64_t sub_1E5A0A0F4(uint64_t a1)
{
  v2 = sub_1E5A2BC74();
  v1[19] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[20] = v3;
  *v3 = v1;
  v3[1] = sub_1E5A09DA8;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 22, v2, v4);
}

uint64_t sub_1E5A0A1D0(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5A2BC84();
  v2[3] = sub_1E5A2BC74();
  v6 = (*(a2 + 32) + **(a2 + 32));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E58E4890;

  return v6();
}

uint64_t sub_1E5A0A2D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5A0A1D0(a1, v1 + 16);
}

uint64_t sub_1E5A0A3B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CD5C8;

  return sub_1E5A09084(a1, (v1 + 16));
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A0A490(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5A0995C(a1, v1 + 16);
}

unint64_t sub_1E5A0A52C()
{
  result = qword_1EE2CFD00;
  if (!qword_1EE2CFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD00);
  }

  return result;
}

unint64_t sub_1E5A0A584()
{
  result = qword_1EE2CFD08;
  if (!qword_1EE2CFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD08);
  }

  return result;
}

unint64_t sub_1E5A0A5EC()
{
  result = qword_1EE2CFCF0;
  if (!qword_1EE2CFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFCF0);
  }

  return result;
}

__n128 ViewPlansBannerFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t ViewPlansBannerFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2F8, &unk_1E5A43520);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v10 = *v3;
  v9 = v3[1];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v12 = v11[16];
  v13 = v11[20];
  v14 = &v8[v11[24]];
  sub_1E5A0A8E4();
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v15 = *MEMORY[0x1E6999B50];
  v16 = sub_1E5A2B924();
  (*(*(v16 - 8) + 104))(&v8[v12], v15, v16);
  v17 = *MEMORY[0x1E6999B48];
  v18 = sub_1E5A2B914();
  (*(*(v18 - 8) + 104))(&v8[v13], v17, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v10;
  *(v19 + 24) = v9;
  *v14 = &unk_1E5A43538;
  *(v14 + 1) = v19;
  (*(v6 + 104))(v8, *MEMORY[0x1E6999AD8], v5);
  v20 = *a3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1E58E7558(0, v20[2] + 1, 1, v20);
  }

  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1E58E7558((v21 > 1), v22 + 1, 1, v20);
  }

  v20[2] = v22 + 1;
  result = (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, v8, v5);
  *a3 = v20;
  return result;
}

unint64_t sub_1E5A0A8E4()
{
  result = qword_1ED000B58;
  if (!qword_1ED000B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B58);
  }

  return result;
}

uint64_t sub_1E5A0A938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E58CD5C8;

  return sub_1E597D7AC(a1, v4);
}

unint64_t sub_1E5A0A9EC()
{
  result = qword_1ED000B60;
  if (!qword_1ED000B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B60);
  }

  return result;
}

unint64_t sub_1E5A0AA44()
{
  result = qword_1ED000B68;
  if (!qword_1ED000B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B68);
  }

  return result;
}

unint64_t sub_1E5A0AA9C()
{
  result = qword_1ED000B70;
  if (!qword_1ED000B70)
  {
    type metadata accessor for ViewPlansBannerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B70);
  }

  return result;
}

unint64_t sub_1E5A0AB18()
{
  result = qword_1ED000B78;
  if (!qword_1ED000B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B78);
  }

  return result;
}

uint64_t sub_1E5A0AB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A473F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5A2C114();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5A0AC24(uint64_t a1)
{
  v2 = sub_1E5A0AEEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0AC60(uint64_t a1)
{
  v2 = sub_1E5A0AEEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A0AC9C(uint64_t a1)
{
  v2 = sub_1E5A0AF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0ACD8(uint64_t a1)
{
  v2 = sub_1E5A0AF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewPlansBannerAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B80, &qword_1E5A43660);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B88, &qword_1E5A43668);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0AEEC();
  sub_1E5A2C224();
  sub_1E5A0AF40();
  sub_1E5A2C024();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E5A0AEEC()
{
  result = qword_1ED000B90;
  if (!qword_1ED000B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B90);
  }

  return result;
}

unint64_t sub_1E5A0AF40()
{
  result = qword_1ED000B98;
  if (!qword_1ED000B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B98);
  }

  return result;
}

uint64_t ViewPlansBannerAction.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000BA0, &qword_1E5A43670);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000BA8, &unk_1E5A43678);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0AEEC();
  sub_1E5A2C214();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E5A2C004();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1E58BC5B0() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E5A2BE84();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v16 = &type metadata for ViewPlansBannerAction;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E5A0AF40();
  sub_1E5A2BF44();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E5A0B2F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B80, &qword_1E5A43660);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B88, &qword_1E5A43668);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0AEEC();
  sub_1E5A2C224();
  sub_1E5A0AF40();
  sub_1E5A2C024();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t ViewPlansBannerAction.hashValue.getter()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  return sub_1E5A2C204();
}

unint64_t sub_1E5A0B540()
{
  result = qword_1ED000BB0;
  if (!qword_1ED000BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BB0);
  }

  return result;
}

unint64_t sub_1E5A0B5C8()
{
  result = qword_1ED000BB8;
  if (!qword_1ED000BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BB8);
  }

  return result;
}

unint64_t sub_1E5A0B620()
{
  result = qword_1ED000BC0;
  if (!qword_1ED000BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BC0);
  }

  return result;
}

unint64_t sub_1E5A0B678()
{
  result = qword_1ED000BC8;
  if (!qword_1ED000BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BC8);
  }

  return result;
}

unint64_t sub_1E5A0B6D0()
{
  result = qword_1ED000BD0;
  if (!qword_1ED000BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BD0);
  }

  return result;
}

unint64_t sub_1E5A0B728()
{
  result = qword_1ED000BD8;
  if (!qword_1ED000BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BD8);
  }

  return result;
}

uint64_t ViewPlansBannerState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A29EB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ViewPlansBannerState.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ViewPlansBannerState(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ViewPlansBannerState(uint64_t a1)
{
  result = qword_1ED000C00;
  if (!qword_1ED000C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ViewPlansBannerState.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for ViewPlansBannerState(0) + 24));

  return v1;
}

uint64_t ViewPlansBannerState.init(activeStorefrontLocale:subtitle:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A29EB4();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for ViewPlansBannerState(0);
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t sub_1E5A0B950()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1E5A0B9AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A0C884(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A0B9D4(uint64_t a1)
{
  v2 = sub_1E5A0BC3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0BA10(uint64_t a1)
{
  v2 = sub_1E5A0BC3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewPlansBannerState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000BE0, &qword_1E5A43950);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0BC3C();
  sub_1E5A2C224();
  v8[15] = 0;
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ECFFCDF0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
  sub_1E5A2C0B4();
  if (!v1)
  {
    type metadata accessor for ViewPlansBannerState(0);
    v8[14] = 1;
    sub_1E5A2C064();
    v8[13] = 2;
    sub_1E5A2C064();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5A0BC3C()
{
  result = qword_1ED000BE8;
  if (!qword_1ED000BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BE8);
  }

  return result;
}

uint64_t ViewPlansBannerState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E5A29EB4();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000BF0, &qword_1E5A43958);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ViewPlansBannerState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0BC3C();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v28;
  v11 = v29;
  v25 = v8;
  v26 = v10;
  v34 = 0;
  sub_1E5A0C5CC(&qword_1ECFFCE18, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v14 = v30;
  v13 = v31;
  sub_1E5A2BFE4();
  (*(v11 + 32))(v26, v14, v4);
  v33 = 1;
  v15 = sub_1E5A2BF94();
  v16 = &v26[*(v25 + 20)];
  *v16 = v15;
  v16[1] = v17;
  v32 = 2;
  v18 = sub_1E5A2BF94();
  v20 = v19;
  (*(v12 + 8))(v7, v13);
  v21 = v26;
  v22 = &v26[*(v25 + 24)];
  *v22 = v18;
  v22[1] = v20;
  sub_1E5A0C040(v21, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5A0C0A4(v21);
}

uint64_t sub_1E5A0C040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewPlansBannerState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A0C0A4(uint64_t a1)
{
  v2 = type metadata accessor for ViewPlansBannerState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ViewPlansBannerState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E6930AC0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ViewPlansBannerState(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if (v11 == *v13 && v12 == v13[1])
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t ViewPlansBannerState.hash(into:)(uint64_t a1)
{
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5A2BA44();
  type metadata accessor for ViewPlansBannerState(0);
  sub_1E5A2BB74();

  return sub_1E5A2BB74();
}

uint64_t ViewPlansBannerState.hashValue.getter()
{
  sub_1E5A2C1B4();
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5A2BA44();
  type metadata accessor for ViewPlansBannerState(0);
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A0C360(uint64_t a1)
{
  sub_1E5A2C1B4();
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5A2BA44();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A0C41C(uint64_t a1, uint64_t a2)
{
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5A2BA44();
  sub_1E5A2BB74();

  return sub_1E5A2BB74();
}

uint64_t sub_1E5A0C4CC(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5A2BA44();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A0C5CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5A0C614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x1E6930AC0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t sub_1E5A0C6F0(uint64_t a1)
{
  result = sub_1E5A29EB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E5A0C780()
{
  result = qword_1ED000C10;
  if (!qword_1ED000C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C10);
  }

  return result;
}

unint64_t sub_1E5A0C7D8()
{
  result = qword_1ED000C18;
  if (!qword_1ED000C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C18);
  }

  return result;
}

unint64_t sub_1E5A0C830()
{
  result = qword_1ED000C20;
  if (!qword_1ED000C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C20);
  }

  return result;
}

uint64_t sub_1E5A0C884(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001E5A47410 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t CompactViewPlansBannerView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E58D2CB8;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t CompactViewPlansBannerView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = sub_1E5A2AA34();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C28, &qword_1E5A43B70);
  sub_1E5A0CCA8(v4, v5, v6, a2 + *(v7 + 44));
  LOBYTE(v6) = sub_1E5A2ADF4();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C30, &unk_1E5A43B78) + 36);
  *v8 = v6;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  v9 = sub_1E5A2B7E4();
  v11 = v10;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_1E5A2B744();
  *(v12 + 40) = v13;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  *(v12 + 48) = sub_1E5A2B744();
  *(v12 + 56) = v14;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C38, &qword_1E5A43B88) + 36);
  *v15 = v23;
  *(v15 + 24) = v25;
  *(v15 + 8) = v24;
  *(v15 + 40) = v9;
  *(v15 + 48) = v11;
  sub_1E5A2A094();
  v17 = v16;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C40, &unk_1E5A43B90) + 36));
  v19 = *(sub_1E5A2A754() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1E5A2A9B4();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  *v18 = v17;
  *(v18 + 1) = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170);
  *&v18[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1E5A0CCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v38 = a1;
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C70, &qword_1E5A43CA0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1E5A2B4B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAD0, &qword_1E5A3F4A8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  type metadata accessor for WorkoutPlansBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1E5A2B4F4();
  (*(v12 + 104))(v14, *MEMORY[0x1E6981630], v11);
  v23 = sub_1E5A2B4E4();

  (*(v12 + 8))(v14, v11);
  v41 = v23;
  v42 = 0x3FFC71C71C71C71CLL;
  LOWORD(v43) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAD8, &qword_1E5A3F4B0);
  sub_1E59D2DF8();
  v32 = v20;
  sub_1E5A2B214();

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v35 = v43;
  v36 = v41;
  v33 = v46;
  v34 = v45;
  v49 = 1;
  v48 = v42;
  v47 = v44;
  sub_1E5A0D31C(v38, v39, v37 & 1, v10);
  v24 = sub_1E5A2AD94();
  v25 = &v10[*(v6 + 44)];
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  sub_1E58BABA0(v20, v17, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
  LOBYTE(v6) = v49;
  LOBYTE(v14) = v48;
  LOBYTE(v11) = v47;
  v26 = v40;
  sub_1E58A7CFC(v10, v40);
  sub_1E58BABA0(v17, a4, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C78, &qword_1E5A43CA8);
  v28 = a4 + *(v27 + 48);
  *v28 = 0;
  *(v28 + 8) = v6;
  v29 = v35;
  *(v28 + 16) = v36;
  *(v28 + 24) = v14;
  *(v28 + 32) = v29;
  *(v28 + 40) = v11;
  v30 = v33;
  *(v28 + 48) = v34;
  *(v28 + 56) = v30;
  sub_1E58A7CFC(v26, a4 + *(v27 + 64));
  sub_1E58A7D6C(v10);
  sub_1E58BAD14(v32, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
  sub_1E58A7D6C(v26);
  return sub_1E58BAD14(v17, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
}

unint64_t sub_1E5A0D0F4()
{
  result = qword_1ED000C48;
  if (!qword_1ED000C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000C40, &unk_1E5A43B90);
    sub_1E5A0D1AC();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C48);
  }

  return result;
}

unint64_t sub_1E5A0D1AC()
{
  result = qword_1ED000C50;
  if (!qword_1ED000C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000C38, &qword_1E5A43B88);
    sub_1E5A0D264();
    sub_1E58CD164(&qword_1ECFFFAB8, &qword_1ECFFFAC0, &qword_1E5A3F498, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C50);
  }

  return result;
}

unint64_t sub_1E5A0D264()
{
  result = qword_1ED000C58;
  if (!qword_1ED000C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000C30, &unk_1E5A43B78);
    sub_1E58CD164(&qword_1ED000C60, &qword_1ED000C68, &unk_1E5A43C90, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C58);
  }

  return result;
}

uint64_t sub_1E5A0D31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v94 = a1;
  v95 = a2;
  v122 = a4;
  v5 = sub_1E5A2BA14();
  v120 = *(v5 - 8);
  v121 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v119 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v116 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v112 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v111 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v129 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = &v93 - v16;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF68, &unk_1E5A3C4E0);
  v106 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v103 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAF8, &unk_1E5A43CB0);
  v113 = *(v18 - 8);
  v114 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v93 - v19;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB00, &unk_1E5A3F4D0);
  v118 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v117 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v93 - v22;
  v125 = sub_1E5A2AEB4();
  v105 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v104 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E5A2A9E4();
  v109 = *(v24 - 8);
  v110 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB08, &unk_1E5A43CC0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v130 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v93 - v30;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB10, &qword_1E5A3F4E0);
  v32 = sub_1E58CD164(&qword_1ECFFFB18, &qword_1ECFFFB10, &qword_1E5A3F4E0, MEMORY[0x1E6999B78]);
  v123 = a3 & 1;
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v33 = sub_1E5A2AFA4();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v146 = v33;
  v147 = v35;
  LOBYTE(v148) = v37 & 1;
  v149 = v39;
  sub_1E5A2A9D4();
  v126 = v31;
  sub_1E5A2B264();
  (*(v109 + 8))(v26, v110);
  sub_1E58B3C9C(v33, v35, v37 & 1);

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v109 = v142;
  v110 = v140;
  v107 = v145;
  v108 = v144;
  v154 = 1;
  v153 = v141;
  v152 = v143;
  v41 = v94;
  v40 = v95;
  v101 = v32;
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2AE04();
  v43 = v104;
  v42 = v105;
  v44 = v125;
  (*(v105 + 104))(v104, *MEMORY[0x1E6980EA8], v125);
  sub_1E5A2AEE4();

  (*(v42 + 8))(v43, v44);
  v45 = sub_1E5A2AFA4();
  v47 = v46;
  LOBYTE(v44) = v48;

  LODWORD(v146) = sub_1E5A2ABA4();
  v49 = sub_1E5A2AF84();
  v104 = v50;
  v105 = v49;
  v102 = v51;
  v125 = v52;
  sub_1E58B3C9C(v45, v47, v44 & 1);

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v99 = v148;
  v100 = v146;
  v97 = v151;
  v98 = v150;
  v157 = 1;
  v156 = v147;
  v155 = v149;
  v53 = swift_allocObject();
  *(v53 + 16) = v41;
  *(v53 + 24) = v40;
  v54 = v123;
  *(v53 + 32) = v123;
  v133 = v41;
  v134 = v40;
  v135 = v54;
  sub_1E596AC08(v41, v40);
  v55 = v103;
  sub_1E5A2B574();
  v56 = sub_1E58CD164(&qword_1ECFFFB20, &qword_1ECFFEF68, &unk_1E5A3C4E0, MEMORY[0x1E697D680]);
  v57 = sub_1E59D4040();
  v58 = v127;
  v96 = v56;
  sub_1E5A2B0B4();
  (*(v106 + 8))(v55, v58);
  sub_1E5A2B9A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A3C8E0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v60 = qword_1EE2D33E0;
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  v61 = sub_1E5A2BB64();
  v62 = MEMORY[0x1E69E6158];
  *(inited + 48) = v61;
  *(inited + 56) = v63;
  *(inited + 72) = v62;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x6E6F74747562;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v62;
  *(inited + 128) = 0x6973736572706D69;
  v64 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = 0;
  *(inited + 168) = v64;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v65 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v65);
  v66 = v115;
  sub_1E5A2B9D4();
  v67 = sub_1E5A2B9E4();
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = v119;
  sub_1E5A2B9F4();
  v136 = v127;
  v137 = &type metadata for CustomPlanBannerButtonStyle;
  v138 = v96;
  v139 = v57;
  swift_getOpaqueTypeConformance2();
  v69 = v131;
  v70 = v114;
  v71 = v128;
  sub_1E5A2B014();
  (*(v120 + 8))(v68, v121);
  sub_1E58BAD14(v66, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v113 + 8))(v71, v70);
  v72 = v130;
  sub_1E58BABA0(v126, v130, &qword_1ECFFFB08, &unk_1E5A43CC0);
  LOBYTE(v70) = v154;
  v73 = v153;
  v74 = v152;
  LODWORD(v127) = v157;
  LODWORD(v128) = v156;
  LODWORD(v129) = v155;
  v76 = v117;
  v75 = v118;
  v77 = *(v118 + 16);
  v77(v117, v69, v132);
  v78 = v72;
  v79 = v122;
  sub_1E58BABA0(v78, v122, &qword_1ECFFFB08, &unk_1E5A43CC0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB30, &unk_1E5A43D40);
  v81 = v79 + v80[12];
  *v81 = 0;
  *(v81 + 8) = v70;
  v82 = v109;
  *(v81 + 16) = v110;
  *(v81 + 24) = v73;
  *(v81 + 32) = v82;
  *(v81 + 40) = v74;
  v83 = v107;
  *(v81 + 48) = v108;
  *(v81 + 56) = v83;
  v84 = v79 + v80[16];
  v86 = v104;
  v85 = v105;
  *v84 = v105;
  *(v84 + 8) = v86;
  LOBYTE(v70) = v102 & 1;
  *(v84 + 16) = v102 & 1;
  *(v84 + 24) = v125;
  v87 = v79 + v80[20];
  *v87 = 0;
  *(v87 + 8) = v127;
  *(v87 + 16) = v100;
  *(v87 + 24) = v128;
  *(v87 + 32) = v99;
  *(v87 + 40) = v129;
  v88 = v97;
  *(v87 + 48) = v98;
  *(v87 + 56) = v88;
  v89 = v79 + v80[24];
  v90 = v132;
  v77(v89, v76, v132);
  sub_1E594C9E8(v85, v86, v70);
  v91 = *(v75 + 8);

  v91(v131, v90);
  sub_1E58BAD14(v126, &qword_1ECFFFB08, &unk_1E5A43CC0);
  v91(v76, v90);
  sub_1E58B3C9C(v85, v86, v70);

  return sub_1E58BAD14(v130, &qword_1ECFFFB08, &unk_1E5A43CC0);
}

uint64_t sub_1E5A0E218@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2D33E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB10, &qword_1E5A3F4E0);
  sub_1E58CD164(&qword_1ECFFFB18, &qword_1ECFFFB10, &qword_1E5A3F4E0, MEMORY[0x1E6999B78]);
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  result = sub_1E5A2AF64();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t ViewPlansBannerEnvironment.init(navigateToPlansTab:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ArchivedWorkoutPlansLayout.init(contentMargins:dynamicTypeSize:sizeClass:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A2A2F4();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for ArchivedWorkoutPlansLayout(0, a4, a5, v13);
  *(a6 + *(v14 + 36)) = a2;
  v15 = *(*(a4 - 8) + 32);
  v16 = a6 + *(v14 + 40);

  return v15(v16, a3, a4);
}

uint64_t static ArchivedWorkoutPlansLayout.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x1E6930EA0]() & 1) != 0 && (type metadata accessor for ArchivedWorkoutPlansLayout(0, a3, a4, v6), (sub_1E5A2A304()))
  {
    return sub_1E5A2BA74() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ArchivedWorkoutPlansLayout.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2A2F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E5A0E66C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E5A0E79C(char a1)
{
  if (!a1)
  {
    return 0x4D746E65746E6F63;
  }

  if (a1 == 1)
  {
    return 0x5463696D616E7964;
  }

  return 0x73616C43657A6973;
}

uint64_t sub_1E5A0E83C(uint64_t a1)
{
  sub_1E5A2C1B4();
  sub_1E5905A90(v3, *v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5A0E890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A0E66C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A0E8C0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5A0F7C0();
  *a2 = result;
  return result;
}

uint64_t sub_1E5A0E8EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5A0E940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ArchivedWorkoutPlansLayout.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v5 = v4;
  v7 = *(a2 + 16);
  v14[0] = *(a2 + 24);
  v14[1] = v7;
  type metadata accessor for ArchivedWorkoutPlansLayout.CodingKeys(255, v7, v14[0], a4);
  swift_getWitnessTable();
  v8 = sub_1E5A2C0D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A2C224();
  v20 = 0;
  sub_1E5A2A2F4();
  sub_1E590FB1C(&qword_1ECFFD5E0, MEMORY[0x1E699D938]);
  v12 = v16;
  sub_1E5A2C0B4();
  if (!v12)
  {
    v19 = *(v5 + *(v15 + 36));
    v18 = 1;
    sub_1E5A0EBD4();
    sub_1E5A2C0B4();
    v17 = 2;
    sub_1E5A2C0B4();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1E5A0EBD4()
{
  result = qword_1ED000C80;
  if (!qword_1ED000C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C80);
  }

  return result;
}

uint64_t ArchivedWorkoutPlansLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E5A2A2F4();
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArchivedWorkoutPlansLayout.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v38 = sub_1E5A2C014();
  v33 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v27 - v10;
  v36 = a3;
  v13 = type metadata accessor for ArchivedWorkoutPlansLayout(0, a2, a3, v12);
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v11;
  v16 = v40;
  sub_1E5A2C214();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v33;
  v17 = v34;
  v40 = v15;
  v28 = a2;
  v44 = 0;
  sub_1E590FB1C(&qword_1ECFFD5F0, MEMORY[0x1E699D948]);
  v19 = v35;
  sub_1E5A2BFE4();
  (*(v17 + 32))(v40, v19, v37);
  v42 = 1;
  sub_1E5A0F0DC();
  sub_1E5A2BFE4();
  v35 = v13;
  v20 = *(v13 + 36);
  v21 = v40;
  v40[v20] = v43;
  v41 = 2;
  v22 = v32;
  v23 = v28;
  sub_1E5A2BFE4();
  (*(v18 + 8))(v39, v38);
  v24 = v35;
  (*(v30 + 32))(&v21[*(v35 + 10)], v22, v23);
  v25 = v29;
  (*(v29 + 16))(v31, v21, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v25 + 8))(v21, v24);
}

unint64_t sub_1E5A0F0DC()
{
  result = qword_1ED000C88[0];
  if (!qword_1ED000C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED000C88);
  }

  return result;
}

uint64_t sub_1E5A0F174(uint64_t a1)
{
  result = sub_1E5A2A2F4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5A0F204(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1E5A2A2F4() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0xF4)
  {
    v13 = 244;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1);
      }

      else
      {
        v23 = a1 + v10;
        if (v12 > 0xF4)
        {
          v25 = *(v8 + 48);

          return v25(&v23[v11 + 1] & ~v11, v9);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xC)
          {
            return v24 - 11;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_1E5A0F474(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1E5A2A2F4() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0xF4)
  {
    v15 = 244;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + v12 + 1) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_51:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v15)
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }

  else
  {
    v24 = &a1[v12];
    if (v14 > 0xF4)
    {
      v25 = *(v10 + 56);

      v25(&v24[v13 + 1] & ~v13, a2, v11);
    }

    else
    {
      *v24 = a2 + 11;
    }
  }
}

uint64_t ActiveWorkoutPlanWorkoutState.init(contentMargins:isCompact:loadState:locale:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1E5A2A2F4();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  active = type metadata accessor for ActiveWorkoutPlanWorkoutState(0);
  *(a5 + active[5]) = a2;
  *(a5 + active[6]) = a3;
  v12 = active[7];
  v13 = sub_1E5A29EB4();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t type metadata accessor for ActiveWorkoutPlanWorkoutState(uint64_t a1)
{
  result = qword_1ED000DA8;
  if (!qword_1ED000DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutState.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2A2F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActiveWorkoutPlanWorkoutState.loadState.setter(char a1)
{
  result = type metadata accessor for ActiveWorkoutPlanWorkoutState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ActiveWorkoutPlanWorkoutState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActiveWorkoutPlanWorkoutState(0) + 28);
  v4 = sub_1E5A29EB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E5A0FA98()
{
  v1 = 0x4D746E65746E6F63;
  v2 = 0x7461745364616F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6361706D6F437369;
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

uint64_t sub_1E5A0FB20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A106FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A0FB48(uint64_t a1)
{
  v2 = sub_1E5A0FE34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0FB84(uint64_t a1)
{
  v2 = sub_1E5A0FE34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActiveWorkoutPlanWorkoutState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000D90, &qword_1E5A43F80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0FE34();
  sub_1E5A2C224();
  v11[15] = 0;
  sub_1E5A2A2F4();
  sub_1E5A10358(&qword_1ECFFD5E0, MEMORY[0x1E699D930], MEMORY[0x1E699D938]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    active = type metadata accessor for ActiveWorkoutPlanWorkoutState(0);
    v11[14] = 1;
    sub_1E5A2C074();
    v11[13] = *(v3 + *(active + 24));
    v11[12] = 2;
    sub_1E59D7794();
    sub_1E5A2C0B4();
    v11[11] = 3;
    sub_1E5A29EB4();
    sub_1E5A10358(&qword_1ECFFCDF0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E5A0FE34()
{
  result = qword_1ED000D98;
  if (!qword_1ED000D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000D98);
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_1E5A29EB4();
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A2A2F4();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000DA0, &qword_1E5A43F88);
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v24 - v7;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutState(0);
  MEMORY[0x1EEE9AC00](active);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0FE34();
  v31 = v8;
  v12 = v33;
  sub_1E5A2C214();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v11;
  v33 = v4;
  v15 = v27;
  v14 = v28;
  v38 = 0;
  sub_1E5A10358(&qword_1ECFFD5F0, MEMORY[0x1E699D930], MEMORY[0x1E699D948]);
  sub_1E5A2BFE4();
  v16 = *(v15 + 32);
  v17 = v13;
  v16(v13, v30, v5);
  v37 = 1;
  v18 = sub_1E5A2BFA4();
  v30 = active;
  v13[*(active + 20)] = v18 & 1;
  v35 = 2;
  sub_1E59D7944();
  sub_1E5A2BFE4();
  v19 = a1;
  v20 = v29;
  *(v17 + *(v30 + 6)) = v36;
  v34 = 3;
  sub_1E5A10358(&qword_1ECFFCE18, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v21 = v17;
  v22 = v33;
  sub_1E5A2BFE4();
  (*(v20 + 8))(v31, v32);
  (*(v25 + 32))(v21 + *(v30 + 7), v22, v14);
  sub_1E5A103A0(v21, v26);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1E5A10404(v21);
}

uint64_t sub_1E5A10358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5A103A0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutState(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1E5A10404(uint64_t a1)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutState(0);
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t _s18FitnessWorkoutPlan06ActivebcB5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E6930EA0]())
  {
    active = type metadata accessor for ActiveWorkoutPlanWorkoutState(0);
    if (*(a1 + *(active + 20)) == *(a2 + *(active + 20)) && *(a1 + *(active + 24)) == *(a2 + *(active + 24)))
    {

      JUMPOUT(0x1E6930AC0);
    }
  }

  return 0;
}

uint64_t sub_1E5A10548(uint64_t a1)
{
  result = sub_1E5A2A2F4();
  if (v2 <= 0x3F)
  {
    result = sub_1E5A29EB4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5A105F8()
{
  result = qword_1ED000DB8;
  if (!qword_1ED000DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DB8);
  }

  return result;
}

unint64_t sub_1E5A10650()
{
  result = qword_1ED000DC0;
  if (!qword_1ED000DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DC0);
  }

  return result;
}

unint64_t sub_1E5A106A8()
{
  result = qword_1ED000DC8;
  if (!qword_1ED000DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DC8);
  }

  return result;
}

uint64_t sub_1E5A106FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6361706D6F437369 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

void CreateWorkoutPlanButtonState.handoffAlertState.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *CreateWorkoutPlanButtonState.handoffAlertState.setter(_BYTE *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

uint64_t CreateWorkoutPlanButtonState.localizedTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CreateWorkoutPlanButtonState.init(handoffAlertState:storefrontLocale:supportsHandoffToCompanionDevice:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1E5A29EB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = *a1;
  v14 = a1[1];
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE2D33E0;
  (*(v9 + 16))(v11, a2, v8);
  v16 = v15;
  v17 = sub_1E5A2BB64();
  v19 = v18;
  result = (*(v9 + 8))(a2, v8);
  *a4 = v13;
  *(a4 + 1) = v14;
  *(a4 + 8) = v17;
  *(a4 + 16) = v19;
  *(a4 + 24) = a3 & 1;
  return result;
}

FitnessWorkoutPlan::CreateWorkoutPlanButtonState __swiftcall CreateWorkoutPlanButtonState.init(handoffAlertState:localizedTitle:supportsHandoffToCompanionDevice:)(FitnessWorkoutPlan::CreateWorkoutPlanHandoffAlertState handoffAlertState, Swift::String localizedTitle, Swift::Bool supportsHandoffToCompanionDevice)
{
  v4 = *(*&handoffAlertState.iconState + 1);
  *v3 = **&handoffAlertState.iconState;
  *(v3 + 1) = v4;
  *(v3 + 8) = localizedTitle;
  *(v3 + 24) = supportsHandoffToCompanionDevice;
  result.localizedTitle = localizedTitle;
  result.handoffAlertState = handoffAlertState;
  result.supportsHandoffToCompanionDevice = supportsHandoffToCompanionDevice;
  return result;
}

unint64_t sub_1E5A10AF8()
{
  v1 = 0x657A696C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E5A10B64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A112F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A10B8C(uint64_t a1)
{
  v2 = sub_1E5A11058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A10BC8(uint64_t a1)
{
  v2 = sub_1E5A11058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreateWorkoutPlanButtonState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000DD0, &qword_1E5A44170);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 1);
  v13 = *(v1 + 2);
  v14 = v9;
  v12[1] = v1[24];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A11058();
  sub_1E5A2C224();
  v19 = v7;
  v20 = v8;
  v18 = 0;
  sub_1E593C394();
  v10 = v15;
  sub_1E5A2C0B4();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1E5A2C064();
  v16 = 2;
  sub_1E5A2C074();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CreateWorkoutPlanButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000DE0, &qword_1E5A44178);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A11058();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  sub_1E593C3E8();
  sub_1E5A2BFE4();
  v9 = v25;
  v10 = v26;
  v23 = 1;
  v20 = sub_1E5A2BF94();
  v21 = v11;
  v18 = v9;
  v19 = v10;
  v22 = 2;
  v12 = sub_1E5A2BFA4();
  (*(v6 + 8))(v8, v5);
  v13 = v12 & 1;
  v14 = v19;
  *a2 = v18;
  *(a2 + 1) = v14;
  v15 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E5A11058()
{
  result = qword_1ED000DD8;
  if (!qword_1ED000DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DD8);
  }

  return result;
}

uint64_t _s18FitnessWorkoutPlan06CreatebC11ButtonStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = a1[24];
    v5 = a2[24];
    if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
    {
      return v4 ^ v5 ^ 1u;
    }

    v7 = sub_1E5A2C114();
    result = 0;
    if (v7)
    {
      return v4 ^ v5 ^ 1u;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A11144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5A1118C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5A111F4()
{
  result = qword_1ED000DE8;
  if (!qword_1ED000DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DE8);
  }

  return result;
}

unint64_t sub_1E5A1124C()
{
  result = qword_1ED000DF0;
  if (!qword_1ED000DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DF0);
  }

  return result;
}

unint64_t sub_1E5A112A4()
{
  result = qword_1ED000DF8;
  if (!qword_1ED000DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DF8);
  }

  return result;
}

uint64_t sub_1E5A112F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5A46760 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5A46780 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t localizedWorkoutPlanString(_:locale:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = sub_1E5A29EB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E5A2BB14();
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v12);
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE2D33E0;
  (*(v8 + 16))(v10, a2, v7);
  v16 = v15;
  return sub_1E5A2BB64();
}

id sub_1E5A11604()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2D33E0 = result;
  return result;
}

uint64_t WorkoutPlanCreationError.localizedError(selectModalitiesCount:locale:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E5A29EB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE2D33E0;
  (*(v4 + 16))(v6, a2, v3);
  v9 = v8;
  return sub_1E5A2BB64();
}

__n128 WorkoutPlanCreationConfiguration.init(filterOptions:modalities:workoutDayLengths:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a4 + 32) = result;
  *(a4 + 48) = v6;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return result;
}

uint64_t WorkoutPlanCreationConfiguration.filterOptions.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1E5931DC4(v7, &v6);
}

unint64_t sub_1E5A118F8()
{
  v1 = 0x6974696C61646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x704F7265746C6966;
  }
}

uint64_t sub_1E5A11968@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A1236C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A11990(uint64_t a1)
{
  v2 = sub_1E5A11D10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A119CC(uint64_t a1)
{
  v2 = sub_1E5A11D10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000E00, &qword_1E5A44380);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = v1[1];
  v26 = *v1;
  v27 = v8;
  v9 = v1[3];
  v28 = v1[2];
  v29 = v9;
  v10 = *(v1 + 9);
  v30 = *(v1 + 8);
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5931DC4(&v26, &v22);
  sub_1E5A11D10();
  sub_1E5A2C224();
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v21 = 0;
  sub_1E59D7740();
  sub_1E5A2C0B4();
  if (v2)
  {
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    sub_1E58F011C(&v17);
  }

  else
  {
    v11 = v14;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    sub_1E58F011C(&v17);
    v16 = v30;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
    sub_1E59D79E0(&qword_1ECFFFB88, sub_1E58C31B8, MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
    v16 = v11;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
    sub_1E59A4EFC(&qword_1ECFFF5B0, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E5A11D10()
{
  result = qword_1ED000E08;
  if (!qword_1ED000E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E08);
  }

  return result;
}

uint64_t WorkoutPlanCreationConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000E10, &qword_1E5A44388);
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A11D10();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v33 = 0;
  sub_1E59D786C();
  v9 = v17;
  sub_1E5A2BFE4();
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
  LOBYTE(v18[0]) = 1;
  sub_1E59D79E0(&qword_1ECFFFBB8, sub_1E58C7914, MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  v16 = *&v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
  v32 = 2;
  sub_1E59A4EFC(&qword_1ECFFF5D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  (*(v8 + 8))(v7, v9);
  v10 = v23;
  v11 = v28;
  v12 = v29;
  v18[0] = v28;
  v18[1] = v29;
  v13 = v31;
  v18[2] = v30;
  v18[3] = v31;
  v14 = v16;
  *&v19 = v16;
  *(&v19 + 1) = v23;
  a2[2] = v30;
  a2[3] = v13;
  *a2 = v11;
  a2[1] = v12;
  a2[4] = v19;
  sub_1E5A120D4(v18, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v20[0] = v28;
  v20[1] = v29;
  v20[2] = v30;
  v20[3] = v31;
  v21 = v14;
  v22 = v10;
  return sub_1E58C3068(v20);
}

uint64_t _s18FitnessWorkoutPlan0bC21CreationConfigurationV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v23[0] = *a1;
  v23[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v23[2] = a1[2];
  v23[3] = v3;
  v6 = a2[1];
  v24[0] = *a2;
  v24[1] = v6;
  v7 = a2[3];
  v9 = *a2;
  v8 = a2[1];
  v24[2] = a2[2];
  v24[3] = v7;
  v19 = v5;
  v20 = v4;
  v21 = a1[2];
  v22 = a1[3];
  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  v15 = v9;
  v16 = v8;
  v17 = a2[2];
  v18 = a2[3];
  sub_1E5931DC4(v23, v26);
  sub_1E5931DC4(v24, v26);
  v12 = static WorkoutPlanFilterOptions.== infix(_:_:)();
  v25[0] = v15;
  v25[1] = v16;
  v25[2] = v17;
  v25[3] = v18;
  sub_1E58F011C(v25);
  v26[0] = v19;
  v26[1] = v20;
  v26[2] = v21;
  v26[3] = v22;
  sub_1E58F011C(v26);
  if (v12 & 1) != 0 && (sub_1E595AD48(v10, v11))
  {
    v13 = sub_1E595C8C0();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_1E5A12268()
{
  result = qword_1ED000E18;
  if (!qword_1ED000E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E18);
  }

  return result;
}

unint64_t sub_1E5A122C0()
{
  result = qword_1ED000E20;
  if (!qword_1ED000E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E20);
  }

  return result;
}

unint64_t sub_1E5A12318()
{
  result = qword_1ED000E28;
  if (!qword_1ED000E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E28);
  }

  return result;
}

uint64_t sub_1E5A1236C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F7265746C6966 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A470F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t PersonalizedWorkoutPlansState.init(allowWorkoutPlanCreation:candidates:contentMargins:hasActivePlan:locale:placement:sizeClass:subtitle:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1E58F0054(a1, a9, &qword_1ECFFC100, &qword_1E5A2FE90);
  v18 = type metadata accessor for PersonalizedWorkoutPlansState(0);
  sub_1E58F0054(a2, a9 + v18[5], &qword_1ECFFE260, &qword_1E5A39370);
  v19 = v18[6];
  v20 = sub_1E5A2A2F4();
  (*(*(v20 - 8) + 32))(a9 + v19, a3, v20);
  sub_1E58F0054(a4, a9 + v18[7], &qword_1ECFFC100, &qword_1E5A2FE90);
  v21 = v18[8];
  v22 = sub_1E5A29EB4();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a5, v22);
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  v24 = (a9 + v18[11]);
  *v24 = a8;
  v24[1] = a10;
  v25 = (a9 + v18[12]);
  *v25 = a11;
  v25[1] = a12;
  return result;
}

uint64_t type metadata accessor for PersonalizedWorkoutPlansState(uint64_t a1)
{
  result = qword_1EE2D0940;
  if (!qword_1EE2D0940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonalizedWorkoutPlansState.candidates.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PersonalizedWorkoutPlansState(0) + 20);

  return sub_1E5A12734(a1, v3);
}

uint64_t sub_1E5A12734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PersonalizedWorkoutPlansState.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedWorkoutPlansState(0) + 24);
  v4 = sub_1E5A2A2F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalizedWorkoutPlansState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedWorkoutPlansState(0) + 32);
  v4 = sub_1E5A29EB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalizedWorkoutPlansState.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for PersonalizedWorkoutPlansState(0) + 44));

  return v1;
}

uint64_t PersonalizedWorkoutPlansState.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for PersonalizedWorkoutPlansState(0) + 48));

  return v1;
}

unint64_t sub_1E5A129F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74616469646E6163;
    v6 = 0x4D746E65746E6F63;
    if (a1 != 2)
    {
      v6 = 0x7669746341736168;
    }

    if (!a1)
    {
      v5 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x73616C43657A6973;
    v2 = 0x656C746974627573;
    if (a1 != 7)
    {
      v2 = 0x656C746974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C61636F6CLL;
    if (a1 != 4)
    {
      v3 = 0x6E656D6563616C70;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E5A12B30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A14078(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A12B58(uint64_t a1)
{
  v2 = sub_1E5A12FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A12B94(uint64_t a1)
{
  v2 = sub_1E5A12FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlansState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000E30, &qword_1E5A445C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A12FF0();
  sub_1E5A2C224();
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  sub_1E58FE478(&qword_1ECFFCDE0, MEMORY[0x1E6999B20]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v10 = type metadata accessor for PersonalizedWorkoutPlansState(0);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
    sub_1E5A13994(&qword_1ED000E40, MEMORY[0x1E6999B20]);
    sub_1E5A2C0B4();
    v19 = 2;
    sub_1E5A2A2F4();
    sub_1E5A13F18(&qword_1ECFFD5E0, MEMORY[0x1E699D930], MEMORY[0x1E699D938]);
    sub_1E5A2C0B4();
    v18 = 3;
    sub_1E5A2C0B4();
    v17 = 4;
    sub_1E5A29EB4();
    sub_1E5A13F18(&qword_1ECFFCDF0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5A2C0B4();
    v16 = *(v3 + *(v10 + 36));
    v15 = 5;
    sub_1E5A13044();
    sub_1E5A2C0B4();
    v14 = *(v3 + *(v10 + 40));
    v13 = 6;
    sub_1E58FDD58();
    sub_1E5A2C0B4();
    v12 = 7;
    sub_1E5A2C034();
    v11 = 8;
    sub_1E5A2C034();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E5A12FF0()
{
  result = qword_1ED000E38;
  if (!qword_1ED000E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E38);
  }

  return result;
}

unint64_t sub_1E5A13044()
{
  result = qword_1ED000E58;
  if (!qword_1ED000E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E58);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlansState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1E5A29EB4();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A2A2F4();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  MEMORY[0x1EEE9AC00](v49);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = v39 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000E60, &qword_1E5A445C8);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v15 = v39 - v14;
  v16 = type metadata accessor for PersonalizedWorkoutPlansState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E5A12FF0();
  v50 = v15;
  v20 = v53;
  sub_1E5A2C214();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v21 = v48;
  v40 = v11;
  v53 = v18;
  v65 = 0;
  v22 = sub_1E58FE478(&qword_1ECFFCE08, MEMORY[0x1E6999B30]);
  sub_1E5A2BFE4();
  v39[1] = v22;
  v23 = v53;
  sub_1E58F0054(v52, v53, &qword_1ECFFC100, &qword_1E5A2FE90);
  v64 = 1;
  sub_1E5A13994(&qword_1ED000E68, MEMORY[0x1E6999B30]);
  sub_1E5A2BFE4();
  sub_1E58F0054(v8, v23 + v16[5], &qword_1ECFFE260, &qword_1E5A39370);
  v63 = 2;
  sub_1E5A13F18(&qword_1ECFFD5F0, MEMORY[0x1E699D930], MEMORY[0x1E699D948]);
  v24 = v23;
  v25 = v45;
  v26 = v47;
  v52 = 0;
  sub_1E5A2BFE4();
  (*(v46 + 32))(v24 + v16[6], v25, v26);
  v62 = 3;
  v27 = v40;
  sub_1E5A2BFE4();
  sub_1E58F0054(v27, v24 + v16[7], &qword_1ECFFC100, &qword_1E5A2FE90);
  v61 = 4;
  sub_1E5A13F18(&qword_1ECFFCE18, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v28 = v24;
  v29 = v42;
  v30 = v44;
  sub_1E5A2BFE4();
  (*(v43 + 32))(v28 + v16[8], v29, v30);
  v59 = 5;
  sub_1E5A13A68();
  sub_1E5A2BFE4();
  *(v28 + v16[9]) = v60;
  v57 = 6;
  sub_1E58FE530();
  sub_1E5A2BFE4();
  *(v28 + v16[10]) = v58;
  v56 = 7;
  v31 = sub_1E5A2BF64();
  v32 = (v28 + v16[11]);
  *v32 = v31;
  v32[1] = v33;
  v55 = 8;
  v34 = sub_1E5A2BF64();
  v36 = v35;
  (*(v21 + 8))(v50, v51);
  v37 = (v28 + v16[12]);
  *v37 = v34;
  v37[1] = v36;
  sub_1E5A13ABC(v28, v41);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return sub_1E5A13B20(v28);
}

uint64_t sub_1E5A13994(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE260, &qword_1E5A39370);
    sub_1E5A13F18(&qword_1ED000E48, type metadata accessor for PersonalizedWorkoutPlanCandidates, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidates);
    sub_1E5A13F18(&qword_1ED000E50, type metadata accessor for PersonalizedWorkoutPlanCandidates, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidates);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5A13A68()
{
  result = qword_1ED000E70;
  if (!qword_1ED000E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E70);
  }

  return result;
}

uint64_t sub_1E5A13ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlansState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A13B20(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedWorkoutPlansState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s18FitnessWorkoutPlan012PersonalizedB10PlansStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5A2B8F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PersonalizedWorkoutPlansState(0);
  type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  sub_1E5A13F18(qword_1EE2D07B8, type metadata accessor for PersonalizedWorkoutPlanCandidates, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidates);
  if ((sub_1E5A2B8F4() & 1) == 0 || (MEMORY[0x1E6930EA0](a1 + v4[6], a2 + v4[6]) & 1) == 0 || (sub_1E5A2B8F4() & 1) == 0 || (MEMORY[0x1E6930AC0](a1 + v4[8], a2 + v4[8]) & 1) == 0 || *(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v5 = v4[11];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9 || (*v6 != *v8 || v7 != v9) && (sub_1E5A2C114() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = v4[12];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (v14 && (*v11 == *v13 && v12 == v14 || (sub_1E5A2C114() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

void sub_1E5A13D9C(uint64_t a1)
{
  sub_1E58FE834();
  if (v1 <= 0x3F)
  {
    sub_1E5A13E84(319);
    if (v2 <= 0x3F)
    {
      sub_1E5A2A2F4();
      if (v3 <= 0x3F)
      {
        sub_1E5A29EB4();
        if (v4 <= 0x3F)
        {
          sub_1E593C974();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5A13E84(uint64_t a1)
{
  if (!qword_1EE2CFAA0)
  {
    type metadata accessor for PersonalizedWorkoutPlanCandidates(255);
    sub_1E5A13F18(qword_1EE2D07B8, type metadata accessor for PersonalizedWorkoutPlanCandidates, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidates);
    v1 = sub_1E5A2B904();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2CFAA0);
    }
  }
}

uint64_t sub_1E5A13F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5A13F74()
{
  result = qword_1ED000E78;
  if (!qword_1ED000E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E78);
  }

  return result;
}

unint64_t sub_1E5A13FCC()
{
  result = qword_1ED000E80;
  if (!qword_1ED000E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E80);
  }

  return result;
}

unint64_t sub_1E5A14024()
{
  result = qword_1ED000E88;
  if (!qword_1ED000E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E88);
  }

  return result;
}

uint64_t sub_1E5A14078(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001E5A46500 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7669746341736168 && a2 == 0xED00006E616C5065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t PreviousPlanDetail.init(placeholderIdentifier:title:subtitle:caption:startDate:workoutPlanLength:weekdays:timePerDay:modalities:templateIdentifier:modalityIdentifiersCount:schedule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v30 = *a16;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v21 = type metadata accessor for PreviousPlanDetail(0);
  v22 = v21[6];
  v23 = sub_1E5A29CF4();
  (*(*(v23 - 8) + 32))(&a9[v22], a5, v23);
  v24 = &a9[v21[7]];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = v21[8];
  v26 = sub_1E5A29E34();
  (*(*(v26 - 8) + 32))(&a9[v25], a8, v26);
  *&a9[v21[9]] = a10;
  *&a9[v21[11]] = a12;
  *&a9[v21[10]] = a11;
  *&a9[v21[12]] = a13;
  v27 = v21[13];
  v28 = sub_1E5A29E74();
  result = (*(*(v28 - 8) + 32))(&a9[v27], a14, v28);
  *&a9[v21[14]] = a15;
  *&a9[v21[15]] = v30;
  return result;
}

uint64_t PreviousPlanDetail.placeholderIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PreviousPlanDetail.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PreviousPlanDetail.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviousPlanDetail(0) + 24);
  v4 = sub_1E5A29CF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviousPlanDetail.caption.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviousPlanDetail(0) + 28));

  return v1;
}

uint64_t PreviousPlanDetail.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviousPlanDetail(0) + 32);
  v4 = sub_1E5A29E34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviousPlanDetail.weekdays.getter()
{
  type metadata accessor for PreviousPlanDetail(0);
}

uint64_t PreviousPlanDetail.timePerDay.getter()
{
  type metadata accessor for PreviousPlanDetail(0);
}

uint64_t PreviousPlanDetail.modalities.getter()
{
  type metadata accessor for PreviousPlanDetail(0);
}

uint64_t PreviousPlanDetail.templateIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviousPlanDetail(0) + 52);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviousPlanDetail.schedule.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PreviousPlanDetail(0) + 60));
}

uint64_t sub_1E5A1485C()
{
  v0 = sub_1E5A29E74();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v15 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1E5A29E34();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A29CF4();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PreviousPlanDetail(0);
  __swift_allocate_value_buffer(v8, qword_1ED000E90);
  v9 = __swift_project_value_buffer(v8, qword_1ED000E90);
  sub_1E5A29C84();
  sub_1E5A29E24();
  sub_1E5A29E64();
  v10 = MEMORY[0x1E69E7CC0];
  v14 = sub_1E590E29C(MEMORY[0x1E69E7CC0]);
  *v9 = 0xD000000000000016;
  *(v9 + 1) = 0x80000001E5A475F0;
  *(v9 + 2) = 0xD000000000000011;
  *(v9 + 3) = 0x80000001E5A47610;
  (*(v5 + 32))(&v9[v8[6]], v7, v16);
  v11 = &v9[v8[7]];
  *v11 = 0xD000000000000013;
  *(v11 + 1) = 0x80000001E5A47650;
  (*(v17 + 32))(&v9[v8[8]], v4, v18);
  *&v9[v8[9]] = 0;
  *&v9[v8[11]] = v10;
  *&v9[v8[10]] = v10;
  *&v9[v8[12]] = v10;
  result = (*(v19 + 32))(&v9[v8[13]], v15, v20);
  *&v9[v8[14]] = 0;
  *&v9[v8[15]] = v14;
  return result;
}

uint64_t static PreviousPlanDetail.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECFFB4F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PreviousPlanDetail(0);
  v3 = __swift_project_value_buffer(v2, qword_1ED000E90);

  return sub_1E5A14BD0(v3, a1);
}

uint64_t sub_1E5A14BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviousPlanDetail(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5A14C34(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000018;
    if (a1 != 10)
    {
      v5 = 0x656C756465686373;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0x737961646B656577;
    v8 = 0x44726550656D6974;
    if (a1 != 7)
    {
      v8 = 0x6974696C61646F6DLL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656C746974;
    v2 = 0x6E6F6974706163;
    v3 = 0x7461447472617473;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0x656C746974627573;
    }

    if (!a1)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E5A14DCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A167BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A14E00(uint64_t a1)
{
  v2 = sub_1E5A153B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A14E3C(uint64_t a1)
{
  v2 = sub_1E5A153B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviousPlanDetail.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000EA8, &qword_1E5A447D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A153B4();
  sub_1E5A2C224();
  LOBYTE(v12) = 0;
  sub_1E5A2C064();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1E5A2C064();
    v9 = type metadata accessor for PreviousPlanDetail(0);
    LOBYTE(v12) = 2;
    sub_1E5A29CF4();
    sub_1E5A164F4(&qword_1ECFFECB0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
    sub_1E5A2C0B4();
    LOBYTE(v12) = 3;
    sub_1E5A2C064();
    LOBYTE(v12) = 4;
    sub_1E5A29E34();
    sub_1E5A164F4(&qword_1ECFFCB30, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1E5A2C0B4();
    LOBYTE(v12) = 5;
    sub_1E5A2C094();
    v12 = *(v3 + v9[10]);
    HIBYTE(v11) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000EB8, &qword_1E5A447D8);
    sub_1E5A15E94(&qword_1ED000EC0, sub_1E5A15408, MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
    v12 = *(v3 + v9[11]);
    HIBYTE(v11) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
    sub_1E59A4EFC(&qword_1ECFFF5B0, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
    v12 = *(v3 + v9[12]);
    HIBYTE(v11) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
    sub_1E58C7B54(&qword_1ECFFB980, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
    LOBYTE(v12) = 9;
    sub_1E5A29E74();
    sub_1E5A164F4(&qword_1ECFFC7F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5A2C0B4();
    LOBYTE(v12) = 10;
    sub_1E5A2C094();
    v12 = *(v3 + v9[15]);
    HIBYTE(v11) = 11;
    sub_1E58C2B90();

    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E5A153B4()
{
  result = qword_1ED000EB0;
  if (!qword_1ED000EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EB0);
  }

  return result;
}

unint64_t sub_1E5A15408()
{
  result = qword_1ED000EC8;
  if (!qword_1ED000EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EC8);
  }

  return result;
}

uint64_t PreviousPlanDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1E5A29E74();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A29E34();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A29CF4();
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000ED0, &qword_1E5A447E0);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v11 = v29 - v10;
  v12 = type metadata accessor for PreviousPlanDetail(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A153B4();
  v42 = v11;
  v15 = v44;
  sub_1E5A2C214();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v40;
  v30 = v7;
  v31 = v12;
  v44 = a1;
  v32 = v14;
  LOBYTE(v46) = 0;
  v17 = sub_1E5A2BF94();
  v18 = v32;
  *v32 = v17;
  *(v18 + 1) = v19;
  LOBYTE(v46) = 1;
  *(v18 + 2) = sub_1E5A2BF94();
  *(v18 + 3) = v20;
  LOBYTE(v46) = 2;
  sub_1E5A164F4(&qword_1ECFFECC8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  v21 = v30;
  v29[1] = 0;
  sub_1E5A2BFE4();
  v22 = v31;
  (*(v37 + 32))(&v18[v31[6]], v9, v21);
  LOBYTE(v46) = 3;
  v23 = sub_1E5A2BF94();
  v24 = &v18[v22[7]];
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v46) = 4;
  sub_1E5A164F4(&qword_1ECFFCB80, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v26 = v36;
  sub_1E5A2BFE4();
  (*(v35 + 32))(&v18[v22[8]], v16, v26);
  LOBYTE(v46) = 5;
  *&v18[v22[9]] = sub_1E5A2BFC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000EB8, &qword_1E5A447D8);
  v45 = 6;
  sub_1E5A15E94(&qword_1ED000ED8, sub_1E5A15F0C, MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  *&v18[v22[10]] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
  v45 = 7;
  sub_1E59A4EFC(&qword_1ECFFF5D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  *&v18[v22[11]] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
  v45 = 8;
  sub_1E58C7B54(&qword_1ECFFBB48, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  LODWORD(v40) = 1;
  *&v18[v22[12]] = v46;
  LOBYTE(v46) = 9;
  sub_1E5A164F4(&qword_1ECFFC818, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1E5A2BFE4();
  (*(v38 + 32))(v32 + v31[13], v34, v39);
  LOBYTE(v46) = 10;
  *(v32 + v31[14]) = sub_1E5A2BFC4();
  v45 = 11;
  sub_1E58C7620();
  sub_1E5A2BFE4();
  (*(v41 + 8))(v42, v43);
  v27 = v32;
  *(v32 + v31[15]) = v46;
  sub_1E5A14BD0(v27, v33);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_1E5A15F60(v27);
}

uint64_t sub_1E5A15E94(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000EB8, &qword_1E5A447D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5A15F0C()
{
  result = qword_1ED000EE0;
  if (!qword_1ED000EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EE0);
  }

  return result;
}

uint64_t sub_1E5A15F60(uint64_t a1)
{
  v2 = type metadata accessor for PreviousPlanDetail(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PreviousPlanDetail.hash(into:)(uint64_t a1)
{
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  v3 = type metadata accessor for PreviousPlanDetail(0);
  sub_1E5A29CF4();
  sub_1E5A164F4(&qword_1ECFFECD0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5A2BA44();
  sub_1E5A2BB74();
  sub_1E5A29E34();
  sub_1E5A164F4(&qword_1ECFFCBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E5A2BA44();
  MEMORY[0x1E6932DE0](*(v1 + v3[9]));
  v4 = *(v1 + v3[10]);
  MEMORY[0x1E6932DE0](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1E6932DE0](v7);
      --v5;
    }

    while (v5);
  }

  v8 = *(v1 + v3[11]);
  MEMORY[0x1E6932DE0](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      v11 = *v10++;
      MEMORY[0x1E6932DE0](v11);
      --v9;
    }

    while (v9);
  }

  v12 = *(v1 + v3[12]);
  MEMORY[0x1E6932DE0](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 40;
    do
    {

      sub_1E5A2BB74();

      v14 += 16;
      --v13;
    }

    while (v13);
  }

  sub_1E5A29E74();
  sub_1E5A164F4(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  MEMORY[0x1E6932DE0](*(v1 + v3[14]));
  v15 = *(v1 + v3[15]);

  return sub_1E58F9DDC(a1, v15);
}

uint64_t PreviousPlanDetail.hashValue.getter()
{
  sub_1E5A2C1B4();
  PreviousPlanDetail.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5A16298()
{
  sub_1E5A2C1B4();
  PreviousPlanDetail.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5A162DC(uint64_t a1)
{
  sub_1E5A2C1B4();
  PreviousPlanDetail.hash(into:)(v2);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan08PreviousC6DetailV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for PreviousPlanDetail(0);
  if ((sub_1E5A29CC4() & 1) == 0)
  {
    return 0;
  }

  v7 = v6[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_1E5A2C114() & 1) == 0 || (sub_1E5A29E04() & 1) == 0 || *(a1 + v6[9]) != *(a2 + v6[9]) || (sub_1E595C8C4() & 1) == 0 || (sub_1E595C8C0() & 1) == 0 || (sub_1E595B21C(*(a1 + v6[12]), *(a2 + v6[12])) & 1) == 0 || (sub_1E5A29E54() & 1) == 0 || *(a1 + v6[14]) != *(a2 + v6[14]))
  {
    return 0;
  }

  v12 = v6[15];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  sub_1E599C6C0(v13, v14);
  v16 = v15;

  return v16 & 1;
}

uint64_t sub_1E5A164F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PreviousPlanDetail.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviousPlanDetail.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5A166B8()
{
  result = qword_1ED000EF0;
  if (!qword_1ED000EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EF0);
  }

  return result;
}

unint64_t sub_1E5A16710()
{
  result = qword_1ED000EF8;
  if (!qword_1ED000EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000EF8);
  }

  return result;
}

unint64_t sub_1E5A16768()
{
  result = qword_1ED000F00;
  if (!qword_1ED000F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F00);
  }

  return result;
}

uint64_t sub_1E5A167BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001E5A46A40 == a2;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A46C50 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737961646B656577 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44726550656D6974 && a2 == 0xEA00000000007961 || (sub_1E5A2C114() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365 || (sub_1E5A2C114() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A464E0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5A475D0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1E5A16C50()
{
  result = qword_1ED000F08;
  if (!qword_1ED000F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F08);
  }

  return result;
}

unint64_t sub_1E5A16CB4()
{
  result = qword_1ED000F10;
  if (!qword_1ED000F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F10);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(0, a6, a7, a4);
  v14 = *(v13 + 36);
  v15 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  (*(*(v15 - 8) + 56))(&a8[v14], 1, 1, v15);
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330, MEMORY[0x1E6999B78]);

  *a8 = sub_1E5A2A654();
  *(a8 + 1) = v16;
  sub_1E5A16E98(a2, &a8[v14]);
  *&a8[*(v13 + 40)] = a3;
  sub_1E5A16F08(a4, a5, a6, a7);

  return sub_1E58BAD14(a2, &qword_1ECFFC120, &qword_1E5A2FF10);
}

uint64_t sub_1E5A16E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A16F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  swift_getFunctionTypeMetadata();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E5A16FD4(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v2 = *(a1 + 16);
  *&v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  *(&v6 + 1) = MEMORY[0x1E69E6530];
  swift_getFunctionTypeMetadata();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v3 = swift_allocObject();
  v4 = *(a1 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  return sub_1E5A1B630;
}

uint64_t sub_1E5A170A4(uint64_t a1)
{
  v3 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24[-v7];
  sub_1E58BABA0(v1 + *(a1 + 36), &v24[-v7], &qword_1ECFFC120, &qword_1E5A2FF10);
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_1E58BAD14(v8, &qword_1ECFFC120, &qword_1E5A2FF10);
    return 0;
  }

  v11 = *&v8[*(v9 + 28)];

  sub_1E59D207C(v8, type metadata accessor for PersonalizedWorkoutPlanCandidate);

  v13 = sub_1E591BB44(v12);

  v14 = sub_1E591C344(v13);
  if (v15)
  {

    v16 = 0;
  }

  else
  {
    v16 = v14;
    v17 = sub_1E591C3F8(v13);
    v19 = v18;

    if (v19)
    {
      v16 = 0;
    }

    else
    {
      if (v17 < v16)
      {
        __break(1u);
        return result;
      }

      if (v16 != v17)
      {
        sub_1E5A2BAE4();
        sub_1E5A2BAD4();
        v23 = *(v11 + 16);

        v25 = v23;
        sub_1E5A2BAB4();
        sub_1E5A2BAD4();
        v25 = v16;
        sub_1E5A2BAB4();
        sub_1E5A2BAD4();
        v25 = v17;
        goto LABEL_10;
      }
    }
  }

  sub_1E5A2BAE4();
  sub_1E5A2BAD4();
  v20 = *(v11 + 16);

  v25 = v20;
  sub_1E5A2BAB4();
  sub_1E5A2BAD4();
  v25 = v16;
LABEL_10:
  sub_1E5A2BAB4();
  sub_1E5A2BAD4();
  sub_1E5A2BB04();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE2D33E0;
  swift_getKeyPath();

  v22 = v21;
  sub_1E5A2B944();

  return sub_1E5A2BB64();
}

uint64_t PersonalizedWorkoutPlanCandidateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F18, &qword_1E5A44B48);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v33 - v4);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F20, &qword_1E5A44B50);
  v43 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v42 = &v33 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F28, &qword_1E5A44B58);
  v7 = *(a1 + 24);
  v50 = *(a1 + 16);
  v8 = v50;
  v51 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  v9 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v61 = MEMORY[0x1E697EBF8];
  v40 = MEMORY[0x1E697E858];
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x1E697E5D8];
  v10 = swift_getWitnessTable();
  v50 = v9;
  v51 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = v9;
  v51 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1E5A2A774();
  v11 = sub_1E5A2A6C4();
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v33 - v14;
  *v5 = sub_1E5A2B7E4();
  v5[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F30, &qword_1E5A44B60);
  v17 = v41;
  v18 = v8;
  v19 = v8;
  v20 = v7;
  sub_1E5A17B80(v41, v19, v7, v5 + *(v16 + 44));
  v21 = v5 + *(v3 + 36);
  *v21 = 0x3FFC71C71C71C71CLL;
  *(v21 + 4) = 0;
  sub_1E5A2B7A4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F38, &qword_1E5A44B68);
  v23 = sub_1E5A1872C();
  v32 = sub_1E5A187E4();
  v24 = v42;
  sub_1E5A2B3A4();
  sub_1E58BAD14(v5, &qword_1ED000F18, &qword_1E5A44B48);
  v45 = v18;
  v46 = v20;
  v47 = v17;
  sub_1E5A2B7E4();
  v50 = v3;
  v51 = MEMORY[0x1E6981CD8];
  v52 = v22;
  v53 = v22;
  v54 = v23;
  v55 = MEMORY[0x1E6981CD0];
  v56 = v32;
  v57 = v32;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v33;
  v27 = v34;
  sub_1E5A2B314();
  (*(v43 + 8))(v24, v27);
  v28 = swift_getWitnessTable();
  v48 = v25;
  v49 = v28;
  swift_getWitnessTable();
  v29 = v35;
  sub_1E58B41DC();
  v30 = *(v39 + 8);
  v30(v26, v11);
  sub_1E58B41DC();
  return (v30)(v29, v11);
}

uint64_t sub_1E5A17B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v56 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F90, &qword_1E5A44C78);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v43 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F98, &qword_1E5A44C80);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v43 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FA0, &qword_1E5A44C88);
  v46 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v43 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FA8, &qword_1E5A44C90);
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v43 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FB0, &qword_1E5A44C98);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FB8, &qword_1E5A44CA0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FC0, &unk_1E5A44CA8);
  MEMORY[0x1EEE9AC00](v52);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - v19;
  v22 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(0, a2, a3, v21);
  sub_1E58BABA0(v56 + *(v22 + 36), v20, &qword_1ECFFC120, &qword_1E5A2FF10);
  v23 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  if ((*(*(v23 - 8) + 48))(v20, 1, v23) == 1)
  {
    sub_1E58BAD14(v20, &qword_1ECFFC120, &qword_1E5A2FF10);
    sub_1E5A2B8A4();
    sub_1E5A2B894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E5A2C930;
    if (qword_1ECFFB4D8 != -1)
    {
      swift_once();
    }

    *(v24 + 32) = sub_1E5A2B744();
    *(v24 + 40) = v25;
    if (qword_1ECFFB4E0 != -1)
    {
      swift_once();
    }

    *(v24 + 48) = sub_1E5A2B744();
    *(v24 + 56) = v26;
    sub_1E5A2B754();
    sub_1E5A2A614();
    *v7 = v59;
    *(v7 + 8) = v60;
    *(v7 + 24) = v61;
    *(v7 + 20) = 256;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FC8, &qword_1E5A44CB8);
    v27 = sub_1E59E70CC();
    v57 = &type metadata for StretchGoalPlanArtworkView;
    v58 = v27;
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ED000FD0, &qword_1ED000FC8, &qword_1E5A44CB8, MEMORY[0x1E697DB78]);
    v28 = v50;
    sub_1E5A2AA74();
    v29 = &qword_1ED000F98;
    v30 = &qword_1E5A44C80;
    sub_1E58BABA0(v28, v53, &qword_1ED000F98, &qword_1E5A44C80);
    swift_storeEnumTagMultiPayload();
    sub_1E5A1B678();
    sub_1E5A1B730();
    sub_1E5A2AA74();
    v31 = v28;
    return sub_1E58BAD14(v31, v29, v30);
  }

  v32 = v20[*(v23 + 44)];
  sub_1E59D207C(v20, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  if (!v32)
  {
    swift_storeEnumTagMultiPayload();
    v37 = sub_1E59E71AC();
    v59 = &type metadata for ConsistentPlanArtworkView;
    *&v60 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1E5A2AA74();
    v29 = &qword_1ED000FC0;
    v30 = &unk_1E5A44CA8;
    sub_1E58BABA0(v17, v53, &qword_1ED000FC0, &unk_1E5A44CA8);
    swift_storeEnumTagMultiPayload();
    sub_1E5A1B678();
    sub_1E5A1B730();
    sub_1E5A2AA74();
    v31 = v17;
    return sub_1E58BAD14(v31, v29, v30);
  }

  if (v32 == 1)
  {
    v33 = sub_1E59E71AC();
    sub_1E5A2B094();
    v34 = v44;
    v35 = v47;
    (*(v44 + 16))(v15, v11, v47);
    swift_storeEnumTagMultiPayload();
    v59 = &type metadata for ConsistentPlanArtworkView;
    *&v60 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1E5A2AA74();
    sub_1E58BABA0(v17, v53, &qword_1ED000FC0, &unk_1E5A44CA8);
    swift_storeEnumTagMultiPayload();
    sub_1E5A1B678();
    sub_1E5A1B730();
    sub_1E5A2AA74();
    sub_1E58BAD14(v17, &qword_1ED000FC0, &unk_1E5A44CA8);
    return (*(v34 + 8))(v11, v35);
  }

  else
  {
    v38 = sub_1E59E70CC();
    v39 = v45;
    sub_1E5A2B094();
    v40 = v46;
    v41 = v49;
    (*(v46 + 16))(v7, v39, v49);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FC8, &qword_1E5A44CB8);
    v59 = &type metadata for StretchGoalPlanArtworkView;
    *&v60 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ED000FD0, &qword_1ED000FC8, &qword_1E5A44CB8, MEMORY[0x1E697DB78]);
    v42 = v50;
    sub_1E5A2AA74();
    sub_1E58BABA0(v42, v53, &qword_1ED000F98, &qword_1E5A44C80);
    swift_storeEnumTagMultiPayload();
    sub_1E5A1B678();
    sub_1E5A1B730();
    sub_1E5A2AA74();
    sub_1E58BAD14(v42, &qword_1ED000F98, &qword_1E5A44C80);
    return (*(v40 + 8))(v39, v41);
  }
}

uint64_t sub_1E5A18550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5A2A074();
  v5 = v4;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F38, &qword_1E5A44B68) + 36));
  v7 = *(sub_1E5A2A754() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1E5A2A9B4();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ED000F18, &qword_1E5A44B48);
}

uint64_t sub_1E5A18644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F38, &qword_1E5A44B68) + 36));
  v5 = *(sub_1E5A2A754() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ED000F18, &qword_1E5A44B48);
}

unint64_t sub_1E5A1872C()
{
  result = qword_1ED000F40;
  if (!qword_1ED000F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F18, &qword_1E5A44B48);
    sub_1E58CD164(&qword_1ED000F48, &qword_1ED000F50, &unk_1E5A44B70, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F40);
  }

  return result;
}

unint64_t sub_1E5A187E4()
{
  result = qword_1ED000F58;
  if (!qword_1ED000F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F38, &qword_1E5A44B68);
    sub_1E5A1872C();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F58);
  }

  return result;
}

uint64_t sub_1E5A1889C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v43 = a4;
  v6 = sub_1E5A2AC84();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F28, &qword_1E5A44B58);
  v51 = a2;
  v52 = a3;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata3();
  v35 = sub_1E5A2B864();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E5A2B604();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v28 - v9;
  v10 = sub_1E5A2A6C4();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1E5A2A6C4();
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v28 - v14;
  v28 = swift_getWitnessTable();
  v49 = v28;
  v50 = MEMORY[0x1E697EBF8];
  v29 = swift_getWitnessTable();
  v47 = v29;
  v48 = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable();
  v51 = v13;
  v52 = v30;
  v31 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  sub_1E5A2AA34();
  v44 = a2;
  v45 = a3;
  v46 = v39;
  v22 = v33;
  sub_1E5A2B5F4();
  sub_1E5A2B7F4();
  sub_1E5A2B2E4();
  (*(v38 + 8))(v22, v8);
  v23 = v32;
  sub_1E5A2B324();
  (*(v37 + 8))(v12, v10);
  v24 = v40;
  sub_1E5A2AC74();
  v25 = v30;
  sub_1E5A2B224();
  (*(v41 + 8))(v24, v42);
  (*(v36 + 8))(v23, v13);
  v51 = v13;
  v52 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v26 = *(v16 + 8);
  v26(v18, OpaqueTypeMetadata2);
  sub_1E58B41DC();
  return (v26)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_1E5A18EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v150 = a4;
  v7 = sub_1E5A2BA14();
  v133 = *(v7 - 8);
  v134 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v130 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A29E74();
  v121 = *(v11 - 8);
  v122 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v125 = &v120 - v14;
  v15 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v139 = (&v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v127 = &v120 - v18;
  v163 = a2;
  v164 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v131 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v129 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v120 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v128 = &v120 - v24;
  v25 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v136 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v151 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v138 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v120 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v123 = (&v120 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v135 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v120 - v38;
  v40 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v137 = &v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = OpaqueTypeMetadata2;
  v43 = sub_1E5A2AA84();
  v147 = *(v43 - 8);
  v148 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v146 = &v120 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v145 = &v120 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F28, &qword_1E5A44B58);
  MEMORY[0x1EEE9AC00](v47);
  v144 = &v120 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v120 - v50;
  sub_1E5A1A078(a1, a2, a3, &v120 - v50);
  LOBYTE(OpaqueTypeMetadata2) = sub_1E5A2AD94();
  sub_1E5A2A424();
  v140 = v47;
  v52 = *(v47 + 36);
  v53 = v40;
  v142 = v51;
  v143 = a2;
  v54 = &v51[v52];
  *v54 = OpaqueTypeMetadata2;
  *(v54 + 1) = v55;
  *(v54 + 2) = v56;
  *(v54 + 3) = v57;
  *(v54 + 4) = v58;
  v54[40] = 0;
  v152 = a3;
  v60 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(0, a2, a3, v59);
  v61 = *(v60 + 36);
  sub_1E58BABA0(a1 + v61, v39, &qword_1ECFFC120, &qword_1E5A2FF10);
  if ((*(v41 + 48))(v39, 1, v53) != 1)
  {
    v74 = v137;
    sub_1E593CD50(v39, v137);
    v123 = sub_1E5A16FD4(v60);
    v75 = v135;
    sub_1E59D2018(v74, v135);
    (*(v41 + 56))(v75, 0, 1, v53);
    v76 = *(a1 + *(v60 + 40));
    sub_1E5A2BA84();
    v124 = v53;
    v77 = v74;
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v78 = qword_1EE2D33E0;
    swift_getKeyPath();

    v79 = v78;
    sub_1E5A2B944();

    v80 = sub_1E5A2BB64();
    v81 = v135;
    v123(v135, v76, v80, v82, 0x7261646E656C6163, 0xE800000000000000);

    sub_1E58BAD14(v81, &qword_1ECFFC120, &qword_1E5A2FF10);
    sub_1E5A2B9B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E5A3C8E0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    sub_1E5A2BA84();
    v84 = qword_1EE2D33E0;
    swift_getKeyPath();

    v85 = v84;
    sub_1E5A2B944();

    v86 = sub_1E5A2BB64();
    v87 = MEMORY[0x1E69E6158];
    *(inited + 48) = v86;
    *(inited + 56) = v88;
    *(inited + 72) = v87;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x6E6F74747562;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 120) = v87;
    *(inited + 128) = 0x6973736572706D69;
    v89 = MEMORY[0x1E69E6530];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = 0;
    *(inited + 168) = v89;
    *(inited + 176) = 0x64496F636572;
    *(inited + 184) = 0xE600000000000000;
    v90 = v77 + *(v124 + 9);
    v91 = v125;
    sub_1E58BABA0(v90, v125, &qword_1ECFFD900, &qword_1E5A39BB0);
    v92 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
    if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
    {
      sub_1E58BAD14(v91, &qword_1ECFFD900, &qword_1E5A39BB0);
      v93 = (inited + 192);
      *(inited + 216) = v87;
      v69 = v143;
    }

    else
    {
      v95 = v120;
      v94 = v121;
      v96 = v122;
      (*(v121 + 16))(v120, v91 + *(v92 + 20), v122);
      sub_1E59D207C(v91, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      v97 = sub_1E5A29E44();
      v99 = v98;
      (*(v94 + 8))(v95, v96);
      v93 = (inited + 192);
      *(inited + 216) = v87;
      v69 = v143;
      if (v99)
      {
        *v93 = v97;
LABEL_12:
        *(inited + 200) = v99;
        sub_1E590DF48(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
        swift_arrayDestroy();
        sub_1E5A2B984();
        v100 = MEMORY[0x1E69E7CC0];
        sub_1E590DF48(MEMORY[0x1E69E7CC0]);
        sub_1E590DF48(v100);
        v101 = v127;
        sub_1E5A2B9D4();
        v102 = sub_1E5A2B9E4();
        (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
        v103 = v132;
        sub_1E5A2B9F4();
        v104 = v126;
        v105 = v152;
        v106 = v138;
        sub_1E5A2B014();
        (*(v133 + 8))(v103, v134);
        sub_1E58BAD14(v101, &qword_1ECFFB550, &qword_1E5A304B0);
        (*(v141 + 8))(v106, v69);
        v163 = v69;
        v164 = v105;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v108 = v128;
        v109 = v149;
        sub_1E58B41DC();
        v110 = *(v131 + 8);
        v110(v104, v109);
        v111 = v129;
        sub_1E58B41DC();
        v73 = v145;
        sub_1E595EBC0(v111, v109, v69, OpaqueTypeConformance2, v152);
        v110(v111, v109);
        v110(v108, v109);
        sub_1E59D207C(v137, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        goto LABEL_13;
      }
    }

    *v93 = 0;
    v99 = 0xE000000000000000;
    goto LABEL_12;
  }

  sub_1E58BAD14(v39, &qword_1ECFFC120, &qword_1E5A2FF10);
  v139 = sub_1E5A16FD4(v60);
  v62 = *(a1 + *(v60 + 40));
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v63 = qword_1EE2D33E0;
  swift_getKeyPath();

  v64 = v63;
  sub_1E5A2B944();

  v65 = sub_1E5A2BB64();
  v66 = v124;
  v139(a1 + v61, v62, v65, v67, 0x7261646E656C6163, 0xE800000000000000);

  v68 = v123;
  v69 = v143;
  v70 = v152;
  sub_1E58B41DC();
  v71 = *(v141 + 8);
  v71(v66, v69);
  sub_1E58B41DC();
  v163 = v69;
  v164 = v70;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v145;
  sub_1E595ECB8(v66, v149, v69, v72, v70);
  v71(v66, v69);
  v71(v68, v69);
LABEL_13:
  v112 = v142;
  v113 = v144;
  sub_1E58BABA0(v142, v144, &qword_1ED000F28, &qword_1E5A44B58);
  v161 = 0;
  v162 = 1;
  v163 = v113;
  v164 = &v161;
  v115 = v146;
  v114 = v147;
  v116 = v148;
  (*(v147 + 16))(v146, v73, v148);
  v165 = v115;
  v160[0] = v140;
  v160[1] = MEMORY[0x1E6981840];
  v160[2] = v116;
  v157 = sub_1E5A1B4F4();
  v158 = MEMORY[0x1E6981838];
  v155 = v69;
  v117 = v152;
  v156 = v152;
  v153 = swift_getOpaqueTypeConformance2();
  v154 = v117;
  WitnessTable = swift_getWitnessTable();
  sub_1E597DC00(&v163, 3uLL, v160);
  v118 = *(v114 + 8);
  v118(v73, v116);
  sub_1E58BAD14(v112, &qword_1ED000F28, &qword_1E5A44B58);
  v118(v115, v116);
  return sub_1E58BAD14(v113, &qword_1ED000F28, &qword_1E5A44B58);
}

uint64_t sub_1E5A1A078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v146 = a4;
  v151 = sub_1E5A2AEB4();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF680, &unk_1E5A3E010);
  MEMORY[0x1EEE9AC00](v178);
  v177 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v176 = &v141 - v10;
  v11 = sub_1E5A2A684();
  v181 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v180 = (&v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v179 = &v141 - v14;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF688, &unk_1E5A44C60);
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v159 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v141 - v19;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF690, &qword_1E5A3E020);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v141 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v141 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v164 = &v141 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v172 = &v141 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v173 = &v141 - v31;
  v148 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(0, a2, a3, v32);
  v33 = *(v148 + 36);
  v171 = a1;
  v157 = v33;
  sub_1E58BABA0(a1 + v33, v20, &qword_1ECFFC120, &qword_1E5A2FF10);
  v34 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v35 = *(v34 - 8);
  v156 = *(v35 + 48);
  v155 = v35 + 48;
  v36 = v156(v20, 1, v34);
  v158 = v34;
  if (v36 == 1)
  {
    sub_1E58BAD14(v20, &qword_1ECFFC120, &qword_1E5A2FF10);
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  else
  {
    v39 = &v20[*(v34 + 20)];
    v37 = *v39;
    v38 = v39[1];

    sub_1E59D207C(v20, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  v198 = v37;
  v199 = v38;
  v165 = sub_1E58D1C80();
  v40 = sub_1E5A2AFD4();
  v42 = v41;
  v44 = v43;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v45 = sub_1E5A2AFA4();
  v47 = v46;
  v49 = v48;
  v51 = v50;

  sub_1E58B3C9C(v40, v42, v44 & 1);

  v153 = v45;
  v198 = v45;
  v199 = v47;
  v152 = v47;
  v52 = v49 & 1;
  LOBYTE(v200) = v49 & 1;
  v154 = v51;
  v201 = v51;
  v53 = v181;
  v54 = v181 + 104;
  v55 = *(v181 + 104);
  v56 = v179;
  v168 = *MEMORY[0x1E697E6E8];
  v55(v179);
  v57 = v180;
  v167 = *MEMORY[0x1E697E728];
  v170 = v54;
  v169 = v55;
  v55(v180);
  v166 = sub_1E59A8E44();
  if (sub_1E5A2BA64())
  {
    v58 = *(v53 + 32);
    v59 = v176;
    v58(v176, v56, v11);
    v60 = v178;
    v58((v59 + *(v178 + 48)), v57, v11);
    v61 = v177;
    sub_1E58BABA0(v59, v177, &qword_1ECFFF680, &unk_1E5A3E010);
    v62 = *(v60 + 48);
    v63 = v174;
    v58(v174, v61, v11);
    LODWORD(v147) = v52;
    v64 = *(v53 + 8);
    v181 = v53 + 8;
    v64(v61 + v62, v11);
    sub_1E59A8E9C(v59, v61);
    v65 = v63 + *(v175 + 36);
    v66 = v61 + *(v60 + 48);
    v163 = v53 + 32;
    v162 = v58;
    v58(v65, v66, v11);
    v161 = v64;
    v64(v61, v11);
    v160 = sub_1E58CD164(&qword_1ECFFF6A0, &qword_1ECFFF688, &unk_1E5A44C60, MEMORY[0x1E69E5FB8]);
    sub_1E5A2B164();
    sub_1E58BAD14(v63, &qword_1ECFFF688, &unk_1E5A44C60);
    sub_1E58B3C9C(v153, v152, v147);

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v154 = v192;
    v153 = v194;
    v152 = v196;
    v147 = v197;
    v191 = 1;
    v190 = v193;
    v189 = v195;
    v67 = v159;
    sub_1E58BABA0(v171 + v157, v159, &qword_1ECFFC120, &qword_1E5A2FF10);
    v68 = v158;
    if (v156(v67, 1, v158) == 1)
    {
      sub_1E58BAD14(v67, &qword_1ECFFC120, &qword_1E5A2FF10);
      v69 = 0;
      v70 = 0xE000000000000000;
    }

    else
    {
      v71 = (v67 + *(v68 + 24));
      v69 = *v71;
      v70 = v71[1];

      sub_1E59D207C(v67, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    }

    v198 = v69;
    v199 = v70;
    v72 = sub_1E5A2AFD4();
    v74 = v73;
    v76 = v75;
    sub_1E5A2AEC4();
    sub_1E5A2AE54();
    sub_1E5A2AEA4();

    v77 = sub_1E5A2AFA4();
    v79 = v78;
    v47 = v80;

    sub_1E58B3C9C(v72, v74, v76 & 1);

    LODWORD(v198) = sub_1E5A2ABA4();
    v81 = sub_1E5A2AF84();
    v83 = v82;
    LOBYTE(v74) = v84;
    v86 = v85;
    sub_1E58B3C9C(v77, v79, v47 & 1);

    v198 = v81;
    v199 = v83;
    v159 = v83;
    v87 = v74 & 1;
    LOBYTE(v200) = v74 & 1;
    v201 = v86;
    v56 = v179;
    v88 = v169;
    (v169)(v179, v168, v11);
    v57 = v180;
    (v88)(v180, v167, v11);
    if (sub_1E5A2BA64())
    {
      v89 = v176;
      v158 = v86;
      v90 = v162;
      v162(v176, v56, v11);
      v91 = v178;
      v90(v89 + *(v178 + 48), v57, v11);
      v92 = v177;
      sub_1E58BABA0(v89, v177, &qword_1ECFFF680, &unk_1E5A3E010);
      v93 = *(v91 + 48);
      v94 = v174;
      v90(v174, v92, v11);
      LODWORD(v157) = v87;
      v95 = v81;
      v96 = v161;
      v161(v92 + v93, v11);
      sub_1E59A8E9C(v89, v92);
      v90(v94 + *(v175 + 36), (v92 + *(v91 + 48)), v11);
      v96(v92, v11);
      sub_1E5A2B164();
      sub_1E58BAD14(v94, &qword_1ECFFF688, &unk_1E5A44C60);
      sub_1E58B3C9C(v95, v159, v157);

      sub_1E5A2B7E4();
      sub_1E5A2A5B4();
      v159 = v198;
      v158 = v200;
      v157 = v202;
      v156 = v203;
      v188 = 1;
      v187 = v199;
      v186 = v201;
      v182 = sub_1E5A170A4(v148);
      v183 = v97;
      v98 = sub_1E5A2AFD4();
      v100 = v99;
      LOBYTE(v95) = v101;
      sub_1E5A2AF04();
      sub_1E5A2AE64();
      sub_1E5A2AEA4();

      v57 = v150;
      v102 = v149;
      v103 = v151;
      (v150[13])(v149, *MEMORY[0x1E6980EA8], v151);
      sub_1E5A2AEE4();

      v57[1](v102, v103);
      v47 = sub_1E5A2AFA4();
      v56 = v104;
      LOBYTE(v57) = v105;

      sub_1E58B3C9C(v98, v100, v95 & 1);

      if (qword_1ECFFB478 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  swift_once();
LABEL_10:
  v182 = qword_1ED026498;

  v106 = sub_1E5A2AF84();
  v108 = v107;
  v110 = v109;
  v112 = v111;
  sub_1E58B3C9C(v47, v56, v57 & 1);

  v171 = v106;
  v182 = v106;
  v165 = v108;
  v183 = v108;
  v113 = v110 & 1;
  v184 = v110 & 1;
  v185 = v112;
  v114 = v179;
  v115 = v169;
  (v169)(v179, v168, v11);
  v116 = v180;
  (v115)(v180, v167, v11);
  result = sub_1E5A2BA64();
  if (result)
  {
    v118 = v116;
    v119 = v176;
    v120 = v114;
    v121 = v162;
    v162(v176, v120, v11);
    v122 = v178;
    v121(v119 + *(v178 + 48), v118, v11);
    LODWORD(v180) = v113;
    v123 = v177;
    sub_1E58BABA0(v119, v177, &qword_1ECFFF680, &unk_1E5A3E010);
    v124 = *(v122 + 48);
    v125 = v174;
    v121(v174, v123, v11);
    v126 = v161;
    v161(v123 + v124, v11);
    sub_1E59A8E9C(v119, v123);
    v121(v125 + *(v175 + 36), (v123 + *(v122 + 48)), v11);
    v126(v123, v11);
    v127 = v164;
    sub_1E5A2B164();
    sub_1E58BAD14(v125, &qword_1ECFFF688, &unk_1E5A44C60);
    sub_1E58B3C9C(v171, v165, v180);

    v128 = v144;
    v129 = *(v144 + 16);
    v130 = v141;
    v131 = v145;
    v129(v141, v173, v145);
    LOBYTE(v122) = v191;
    LODWORD(v177) = v190;
    LODWORD(v178) = v189;
    v132 = v142;
    v129(v142, v172, v131);
    LODWORD(v179) = v188;
    LODWORD(v180) = v187;
    LODWORD(v181) = v186;
    v133 = v143;
    v129(v143, v127, v131);
    v134 = v146;
    v129(v146, v130, v131);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000F88, &qword_1E5A44C70);
    v136 = &v134[v135[12]];
    *v136 = 0;
    v136[8] = v122;
    *(v136 + 2) = v154;
    v136[24] = v177;
    *(v136 + 4) = v153;
    v136[40] = v178;
    v137 = v147;
    *(v136 + 6) = v152;
    *(v136 + 7) = v137;
    v129(&v134[v135[16]], v132, v131);
    v138 = &v134[v135[20]];
    *v138 = 0;
    v138[8] = v179;
    *(v138 + 2) = v159;
    v138[24] = v180;
    *(v138 + 4) = v158;
    v138[40] = v181;
    v139 = v156;
    *(v138 + 6) = v157;
    *(v138 + 7) = v139;
    v129(&v134[v135[24]], v133, v131);
    v140 = *(v128 + 8);
    v140(v164, v131);
    v140(v172, v131);
    v140(v173, v131);
    v140(v133, v131);
    v140(v132, v131);
    return (v140)(v130, v131);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E5A1B3F0(uint64_t a1)
{
  sub_1E59E6F68(319);
  if (v1 <= 0x3F)
  {
    sub_1E593C91C(319);
    if (v2 <= 0x3F)
    {
      swift_getFunctionTypeMetadata();
      sub_1E5A2A054();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E5A1B4F4()
{
  result = qword_1ED000F60;
  if (!qword_1ED000F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F28, &qword_1E5A44B58);
    sub_1E5A1B580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F60);
  }

  return result;
}

unint64_t sub_1E5A1B580()
{
  result = qword_1ED000F68;
  if (!qword_1ED000F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F70, &qword_1E5A44C40);
    sub_1E58CD164(&qword_1ED000F78, &qword_1ED000F80, &qword_1E5A44C48, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000F68);
  }

  return result;
}

uint64_t sub_1E5A1B630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 32);
  v11 = a2;
  v10[0] = a3;
  v10[1] = a4;
  v9[0] = a5;
  v9[1] = a6;
  return v7(a1, &v11, v10, v9);
}

unint64_t sub_1E5A1B678()
{
  result = qword_1ED000FD8;
  if (!qword_1ED000FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000FC0, &unk_1E5A44CA8);
    sub_1E59E71AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000FD8);
  }

  return result;
}

unint64_t sub_1E5A1B730()
{
  result = qword_1ED000FE0;
  if (!qword_1ED000FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F98, &qword_1E5A44C80);
    sub_1E59E70CC();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ED000FD0, &qword_1ED000FC8, &qword_1E5A44CB8, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000FE0);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.init(cohortIdentifier:recommendationIdentifier:treatments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v8 = *(v7 + 20);
  v9 = sub_1E5A29E74();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t static PersonalizedWorkoutPlanCandidateMetrics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  if ((sub_1E5A29E54() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1E595AC4C(v6, v7);
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.recommendationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0) + 20);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.treatments.getter()
{
  type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
}

unint64_t sub_1E5A1BA24()
{
  v1 = 0x6E656D7461657274;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1E5A1BA88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A1C9B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A1BAB0(uint64_t a1)
{
  v2 = sub_1E5A1BD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A1BAEC(uint64_t a1)
{
  v2 = sub_1E5A1BD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FE8, &qword_1E5A44CC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A1BD6C();
  sub_1E5A2C224();
  v14 = 0;
  sub_1E5A2C094();
  if (!v2)
  {
    v9 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
    v13 = 1;
    sub_1E5A29E74();
    sub_1E5A1C828(&qword_1ECFFC7F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5A2C0B4();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FF8, &qword_1E5A44CC8);
    sub_1E5A1C1F0(&qword_1ED001000, sub_1E5A1BDC0, MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E5A1BD6C()
{
  result = qword_1ED000FF0;
  if (!qword_1ED000FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000FF0);
  }

  return result;
}

unint64_t sub_1E5A1BDC0()
{
  result = qword_1ED001008;
  if (!qword_1ED001008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001008);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = sub_1E5A29E74();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001010, &qword_1E5A44CD0);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v20 - v5;
  v7 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A1BD6C();
  v10 = v28;
  sub_1E5A2C214();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = a1;
  v11 = v7;
  v13 = v25;
  v12 = v26;
  v32 = 0;
  v14 = v27;
  v15 = sub_1E5A2BFC4();
  v22 = v9;
  *v9 = v15;
  v31 = 1;
  sub_1E5A1C828(&qword_1ECFFC818, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v12;
  sub_1E5A2BFE4();
  v20 = v11;
  v17 = *(v24 + 32);
  v18 = v22;
  v21 = *(v11 + 20);
  v17(v22 + v21, v4, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000FF8, &qword_1E5A44CC8);
  v30 = 2;
  sub_1E5A1C1F0(&qword_1ED001018, sub_1E5A1C268, MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  (*(v13 + 8))(v6, v14);
  *(v18 + *(v20 + 24)) = v29;
  sub_1E5A1C2BC(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1E5A1C320(v18);
}

uint64_t sub_1E5A1C1F0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000FF8, &qword_1E5A44CC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5A1C268()
{
  result = qword_1ED001020;
  if (!qword_1ED001020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001020);
  }

  return result;
}

uint64_t sub_1E5A1C2BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A1C320(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E6932DE0](*v1);
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  v4 = *(v1 + *(v3 + 24));

  return sub_1E5953800(a1, v4);
}

uint64_t PersonalizedWorkoutPlanCandidateMetrics.hashValue.getter()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v0);
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5953800(v3, *(v0 + *(v1 + 24)));
  return sub_1E5A2C204();
}

uint64_t sub_1E5A1C530(uint64_t a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v1);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5953800(v4, *(v1 + *(a1 + 24)));
  return sub_1E5A2C204();
}

uint64_t sub_1E5A1C5EC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E6932DE0](*v2);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  v5 = *(v2 + *(a2 + 24));

  return sub_1E5953800(a1, v5);
}

uint64_t sub_1E5A1C6A4(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v2);
  sub_1E5A29E74();
  sub_1E5A1C828(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5953800(v5, *(v2 + *(a2 + 24)));
  return sub_1E5A2C204();
}

uint64_t sub_1E5A1C75C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_1E5A29E54() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1E595AC4C(v7, v8);
}

uint64_t sub_1E5A1C828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5A1C8AC()
{
  result = qword_1ED001030;
  if (!qword_1ED001030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001030);
  }

  return result;
}

unint64_t sub_1E5A1C904()
{
  result = qword_1ED001038;
  if (!qword_1ED001038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001038);
  }

  return result;
}

unint64_t sub_1E5A1C95C()
{
  result = qword_1ED001040;
  if (!qword_1ED001040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001040);
  }

  return result;
}

uint64_t sub_1E5A1C9B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5A47670 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5A47690 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t LockupView.init(planDetail:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A2A2F4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2A2A4();
  sub_1E5A1CBF8(2, 2, 2, v14, a4, a5, a6, 5.0, 2.0, 20.0, 0.0, 8.0, 28.0);
  v16 = type metadata accessor for LockupView(0, a4, a5, v15);
  result = sub_1E5957230(a1, a6 + *(v16 + 36));
  v18 = (a6 + *(v16 + 40));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t sub_1E5A1CBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>)
{
  *a7 = a8;
  *(a7 + 8) = a9;
  *(a7 + 16) = a10;
  *(a7 + 24) = a11;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  v17 = type metadata accessor for LockupView.Layout(0, a5, a6, a4);
  v18 = v17[14];
  v19 = sub_1E5A2A2F4();
  result = (*(*(v19 - 8) + 32))(a7 + v18, a4, v19);
  *(a7 + v17[15]) = a12;
  *(a7 + v17[16]) = a13;
  return result;
}

uint64_t LockupView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A2A6C4();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  v30 = sub_1E5A2A6C4();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v28 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001048, &qword_1E5A44EF8);
  v12 = sub_1E5A2A6C4();
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v32 = &v28 - v16;
  (*(v2 + *(a1 + 40)))(v15);
  v17 = *(a1 + 24);
  sub_1E5A2B0A4();
  (*(v5 + 8))(v7, v4);
  v43 = v17;
  v44 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v19 = v28;
  sub_1E5A2B114();
  (*(v31 + 8))(v10, v8);
  sub_1E5A2B7C4();
  v36 = v4;
  v37 = v17;
  v38 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001050, &qword_1E5A44F00);
  v20 = sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  v41 = WitnessTable;
  v42 = v20;
  v21 = v30;
  v22 = swift_getWitnessTable();
  sub_1E5A1D3C8();
  v23 = v29;
  sub_1E5A2B314();
  (*(v33 + 8))(v19, v21);
  v24 = sub_1E58CD164(qword_1ED001070, &qword_1ED001048, &qword_1E5A44EF8, MEMORY[0x1E697EC18]);
  v39 = v22;
  v40 = v24;
  swift_getWitnessTable();
  v25 = v32;
  sub_1E58B41DC();
  v26 = *(v34 + 8);
  v26(v23, v12);
  sub_1E58B41DC();
  return (v26)(v25, v12);
}

void *sub_1E5A1D19C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v5 = a3;
  v9 = type metadata accessor for LockupView.Layout(0, a2, a3, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = sub_1E5A2AA34();
  v30 = 0;
  sub_1E5A1D4C4(a1, a2, v5, v14, v28);
  memcpy(v31, v28, 0x141uLL);
  memcpy(v32, v28, 0x141uLL);
  sub_1E58BABA0(v31, &v27, &qword_1ED001178, &qword_1E5A44FA8);
  sub_1E58BAD14(v32, &qword_1ED001178, &qword_1E5A44FA8);
  memcpy(&v29[7], v31, 0x141uLL);
  LOBYTE(v5) = v30;
  (*(v10 + 16))(v12, a1, v9);
  v15 = *(v9 + 56);
  sub_1E5A2A294();
  v17 = v16;
  sub_1E5A2A2D4();
  v19 = v18;
  sub_1E5A2A2C4();
  v21 = v20;
  sub_1E5A2A2E4();
  v23 = v22;
  v24 = sub_1E5A2A2F4();
  (*(*(v24 - 8) + 8))(&v12[v15], v24);
  LOBYTE(a1) = sub_1E5A2ADA4();
  *a4 = v13;
  *(a4 + 8) = 0;
  *(a4 + 16) = v5;
  result = memcpy((a4 + 17), v29, 0x148uLL);
  *(a4 + 352) = a1;
  *(a4 + 360) = v17;
  *(a4 + 368) = v19;
  *(a4 + 376) = v21;
  *(a4 + 384) = v23;
  *(a4 + 392) = 0;
  return result;
}

unint64_t sub_1E5A1D3C8()
{
  result = qword_1ED001058;
  if (!qword_1ED001058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001050, &qword_1E5A44F00);
    sub_1E58CD164(&qword_1ED001060, &qword_1ED001068, &qword_1E5A44F08, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001058);
  }

  return result;
}

id sub_1E5A1D4C4@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1 + *(type metadata accessor for LockupView(0, a2, a3, a4) + 36);
  v7 = *(v6 + 3);
  v80 = v6;
  v158 = *(v6 + 2);
  v159 = v7;
  sub_1E58D1C80();

  v8 = sub_1E5A2AFD4();
  v10 = v9;
  v12 = v11;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    sub_1E5A2AF34();
    v14 = sub_1E5A2AFA4();
    v16 = v15;
    v18 = v17;

    sub_1E58B3C9C(v8, v10, v12 & 1);

    sub_1E5A2B444();
    v19 = sub_1E5A2AF74();
    v89 = v20;
    v90 = v19;
    v22 = v21;
    v91 = v23;

    sub_1E58B3C9C(v14, v16, v18 & 1);

    *(&v88 + 1) = a1[4];
    *&v88 = swift_getKeyPath();
    v86 = v22 & 1;
    v177 = v22 & 1;
    v175 = 0;
    v87 = sub_1E5A2ADA4();
    sub_1E5A2A424();
    v79 = v24;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v178 = 0;
    v31 = type metadata accessor for PreviousPlanDetail(0);
    v32 = sub_1E5A29C94();
    v34 = v33;
    v36 = v35;
    sub_1E5A2AE14();
    v37 = sub_1E5A2AFA4();
    v77 = v38;
    v78 = v37;
    LOBYTE(v14) = v39;
    v85 = v40;

    sub_1E58B3C9C(v32, v34, v36 & 1);

    v76 = *(a1 + 5);
    KeyPath = swift_getKeyPath();
    v84 = sub_1E5A2ADA4();
    sub_1E5A2A424();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v75 = v14 & 1;
    LOBYTE(v158) = v14 & 1;
    LOBYTE(v143[0]) = 0;
    LOBYTE(v126[0]) = 0;
    v49 = &v80[*(v31 + 28)];
    v50 = *(v49 + 1);
    v158 = *v49;
    v159 = v50;

    v51 = sub_1E5A2AFD4();
    v53 = v52;
    LOBYTE(v31) = v54;
    sub_1E5A2AED4();
    v55 = sub_1E5A2AFA4();
    v57 = v56;
    v59 = v58;

    sub_1E58B3C9C(v51, v53, v31 & 1);

    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v81 = sub_1E5A2AF74();
    v82 = v60;
    v74 = v61;
    v63 = v62;
    sub_1E58B3C9C(v55, v57, v59 & 1);

    v93 = *(a1 + 6);
    v64 = swift_getKeyPath();
    v63 &= 1u;
    LOBYTE(v143[0]) = v63;
    v65 = sub_1E5A2ADA4();
    sub_1E5A2A424();
    *(&v106 + 1) = *v176;
    DWORD1(v106) = *&v176[3];
    BYTE7(v108) = v181;
    *(&v108 + 3) = v180;
    HIDWORD(v108) = *&v179[3];
    *(&v108 + 9) = *v179;
    DWORD1(v113) = *&v104[3];
    *(&v113 + 1) = *v104;
    DWORD1(v115) = *&v103[3];
    *(&v115 + 1) = *v103;
    HIDWORD(v115) = *&v102[3];
    *(&v115 + 9) = *v102;
    DWORD1(v120) = *&v98[3];
    *(&v120 + 1) = *v98;
    *(&v122 + 1) = 256;
    BYTE7(v122) = v101;
    *(&v122 + 3) = v100;
    HIDWORD(v122) = *&v99[3];
    *(&v122 + 9) = *v99;
    *&v123 = v66;
    *(&v123 + 1) = v67;
    *&v124 = v68;
    *(&v124 + 1) = v69;
    v70 = v123;
    v94[103] = 0;
    *&v94[87] = v124;
    *(a5 + 216) = 1;
    *(a5 + 313) = *&v94[96];
    LOBYTE(v158) = 0;
    *&v105 = v90;
    *(&v105 + 1) = v89;
    LOBYTE(v106) = v86;
    *(&v106 + 1) = v91;
    v107 = v88;
    LOWORD(v108) = 0;
    BYTE2(v108) = 1;
    BYTE8(v108) = v87;
    *&v109 = v79;
    *(&v109 + 1) = v26;
    *&v110 = v28;
    *(&v110 + 1) = v30;
    v111 = 0;
    v97[0] = 0;
    v95 = v109;
    v96 = v110;
    *&v112 = v78;
    *(&v112 + 1) = v77;
    LOBYTE(v113) = v75;
    *(&v113 + 1) = v85;
    *&v114 = KeyPath;
    *(&v114 + 1) = v76;
    LOBYTE(v115) = 0;
    BYTE8(v115) = v84;
    *&v116 = v42;
    *(&v116 + 1) = v44;
    *&v117 = v46;
    *(&v117 + 1) = v48;
    v118 = 0;
    v97[104] = 0;
    *&v97[88] = v117;
    *&v97[72] = v116;
    *&v97[56] = v115;
    *&v97[40] = v114;
    *&v97[24] = v113;
    *&v97[8] = v112;
    *&v119 = v81;
    *(&v119 + 1) = v74;
    LOBYTE(v120) = v63;
    *(&v120 + 1) = v82;
    *&v121 = v64;
    *(&v121 + 1) = v93;
    LOBYTE(v122) = 0;
    BYTE8(v122) = v65;
    v125 = 0;
    *&v94[71] = v70;
    *&v94[55] = v122;
    *&v94[39] = v121;
    *&v94[23] = v120;
    *&v94[7] = v119;
    v71 = v105;
    v72 = v106;
    v73 = v108;
    *(a5 + 32) = v88;
    *(a5 + 48) = v73;
    *a5 = v71;
    *(a5 + 16) = v72;
    *(a5 + 96) = *v97;
    *(a5 + 112) = *&v97[16];
    *(a5 + 64) = v95;
    *(a5 + 80) = v96;
    *(a5 + 176) = *&v97[80];
    *(a5 + 192) = *&v97[96];
    *(a5 + 144) = *&v97[48];
    *(a5 + 160) = *&v97[64];
    *(a5 + 128) = *&v97[32];
    *(a5 + 208) = 0;
    *(a5 + 265) = *&v94[48];
    *(a5 + 281) = *&v94[64];
    *(a5 + 297) = *&v94[80];
    *(a5 + 217) = *v94;
    *(a5 + 233) = *&v94[16];
    *(a5 + 249) = *&v94[32];
    v126[0] = v81;
    v126[1] = v74;
    v127 = v63;
    *&v128[3] = *&v98[3];
    *v128 = *v98;
    v129 = v82;
    v130 = v64;
    v131 = v93;
    v132 = 0;
    v133 = 256;
    v135 = v101;
    v134 = v100;
    v136 = v65;
    *&v137[3] = *&v99[3];
    *v137 = *v99;
    v138 = v66;
    v139 = v67;
    v140 = v68;
    v141 = v69;
    v142 = 0;
    sub_1E58BABA0(&v105, &v158, &qword_1ED001180, &qword_1E5A44FE0);
    sub_1E58BABA0(&v112, &v158, &qword_1ED001188, &qword_1E5A44FE8);
    sub_1E58BABA0(&v119, &v158, &qword_1ED001180, &qword_1E5A44FE0);
    sub_1E58BAD14(v126, &qword_1ED001180, &qword_1E5A44FE0);
    v143[0] = v78;
    v143[1] = v77;
    v144 = v75;
    *v145 = *v104;
    *&v145[3] = *&v104[3];
    v146 = v85;
    v147 = KeyPath;
    v148 = v76;
    v149 = 0;
    *v150 = *v103;
    *&v150[3] = *&v103[3];
    v151 = v84;
    *&v152[3] = *&v102[3];
    *v152 = *v102;
    v153 = v42;
    v154 = v44;
    v155 = v46;
    v156 = v48;
    v157 = 0;
    sub_1E58BAD14(v143, &qword_1ED001188, &qword_1E5A44FE8);
    v158 = v90;
    v159 = v89;
    v160 = v86;
    *v161 = *v176;
    *&v161[3] = *&v176[3];
    v162 = v91;
    v163 = v88;
    v164 = 0;
    v165 = 1;
    v166 = v180;
    v167 = v181;
    v168 = v87;
    *&v169[3] = *&v179[3];
    *v169 = *v179;
    v170 = v79;
    v171 = v26;
    v172 = v28;
    v173 = v30;
    v174 = 0;
    return sub_1E58BAD14(&v158, &qword_1ED001180, &qword_1E5A44FE0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5A1DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LockupView.Layout(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for PreviousPlanDetail(319);
    if (v6 <= 0x3F)
    {
      result = sub_1E59E700C();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1E5A1DE04(uint64_t a1)
{
  type metadata accessor for CGSize();
  if (v1 <= 0x3F)
  {
    sub_1E5A2A2F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5A1DED4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5A2A8A4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t WeeklyScheduleView.init(store:schedule:dateComponentsFormatter:)@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a4 = result;
  a4[1] = v8;
  a4[2] = a3;
  a4[3] = v6;
  return result;
}

uint64_t WeeklyScheduleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v14[0]);
  v3 = v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001190, &qword_1E5A44FF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  *v6 = sub_1E5A2AA24();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001198, &qword_1E5A44FF8);
  v14[4] = v7;
  v14[5] = v8;
  v14[6] = v10;
  v14[7] = v9;
  sub_1E5A1FF84(&v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011A0, &qword_1E5A45000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011A8, &unk_1E5A45008);
  sub_1E5A200B4();
  sub_1E58CD164(&qword_1ED0011C0, &qword_1ED0011A8, &unk_1E5A45008, MEMORY[0x1E6981870]);
  sub_1E5A2B714();
  v11 = *MEMORY[0x1E697E728];
  v12 = sub_1E5A2A684();
  (*(*(v12 - 8) + 104))(v3, v11, v12);
  sub_1E5A23454(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E58CD164(&qword_1ED0011C8, &qword_1ED001190, &qword_1E5A44FF0, MEMORY[0x1E6981870]);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    sub_1E5A2B164();
    sub_1E58BAD14(v3, &qword_1ECFFCE80, &qword_1E5A35BC0);
    return sub_1E58BAD14(v6, &qword_1ED001190, &qword_1E5A44FF0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5A1E30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1E5A2AA34();
  *(a5 + 8) = 0x4024000000000000;
  *(a5 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011D0, &qword_1E5A450D8);
  return sub_1E5A1E398(a1, a2, a3, a4, (a5 + *(v10 + 44)));
}

uint64_t sub_1E5A1E398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v111 = a3;
  v120 = a1;
  v121 = a2;
  v119 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011D8, &qword_1E5A450E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v94 - v8;
  v101 = sub_1E5A2ACA4();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE930, &qword_1E5A3B268);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v94 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE910, &unk_1E5A3B250);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v94 - v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA18, &qword_1E5A3B3B0);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v94 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD740, &unk_1E5A35D60);
  MEMORY[0x1EEE9AC00](v95);
  v104 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v110 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011E0, &qword_1E5A450E8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v113 = &v94 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011E8, &unk_1E5A450F0);
  v114 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v122 = &v94 - v27;
  v28 = sub_1E591B840(a4);
  if (*(v28 + 16))
  {
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
    v30 = sub_1E5A2BF14();
    v28 = v29;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC8];
  }

  v123[0] = v30;
  sub_1E591C604(v28, 1, v123);
  v115 = v24;
  v116 = v21;
  v109 = v9;
  v117 = v7;
  v118 = v6;
  v31 = v123[0];
  v32 = *(v123[0] + 16);
  if (v32)
  {
    v94 = a4;
    v33 = sub_1E5A208A0(v32, 0, &qword_1ED001240, &qword_1E5A451C0);
    v34 = sub_1E5A230F8(v123, (v33 + 4), v32, v31);
    v35 = v123[0];

    sub_1E58D26C0(v35);
    if (v34 != v32)
    {
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      MEMORY[0x1E69331F0](0);

      __break(1u);
      return result;
    }

    a4 = v94;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v123[0] = v33;
  sub_1E5A2091C(v123);
  swift_getKeyPath();
  v36 = swift_allocObject();
  v37 = v121;
  v36[2] = v120;
  v36[3] = v37;
  v38 = v111;
  v36[4] = v111;
  v36[5] = a4;

  v39 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011F0, &qword_1E5A45120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011F8, &qword_1E5A45128);
  sub_1E58CD164(&qword_1ED001200, &qword_1ED0011F0, &qword_1E5A45120, MEMORY[0x1E69E6338]);
  sub_1E58D1B2C();
  sub_1E5A2325C();
  sub_1E5A2B6E4();
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v123[0] && ((v40 = sub_1E591B840(v123[0]), !*(v40 + 16)) ? (v42 = MEMORY[0x1E69E7CC8]) : (v41 = v40, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480), v42 = sub_1E5A2BF14(), v40 = v41), v124 = v42, sub_1E591C604(v40, 1, &v124), , v43 = *(v124 + 16), , v43 < 6))
  {
    v44 = v110;
    sub_1E5A2B6B4();
    v45 = sub_1E5A2ADA4();
    sub_1E5A2A424();
    v46 = v44 + *(v95 + 36);
    *v46 = v45;
    *(v46 + 8) = v47;
    *(v46 + 16) = v48;
    *(v46 + 24) = v49;
    *(v46 + 32) = v50;
    *(v46 + 40) = 0;
    v51 = swift_allocObject();
    v51[2] = v120;
    v52 = v121;
    v51[3] = v121;
    v51[4] = v39;
    v51[5] = a4;
    MEMORY[0x1EEE9AC00](v52);

    v53 = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA28, &unk_1E5A3B3C0);
    v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA30, &unk_1E5A3C420);
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA40, &unk_1E5A3C430);
    v57 = sub_1E596F578();
    v58 = sub_1E596F688();
    v59 = sub_1E596F740();
    v123[0] = v54;
    v123[1] = MEMORY[0x1E6981CD8];
    v123[2] = v55;
    v123[3] = v56;
    v123[4] = v57;
    v123[5] = MEMORY[0x1E6981CD0];
    v123[6] = v58;
    v123[7] = v59;
    swift_getOpaqueTypeConformance2();
    v60 = v96;
    sub_1E5A2B574();
    v61 = v99;
    sub_1E5A2AC94();
    sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268, MEMORY[0x1E697D680]);
    sub_1E5A23454(&qword_1ECFFE940, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    v62 = v102;
    v63 = v98;
    v64 = v101;
    sub_1E5A2B0B4();
    (*(v100 + 8))(v61, v64);
    (*(v97 + 8))(v60, v63);
    v65 = [objc_opt_self() secondarySystemBackgroundColor];
    v66 = sub_1E5A2B474();
    KeyPath = swift_getKeyPath();
    v123[0] = v66;
    v68 = sub_1E5A2A5C4();
    v69 = (v62 + *(v103 + 36));
    *v69 = KeyPath;
    v69[1] = v68;
    sub_1E5A2B7A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE918, &qword_1E5A451A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE920, &qword_1E5A3B260);
    sub_1E596EA84();
    sub_1E596EBFC();
    sub_1E596ECB4();
    v70 = v105;
    sub_1E5A2B3A4();
    sub_1E58BAD14(v62, &qword_1ECFFE910, &unk_1E5A3B250);
    v71 = v110;
    v72 = v104;
    sub_1E58BABA0(v110, v104, &qword_1ECFFD740, &unk_1E5A35D60);
    v73 = v107;
    v74 = *(v107 + 16);
    v75 = v106;
    v76 = v108;
    v74(v106, v70, v108);
    v77 = v109;
    sub_1E58BABA0(v72, v109, &qword_1ECFFD740, &unk_1E5A35D60);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001230, &qword_1E5A451A8);
    v74((v77 + *(v78 + 48)), v75, v76);
    v79 = *(v73 + 8);
    v79(v70, v76);
    sub_1E58BAD14(v71, &qword_1ECFFD740, &unk_1E5A35D60);
    v79(v75, v76);
    sub_1E58BAD14(v72, &qword_1ECFFD740, &unk_1E5A35D60);
    v80 = v113;
    sub_1E58A93E4(v77, v113);
    v81 = 0;
    v83 = v117;
    v82 = v118;
    v84 = v116;
  }

  else
  {
    v81 = 1;
    v83 = v117;
    v82 = v118;
    v84 = v116;
    v80 = v113;
  }

  (*(v83 + 56))(v80, v81, 1, v82);
  v86 = v114;
  v85 = v115;
  v87 = *(v114 + 16);
  v88 = v112;
  v89 = v122;
  v87(v112, v122, v115);
  sub_1E58BABA0(v80, v84, &qword_1ED0011E0, &qword_1E5A450E8);
  v90 = v119;
  v87(v119, v88, v85);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001228, &unk_1E5A45160);
  sub_1E58BABA0(v84, &v90[*(v91 + 48)], &qword_1ED0011E0, &qword_1E5A450E8);
  sub_1E58BAD14(v80, &qword_1ED0011E0, &qword_1E5A450E8);
  v92 = *(v86 + 8);
  v92(v89, v85);
  sub_1E58BAD14(v84, &qword_1ED0011E0, &qword_1E5A450E8);
  return (v92)(v88, v85);
}

uint64_t sub_1E5A1F170@<X0>(char *a1@<X0>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v34 = *a1;
  v6 = *(a1 + 1);

  v33 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  v7 = sub_1E5A2A654();
  v9 = v8;
  v10 = sub_1E5A2ADA4();
  sub_1E5A2A424();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_1E5A2B7E4();
  v21 = v20;
  v22 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011F8, &qword_1E5A45128) + 36));
  sub_1E5A2A094();
  v24 = v23;
  v25 = *(sub_1E5A2A754() + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1E5A2A9B4();
  (*(*(v27 - 8) + 104))(&v22[v25], v26, v27);
  *v22 = v24;
  *(v22 + 1) = v24;
  v28 = [objc_opt_self() secondarySystemBackgroundColor];
  v29 = sub_1E5A2B474();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  *&v22[*(v30 + 52)] = v29;
  *&v22[*(v30 + 56)] = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF078, &qword_1E5A3C638);
  v32 = &v22[*(result + 36)];
  *v32 = v19;
  v32[1] = v21;
  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = v33;
  *(a4 + 24) = v34;
  *(a4 + 32) = v6;
  *(a4 + 40) = v10;
  *(a4 + 48) = v12;
  *(a4 + 56) = v14;
  *(a4 + 64) = v16;
  *(a4 + 72) = v18;
  *(a4 + 80) = 0;
  return result;
}

uint64_t sub_1E5A1F3A0()
{
  v0 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
  v4 = *(v3 + 48);
  v5 = &v2[*(v3 + 64)];
  v6 = type metadata accessor for WorkoutPlanScheduledItem(0);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v2[v4] = 7;
  *v5 = 0;
  v5[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  sub_1E5A2349C(v2, type metadata accessor for WorkoutPlanCreationAction);
  *v2 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E5A2349C(v2, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5A1F4F4()
{
  v1 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE2D33E0;
  swift_getKeyPath();
  v4 = v3;
  sub_1E5A2B944();

  v5 = sub_1E5A2AF64();
  v7 = v6;
  v9 = v8;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v10 = sub_1E5A2AF84();
  v12 = v11;
  v14 = v13;
  sub_1E58B3C9C(v5, v7, v9 & 1);

  sub_1E5A2AE14();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v15 = sub_1E5A2AFA4();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1E58B3C9C(v10, v12, v14 & 1);

  v22 = sub_1E5A2ADF4();
  sub_1E5A2A424();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v39 = v19 & 1;
  v38 = 0;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *(&v40[6] + 7) = *&v40[21];
  *(&v40[8] + 7) = *&v40[23];
  *(&v40[10] + 7) = *&v40[25];
  *(&v40[12] + 7) = v41;
  *(v40 + 7) = *&v40[15];
  *(&v40[2] + 7) = *&v40[17];
  *(&v40[4] + 7) = *&v40[19];
  *&v32 = v15;
  *(&v32 + 1) = v17;
  LOBYTE(v33) = v19 & 1;
  *(&v33 + 1) = v21;
  LOBYTE(v34) = v22;
  *(&v34 + 1) = v24;
  *&v35 = v26;
  *(&v35 + 1) = v28;
  *v36 = v30;
  v36[8] = 0;
  *&v36[73] = *&v40[8];
  *&v36[89] = *&v40[10];
  *&v36[105] = *&v40[12];
  *&v36[120] = *(&v41 + 1);
  *&v36[9] = *v40;
  *&v36[25] = *&v40[2];
  *&v36[41] = *&v40[4];
  *&v36[57] = *&v40[6];
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E596F578();
  sub_1E596F688();
  sub_1E596F740();
  sub_1E5A2B3A4();
  v37[8] = *&v36[64];
  v37[9] = *&v36[80];
  v37[10] = *&v36[96];
  v37[11] = *&v36[112];
  v37[4] = *v36;
  v37[5] = *&v36[16];
  v37[6] = *&v36[32];
  v37[7] = *&v36[48];
  v37[0] = v32;
  v37[1] = v33;
  v37[2] = v34;
  v37[3] = v35;
  return sub_1E58BAD14(v37, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E5A1F99C@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2B6A4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = a1[9];
  v34 = a1[8];
  v35 = v10;
  v11 = a1[11];
  v36 = a1[10];
  v37 = v11;
  v12 = a1[5];
  v30 = a1[4];
  v31 = v12;
  v13 = a1[7];
  v32 = a1[6];
  v33 = v13;
  v14 = a1[1];
  v26 = *a1;
  v27 = v14;
  v15 = a1[3];
  v28 = a1[2];
  v29 = v15;
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1E5A2A9B4();
  (*(*(v17 - 8) + 104))(v9, v16, v17);
  sub_1E59F87B0(v9, v6, MEMORY[0x1E6981998]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  sub_1E5A23454(&qword_1ECFFEA98, MEMORY[0x1E6981998], MEMORY[0x1E6981978]);
  sub_1E5A2AD54();
  sub_1E5A2349C(v9, MEMORY[0x1E6981998]);
  v18 = v35;
  a2[8] = v34;
  a2[9] = v18;
  v19 = v37;
  a2[10] = v36;
  a2[11] = v19;
  v20 = v31;
  a2[4] = v30;
  a2[5] = v20;
  v21 = v33;
  a2[6] = v32;
  a2[7] = v21;
  v22 = v27;
  *a2 = v26;
  a2[1] = v22;
  v23 = v29;
  a2[2] = v28;
  a2[3] = v23;
  return sub_1E58BABA0(&v26, v25, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E5A1FBB0@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2A754();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32[-v8];
  v10 = a1[9];
  v41 = a1[8];
  v42 = v10;
  v11 = a1[11];
  v43 = a1[10];
  v44 = v11;
  v12 = a1[5];
  v37 = a1[4];
  v38 = v12;
  v13 = a1[7];
  v39 = a1[6];
  v40 = v13;
  v14 = a1[3];
  v35 = a1[2];
  v36 = v14;
  v15 = a1[1];
  v33 = *a1;
  v34 = v15;
  v17 = *(v16 + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1E5A2A9B4();
  (*(*(v19 - 8) + 104))(&v9[v17], v18, v19);
  __asm { FMOV            V0.2D, #12.0 }

  *v9 = _Q0;
  sub_1E59F87B0(v9, v6, MEMORY[0x1E697EAF0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E5A23454(&qword_1ECFFEA90, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAC8]);
  sub_1E5A2AD54();
  sub_1E5A2349C(v9, MEMORY[0x1E697EAF0]);
  v25 = v42;
  a2[8] = v41;
  a2[9] = v25;
  v26 = v44;
  a2[10] = v43;
  a2[11] = v26;
  v27 = v38;
  a2[4] = v37;
  a2[5] = v27;
  v28 = v40;
  a2[6] = v39;
  a2[7] = v28;
  v29 = v34;
  *a2 = v33;
  a2[1] = v29;
  v30 = v36;
  a2[2] = v35;
  a2[3] = v30;
  return sub_1E58BABA0(&v33, v32, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E5A1FDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE918, &qword_1E5A451A0) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5A2A9B4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)) = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ECFFE910, &unk_1E5A3B250);
}

uint64_t sub_1E5A1FE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE920, &qword_1E5A3B260) + 36));
  v5 = *(sub_1E5A2A754() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  return sub_1E58BABA0(a1, a2, &qword_1ECFFE910, &unk_1E5A3B250);
}

double sub_1E5A1FF84@<D0>(uint64_t a5@<X8>)
{
  v6 = sub_1E5A2AA34();
  sub_1E5A20188(v16);
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *(a5 + 33) = *&v15[16];
  *(a5 + 49) = *&v15[32];
  *(a5 + 65) = *&v15[48];
  *(a5 + 17) = *v15;
  *(a5 + 136) = v11;
  *(a5 + 152) = v12;
  *(a5 + 168) = v13;
  *(a5 + 184) = v14;
  result = *&v8;
  *(a5 + 88) = v8;
  *(a5 + 104) = v9;
  *a5 = v6;
  *(a5 + 8) = 0x4014000000000000;
  *(a5 + 16) = 0;
  *(a5 + 80) = *&v15[63];
  *(a5 + 120) = v10;
  return result;
}

unint64_t sub_1E5A200B4()
{
  result = qword_1ED0011B0;
  if (!qword_1ED0011B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0011A0, &qword_1E5A45000);
    sub_1E58CD164(&qword_1ED0011B8, &qword_1ED000718, &qword_1E5A41ED0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0011B0);
  }

  return result;
}

uint64_t sub_1E5A20188@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A2AEB4();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  swift_getKeyPath();
  v7 = v6;
  sub_1E5A2B944();

  v8 = sub_1E5A2AF64();
  v10 = v9;
  v12 = v11;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v13 = sub_1E5A2AFA4();
  v44 = v14;
  v45 = v13;
  v43 = v15;
  v46 = v16;

  sub_1E58B3C9C(v8, v10, v12 & 1);

  sub_1E5A2BA84();
  v17 = qword_1EE2D33E0;
  swift_getKeyPath();
  v18 = v17;
  sub_1E5A2B944();

  v19 = sub_1E5A2AF64();
  v21 = v20;
  v23 = v22;
  sub_1E5A2AE04();
  v25 = v47;
  v24 = v48;
  v26 = v49;
  (*(v48 + 104))(v47, *MEMORY[0x1E6980EA8], v49);
  sub_1E5A2AEE4();

  (*(v24 + 8))(v25, v26);
  v27 = sub_1E5A2AFA4();
  v29 = v28;
  LOBYTE(v25) = v30;

  sub_1E58B3C9C(v19, v21, v23 & 1);

  v51[0] = sub_1E5A2ABA4();
  v31 = sub_1E5A2AF84();
  v33 = v32;
  LOBYTE(v21) = v34;
  v36 = v35;
  sub_1E58B3C9C(v27, v29, v25 & 1);

  v37 = v43 & 1;
  v50 = v43 & 1;
  v53 = v43 & 1;
  LOBYTE(v21) = v21 & 1;
  v52 = v21;
  v39 = v44;
  v38 = v45;
  *a1 = v45;
  *(a1 + 8) = v39;
  *(a1 + 16) = v37;
  *(a1 + 24) = v46;
  *(a1 + 32) = v31;
  *(a1 + 40) = v33;
  *(a1 + 48) = v21;
  *(a1 + 56) = v36;
  v40 = v38;
  sub_1E594C9E8(v38, v39, v37);

  sub_1E594C9E8(v31, v33, v21);

  sub_1E58B3C9C(v31, v33, v21);

  sub_1E58B3C9C(v40, v39, v50);
}

void *sub_1E5A20618(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001248, &qword_1E5A451C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1E5A206F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *sub_1E5A20788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *sub_1E5A20810(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC320, &qword_1E5A30830);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1E5A208A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

uint64_t sub_1E5A2091C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A227D8(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1E5A2C0E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 4);
      do
      {
        v11 = LOBYTE(v2[2 * v9 + 4]);
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001238, &unk_1E5A451B0);
      v7 = sub_1E5A2BC24();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E5A20A78(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E5A20A78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *v92;
    if (!v92)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1E5A21290(v9);
      v9 = result;
    }

    v84 = v9 + 16;
    v85 = *(v9 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v9[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1E5A21000((*a3 + 16 * *v86), (*a3 + 16 * *v88), (*a3 + 16 * v89), v92);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_112;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_113;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_114;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8);
      v12 = 16 * v10;
      v13 = (*a3 + 16 * v10);
      v16 = *v13;
      v15 = v13 + 32;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 16;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 16 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v28 + v12);
            v25 = v28 + v22;
            v26 = *v24;
            v27 = *(v24 + 1);
            *v24 = *(v25 - 16);
            *(v25 - 16) = v26;
            *(v25 - 8) = v27;
          }

          ++v23;
          --v21;
          v22 -= 16;
          v12 += 16;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1E58E6258((v37 > 1), v38 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v8;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_125;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_71:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_78:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v81 = *&v9[16 * v80 + 32];
        v82 = *&v9[16 * v42 + 40];
        sub_1E5A21000((*a3 + 16 * v81), (*a3 + 16 * *&v9[16 * v42 + 32]), (*a3 + 16 * v82), v41);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E5A21290(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v83 = &v9[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        result = sub_1E5A21204(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 16 * v8 - 16;
  v31 = v10 - v8;
LABEL_30:
  v32 = *(v29 + 16 * v8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v8;
      v30 += 16;
      --v31;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 3);
    *(v34 + 1) = *v34;
    *v34 = v32;
    *(v34 + 1) = v35;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1E5A21000(char *__dst, char *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 16);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1E5A21204(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E5A21290(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_1E5A212DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001248, &qword_1E5A451C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000580, &qword_1E5A451D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21424(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001298, &qword_1E5A45248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21540(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001290, &qword_1E5A45238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_1E5A2165C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC398, &qword_1E5A45240);
  v10 = *(sub_1E5A29E34() - 8);
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
  v15 = *(sub_1E5A29E34() - 8);
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

char *sub_1E5A21834(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001270, &unk_1E5A45210);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1E5A21938(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001278, &qword_1E5A45220);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001280, &qword_1E5A45228);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21A6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC350, &qword_1E5A30860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A21B94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC390, &unk_1E5A308A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E5A21CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC388, &qword_1E5A30898);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E5A21DC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001268, &qword_1E5A451F8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E5A21ED4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC378, &qword_1E5A36450);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890) - 8);
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

char *sub_1E5A220C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1E5A221D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001258, &unk_1E5A451E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E5A222F0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_1E5A223DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC320, &qword_1E5A30830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E5A224FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1E5A22820(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + v18);
      v20 = (*(a4 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      *v11 = v19;
      *(v11 + 8) = v22;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E5A2297C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      LODWORD(v18) = *(v18 + 32);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1E5A22B04(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E5A22C5C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1E5A22DDC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      v21 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v19;
      *(v11 + 24) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E5A22F44(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = *(a4 + 48) + 48 * (v15 | (v10 << 6));
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 40);
      v21 = *(v17 + 24);
      *v9 = *v17;
      *(v9 + 8) = v18;
      *(v9 + 16) = v19;
      *(v9 + 24) = v21;
      *(v9 + 40) = v20;
      if (v12 == v25)
      {

        a4 = v16;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 48;

      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E5A230F8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1E5A2325C()
{
  result = qword_1ED001208;
  if (!qword_1ED001208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0011F8, &qword_1E5A45128);
    sub_1E5A23314();
    sub_1E58CD164(&qword_1ECFFF230, &qword_1ECFFF078, &qword_1E5A3C638, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001208);
  }

  return result;
}

unint64_t sub_1E5A23314()
{
  result = qword_1ED001210;
  if (!qword_1ED001210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001218, &unk_1E5A45130);
    sub_1E5A233A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001210);
  }

  return result;
}

unint64_t sub_1E5A233A0()
{
  result = qword_1ED001220;
  if (!qword_1ED001220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001220);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A23454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5A2349C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall WorkoutPlanSkillLevel.init(identifier:kind:name:)(FitnessWorkoutPlan::WorkoutPlanSkillLevel *__return_ptr retstr, Swift::String identifier, Swift::String_optional kind, Swift::String name)
{
  retstr->identifier = identifier;
  retstr->kind = kind;
  retstr->name = name;
}

uint64_t static WorkoutPlanSkillLevel.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanSkillLevel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutPlanSkillLevel.kind.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutPlanSkillLevel.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1E5A235D0()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E5A23620@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A24204(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A23648(uint64_t a1)
{
  v2 = sub_1E5A24034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A23684(uint64_t a1)
{
  v2 = sub_1E5A24034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A236C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E5A236F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E5A2373C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E5A23790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanSkillLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012B0, &qword_1E5A45260);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A24034();
  sub_1E5A2C224();
  v14 = 0;
  v9 = v11[5];
  sub_1E5A2C064();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1E5A2C034();
  v12 = 2;
  sub_1E5A2C064();
  return (*(v4 + 8))(v6, v3);
}

uint64_t WorkoutPlanSkillLevel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012C0, &qword_1E5A45268);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A24034();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1E5A2BF94();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1E5A2BF64();
  v21 = v12;
  v23 = 2;
  v13 = sub_1E5A2BF94();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanSkillLevel.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v2)
  {
    sub_1E5A2BB74();
  }

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanSkillLevel.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v1)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A23D58()
{
  v1 = *(v0 + 24);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v1)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A23E00(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v2)
  {
    sub_1E5A2BB74();
  }

  return sub_1E5A2BB74();
}

uint64_t sub_1E5A23E8C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2C1D4();
  if (v2)
  {
    sub_1E5A2BB74();
  }

  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC10SkillLevelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v6 && (v2 == v7 && v4 == v6 || (sub_1E5A2C114() & 1) != 0))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E5A2C114();
}

unint64_t sub_1E5A24034()
{
  result = qword_1ED0012B8;
  if (!qword_1ED0012B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012B8);
  }

  return result;
}

unint64_t sub_1E5A24088()
{
  result = qword_1ED0012C8;
  if (!qword_1ED0012C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012C8);
  }

  return result;
}

unint64_t sub_1E5A24100()
{
  result = qword_1ED0012D0;
  if (!qword_1ED0012D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012D0);
  }

  return result;
}

unint64_t sub_1E5A24158()
{
  result = qword_1ED0012D8;
  if (!qword_1ED0012D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012D8);
  }

  return result;
}

unint64_t sub_1E5A241B0()
{
  result = qword_1ED0012E0;
  if (!qword_1ED0012E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012E0);
  }

  return result;
}

uint64_t sub_1E5A24204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E5A24358@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001310, &unk_1E5A45590);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001308, &qword_1E5A45588);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  sub_1E5A2AD14();
  sub_1E5A2AE14();
  sub_1E5A2AE64();
  v11 = sub_1E5A2AEA4();

  KeyPath = swift_getKeyPath();
  v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001328, &qword_1E5A455A0) + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  *&v7[*(v5 + 36)] = qword_1ED026498;
  v14 = *MEMORY[0x1E697E728];
  v15 = sub_1E5A2A684();
  (*(*(v15 - 8) + 104))(v4, v14, v15);
  sub_1E5A25450(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);

  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E5A24E94();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    sub_1E5A2B164();
    sub_1E58BAD14(v4, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58BAD14(v7, &qword_1ED001310, &unk_1E5A45590);
    v17 = sub_1E5A2ADF4();
    v18 = &v10[*(v8 + 36)];
    *v18 = v17;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    v18[40] = 1;
    sub_1E5A2B7E4();
    sub_1E5A2A764();
    sub_1E58A9614(v10, a1);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012F0, &qword_1E5A45580);
    v19 = (a1 + *(result + 36));
    v20 = v23[5];
    v19[4] = v23[4];
    v19[5] = v20;
    v19[6] = v23[6];
    v21 = v23[1];
    *v19 = v23[0];
    v19[1] = v21;
    v22 = v23[3];
    v19[2] = v23[2];
    v19[3] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5A24720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001380, &unk_1E5A455C8) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5A2A9B4();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)) = 256;
  sub_1E58A954C(a1, a2);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001340, &qword_1E5A455B0) + 36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001390, &qword_1E5A455D8);
  sub_1E5A2A784();
  result = (v7)(v8, v5, v6);
  *(v8 + *(v9 + 36)) = 0;
  return result;
}

__n128 sub_1E5A24850@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0013A8, &unk_1E5A455E0) + 36));
  v5 = sub_1E5A2A754();
  v6 = *(v5 + 20);
  v7 = *MEMORY[0x1E697F468];
  v8 = sub_1E5A2A9B4();
  v9 = *(*(v8 - 8) + 104);
  v9(v4 + v6, v7, v8);
  __asm { FMOV            V0.2D, #12.0 }

  v18 = _Q0;
  *v4 = _Q0;
  *(v4->n128_u16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)) = 256;
  sub_1E58A954C(a1, a2);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001348, &qword_1E5A455B8) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000408, &qword_1E5A455F0);
  sub_1E5A2A784();
  v9(v15 + *(v5 + 20), v7, v8);
  result = v18;
  *v15 = v18;
  v15->n128_u8[*(v16 + 36)] = 0;
  return result;
}

uint64_t sub_1E5A249B8(uint64_t a1)
{
  v2 = sub_1E5A2AD34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012E8, &qword_1E5A45578);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  (*(v3 + 16))(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2, v6);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012F0, &qword_1E5A45580);
  sub_1E5A24CE0();
  sub_1E5A2B574();
  v11 = &v8[*(v5 + 36)];
  sub_1E5A2B794();
  LOBYTE(v2) = sub_1E5A2ADA4();
  v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001338, &qword_1E5A455A8) + 36)] = v2;
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001340, &qword_1E5A455B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001348, &qword_1E5A455B8);
  sub_1E5A25034();
  sub_1E5A25118();
  sub_1E5A25288();
  sub_1E5A2B3A4();
  return sub_1E58A94E4(v8);
}

unint64_t sub_1E5A24CE0()
{
  result = qword_1ED0012F8;
  if (!qword_1ED0012F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0012F0, &qword_1E5A45580);
    sub_1E5A24D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0012F8);
  }

  return result;
}

unint64_t sub_1E5A24D6C()
{
  result = qword_1ED001300;
  if (!qword_1ED001300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001308, &qword_1E5A45588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001310, &unk_1E5A45590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E5A24E94();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001300);
  }

  return result;
}

unint64_t sub_1E5A24E94()
{
  result = qword_1ED001318;
  if (!qword_1ED001318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001310, &unk_1E5A45590);
    sub_1E5A24F4C();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001318);
  }

  return result;
}

unint64_t sub_1E5A24F4C()
{
  result = qword_1ED001320;
  if (!qword_1ED001320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001328, &qword_1E5A455A0);
    sub_1E5A25450(&qword_1ED001330, MEMORY[0x1E697CC80], MEMORY[0x1E697CC78]);
    sub_1E58CD164(&qword_1ECFFEBD8, &qword_1ECFFEBE0, &qword_1E5A3B788, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001320);
  }

  return result;
}

unint64_t sub_1E5A25034()
{
  result = qword_1ED001350;
  if (!qword_1ED001350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0012E8, &qword_1E5A45578);
    sub_1E58CD164(&qword_1ED001358, &qword_1ED001360, &qword_1E5A455C0, MEMORY[0x1E697D680]);
    sub_1E58CD164(&qword_1ED001368, &qword_1ED001338, &qword_1E5A455A8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001350);
  }

  return result;
}

unint64_t sub_1E5A25118()
{
  result = qword_1ED001370;
  if (!qword_1ED001370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001340, &qword_1E5A455B0);
    sub_1E5A251D0();
    sub_1E58CD164(&qword_1ED001388, &qword_1ED001390, &qword_1E5A455D8, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001370);
  }

  return result;
}

unint64_t sub_1E5A251D0()
{
  result = qword_1ED001378;
  if (!qword_1ED001378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001380, &unk_1E5A455C8);
    sub_1E5A25034();
    sub_1E58CD164(&qword_1ECFFE960, &qword_1ECFFC788, &qword_1E5A319E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001378);
  }

  return result;
}

unint64_t sub_1E5A25288()
{
  result = qword_1ED001398;
  if (!qword_1ED001398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001348, &qword_1E5A455B8);
    sub_1E5A25340();
    sub_1E58CD164(&qword_1ED000400, &qword_1ED000408, &qword_1E5A455F0, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001398);
  }

  return result;
}

unint64_t sub_1E5A25340()
{
  result = qword_1ED0013A0;
  if (!qword_1ED0013A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0013A8, &unk_1E5A455E0);
    sub_1E5A25034();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013A0);
  }

  return result;
}

uint64_t sub_1E5A253F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5A2A814();
  *a1 = result;
  return result;
}

uint64_t sub_1E5A25450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5A254A8()
{
  if (*v0)
  {
    return 0x656D7269666E6F63;
  }

  else
  {
    return 0x4F6D7269666E6F63;
  }
}

uint64_t sub_1E5A254F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4F6D7269666E6F63 && a2 == 0xEF6563697665446ELL;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E5A255E0(uint64_t a1)
{
  v2 = sub_1E5A25A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A2561C(uint64_t a1)
{
  v2 = sub_1E5A25A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A25658(uint64_t a1)
{
  v2 = sub_1E5A25B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A25694(uint64_t a1)
{
  v2 = sub_1E5A25B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A256D0(uint64_t a1)
{
  v2 = sub_1E5A25AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A2570C(uint64_t a1)
{
  v2 = sub_1E5A25AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HandoffAlertIconState.hashValue.getter(char a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1 & 1);
  return sub_1E5A2C204();
}

uint64_t HandoffAlertIconState.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0013B0, &qword_1E5A45630);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0013B8, &qword_1E5A45638);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0013C0, &qword_1E5A45640);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A25A74();
  sub_1E5A2C224();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E5A25AC8();
    sub_1E5A2C024();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E5A25B1C();
    sub_1E5A2C024();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1E5A25A74()
{
  result = qword_1ED0013C8;
  if (!qword_1ED0013C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013C8);
  }

  return result;
}

unint64_t sub_1E5A25AC8()
{
  result = qword_1ED0013D0;
  if (!qword_1ED0013D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013D0);
  }

  return result;
}

unint64_t sub_1E5A25B1C()
{
  result = qword_1ED0013D8;
  if (!qword_1ED0013D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013D8);
  }

  return result;
}

uint64_t sub_1E5A25B8C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5A25BD8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1E5A25BD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001420, &qword_1E5A459C0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001428, &qword_1E5A459C8);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001430, &unk_1E5A459D0);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A25A74();
  v11 = v26;
  sub_1E5A2C214();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1E5A2C004();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1E58BC5B4();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1E5A2BE84();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v19 = &type metadata for HandoffAlertIconState;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1E5A25AC8();
    sub_1E5A2BF44();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1E5A25B1C();
    sub_1E5A2BF44();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_1E5A26098()
{
  result = qword_1ED0013E0;
  if (!qword_1ED0013E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013E0);
  }

  return result;
}

unint64_t sub_1E5A26130()
{
  result = qword_1ED0013E8;
  if (!qword_1ED0013E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013E8);
  }

  return result;
}

unint64_t sub_1E5A26188()
{
  result = qword_1ED0013F0;
  if (!qword_1ED0013F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013F0);
  }

  return result;
}

unint64_t sub_1E5A261E0()
{
  result = qword_1ED0013F8;
  if (!qword_1ED0013F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0013F8);
  }

  return result;
}

unint64_t sub_1E5A26238()
{
  result = qword_1ED001400;
  if (!qword_1ED001400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001400);
  }

  return result;
}

unint64_t sub_1E5A26290()
{
  result = qword_1ED001408;
  if (!qword_1ED001408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001408);
  }

  return result;
}

unint64_t sub_1E5A262E8()
{
  result = qword_1ED001410;
  if (!qword_1ED001410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001410);
  }

  return result;
}

unint64_t sub_1E5A26340()
{
  result = qword_1ED001418;
  if (!qword_1ED001418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001418);
  }

  return result;
}

unint64_t sub_1E5A263A8()
{
  result = qword_1ED001438;
  if (!qword_1ED001438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001438);
  }

  return result;
}

uint64_t sub_1E5A263FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, void *), uint64_t a4, uint64_t a5)
{
  v21[1] = a2;
  v21[0] = a1;
  v6 = a5 + 56;
  v7 = 1 << *(a5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a5 + 56);
  v10 = (v7 + 63) >> 6;
  v22 = a5;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(v22 + 48) + 24 * (__clz(__rbit64(v9)) | (v13 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v19[0] = v15;
      v19[1] = v16;
      v20 = v17;
      sub_1E5932970(v15, v16, v17);
      a3(v21, v19);
      if (v5)
      {
        break;
      }

      v9 &= v9 - 1;
      result = sub_1E58BAAC0(v15, v16, v17);
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    sub_1E58BAAC0(v15, v16, v17);
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

        return v21[0];
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

uint64_t sub_1E5A26570@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  v30 = a2;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(v30 + 48) + 56 * (__clz(__rbit64(v8)) | (v12 << 6)));
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v18 = v13[4];
      v17 = v13[5];
      v19 = v13[6];
      v25 = *v13;
      v26 = v14;
      *&v27 = v15;
      *(&v27 + 1) = v16;
      v28 = v18;
      *&v29 = v17;
      *(&v29 + 1) = v19;

      v20 = a1(&v25);
      if (v4)
      {
      }

      if (v20)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v21 = v26;
    v22 = v28;
    *a3 = v25;
    *(a3 + 8) = v21;
    *(a3 + 16) = v27;
    *(a3 + 32) = v22;
    *(a3 + 40) = v29;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        return result;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ActivityListItemView.init(store:item:index:weekday:dateComponentsFormatter:showSeparator:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v21 = a6;
  v20 = a5;
  v11 = sub_1E5A2AF24();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v22 = 0x403C000000000000;
  (*(v14 + 104))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6980EE8], v12);
  sub_1E59FE7DC();
  sub_1E5A2A544();
  v15 = type metadata accessor for ActivityListItemView(0);
  v16 = (a7 + v15[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  *v16 = sub_1E5A2A654();
  v16[1] = v17;
  result = sub_1E5A29674(a2, a7 + v15[7], type metadata accessor for WorkoutPlanScheduledItem);
  *(a7 + v15[8]) = a3;
  *(a7 + v15[9]) = a4;
  *(a7 + v15[6]) = v20;
  *(a7 + v15[10]) = v21;
  return result;
}

uint64_t type metadata accessor for ActivityListItemView(uint64_t a1)
{
  result = qword_1ED001470;
  if (!qword_1ED001470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1E5A26A48@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ActivityListItemView(0);
  swift_getKeyPath();
  sub_1E5A2B934();

  v6 = *(v19 + 16);
  if (v6)
  {
    v7 = 32;
    while (1)
    {
      v14 = *(v19 + v7);
      v9 = *(v19 + v7 + 32);
      v8 = *(v19 + v7 + 48);
      v10 = *(v19 + v7 + 16);
      v18 = *(v19 + v7 + 64);
      v16 = v9;
      v17 = v8;
      v15 = v10;
      if (__PAIR128__(v10, *(&v14 + 1)) == __PAIR128__(a2, a1) || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v7 += 72;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    sub_1E591B3E0(&v14, v13);

    v12 = v17;
    *(a3 + 32) = v16;
    *(a3 + 48) = v12;
    *(a3 + 64) = v18;
    result = v15;
    *a3 = v14;
    *(a3 + 16) = result;
  }

  else
  {
LABEL_6:

    *(a3 + 64) = 0;
    result.n128_u64[0] = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_1E5A26B6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  v97 = *(a2 + 8);
  if (*(a2 + 16) > 1u)
  {
    if (*(a2 + 16) == 2)
    {
      v73 = v2;
      type metadata accessor for ActivityListItemView(0);
      swift_getKeyPath();
      sub_1E5A2B934();

      v93 = v89;
      v94 = v90;
      v95 = v91;
      v96 = v92;

      sub_1E58F011C(&v93);
      v15 = 0;
      v16 = 1 << *(*(&v91 + 1) + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(*(&v91 + 1) + 56);
      v19 = (v16 + 63) >> 6;
      while (v18)
      {
        v20 = v97;
LABEL_28:
        v22 = (*(*(&v91 + 1) + 48) + 48 * (__clz(__rbit64(v18)) | (v15 << 6)));
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[3];
        v76 = v22[2];
        v26 = v22[4];
        v27 = v22[5];
        if (*v22 == v73 && v20 == v23)
        {
          v24 = v73;
          goto LABEL_66;
        }

        v18 &= v18 - 1;
        if (sub_1E5A2C114())
        {
          v97 = v23;
LABEL_66:
          v51 = v25;

          v77 = v26;
LABEL_67:
          swift_getKeyPath();
          sub_1E5A2B934();

          v89 = v78;
          v90 = v79;
          v91 = v80;
          v92 = v81;

          v52 = sub_1E58F011C(&v89);
          MEMORY[0x1EEE9AC00](v52);
          sub_1E5A26570(sub_1E5A29B28, *(&v79 + 1), &v82);

          v53 = v82;
          v54 = v83;
          v56 = v85;
          v55 = v86;
          v58 = v87;
          v57 = v88;
          if (!v51)
          {
            v65 = v84;
            sub_1E58C2DCC(v24, v97, v76, 0, v77, v27);
            sub_1E59DF400(v53, v54, v65, v56, v55, v58, v57);
            return;
          }

          if (!v83)
          {
            sub_1E58C2DCC(v24, v97, v76, v51, v77, v27);

            return;
          }

          v72 = v84;
          v74 = v87;
          if (*(v86 + 16))
          {
            v71 = sub_1E58EF508(v76, v51);
            v60 = v59;

            if (v60)
            {
              v61 = (*(v55 + 56) + 16 * v71);
              v62 = v57;
              v63 = *v61;
              v64 = v61[1];

              sub_1E59DF400(v53, v54, v72, v56, v55, v74, v62);
              sub_1E58C2DCC(v24, v97, v76, v51, v77, v27);
              v27 = v64;
              goto LABEL_78;
            }
          }

          else
          {
          }

          sub_1E59DF400(v53, v54, v72, v56, v55, v74, v57);
          v66 = v97;
          if (v97)
          {

            v63 = v77;
            sub_1E58C2DCC(v24, v66, v76, v51, v77, v27);
          }

          else
          {
            v63 = 0;
            v27 = 0;
          }

LABEL_78:
          v68 = *a1;
          v67 = a1[1];
          if (v27)
          {
            v69 = v63;
          }

          else
          {
            v69 = 0;
          }

          if (v27)
          {
            v70 = v27;
          }

          else
          {
            v70 = 0xE000000000000000;
          }

          MEMORY[0x1E69327A0](v69, v70);

          MEMORY[0x1E69327A0](0x20A280E220, 0xA500000000000000);

          *a1 = v68;
          a1[1] = v67;
          return;
        }
      }

      v20 = v97;
      while (1)
      {
        v21 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_87;
        }

        if (v21 >= v19)
        {

          v76 = 0;
          v51 = 0;
          v24 = 0;
          v97 = 0;
          v77 = 0;
          v27 = 0;
          goto LABEL_67;
        }

        v18 = *(*(&v91 + 1) + 56 + 8 * v21);
        ++v15;
        if (v18)
        {
          v15 = v21;
          goto LABEL_28;
        }
      }
    }

    type metadata accessor for ActivityListItemView(0);
    swift_getKeyPath();
    sub_1E5A2B934();

    v93 = v89;
    v94 = v90;
    v95 = v91;
    v96 = v92;

    sub_1E58F011C(&v93);
    v39 = 0;
    v40 = 1 << *(v92 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v92 + 56);
    v43 = (v40 + 63) >> 6;
    v44 = v97;
    while (v42)
    {
LABEL_56:
      v46 = (*(v92 + 48) + 40 * (__clz(__rbit64(v42)) | (v39 << 6)));
      v12 = v46[2];
      v11 = v46[3];
      if (*v46 != v2 || v44 != v46[1])
      {
        v42 &= v42 - 1;
        v48 = sub_1E5A2C114();
        v44 = v97;
        if ((v48 & 1) == 0)
        {
          continue;
        }
      }

LABEL_61:

      v50 = *a1;
      v49 = a1[1];
      MEMORY[0x1E69327A0](v12, v11);

      MEMORY[0x1E69327A0](0x20A280E220, 0xA500000000000000);

      *a1 = v50;
      a1[1] = v49;
      return;
    }

    while (1)
    {
      v45 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v45 >= v43)
      {
LABEL_62:

        return;
      }

      v42 = *(v92 + 56 + 8 * v45);
      ++v39;
      if (v42)
      {
        v39 = v45;
        goto LABEL_56;
      }
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      type metadata accessor for ActivityListItemView(0);
      swift_getKeyPath();
      sub_1E5A2B934();

      v93 = v89;
      v94 = v90;
      v95 = v91;
      v96 = v92;

      sub_1E58F011C(&v93);
      v3 = 0;
      v4 = 1 << *(v89 + 32);
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(v89 + 56);
      v7 = (v4 + 63) >> 6;
      v8 = v97;
      while (v6)
      {
LABEL_11:
        v10 = (*(v89 + 48) + ((v3 << 11) | (32 * __clz(__rbit64(v6)))));
        v12 = v10[2];
        v11 = v10[3];
        if (*v10 != v2 || v8 != v10[1])
        {
          v6 &= v6 - 1;
          v14 = sub_1E5A2C114();
          v8 = v97;
          if ((v14 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_61;
      }

      while (1)
      {
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_88;
        }

        if (v9 >= v7)
        {
          goto LABEL_62;
        }

        v6 = *(v89 + 56 + 8 * v9);
        ++v3;
        if (v6)
        {
          v3 = v9;
          goto LABEL_11;
        }
      }
    }

    type metadata accessor for ActivityListItemView(0);
    swift_getKeyPath();
    sub_1E5A2B934();

    v93 = v89;
    v94 = v90;
    v95 = v91;
    v96 = v92;

    sub_1E58F011C(&v93);
    v29 = 0;
    v30 = 1 << *(v90 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v90 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = v97;
    while (v32)
    {
LABEL_42:
      v36 = (*(v90 + 48) + ((v29 << 11) | (32 * __clz(__rbit64(v32)))));
      v12 = v36[2];
      v11 = v36[3];
      if (*v36 != v2 || v34 != v36[1])
      {
        v32 &= v32 - 1;
        v38 = sub_1E5A2C114();
        v34 = v97;
        if ((v38 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_61;
    }

    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v33)
      {
        goto LABEL_62;
      }

      v32 = *(v90 + 56 + 8 * v35);
      ++v29;
      if (v32)
      {
        v29 = v35;
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

BOOL sub_1E5A274D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = type metadata accessor for WorkoutPlanScheduledItem(0);
  sub_1E5A26A48(*(a3 + *(v5 + 28)), *(a3 + *(v5 + 28) + 8), v9);
  v6 = v9[0];
  if (v9[0])
  {

    sub_1E58BAD14(v9, &qword_1ECFFD7D8, &qword_1E5A35E50);
    if (*(v6 + 16))
    {
      v7 = *(v6 + 32);

      return v4 == v7;
    }
  }

  return 0;
}

uint64_t ActivityListItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2AC84();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001440, &qword_1E5A45A70);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001448, &qword_1E5A45A78);
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001450, &qword_1E5A45A80);
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v34 - v14;
  v15 = v1 + *(type metadata accessor for ActivityListItemView(0) + 28);
  v16 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v17 = sub_1E5A26A48(*(v15 + *(v16 + 28)), *(v15 + *(v16 + 28) + 8), &v54);
  if (v54)
  {
    v37 = v13;
    v38 = v11;
    v49 = v54;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    *v10 = sub_1E5A2A924();
    *(v10 + 1) = 0x4020000000000000;
    v10[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001458, &unk_1E5A45A88);
    sub_1E5A27B98(&v49, v1, &v10[*(v18 + 44)]);
    sub_1E58BAD14(&v54, &qword_1ECFFD7D8, &qword_1E5A35E50);
    v19 = *MEMORY[0x1E697E728];
    v20 = sub_1E5A2A684();
    (*(*(v20 - 8) + 104))(v8, v19, v20);
    sub_1E5A29A64(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    result = sub_1E5A2BA74();
    if (result)
    {
      v35 = v3;
      v22 = sub_1E58CD164(&qword_1ED001460, &qword_1ED001440, &qword_1E5A45A70, MEMORY[0x1E69817F8]);
      v36 = a1;
      v23 = v22;
      v24 = v43;
      v25 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
      v26 = v40;
      v27 = v8;
      v28 = v41;
      sub_1E5A2B164();
      sub_1E58BAD14(v27, &qword_1ECFFCE80, &qword_1E5A35BC0);
      sub_1E58BAD14(v10, &qword_1ED001440, &qword_1E5A45A70);
      sub_1E5A2AC74();
      v45 = v28;
      v46 = v6;
      v47 = v23;
      v48 = v25;
      swift_getOpaqueTypeConformance2();
      v29 = v39;
      v30 = v38;
      sub_1E5A2B224();
      (*(v24 + 8))(v5, v35);
      (*(v42 + 8))(v26, v30);
      v31 = v36;
      v32 = v37;
      (*(v44 + 32))(v36, v29, v37);
      return (*(v44 + 56))(v31, 0, 1, v32);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v33 = *(v44 + 56);

    return v33(a1, 1, 1, v13, v17);
  }

  return result;
}

uint64_t sub_1E5A27B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v43 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001498, &qword_1E5A45B40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014A0, &qword_1E5A45B48);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v37 - v12;

  sub_1E5A2B4A4();
  v13 = sub_1E5A2AFE4();
  v15 = v14;
  v17 = v16;
  v39 = a1;
  LOBYTE(v49[0]) = *(a1 + 40);
  if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v18 == 0xEA00000000006E6FLL)
  {

LABEL_5:
    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v20 = &qword_1ED0264A0;
    goto LABEL_11;
  }

  v19 = sub_1E5A2C114();

  if (v19)
  {
    goto LABEL_5;
  }

  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v20 = &qword_1ED026498;
LABEL_11:
  v21 = *v20;

  *&v49[0] = v21;
  v22 = sub_1E5A2AF84();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1E58B3C9C(v13, v15, v17 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001468, &unk_1E5A45B10);
  v29 = v40;
  sub_1E5A2A554();
  sub_1E5A2A554();
  sub_1E5A2B7D4();
  sub_1E5A2A5B4();
  v50 = v26 & 1;
  *&v44 = v22;
  *(&v44 + 1) = v24;
  LOBYTE(v45) = v26 & 1;
  *(&v45 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014A8, &qword_1E5A45B50);
  sub_1E5A2998C(&qword_1ED0014B0, &qword_1ED0014A8, &qword_1E5A45B50);
  v30 = v38;
  sub_1E5A2B214();
  v49[3] = v47;
  v49[4] = v48;
  v49[1] = v45;
  v49[2] = v46;
  v49[0] = v44;
  sub_1E58BAD14(v49, &qword_1ED0014A8, &qword_1E5A45B50);
  *v8 = sub_1E5A2AA24();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014B8, &qword_1E5A45B58);
  sub_1E5A280C0(v39, v29, &v8[*(v31 + 44)]);
  v32 = v41;
  sub_1E58BABA0(v30, v41, &qword_1ED0014A0, &qword_1E5A45B48);
  v33 = v42;
  sub_1E58BABA0(v8, v42, &qword_1ED001498, &qword_1E5A45B40);
  v34 = v43;
  sub_1E58BABA0(v32, v43, &qword_1ED0014A0, &qword_1E5A45B48);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014C0, &qword_1E5A45B60);
  sub_1E58BABA0(v33, v34 + *(v35 + 48), &qword_1ED001498, &qword_1E5A45B40);
  sub_1E58BAD14(v8, &qword_1ED001498, &qword_1E5A45B40);
  sub_1E58BAD14(v30, &qword_1ED0014A0, &qword_1E5A45B48);
  sub_1E58BAD14(v33, &qword_1ED001498, &qword_1E5A45B40);
  return sub_1E58BAD14(v32, &qword_1ED0014A0, &qword_1E5A45B48);
}

uint64_t sub_1E5A280C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD740, &unk_1E5A35D60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD668, &qword_1E5A35C00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014C8, &qword_1E5A45B68);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  *v20 = sub_1E5A2A924();
  *(v20 + 1) = 0;
  v21 = 1;
  v20[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014D0, &qword_1E5A45B70);
  sub_1E5A283EC(a1, a2, &v20[*(v22 + 44)]);
  if (*(a2 + *(type metadata accessor for ActivityListItemView(0) + 40)) == 1)
  {
    sub_1E5A2B6B4();
    v23 = sub_1E5A2ADB4();
    sub_1E5A2A424();
    v24 = &v8[*(v5 + 36)];
    *v24 = v23;
    *(v24 + 1) = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    *(v24 + 4) = v28;
    v24[40] = 0;
    sub_1E591B1B8(v8, v14);
    v21 = 0;
  }

  (*(v6 + 56))(v14, v21, 1, v5);
  sub_1E58BABA0(v20, v17, &qword_1ED0014C8, &qword_1E5A45B68);
  sub_1E58BABA0(v14, v11, &qword_1ECFFD668, &qword_1E5A35C00);
  v29 = v33;
  sub_1E58BABA0(v17, v33, &qword_1ED0014C8, &qword_1E5A45B68);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014D8, &qword_1E5A45B78);
  sub_1E58BABA0(v11, v29 + *(v30 + 48), &qword_1ECFFD668, &qword_1E5A35C00);
  sub_1E58BAD14(v14, &qword_1ECFFD668, &qword_1E5A35C00);
  sub_1E58BAD14(v20, &qword_1ED0014C8, &qword_1E5A45B68);
  sub_1E58BAD14(v11, &qword_1ECFFD668, &qword_1E5A35C00);
  return sub_1E58BAD14(v17, &qword_1ED0014C8, &qword_1E5A45B68);
}

uint64_t sub_1E5A283EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v5 = sub_1E5A2A714();
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityListItemView(0);
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014E0, &qword_1E5A45B80);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v41 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014E8, &qword_1E5A45B88);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v42 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014F0, &qword_1E5A45B90);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v45 = &v41 - v21;
  v46 = sub_1E5A2AA34();
  LOBYTE(v63) = 1;
  sub_1E5A28A98(a2, v70);
  *&v62[7] = v70[0];
  *&v62[23] = v70[1];
  *&v62[39] = v70[2];
  *&v62[55] = v70[3];
  LODWORD(v43) = v63;
  sub_1E5A299FC(a2, &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityListItemView);
  v22 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v23 = swift_allocObject();
  sub_1E5A29674(&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ActivityListItemView);
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014F8, &qword_1E5A45B98);
  sub_1E5A29744();
  sub_1E5A2B574();
  v24 = v8;
  sub_1E5A2A704();
  sub_1E58CD164(&qword_1ED001538, &qword_1ED0014E0, &qword_1E5A45B80, MEMORY[0x1E697D680]);
  sub_1E5A29A64(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v25 = v42;
  v26 = v44;
  v27 = v51;
  sub_1E5A2B0B4();
  (*(v52 + 8))(v24, v27);
  (*(v47 + 8))(v12, v26);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  (*(v48 + 32))(v19, v25, v50);
  v28 = &v19[*(v15 + 44)];
  v29 = v68;
  *(v28 + 4) = v67;
  *(v28 + 5) = v29;
  *(v28 + 6) = v69;
  v30 = v64;
  *v28 = v63;
  *(v28 + 1) = v30;
  v31 = v66;
  *(v28 + 2) = v65;
  *(v28 + 3) = v31;
  v32 = v45;
  sub_1E58A9B34(v19, v45);
  v33 = v49;
  sub_1E58BABA0(v32, v49, &qword_1ED0014F0, &qword_1E5A45B90);
  v34 = v46;
  v54[0] = v46;
  v54[1] = 0;
  LOBYTE(v25) = v43;
  v55[0] = v43;
  *&v55[1] = *v62;
  *&v55[17] = *&v62[16];
  *&v55[33] = *&v62[32];
  *&v55[49] = *&v62[48];
  v35 = *&v62[63];
  *&v55[64] = *&v62[63];
  v36 = *v55;
  *a3 = v46;
  *(a3 + 16) = v36;
  v37 = *&v55[16];
  v38 = *&v55[48];
  *(a3 + 48) = *&v55[32];
  *(a3 + 64) = v38;
  *(a3 + 32) = v37;
  *(a3 + 80) = v35;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001540, &unk_1E5A45BC0);
  sub_1E58BABA0(v33, a3 + *(v39 + 64), &qword_1ED0014F0, &qword_1E5A45B90);
  sub_1E58BABA0(v54, v56, &qword_1ED000718, &qword_1E5A41ED0);
  sub_1E58BAD14(v32, &qword_1ED0014F0, &qword_1E5A45B90);
  sub_1E58BAD14(v33, &qword_1ED0014F0, &qword_1E5A45B90);
  v56[0] = v34;
  v56[1] = 0;
  v57 = v25;
  v59 = *&v62[16];
  v60 = *&v62[32];
  *v61 = *&v62[48];
  *&v61[15] = *&v62[63];
  v58 = *v62;
  return sub_1E58BAD14(v56, &qword_1ED000718, &qword_1E5A41ED0);
}

uint64_t sub_1E5A28A98@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E58D1C80();

  v5 = sub_1E5A2AFD4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = 0xE000000000000000;
  v35 = 0;
  v36 = 0xE000000000000000;
  v13 = type metadata accessor for ActivityListItemView(0);
  v14 = a2 + *(v13 + 28);
  v15 = *(a2 + *(v13 + 24));
  [v15 setUnitsStyle_];
  [v15 setAllowedUnits_];
  sub_1E5A2BD04();
  v16 = [v15 stringFromTimeInterval_];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1E5A2BB44();
    v12 = v19;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1E69327A0](v18, v12);

  v20 = MEMORY[0x1E69327A0](32, 0xE100000000000000);
  MEMORY[0x1EEE9AC00](v20);
  v31[2] = a2;
  v31[3] = v14;
  v22 = sub_1E5A263FC(0, 0xE000000000000000, sub_1E5A29B0C, v31, v21);
  MEMORY[0x1E69327A0](v22);

  v33[0] = sub_1E5A2ABA4();
  v23 = sub_1E5A2AF84();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v32 = v9 & 1;
  LOBYTE(v33[0]) = v9 & 1;
  v34 = v27 & 1;
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v11;
  *(a3 + 32) = v23;
  *(a3 + 40) = v25;
  *(a3 + 48) = v27 & 1;
  *(a3 + 56) = v29;
  sub_1E594C9E8(v5, v7, v9 & 1);

  sub_1E594C9E8(v23, v25, v27 & 1);

  sub_1E58B3C9C(v23, v25, v27 & 1);

  sub_1E58B3C9C(v5, v7, v32);
}

uint64_t sub_1E5A28D0C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityListItemView(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
  v7 = *(v6 + 48);
  v8 = &v4[*(v6 + 64)];
  sub_1E5A299FC(a1 + v5[7], v4, type metadata accessor for WorkoutPlanScheduledItem);
  v9 = type metadata accessor for WorkoutPlanScheduledItem(0);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v4[v7] = *(a1 + v5[9]);
  *v8 = *(a1 + v5[8]);
  v8[8] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  sub_1E5A29AAC(v4, type metadata accessor for WorkoutPlanCreationAction);
  *v4 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E5A29AAC(v4, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5A28EB0@<X0>(uint64_t a1@<X8>)
{
  v42 = sub_1E5A2B6A4();
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v34 - v4;
  v5 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2D33E0;
  type metadata accessor for ActivityListItemView(0);
  swift_getKeyPath();
  v8 = v7;
  sub_1E5A2B944();

  v9 = sub_1E5A2AF64();
  v11 = v10;
  v13 = v12;
  sub_1E5A2AF04();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v14 = sub_1E5A2AFA4();
  v38 = v15;
  v39 = v14;
  v17 = v16;
  v37 = v18;

  sub_1E58B3C9C(v9, v11, v13 & 1);

  v36 = sub_1E5A2ADA4();
  v19 = v17 & 1;
  v44 = v17 & 1;
  v43 = 0;
  v35 = sub_1E5A2B7E4();
  v21 = v20;
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001520, &unk_1E5A45BA8) + 36));
  if (qword_1ECFFB488 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED0264A8;
  v24 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001548, &qword_1E5A45BF0) + 36);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_1E5A2A9B4();
  v27 = *(*(v26 - 8) + 104);
  v27(v24, v25, v26);
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)] = 256;
  *v22 = v23;
  v28 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001530, &qword_1E5A45BB8) + 36));
  *v28 = v35;
  v28[1] = v21;
  v29 = v38;
  *a1 = v39;
  *(a1 + 8) = v29;
  *(a1 + 16) = v19;
  *(a1 + 24) = v37;
  *(a1 + 32) = v36;
  *(a1 + 40) = xmmword_1E5A3C080;
  *(a1 + 56) = xmmword_1E5A3C080;
  *(a1 + 72) = 0;
  v30 = qword_1ECFFB478;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_1ED026498;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001510, &qword_1E5A45BA0) + 36)) = v31;
  v32 = v41;
  v27(v41, v25, v26);
  sub_1E5A299FC(v32, v40, MEMORY[0x1E6981998]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014F8, &qword_1E5A45B98);
  sub_1E5A29A64(&qword_1ECFFEA98, MEMORY[0x1E6981998], MEMORY[0x1E6981978]);

  sub_1E5A2AD54();
  return sub_1E5A29AAC(v32, MEMORY[0x1E6981998]);
}

void sub_1E5A293B8(uint64_t a1)
{
  sub_1E5A29488(319);
  if (v1 <= 0x3F)
  {
    sub_1E596EF68(319);
    if (v2 <= 0x3F)
    {
      sub_1E59581C4();
      if (v3 <= 0x3F)
      {
        type metadata accessor for WorkoutPlanScheduledItem(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5A29488(uint64_t a1)
{
  if (!qword_1ED001480)
  {
    sub_1E59FE7DC();
    v1 = sub_1E5A2A564();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED001480);
    }
  }
}

unint64_t sub_1E5A294E4()
{
  result = qword_1ED001488;
  if (!qword_1ED001488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001490, &qword_1E5A45B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001448, &qword_1E5A45A78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001440, &qword_1E5A45A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58CD164(&qword_1ED001460, &qword_1ED001440, &qword_1E5A45A70, MEMORY[0x1E69817F8]);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001488);
  }

  return result;
}

uint64_t sub_1E5A29674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A296DC()
{
  v1 = *(type metadata accessor for ActivityListItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E5A28D0C(v2);
}

unint64_t sub_1E5A29744()
{
  result = qword_1ED001500;
  if (!qword_1ED001500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0014F8, &qword_1E5A45B98);
    sub_1E5A297FC();
    sub_1E58CD164(&qword_1ECFFEA68, &qword_1ECFFEA70, &unk_1E5A3C440, MEMORY[0x1E6980CF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001500);
  }

  return result;
}

unint64_t sub_1E5A297FC()
{
  result = qword_1ED001508;
  if (!qword_1ED001508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001510, &qword_1E5A45BA0);
    sub_1E5A298B4();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001508);
  }

  return result;
}

unint64_t sub_1E5A298B4()
{
  result = qword_1ED001518;
  if (!qword_1ED001518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001520, &unk_1E5A45BA8);
    sub_1E5A2998C(&qword_1ECFFEA50, &qword_1ECFFEA58, &unk_1E5A3B3E0);
    sub_1E58CD164(&qword_1ED001528, &qword_1ED001530, &qword_1E5A45BB8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001518);
  }

  return result;
}

uint64_t sub_1E5A2998C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E5A299FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A29A64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5A29AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5A29B98()
{
  result = qword_1ED001550;
  if (!qword_1ED001550)
  {
    sub_1E5A2AC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED001550);
  }

  return result;
}