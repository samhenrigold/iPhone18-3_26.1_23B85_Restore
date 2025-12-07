unint64_t sub_1E584C88C()
{
  result = qword_1ECFF6010;
  if (!qword_1ECFF6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6010);
  }

  return result;
}

unint64_t sub_1E584C8E4()
{
  result = qword_1ECFF6018;
  if (!qword_1ECFF6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6018);
  }

  return result;
}

unint64_t sub_1E584C93C()
{
  result = qword_1ECFF6020;
  if (!qword_1ECFF6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6020);
  }

  return result;
}

unint64_t sub_1E584C994()
{
  result = qword_1ECFF6028;
  if (!qword_1ECFF6028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6028);
  }

  return result;
}

unint64_t sub_1E584C9EC()
{
  result = qword_1ECFF6030;
  if (!qword_1ECFF6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6030);
  }

  return result;
}

unint64_t sub_1E584CA44()
{
  result = qword_1ECFF6038;
  if (!qword_1ECFF6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6038);
  }

  return result;
}

unint64_t sub_1E584CA9C()
{
  result = qword_1ECFF6040;
  if (!qword_1ECFF6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6040);
  }

  return result;
}

unint64_t sub_1E584CAF4()
{
  result = qword_1ECFF6048;
  if (!qword_1ECFF6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6048);
  }

  return result;
}

unint64_t sub_1E584CB4C()
{
  result = qword_1ECFF6050;
  if (!qword_1ECFF6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6050);
  }

  return result;
}

uint64_t sub_1E584CBC0()
{
  v1 = 0x656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1E584CC1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E585006C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E584CC44(uint64_t a1)
{
  v2 = sub_1E584D8E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584CC80(uint64_t a1)
{
  v2 = sub_1E584D8E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584CCBC()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1E584CCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E5854840() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5854840();

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

uint64_t sub_1E584CDCC(uint64_t a1)
{
  v2 = sub_1E584D7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584CE08(uint64_t a1)
{
  v2 = sub_1E584D7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584CE44()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_1E584CE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_1E5854840() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5854840();

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

uint64_t sub_1E584CF7C(uint64_t a1)
{
  v2 = sub_1E584D894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584CFB8(uint64_t a1)
{
  v2 = sub_1E584D894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentArtwork.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6078, &qword_1E5856E10);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6080, &qword_1E5856E18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6088, &qword_1E5856E20);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6090, &unk_1E5856E28);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for SampleContentArtwork(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6098, &qword_1E5856E38);
  v46 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584D7DC();
  sub_1E58548E0();
  sub_1E584D830(v42, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40) + 48);
    sub_1E5840C94(v17, v43, &qword_1ECFF6090, &unk_1E5856E28);
    v22 = v36;
    sub_1E5840C94(&v17[v21], v36, &qword_1ECFF6080, &qword_1E5856E18);
    v54 = 1;
    sub_1E584D894();
    v23 = v37;
    sub_1E58547E0();
    v53 = 0;
    sub_1E5853FC0();
    sub_1E58501E4(&qword_1EE2F8AA0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA0]);
    v24 = v41;
    v25 = v45;
    sub_1E58547F0();
    if (!v25)
    {
      v52 = 1;
      sub_1E5853EF0();
      sub_1E58501E4(&qword_1EE2F8AA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
      sub_1E58547F0();
    }

    (*(v40 + 8))(v23, v24);
    sub_1E5840E78(v22, &qword_1ECFF6080, &qword_1E5856E18);
    sub_1E5840E78(v43, &qword_1ECFF6090, &unk_1E5856E28);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    v27 = *(v26 + 64);
    v28 = v35;
    (*(v35 + 32))(v14, &v17[*(v26 + 48)], v12);
    sub_1E5840C94(&v17[v27], v44, &qword_1ECFF6090, &unk_1E5856E28);
    v51 = 0;
    sub_1E584D8E8();
    sub_1E58547E0();
    v50 = 0;
    v29 = v39;
    v30 = v45;
    sub_1E5854800();
    if (v30)
    {

      (*(v38 + 8))(v47, v29);
      v31 = v44;
    }

    else
    {

      v49 = 1;
      sub_1E584FAA8(&qword_1ECFF60A8, MEMORY[0x1E699F0D0]);
      sub_1E5854820();
      v48 = 2;
      sub_1E5853FC0();
      sub_1E58501E4(&qword_1EE2F8AA0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA0]);
      v33 = v44;
      sub_1E58547F0();
      (*(v38 + 8))(v47, v29);
      v31 = v33;
    }

    sub_1E5840E78(v31, &qword_1ECFF6090, &unk_1E5856E28);
    (*(v28 + 8))(v14, v12);
  }

  return (*(v46 + 8))(v20, v18);
}

uint64_t type metadata accessor for SampleContentArtwork(uint64_t a1)
{
  result = qword_1EE2F8678;
  if (!qword_1EE2F8678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E584D7DC()
{
  result = qword_1EE2F86C8;
  if (!qword_1EE2F86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86C8);
  }

  return result;
}

uint64_t sub_1E584D830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E584D894()
{
  result = qword_1EE2F86A0;
  if (!qword_1EE2F86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86A0);
  }

  return result;
}

unint64_t sub_1E584D8E8()
{
  result = qword_1ECFF60A0;
  if (!qword_1ECFF60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF60A0);
  }

  return result;
}

uint64_t SampleContentArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF60B0, &qword_1E5856E50);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v42 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF60B8, &qword_1E5856E58);
  v49 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF60C0, &unk_1E5856E60);
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for SampleContentArtwork(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v42 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v19 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E584D7DC();
  v20 = v54;
  sub_1E58548D0();
  if (!v20)
  {
    v44 = v16;
    v45 = v13;
    v22 = v50;
    v21 = v51;
    v43 = v18;
    v54 = v10;
    v23 = sub_1E58547D0();
    v24 = (2 * *(v23 + 16)) | 1;
    v56 = v23;
    v57 = v23 + 32;
    v58 = 0;
    v59 = v24;
    v25 = sub_1E5835F38();
    if (v25 == 2 || v58 != v59 >> 1)
    {
      v29 = sub_1E5854750();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5948, &qword_1E5855F20);
      *v31 = v54;
      sub_1E5854780();
      sub_1E5854740();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v52 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25)
      {
        v60 = 1;
        sub_1E584D894();
        sub_1E5854770();
        sub_1E5853FC0();
        v60 = 0;
        sub_1E58501E4(&qword_1ECFF60C8, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB8]);
        v26 = v45;
        v27 = v47;
        sub_1E5854790();
        v28 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40);
        sub_1E5853EF0();
        v60 = 1;
        sub_1E58501E4(&qword_1ECFF60D0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
        sub_1E5854790();
        (*(v48 + 8))(v21, v27);
        (*(v28 + 8))(v9, v7);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v26;
        v39 = v43;
      }

      else
      {
        v60 = 0;
        sub_1E584D8E8();
        sub_1E5854770();
        v60 = 0;
        v33 = sub_1E58547A0();
        v35 = v34;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
        v36 = *(v48 + 48);
        v37 = v44;
        *v44 = v33;
        v37[1] = v35;
        v51 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
        v60 = 1;
        sub_1E584FAA8(&qword_1ECFF60D8, MEMORY[0x1E699F0E8]);
        sub_1E58547C0();
        v47 = v36;
        sub_1E5853FC0();
        v60 = 2;
        sub_1E58501E4(&qword_1ECFF60C8, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB8]);
        v40 = v53;
        sub_1E5854790();
        v41 = v37;
        (*(v49 + 8))(v22, v40);
        (*(v52 + 8))(v9, v7);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v39 = v43;
        v38 = v41;
      }

      sub_1E584E210(v38, v39);
      sub_1E584E210(v39, v46);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1E584E210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SampleContentArtwork.hash(into:)(uint64_t a1)
{
  v52 = a1;
  v1 = sub_1E5853EF0();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6080, &qword_1E5856E18);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - v6;
  v8 = sub_1E5853FC0();
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6090, &unk_1E5856E28);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - v25;
  v27 = type metadata accessor for SampleContentArtwork(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E584D830(v51, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40) + 48);
    sub_1E5840C94(v29, v17, &qword_1ECFF6090, &unk_1E5856E28);
    sub_1E5840C94(&v29[v30], v7, &qword_1ECFF6080, &qword_1E5856E18);
    MEMORY[0x1E692EEF0](1);
    sub_1E5840F94(v17, v14, &qword_1ECFF6090, &unk_1E5856E28);
    if ((*(v54 + 48))(v14, 1, v53) == 1)
    {
      sub_1E58548B0();
    }

    else
    {
      v33 = v53;
      v34 = v54;
      v35 = v48;
      (*(v54 + 32))(v48, v14, v53);
      sub_1E58548B0();
      sub_1E58501E4(&qword_1ECFF60E0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
      sub_1E5854600();
      (*(v34 + 8))(v35, v33);
    }

    v36 = v49;
    v37 = v47;
    sub_1E5840F94(v7, v47, &qword_1ECFF6080, &qword_1E5856E18);
    v38 = v50;
    if ((*(v36 + 48))(v37, 1, v50) == 1)
    {
      sub_1E58548B0();
    }

    else
    {
      v44 = v46;
      (*(v36 + 32))(v46, v37, v38);
      sub_1E58548B0();
      sub_1E58501E4(&qword_1ECFF60E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E5854600();
      (*(v36 + 8))(v44, v38);
    }

    sub_1E5840E78(v7, &qword_1ECFF6080, &qword_1E5856E18);
    return sub_1E5840E78(v17, &qword_1ECFF6090, &unk_1E5856E28);
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    v32 = *(v31 + 64);
    (*(v24 + 32))(v26, &v29[*(v31 + 48)], v23);
    sub_1E5840C94(&v29[v32], v22, &qword_1ECFF6090, &unk_1E5856E28);
    MEMORY[0x1E692EEF0](0);
    sub_1E5854680();

    sub_1E584FAA8(&qword_1ECFF60F0, MEMORY[0x1E699F0D8]);
    sub_1E5854600();
    sub_1E5840F94(v22, v20, &qword_1ECFF6090, &unk_1E5856E28);
    if ((*(v54 + 48))(v20, 1, v53) == 1)
    {
      sub_1E58548B0();
    }

    else
    {
      v39 = v54;
      v40 = v48;
      v41 = v20;
      v42 = v53;
      (*(v54 + 32))(v48, v41, v53);
      sub_1E58548B0();
      sub_1E58501E4(&qword_1ECFF60E0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
      sub_1E5854600();
      (*(v39 + 8))(v40, v42);
    }

    sub_1E5840E78(v22, &qword_1ECFF6090, &unk_1E5856E28);
    return (*(v24 + 8))(v26, v23);
  }
}

uint64_t SampleContentArtwork.hashValue.getter()
{
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t sub_1E584EA68()
{
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t sub_1E584EAAC(uint64_t a1)
{
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v2);
  return sub_1E58548C0();
}

uint64_t _s20FitnessSampleContent0bC7ArtworkO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v130 = a2;
  v3 = sub_1E5853EF0();
  v116 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v111 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6118, &qword_1E58572A0);
  MEMORY[0x1EEE9AC00](v115);
  v6 = &v110 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6080, &qword_1E5856E18);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v112 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v126 = &v110 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v110 - v12;
  v13 = sub_1E5853FC0();
  v14 = *(v13 - 8);
  v122 = v13;
  v123 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6120, &qword_1E58572A8);
  v16 = MEMORY[0x1EEE9AC00](v120);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6090, &unk_1E5856E28);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v113 = &v110 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v118 = &v110 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v124 = &v110 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
  v128 = *(v29 - 8);
  v129 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v121 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v110 - v32;
  v33 = type metadata accessor for SampleContentArtwork(0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v110 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6128, &unk_1E58572B0);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v110 - v41;
  v43 = (&v110 + *(v40 + 56) - v41);
  sub_1E584D830(a1, &v110 - v41);
  sub_1E584D830(v130, v43);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v117 = v42;
    sub_1E584D830(v42, v38);
    v55 = *v38;
    v54 = *(v38 + 1);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    v57 = *(v56 + 48);
    v58 = *(v56 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1E5840E78(&v38[v58], &qword_1ECFF6090, &unk_1E5856E28);
      (*(v128 + 8))(&v38[v57], v129);
      v42 = v117;
      goto LABEL_9;
    }

    v59 = v43[1];
    v130 = *v43;
    v60 = v129;
    v61 = *(v128 + 32);
    v61(v125, &v38[v57], v129);
    sub_1E5840C94(&v38[v58], v124, &qword_1ECFF6090, &unk_1E5856E28);
    v62 = v43 + v57;
    v63 = v121;
    v61(v121, v62, v60);
    v64 = v118;
    sub_1E5840C94(v43 + v58, v118, &qword_1ECFF6090, &unk_1E5856E28);
    if (v55 == v130 && v54 == v59)
    {

      v65 = v117;
      v66 = v119;
    }

    else
    {
      v67 = sub_1E5854840();

      v65 = v117;
      v66 = v119;
      if ((v67 & 1) == 0)
      {
        sub_1E5840E78(v64, &qword_1ECFF6090, &unk_1E5856E28);
        v83 = v129;
        v81 = *(v128 + 8);
        v81(v63, v129);
        sub_1E5840E78(v124, &qword_1ECFF6090, &unk_1E5856E28);
        v84 = v125;
        goto LABEL_24;
      }
    }

    sub_1E584057C();
    v68 = v125;
    v69 = sub_1E5853FD0();
    v70 = v63;
    v71 = v124;
    if (v69)
    {
      v72 = *(v120 + 48);
      sub_1E5840F94(v124, v66, &qword_1ECFF6090, &unk_1E5856E28);
      sub_1E5840F94(v64, v66 + v72, &qword_1ECFF6090, &unk_1E5856E28);
      v73 = v122;
      v74 = *(v123 + 48);
      if (v74(v66, 1, v122) == 1)
      {
        sub_1E5840E78(v64, &qword_1ECFF6090, &unk_1E5856E28);
        v75 = v129;
        v76 = *(v128 + 8);
        v76(v121, v129);
        sub_1E5840E78(v71, &qword_1ECFF6090, &unk_1E5856E28);
        v76(v68, v75);
        if (v74(v66 + v72, 1, v73) == 1)
        {
          sub_1E5840E78(v66, &qword_1ECFF6090, &unk_1E5856E28);
          v77 = v117;
LABEL_43:
          sub_1E5850188(v77);
          return 1;
        }
      }

      else
      {
        v95 = v113;
        sub_1E5840F94(v66, v113, &qword_1ECFF6090, &unk_1E5856E28);
        if (v74(v66 + v72, 1, v73) != 1)
        {
          v104 = v123;
          v105 = v66 + v72;
          v106 = v114;
          (*(v123 + 32))(v114, v105, v73);
          sub_1E58501E4(&qword_1ECFF6138, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
          LODWORD(v130) = sub_1E5854610();
          v107 = *(v104 + 8);
          v107(v106, v73);
          sub_1E5840E78(v64, &qword_1ECFF6090, &unk_1E5856E28);
          v108 = v129;
          v109 = *(v128 + 8);
          v109(v121, v129);
          sub_1E5840E78(v71, &qword_1ECFF6090, &unk_1E5856E28);
          v109(v125, v108);
          v107(v113, v73);
          sub_1E5840E78(v66, &qword_1ECFF6090, &unk_1E5856E28);
          v77 = v117;
          if (v130)
          {
            goto LABEL_43;
          }

          goto LABEL_34;
        }

        v96 = v64;
        v97 = v95;
        sub_1E5840E78(v96, &qword_1ECFF6090, &unk_1E5856E28);
        v98 = v129;
        v99 = *(v128 + 8);
        v99(v121, v129);
        sub_1E5840E78(v71, &qword_1ECFF6090, &unk_1E5856E28);
        v99(v68, v98);
        (*(v123 + 8))(v97, v73);
      }

      sub_1E5840E78(v66, &qword_1ECFF6120, &qword_1E58572A8);
      v77 = v117;
LABEL_34:
      sub_1E5850188(v77);
      return 0;
    }

    sub_1E5840E78(v64, &qword_1ECFF6090, &unk_1E5856E28);
    v81 = *(v128 + 8);
    v82 = v70;
    v83 = v129;
    v81(v82, v129);
    sub_1E5840E78(v71, &qword_1ECFF6090, &unk_1E5856E28);
    v84 = v68;
LABEL_24:
    v81(v84, v83);
    v77 = v65;
    goto LABEL_34;
  }

  v130 = v3;
  sub_1E584D830(v42, v36);
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v42;
    sub_1E5840C94(&v36[v44], v127, &qword_1ECFF6080, &qword_1E5856E18);
    sub_1E5840C94(v43 + v44, v126, &qword_1ECFF6080, &qword_1E5856E18);
    v46 = *(v120 + 48);
    sub_1E5840C94(v36, v18, &qword_1ECFF6090, &unk_1E5856E28);
    sub_1E5840C94(v43, &v18[v46], &qword_1ECFF6090, &unk_1E5856E28);
    v47 = v122;
    v48 = v123;
    v49 = *(v123 + 48);
    if (v49(v18, 1, v122) == 1)
    {
      v50 = v49(&v18[v46], 1, v47);
      v52 = v126;
      v51 = v127;
      if (v50 == 1)
      {
        sub_1E5840E78(v18, &qword_1ECFF6090, &unk_1E5856E28);
        v53 = v45;
LABEL_26:
        v88 = *(v115 + 48);
        sub_1E5840F94(v51, v6, &qword_1ECFF6080, &qword_1E5856E18);
        sub_1E5840F94(v52, &v6[v88], &qword_1ECFF6080, &qword_1E5856E18);
        v89 = v116;
        v90 = v52;
        v91 = *(v116 + 48);
        v92 = v130;
        if (v91(v6, 1, v130) == 1)
        {
          sub_1E5840E78(v90, &qword_1ECFF6080, &qword_1E5856E18);
          sub_1E5840E78(v51, &qword_1ECFF6080, &qword_1E5856E18);
          if (v91(&v6[v88], 1, v92) == 1)
          {
            sub_1E5840E78(v6, &qword_1ECFF6080, &qword_1E5856E18);
LABEL_41:
            v77 = v53;
            goto LABEL_43;
          }
        }

        else
        {
          v93 = v112;
          sub_1E5840F94(v6, v112, &qword_1ECFF6080, &qword_1E5856E18);
          if (v91(&v6[v88], 1, v92) != 1)
          {
            v100 = v111;
            (*(v89 + 32))(v111, &v6[v88], v92);
            sub_1E58501E4(&qword_1ECFF6130, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
            v101 = v93;
            v102 = sub_1E5854610();
            v103 = *(v89 + 8);
            v103(v100, v92);
            sub_1E5840E78(v126, &qword_1ECFF6080, &qword_1E5856E18);
            sub_1E5840E78(v127, &qword_1ECFF6080, &qword_1E5856E18);
            v103(v101, v92);
            sub_1E5840E78(v6, &qword_1ECFF6080, &qword_1E5856E18);
            if (v102)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }

          sub_1E5840E78(v126, &qword_1ECFF6080, &qword_1E5856E18);
          sub_1E5840E78(v127, &qword_1ECFF6080, &qword_1E5856E18);
          (*(v89 + 8))(v93, v92);
        }

        v79 = &qword_1ECFF6118;
        v80 = &qword_1E58572A0;
        v78 = v6;
LABEL_32:
        sub_1E5840E78(v78, v79, v80);
LABEL_33:
        v77 = v53;
        goto LABEL_34;
      }
    }

    else
    {
      sub_1E5840F94(v18, v23, &qword_1ECFF6090, &unk_1E5856E28);
      if (v49(&v18[v46], 1, v47) != 1)
      {
        v85 = v114;
        (*(v48 + 32))(v114, &v18[v46], v47);
        sub_1E58501E4(&qword_1ECFF6138, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
        v86 = sub_1E5854610();
        v87 = *(v48 + 8);
        v87(v85, v47);
        v87(v23, v47);
        sub_1E5840E78(v18, &qword_1ECFF6090, &unk_1E5856E28);
        v53 = v45;
        v52 = v126;
        v51 = v127;
        if (v86)
        {
          goto LABEL_26;
        }

LABEL_21:
        sub_1E5840E78(v52, &qword_1ECFF6080, &qword_1E5856E18);
        v78 = v51;
        v79 = &qword_1ECFF6080;
        v80 = &qword_1E5856E18;
        goto LABEL_32;
      }

      (*(v48 + 8))(v23, v47);
      v52 = v126;
      v51 = v127;
    }

    sub_1E5840E78(v18, &qword_1ECFF6120, &qword_1E58572A8);
    v53 = v45;
    goto LABEL_21;
  }

  sub_1E5840E78(&v36[v44], &qword_1ECFF6080, &qword_1E5856E18);
  sub_1E5840E78(v36, &qword_1ECFF6090, &unk_1E5856E28);
LABEL_9:
  sub_1E5840E78(v42, &qword_1ECFF6128, &unk_1E58572B0);
  return 0;
}

uint64_t sub_1E584FAA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D10, &unk_1E5855800);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E584FB90(uint64_t a1)
{
  sub_1E584FC04(319);
  if (v1 <= 0x3F)
  {
    sub_1E584FC98(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E584FC04(uint64_t a1)
{
  if (!qword_1EE2F8478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D10, &unk_1E5855800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF6090, &unk_1E5856E28);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2F8478);
    }
  }
}

void sub_1E584FC98(uint64_t a1)
{
  if (!qword_1EE2F8A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF6090, &unk_1E5856E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF6080, &qword_1E5856E18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2F8A98);
    }
  }
}

unint64_t sub_1E584FD58()
{
  result = qword_1ECFF6100;
  if (!qword_1ECFF6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6100);
  }

  return result;
}

unint64_t sub_1E584FDB0()
{
  result = qword_1ECFF6108;
  if (!qword_1ECFF6108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6108);
  }

  return result;
}

unint64_t sub_1E584FE08()
{
  result = qword_1ECFF6110;
  if (!qword_1ECFF6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6110);
  }

  return result;
}

unint64_t sub_1E584FE60()
{
  result = qword_1EE2F86A8;
  if (!qword_1EE2F86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86A8);
  }

  return result;
}

unint64_t sub_1E584FEB8()
{
  result = qword_1EE2F86B0;
  if (!qword_1EE2F86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86B0);
  }

  return result;
}

unint64_t sub_1E584FF10()
{
  result = qword_1EE2F8690;
  if (!qword_1EE2F8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8690);
  }

  return result;
}

unint64_t sub_1E584FF68()
{
  result = qword_1EE2F8698;
  if (!qword_1EE2F8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8698);
  }

  return result;
}

unint64_t sub_1E584FFC0()
{
  result = qword_1EE2F86B8;
  if (!qword_1EE2F86B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86B8);
  }

  return result;
}

unint64_t sub_1E5850018()
{
  result = qword_1EE2F86C0;
  if (!qword_1EE2F86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86C0);
  }

  return result;
}

uint64_t sub_1E585006C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5854840();

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

uint64_t sub_1E5850188(uint64_t a1)
{
  v2 = type metadata accessor for SampleContentArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58501E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SampleContentItem.init(artwork:caption:identifier:isAvailable:subtitle:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1E584E210(a1, a8);
  v15 = type metadata accessor for SampleContentItem(0);
  v16 = v15[5];
  v17 = sub_1E5853EB0();
  v21 = *(*(v17 - 8) + 32);
  (v21)((v17 - 8), a8 + v16, a2, v17);
  v18 = (a8 + v15[6]);
  *v18 = a3;
  v18[1] = a4;
  *(a8 + v15[7]) = a5;
  v21(a8 + v15[8], a6, v17);
  v19 = a8 + v15[9];

  return (v21)(v19, a7, v17);
}

uint64_t type metadata accessor for SampleContentItem(uint64_t a1)
{
  result = qword_1EE2F8870;
  if (!qword_1EE2F8870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SampleContentItem.caption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SampleContentItem(0) + 20);
  v4 = sub_1E5853EB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SampleContentItem.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SampleContentItem(0) + 24));

  return v1;
}

uint64_t SampleContentItem.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SampleContentItem(0) + 32);
  v4 = sub_1E5853EB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SampleContentItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SampleContentItem(0) + 36);
  v4 = sub_1E5853EB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E58505B8()
{
  v1 = *v0;
  v2 = 0x6B726F77747261;
  v3 = 0x616C696176417369;
  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F6974706163;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_1E585067C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5851B28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58506B0(uint64_t a1)
{
  v2 = sub_1E58509F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58506EC(uint64_t a1)
{
  v2 = sub_1E58509F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6140, &qword_1E58572C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58509F8();
  sub_1E58548E0();
  v14 = 0;
  type metadata accessor for SampleContentArtwork(0);
  sub_1E58517C0(&qword_1EE2F8688, type metadata accessor for SampleContentArtwork, &protocol conformance descriptor for SampleContentArtwork);
  sub_1E5854820();
  if (!v1)
  {
    type metadata accessor for SampleContentItem(0);
    v13 = 1;
    sub_1E5853EB0();
    sub_1E58517C0(&qword_1EE2F8AB8, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
    sub_1E5854820();
    v12 = 2;
    sub_1E5854800();
    v11 = 3;
    sub_1E5854810();
    v10 = 4;
    sub_1E5854820();
    v9 = 5;
    sub_1E5854820();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E58509F8()
{
  result = qword_1EE2F8898;
  if (!qword_1EE2F8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8898);
  }

  return result;
}

uint64_t SampleContentItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v42 = sub_1E5853EB0();
  v39 = *(v42 - 8);
  v3 = MEMORY[0x1EEE9AC00](v42);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = type metadata accessor for SampleContentArtwork(0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6148, &qword_1E58572C8);
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v34 - v11;
  v13 = type metadata accessor for SampleContentItem(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58509F8();
  v43 = v12;
  v16 = v45;
  sub_1E58548D0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v40;
  v35 = v15;
  v18 = v42;
  v51 = 0;
  sub_1E58517C0(&qword_1ECFF6150, type metadata accessor for SampleContentArtwork, &protocol conformance descriptor for SampleContentArtwork);
  v19 = v41;
  sub_1E58547C0();
  v20 = v35;
  sub_1E584E210(v19, v35);
  v50 = 1;
  v21 = v8;
  v22 = v18;
  v23 = sub_1E58517C0(&qword_1ECFF5E20, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  sub_1E58547C0();
  v45 = v23;
  v24 = *(v39 + 32);
  v24(v20 + v13[5], v21, v22);
  v49 = 2;
  v25 = sub_1E58547A0();
  v26 = a1;
  v41 = v24;
  v27 = &v35[v13[6]];
  *v27 = v25;
  v27[1] = v28;
  v48 = 3;
  v29 = v13;
  v35[v13[7]] = sub_1E58547B0() & 1;
  v47 = 4;
  v30 = v38;
  sub_1E58547C0();
  v41(&v35[v29[8]], v30, v22);
  v46 = 5;
  v31 = v37;
  sub_1E58547C0();
  (*(v17 + 8))(v43, v44);
  v32 = v35;
  v41(&v35[v29[9]], v31, v22);
  sub_1E58510A4(v32, v36, type metadata accessor for SampleContentItem);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_1E585110C(v32, type metadata accessor for SampleContentItem);
}

uint64_t sub_1E58510A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E585110C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SampleContentItem.hash(into:)(uint64_t a1)
{
  SampleContentArtwork.hash(into:)(a1);
  type metadata accessor for SampleContentItem(0);
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5854600();
  sub_1E5854680();
  sub_1E58548B0();
  sub_1E5854600();
  return sub_1E5854600();
}

uint64_t SampleContentItem.hashValue.getter()
{
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v1);
  type metadata accessor for SampleContentItem(0);
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5854600();
  sub_1E5854680();
  sub_1E58548B0();
  sub_1E5854600();
  sub_1E5854600();
  return sub_1E58548C0();
}

uint64_t sub_1E58513A4(uint64_t a1)
{
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v2);
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5854600();
  sub_1E5854680();
  sub_1E58548B0();
  sub_1E5854600();
  sub_1E5854600();
  return sub_1E58548C0();
}

uint64_t sub_1E58514AC(uint64_t a1, uint64_t a2)
{
  SampleContentArtwork.hash(into:)(a1);
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5854600();
  sub_1E5854680();
  sub_1E58548B0();
  sub_1E5854600();
  return sub_1E5854600();
}

uint64_t sub_1E5851598(uint64_t a1, uint64_t a2)
{
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v3);
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5854600();
  sub_1E5854680();
  sub_1E58548B0();
  sub_1E5854600();
  sub_1E5854600();
  return sub_1E58548C0();
}

uint64_t _s20FitnessSampleContent0bC4ItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static SampleContentArtwork.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SampleContentItem(0);
  if ((sub_1E5853EA0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1E5854840() & 1) == 0 || *(a1 + *(v4 + 28)) != *(a2 + *(v4 + 28)) || (sub_1E5853EA0() & 1) == 0)
  {
    return 0;
  }

  return sub_1E5853EA0();
}

uint64_t sub_1E58517C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5851830(uint64_t a1)
{
  result = type metadata accessor for SampleContentArtwork(319);
  if (v2 <= 0x3F)
  {
    result = sub_1E5853EB0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleContentItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5851A24()
{
  result = qword_1ECFF6168;
  if (!qword_1ECFF6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6168);
  }

  return result;
}

unint64_t sub_1E5851A7C()
{
  result = qword_1EE2F8888;
  if (!qword_1EE2F8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8888);
  }

  return result;
}

unint64_t sub_1E5851AD4()
{
  result = qword_1EE2F8890;
  if (!qword_1EE2F8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8890);
  }

  return result;
}

uint64_t sub_1E5851B28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5854840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62 || (sub_1E5854840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5854840();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t SampleContentEnvironment.init(hide:onItemTapped:onFitnessPlusButtonTapped:onSettingsButtonTapped:resolveSampleContentItems:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t SampleContentEnvironment.hide.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SampleContentEnvironment.onItemTapped.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SampleContentEnvironment.onFitnessPlusButtonTapped.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SampleContentEnvironment.onSettingsButtonTapped.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SampleContentEnvironment.resolveSampleContentItems.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SampleContentWorkoutViewErrorItemContext.hashValue.getter()
{
  v1 = *v0;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  return sub_1E58548C0();
}

unint64_t sub_1E5851ED8()
{
  result = qword_1ECFF6170;
  if (!qword_1ECFF6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6170);
  }

  return result;
}

uint64_t SampleContentSummaryWorkoutsCardViewBuilderRequest.init(item:isInteractive:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
  v6 = *(type metadata accessor for SampleContentSummaryCardItem(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E58553F0;
  result = sub_1E58526F4(a1, v8 + v7, type metadata accessor for SampleContentSummaryCardItem);
  *a3 = v8;
  *(a3 + 8) = a2;
  return result;
}

FitnessSampleContent::SampleContentSummaryWorkoutsCardViewBuilderRequest __swiftcall SampleContentSummaryWorkoutsCardViewBuilderRequest.init(items:isInteractive:)(FitnessSampleContent::SampleContentSummaryWorkoutsCardViewBuilderRequest items, Swift::Bool isInteractive)
{
  *v2 = items.items._rawValue;
  *(v2 + 8) = isInteractive;
  items.isInteractive = isInteractive;
  return items;
}

uint64_t static SampleContentSummaryWorkoutsCardViewBuilderRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1E5844A54(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t SampleContentSummaryWorkoutsCardViewBuilderRequest.hashValue.getter()
{
  v1 = *v0;
  sub_1E5854890();
  sub_1E5852258(v3, v1);
  sub_1E58548B0();
  return sub_1E58548C0();
}

uint64_t sub_1E5852120()
{
  v1 = *v0;
  sub_1E5854890();
  sub_1E5852258(v3, v1);
  sub_1E58548B0();
  return sub_1E58548C0();
}

uint64_t sub_1E58521B8(uint64_t a1)
{
  v2 = *v1;
  sub_1E5854890();
  sub_1E5852258(v4, v2);
  sub_1E58548B0();
  return sub_1E58548C0();
}

uint64_t sub_1E5852214(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1E5844A54(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t sub_1E5852258(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for SampleContentItem(0);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SampleContentSummaryCardItem(0);
  v5 = *(v29 - 8);
  v6 = MEMORY[0x1EEE9AC00](v29);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = *(a2 + 16);
  result = MEMORY[0x1E692EEF0](v11);
  if (v11)
  {
    v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    v27 = v10;
    v28 = v14;
    do
    {
      sub_1E5852690(v13, v10);
      sub_1E5852690(v10, v8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v19 = *v8;
          v20 = *(v8 + 5);
          v25 = *(v8 + 3);
          v26 = v20;
          MEMORY[0x1E692EEF0](2);
          v21 = v19;
          v10 = v27;
          MEMORY[0x1E692EEF0](v21);
          sub_1E5854680();
          sub_1E5854680();
          sub_1E5854680();
        }

        else
        {
          MEMORY[0x1E692EEF0](0);
        }

        v17 = type metadata accessor for SampleContentSummaryCardItem;
        v16 = v10;
      }

      else
      {
        v15 = v23;
        sub_1E58526F4(v8, v23, type metadata accessor for SampleContentItem);
        MEMORY[0x1E692EEF0](1);
        SampleContentArtwork.hash(into:)(a1);
        sub_1E5853EB0();
        sub_1E585275C();
        sub_1E5854600();
        sub_1E5854680();
        sub_1E58548B0();
        sub_1E5854600();
        v10 = v27;
        sub_1E5854600();
        sub_1E58527B4(v10, type metadata accessor for SampleContentSummaryCardItem);
        v16 = v15;
        v17 = type metadata accessor for SampleContentItem;
      }

      result = sub_1E58527B4(v16, v17);
      v13 += v28;
      --v11;
    }

    while (v11);
  }

  return result;
}

unint64_t sub_1E5852590()
{
  result = qword_1ECFF6178;
  if (!qword_1ECFF6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6178);
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

uint64_t sub_1E58525F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1E5852640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5852690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentSummaryCardItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58526F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E585275C()
{
  result = qword_1ECFF6158;
  if (!qword_1ECFF6158)
  {
    sub_1E5853EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6158);
  }

  return result;
}

uint64_t sub_1E58527B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5852814(uint64_t a1)
{
  v2 = sub_1E5853F70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5854630();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2F8AC0;
  (*(v3 + 16))(v5, a1, v2);
  v8 = v7;
  v11[3] = sub_1E5854650();
  v11[4] = v9;
  sub_1E5840074();
  return sub_1E5854360();
}

uint64_t sub_1E58529F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E5853F70();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5854630();
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (*v3)
  {
    sub_1E5854620();
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1E5854730();

    v17 = 0xD000000000000017;
    v18 = 0x80000001E5857BC0;
    MEMORY[0x1E692ECE0](a2, a3);
    MEMORY[0x1E692ECE0](0xD000000000000017, 0x80000001E5857BE0);
    sub_1E5854640();
  }

  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE2F8AC0;
  (*(v8 + 16))(v10, a1, v7);
  v13 = v12;
  v17 = sub_1E5854650();
  v18 = v14;
  sub_1E5840074();
  return sub_1E5854360();
}

uint64_t sub_1E5852C34(uint64_t a1)
{
  v2 = sub_1E5853F70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5854630();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2F8AC0;
  (*(v3 + 16))(v5, a1, v2);
  v8 = v7;
  v11[3] = sub_1E5854650();
  v11[4] = v9;
  sub_1E5840074();
  return sub_1E5854360();
}

uint64_t sub_1E5852E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7669746341736168 && a2 == 0xEC00000064657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5854840();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5852EFC(uint64_t a1)
{
  v2 = sub_1E58530AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5852F38(uint64_t a1)
{
  v2 = sub_1E58530AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentLocalState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6180, &qword_1E58576E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58530AC();
  sub_1E58548E0();
  sub_1E5854810();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E58530AC()
{
  result = qword_1ECFF6188;
  if (!qword_1ECFF6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6188);
  }

  return result;
}

uint64_t SampleContentLocalState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6190, &qword_1E58576E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58530AC();
  sub_1E58548D0();
  if (!v2)
  {
    v9 = sub_1E58547B0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5853270(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6180, &qword_1E58576E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58530AC();
  sub_1E58548E0();
  sub_1E5854810();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for SampleContentLocalState(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1E5853484()
{
  result = qword_1ECFF6198;
  if (!qword_1ECFF6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6198);
  }

  return result;
}

unint64_t sub_1E58534DC()
{
  result = qword_1ECFF61A0;
  if (!qword_1ECFF61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF61A0);
  }

  return result;
}

unint64_t sub_1E5853534()
{
  result = qword_1ECFF61A8;
  if (!qword_1ECFF61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF61A8);
  }

  return result;
}

uint64_t SampleContentSummaryCardItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SampleContentItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SampleContentSummaryCardItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5852690(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v9;
      MEMORY[0x1E692EEF0](2);
      MEMORY[0x1E692EEF0](v11);
      sub_1E5854680();
      sub_1E5854680();
      sub_1E5854680();
    }

    else
    {
      return MEMORY[0x1E692EEF0](0);
    }
  }

  else
  {
    sub_1E584543C(v9, v6);
    MEMORY[0x1E692EEF0](1);
    SampleContentArtwork.hash(into:)(a1);
    sub_1E5853EB0();
    sub_1E5853D5C(&qword_1ECFF6158, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
    sub_1E5854600();
    sub_1E5854680();
    sub_1E58548B0();
    sub_1E5854600();
    sub_1E5854600();
    return sub_1E5853E0C(v6, type metadata accessor for SampleContentItem);
  }
}

uint64_t SampleContentSummaryCardItem.hashValue.getter()
{
  sub_1E5854890();
  SampleContentSummaryCardItem.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t sub_1E5853840()
{
  sub_1E5854890();
  SampleContentSummaryCardItem.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t sub_1E5853884(uint64_t a1)
{
  sub_1E5854890();
  SampleContentSummaryCardItem.hash(into:)(v2);
  return sub_1E58548C0();
}

uint64_t _s20FitnessSampleContent0bC15SummaryCardItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SampleContentSummaryCardItem(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E40, &unk_1E5855EB0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v40 - v15;
  v17 = v40 + *(v14 + 56) - v15;
  sub_1E5852690(a1, v40 - v15);
  sub_1E5852690(a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E5852690(v16, v12);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1E584543C(v17, v6);
      if ((static SampleContentArtwork.== infix(_:_:)(v12, v6) & 1) == 0 || (sub_1E5853EA0() & 1) == 0 || ((v35 = *(v4 + 24), v36 = *&v12[v35], v37 = *&v12[v35 + 8], v38 = &v6[v35], v36 == *v38) ? (v39 = v37 == *(v38 + 1)) : (v39 = 0), !v39 && (sub_1E5854840() & 1) == 0 || v12[*(v4 + 28)] != v6[*(v4 + 28)] || (sub_1E5853EA0() & 1) == 0 || (sub_1E5853EA0() & 1) == 0))
      {
        sub_1E5853E0C(v6, type metadata accessor for SampleContentItem);
        sub_1E5853E0C(v12, type metadata accessor for SampleContentItem);
        sub_1E5853E0C(v16, type metadata accessor for SampleContentSummaryCardItem);
        goto LABEL_11;
      }

      sub_1E5853E0C(v6, type metadata accessor for SampleContentItem);
      sub_1E5853E0C(v12, type metadata accessor for SampleContentItem);
LABEL_8:
      sub_1E5853E0C(v16, type metadata accessor for SampleContentSummaryCardItem);
      v33 = 1;
      return v33 & 1;
    }

    sub_1E5853E0C(v12, type metadata accessor for SampleContentItem);
LABEL_10:
    sub_1E5845374(v16);
LABEL_11:
    v33 = 0;
    return v33 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1E5852690(v16, v10);
  v19 = *(v10 + 2);
  v20 = *(v10 + 4);
  v21 = *(v10 + 6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_10;
  }

  v22 = *(v10 + 5);
  v23 = *(v10 + 3);
  v24 = *(v10 + 1);
  v25 = *v10;
  v26 = *v17;
  v27 = *(v17 + 1);
  v28 = *(v17 + 2);
  v29 = *(v17 + 3);
  v30 = *(v17 + 4);
  v31 = *(v17 + 5);
  v32 = *(v17 + 6);
  LOBYTE(v41[0]) = v25;
  v41[1] = v24;
  v41[2] = v19;
  v41[3] = v23;
  v41[4] = v20;
  v41[5] = v22;
  v41[6] = v21;
  LOBYTE(v40[0]) = v26;
  v40[1] = v27;
  v40[2] = v28;
  v40[3] = v29;
  v40[4] = v30;
  v40[5] = v31;
  v40[6] = v32;
  v33 = _s20FitnessSampleContent0bC20SummaryCardErrorItemV2eeoiySbAC_ACtFZ_0(v41, v40);

  sub_1E5853E0C(v16, type metadata accessor for SampleContentSummaryCardItem);
  return v33 & 1;
}

uint64_t type metadata accessor for SampleContentSummaryCardItem(uint64_t a1)
{
  result = qword_1EE2F89C0;
  if (!qword_1EE2F89C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5853D5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5853DA4(uint64_t a1)
{
  result = type metadata accessor for SampleContentItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5853E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}