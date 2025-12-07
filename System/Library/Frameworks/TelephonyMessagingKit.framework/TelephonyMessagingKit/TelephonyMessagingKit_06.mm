uint64_t sub_1E4B65B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
  }

  v7 = v5[3];
  v17 = v5[2];
  v18 = v7;
  v8 = v5[1];
  v16[0] = *v5;
  v16[1] = v8;
  v9 = v17;
  v10 = __swift_project_boxed_opaque_existential_1(v16 + 1, v17);
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  if (sub_1E4BF097C())
  {
    (*(v11 + 8))(v13, v9);
  }

  else
  {
    swift_allocError();
    (*(v11 + 32))(v15, v13, v9);
  }

  swift_willThrow();
  return sub_1E4B67398(v16);
}

uint64_t sub_1E4B65D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E4B65E64(char a1)
{
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](a1 & 1);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B65EAC(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1E4B65EDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E4BF099C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E4B65F4C(void *a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for CodableResult.FailureCodingKeys(255, v5, v4, v6);
  WitnessTable = swift_getWitnessTable();
  v40 = v7;
  v8 = sub_1E4BF094C();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = v33 - v9;
  v10 = type metadata accessor for CodableResult.SuccessCodingKeys(255, v5, v4, v6);
  v11 = swift_getWitnessTable();
  v35 = v10;
  v33[1] = v11;
  v38 = sub_1E4BF094C();
  v37 = *(v38 - 8);
  v12 = MEMORY[0x1EEE9AC00](v38);
  v34 = v33 - v13;
  v36 = *(v5 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v33[0] = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = v6;
  v45 = v5;
  type metadata accessor for CodableResult.CodingKeys(255, v5, v4, v6);
  swift_getWitnessTable();
  v19 = sub_1E4BF094C();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v33 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BF0ACC();
  (*(v16 + 16))(v18, v46, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v18[1];
    v49[0] = *v18;
    v49[1] = v22;
    v23 = v18[3];
    v49[2] = v18[2];
    v49[3] = v23;
    v50 = 1;
    v24 = v41;
    v25 = v48;
    sub_1E4BF08BC();
    sub_1E4B67344();
    v26 = v43;
    sub_1E4BF093C();
    (*(v42 + 8))(v24, v26);
    sub_1E4B67398(v49);
  }

  else
  {
    v27 = v36;
    v28 = v33[0];
    v29 = v45;
    (*(v36 + 32))(v33[0], v18, v45);
    LOBYTE(v49[0]) = 0;
    v30 = v34;
    v25 = v48;
    sub_1E4BF08BC();
    v31 = v38;
    sub_1E4BF093C();
    (*(v37 + 8))(v30, v31);
    (*(v27 + 8))(v28, v29);
  }

  return (*(v47 + 8))(v21, v25);
}

uint64_t sub_1E4B66498@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v55 = a5;
  v9 = type metadata accessor for CodableResult.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v66 = v9;
  v59 = sub_1E4BF08AC();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v67 = &v53 - v10;
  v11 = type metadata accessor for CodableResult.SuccessCodingKeys(255, a2, a3, a4);
  v62 = swift_getWitnessTable();
  v63 = v11;
  v57 = sub_1E4BF08AC();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v64 = &v53 - v12;
  type metadata accessor for CodableResult.CodingKeys(255, a2, a3, a4);
  v71 = swift_getWitnessTable();
  v13 = sub_1E4BF08AC();
  v14 = *(v13 - 8);
  v69 = v13;
  v70 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - v15;
  v60 = a2;
  v61 = a3;
  v17 = type metadata accessor for CodableResult(0, a2, a3, a4);
  v68 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v53 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v53 - v24;
  v26 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v72;
  sub_1E4BF0ABC();
  if (!v27)
  {
    v71 = v20;
    v72 = v23;
    v54 = v25;
    v28 = v69;
    *&v73 = sub_1E4BF088C();
    sub_1E4BF017C();
    swift_getWitnessTable();
    *&v75 = sub_1E4BF05AC();
    *(&v75 + 1) = v29;
    *&v76 = v30;
    *(&v76 + 1) = v31;
    sub_1E4BF059C();
    swift_getWitnessTable();
    sub_1E4BF035C();
    v32 = v73;
    if (v73 == 2 || (v53 = v75, v73 = v75, v74 = v76, (sub_1E4BF038C() & 1) == 0))
    {
      v40 = sub_1E4BF06EC();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v42 = v17;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v70 + 8))(v16, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        LOBYTE(v73) = 1;
        v33 = v67;
        v34 = v16;
        sub_1E4BF07EC();
        v35 = v70;
        v36 = v68;
        sub_1E4B67760();
        v37 = v71;
        v38 = v33;
        v39 = v59;
        sub_1E4BF087C();
        (*(v58 + 8))(v38, v39);
        (*(v35 + 8))(v34, v28);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v37;
        v49 = v55;
      }

      else
      {
        LOBYTE(v73) = 0;
        v43 = v64;
        v44 = v16;
        sub_1E4BF07EC();
        v45 = v70;
        v36 = v68;
        v46 = v57;
        sub_1E4BF087C();
        (*(v56 + 8))(v43, v46);
        (*(v45 + 8))(v44, v28);
        swift_unknownObjectRelease();
        v50 = v72;
        swift_storeEnumTagMultiPayload();
        v49 = v55;
        v48 = v50;
      }

      v51 = *(v36 + 32);
      v52 = v54;
      v51(v54, v48, v17);
      v51(v49, v52, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_1E4B66C88(uint64_t a1)
{
  sub_1E4BF0A6C();
  sub_1E4B65E3C(v3, *v1);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B66CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B65D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B66D1C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E4B67BD8();
  *a2 = result;
  return result;
}

uint64_t sub_1E4B66D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E4B66DA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E4B66DF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4AE1084();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E4B66E30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E4B66E84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E4B66ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E4B66F2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E4B66FBC()
{
  result = sub_1E4B6769C(v0, v9);
  if (v12)
  {
    v8[2] = v10;
    v8[3] = v11;
    v8[0] = v9[0];
    v8[1] = v9[1];
    v2 = v10;
    v3 = __swift_project_boxed_opaque_existential_1(v8 + 1, v10);
    v4 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](v3);
    v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    if (sub_1E4BF097C())
    {
      (*(v4 + 8))(v6, v2);
    }

    else
    {
      swift_allocError();
      (*(v4 + 32))(v7, v6, v2);
    }

    swift_willThrow();
    return sub_1E4B67398(v8);
  }

  return result;
}

uint64_t sub_1E4B67148(uint64_t a1)
{
  v2 = sub_1E4B6770C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B67184(uint64_t a1)
{
  v2 = sub_1E4B6770C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B671E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF957F0, &qword_1E4C0BEC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B6770C();
  sub_1E4BF0ACC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4B67344()
{
  result = qword_1ECF957E8;
  if (!qword_1ECF957E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF957E8);
  }

  return result;
}

uint64_t sub_1E4B673EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF959D0, &qword_1E4C0C490);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B67F58();
  sub_1E4BF0ACC();
  v8[15] = 0;
  sub_1E4BF08FC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1E4BF08FC();
  v8[13] = 2;
  sub_1E4BF08FC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E4B6758C()
{
  v1 = 0x7470697263736564;
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
    return 0xD000000000000014;
  }
}

uint64_t sub_1E4B675FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B67BE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B67624(uint64_t a1)
{
  v2 = sub_1E4B67F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B67660(uint64_t a1)
{
  v2 = sub_1E4B67F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B6769C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4B6770C()
{
  result = qword_1ECF957F8;
  if (!qword_1ECF957F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF957F8);
  }

  return result;
}

unint64_t sub_1E4B67760()
{
  result = qword_1ECF95800;
  if (!qword_1ECF95800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95800);
  }

  return result;
}

uint64_t sub_1E4B677B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95810, &qword_1E4C0EF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4B6781C()
{
  result = qword_1ECF95818;
  if (!qword_1ECF95818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95818);
  }

  return result;
}

unint64_t sub_1E4B67870()
{
  result = qword_1ECF95820;
  if (!qword_1ECF95820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95820);
  }

  return result;
}

unint64_t sub_1E4B678C4()
{
  result = qword_1ECF95828[0];
  if (!qword_1ECF95828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF95828);
  }

  return result;
}

uint64_t sub_1E4B6798C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E4B679BC()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t sub_1E4B679EC(void *a1)
{
  a1[1] = sub_1E4B6781C();
  a1[2] = sub_1E4B67870();
  result = sub_1E4B678C4();
  a1[3] = result;
  return result;
}

unint64_t sub_1E4B67A28()
{
  result = qword_1ECF959B0;
  if (!qword_1ECF959B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF959B0);
  }

  return result;
}

unint64_t sub_1E4B67A80()
{
  result = qword_1ECF959B8;
  if (!qword_1ECF959B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF959B8);
  }

  return result;
}

double sub_1E4B67AD4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1E4B67D0C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1E4B67BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001E4BF1F10 == a2;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF1F30 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4B67D0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF959C0, &qword_1E4C0C488);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B67F58();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1E4BF083C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1E4BF083C();
  v21 = v12;
  v23 = 2;
  v13 = sub_1E4BF083C();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_1E4B67F58()
{
  result = qword_1ECF959C8;
  if (!qword_1ECF959C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF959C8);
  }

  return result;
}

unint64_t sub_1E4B67FC0()
{
  result = qword_1ECF959D8;
  if (!qword_1ECF959D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF959D8);
  }

  return result;
}

unint64_t sub_1E4B68018()
{
  result = qword_1ECF959E0;
  if (!qword_1ECF959E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF959E0);
  }

  return result;
}

unint64_t sub_1E4B68070()
{
  result = qword_1ECF959E8;
  if (!qword_1ECF959E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF959E8);
  }

  return result;
}

double RCSReceivedNotification.groupContext.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSReceivedNotification(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1E4B440B4(v4, v5, v6, v7);
}

uint64_t type metadata accessor for RCSReceivedNotification(uint64_t a1)
{
  result = qword_1ECF95A28;
  if (!qword_1ECF95A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double RCSReceivedNotification.suggestions.getter()
{
  type metadata accessor for RCSReceivedNotification(0);

  return result;
}

__n128 RCSReceivedNotification.init(message:groupContext:suggestions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E4AE4EA8(a1, a4);
  v7 = type metadata accessor for RCSReceivedNotification(0);
  v8 = (a4 + *(v7 + 20));
  result = *a2;
  v10 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v10;
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t sub_1E4B68234()
{
  v1 = 0x6E6F4370756F7267;
  if (*v0 != 1)
  {
    v1 = 0x6974736567677573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_1E4B682A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B68FFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B682C8(uint64_t a1)
{
  v2 = sub_1E4B685C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B68304(uint64_t a1)
{
  v2 = sub_1E4B685C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSReceivedNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF959F0, &unk_1E4C0C5A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B685C0();
  sub_1E4BF0ACC();
  LOBYTE(v17) = 0;
  type metadata accessor for RCSMessage(0);
  sub_1E4B68D00(&qword_1ECF928D8, type metadata accessor for RCSMessage, &protocol conformance descriptor for RCSMessage);
  sub_1E4BF093C();
  if (!v2)
  {
    v9 = type metadata accessor for RCSReceivedNotification(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v17 = *v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v16 = 1;
    sub_1E4B440B4(v17, v11, v12, v13);
    sub_1E4B68614();
    sub_1E4BF08EC();
    sub_1E4B44588(v17, v18, v19, v20);
    v17 = *(v3 + *(v9 + 24));
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95208, &qword_1E4C07AC0);
    sub_1E4B68AB4(&qword_1ECF95210, &qword_1ECF92AF0, &protocol conformance descriptor for RCSService.Business.Suggestion, MEMORY[0x1E69E6300]);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E4B685C0()
{
  result = qword_1ECF959F8;
  if (!qword_1ECF959F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF959F8);
  }

  return result;
}

unint64_t sub_1E4B68614()
{
  result = qword_1ECF95A00;
  if (!qword_1ECF95A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95A00);
  }

  return result;
}

void RCSReceivedNotification.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for RCSMessage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A08, &qword_1E4C0C5B0);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for RCSReceivedNotification(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E4B685C0();
  sub_1E4BF0ABC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v14 = v20;
    v15 = v12;
    LOBYTE(v23) = 0;
    sub_1E4B68D00(&qword_1ECF928F8, type metadata accessor for RCSMessage, &protocol conformance descriptor for RCSMessage);
    v16 = v21;
    sub_1E4BF087C();
    sub_1E4AE4EA8(v6, v15);
    v25 = 1;
    sub_1E4B68A60();
    sub_1E4BF082C();
    v17 = (v15 + *(v10 + 20));
    v18 = v24;
    *v17 = v23;
    v17[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95208, &qword_1E4C07AC0);
    v25 = 2;
    sub_1E4B68AB4(&qword_1ECF95228, &qword_1ECF92B18, &protocol conformance descriptor for RCSService.Business.Suggestion, MEMORY[0x1E69E6330]);
    sub_1E4BF087C();
    (*(v14 + 8))(v9, v16);
    *(v15 + *(v10 + 24)) = v23;
    sub_1E4B68B50(v15, v19, type metadata accessor for RCSReceivedNotification);
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_1E4B68BB8(v15, type metadata accessor for RCSReceivedNotification);
  }
}

unint64_t sub_1E4B68A60()
{
  result = qword_1ECF95A10;
  if (!qword_1ECF95A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95A10);
  }

  return result;
}

uint64_t sub_1E4B68AB4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95208, &qword_1E4C07AC0);
    sub_1E4B68D00(a2, type metadata accessor for RCSService.Business.Suggestion, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B68B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B68BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4B68C18(uint64_t a1)
{
  result = sub_1E4B68D00(&qword_1ECF94878, type metadata accessor for RCSReceivedNotification, &protocol conformance descriptor for RCSReceivedNotification);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4B68C7C(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B68D00(&qword_1ECF95A18, type metadata accessor for RCSReceivedNotification, &protocol conformance descriptor for RCSReceivedNotification);
  result = sub_1E4B68D00(&qword_1ECF95A20, type metadata accessor for RCSReceivedNotification, &protocol conformance descriptor for RCSReceivedNotification);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4B68D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E4B68DA0(uint64_t a1)
{
  type metadata accessor for RCSMessage(319);
  if (v1 <= 0x3F)
  {
    sub_1E4B68E3C();
    if (v2 <= 0x3F)
    {
      sub_1E4B68E8C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4B68E3C()
{
  if (!qword_1ECF95A38)
  {
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF95A38);
    }
  }
}

void sub_1E4B68E8C(uint64_t a1)
{
  if (!qword_1EE2BD738)
  {
    type metadata accessor for RCSService.Business.Suggestion(255);
    v1 = sub_1E4BF017C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2BD738);
    }
  }
}

unint64_t sub_1E4B68EF8()
{
  result = qword_1ECF95A40;
  if (!qword_1ECF95A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95A40);
  }

  return result;
}

unint64_t sub_1E4B68F50()
{
  result = qword_1ECF95A48;
  if (!qword_1ECF95A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95A48);
  }

  return result;
}

unint64_t sub_1E4B68FA8()
{
  result = qword_1ECF95A50;
  if (!qword_1ECF95A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95A50);
  }

  return result;
}

uint64_t sub_1E4B68FFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F4370756F7267 && a2 == 0xEC00000074786574 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t RCSService.AddGroupChatParticipantsRequest.participants.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

double _s21TelephonyMessagingKit10RCSServiceC31AddGroupChatParticipantsRequestV11groupHandleAA9RCSHandleO0F0Vvg_0@<D0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 _s21TelephonyMessagingKit10RCSServiceC31AddGroupChatParticipantsRequestV11groupHandleAA9RCSHandleO0F0Vvs_0(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *(v1 + 8) = v5;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

__n128 _s21TelephonyMessagingKit10RCSServiceC31AddGroupChatParticipantsRequestV17cellularServiceID11groupHandle12participantsAeA08CellularkL0V_AA9RCSHandleO0F0VSayAL3URIVGtcfC_0@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a2;
  v5 = a2[1].n128_u64[0];
  v6 = a2[1].n128_u64[1];
  *a4 = *a1;
  *(a4 + 8) = result;
  *(a4 + 24) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = a3;
  return result;
}

double RCSService.ChangeGroupChatSubjectRequest.groupHandle.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 RCSService.ChangeGroupChatSubjectRequest.groupHandle.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *(v1 + 8) = v5;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t RCSService.ChangeGroupChatSubjectRequest.newSubject.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RCSService.ChangeGroupChatSubjectRequest.newSubject.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 RCSService.ChangeGroupChatSubjectRequest.init(cellularServiceID:groupHandle:newSubject:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = *a2;
  v6 = a2[1].n128_u64[0];
  v7 = a2[1].n128_u64[1];
  *a5 = *a1;
  *(a5 + 8) = result;
  *(a5 + 24) = v6;
  *(a5 + 32) = v7;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

double RCSService.LeaveGroupChatRequest.groupHandle.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 RCSService.LeaveGroupChatRequest.groupHandle.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *(v1 + 8) = v5;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

__n128 RCSService.LeaveGroupChatRequest.init(cellularServiceID:groupHandle:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a2;
  v4 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u64[1];
  *a3 = *a1;
  *(a3 + 8) = result;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  return result;
}

double RCSService.CreateGroupChatRequest.Result.groupHandle.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

uint64_t RCSService.CreateGroupChatRequest.Result.subject.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RCSService.CreateGroupChatRequest.participants.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t RCSService.CreateGroupChatRequest.subject.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RCSService.CreateGroupChatRequest.subject.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

_BYTE *RCSService.CreateGroupChatRequest.init(cellularServiceID:participants:subject:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_1E4B69748(uint64_t a1)
{
  v2 = sub_1E4B6C4EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B69784(uint64_t a1)
{
  v2 = sub_1E4B6C4EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B69864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465646461 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B698E8(uint64_t a1)
{
  v2 = sub_1E4B699A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B69924(uint64_t a1)
{
  v2 = sub_1E4B699A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4B699A4()
{
  result = qword_1ECF95A60;
  if (!qword_1ECF95A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95A60);
  }

  return result;
}

uint64_t sub_1E4B69A3C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95A68, &qword_1E4C0C798);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B69AE4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v23 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *v5;
  v12 = *(v5 + 2);
  v20 = *(v5 + 1);
  v21 = v12;
  v13 = *(v5 + 3);
  v22 = *(v5 + 4);
  v18 = *(v5 + 5);
  v19 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23();
  sub_1E4BF0ACC();
  LOBYTE(v25) = v11;
  v29 = 0;
  sub_1E4ADBE98();
  v14 = v24;
  sub_1E4BF093C();
  if (!v14)
  {
    v25 = v20;
    v26 = v21;
    v15 = v18;
    v27 = v19;
    v28 = v22;
    v29 = 1;
    sub_1E4AE8804();

    sub_1E4BF093C();

    v25 = v15;
    v29 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
    sub_1E4B69A3C(&qword_1ECF95A70, sub_1E4AE2E40, MEMORY[0x1E69E6300]);
    sub_1E4BF093C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E4B69D68@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v24 = a6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1E4BF0ABC();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v9;
  v13 = v24;
  v30 = 0;
  sub_1E4ADBF38();
  v14 = v25;
  sub_1E4BF087C();
  v15 = v26;
  v30 = 1;
  sub_1E4AE88AC();
  sub_1E4BF087C();
  v22 = v26;
  v23 = v27;
  v16 = v29;
  v21 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
  v30 = 2;
  sub_1E4B69A3C(&qword_1ECF95A80, sub_1E4AE3140, MEMORY[0x1E69E6330]);
  sub_1E4BF087C();
  (*(v12 + 8))(v11, v14);
  v17 = v26;
  *v13 = v15;
  v18 = v23;
  *(v13 + 8) = v22;
  *(v13 + 16) = v18;
  *(v13 + 24) = v21;
  *(v13 + 32) = v16;
  *(v13 + 40) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B6A03C(uint64_t a1)
{
  v2 = sub_1E4B6C540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B6A078(uint64_t a1)
{
  v2 = sub_1E4B6C540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B6A154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B6A1DC(uint64_t a1)
{
  v2 = sub_1E4B6A440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B6A218(uint64_t a1)
{
  v2 = sub_1E4B6A440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B6A298(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v13[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  v11 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v13[0])();

  sub_1E4BF0ACC();
  v13[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
  sub_1E4B69A3C(&qword_1ECF95A70, sub_1E4AE2E40, MEMORY[0x1E69E6300]);
  sub_1E4BF093C();

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1E4B6A440()
{
  result = qword_1ECF95A90;
  if (!qword_1ECF95A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95A90);
  }

  return result;
}

uint64_t sub_1E4B6A4D8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v14 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1E4BF0ABC();
  if (!v6)
  {
    v12 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
    sub_1E4B69A3C(&qword_1ECF95A80, sub_1E4AE3140, MEMORY[0x1E69E6330]);
    sub_1E4BF087C();
    (*(v15 + 8))(v11, v9);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B6A6C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95B30, &qword_1E4C0D0A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 4);
  v15 = *(v1 + 3);
  v16 = v8;
  v17 = v10;
  v11 = *(v1 + 5);
  v14[0] = *(v1 + 6);
  v14[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B6C594();
  sub_1E4BF0ACC();
  LOBYTE(v19) = v7;
  v23 = 0;
  sub_1E4ADBE98();
  v12 = v18;
  sub_1E4BF093C();
  if (!v12)
  {
    v19 = v16;
    v20 = v9;
    v21 = v15;
    v22 = v17;
    v23 = 1;
    sub_1E4AE8804();

    sub_1E4BF093C();

    LOBYTE(v19) = 2;
    sub_1E4BF08FC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E4B6A8D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95B40, &qword_1E4C0D0A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B6C594();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v21;
  v25 = 1;
  sub_1E4AE88AC();
  sub_1E4BF087C();
  v17 = v23;
  v18 = v21;
  v19 = v24;
  v20 = v22;
  LOBYTE(v21) = 2;
  v10 = sub_1E4BF083C();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  v13 = v17;
  v15 = v19;
  v14 = v20;
  *(a2 + 8) = v18;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B6AB5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95B48, &qword_1E4C0D0B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 4);
  v13 = *(v1 + 3);
  v14 = v8;
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B6C5E8();
  sub_1E4BF0ACC();
  LOBYTE(v17) = v7;
  v21 = 0;
  sub_1E4ADBE98();
  v11 = v16;
  sub_1E4BF093C();
  if (!v11)
  {
    v17 = v14;
    v18 = v9;
    v19 = v13;
    v20 = v15;
    v21 = 1;
    sub_1E4AE8804();

    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E4B6AD34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95B58, &qword_1E4C0D0B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B6C5E8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v17 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v9 = v14;
    v17 = 1;
    sub_1E4AE88AC();
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    v12 = v15;
    v13 = v16;
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B6AF14(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95B60, &qword_1E4C0D0C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[1] = *(v1 + 2);
  v12 = v9;
  v11[0] = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B6C63C();
  sub_1E4BF0ACC();
  v17 = v8;
  v16 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v13 = v12;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
    sub_1E4B69A3C(&qword_1ECF95A70, sub_1E4AE2E40, MEMORY[0x1E69E6300]);
    sub_1E4BF093C();
    v14 = 2;
    sub_1E4BF08FC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E4B6B130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95B70, &qword_1E4C0D0C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B6C63C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
  v18 = 1;
  sub_1E4B69A3C(&qword_1ECF95A80, sub_1E4AE3140, MEMORY[0x1E69E6330]);
  sub_1E4BF087C();
  v16 = v9;
  v10 = v15[1];
  v17 = 2;
  v11 = sub_1E4BF083C();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  *a2 = v16;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B6B3D0()
{
  v1 = 0x6E614870756F7267;
  if (*v0 != 1)
  {
    v1 = 0x656A62755377656ELL;
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

uint64_t sub_1E4B6B43C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B6C7BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B6B464(uint64_t a1)
{
  v2 = sub_1E4B6C594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B6B4A0(uint64_t a1)
{
  v2 = sub_1E4B6C594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B6B50C()
{
  if (*v0)
  {
    return 0x6E614870756F7267;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4B6B554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E614870756F7267 && a2 == 0xEB00000000656C64)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E4BF099C();

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

uint64_t sub_1E4B6B640(uint64_t a1)
{
  v2 = sub_1E4B6C5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B6B67C(uint64_t a1)
{
  v2 = sub_1E4B6C5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B6B6E8()
{
  v1 = 0x7069636974726170;
  if (*v0 != 1)
  {
    v1 = 0x7463656A627573;
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

uint64_t sub_1E4B6B750@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B6C8EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B6B778(uint64_t a1)
{
  v2 = sub_1E4B6C63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B6B7B4(uint64_t a1)
{
  v2 = sub_1E4B6C63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 RCSService.CreateGroupChatRequest.Result.CodableRepresentation.init(groupHandle:participants:subject:isEndToEndEncrypted:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  result = *a1;
  v6 = a1[1].n128_u64[0];
  v7 = a1[1].n128_u64[1];
  *a5 = *a1;
  a5[1].n128_u64[0] = v6;
  a5[1].n128_u64[1] = v7;
  a5[2].n128_u64[0] = a2;
  a5[2].n128_u64[1] = a3;
  a5[3].n128_u64[0] = a4;
  return result;
}

uint64_t sub_1E4B6B83C()
{
  v1 = 0x7069636974726170;
  if (*v0 != 1)
  {
    v1 = 0x7463656A627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E614870756F7267;
  }
}

uint64_t sub_1E4B6B8A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B6CA14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B6B8D0(uint64_t a1)
{
  v2 = sub_1E4B6BBBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B6B90C(uint64_t a1)
{
  v2 = sub_1E4B6BBBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.CreateGroupChatRequest.Result.CodableRepresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95AA0, &qword_1E4C0C7B8);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v15 = v1[4];
  v16 = v8;
  v14[0] = v1[6];
  v14[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B6BBBC();

  sub_1E4BF0ACC();
  v19 = v6;
  v20 = v7;
  v21 = v16;
  v22 = v9;
  v23 = 0;
  sub_1E4AE8804();
  v11 = v17;
  sub_1E4BF093C();

  if (v11)
  {
    return (*(v18 + 8))(v5, v3);
  }

  v13 = v18;
  v19 = v15;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
  sub_1E4B69A3C(&qword_1ECF95A70, sub_1E4AE2E40, MEMORY[0x1E69E6300]);
  sub_1E4BF093C();
  LOBYTE(v19) = 2;
  sub_1E4BF08CC();
  return (*(v13 + 8))(v5, v3);
}

unint64_t sub_1E4B6BBBC()
{
  result = qword_1ECF95AA8;
  if (!qword_1ECF95AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AA8);
  }

  return result;
}

uint64_t RCSService.CreateGroupChatRequest.Result.CodableRepresentation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95AB0, &qword_1E4C0C7C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B6BBBC();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  sub_1E4AE88AC();
  sub_1E4BF087C();
  v9 = v25;
  v24 = v26;
  v10 = v27;
  v22 = a2;
  v23 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
  v29 = 1;
  sub_1E4B69A3C(&qword_1ECF95A80, sub_1E4AE3140, MEMORY[0x1E69E6330]);
  sub_1E4BF087C();
  v21 = v10;
  v11 = v25;
  LOBYTE(v25) = 2;
  v12 = sub_1E4BF080C();
  v14 = v13;
  v15 = v12;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  v16 = v22;
  v19 = v23;
  v18 = v24;
  *v22 = v9;
  v16[1] = v18;
  v16[2] = v17;
  v16[3] = v19;
  v16[4] = v11;
  v16[5] = v15;
  v16[6] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B6C01C(uint64_t *a1, int a2)
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

uint64_t sub_1E4B6C064(uint64_t result, int a2, int a3)
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

uint64_t sub_1E4B6C130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E4B6C178(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1E4B6C1D8()
{
  result = qword_1ECF95AB8;
  if (!qword_1ECF95AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AB8);
  }

  return result;
}

unint64_t sub_1E4B6C230()
{
  result = qword_1ECF95AC0;
  if (!qword_1ECF95AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AC0);
  }

  return result;
}

unint64_t sub_1E4B6C288()
{
  result = qword_1ECF95AC8;
  if (!qword_1ECF95AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AC8);
  }

  return result;
}

unint64_t sub_1E4B6C2E0()
{
  result = qword_1ECF95AD0;
  if (!qword_1ECF95AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AD0);
  }

  return result;
}

unint64_t sub_1E4B6C338()
{
  result = qword_1ECF95AD8;
  if (!qword_1ECF95AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AD8);
  }

  return result;
}

unint64_t sub_1E4B6C390()
{
  result = qword_1ECF95AE0;
  if (!qword_1ECF95AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AE0);
  }

  return result;
}

unint64_t sub_1E4B6C3E8()
{
  result = qword_1ECF95AE8;
  if (!qword_1ECF95AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AE8);
  }

  return result;
}

unint64_t sub_1E4B6C440()
{
  result = qword_1ECF95AF0;
  if (!qword_1ECF95AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AF0);
  }

  return result;
}

unint64_t sub_1E4B6C498()
{
  result = qword_1ECF95AF8;
  if (!qword_1ECF95AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95AF8);
  }

  return result;
}

unint64_t sub_1E4B6C4EC()
{
  result = qword_1ECF95B08;
  if (!qword_1ECF95B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B08);
  }

  return result;
}

unint64_t sub_1E4B6C540()
{
  result = qword_1ECF95B20;
  if (!qword_1ECF95B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B20);
  }

  return result;
}

unint64_t sub_1E4B6C594()
{
  result = qword_1ECF95B38;
  if (!qword_1ECF95B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B38);
  }

  return result;
}

unint64_t sub_1E4B6C5E8()
{
  result = qword_1ECF95B50;
  if (!qword_1ECF95B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B50);
  }

  return result;
}

unint64_t sub_1E4B6C63C()
{
  result = qword_1ECF95B68;
  if (!qword_1ECF95B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B68);
  }

  return result;
}

uint64_t sub_1E4B6C690(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E614870756F7267 && a2 == 0xEB00000000656C64 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

uint64_t sub_1E4B6C7BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E614870756F7267 && a2 == 0xEB00000000656C64 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656A62755377656ELL && a2 == 0xEA00000000007463)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

uint64_t sub_1E4B6C8EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

uint64_t sub_1E4B6CA14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E614870756F7267 && a2 == 0xEB00000000656C64;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

unint64_t sub_1E4B6CB88()
{
  result = qword_1ECF95B78;
  if (!qword_1ECF95B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B78);
  }

  return result;
}

unint64_t sub_1E4B6CBE0()
{
  result = qword_1ECF95B80;
  if (!qword_1ECF95B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B80);
  }

  return result;
}

unint64_t sub_1E4B6CC38()
{
  result = qword_1ECF95B88;
  if (!qword_1ECF95B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B88);
  }

  return result;
}

unint64_t sub_1E4B6CC90()
{
  result = qword_1ECF95B90;
  if (!qword_1ECF95B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B90);
  }

  return result;
}

unint64_t sub_1E4B6CCE8()
{
  result = qword_1ECF95B98;
  if (!qword_1ECF95B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95B98);
  }

  return result;
}

unint64_t sub_1E4B6CD40()
{
  result = qword_1ECF95BA0;
  if (!qword_1ECF95BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BA0);
  }

  return result;
}

unint64_t sub_1E4B6CD98()
{
  result = qword_1ECF95BA8;
  if (!qword_1ECF95BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BA8);
  }

  return result;
}

unint64_t sub_1E4B6CDF0()
{
  result = qword_1ECF95BB0;
  if (!qword_1ECF95BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BB0);
  }

  return result;
}

unint64_t sub_1E4B6CE48()
{
  result = qword_1ECF95BB8;
  if (!qword_1ECF95BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BB8);
  }

  return result;
}

unint64_t sub_1E4B6CEA0()
{
  result = qword_1ECF95BC0;
  if (!qword_1ECF95BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BC0);
  }

  return result;
}

unint64_t sub_1E4B6CEF8()
{
  result = qword_1ECF95BC8;
  if (!qword_1ECF95BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BC8);
  }

  return result;
}

unint64_t sub_1E4B6CF50()
{
  result = qword_1ECF95BD0;
  if (!qword_1ECF95BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BD0);
  }

  return result;
}

unint64_t sub_1E4B6CFA8()
{
  result = qword_1ECF95BD8;
  if (!qword_1ECF95BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BD8);
  }

  return result;
}

unint64_t sub_1E4B6D000()
{
  result = qword_1ECF95BE0;
  if (!qword_1ECF95BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BE0);
  }

  return result;
}

unint64_t sub_1E4B6D058()
{
  result = qword_1ECF95BE8;
  if (!qword_1ECF95BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95BE8);
  }

  return result;
}

void sub_1E4B6D1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *v5;
  v8 = v5[4];
  v9[2] = a3;
  v9[3] = a4;
  v9[5] = a1;
  v9[6] = a2;
  type metadata accessor for XPCServer.State(0, v7[10], v7[11], v7[12]);
  sub_1E4B86564(a5, v9, v8);
}

uint64_t sub_1E4B6D274()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1EE2BD868);
  v1 = __swift_project_value_buffer(v0, qword_1EE2BD868);
  if (qword_1EE2BD750 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4B6D33C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a5;
  v56 = a4;
  v58 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v51 = type metadata accessor for CodableResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v47);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v46 - v12;
  v54 = type metadata accessor for XPCPeerMessage(0, a8, a9, v13);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v46 - v14;
  v15 = sub_1E4BF053C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  v20 = *(a8 - 8);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v46 - v24;
  sub_1E4B14334(a2, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF95BF8, &unk_1E4C0EF10);
  v25 = swift_dynamicCast();
  v26 = *(v20 + 56);
  if (v25)
  {
    v46 = AssociatedTypeWitness;
    v26(v19, 0, 1, a8);
    (*(v20 + 32))(v65, v19, a8);
    v27 = v58;
    v28 = sub_1E4BEFCFC();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    type metadata accessor for audit_token_t(0);
    v63[3] = v35;
    v63[4] = &off_1F5EB1D50;
    v36 = swift_allocObject();
    v63[0] = v36;
    v36[2] = v28;
    v36[3] = v30;
    v36[4] = v32;
    v36[5] = v34;
    v37 = sub_1E4BEFD3C();
    v61 = v37;
    v62 = &off_1F5EB8920;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
    (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v27, v37);
    sub_1E4B14334(v63, v59);
    (*(v20 + 16))(v23, v65, a8);
    v39 = v52;
    sub_1E4BA9114(&v60, v59, v23, a8, a9, v52);
    v40 = v57;
    v56(v39);
    (*(v53 + 8))(v39, v54);
    if (v40)
    {
      __swift_destroy_boxed_opaque_existential_1(v63);
      v41 = v40;
      v42 = v48;
      sub_1E4B65734(v40, v46, AssociatedConformanceWitness, v47, v48);
      v43 = v51;
      swift_getWitnessTable();
      sub_1E4BEFD1C();

      (*(v50 + 8))(v42, v43);
      return (*(v20 + 8))(v65, a8);
    }

    else
    {
      (*(v20 + 8))(v65, a8);
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }
  }

  else
  {
    v26(v19, 1, 1, a8);
    (*(v16 + 8))(v19, v15);
    sub_1E4B14264();
    swift_allocError();
    *v45 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1E4B6D970(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a8;
  v26 = a1;
  v24 = a10;
  v22 = a3;
  v23 = a9;
  v13 = a2 + 5;
  v14 = *a2;
  v15 = *(*a2 + 80);
  MEMORY[0x1EEE9AC00](a1);
  (*(v16 + 64))(v17, v16);
  sub_1E4B14334(v13, v27);
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = *(v14 + 88);
  v18[4] = a5;
  v18[5] = a6;
  sub_1E4ADB544(v27, (v18 + 6));
  v18[11] = v22;
  v18[12] = a4;
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v23;
  *(v19 + 24) = v18;
  v28 = v20;
  v29 = v19;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95BF0, &unk_1E4C0EF00);
  swift_getAssociatedConformanceWitness();
  sub_1E4BEFDAC();
  return sub_1E4BEFDCC();
}

uint64_t sub_1E4B6DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v76 = a7;
  v75 = a6;
  v79 = a5;
  v77 = a4;
  v81 = a1;
  v78 = sub_1E4BEFD3C();
  v70 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v72 = v11;
  v73 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v82 = &v65 - v13;
  v74 = a9;
  v89 = type metadata accessor for XPCPeerMessage(0, a8, a9, v14);
  v71 = *(v89 - 8);
  v15 = MEMORY[0x1EEE9AC00](v89);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v65 - v17;
  v18 = sub_1E4BF053C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v65 - v21;
  v23 = *(a8 - 8);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v65 - v27;
  sub_1E4B14334(a2, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF95BF8, &unk_1E4C0EF10);
  v29 = swift_dynamicCast();
  v30 = *(v23 + 56);
  if (v29)
  {
    v30(v22, 0, 1, a8);
    v65 = v23;
    v31 = *(v23 + 32);
    v67 = v28;
    v31(v28, v22, a8);
    v32 = v81;
    v33 = sub_1E4BEFCFC();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    type metadata accessor for audit_token_t(0);
    v87[3] = v40;
    v87[4] = &off_1F5EB1D50;
    v41 = swift_allocObject();
    v87[0] = v41;
    v41[2] = v33;
    v41[3] = v35;
    v41[4] = v37;
    v41[5] = v39;
    v42 = v78;
    v85 = v78;
    v86 = &off_1F5EB8920;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v84);
    v44 = v70;
    v45 = *(v70 + 16);
    v46 = v32;
    v47 = a8;
    v66 = a8;
    v48 = v42;
    v45(boxed_opaque_existential_1, v46, v42);
    sub_1E4B14334(v87, v83);
    (*(v23 + 16))(v26, v67, v47);
    v49 = v80;
    v50 = v26;
    v51 = v74;
    sub_1E4BA9114(&v84, v83, v50, v47, v74, v80);
    v52 = sub_1E4BF01FC();
    (*(*(v52 - 8) + 56))(v82, 1, 1, v52);
    v53 = v71;
    v54 = v69;
    (*(v71 + 16))(v69, v49, v89);
    v55 = v73;
    v45(v73, v81, v48);
    v56 = (*(v53 + 80) + 80) & ~*(v53 + 80);
    v57 = (v68 + *(v44 + 80) + v56) & ~*(v44 + 80);
    v58 = swift_allocObject();
    *(v58 + 2) = 0;
    *(v58 + 3) = 0;
    v59 = v76;
    *(v58 + 4) = v75;
    *(v58 + 5) = v59;
    *(v58 + 6) = v66;
    *(v58 + 7) = v51;
    v60 = v79;
    *(v58 + 8) = v77;
    *(v58 + 9) = v60;
    v61 = &v58[v56];
    v62 = v89;
    (*(v53 + 32))(v61, v54, v89);
    (*(v44 + 32))(&v58[v57], v55, v48);

    sub_1E4BA8E24(0, 0, v82, &unk_1E4C0D7B8, v58);

    (*(v53 + 8))(v80, v62);
    (*(v65 + 8))(v67, v66);
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  else
  {
    v30(v22, 1, 1, a8);
    (*(v19 + 8))(v22, v18);
    sub_1E4B14264();
    swift_allocError();
    *v64 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1E4B6E238(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7[4] = AssociatedConformanceWitness;
  v12 = swift_getAssociatedConformanceWitness();
  v7[5] = v12;
  v13 = type metadata accessor for CodableResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v7[6] = v13;
  v7[7] = *(v13 - 8);
  v7[8] = swift_task_alloc();
  v16 = (a4 + *a4);
  v14 = swift_task_alloc();
  v7[9] = v14;
  *v14 = v7;
  v14[1] = sub_1E4B6E42C;

  return v16(a6);
}

uint64_t sub_1E4B6E42C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4B6E568, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4B6E568()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v1;
  sub_1E4B65734(v1, v7, v6, v5, v2);
  swift_getWitnessTable();
  sub_1E4BEFD1C();

  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E4B6E660(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a5;
  v48 = a4;
  v45 = a1;
  v46 = a9;
  v57 = type metadata accessor for XPCPeerMessage(0, a8, a9, a4);
  v50 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v44 - v11;
  v13 = sub_1E4BF053C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = *(a8 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v44 - v22;
  sub_1E4B14334(a2, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF95BF8, &unk_1E4C0EF10);
  v24 = swift_dynamicCast();
  v25 = *(v18 + 56);
  if (v24)
  {
    v25(v17, 0, 1, a8);
    (*(v18 + 32))(v23, v17, a8);
    v44 = v12;
    v26 = v45;
    v27 = sub_1E4BEFCFC();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    type metadata accessor for audit_token_t(0);
    v55[3] = v34;
    v55[4] = &off_1F5EB1D50;
    v35 = swift_allocObject();
    v55[0] = v35;
    v35[2] = v27;
    v35[3] = v29;
    v35[4] = v31;
    v35[5] = v33;
    v36 = sub_1E4BEFD3C();
    v53 = v36;
    v54 = &off_1F5EB8920;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v38 = v26;
    v39 = v44;
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v38, v36);
    sub_1E4B14334(v55, v51);
    (*(v18 + 16))(v21, v23, a8);
    sub_1E4BA9114(&v52, v51, v21, a8, v46, v39);
    v40 = v49;
    v48(v39);
    v41 = v57;
    if (v40)
    {
      XPCPeerMessage.reply(throwing:)(v40, v57);
    }

    (*(v50 + 8))(v39, v41);
    (*(v18 + 8))(v23, a8);
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    v25(v17, 1, 1, a8);
    (*(v14 + 8))(v17, v13);
    sub_1E4B14264();
    swift_allocError();
    *v42 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1E4B6EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a7;
  v63 = a6;
  v67 = a5;
  v65 = a4;
  v58 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = &v56 - v12;
  v60 = a9;
  v66 = type metadata accessor for XPCPeerMessage(0, a8, a9, v13);
  v61 = *(v66 - 8);
  v14 = *(v61 + 64);
  v15 = MEMORY[0x1EEE9AC00](v66);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v56 - v16;
  v17 = sub_1E4BF053C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - v20;
  v22 = *(a8 - 8);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - v26;
  sub_1E4B14334(a2, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF95BF8, &unk_1E4C0EF10);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v21, 0, 1, a8);
    v56 = v22;
    v30 = *(v22 + 32);
    v57 = v27;
    v30(v27, v21, a8);
    v31 = v58;
    v32 = sub_1E4BEFCFC();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    type metadata accessor for audit_token_t(0);
    v72[3] = v39;
    v72[4] = &off_1F5EB1D50;
    v40 = swift_allocObject();
    v72[0] = v40;
    v40[2] = v32;
    v40[3] = v34;
    v40[4] = v36;
    v40[5] = v38;
    v41 = sub_1E4BEFD3C();
    v70 = v41;
    v71 = &off_1F5EB8920;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_1, v31, v41);
    sub_1E4B14334(v72, v68);
    (*(v22 + 16))(v25, v57, a8);
    v43 = v74;
    v44 = v60;
    sub_1E4BA9114(&v69, v68, v25, a8, v60, v74);
    v45 = sub_1E4BF01FC();
    v46 = v62;
    (*(*(v45 - 8) + 56))(v62, 1, 1, v45);
    v47 = v61;
    v48 = v59;
    v49 = v66;
    (*(v61 + 16))(v59, v43, v66);
    v50 = (*(v47 + 80) + 80) & ~*(v47 + 80);
    v51 = swift_allocObject();
    *(v51 + 2) = 0;
    *(v51 + 3) = 0;
    v52 = v64;
    *(v51 + 4) = v63;
    *(v51 + 5) = v52;
    *(v51 + 6) = a8;
    *(v51 + 7) = v44;
    v53 = v67;
    *(v51 + 8) = v65;
    *(v51 + 9) = v53;
    (*(v47 + 32))(&v51[v50], v48, v49);

    sub_1E4BA8E24(0, 0, v46, &unk_1E4C0D7A8, v51);

    (*(v47 + 8))(v74, v49);
    (*(v56 + 8))(v57, a8);
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  else
  {
    v29(v21, 1, 1, a8);
    (*(v18 + 8))(v21, v17);
    sub_1E4B14264();
    swift_allocError();
    *v55 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1E4B6F0D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = v12;
  v6[4] = v13;
  v6[2] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_1E4B6F1D8;

  return v10(a6);
}

uint64_t sub_1E4B6F1D8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4B6F30C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E4B6F30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[6];
  v6 = type metadata accessor for XPCPeerMessage(0, v4[3], v4[4], a4);
  XPCPeerMessage.reply(throwing:)(v5, v6);

  v7 = v4[1];

  return v7();
}

uint64_t sub_1E4B6F38C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  return v0;
}

uint64_t sub_1E4B6F3C4()
{
  sub_1E4B6F38C();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1E4B6F410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E4B6F458(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E4B6F4A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E4B6F534(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a4)
  {
    v6 = sub_1E4BEFCCC();
    sub_1E4B6FE60();
    v7 = swift_allocError();
    (*(*(v6 - 8) + 16))(v8, a1, v6);
    a4(v7);
  }
}

uint64_t sub_1E4B6F600(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CodableResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = a1;
  sub_1E4B65734(a1, AssociatedTypeWitness, AssociatedConformanceWitness, v6, v10);
  swift_getWitnessTable();
  sub_1E4BEFD1C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E4B6F828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for XPCPeerMessage(0, v4[6], v4[7], a4) - 8);
  v9 = (*(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[8];
  v12 = v4[9];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1E4B34F84;

  return sub_1E4B6F0D0(a1, v10, v11, v13, v12, v4 + v9);
}

uint64_t sub_1E4B6F9D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4BEFD0C();
  if (result)
  {

    return sub_1E4B6F600(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1E4B6FAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for XPCPeerMessage(0, v4[6], v4[7], a4) - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1E4BEFD3C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[8];
  v15 = v4[9];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_1E4B33678;

  return sub_1E4B6E238(a1, v12, v13, v14, v15, v4 + v8, v4 + v11);
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1E4B6FD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E4B6FDC0(uint64_t *a1, int a2)
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

uint64_t sub_1E4B6FE08(uint64_t result, int a2, int a3)
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

unint64_t sub_1E4B6FE60()
{
  result = qword_1ECF95C80;
  if (!qword_1ECF95C80)
  {
    sub_1E4BEFCCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95C80);
  }

  return result;
}

uint64_t sub_1E4B6FEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B6FFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B7002C(uint64_t a1)
{
  v2 = sub_1E4B7021C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B70068(uint64_t a1)
{
  v2 = sub_1E4B7021C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SMSReportSpamRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95C88, &qword_1E4C0D880);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B7021C();
  sub_1E4BF0ACC();
  type metadata accessor for SMSMessage(0);
  sub_1E4B70680(&qword_1ECF95C98, type metadata accessor for SMSMessage, &protocol conformance descriptor for SMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4B7021C()
{
  result = qword_1ECF95C90;
  if (!qword_1ECF95C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95C90);
  }

  return result;
}

uint64_t SMSReportSpamRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for SMSMessage(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95CA0, &qword_1E4C0D888);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SMSReportSpamRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B7021C();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v12 = v15;
    sub_1E4B70680(&qword_1ECF95CA8, type metadata accessor for SMSMessage, &protocol conformance descriptor for SMSMessage);
    v13 = v17;
    sub_1E4BF087C();
    (*(v16 + 8))(v8, v6);
    sub_1E4B70530(v13, v11, type metadata accessor for SMSMessage);
    sub_1E4B70530(v11, v12, type metadata accessor for SMSReportSpamRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SMSReportSpamRequest(uint64_t a1)
{
  result = qword_1EE2BDBA8;
  if (!qword_1EE2BDBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4B70530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B70598(uint64_t a1)
{
  result = sub_1E4B70680(&qword_1EE2BDBE0, type metadata accessor for SMSReportSpamRequest, &protocol conformance descriptor for SMSReportSpamRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4B705FC(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B70680(&qword_1EE2BDBE8, type metadata accessor for SMSReportSpamRequest, &protocol conformance descriptor for SMSReportSpamRequest);
  result = sub_1E4B70680(qword_1EE2BDBF0, type metadata accessor for SMSReportSpamRequest, &protocol conformance descriptor for SMSReportSpamRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4B70680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4B706E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95C88, &qword_1E4C0D880);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B7021C();
  sub_1E4BF0ACC();
  type metadata accessor for SMSMessage(0);
  sub_1E4B70680(&qword_1ECF95C98, type metadata accessor for SMSMessage, &protocol conformance descriptor for SMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E4B70880(uint64_t a1)
{
  result = type metadata accessor for SMSMessage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4B70900()
{
  result = qword_1ECF95CB0;
  if (!qword_1ECF95CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95CB0);
  }

  return result;
}

unint64_t sub_1E4B70958()
{
  result = qword_1ECF95CB8;
  if (!qword_1ECF95CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95CB8);
  }

  return result;
}

unint64_t sub_1E4B709B0()
{
  result = qword_1ECF95CC0;
  if (!qword_1ECF95CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95CC0);
  }

  return result;
}

uint64_t sub_1E4B70A14(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95D20, &qword_1E4C0DBB0);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95D28, &qword_1E4C0DBB8);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95D30, &qword_1E4C0DBC0);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95D38, &qword_1E4C0DBC8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B71810();
  sub_1E4BF0ACC();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1E4B718B8();
      sub_1E4BF08BC();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1E4B71864();
      v16 = v22;
      sub_1E4BF08BC();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1E4B7190C();
    sub_1E4BF08BC();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1E4B70D94()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1E4B70DE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B71178(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B70E10(uint64_t a1)
{
  v2 = sub_1E4B71810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B70E4C(uint64_t a1)
{
  v2 = sub_1E4B71810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B70E88(uint64_t a1)
{
  v2 = sub_1E4B7190C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B70EC4(uint64_t a1)
{
  v2 = sub_1E4B7190C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B70F00(uint64_t a1)
{
  v2 = sub_1E4B718B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B70F3C(uint64_t a1)
{
  v2 = sub_1E4B718B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B70F78(uint64_t a1)
{
  v2 = sub_1E4B71864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B70FB4(uint64_t a1)
{
  v2 = sub_1E4B71864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4B70FF8(void *a1)
{
  a1[1] = sub_1E4B71030();
  a1[2] = sub_1E4B71084();
  result = sub_1E4B14264();
  a1[3] = result;
  return result;
}

unint64_t sub_1E4B71030()
{
  result = qword_1ECF95CC8;
  if (!qword_1ECF95CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95CC8);
  }

  return result;
}

unint64_t sub_1E4B71084()
{
  result = qword_1ECF95CD0;
  if (!qword_1ECF95CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95CD0);
  }

  return result;
}

unint64_t sub_1E4B710DC()
{
  result = qword_1ECF95CD8;
  if (!qword_1ECF95CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95CD8);
  }

  return result;
}

uint64_t sub_1E4B71130@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E4B712A0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E4B71178(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001E4BF1F90 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E4BF1FB0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF1FD0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

uint64_t sub_1E4B712A0(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95CE0, &qword_1E4C0DB88);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95CE8, &qword_1E4C0DB90);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95CF0, &qword_1E4C0DB98);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95CF8, &unk_1E4C0DBA0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E4B71810();
  v13 = v34;
  sub_1E4BF0ABC();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1E4BF088C();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1E4AE0F1C();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1E4B718B8();
          sub_1E4BF07EC();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1E4B71864();
        v24 = v11;
        sub_1E4BF07EC();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1E4B7190C();
        v24 = v11;
        sub_1E4BF07EC();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1E4BF06EC();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v22 = &type metadata for TMKXPCError;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_1E4B71810()
{
  result = qword_1ECF95D00;
  if (!qword_1ECF95D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D00);
  }

  return result;
}

unint64_t sub_1E4B71864()
{
  result = qword_1ECF95D08;
  if (!qword_1ECF95D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D08);
  }

  return result;
}

unint64_t sub_1E4B718B8()
{
  result = qword_1ECF95D10;
  if (!qword_1ECF95D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D10);
  }

  return result;
}

unint64_t sub_1E4B7190C()
{
  result = qword_1ECF95D18;
  if (!qword_1ECF95D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D18);
  }

  return result;
}

unint64_t sub_1E4B719A4()
{
  result = qword_1ECF95D40;
  if (!qword_1ECF95D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D40);
  }

  return result;
}

unint64_t sub_1E4B719FC()
{
  result = qword_1ECF95D48;
  if (!qword_1ECF95D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D48);
  }

  return result;
}

unint64_t sub_1E4B71A54()
{
  result = qword_1ECF95D50;
  if (!qword_1ECF95D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D50);
  }

  return result;
}

unint64_t sub_1E4B71AAC()
{
  result = qword_1ECF95D58;
  if (!qword_1ECF95D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D58);
  }

  return result;
}

unint64_t sub_1E4B71B04()
{
  result = qword_1ECF95D60;
  if (!qword_1ECF95D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D60);
  }

  return result;
}

unint64_t sub_1E4B71B5C()
{
  result = qword_1ECF95D68;
  if (!qword_1ECF95D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D68);
  }

  return result;
}

unint64_t sub_1E4B71BB4()
{
  result = qword_1ECF95D70;
  if (!qword_1ECF95D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D70);
  }

  return result;
}

unint64_t sub_1E4B71C0C()
{
  result = qword_1ECF95D78;
  if (!qword_1ECF95D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D78);
  }

  return result;
}

unint64_t sub_1E4B71C64()
{
  result = qword_1ECF95D80;
  if (!qword_1ECF95D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D80);
  }

  return result;
}

double RCSResultNotification.messageID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

TelephonyMessagingKit::RCSResultNotification __swiftcall RCSResultNotification.init(cellularServiceID:messageID:error:)(TelephonyMessagingKit::CellularServiceID cellularServiceID, TelephonyMessagingKit::RCSMessageID messageID, TelephonyMessagingKit::RCSService::Error_optional error)
{
  v4 = *messageID.rawValue._countAndFlagsBits;
  v5 = *(messageID.rawValue._countAndFlagsBits + 8);
  v6 = *messageID.rawValue._object;
  *v3 = *cellularServiceID.simSlot;
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  result.messageID = messageID;
  result.error = error;
  result.cellularServiceID = cellularServiceID;
  return result;
}

uint64_t sub_1E4B71D04(uint64_t a1)
{
  v2 = sub_1E4B71F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B71D40(uint64_t a1)
{
  v2 = sub_1E4B71F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSResultNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95D88, &qword_1E4C0DF30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v12[0] = *(v1 + 1);
  v15 = v1[24];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B71F78();
  sub_1E4BF0ACC();
  LOBYTE(v13) = v7;
  v16 = 0;
  sub_1E4ADBE98();
  v9 = v12[1];
  sub_1E4BF093C();
  if (!v9)
  {
    v10 = v15;
    v13 = v12[0];
    v14 = v8;
    v16 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();

    LOBYTE(v13) = v10;
    v16 = 2;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E4B71F78()
{
  result = qword_1ECF95D90;
  if (!qword_1ECF95D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95D90);
  }

  return result;
}

uint64_t RCSResultNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95D98, &qword_1E4C0DF38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B71F78();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v15;
  v17 = 1;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v10 = v16;
  v14 = v15;
  v17 = 2;
  sub_1E4B1B7E8();
  sub_1E4BF082C();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B72208(uint64_t a1)
{
  result = sub_1E4B72230();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B72230()
{
  result = qword_1ECF95DA0;
  if (!qword_1ECF95DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DA0);
  }

  return result;
}

unint64_t sub_1E4B72290(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B722C0();
  result = sub_1E4B72314();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B722C0()
{
  result = qword_1ECF95DA8;
  if (!qword_1ECF95DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DA8);
  }

  return result;
}

unint64_t sub_1E4B72314()
{
  result = qword_1ECF95DB0;
  if (!qword_1ECF95DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DB0);
  }

  return result;
}

unint64_t sub_1E4B723BC()
{
  result = qword_1ECF95DB8;
  if (!qword_1ECF95DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DB8);
  }

  return result;
}

unint64_t sub_1E4B72414()
{
  result = qword_1ECF95DC0;
  if (!qword_1ECF95DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DC0);
  }

  return result;
}

unint64_t sub_1E4B7246C()
{
  result = qword_1ECF95DC8;
  if (!qword_1ECF95DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DC8);
  }

  return result;
}

double RCSGroupContext.handle.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

TelephonyMessagingKit::RCSGroupContext __swiftcall RCSGroupContext.init(handle:isEndToEndEncrypted:)(TelephonyMessagingKit::RCSGroupContext handle, Swift::Bool isEndToEndEncrypted)
{
  v3 = *(handle.handle.focus._countAndFlagsBits + 16);
  v4 = *(handle.handle.focus._countAndFlagsBits + 24);
  *v2 = *handle.handle.focus._countAndFlagsBits;
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return handle;
}

uint64_t sub_1E4B72530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B725B4(uint64_t a1)
{
  v2 = sub_1E4B729F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B725F0(uint64_t a1)
{
  v2 = sub_1E4B729F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupContext.encode(to:)(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95DD0, &qword_1E4C0E130);
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v11 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B729F0();

  sub_1E4BF0ACC();
  v13 = v6;
  v14 = v7;
  v15 = v11;
  v16 = v8;
  sub_1E4AE8804();
  v9 = v12;
  sub_1E4BF093C();

  return (*(v3 + 8))(v5, v9);
}

uint64_t RCSGroupContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95DE0, &qword_1E4C0E138);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B729F0();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4AE88AC();
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s21TelephonyMessagingKit15RCSGroupContextV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (sub_1E4BF099C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1E4B729F0()
{
  result = qword_1ECF95DD8;
  if (!qword_1ECF95DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DD8);
  }

  return result;
}

unint64_t sub_1E4B72A68()
{
  result = qword_1ECF95DE8;
  if (!qword_1ECF95DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DE8);
  }

  return result;
}

unint64_t sub_1E4B72AC0()
{
  result = qword_1ECF95DF0;
  if (!qword_1ECF95DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DF0);
  }

  return result;
}

unint64_t sub_1E4B72B18()
{
  result = qword_1ECF95DF8;
  if (!qword_1ECF95DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95DF8);
  }

  return result;
}

uint64_t sub_1E4B72BB0(uint64_t a1)
{
  v2 = sub_1E4B72DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B72BEC(uint64_t a1)
{
  v2 = sub_1E4B72DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SendSMSRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E00, &qword_1E4C0E320);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B72DA0();
  sub_1E4BF0ACC();
  type metadata accessor for SMSMessage(0);
  sub_1E4B731F8(&qword_1ECF95C98, type metadata accessor for SMSMessage, &protocol conformance descriptor for SMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4B72DA0()
{
  result = qword_1ECF95E08;
  if (!qword_1ECF95E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95E08);
  }

  return result;
}

uint64_t SendSMSRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for SMSMessage(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E10, &qword_1E4C0E328);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SendSMSRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B72DA0();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v12 = v15;
    sub_1E4B731F8(&qword_1ECF95CA8, type metadata accessor for SMSMessage, &protocol conformance descriptor for SMSMessage);
    v13 = v17;
    sub_1E4BF087C();
    (*(v16 + 8))(v8, v6);
    sub_1E4B730B4(v13, v11, type metadata accessor for SMSMessage);
    sub_1E4B730B4(v11, v12, type metadata accessor for SendSMSRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SendSMSRequest(uint64_t a1)
{
  result = qword_1EE2BDDD8;
  if (!qword_1EE2BDDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4B730B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B7311C(uint64_t a1)
{
  result = sub_1E4B731F8(&qword_1EE2BDE10, type metadata accessor for SendSMSRequest, &protocol conformance descriptor for SendSMSRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4B73174(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B731F8(&qword_1EE2BDE18, type metadata accessor for SendSMSRequest, &protocol conformance descriptor for SendSMSRequest);
  result = sub_1E4B731F8(&qword_1EE2BDE20, type metadata accessor for SendSMSRequest, &protocol conformance descriptor for SendSMSRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4B731F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4B73258(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E00, &qword_1E4C0E320);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B72DA0();
  sub_1E4BF0ACC();
  type metadata accessor for SMSMessage(0);
  sub_1E4B731F8(&qword_1ECF95C98, type metadata accessor for SMSMessage, &protocol conformance descriptor for SMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4B7340C()
{
  result = qword_1ECF95E18;
  if (!qword_1ECF95E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95E18);
  }

  return result;
}

unint64_t sub_1E4B73464()
{
  result = qword_1ECF95E20;
  if (!qword_1ECF95E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95E20);
  }

  return result;
}

unint64_t sub_1E4B734BC()
{
  result = qword_1ECF95E28;
  if (!qword_1ECF95E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95E28);
  }

  return result;
}

uint64_t sub_1E4B73520(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EF8, &unk_1E4C0E7C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944C0, &unk_1E4C18C50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v24[0] = a1;
  v24[1] = a2;
  v14 = *(v3 + 16);
  v18 = v24;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B84B84(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95EF8, &unk_1E4C0E7C0);
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = a3[1];
  v20 = *a3;
  v21 = v16;
  v22 = a3[2];
  v23 = *(a3 + 6);
  sub_1E4B84BBC(a3, v19);
  sub_1E4BF01BC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4B73718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F00, &unk_1E4C0E7D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94490, &unk_1E4C18C00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-v12];
  v19[0] = a1;
  v19[1] = a2;
  v14 = *(v3 + 16);
  v17 = v19;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B84C18(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95F00, &unk_1E4C0E7D0);
  }

  (*(v11 + 32))(v13, v9, v10);
  v18 = a3;

  sub_1E4BF01BC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4B738F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F08, &unk_1E4C0E7E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944A0, &qword_1E4C054A8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-v12];
  v19[0] = a1;
  v19[1] = a2;
  v14 = *(v3 + 16);
  v17 = v19;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B84C50(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95F08, &unk_1E4C0E7E0);
  }

  (*(v11 + 32))(v13, v9, v10);
  v18 = a3;

  sub_1E4BF01BC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4B73AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F70, &unk_1E4C0E850);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19[-v15];
  v21[0] = a1;
  v21[1] = a2;
  v17 = *(v3 + 16);
  v20 = v21;
  os_unfair_lock_lock(v17 + 6);
  sub_1E4B85430(v12);
  os_unfair_lock_unlock(v17 + 6);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1E4AE0AE4(v12, &qword_1ECF95F70, &unk_1E4C0E850);
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_1E4AF1898(a3, v9, &qword_1ECF95F68, &qword_1E4C12EB0);
  sub_1E4BF01BC();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1E4B73D1C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E50, &qword_1E4C0E6E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-v12];
  v19[0] = a1;
  v19[1] = a2;
  v14 = *(v3 + 16);
  v17 = v19;
  os_unfair_lock_lock(v14 + 6);
  sub_1E4B853E8(v9);
  os_unfair_lock_unlock(v14 + 6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E4AE0AE4(v9, &qword_1ECF95E50, &qword_1E4C0E6E8);
  }

  (*(v11 + 32))(v13, v9, v10);
  v18[0] = a3 & 1;
  sub_1E4BF01BC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E4B73EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F18, &qword_1E4C0E7F8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19[-v15];
  v21[0] = a1;
  v21[1] = a2;
  v17 = *(v3 + 16);
  v20 = v21;
  os_unfair_lock_lock(v17 + 6);
  sub_1E4B85418(v12);
  os_unfair_lock_unlock(v17 + 6);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1E4AE0AE4(v12, &qword_1ECF95F18, &qword_1E4C0E7F8);
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_1E4AF1898(a3, v9, &qword_1ECF95F10, &qword_1E4C0E7F0);
  sub_1E4BF01BC();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1E4B741BC(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18[-v14];
  v16 = *(v4 + 16);
  os_unfair_lock_lock((v16 + 24));
  sub_1E4B74730((v16 + 16), a1, a2, a3, a4, v11);
  os_unfair_lock_unlock((v16 + 24));
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1E4AE0AE4(v11, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_1E4BF01BC();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1E4B74398(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-v10];
  v16[0] = a1;
  v16[1] = a2;
  v12 = *(v2 + 16);
  v15 = v16;
  os_unfair_lock_lock(v12 + 6);
  sub_1E4B85448(v7);
  os_unfair_lock_unlock(v12 + 6);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1E4AE0AE4(v7, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1E4BF01BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E4B74564(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-v10];
  v16[0] = a1;
  v16[1] = a2;
  v12 = *(v2 + 16);
  v15 = v16;
  os_unfair_lock_lock(v12 + 6);
  sub_1E4B85400(v7);
  os_unfair_lock_unlock(v12 + 6);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1E4AE0AE4(v7, &qword_1ECF95EC0, &unk_1E4C0E780);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1E4BF01BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E4B74730@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = a3(a2);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    v20 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v14 = v20;
    }

    v15 = *(v14 + 56);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    v17 = *(v16 - 8);
    (*(v17 + 32))(a6, v15 + *(v17 + 72) * v12, v16);
    a4(v12, v14);
    *a1 = v14;
    return (*(v17 + 56))(a6, 0, 1, v16);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    return (*(*(v19 - 8) + 56))(a6, 1, 1, v19);
  }
}

uint64_t sub_1E4B748C8(unsigned int a1)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF945E8, &qword_1E4C05600);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96000, &unk_1E4C0E8D8);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F70, &unk_1E4BFDD00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = *(v1 + 16);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  os_unfair_lock_unlock((v13 + 24));
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = *(v9 + 28);
    v30 = v6;
    v31 = v17;
    v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = v15;
    v19 = v15 + v18;
    v26 = (v3 + 16);
    v29 = *(v10 + 72);
    v20 = v27 & 1;
    v27 = (v27 >> 8) & 1;
    v28 = v20;
    v21 = (v3 + 8);
    v22 = (v25 + 8);
    do
    {
      sub_1E4AF1898(v19, v12, &qword_1ECF92F70, &unk_1E4BFDD00);
      (*v26)(v5, &v12[v31], v2);
      sub_1E4AE0AE4(v12, &qword_1ECF92F70, &unk_1E4BFDD00);
      v32 = v28;
      v33 = v27;
      sub_1E4BF022C();
      (*v21)(v5, v2);
      (*v22)(v8, v30);
      v19 += v29;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1E4B74BFC(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for MMSService.IncomingMessageNotification(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF945D0, &qword_1E4C055F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FF0, &qword_1E4C0E8C0);
  v25 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v24 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F60, &qword_1E4BFDCF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  v15 = *(v2 + 16);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v11 + 28);
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v24[1] = v16;
    v20 = v16 + v19;
    v28 = *(v12 + 72);
    v29 = v18;
    v26 = (v7 + 8);
    v27 = (v7 + 16);
    v21 = (v25 + 8);
    do
    {
      sub_1E4AF1898(v20, v14, &qword_1ECF92F60, &qword_1E4BFDCF0);
      (*v27)(v9, &v14[v29], v6);
      sub_1E4AE0AE4(v14, &qword_1ECF92F60, &qword_1E4BFDCF0);
      sub_1E4B850C4(v31, v5, type metadata accessor for MMSService.IncomingMessageNotification);
      sub_1E4BF022C();
      v22 = v32;
      (*v26)(v9, v6);
      (*v21)(v22, v30);
      v20 += v28;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_1E4B74F94(int a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF945B8, &qword_1E4C055E0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96010, &qword_1E4C0E8E8);
  v25 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F50, &qword_1E4BFDCE0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = *(v3 + 16);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);

  os_unfair_lock_unlock((v14 + 24));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v10 + 28);
    v31 = a2;
    v32 = v17;
    v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v28 = a3;
    v24 = v15;
    v19 = v15 + v18;
    v30 = *(v11 + 72);
    v27 = (v26 + 16);
    v29 &= 1u;
    v20 = (v26 + 8);
    v21 = (v25 + 8);
    do
    {
      sub_1E4AF1898(v19, v13, &qword_1ECF92F50, &qword_1E4BFDCE0);
      (*v27)(v8, &v13[v32], v6);
      sub_1E4AE0AE4(v13, &qword_1ECF92F50, &qword_1E4BFDCE0);
      v35[0] = v29;
      v36 = v31;
      v37 = v28;

      sub_1E4BF022C();
      v22 = v34;
      (*v20)(v8, v6);
      (*v21)(v22, v33);
      v19 += v30;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1E4B752F4(unsigned int a1)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94568, &qword_1E4C0E890);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FC0, &unk_1E4C0E898);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F30, &qword_1E4BFDCC0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = *(v1 + 16);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  os_unfair_lock_unlock((v13 + 24));
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = *(v9 + 28);
    v30 = v6;
    v31 = v17;
    v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = v15;
    v19 = v15 + v18;
    v26 = (v3 + 16);
    v29 = *(v10 + 72);
    v20 = v27 & 1;
    v27 = (v27 >> 8) & 1;
    v28 = v20;
    v21 = (v3 + 8);
    v22 = (v25 + 8);
    do
    {
      sub_1E4AF1898(v19, v12, &qword_1ECF92F30, &qword_1E4BFDCC0);
      (*v26)(v5, &v12[v31], v2);
      sub_1E4AE0AE4(v12, &qword_1ECF92F30, &qword_1E4BFDCC0);
      v32 = v28;
      v33 = v27;
      sub_1E4BF022C();
      (*v21)(v5, v2);
      (*v22)(v8, v30);
      v19 += v29;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1E4B75628(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for SMSService.IncomingMessageNotification(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94548, &qword_1E4C05560);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FA0, &qword_1E4C0E880);
  v25 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v24 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F20, &qword_1E4BFDCB0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  v15 = *(v2 + 16);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v11 + 28);
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v24[1] = v16;
    v20 = v16 + v19;
    v28 = *(v12 + 72);
    v29 = v18;
    v26 = (v7 + 8);
    v27 = (v7 + 16);
    v21 = (v25 + 8);
    do
    {
      sub_1E4AF1898(v20, v14, &qword_1ECF92F20, &qword_1E4BFDCB0);
      (*v27)(v9, &v14[v29], v6);
      sub_1E4AE0AE4(v14, &qword_1ECF92F20, &qword_1E4BFDCB0);
      sub_1E4B850C4(v31, v5, type metadata accessor for SMSService.IncomingMessageNotification);
      sub_1E4BF022C();
      v22 = v32;
      (*v26)(v9, v6);
      (*v21)(v22, v30);
      v20 += v28;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_1E4B759C0(unint64_t a1)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94530, &qword_1E4C05550);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F98, &qword_1E4C0E878);
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F10, &qword_1E4BFDCA0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  v13 = *(v1 + 16);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  os_unfair_lock_unlock((v13 + 24));
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v29 = *(v9 + 28);
    v30 = HIDWORD(v26);
    v17 = *(v10 + 80);
    v23[1] = v15;
    v18 = v15 + ((v17 + 32) & ~v17);
    v19 = *(v10 + 72);
    v27 = v6;
    v28 = v19;
    v25 = (v3 + 16);
    LODWORD(v26) = v26 & 1;
    v20 = (v3 + 8);
    v21 = (v24 + 8);
    do
    {
      sub_1E4AF1898(v18, v12, &qword_1ECF92F10, &qword_1E4BFDCA0);
      (*v25)(v5, &v12[v29], v2);
      sub_1E4AE0AE4(v12, &qword_1ECF92F10, &qword_1E4BFDCA0);
      v31[0] = v26;
      v32 = v30;
      sub_1E4BF022C();
      (*v20)(v5, v2);
      (*v21)(v8, v27);
      v18 += v28;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1E4B75CF8(unsigned int a1)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94518, &qword_1E4C05530);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F90, &qword_1E4C0E870);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F00, &qword_1E4BFDC90);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = *(v1 + 16);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  os_unfair_lock_unlock((v13 + 24));
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = *(v9 + 28);
    v30 = v6;
    v31 = v17;
    v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = v15;
    v19 = v15 + v18;
    v26 = (v3 + 16);
    v29 = *(v10 + 72);
    v20 = v27 & 1;
    v27 = (v27 >> 8) & 1;
    v28 = v20;
    v21 = (v3 + 8);
    v22 = (v25 + 8);
    do
    {
      sub_1E4AF1898(v19, v12, &qword_1ECF92F00, &qword_1E4BFDC90);
      (*v26)(v5, &v12[v31], v2);
      sub_1E4AE0AE4(v12, &qword_1ECF92F00, &qword_1E4BFDC90);
      v32 = v28;
      v33 = v27;
      sub_1E4BF022C();
      (*v21)(v5, v2);
      (*v22)(v8, v30);
      v19 += v29;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1E4B7602C(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for RCSService.RemoteHandleUpdate(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944E8, &qword_1E4C0E820);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F38, &qword_1E4C0E828);
  v25 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v24 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EF0, &qword_1E4BFDC80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  v15 = *(v2 + 16);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v11 + 28);
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v24[1] = v16;
    v20 = v16 + v19;
    v28 = *(v12 + 72);
    v29 = v18;
    v26 = (v7 + 8);
    v27 = (v7 + 16);
    v21 = (v25 + 8);
    do
    {
      sub_1E4AF1898(v20, v14, &qword_1ECF92EF0, &qword_1E4BFDC80);
      (*v27)(v9, &v14[v29], v6);
      sub_1E4AE0AE4(v14, &qword_1ECF92EF0, &qword_1E4BFDC80);
      sub_1E4B850C4(v31, v5, type metadata accessor for RCSService.RemoteHandleUpdate);
      sub_1E4BF022C();
      v22 = v32;
      (*v26)(v9, v6);
      (*v21)(v22, v30);
      v20 += v28;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_1E4B763C4(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for RCSService.IncomingMessageNotification(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94480, &qword_1E4C05488);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EE0, &qword_1E4C0E7A0);
  v25 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v24 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EE0, &qword_1E4BFDC70);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  v15 = *(v2 + 16);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v11 + 28);
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v24[1] = v16;
    v20 = v16 + v19;
    v28 = *(v12 + 72);
    v29 = v18;
    v26 = (v7 + 8);
    v27 = (v7 + 16);
    v21 = (v25 + 8);
    do
    {
      sub_1E4AF1898(v20, v14, &qword_1ECF92EE0, &qword_1E4BFDC70);
      (*v27)(v9, &v14[v29], v6);
      sub_1E4AE0AE4(v14, &qword_1ECF92EE0, &qword_1E4BFDC70);
      sub_1E4B850C4(v31, v5, type metadata accessor for RCSService.IncomingMessageNotification);
      sub_1E4BF022C();
      v22 = v32;
      (*v26)(v9, v6);
      (*v21)(v22, v30);
      v20 += v28;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_1E4B7675C(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94468, &qword_1E4C05468);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95ED0, &qword_1E4C0E790);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92ED0, &qword_1E4BFDC60);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - v12;
  v14 = *(v2 + 16);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);

  os_unfair_lock_unlock((v14 + 24));
  v16 = *(v15 + 16);
  if (v16)
  {
    v31 = *(v10 + 28);
    v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25[1] = v15;
    v18 = v15 + v17;
    v30 = *(v11 + 72);
    v27 = v9;
    v28 = (v29 + 16);
    v19 = (v29 + 8);
    v29 = v7;
    v20 = (v26 + 8);
    do
    {
      sub_1E4AF1898(v18, v13, &qword_1ECF92ED0, &qword_1E4BFDC60);
      (*v28)(v6, &v13[v31], v4);
      sub_1E4AE0AE4(v13, &qword_1ECF92ED0, &qword_1E4BFDC60);
      v21 = a1[3];
      v35 = a1[2];
      v36 = v21;
      v37 = a1[4];
      v22 = a1[1];
      v33 = *a1;
      v34 = v22;
      sub_1E4B84A9C(a1, v32);
      v23 = v27;
      sub_1E4BF022C();
      (*v19)(v6, v4);
      (*v20)(v23, v29);
      v18 += v30;
      --v16;
    }

    while (v16);
  }
}

unint64_t Messaging.Entitlement.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000002BLL;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_1E4B76B24(uint64_t (*a1)(void *), uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E70, &qword_1E4C0E738);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v24 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E78, &qword_1E4C0E740);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = sub_1E4BEFABC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BEFAAC();
  v26 = v15;
  v27 = *v2;
  result = sub_1E4B7A380(sub_1E4B8444C, v25, &qword_1ECF92EB8, &qword_1E4C063F0, sub_1E4B7A940);
  v17 = *(*(v2 + 7) + 16);
  if (v17 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1E4B7C724(result, v17, sub_1E4AF2988, &qword_1ECF92EB8, &qword_1E4C063F0);
    (*(v13 + 8))(v15, v12);
    sub_1E4B78738(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E80, &unk_1E4C0E748);
    sub_1E4B14808(&qword_1ECF95E88, &qword_1ECF95E80, &unk_1E4C0E748, &unk_1E4C0FA90);
    sub_1E4BF039C();
    sub_1E4B78F68(v11);
    (*(v4 + 16))(v24, v8, v3);
    sub_1E4B14808(&qword_1ECF95E90, &qword_1ECF95E70, &qword_1E4C0E738, MEMORY[0x1E69E6E30]);
    v18 = sub_1E4BF001C();
    (*(v4 + 8))(v8, v3);
    (*(v22 + 8))(v11, v23);
    return v18;
  }

  return result;
}

uint64_t sub_1E4B76ECC(uint64_t (*a1)(void *), uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FC8, &qword_1E4C0E8A8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v24 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E78, &qword_1E4C0E740);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = sub_1E4BEFABC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BEFAAC();
  v26 = v15;
  v27 = *v2;
  result = sub_1E4B7A380(sub_1E4B84F60, v25, &qword_1ECF92F40, &qword_1E4BFDCD0, sub_1E4B7A9F4);
  v17 = *(*(v2 + 7) + 16);
  if (v17 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1E4B7C724(result, v17, sub_1E4AF2B1C, &qword_1ECF92F40, &qword_1E4BFDCD0);
    (*(v13 + 8))(v15, v12);
    sub_1E4B78B50(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FD0, &qword_1E4C0E8B0);
    sub_1E4B14808(&qword_1ECF95FD8, &qword_1ECF95FD0, &qword_1E4C0E8B0, &unk_1E4C0FA90);
    sub_1E4BF039C();
    sub_1E4B797F8(v11);
    (*(v4 + 16))(v24, v8, v3);
    sub_1E4B14808(&qword_1ECF95FE0, &qword_1ECF95FC8, &qword_1E4C0E8A8, MEMORY[0x1E69E6E30]);
    v18 = sub_1E4BF001C();
    (*(v4 + 8))(v8, v3);
    (*(v22 + 8))(v11, v23);
    return v18;
  }

  return result;
}

uint64_t sub_1E4B77274()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF95E30);
  v1 = __swift_project_value_buffer(v0, qword_1ECF95E30);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

TelephonyMessagingKit::Messaging::Entitlement_optional __swiftcall Messaging.Entitlement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E4BF07DC();

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

  *v2 = v5;
  return result;
}

uint64_t sub_1E4B773A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000002BLL;
  }

  else
  {
    v3 = 0xD000000000000029;
  }

  if (v2)
  {
    v4 = "latitude";
  }

  else
  {
    v4 = "per.carrier-messaging-app";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000002BLL;
  }

  else
  {
    v6 = 0xD000000000000029;
  }

  if (*a2)
  {
    v7 = "per.carrier-messaging-app";
  }

  else
  {
    v7 = "latitude";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();
  }

  return v9 & 1;
}

unint64_t sub_1E4B77450()
{
  result = qword_1ECF95E48;
  if (!qword_1ECF95E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95E48);
  }

  return result;
}

uint64_t sub_1E4B774A4()
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B77524(uint64_t a1)
{
  sub_1E4BEFF4C();
}

uint64_t sub_1E4B77590(uint64_t a1)
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B7760C@<X0>(char *a2@<X8>)
{
  v3 = sub_1E4BF07DC();

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

void sub_1E4B7766C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v2 = 0xD000000000000029;
  }

  if (*v1)
  {
    v3 = "per.carrier-messaging-app";
  }

  else
  {
    v3 = "latitude";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void sub_1E4B776CC(void *a1, void *a2, void *a3)
{
  v5 = v3;
  sub_1E4B14334(a3, &v20[24]);
  *&v20[8] = xmmword_1E4C06080;
  v23 = MEMORY[0x1E69E7CC0];
  LOBYTE(v19) = 0;
  *(&v19 + 1) = 0;
  *v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96028, &qword_1E4C0E910);
  v9 = swift_allocObject();
  v10 = v21;
  v11 = v22;
  v12 = *v20;
  *(v9 + 48) = *&v20[16];
  *(v9 + 64) = v10;
  *(v9 + 104) = 0;
  *(v9 + 80) = v11;
  *(v9 + 96) = v23;
  *(v9 + 16) = v19;
  *(v9 + 32) = v12;
  *(v3 + 16) = v9;
  sub_1E4B14334(a1, v3 + 24);
  sub_1E4B14334(a2, &v19);
  __swift_mutable_project_boxed_opaque_existential_1(&v19, *&v20[8]);
  v18[3] = &type metadata for DefaultNotifyProvider;
  v18[4] = &off_1F5EB8FD8;
  type metadata accessor for NotifyObserver();
  v13 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for DefaultNotifyProvider);
  v17[3] = &type metadata for DefaultNotifyProvider;
  v17[4] = &off_1F5EB8FD8;
  sub_1E4B14334(v17, (v13 + 2));
  v13[7] = 0xD000000000000023;
  v13[8] = 0x80000001E4BF1CB0;
  sub_1E4B1340C();
  v13[9] = sub_1E4BF050C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96030, &unk_1E4C0E918);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  __swift_destroy_boxed_opaque_existential_1(v17);
  *(v14 + 16) = -1;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v13[10] = v14;
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  *(v5 + 64) = v13;
  swift_allocObject();
  swift_weakInit();
  v15 = v13[10];

  os_unfair_lock_lock(v15 + 10);
  sub_1E4B3A910(&v15[4]);
  os_unfair_lock_unlock(v15 + 10);
  if (v4)
  {
    __break(1u);
  }

  else
  {

    v16 = *(*(v5 + 64) + 80);
    os_unfair_lock_lock(v16 + 10);
    sub_1E4B85218(&v16[4]);
    os_unfair_lock_unlock(v16 + 10);
    __swift_destroy_boxed_opaque_existential_1(a3);
    __swift_destroy_boxed_opaque_existential_1(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1E4B77974(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4B779CC();
  }

  return result;
}

uint64_t sub_1E4B779CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  if (qword_1ECF923E8 != -1)
  {
    swift_once();
  }

  v5 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v5, qword_1ECF95E30);
  v6 = sub_1E4BEFB5C();
  v7 = sub_1E4BF04BC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1E4AD3000, v6, v7, "Received server ready notification", v8, 2u);
    MEMORY[0x1E6921800](v8, -1, -1);
  }

  v9 = sub_1E4BF01FC();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_1E4BA8E24(0, 0, v4, &unk_1E4C0E930, v10);
}

void *sub_1E4B77B94()
{
  v1 = v0;
  if (qword_1ECF923E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1ECF95E30);
  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E4AD3000, v3, v4, "Messaging.Client deinit", v5, 2u);
    MEMORY[0x1E6921800](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + 24));

  return v1;
}

uint64_t sub_1E4B77C8C()
{
  sub_1E4B77B94();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t get_enum_tag_for_layout_string_Iegh_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1E4B77D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B77D68(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

void sub_1E4B77DCC(_BYTE *a1, void *a2)
{
  if ((*a1 & 1) == 0)
  {
    v4 = a2[6];
    v5 = a2[7];
    __swift_project_boxed_opaque_existential_1(a2 + 3, v4);
    (*(v5 + 56))(v4, v5);
    if (v2)
    {
      if (qword_1ECF923E8 != -1)
      {
        swift_once();
      }

      v6 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v6, qword_1ECF95E30);
      v7 = v2;
      v8 = sub_1E4BEFB5C();
      v9 = sub_1E4BF04DC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = v2;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        _os_log_impl(&dword_1E4AD3000, v8, v9, "Ping failed: %@", v10, 0xCu);
        sub_1E4AE0AE4(v11, &qword_1ECF93B50, &qword_1E4C05660);
        MEMORY[0x1E6921800](v11, -1, -1);
        MEMORY[0x1E6921800](v10, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      *a1 = 1;
    }
  }
}

uint64_t sub_1E4B77FB0()
{
  sub_1E4B78014();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1E4B78014()
{
  v1 = v0;
  v2 = sub_1E4BEFCCC();
  MEMORY[0x1EEE9AC00](v2);
  if (qword_1ECF923E8 != -1)
  {
    swift_once();
  }

  v3 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v3, qword_1ECF95E30);
  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "Attempting to reconnect with server", v6, 2u);
    MEMORY[0x1E6921800](v6, -1, -1);
  }

  v7 = v1[6];
  v8 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v7);
  (*(v8 + 80))(v7, v8);
  v9 = v1[6];
  v10 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v9);
  (*(v10 + 56))(v9, v10);
  v11 = sub_1E4BEFB5C();
  v12 = sub_1E4BF04BC();
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1E4AD3000, v11, v12, "Successfully reconnected with server", v14, 2u);
    MEMORY[0x1E6921800](v14, -1, -1);
  }

  v15 = v1[2];
  os_unfair_lock_lock((v15 + 104));
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);
  if (v16)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = sub_1E4B852E8;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  sub_1E4AD650C(v16, v17);
  os_unfair_lock_unlock((v15 + 104));
  if (v16)
  {

    (v19)(v20);
    sub_1E4AD651C(v19, v18);

    sub_1E4AD651C(v19, v18);
  }
}

uint64_t sub_1E4B78604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);

  result = sub_1E4AD651C(v6, v7);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  return result;
}

BOOL sub_1E4B786B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1E4BEFA8C();
  return v6 >= sub_1E4BF0ADC();
}

uint64_t sub_1E4B78738(uint64_t (*a1)(void *))
{
  result = v1;
  v5 = 0;
  v24 = *(v1 + 56);
  v35 = *(v24 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      result = sub_1E4AF1898(result, v33, &qword_1ECF95E80, &unk_1E4C0E748);
      v31 = v5;
      v32 = v35;
      if (v5 == v35)
      {
LABEL_29:
        sub_1E4AE0AE4(&v31, &qword_1ECF95EB8, &unk_1E4C0E770);
      }

      else
      {
        while (1)
        {
          v7 = v34;
          if (v5 >= *(v34 + 16))
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EB8, &qword_1E4C063F0) - 8);
          v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v10 = *(v8 + 72);
          sub_1E4B3AA00(v7 + v9 + v10 * v5, v28);
          v11 = a1(v28);
          if (v2)
          {
            sub_1E4B3AAA0(v28);
            sub_1E4AE0AE4(&v31, &qword_1ECF95EB8, &unk_1E4C0E770);
          }

          v12 = v11;
          result = sub_1E4B3AAA0(v28);
          if (v12)
          {
            break;
          }

          if (v5 >= *(v7 + 16))
          {
            goto LABEL_33;
          }

          if (v35 == ++v5)
          {
            goto LABEL_29;
          }
        }

        result = sub_1E4AE0AE4(&v31, &qword_1ECF95EB8, &unk_1E4C0E770);
        v13 = *(v24 + 16);
        if (v13 < v5)
        {
          goto LABEL_37;
        }

        result = sub_1E4AF1898(v1, v29, &qword_1ECF95E80, &unk_1E4C0E748);
        v28[0] = v5;
        v28[1] = v13;
        if (v13 != v5)
        {
          v23 = v6;
          v15 = v9 + v10 * v5;
          v14 = v5;
          v25 = v13;
          v26 = a1;
          while (1)
          {
            v16 = v30;
            if (v14 >= *(v30 + 16))
            {
              goto LABEL_34;
            }

            sub_1E4B3AA00(v30 + v15, v27);
            v17 = a1(v27);
            result = sub_1E4B3AAA0(v27);
            if ((v17 & 1) == 0)
            {
              break;
            }

            if (v14 >= *(v16 + 16))
            {
              goto LABEL_35;
            }

            ++v14;
            v15 += v10;
            a1 = v26;
            if (v25 == v14)
            {
              v14 = v25;
              goto LABEL_20;
            }
          }

          a1 = v26;
LABEL_20:
          v6 = v23;
          if (v14 < v5)
          {
            goto LABEL_38;
          }

          goto LABEL_21;
        }

        v14 = v5;
LABEL_21:
        sub_1E4AF1898(v29, v33, &qword_1ECF95E80, &unk_1E4C0E748);
        v31 = v5;
        v32 = v14;
        sub_1E4AE0AE4(v28, &qword_1ECF95EB8, &unk_1E4C0E770);
        sub_1E4AE0AE4(&v31, &qword_1ECF95EB8, &unk_1E4C0E770);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1E4AF29AC(0, *(v6 + 2) + 1, 1, v6);
        }

        v19 = *(v6 + 2);
        v18 = *(v6 + 3);
        result = v1;
        if (v19 >= v18 >> 1)
        {
          v22 = sub_1E4AF29AC((v18 > 1), v19 + 1, 1, v6);
          v20 = v14;
          v6 = v22;
          result = v1;
        }

        else
        {
          v20 = v14;
        }

        *(v6 + 2) = v19 + 1;
        v21 = &v6[16 * v19];
        *(v21 + 4) = v5;
        *(v21 + 5) = v20;
        if (v20 < *(v24 + 16))
        {
          v5 = v20 + 1;
          if (v35 > v20)
          {
            continue;
          }

          goto LABEL_39;
        }
      }

      return sub_1E4BF0B0C();
    }

    break;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1E4B78B50(uint64_t (*a1)(void *))
{
  result = v1;
  v5 = 0;
  v24 = *(v1 + 56);
  v35 = *(v24 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      result = sub_1E4AF1898(result, v33, &qword_1ECF95FD0, &qword_1E4C0E8B0);
      v31 = v5;
      v32 = v35;
      if (v5 == v35)
      {
LABEL_29:
        sub_1E4AE0AE4(&v31, &qword_1ECF95FE8, &qword_1E4C0E8B8);
      }

      else
      {
        while (1)
        {
          v7 = v34;
          if (v5 >= *(v34 + 16))
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F40, &qword_1E4BFDCD0) - 8);
          v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v10 = *(v8 + 72);
          sub_1E4B41A48(v7 + v9 + v10 * v5, v28);
          v11 = a1(v28);
          if (v2)
          {
            sub_1E4B41AA0(v28);
            sub_1E4AE0AE4(&v31, &qword_1ECF95FE8, &qword_1E4C0E8B8);
          }

          v12 = v11;
          result = sub_1E4B41AA0(v28);
          if (v12)
          {
            break;
          }

          if (v5 >= *(v7 + 16))
          {
            goto LABEL_33;
          }

          if (v35 == ++v5)
          {
            goto LABEL_29;
          }
        }

        result = sub_1E4AE0AE4(&v31, &qword_1ECF95FE8, &qword_1E4C0E8B8);
        v13 = *(v24 + 16);
        if (v13 < v5)
        {
          goto LABEL_37;
        }

        result = sub_1E4AF1898(v1, v29, &qword_1ECF95FD0, &qword_1E4C0E8B0);
        v28[0] = v5;
        v28[1] = v13;
        if (v13 != v5)
        {
          v23 = v6;
          v15 = v9 + v10 * v5;
          v14 = v5;
          v25 = v13;
          v26 = a1;
          while (1)
          {
            v16 = v30;
            if (v14 >= *(v30 + 16))
            {
              goto LABEL_34;
            }

            sub_1E4B41A48(v30 + v15, v27);
            v17 = a1(v27);
            result = sub_1E4B41AA0(v27);
            if ((v17 & 1) == 0)
            {
              break;
            }

            if (v14 >= *(v16 + 16))
            {
              goto LABEL_35;
            }

            ++v14;
            v15 += v10;
            a1 = v26;
            if (v25 == v14)
            {
              v14 = v25;
              goto LABEL_20;
            }
          }

          a1 = v26;
LABEL_20:
          v6 = v23;
          if (v14 < v5)
          {
            goto LABEL_38;
          }

          goto LABEL_21;
        }

        v14 = v5;
LABEL_21:
        sub_1E4AF1898(v29, v33, &qword_1ECF95FD0, &qword_1E4C0E8B0);
        v31 = v5;
        v32 = v14;
        sub_1E4AE0AE4(v28, &qword_1ECF95FE8, &qword_1E4C0E8B8);
        sub_1E4AE0AE4(&v31, &qword_1ECF95FE8, &qword_1E4C0E8B8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1E4AF29AC(0, *(v6 + 2) + 1, 1, v6);
        }

        v19 = *(v6 + 2);
        v18 = *(v6 + 3);
        result = v1;
        if (v19 >= v18 >> 1)
        {
          v22 = sub_1E4AF29AC((v18 > 1), v19 + 1, 1, v6);
          v20 = v14;
          v6 = v22;
          result = v1;
        }

        else
        {
          v20 = v14;
        }

        *(v6 + 2) = v19 + 1;
        v21 = &v6[16 * v19];
        *(v21 + 4) = v5;
        *(v21 + 5) = v20;
        if (v20 < *(v24 + 16))
        {
          v5 = v20 + 1;
          if (v35 > v20)
          {
            continue;
          }

          goto LABEL_39;
        }
      }

      return sub_1E4BF0B0C();
    }

    break;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1E4B78F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EB8, &qword_1E4C063F0);
  v3 = *(v2 - 8);
  v61 = v2;
  v62 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v48 - v4);
  v51 = sub_1E4BEFABC();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E98, &qword_1E4C0E758);
  MEMORY[0x1EEE9AC00](v48);
  v8 = (&v48 - v7);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EA0, &qword_1E4C0E760);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EA8, &qword_1E4C0E768);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E78, &qword_1E4C0E740);
  v60 = a1;
  sub_1E4BF0B1C();
  v15 = sub_1E4B14808(&qword_1ECF95EB0, &qword_1ECF95EA8, &qword_1E4C0E768, MEMORY[0x1E69E7BC8]);
  sub_1E4BF02EC();
  sub_1E4BF033C();
  if (v63 == v66[0])
  {
    return (*(v11 + 8))(v14, v10);
  }

  v56 = v15;
  v17 = sub_1E4BF03BC();
  v18 = v10;
  v21 = *v19;
  v20 = v19[1];
  v22 = v58;
  v17(v66, 0);
  v23 = *(v11 + 8);
  v57 = v18;
  v23(v14, v18);
  sub_1E4BF0B1C();
  sub_1E4B7A1B0(1);
  sub_1E4AF1898(v8, v22, &qword_1ECF95E98, &qword_1E4C0E758);
  v24 = *(v59 + 36);
  v25 = *v8;
  sub_1E4AE0AE4(v8, &qword_1ECF95E98, &qword_1E4C0E758);
  *(v22 + v24) = v25;
  v26 = *(v22 + 8);
  if (v25 != v26)
  {
    v55 = *v22;
    v28 = v52;
    v29 = v52[7];
    v22 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

  v24 = v20;
  v27 = v52;
  while (1)
  {
    sub_1E4AE0AE4(v58, &qword_1ECF95EA0, &qword_1E4C0E760);
    v40 = v27[7];
    v28 = v27 + 7;
    v29 = v40;
    v52 = v28;
    if (v24 != v40[2])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1E4B7A940(v29);
      }

      *v52 = v29;
      v28 = &qword_1ECF92EB8;
      while (1)
      {
        if (v21 != v24)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v20 = v29[2];
          if (v21 >= v20)
          {
            goto LABEL_53;
          }

          v25 = v29 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
          v22 = *(v62 + 72);
          v41 = &v25[v22 * v21];
          sub_1E4B3AA00(v41, v66);
          if (v24 >= v20)
          {
            goto LABEL_54;
          }

          v22 = &v25[v22 * v24];
          sub_1E4B3AA00(v22, &v63);
          v42 = v65;
          v43 = v63;
          v5[1] = v64;
          v5[2] = v42;
          *v5 = v43;
          v20 = v61;
          sub_1E4BEFAAC();
          if (v21 >= v29[2])
          {
            goto LABEL_55;
          }

          sub_1E4AF1900(v5, v41, &qword_1ECF92EB8, &qword_1E4C063F0);
          sub_1E4B3AA00(v66, v5);
          sub_1E4BEFAAC();
          sub_1E4B3AAA0(v66);
          if (v24 >= v29[2])
          {
            goto LABEL_56;
          }

          sub_1E4AF1900(v5, v22, &qword_1ECF92EB8, &qword_1E4C063F0);
        }

        v44 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v45 = v29[2];
        if (v21 >= v45 || v24 >= v45)
        {
          goto LABEL_51;
        }

        ++v24;
        ++v21;
        if (v24 == v45)
        {
          *v52 = v29;
          v24 = v29[2];
          v21 = v44;
          goto LABEL_42;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_42:
    if (v24 >= v21)
    {
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    v29 = sub_1E4B7A940(v29);
LABEL_6:
    v60 = *(v48 + 40);
    v28[7] = v29;
    v30 = v58;
    v54 = v24;
    v53 = v22;
    do
    {
      *&v63 = v25;
      v66[0] = v55;
      v66[1] = v22;
      v22 = v57;
      sub_1E4BF02FC();
      v32 = sub_1E4BF03BC();
      v25 = *v33;
      v59 = v33[1];
      v32(v66, 0);
      v28 = (v30 + v60);
      sub_1E4BF034C();
      if (v20 != v25)
      {
        v24 = &qword_1ECF92EB8;
        if (v20 >= v25)
        {
          goto LABEL_57;
        }

        while (1)
        {
          if (v21 != v20)
          {
            if ((v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            v28 = v29[2];
            if (v21 >= v28)
            {
              goto LABEL_46;
            }

            v34 = v29 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
            v35 = *(v62 + 72);
            v22 = &v34[v35 * v21];
            sub_1E4B3AA00(v22, v66);
            if (v20 >= v28)
            {
              goto LABEL_47;
            }

            v28 = &v34[v35 * v20];
            sub_1E4B3AA00(v28, &v63);
            v36 = v65;
            v37 = v63;
            v5[1] = v64;
            v5[2] = v36;
            *v5 = v37;
            sub_1E4BEFAAC();
            if (v21 >= v29[2])
            {
              goto LABEL_48;
            }

            v22 = &qword_1E4C063F0;
            sub_1E4AF1900(v5, &v34[v35 * v21], &qword_1ECF92EB8, &qword_1E4C063F0);
            sub_1E4B3AA00(v66, v5);
            sub_1E4BEFAAC();
            sub_1E4B3AAA0(v66);
            if (v20 >= v29[2])
            {
              goto LABEL_49;
            }

            sub_1E4AF1900(v5, v28, &qword_1ECF92EB8, &qword_1E4C063F0);
          }

          v38 = v29[2];
          if (v21 >= v38 || v20 >= v38)
          {
            break;
          }

          ++v21;
          if (v25 == ++v20)
          {
            goto LABEL_7;
          }
        }

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
        goto LABEL_50;
      }

LABEL_7:
      v30 = v58;
      v31 = v59;
      v25 = *(v58 + v54);
      v20 = v59;
      v22 = v53;
    }

    while (v25 != v53);
    v27 = v52;
    v52[7] = v29;
    v24 = v31;
  }

  v47 = v49;
  sub_1E4BEFAAC();
  sub_1E4B7C9C0(v21, v24, MEMORY[0x1E69E7CC0], sub_1E4AF2988, &qword_1ECF92EB8, &qword_1E4C063F0);
  return (*(v50 + 8))(v47, v51);
}

uint64_t sub_1E4B797F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F40, &qword_1E4BFDCD0);
  v3 = *(v2 - 8);
  v61 = v2;
  v62 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - v4;
  v51 = sub_1E4BEFABC();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E98, &qword_1E4C0E758);
  MEMORY[0x1EEE9AC00](v48);
  v8 = (&v48 - v7);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EA0, &qword_1E4C0E760);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EA8, &qword_1E4C0E768);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E78, &qword_1E4C0E740);
  v60 = a1;
  sub_1E4BF0B1C();
  v15 = sub_1E4B14808(&qword_1ECF95EB0, &qword_1ECF95EA8, &qword_1E4C0E768, MEMORY[0x1E69E7BC8]);
  sub_1E4BF02EC();
  sub_1E4BF033C();
  if (v63 == v67[0])
  {
    return (*(v11 + 8))(v14, v10);
  }

  v56 = v15;
  v17 = sub_1E4BF03BC();
  v18 = v10;
  v21 = *v19;
  v20 = v19[1];
  v22 = v58;
  v17(v67, 0);
  v23 = *(v11 + 8);
  v57 = v18;
  v23(v14, v18);
  sub_1E4BF0B1C();
  sub_1E4B7A1B0(1);
  sub_1E4AF1898(v8, v22, &qword_1ECF95E98, &qword_1E4C0E758);
  v24 = *(v59 + 36);
  v25 = *v8;
  sub_1E4AE0AE4(v8, &qword_1ECF95E98, &qword_1E4C0E758);
  *(v22 + v24) = v25;
  v26 = *(v22 + 8);
  if (v25 != v26)
  {
    v55 = *v22;
    v28 = v52;
    v29 = v52[7];
    v22 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

  v24 = v20;
  v27 = v52;
  while (1)
  {
    sub_1E4AE0AE4(v58, &qword_1ECF95EA0, &qword_1E4C0E760);
    v40 = v27[7];
    v28 = v27 + 7;
    v29 = v40;
    v52 = v28;
    if (v24 != v40[2])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1E4B7A9F4(v29);
      }

      *v52 = v29;
      v28 = &qword_1ECF92F40;
      while (1)
      {
        if (v21 != v24)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v20 = v29[2];
          if (v21 >= v20)
          {
            goto LABEL_53;
          }

          v25 = v29 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
          v22 = *(v62 + 72);
          v41 = &v25[v22 * v21];
          sub_1E4B41A48(v41, v67);
          if (v24 >= v20)
          {
            goto LABEL_54;
          }

          v22 = &v25[v22 * v24];
          sub_1E4B41A48(v22, &v63);
          v42 = v65;
          *(v5 + 6) = v66;
          v43 = v63;
          *(v5 + 1) = v64;
          *(v5 + 2) = v42;
          *v5 = v43;
          v20 = v61;
          sub_1E4BEFAAC();
          if (v21 >= v29[2])
          {
            goto LABEL_55;
          }

          sub_1E4AF1900(v5, v41, &qword_1ECF92F40, &qword_1E4BFDCD0);
          sub_1E4B41A48(v67, v5);
          sub_1E4BEFAAC();
          sub_1E4B41AA0(v67);
          if (v24 >= v29[2])
          {
            goto LABEL_56;
          }

          sub_1E4AF1900(v5, v22, &qword_1ECF92F40, &qword_1E4BFDCD0);
        }

        v44 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v45 = v29[2];
        if (v21 >= v45 || v24 >= v45)
        {
          goto LABEL_51;
        }

        ++v24;
        ++v21;
        if (v24 == v45)
        {
          *v52 = v29;
          v24 = v29[2];
          v21 = v44;
          goto LABEL_42;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_42:
    if (v24 >= v21)
    {
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    v29 = sub_1E4B7A9F4(v29);
LABEL_6:
    v60 = *(v48 + 40);
    v28[7] = v29;
    v30 = v58;
    v54 = v24;
    v53 = v22;
    do
    {
      *&v63 = v25;
      v67[0] = v55;
      v67[1] = v22;
      v22 = v57;
      sub_1E4BF02FC();
      v32 = sub_1E4BF03BC();
      v25 = *v33;
      v59 = v33[1];
      v32(v67, 0);
      v28 = (v30 + v60);
      sub_1E4BF034C();
      if (v20 != v25)
      {
        v24 = &qword_1ECF92F40;
        if (v20 >= v25)
        {
          goto LABEL_57;
        }

        while (1)
        {
          if (v21 != v20)
          {
            if ((v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            v28 = v29[2];
            if (v21 >= v28)
            {
              goto LABEL_46;
            }

            v34 = v29 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
            v35 = *(v62 + 72);
            v22 = &v34[v35 * v21];
            sub_1E4B41A48(v22, v67);
            if (v20 >= v28)
            {
              goto LABEL_47;
            }

            v28 = &v34[v35 * v20];
            sub_1E4B41A48(v28, &v63);
            v36 = v65;
            *(v5 + 6) = v66;
            v37 = v63;
            *(v5 + 1) = v64;
            *(v5 + 2) = v36;
            *v5 = v37;
            sub_1E4BEFAAC();
            if (v21 >= v29[2])
            {
              goto LABEL_48;
            }

            v22 = &qword_1E4BFDCD0;
            sub_1E4AF1900(v5, &v34[v35 * v21], &qword_1ECF92F40, &qword_1E4BFDCD0);
            sub_1E4B41A48(v67, v5);
            sub_1E4BEFAAC();
            sub_1E4B41AA0(v67);
            if (v20 >= v29[2])
            {
              goto LABEL_49;
            }

            sub_1E4AF1900(v5, v28, &qword_1ECF92F40, &qword_1E4BFDCD0);
          }

          v38 = v29[2];
          if (v21 >= v38 || v20 >= v38)
          {
            break;
          }

          ++v21;
          if (v25 == ++v20)
          {
            goto LABEL_7;
          }
        }

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
        goto LABEL_50;
      }

LABEL_7:
      v30 = v58;
      v25 = *(v58 + v54);
      v31 = v59;
      v20 = v59;
      v22 = v53;
    }

    while (v25 != v53);
    v27 = v52;
    v52[7] = v29;
    v24 = v31;
  }

  v47 = v49;
  sub_1E4BEFAAC();
  sub_1E4B7C9C0(v21, v24, MEMORY[0x1E69E7CC0], sub_1E4AF2B1C, &qword_1ECF92F40, &qword_1E4BFDCD0);
  return (*(v50 + 8))(v47, v51);
}

uint64_t sub_1E4B7A0AC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a3 + 16);
  if (!v6)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
    v13 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    if (v6 == ++v11)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_1E4B7A1B0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EA8, &qword_1E4C0E768);
    sub_1E4B14808(&qword_1ECF95EB0, &qword_1ECF95EA8, &qword_1E4C0E768, MEMORY[0x1E69E7BC8]);
    sub_1E4BF02EC();
    sub_1E4BF033C();
    sub_1E4BF032C();
    if (v4)
    {
      sub_1E4BF033C();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1E4BF033C();
    if (v5 >= v6)
    {
      sub_1E4BF03AC();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4B7A380(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v50 = a5;
  v7 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  v52 = v5;
  v20 = *v5;
  v60 = a1;
  v21 = v62;
  result = sub_1E4B7A0AC(a1, a2, v20, v7, a4);
  if (!v21)
  {
    v56 = v19;
    v51 = v17;
    v49 = v14;
    v62 = 0;
    if (v23)
    {
      return *(v20 + 16);
    }

    v54 = a2;
    v57 = a4;
    v59 = result;
    v24 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v25 = v20;
      v27 = (v20 + 16);
      v26 = *(v20 + 16);
      v28 = v56;
      if (v24 == v26)
      {
        return v59;
      }

      v29 = v60;
      v53 = v11;
      while (v24 < v26)
      {
        v30 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v61 = v25;
        v55 = v30;
        v31 = v25 + v30;
        v32 = v29;
        v33 = *(v11 + 72);
        v58 = v33 * v24;
        v34 = v7;
        v35 = v57;
        sub_1E4AF1898(v31 + v33 * v24, v28, v7, v57);
        v36 = v28;
        v37 = v62;
        v38 = v32(v28);
        v39 = v36;
        v7 = v34;
        result = sub_1E4AE0AE4(v39, v34, v35);
        v62 = v37;
        if (v37)
        {
          return result;
        }

        if (v38)
        {
          v29 = v60;
          v25 = v61;
          v11 = v53;
        }

        else
        {
          v40 = v59;
          if (v24 == v59)
          {
            v29 = v60;
            v25 = v61;
            v11 = v53;
          }

          else
          {
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v41 = *v27;
            if (v59 >= v41)
            {
              goto LABEL_28;
            }

            v42 = v33 * v59;
            v43 = v31 + v33 * v59;
            v44 = v57;
            result = sub_1E4AF1898(v43, v51, v34, v57);
            if (v24 >= v41)
            {
              goto LABEL_29;
            }

            v45 = v49;
            sub_1E4AF1898(v31 + v58, v49, v34, v44);
            v46 = v44;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v29 = v60;
              v25 = v61;
            }

            else
            {
              v25 = v50(v61);
              v29 = v60;
            }

            v11 = v53;
            v47 = v25 + v55;
            result = sub_1E4AF1900(v45, v25 + v55 + v42, v7, v46);
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_30;
            }

            result = sub_1E4AF1900(v51, v47 + v58, v7, v46);
            *v52 = v25;
            v40 = v59;
          }

          v59 = v40 + 1;
        }

        v28 = v56;
        ++v24;
        v27 = (v25 + 16);
        v26 = *(v25 + 16);
        if (v24 == v26)
        {
          return v59;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E4B7A990(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1E4BF061C();
  }

  return sub_1E4BF06CC();
}

uint64_t sub_1E4B7AB14(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v66 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v61 - v11;
  v12 = a1[6];
  v13 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E4B8518C;
  *(v14 + 24) = a2;
  v15 = *(v13 + 72);
  v16 = sub_1E4B0DCD4();
  swift_retain_n();
  v15(sub_1E4B84300, v14, &type metadata for MMSResultNotification, v16, v12, v13);

  v17 = a1[2];
  os_unfair_lock_lock((v17 + 104));
  sub_1E4B853B4((v17 + 16));
  os_unfair_lock_unlock((v17 + 104));
  os_unfair_lock_lock((v17 + 104));
  v18 = sub_1E4B76B24(sub_1E4B78504, 0);
  os_unfair_lock_unlock((v17 + 104));
  v72 = *(v18 + 16);
  if (v72)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_38:
      swift_once();
    }

    v19 = sub_1E4BEFB7C();
    v20 = __swift_project_value_buffer(v19, qword_1ECF95E30);

    v71 = v20;
    v21 = sub_1E4BEFB5C();
    v22 = sub_1E4BF04BC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v67;
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = a2;
      v27 = swift_slowAlloc();
      v75 = v27;
      *v25 = 134218242;
      *(v25 + 4) = *(v18 + 16);

      *(v25 + 12) = 2080;
      LOBYTE(v74) = 2;
      v28 = sub_1E4BEFEFC();
      v30 = sub_1E4B30548(v28, v29, &v75);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1E4AD3000, v21, v22, "Flushing %ld messages (%s) to client, since it started listening for them", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v31 = v27;
      a2 = v26;
      MEMORY[0x1E6921800](v31, -1, -1);
      MEMORY[0x1E6921800](v25, -1, -1);
    }

    else
    {
    }

    v33 = 0;
    v34 = v18 + 32;
    v69 = (v66 + 56);
    v70 = (v66 + 32);
    v68 = (v66 + 48);
    v63 = (v66 + 8);
    v64 = a2;
    do
    {
      if (v33 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_1E4B3AA00(v34, &v75);
      sub_1E4ADB544(v76, &v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v35 = v73;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v37 = *(Strong + 40);
          if (v35 == 8)
          {
            v38 = *(v37 + 16);
            os_unfair_lock_lock((v38 + 24));
            v39 = sub_1E4B8EFD0();
            if (v40)
            {
              v41 = v39;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v43 = *(v38 + 16);
              v74 = v43;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_1E4BDF380();
                v43 = v74;
              }

              (*(v66 + 32))(v24, v43[7] + *(v66 + 72) * v41, v8);
              sub_1E4BE6980();
              v44 = 0;
              *(v38 + 16) = v43;
            }

            else
            {
              v44 = 1;
            }

            (*v69)(v24, v44, 1, v8);
            os_unfair_lock_unlock((v38 + 24));
            if ((*v68)(v24, 1, v8) == 1)
            {
              sub_1E4AE0AE4(v24, &qword_1ECF95EC0, &unk_1E4C0E780);
            }

            else
            {
              v58 = v62;
              (*v70)(v62, v24, v8);
              sub_1E4BF01BC();
              (*v63)(v58, v8);
            }
          }

          else
          {
            sub_1E4B33840();
            v48 = swift_allocError();
            *v49 = v35;
            v50 = *(v37 + 16);
            os_unfair_lock_lock((v50 + 24));
            v51 = sub_1E4B8EFD0();
            if (v52)
            {
              v53 = v51;
              v54 = swift_isUniquelyReferenced_nonNull_native();
              v55 = *(v50 + 16);
              v74 = v55;
              if (!v54)
              {
                sub_1E4BDF380();
                v55 = v74;
              }

              v56 = v65;
              (*(v66 + 32))(v65, v55[7] + *(v66 + 72) * v53, v8);
              sub_1E4BE6980();
              v57 = 0;
              *(v50 + 16) = v55;
            }

            else
            {
              v57 = 1;
              v56 = v65;
            }

            (*v69)(v56, v57, 1, v8);
            os_unfair_lock_unlock((v50 + 24));
            if ((*v68)(v56, 1, v8) == 1)
            {
              sub_1E4AE0AE4(v56, &qword_1ECF95EC0, &unk_1E4C0E780);
            }

            else
            {
              v59 = v61;
              (*v70)(v61, v56, v8);
              v74 = v48;
              v60 = v48;
              sub_1E4BF01AC();
              (*v63)(v59, v8);
            }

            a2 = v64;
            v24 = v67;
          }
        }
      }

      else
      {
        v45 = sub_1E4BEFB5C();
        v46 = sub_1E4BF04DC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1E4AD3000, v45, v46, "Got an unexpected message type when flushing pending messages", v47, 2u);
          MEMORY[0x1E6921800](v47, -1, -1);
        }
      }

      ++v33;
      v34 += 48;
    }

    while (v72 != v33);
  }

  else
  {
  }
}

uint64_t sub_1E4B7B3D0(void *a1, uint64_t a2)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF945D0, &qword_1E4C055F0);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v69 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FF0, &qword_1E4C0E8C0);
  v6 = *(v5 - 8);
  v87 = v5;
  v88 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v65 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F60, &qword_1E4BFDCF0);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v65 - v8;
  v76 = type metadata accessor for MMSService.IncomingMessageNotification(0);
  v9 = MEMORY[0x1EEE9AC00](v76);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FF8, &qword_1E4C0E8C8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v75 = &v65 - v13;
  v14 = type metadata accessor for MMSReceivedNotification(0);
  v90 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[6];
  v17 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1E4B84F94;
  *(v18 + 24) = a2;
  v19 = *(v17 + 72);
  v20 = sub_1E4B85014(&qword_1ECF94888, type metadata accessor for MMSReceivedNotification, &protocol conformance descriptor for MMSReceivedNotification);
  v81 = a2;
  swift_retain_n();
  v19(sub_1E4B84F9C, v18, v14, v20, v16, v17);

  v21 = a1[2];
  os_unfair_lock_lock((v21 + 104));
  sub_1E4B853B4((v21 + 16));
  os_unfair_lock_unlock((v21 + 104));
  os_unfair_lock_lock((v21 + 104));
  v22 = sub_1E4B76B24(sub_1E4B78514, 0);
  os_unfair_lock_unlock((v21 + 104));
  v85 = *(v22 + 16);
  if (v85)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v23 = sub_1E4BEFB7C();
    v24 = __swift_project_value_buffer(v23, qword_1ECF95E30);

    v80 = v24;
    v25 = sub_1E4BEFB5C();
    v26 = sub_1E4BF04BC();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v74;
    v79 = v22;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v94 = v30;
      *v29 = 134218242;
      *(v29 + 4) = *(v22 + 16);

      *(v29 + 12) = 2080;
      v93[0] = 4;
      v31 = sub_1E4BEFEFC();
      v33 = sub_1E4B30548(v31, v32, &v94);

      *(v29 + 14) = v33;
      v22 = v79;
      _os_log_impl(&dword_1E4AD3000, v25, v26, "Flushing %ld messages (%s) to client, since it started listening for them", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E6921800](v30, -1, -1);
      MEMORY[0x1E6921800](v29, -1, -1);
    }

    else
    {
    }

    v35 = v92;
    v36 = v75;
    v37 = 0;
    v84 = v22 + 32;
    v38 = (v90 + 7);
    v39 = &qword_1E4BFDCF0;
    v83 = (v90 + 7);
    v68 = v14;
    v67 = (v89 + 8);
    v66 = (v88 + 8);
    v90 = (v89 + 16);
    do
    {
      if (v37 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v84 + 48 * v37, &v94);
      sub_1E4ADB544(&v95, v93);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v40 = swift_dynamicCast();
      v41 = *v38;
      if (v40)
      {
        v41(v36, 0, 1, v14);
        sub_1E4B8505C(v36, v28, type metadata accessor for MMSReceivedNotification);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v43 = Strong;
          v82 = v37;
          sub_1E4B2D81C(v28);
          sub_1E4B850C4(v28, v35, type metadata accessor for MMSMessage);
          swift_weakInit();
          swift_weakAssign();
          v44 = *(*(v43 + 24) + 16);
          os_unfair_lock_lock((v44 + 24));
          v45 = *(v44 + 16);

          os_unfair_lock_unlock((v44 + 24));
          v46 = v45;
          v47 = *(v45 + 16);
          if (v47)
          {
            v78 = v43;
            v89 = *(v73 + 28);
            v48 = (*(v72 + 80) + 32) & ~*(v72 + 80);
            v77 = v46;
            v49 = v46 + v48;
            v88 = *(v72 + 72);
            v50 = v91;
            v51 = v69;
            v52 = v71;
            v53 = v70;
            v54 = v67;
            v55 = v66;
            do
            {
              sub_1E4AF1898(v49, v52, &qword_1ECF92F60, &qword_1E4BFDCF0);
              (*v90)(v51, v52 + v89, v50);
              sub_1E4AE0AE4(v52, &qword_1ECF92F60, &qword_1E4BFDCF0);
              sub_1E4B850C4(v92, v53, type metadata accessor for MMSService.IncomingMessageNotification);
              v56 = v86;
              sub_1E4BF022C();
              v50 = v91;
              (*v54)(v51, v91);
              (*v55)(v56, v87);
              v49 += v88;
              --v47;
            }

            while (v47);

            v35 = v92;
            v36 = v75;
            v14 = v68;
            v28 = v74;
            v22 = v79;
            v39 = &qword_1E4BFDCF0;
          }

          else
          {
          }

          sub_1E4B8512C(v35, type metadata accessor for MMSService.IncomingMessageNotification);

          v37 = v82;
          v38 = v83;
        }

        sub_1E4B8512C(v28, type metadata accessor for MMSReceivedNotification);
      }

      else
      {
        v57 = v35;
        v58 = v28;
        v59 = v39;
        v60 = v37;
        v41(v36, 1, 1, v14);
        sub_1E4AE0AE4(v36, &qword_1ECF95FF8, &qword_1E4C0E8C8);
        v61 = sub_1E4BEFB5C();
        v62 = sub_1E4BF04DC();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_1E4AD3000, v61, v62, "Got an unexpected message type when flushing pending messages", v63, 2u);
          v64 = v63;
          v22 = v79;
          MEMORY[0x1E6921800](v64, -1, -1);
        }

        v37 = v60;
        v38 = v83;
        v39 = v59;
        v28 = v58;
        v35 = v57;
      }

      ++v37;
    }

    while (v37 != v85);
  }

  else
  {
  }
}

uint64_t sub_1E4B7BEB4()
{
  v1 = sub_1E4BEFBBC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = swift_allocObject();
  v2[2] = 0xD00000000000001CLL;
  v2[3] = 0x80000001E4BF1BF0;
  v2[4] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96018, &unk_1E4C0E8F0);
  v4 = swift_allocObject();
  v19 = qword_1EE2C2010;
  sub_1E4BEFAEC();
  v5 = *(*v4 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BB8, &qword_1E4C02170);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v22[6] = v5;
  *(v4 + v5) = v6;
  v7 = *(*v4 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BC0, &unk_1E4C0E900);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 24) = 0;
  *(v8 + 16) = v9;
  *(v4 + v7) = v8;
  v10 = (v4 + *(*v4 + 120));
  *v10 = sub_1E4B851F0;
  v10[1] = v2;
  v11 = sub_1E4BEFC3C();

  sub_1E4BEFBAC();
  v12 = v11;
  v13 = sub_1E4BEFB9C();
  if (v0)
  {

    v14 = sub_1E4BEFAFC();
    (*(*(v14 - 8) + 8))(v4 + v19, v14);
    sub_1E4AD651C(*v10, v10[1]);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BC8, &qword_1E4C02178);
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    *(v16 + 16) = v15;
    *(v4 + *(*v4 + 128)) = v16;
    *(v4 + *(*v4 + 112)) = 1;

    sub_1E4B21ABC(v17);

    v22[3] = v3;
    v22[4] = sub_1E4B14808(&qword_1ECF96020, &qword_1ECF96018, &unk_1E4C0E8F0, &unk_1E4C0EEA8);
    v22[0] = v4;
    v21[3] = &type metadata for DefaultNotifyProvider;
    v21[4] = &off_1F5EB8FD8;
    v20[3] = &type metadata for TimeProvider;
    v20[4] = &off_1F5EB9B80;
    type metadata accessor for Messaging.Client();
    v12 = swift_allocObject();
    sub_1E4B776CC(v22, v21, v20);
  }

  return v12;
}

uint64_t sub_1E4B7C29C(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E4B85194;
  *(v6 + 24) = a2;
  v7 = *(v5 + 72);
  v8 = sub_1E4B8519C();
  swift_retain_n();
  v7(sub_1E4B853CC, v6, &type metadata for ServiceStatusNotification, v8, v4, v5);

  v9 = a1[2];
  os_unfair_lock_lock((v9 + 104));
  sub_1E4B853B4((v9 + 16));
  os_unfair_lock_unlock((v9 + 104));
  os_unfair_lock_lock((v9 + 104));
  v10 = sub_1E4B76B24(sub_1E4B78524, 0);
  os_unfair_lock_unlock((v9 + 104));
  v11 = *(v10 + 16);
  if (v11)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_21:
      swift_once();
    }

    v12 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v12, qword_1ECF95E30);

    v13 = sub_1E4BEFB5C();
    v14 = sub_1E4BF04BC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 134218242;
      *(v15 + 4) = *(v10 + 16);

      *(v15 + 12) = 2080;
      LOBYTE(v29[0]) = 8;
      v17 = sub_1E4BEFEFC();
      v19 = sub_1E4B30548(v17, v18, &v30);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1E4AD3000, v13, v14, "Flushing %ld messages (%s) to client, since it started listening for them", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E6921800](v16, -1, -1);
      MEMORY[0x1E6921800](v15, -1, -1);
    }

    else
    {
    }

    v21 = 0;
    v22 = v10 + 32;
    do
    {
      if (v21 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_1E4B3AA00(v22, &v30);
      sub_1E4ADB544(v31, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v29[0] = v28;
          sub_1E4B35E3C(v29);
        }

        else
        {
        }
      }

      else
      {
        v28 = 0;

        v23 = sub_1E4BEFB5C();
        v24 = sub_1E4BF04DC();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = a2;
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_1E4AD3000, v23, v24, "Got an unexpected message type when flushing pending messages", v26, 2u);
          v27 = v26;
          a2 = v25;
          MEMORY[0x1E6921800](v27, -1, -1);
        }
      }

      ++v21;
      v22 += 48;
    }

    while (v11 != v21);
  }

  else
  {
  }
}

unint64_t sub_1E4B7C724(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_1E4B848C4(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_1E4B7C80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(*(result - 8) + 72);
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = *(*(result - 8) + 80);
  v16 = (v13 + 32) & ~v13;
  v17 = v11 + v16 + v14 * a1;
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v15);
  v19 = a3 - v15;
  if (v18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = *(v11 + 16);
  if (__OFSUB__(v20, a2))
  {
    goto LABEL_23;
  }

  result = v17 + v14 * a3;
  v21 = v11 + v16 + v14 * a2;
  if (result < v21 || result >= v21 + (v20 - a2) * v14)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v21)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v23 = *(v11 + 16);
  v18 = __OFADD__(v23, v19);
  v24 = v23 + v19;
  if (v18)
  {
    goto LABEL_24;
  }

  *(v11 + 16) = v24;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1E4B7C9C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = *(a3 + 16);
  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > *(v8 + 24) >> 1)
  {
    v8 = a4();
    *v6 = v8;
  }

  result = sub_1E4B7C80C(v10, a2, v13, a3, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_1E4B7CABC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v66 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v61 - v11;
  v12 = a1[6];
  v13 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E4B84EB0;
  *(v14 + 24) = a2;
  v15 = *(v13 + 72);
  v16 = sub_1E4B84EB8();
  swift_retain_n();
  v15(sub_1E4B853CC, v14, &type metadata for SMSResultNotification, v16, v12, v13);

  v17 = a1[2];
  os_unfair_lock_lock((v17 + 104));
  sub_1E4B853B4((v17 + 16));
  os_unfair_lock_unlock((v17 + 104));
  os_unfair_lock_lock((v17 + 104));
  v18 = sub_1E4B76B24(sub_1E4B78534, 0);
  os_unfair_lock_unlock((v17 + 104));
  v72 = *(v18 + 16);
  if (v72)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_38:
      swift_once();
    }

    v19 = sub_1E4BEFB7C();
    v20 = __swift_project_value_buffer(v19, qword_1ECF95E30);

    v71 = v20;
    v21 = sub_1E4BEFB5C();
    v22 = sub_1E4BF04BC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v67;
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = a2;
      v27 = swift_slowAlloc();
      v75 = v27;
      *v25 = 134218242;
      *(v25 + 4) = *(v18 + 16);

      *(v25 + 12) = 2080;
      LOBYTE(v74) = 1;
      v28 = sub_1E4BEFEFC();
      v30 = sub_1E4B30548(v28, v29, &v75);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1E4AD3000, v21, v22, "Flushing %ld messages (%s) to client, since it started listening for them", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v31 = v27;
      a2 = v26;
      MEMORY[0x1E6921800](v31, -1, -1);
      MEMORY[0x1E6921800](v25, -1, -1);
    }

    else
    {
    }

    v33 = 0;
    v34 = v18 + 32;
    v69 = (v66 + 56);
    v70 = (v66 + 32);
    v68 = (v66 + 48);
    v63 = (v66 + 8);
    v64 = a2;
    do
    {
      if (v33 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_1E4B3AA00(v34, &v75);
      sub_1E4ADB544(v76, &v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v35 = v73;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v37 = *(Strong + 48);
          if (v35 == 4)
          {
            v38 = *(v37 + 16);
            os_unfair_lock_lock((v38 + 24));
            v39 = sub_1E4B8EFD0();
            if (v40)
            {
              v41 = v39;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v43 = *(v38 + 16);
              v74 = v43;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_1E4BDF72C();
                v43 = v74;
              }

              (*(v66 + 32))(v24, v43[7] + *(v66 + 72) * v41, v8);
              sub_1E4BE6980();
              v44 = 0;
              *(v38 + 16) = v43;
            }

            else
            {
              v44 = 1;
            }

            (*v69)(v24, v44, 1, v8);
            os_unfair_lock_unlock((v38 + 24));
            if ((*v68)(v24, 1, v8) == 1)
            {
              sub_1E4AE0AE4(v24, &qword_1ECF95EC0, &unk_1E4C0E780);
            }

            else
            {
              v58 = v62;
              (*v70)(v62, v24, v8);
              sub_1E4BF01BC();
              (*v63)(v58, v8);
            }
          }

          else
          {
            sub_1E4B84F0C();
            v48 = swift_allocError();
            *v49 = v35;
            v50 = *(v37 + 16);
            os_unfair_lock_lock((v50 + 24));
            v51 = sub_1E4B8EFD0();
            if (v52)
            {
              v53 = v51;
              v54 = swift_isUniquelyReferenced_nonNull_native();
              v55 = *(v50 + 16);
              v74 = v55;
              if (!v54)
              {
                sub_1E4BDF72C();
                v55 = v74;
              }

              v56 = v65;
              (*(v66 + 32))(v65, v55[7] + *(v66 + 72) * v53, v8);
              sub_1E4BE6980();
              v57 = 0;
              *(v50 + 16) = v55;
            }

            else
            {
              v57 = 1;
              v56 = v65;
            }

            (*v69)(v56, v57, 1, v8);
            os_unfair_lock_unlock((v50 + 24));
            if ((*v68)(v56, 1, v8) == 1)
            {
              sub_1E4AE0AE4(v56, &qword_1ECF95EC0, &unk_1E4C0E780);
            }

            else
            {
              v59 = v61;
              (*v70)(v61, v56, v8);
              v74 = v48;
              v60 = v48;
              sub_1E4BF01AC();
              (*v63)(v59, v8);
            }

            a2 = v64;
            v24 = v67;
          }
        }
      }

      else
      {
        v45 = sub_1E4BEFB5C();
        v46 = sub_1E4BF04DC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1E4AD3000, v45, v46, "Got an unexpected message type when flushing pending messages", v47, 2u);
          MEMORY[0x1E6921800](v47, -1, -1);
        }
      }

      ++v33;
      v34 += 48;
    }

    while (v72 != v33);
  }

  else
  {
  }
}

uint64_t sub_1E4B7D378(void *a1, uint64_t a2)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94548, &qword_1E4C05560);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v73 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FA0, &qword_1E4C0E880);
  v6 = *(v5 - 8);
  v91 = v5;
  v92 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v69 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F20, &qword_1E4BFDCB0);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v69 - v8;
  v9 = type metadata accessor for SMSService.IncomingMessageNotification(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FA8, &qword_1E4C0E888);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v79 = &v69 - v14;
  v15 = type metadata accessor for SMSReceivedNotification(0);
  v94 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v80 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v69 - v18;
  v19 = a1[6];
  v20 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E4B84E80;
  *(v21 + 24) = a2;
  v22 = *(v20 + 72);
  v23 = sub_1E4B85014(&qword_1ECF94880, type metadata accessor for SMSReceivedNotification, &protocol conformance descriptor for SMSReceivedNotification);
  v85 = a2;
  swift_retain_n();
  v22(sub_1E4B84E88, v21, v15, v23, v19, v20);

  v24 = a1[2];
  os_unfair_lock_lock((v24 + 104));
  sub_1E4B853B4((v24 + 16));
  os_unfair_lock_unlock((v24 + 104));
  os_unfair_lock_lock((v24 + 104));
  v25 = sub_1E4B76B24(sub_1E4B78544, 0);
  os_unfair_lock_unlock((v24 + 104));
  v89 = *(v25 + 16);
  if (v89)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v26 = sub_1E4BEFB7C();
    v27 = __swift_project_value_buffer(v26, qword_1ECF95E30);

    v84 = v27;
    v28 = sub_1E4BEFB5C();
    v29 = sub_1E4BF04BC();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v78;
    v83 = v25;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v98 = v33;
      *v32 = 134218242;
      *(v32 + 4) = *(v25 + 16);

      *(v32 + 12) = 2080;
      v97[0] = 3;
      v34 = sub_1E4BEFEFC();
      v36 = sub_1E4B30548(v34, v35, &v98);

      *(v32 + 14) = v36;
      v25 = v83;
      _os_log_impl(&dword_1E4AD3000, v28, v29, "Flushing %ld messages (%s) to client, since it started listening for them", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E6921800](v33, -1, -1);
      MEMORY[0x1E6921800](v32, -1, -1);
    }

    else
    {
    }

    v38 = v96;
    v39 = v79;
    v40 = 0;
    v88 = v25 + 32;
    v41 = (v94 + 7);
    v42 = &qword_1E4BFDCB0;
    v87 = (v94 + 7);
    v72 = v15;
    v71 = (v93 + 8);
    v70 = (v92 + 8);
    v94 = (v93 + 16);
    do
    {
      if (v40 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v88 + 48 * v40, &v98);
      sub_1E4ADB544(&v99, v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v43 = swift_dynamicCast();
      v44 = *v41;
      if (v43)
      {
        v44(v39, 0, 1, v15);
        sub_1E4B8505C(v39, v31, type metadata accessor for SMSReceivedNotification);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v46 = Strong;
          v86 = v40;
          v47 = v80;
          sub_1E4B850C4(v31, v80, type metadata accessor for SMSReceivedNotification);
          sub_1E4B8505C(v47, v38, type metadata accessor for SMSMessage);
          v48 = *(*(v46 + 24) + 16);
          os_unfair_lock_lock((v48 + 24));
          v49 = *(v48 + 16);

          os_unfair_lock_unlock((v48 + 24));
          v50 = v49;
          v51 = *(v49 + 16);
          if (v51)
          {
            v82 = v46;
            v93 = *(v77 + 28);
            v52 = (*(v76 + 80) + 32) & ~*(v76 + 80);
            v81 = v50;
            v53 = v50 + v52;
            v92 = *(v76 + 72);
            v54 = v95;
            v55 = v73;
            v56 = v75;
            v57 = v74;
            v58 = v71;
            v59 = v70;
            do
            {
              sub_1E4AF1898(v53, v56, &qword_1ECF92F20, &qword_1E4BFDCB0);
              (*v94)(v55, v56 + v93, v54);
              sub_1E4AE0AE4(v56, &qword_1ECF92F20, &qword_1E4BFDCB0);
              sub_1E4B850C4(v96, v57, type metadata accessor for SMSService.IncomingMessageNotification);
              v60 = v90;
              sub_1E4BF022C();
              v54 = v95;
              (*v58)(v55, v95);
              (*v59)(v60, v91);
              v53 += v92;
              --v51;
            }

            while (v51);

            v38 = v96;
            v39 = v79;
            v15 = v72;
            v31 = v78;
            v25 = v83;
            v42 = &qword_1E4BFDCB0;
          }

          else
          {
          }

          sub_1E4B8512C(v38, type metadata accessor for SMSService.IncomingMessageNotification);

          v40 = v86;
          v41 = v87;
        }

        sub_1E4B8512C(v31, type metadata accessor for SMSReceivedNotification);
      }

      else
      {
        v61 = v31;
        v62 = v38;
        v63 = v42;
        v64 = v40;
        v44(v39, 1, 1, v15);
        sub_1E4AE0AE4(v39, &qword_1ECF95FA8, &qword_1E4C0E888);
        v65 = sub_1E4BEFB5C();
        v66 = sub_1E4BF04DC();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_1E4AD3000, v65, v66, "Got an unexpected message type when flushing pending messages", v67, 2u);
          v68 = v67;
          v25 = v83;
          MEMORY[0x1E6921800](v68, -1, -1);
        }

        v40 = v64;
        v41 = v87;
        v42 = v63;
        v38 = v62;
        v31 = v61;
      }

      ++v40;
    }

    while (v40 != v89);
  }

  else
  {
  }
}

uint64_t sub_1E4B7DE70(void *a1, uint64_t a2)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94530, &qword_1E4C05550);
  v66 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v67 = &v45 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F98, &qword_1E4C0E878);
  v65 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v45 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F10, &qword_1E4BFDCA0);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v45 - v6;
  v7 = a1[6];
  v8 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E4B84E78;
  *(v9 + 24) = a2;
  v10 = *(v8 + 72);
  v11 = sub_1E4B484F0();
  swift_retain_n();
  v10(sub_1E4B84300, v9, &type metadata for CriticalMessageNotification, v11, v7, v8);

  v12 = a1[2];
  os_unfair_lock_lock((v12 + 104));
  sub_1E4B853B4((v12 + 16));
  os_unfair_lock_unlock((v12 + 104));
  os_unfair_lock_lock((v12 + 104));
  v13 = sub_1E4B76B24(sub_1E4B78554, 0);
  os_unfair_lock_unlock((v12 + 104));
  v14 = *(v13 + 16);
  if (v14)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_24:
      swift_once();
    }

    v15 = sub_1E4BEFB7C();
    v16 = __swift_project_value_buffer(v15, qword_1ECF95E30);

    v17 = sub_1E4BEFB5C();
    v18 = sub_1E4BF04BC();
    v19 = os_log_type_enabled(v17, v18);
    v52 = v16;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v71 = v21;
      *v20 = 134218242;
      *(v20 + 4) = *(v13 + 16);

      *(v20 + 12) = 2080;
      v69[0] = 31;
      v22 = sub_1E4BEFEFC();
      v24 = sub_1E4B30548(v22, v23, &v71);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_1E4AD3000, v17, v18, "Flushing %ld messages (%s) to client, since it started listening for them", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E6921800](v21, -1, -1);
      MEMORY[0x1E6921800](v20, -1, -1);
    }

    else
    {
    }

    v26 = 0;
    v60 = v13 + 32;
    v48 = (v66 + 16);
    v47 = (v66 + 8);
    v46 = (v65 + 8);
    v51 = a2;
    v50 = v13;
    v49 = v14;
    do
    {
      if (v26 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_1E4B3AA00(v60 + 48 * v26, &v71);
      sub_1E4ADB544(&v72, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v27 = v68;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v29 = Strong;
          v30 = *(*(Strong + 40) + 16);
          os_unfair_lock_lock((v30 + 24));
          v31 = *(v30 + 16);

          os_unfair_lock_unlock((v30 + 24));
          v32 = *(v31 + 16);
          if (v32)
          {
            v58 = v29;
            v59 = v26;
            v66 = HIDWORD(v27);
            v65 = *(v56 + 28);
            v33 = (*(v55 + 80) + 32) & ~*(v55 + 80);
            v57 = v31;
            v34 = v31 + v33;
            v64 = *(v55 + 72);
            v35 = v53;
            v63 = v27 & 1;
            v36 = v67;
            v37 = v54;
            v38 = v48;
            v39 = v47;
            v40 = v46;
            do
            {
              sub_1E4AF1898(v34, v37, &qword_1ECF92F10, &qword_1E4BFDCA0);
              (*v38)(v36, v37 + v65, v35);
              sub_1E4AE0AE4(v37, &qword_1ECF92F10, &qword_1E4BFDCA0);
              v69[0] = v63;
              v70 = v66;
              v41 = v61;
              sub_1E4BF022C();
              v36 = v67;
              (*v39)(v67, v35);
              (*v40)(v41, v62);
              v34 += v64;
              --v32;
            }

            while (v32);

            a2 = v51;
            v13 = v50;
            v14 = v49;
            v26 = v59;
          }

          else
          {
          }
        }
      }

      else
      {
        v42 = sub_1E4BEFB5C();
        v43 = sub_1E4BF04DC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1E4AD3000, v42, v43, "Got an unexpected message type when flushing pending messages", v44, 2u);
          MEMORY[0x1E6921800](v44, -1, -1);
        }
      }

      ++v26;
    }

    while (v26 != v14);
  }

  else
  {
  }
}

uint64_t sub_1E4B7E650(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v54 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v8 = *(v63 - 8);
  v9 = MEMORY[0x1EEE9AC00](v63);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v54 - v11;
  v12 = a1[6];
  v13 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E4B84E1C;
  *(v14 + 24) = a2;
  v15 = *(v13 + 72);
  v16 = sub_1E4B72230();
  swift_retain_n();
  v15(sub_1E4B84300, v14, &type metadata for RCSResultNotification, v16, v12, v13);

  v17 = a1[2];
  os_unfair_lock_lock((v17 + 104));
  sub_1E4B853B4((v17 + 16));
  os_unfair_lock_unlock((v17 + 104));
  os_unfair_lock_lock((v17 + 104));
  v18 = sub_1E4B76B24(sub_1E4B78564, 0);
  v19 = (v17 + 104);
  v20 = v18;
  os_unfair_lock_unlock(v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v56 = v8;
    v22 = sub_1E4BEFB7C();
    v23 = __swift_project_value_buffer(v22, qword_1ECF95E30);

    v65 = v23;
    v24 = sub_1E4BEFB5C();
    v25 = sub_1E4BF04BC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v72 = v27;
      *v26 = 134218242;
      *(v26 + 4) = *(v20 + 16);

      *(v26 + 12) = 2080;
      LOBYTE(v70) = 12;
      v28 = sub_1E4BEFEFC();
      v30 = sub_1E4B30548(v28, v29, &v72);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_1E4AD3000, v24, v25, "Flushing %ld messages (%s) to client, since it started listening for them", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E6921800](v27, -1, -1);
      MEMORY[0x1E6921800](v26, -1, -1);
    }

    else
    {
    }

    v32 = 0;
    v8 = &v72;
    v33 = v20 + 32;
    v61 = (v56 + 6);
    v57 = (v56 + 4);
    ++v56;
    v58 = a2;
    v62 = v20;
    v64 = v21;
    while (1)
    {
      if (v32 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_1E4B3AA00(v33, &v72);
      sub_1E4ADB544(v73, &v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (!swift_dynamicCast())
      {
        v66 = 0;
        v67 = 0;
        v69 = 0;
        v68 = 0;

        v42 = sub_1E4BEFB5C();
        v43 = sub_1E4BF04DC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1E4AD3000, v42, v43, "Got an unexpected message type when flushing pending messages", v44, 2u);
          MEMORY[0x1E6921800](v44, -1, -1);
        }

        goto LABEL_11;
      }

      v34 = v67;
      v35 = v68;
      v36 = v69;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v38 = *(Strong + 96);
        if (v36 == 10)
        {
          v70 = v34;
          v71 = v35;
          v39 = *(v38 + 16);
          MEMORY[0x1EEE9AC00](Strong);
          *(&v54 - 2) = &v70;
          os_unfair_lock_lock(v39 + 6);
          v40 = v60;
          sub_1E4B84E24(v60);
          os_unfair_lock_unlock(v39 + 6);
          v41 = v63;
          if ((*v61)(v40, 1, v63) == 1)
          {
            sub_1E4AE0AE4(v40, &qword_1ECF95EC0, &unk_1E4C0E780);
          }

          else
          {
            v51 = v55;
            (*v57)(v55, v40, v41);
            sub_1E4BF01BC();
            (*v56)(v51, v41);
          }

          v20 = v62;
          v21 = v64;

          goto LABEL_28;
        }

        sub_1E4B843DC();
        v45 = swift_allocError();
        *v46 = v36;
        v70 = v34;
        v71 = v35;
        v47 = *(v38 + 16);
        MEMORY[0x1EEE9AC00](v45);
        *(&v54 - 2) = &v70;
        os_unfair_lock_lock(v47 + 6);
        v48 = v59;
        sub_1E4B84E5C(v59);
        v49 = v48;
        os_unfair_lock_unlock(v47 + 6);
        v50 = v63;
        if ((*v61)(v48, 1, v63) == 1)
        {
          sub_1E4AE0AE4(v48, &qword_1ECF95EC0, &unk_1E4C0E780);
        }

        else
        {
          v52 = v54;
          (*v57)(v54, v49, v50);
          v66 = v45;
          v53 = v45;
          sub_1E4BF01AC();
          (*v56)(v52, v50);
        }

        a2 = v58;
        v20 = v62;
      }

      else
      {
      }

      v21 = v64;
LABEL_28:
      v8 = &v72;
LABEL_11:
      ++v32;
      v33 += 48;
      if (v21 == v32)
      {
      }
    }
  }
}

uint64_t sub_1E4B7EEAC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F70, &unk_1E4C0E850);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
  v81 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F78, &qword_1E4C0E860);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v66 - v15;
  v16 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
  v76 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  v18 = a1[6];
  v19 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E4B84D98;
  *(v20 + 24) = a2;
  v21 = *(v19 + 72);
  v22 = sub_1E4B85014(&qword_1ECF95F80, type metadata accessor for RCSCapabilityDiscoveryResponseNotification, &protocol conformance descriptor for RCSCapabilityDiscoveryResponseNotification);
  v79 = a2;
  swift_retain_n();
  v21(sub_1E4B84DA0, v20, v16, v22, v18, v19);

  v23 = v82[2];
  os_unfair_lock_lock((v23 + 104));
  sub_1E4B853B4((v23 + 16));
  os_unfair_lock_unlock((v23 + 104));
  os_unfair_lock_lock((v23 + 104));
  v24 = sub_1E4B76B24(sub_1E4B78574, 0);
  os_unfair_lock_unlock((v23 + 104));
  v82 = *(v24 + 16);
  if (v82)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v25 = sub_1E4BEFB7C();
    v26 = __swift_project_value_buffer(v25, qword_1ECF95E30);

    v78 = v26;
    v27 = sub_1E4BEFB5C();
    v28 = sub_1E4BF04BC();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v77;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v86 = v74;
      *v31 = 134218242;
      *(v31 + 4) = *(v24 + 16);

      *(v31 + 12) = 2080;
      LOBYTE(v84) = 14;
      v32 = sub_1E4BEFEFC();
      v34 = sub_1E4B30548(v32, v33, &v86);

      *(v31 + 14) = v34;
      _os_log_impl(&dword_1E4AD3000, v27, v28, "Flushing %ld messages (%s) to client, since it started listening for them", v31, 0x16u);
      v35 = v74;
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1E6921800](v35, -1, -1);
      MEMORY[0x1E6921800](v31, -1, -1);
    }

    else
    {
    }

    v37 = v80;
    v38 = 0;
    v39 = v24 + 32;
    v40 = (v76 + 56);
    v74 = v81 + 6;
    v70 = (v81 + 4);
    v69 = (v81 + 1);
    v76 = v16;
    v81 = v40;
    v75 = v24;
    do
    {
      if (v38 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_1E4B3AA00(v39, &v86);
      sub_1E4ADB544(&v87, &v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v41 = swift_dynamicCast();
      v42 = *v40;
      if (v41)
      {
        v42(v30, 0, 1, v16);
        sub_1E4B8505C(v30, v37, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v45 = *(v37 + 48);
          v44 = *(v37 + 56);
          v46 = *(v37 + *(v16 + 32));
          v47 = v16;
          v48 = *(Strong + 136);
          if (v46 == 10)
          {
            v49 = *(v47 + 28);
            v84 = v45;
            v85 = v44;
            v50 = *(v48 + 16);
            MEMORY[0x1EEE9AC00](Strong);
            *(&v66 - 2) = &v84;
            os_unfair_lock_lock(v50 + 6);
            v51 = v72;
            sub_1E4B84DC8(v72);
            os_unfair_lock_unlock(v50 + 6);
            if ((*v74)(v51, 1, v10) == 1)
            {
              sub_1E4AE0AE4(v51, &qword_1ECF95F70, &unk_1E4C0E850);
              v30 = v77;
              v37 = v80;
            }

            else
            {
              v52 = v67;
              (*v70)(v67, v51, v10);
              v53 = &v80[v49];
              v37 = v80;
              sub_1E4AF1898(v53, v68, &qword_1ECF95F68, &qword_1E4C12EB0);
              sub_1E4BF01BC();
              (*v69)(v52, v10);
              v30 = v77;
            }

            v24 = v75;

            v16 = v76;
          }

          else
          {
            sub_1E4B843DC();
            v58 = swift_allocError();
            v73 = v58;
            *v59 = v46;
            v84 = v45;
            v85 = v44;
            v60 = *(v48 + 16);
            MEMORY[0x1EEE9AC00](v58);
            *(&v66 - 2) = &v84;
            os_unfair_lock_lock(v60 + 6);
            v61 = v71;
            sub_1E4B84E00(v71);
            os_unfair_lock_unlock(v60 + 6);
            if ((*v74)(v61, 1, v10) == 1)
            {
              sub_1E4AE0AE4(v61, &qword_1ECF95F70, &unk_1E4C0E850);

              v62 = v73;
            }

            else
            {
              v63 = v66;
              (*v70)(v66, v61, v10);
              v64 = v73;
              v83 = v73;
              v65 = v73;
              sub_1E4BF01AC();
              (*v69)(v63, v10);

              v62 = v64;
            }

            v30 = v77;
            v16 = v76;
            v37 = v80;
            v24 = v75;
          }
        }

        v40 = v81;
        sub_1E4B8512C(v37, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
      }

      else
      {
        v42(v30, 1, 1, v16);
        sub_1E4AE0AE4(v30, &qword_1ECF95F78, &qword_1E4C0E860);
        v54 = sub_1E4BEFB5C();
        v55 = sub_1E4BF04DC();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_1E4AD3000, v54, v55, "Got an unexpected message type when flushing pending messages", v56, 2u);
          v57 = v56;
          v37 = v80;
          MEMORY[0x1E6921800](v57, -1, -1);
        }

        v40 = v81;
      }

      v38 = (v38 + 1);
      v39 += 48;
    }

    while (v82 != v38);
  }

  else
  {
  }
}

uint64_t sub_1E4B7F94C(void *a1, uint64_t a2)
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944E8, &qword_1E4C0E820);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v75 = &v72 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F38, &qword_1E4C0E828);
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v72 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EF0, &qword_1E4BFDC80);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v72 - v6;
  v85 = type metadata accessor for RCSService.RemoteHandleUpdate(0);
  v7 = MEMORY[0x1EEE9AC00](v85);
  v94 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F40, &qword_1E4C0E830);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = &v72 - v11;
  v12 = type metadata accessor for RCSCapabilityDiscoveryNotification(0);
  v91 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v72 - v15;
  v17 = a1[6];
  v18 = a1[7];
  v97 = __swift_project_boxed_opaque_existential_1(a1 + 3, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1E4B84D0C;
  *(v19 + 24) = a2;
  v20 = *(v18 + 72);
  v21 = sub_1E4B85014(&qword_1ECF95F48, type metadata accessor for RCSCapabilityDiscoveryNotification, &protocol conformance descriptor for RCSCapabilityDiscoveryNotification);
  v89 = a2;
  swift_retain_n();
  v20(sub_1E4B84D14, v19, v12, v21, v17, v18);

  v22 = a1[2];
  os_unfair_lock_lock((v22 + 104));
  sub_1E4B853B4((v22 + 16));
  os_unfair_lock_unlock((v22 + 104));
  os_unfair_lock_lock((v22 + 104));
  v23 = sub_1E4B76B24(sub_1E4B78584, 0);
  os_unfair_lock_unlock((v22 + 104));
  v24 = *(v23 + 16);
  if (v24)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v25 = sub_1E4BEFB7C();
    v26 = __swift_project_value_buffer(v25, qword_1ECF95E30);

    v87 = v26;
    v27 = sub_1E4BEFB5C();
    v28 = sub_1E4BF04BC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v101 = v30;
      *v29 = 134218242;
      *(v29 + 4) = *(v23 + 16);

      *(v29 + 12) = 2080;
      v100[0] = 15;
      v31 = sub_1E4BEFEFC();
      v33 = sub_1E4B30548(v31, v32, &v101);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_1E4AD3000, v27, v28, "Flushing %ld messages (%s) to client, since it started listening for them", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E6921800](v30, -1, -1);
      MEMORY[0x1E6921800](v29, -1, -1);
    }

    else
    {
    }

    v35 = v99;
    v36 = v79;
    v37 = v92;
    v38 = 0;
    v92 = v23 + 32;
    v39 = (v91 + 56);
    v74 = (v96 + 16);
    v73 = (v96 + 8);
    v72 = (v37 + 8);
    v88 = (v91 + 56);
    v83 = v12;
    v82 = v16;
    v81 = v23;
    v80 = v24;
    do
    {
      if (v38 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v92 + 48 * v38, &v101);
      sub_1E4ADB544(&v102, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v40 = swift_dynamicCast();
      v41 = *v39;
      if (v40)
      {
        v41(v36, 0, 1, v12);
        sub_1E4B8505C(v36, v16, type metadata accessor for RCSCapabilityDiscoveryNotification);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v43 = Strong;
          v90 = v38;
          v44 = v84;
          sub_1E4B850C4(v16, v84, type metadata accessor for RCSCapabilityDiscoveryNotification);
          LODWORD(v96) = *v44;
          v91 = v43;
          v45 = *(v44 + 1);
          v46 = *(v44 + 2);
          v47 = v12;
          v49 = *(v44 + 3);
          v48 = *(v44 + 4);
          v50 = v44[40];
          v51 = &v44[*(v47 + 24)];
          LODWORD(v97) = *(v51 + 11);
          v52 = *(v85 + 32);
          sub_1E4B850C4(v51, v35 + v52, type metadata accessor for RCSService.RemoteCapabilities);
          sub_1E4ADD6D8(v45, v46, v49, v48, v50);
          sub_1E4B8512C(v44, type metadata accessor for RCSCapabilityDiscoveryNotification);
          v53 = type metadata accessor for RCSService.RemoteCapabilities(0);
          (*(*(v53 - 8) + 56))(v35 + v52, 0, 1, v53);
          *v35 = v96;
          *(v35 + 8) = v45;
          *(v35 + 16) = v46;
          v54 = v91;
          *(v35 + 24) = v49;
          *(v35 + 32) = v48;
          *(v35 + 40) = v50;
          *(v35 + 48) = 0u;
          *(v35 + 64) = 0u;
          *(v35 + 80) = -1;
          *(v35 + 81) = v97;
          v55 = *(*(v54 + 88) + 16);
          os_unfair_lock_lock((v55 + 24));
          v56 = *(v55 + 16);

          os_unfair_lock_unlock((v55 + 24));
          v57 = *(v56 + 16);
          if (v57)
          {
            v97 = *(v78 + 28);
            v58 = (*(v77 + 80) + 32) & ~*(v77 + 80);
            v86 = v56;
            v59 = v56 + v58;
            v96 = *(v77 + 72);
            v60 = v98;
            v61 = v75;
            v62 = v76;
            v63 = v74;
            v64 = v73;
            v65 = v72;
            do
            {
              sub_1E4AF1898(v59, v62, &qword_1ECF92EF0, &qword_1E4BFDC80);
              (*v63)(v61, &v97[v62], v60);
              sub_1E4AE0AE4(v62, &qword_1ECF92EF0, &qword_1E4BFDC80);
              sub_1E4B850C4(v99, v94, type metadata accessor for RCSService.RemoteHandleUpdate);
              v66 = v93;
              sub_1E4BF022C();
              v60 = v98;
              (*v64)(v61, v98);
              (*v65)(v66, v95);
              v59 += v96;
              --v57;
            }

            while (v57);

            v35 = v99;
            v36 = v79;
            v12 = v83;
          }

          else
          {

            v12 = v83;
          }

          sub_1E4B8512C(v35, type metadata accessor for RCSService.RemoteHandleUpdate);

          v16 = v82;
          v23 = v81;
          v24 = v80;
          v38 = v90;
          v39 = v88;
        }

        sub_1E4B8512C(v16, type metadata accessor for RCSCapabilityDiscoveryNotification);
      }

      else
      {
        v41(v36, 1, 1, v12);
        sub_1E4AE0AE4(v36, &qword_1ECF95F40, &qword_1E4C0E830);
        v67 = sub_1E4BEFB5C();
        v68 = sub_1E4BF04DC();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = v38;
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_1E4AD3000, v67, v68, "Got an unexpected message type when flushing pending messages", v70, 2u);
          v71 = v70;
          v38 = v69;
          v39 = v88;
          MEMORY[0x1E6921800](v71, -1, -1);
        }
      }

      ++v38;
    }

    while (v38 != v24);
  }

  else
  {
  }
}

uint64_t sub_1E4B80504(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944E8, &qword_1E4C0E820);
  v85 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v62 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F38, &qword_1E4C0E828);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v69 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EF0, &qword_1E4BFDC80);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v62 - v8;
  v70 = type metadata accessor for RCSService.RemoteHandleUpdate(0);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v83 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v62 - v11;
  v12 = a1[6];
  v13 = a1[7];
  v86 = __swift_project_boxed_opaque_existential_1(a1 + 3, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E4B84D3C;
  *(v14 + 24) = a2;
  v15 = *(v13 + 72);
  v16 = sub_1E4B84D44();
  v74 = a2;
  swift_retain_n();
  v15(sub_1E4B84300, v14, &type metadata for RCSCapabilitiesUpdatedNotification, v16, v12, v13);

  v17 = a1[2];
  os_unfair_lock_lock((v17 + 104));
  sub_1E4B853B4((v17 + 16));
  os_unfair_lock_unlock((v17 + 104));
  os_unfair_lock_lock((v17 + 104));
  v18 = sub_1E4B76B24(sub_1E4B78594, 0);
  os_unfair_lock_unlock((v17 + 104));
  v73 = *(v18 + 16);
  if (v73)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v19 = sub_1E4BEFB7C();
    v20 = __swift_project_value_buffer(v19, qword_1ECF95E30);

    v71 = v20;
    v21 = sub_1E4BEFB5C();
    v22 = sub_1E4BF04BC();
    v23 = os_log_type_enabled(v21, v22);
    v64 = v4;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v94 = v25;
      *v24 = 134218242;
      *(v24 + 4) = *(v18 + 16);

      *(v24 + 12) = 2080;
      LOBYTE(v88) = 16;
      v26 = sub_1E4BEFEFC();
      v28 = sub_1E4B30548(v26, v27, v94);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_1E4AD3000, v21, v22, "Flushing %ld messages (%s) to client, since it started listening for them", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E6921800](v25, -1, -1);
      MEMORY[0x1E6921800](v24, -1, -1);
    }

    else
    {
    }

    v30 = v87;
    v4 = v73;
    v31 = v82;
    v32 = 0;
    v63 = (v85 + 16);
    v82 = (v85 + 8);
    v80 = v18 + 32;
    v81 = v31 + 1;
    v72 = v18;
    do
    {
      if (v32 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v80 + 48 * v32, v96);
      sub_1E4ADB544(v97, v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v79 = v32;
        v88 = *v94;
        v89 = *&v94[16];
        v90 = *&v94[32];
        v91 = *&v94[48];
        v92 = *&v94[64];
        v93 = *&v94[80];
        v33 = v94[0];
        v34 = *&v94[8];
        v36 = *&v94[16];
        v35 = *&v94[32];
        v78 = *&v94[48];
        v37 = *&v94[64];
        v85 = *&v94[56];
        v86 = *&v94[72];
        v75 = v94[40];
        v76 = v94[80];
        LODWORD(v77) = v94[81];
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v39 = Strong;
          v40 = *(v70 + 32);
          v41 = type metadata accessor for RCSService.RemoteCapabilities(0);
          (*(*(v41 - 8) + 56))(v30 + v40, 1, 1, v41);
          *v30 = v33 & 1;
          *(v30 + 8) = v34;
          *(v30 + 16) = v36;
          *(v30 + 32) = v35;
          v42 = v35;
          v43 = v76;
          v44 = v75 & 1;
          *(v30 + 40) = v75 & 1;
          v45 = v78;
          v46 = v85;
          v47 = v86;
          *(v30 + 48) = v78;
          *(v30 + 56) = v46;
          *(v30 + 64) = v37;
          *(v30 + 72) = v47;
          v48 = v43 & 1;
          *(v30 + 80) = v43 & 1;
          *(v30 + 81) = v77 & 1;
          v49 = *(*(v39 + 88) + 16);
          sub_1E4ADD6D8(v34, v36, *(&v36 + 1), v42, v44);
          sub_1E4ADD6D8(v45, v46, v37, v47, v48);
          os_unfair_lock_lock((v49 + 24));
          v50 = *(v49 + 16);

          os_unfair_lock_unlock((v49 + 24));
          v51 = *(v50 + 16);
          if (v51)
          {
            v77 = v50;
            v78 = v39;
            v52 = *(v68 + 28);
            v53 = v50 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
            v85 = *(v67 + 72);
            v86 = v52;
            v55 = v64;
            v54 = v65;
            v56 = v69;
            v57 = v66;
            v58 = v63;
            do
            {
              sub_1E4AF1898(v53, v57, &qword_1ECF92EF0, &qword_1E4BFDC80);
              (*v58)(v54, &v86[v57], v55);
              sub_1E4AE0AE4(v57, &qword_1ECF92EF0, &qword_1E4BFDC80);
              sub_1E4B850C4(v87, v83, type metadata accessor for RCSService.RemoteHandleUpdate);
              sub_1E4BF022C();
              (*v82)(v54, v55);
              (*v81)(v56, v84);
              v53 += v85;
              --v51;
            }

            while (v51);

            v30 = v87;
            v18 = v72;
            v4 = v73;
          }

          else
          {

            v18 = v72;
            v4 = v73;
          }

          sub_1E4B8512C(v30, type metadata accessor for RCSService.RemoteHandleUpdate);

          sub_1E4AE0AE4(&v88, &qword_1ECF95F60, &unk_1E4C0E840);
          v32 = v79;
        }

        else
        {
          sub_1E4AE0AE4(&v88, &qword_1ECF95F60, &unk_1E4C0E840);
          v32 = v79;
          v18 = v72;
          v4 = v73;
        }
      }

      else
      {
        *v94 = 2;
        memset(&v94[8], 0, 74);
        v90 = *&v94[32];
        v91 = *&v94[48];
        v92 = *&v94[64];
        v93 = 0;
        v88 = *v94;
        v89 = *&v94[16];
        sub_1E4AE0AE4(&v88, &qword_1ECF95F60, &unk_1E4C0E840);
        v59 = sub_1E4BEFB5C();
        v60 = sub_1E4BF04DC();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_1E4AD3000, v59, v60, "Got an unexpected message type when flushing pending messages", v61, 2u);
          MEMORY[0x1E6921800](v61, -1, -1);
        }
      }

      ++v32;
    }

    while (v32 != v4);
  }

  else
  {
  }
}