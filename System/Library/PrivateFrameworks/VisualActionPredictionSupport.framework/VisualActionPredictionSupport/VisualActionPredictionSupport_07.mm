unint64_t sub_1D9EDB58C()
{
  result = qword_1EE0F36E0;
  if (!qword_1EE0F36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36E0);
  }

  return result;
}

unint64_t sub_1D9EDB5E4()
{
  result = qword_1EE0F36E8;
  if (!qword_1EE0F36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36E8);
  }

  return result;
}

unint64_t sub_1D9EDB63C()
{
  result = qword_1EE0F3698;
  if (!qword_1EE0F3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3698);
  }

  return result;
}

unint64_t sub_1D9EDB694()
{
  result = qword_1EE0F36A0;
  if (!qword_1EE0F36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36A0);
  }

  return result;
}

unint64_t sub_1D9EDB6EC()
{
  result = qword_1EE0F36B0;
  if (!qword_1EE0F36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36B0);
  }

  return result;
}

unint64_t sub_1D9EDB744()
{
  result = qword_1EE0F36B8;
  if (!qword_1EE0F36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36B8);
  }

  return result;
}

unint64_t sub_1D9EDB79C()
{
  result = qword_1EE0F36C8;
  if (!qword_1EE0F36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36C8);
  }

  return result;
}

unint64_t sub_1D9EDB7F4()
{
  result = qword_1EE0F36D0;
  if (!qword_1EE0F36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36D0);
  }

  return result;
}

unint64_t sub_1D9EDB84C()
{
  result = qword_1EE0F3638;
  if (!qword_1EE0F3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3638);
  }

  return result;
}

unint64_t sub_1D9EDB8A4()
{
  result = qword_1EE0F3640;
  if (!qword_1EE0F3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3640);
  }

  return result;
}

unint64_t sub_1D9EDB8FC()
{
  result = qword_1EE0F3688;
  if (!qword_1EE0F3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3688);
  }

  return result;
}

unint64_t sub_1D9EDB954()
{
  result = qword_1EE0F3690;
  if (!qword_1EE0F3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3690);
  }

  return result;
}

unint64_t sub_1D9EDB9AC()
{
  result = qword_1EE0F3670;
  if (!qword_1EE0F3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3670);
  }

  return result;
}

unint64_t sub_1D9EDBA04()
{
  result = qword_1EE0F3678;
  if (!qword_1EE0F3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3678);
  }

  return result;
}

unint64_t sub_1D9EDBA5C()
{
  result = qword_1EE0F3648;
  if (!qword_1EE0F3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3648);
  }

  return result;
}

unint64_t sub_1D9EDBAB4()
{
  result = qword_1EE0F3650;
  if (!qword_1EE0F3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3650);
  }

  return result;
}

unint64_t sub_1D9EDBB0C()
{
  result = qword_1EE0F3658;
  if (!qword_1EE0F3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3658);
  }

  return result;
}

unint64_t sub_1D9EDBB64()
{
  result = qword_1EE0F3660;
  if (!qword_1EE0F3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3660);
  }

  return result;
}

uint64_t sub_1D9EDBBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F546D6574737973 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63416D6F74737563 && a2 == 0xEC0000006E6F6974 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536C6175736976 && a2 == 0xEC00000068637261 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E456E65706FLL && a2 == 0xEA00000000007974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EDBD30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001D9F49990 == a2;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D9F499B0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F499D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EDBE54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F499F0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E6870796C67 && a2 == 0xE900000000000065 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEF6C6576654C6563 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73656E6964616572 && a2 == 0xEE00657461745373)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D9EDC0B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751B8, &qword_1D9F3FE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Feedback.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD0C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D9EDC1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496E6F69746361 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EDC234(uint64_t a1)
{
  v2 = sub_1D9EDE7AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EDC270(uint64_t a1)
{
  v2 = sub_1D9EDE7AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EDC2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496E6F69746361 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EDC358(uint64_t a1)
{
  v2 = sub_1D9EDE758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EDC394(uint64_t a1)
{
  v2 = sub_1D9EDE758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EDC3D0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65536E6F69746361;
  }
}

uint64_t sub_1D9EDC41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65536E6F69746361 && a2 == 0xEE0064657463656CLL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F49A10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EDC508(uint64_t a1)
{
  v2 = sub_1D9EDE704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EDC544(uint64_t a1)
{
  v2 = sub_1D9EDE704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Feedback.Event.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751C0, &qword_1D9F3FE80);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751C8, &qword_1D9F3FE88);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = sub_1D9F2AD7C();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Feedback.Event(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751D0, &unk_1D9F3FE90);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v25 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDE704();
  sub_1D9F2BB8C();
  sub_1D9EDEB00(v33, v12, type metadata accessor for Feedback.Event);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v12;
    v37 = 1;
    sub_1D9EDE758();
    v17 = v30;
    v18 = v34;
    sub_1D9F2B8FC();
    v35 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9EDE848(&qword_1ECB74460, &qword_1EE0F3868, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    v19 = v32;
    sub_1D9F2B9AC();
    (*(v31 + 8))(v17, v19);
    (*(v13 + 8))(v15, v18);
  }

  else
  {
    v22 = v26;
    v21 = v27;
    (*(v26 + 32))(v9, v12, v27);
    v36 = 0;
    sub_1D9EDE7AC();
    v23 = v34;
    sub_1D9F2B8FC();
    sub_1D9EDE800(&qword_1EE0F3868, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v24 = v29;
    sub_1D9F2B9AC();
    (*(v28 + 8))(v6, v24);
    (*(v22 + 8))(v9, v21);
    return (*(v13 + 8))(v15, v23);
  }
}

uint64_t Feedback.Event.hash(into:)(uint64_t a1)
{
  v2 = sub_1D9F2AD7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  v9 = type metadata accessor for Feedback.Event(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9EDEB00(v1, v11, type metadata accessor for Feedback.Event);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    MEMORY[0x1DA7438F0](1);
    MEMORY[0x1DA7438F0](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v16 = *(v3 + 16);
      v14 = v3 + 16;
      v15 = v16;
      v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
      v21[1] = v12;
      v18 = v12 + v17;
      v19 = *(v14 + 56);
      do
      {
        v15(v6, v18, v2);
        sub_1D9EDE800(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D9F2B0EC();
        (*(v14 - 8))(v6, v2);
        v18 += v19;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    MEMORY[0x1DA7438F0](0);
    sub_1D9EDE800(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D9F2B0EC();
    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t Feedback.Event.hashValue.getter()
{
  sub_1D9F2BAFC();
  Feedback.Event.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t Feedback.Event.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751F0, &qword_1D9F3FEA0);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB751F8, &qword_1D9F3FEA8);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75200, &unk_1D9F3FEB0);
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for Feedback.Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D9EDE704();
  v21 = v49;
  sub_1D9F2BB7C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v49 = v17;
  v39 = v14;
  v40 = v19;
  v23 = v47;
  v22 = v48;
  v24 = v46;
  v25 = sub_1D9F2B8DC();
  v26 = (2 * *(v25 + 16)) | 1;
  v51 = v25;
  v52 = v25 + 32;
  v53 = 0;
  v54 = v26;
  v27 = sub_1D9E4618C();
  v28 = v10;
  if (v27 == 2 || v53 != v54 >> 1)
  {
    v30 = sub_1D9F2B6BC();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
    *v32 = v11;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (v27)
  {
    LOBYTE(v55) = 1;
    sub_1D9EDE758();
    v29 = v22;
    sub_1D9F2B7DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9EDE848(&qword_1ECB74470, &qword_1EE0F3860, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
    v35 = v44;
    sub_1D9F2B89C();
    (*(v45 + 8))(v29, v35);
    (*(v24 + 8))(v28, v8);
    swift_unknownObjectRelease();
    v36 = v39;
    *v39 = v55;
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_1D9EDE7AC();
    sub_1D9F2B7DC();
    sub_1D9F2AD7C();
    sub_1D9EDE800(&qword_1EE0F3860, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v36 = v49;
    v34 = v43;
    sub_1D9F2B89C();
    (*(v42 + 8))(v23, v34);
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
  }

  swift_storeEnumTagMultiPayload();
  v37 = v36;
  v38 = v40;
  sub_1D9EDE8E4(v37, v40);
  sub_1D9EDE8E4(v38, v41);
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_1D9EDD420()
{
  sub_1D9F2BAFC();
  Feedback.Event.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EDD464()
{
  sub_1D9F2BAFC();
  Feedback.Event.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t Feedback.events.getter()
{
  type metadata accessor for Feedback(0);
}

uint64_t Feedback.executionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Feedback(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Feedback.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Feedback(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Feedback.workflow.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Feedback(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t Feedback.init(timestamp:events:workflow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Feedback(0);
  *(a3 + v6[7]) = 3;
  v7 = sub_1D9F2AD0C();
  result = (*(*(v7 - 8) + 32))(a3, a1, v7);
  *(a3 + v6[5]) = a2;
  *(a3 + v6[6]) = 0;
  return result;
}

uint64_t Feedback.init(timestamp:events:executionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for Feedback(0);
  *(a4 + v8[7]) = 3;
  v9 = sub_1D9F2AD0C();
  result = (*(*(v9 - 8) + 32))(a4, a1, v9);
  *(a4 + v8[5]) = a2;
  *(a4 + v8[6]) = v7;
  return result;
}

uint64_t sub_1D9EDD6F0()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x6F69747563657865;
  if (*v0 != 2)
  {
    v2 = 0x776F6C666B726F77;
  }

  if (*v0)
  {
    v1 = 0x73746E657665;
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

uint64_t sub_1D9EDD778@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EDF2AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EDD7A0(uint64_t a1)
{
  v2 = sub_1D9EDE968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EDD7DC(uint64_t a1)
{
  v2 = sub_1D9EDE968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Feedback.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75208, &qword_1D9F3FEC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDE968();
  sub_1D9F2BB8C();
  v13 = 0;
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB73510, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v9 = type metadata accessor for Feedback(0);
    v12 = *(v3 + v9[5]);
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75218, &qword_1D9F3FEC8);
    sub_1D9EDE9BC(&qword_1ECB75220, &qword_1ECB75228, &protocol conformance descriptor for Feedback.Event, MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
    v11[14] = *(v3 + v9[6]);
    v11[13] = 2;
    sub_1D9EDEA58();
    sub_1D9F2B9AC();
    v11[12] = *(v3 + v9[7]);
    v11[11] = 3;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Feedback.hash(into:)(uint64_t a1)
{
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D9F2B0EC();
  v3 = type metadata accessor for Feedback(0);
  sub_1D9E4E7F8(a1, *(v1 + v3[5]));
  MEMORY[0x1DA7438F0](*(v1 + v3[6]));
  return MEMORY[0x1DA7438F0](*(v1 + v3[7]));
}

uint64_t Feedback.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D9F2B0EC();
  v1 = type metadata accessor for Feedback(0);
  sub_1D9E4E7F8(v3, *(v0 + v1[5]));
  MEMORY[0x1DA7438F0](*(v0 + v1[6]));
  MEMORY[0x1DA7438F0](*(v0 + v1[7]));
  return sub_1D9F2BB4C();
}

uint64_t Feedback.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1D9F2AD0C();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75240, &qword_1D9F3FED0);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Feedback(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 28);
  v11[v12] = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDE968();
  v26 = v7;
  v13 = v29;
  sub_1D9F2BB7C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v12;
  v29 = a1;
  v14 = v11;
  v15 = v24;
  v36 = 0;
  sub_1D9EDE800(&qword_1ECB73548, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v17 = v25;
  v16 = v26;
  v18 = v28;
  sub_1D9F2B89C();
  (*(v15 + 32))(v14, v17, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75218, &qword_1D9F3FEC8);
  v35 = 1;
  sub_1D9EDE9BC(&qword_1ECB75248, &qword_1ECB75250, &protocol conformance descriptor for Feedback.Event, MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  *(v14 + *(v8 + 20)) = v30;
  v33 = 2;
  sub_1D9EDEAAC();
  sub_1D9F2B89C();
  *(v14 + *(v8 + 24)) = v34;
  v31 = 3;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  (*(v27 + 8))(v16, v18);
  v19 = v23;
  *(v14 + v22) = v32;
  sub_1D9EDEB00(v14, v19, type metadata accessor for Feedback);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D9EDF484(v14, type metadata accessor for Feedback);
}

uint64_t sub_1D9EDE10C(int *a1)
{
  sub_1D9F2BAFC();
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D9F2B0EC();
  sub_1D9E4E7F8(v4, *(v1 + a1[5]));
  MEMORY[0x1DA7438F0](*(v1 + a1[6]));
  MEMORY[0x1DA7438F0](*(v1 + a1[7]));
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EDE1D4(uint64_t a1, int *a2)
{
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D9F2B0EC();
  sub_1D9E4E7F8(a1, *(v2 + a2[5]));
  MEMORY[0x1DA7438F0](*(v2 + a2[6]));
  return MEMORY[0x1DA7438F0](*(v2 + a2[7]));
}

uint64_t sub_1D9EDE288(uint64_t a1, int *a2)
{
  sub_1D9F2BAFC();
  sub_1D9F2AD0C();
  sub_1D9EDE800(&qword_1ECB75238, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D9F2B0EC();
  sub_1D9E4E7F8(v5, *(v2 + a2[5]));
  MEMORY[0x1DA7438F0](*(v2 + a2[6]));
  MEMORY[0x1DA7438F0](*(v2 + a2[7]));
  return sub_1D9F2BB4C();
}

BOOL _s29VisualActionPredictionSupport8FeedbackV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D9F2ACDC() & 1) != 0 && (v4 = type metadata accessor for Feedback(0), (sub_1D9E49700(*(a1 + v4[5]), *(a2 + v4[5]))) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t _s29VisualActionPredictionSupport8FeedbackV5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v25 = sub_1D9F2AD7C();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Feedback.Event(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D8, &unk_1D9F2F590);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v17 = *(v14 + 56);
  sub_1D9EDEB00(a1, &v24 - v15, type metadata accessor for Feedback.Event);
  sub_1D9EDEB00(a2, &v16[v17], type metadata accessor for Feedback.Event);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9EDEB00(v16, v10, type metadata accessor for Feedback.Event);
    v18 = *v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_1D9E49DB0(v18, *&v16[v17]);

LABEL_9:
      sub_1D9EDF484(v16, type metadata accessor for Feedback.Event);
      return v19 & 1;
    }
  }

  else
  {
    sub_1D9EDEB00(v16, v12, type metadata accessor for Feedback.Event);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = &v16[v17];
      v21 = v25;
      (*(v4 + 32))(v6, v20, v25);
      v19 = sub_1D9F2AD3C();
      v22 = *(v4 + 8);
      v22(v6, v21);
      v22(v12, v21);
      goto LABEL_9;
    }

    (*(v4 + 8))(v12, v25);
  }

  sub_1D9EDF41C(v16);
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_1D9EDE704()
{
  result = qword_1ECB751D8;
  if (!qword_1ECB751D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751D8);
  }

  return result;
}

unint64_t sub_1D9EDE758()
{
  result = qword_1ECB751E0;
  if (!qword_1ECB751E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751E0);
  }

  return result;
}

unint64_t sub_1D9EDE7AC()
{
  result = qword_1ECB751E8;
  if (!qword_1ECB751E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751E8);
  }

  return result;
}

uint64_t sub_1D9EDE800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9EDE848(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9EDE800(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9EDE8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Feedback.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9EDE968()
{
  result = qword_1ECB75210;
  if (!qword_1ECB75210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75210);
  }

  return result;
}

uint64_t sub_1D9EDE9BC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75218, &qword_1D9F3FEC8);
    sub_1D9EDE800(a2, type metadata accessor for Feedback.Event, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EDEA58()
{
  result = qword_1ECB75230;
  if (!qword_1ECB75230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75230);
  }

  return result;
}

unint64_t sub_1D9EDEAAC()
{
  result = qword_1ECB75258;
  if (!qword_1ECB75258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75258);
  }

  return result;
}

uint64_t sub_1D9EDEB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D9EDEC20(uint64_t a1)
{
  sub_1D9F2AD0C();
  if (v1 <= 0x3F)
  {
    sub_1D9EDEDF8(319, &qword_1EE0F1128, type metadata accessor for Feedback.Event);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9EDECD8(uint64_t a1)
{
  sub_1D9EDED4C();
  if (v1 <= 0x3F)
  {
    sub_1D9EDED94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D9EDED4C()
{
  if (!qword_1EE0F22B0)
  {
    v0 = sub_1D9F2AD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F22B0);
    }
  }
}

void sub_1D9EDED94()
{
  if (!qword_1EE0F11A0)
  {
    sub_1D9EDEDF8(0, &qword_1EE0F1198, MEMORY[0x1E69695A8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F11A0);
    }
  }
}

void sub_1D9EDEDF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9F2B2BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D9EDEE90()
{
  result = qword_1ECB75270;
  if (!qword_1ECB75270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75270);
  }

  return result;
}

unint64_t sub_1D9EDEEE8()
{
  result = qword_1ECB75278;
  if (!qword_1ECB75278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75278);
  }

  return result;
}

unint64_t sub_1D9EDEF40()
{
  result = qword_1ECB75280;
  if (!qword_1ECB75280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75280);
  }

  return result;
}

unint64_t sub_1D9EDEF98()
{
  result = qword_1ECB75288;
  if (!qword_1ECB75288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75288);
  }

  return result;
}

unint64_t sub_1D9EDEFF0()
{
  result = qword_1ECB75290;
  if (!qword_1ECB75290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75290);
  }

  return result;
}

unint64_t sub_1D9EDF048()
{
  result = qword_1ECB75298;
  if (!qword_1ECB75298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75298);
  }

  return result;
}

unint64_t sub_1D9EDF0A0()
{
  result = qword_1ECB752A0;
  if (!qword_1ECB752A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752A0);
  }

  return result;
}

unint64_t sub_1D9EDF0F8()
{
  result = qword_1ECB752A8;
  if (!qword_1ECB752A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752A8);
  }

  return result;
}

unint64_t sub_1D9EDF150()
{
  result = qword_1ECB752B0;
  if (!qword_1ECB752B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752B0);
  }

  return result;
}

unint64_t sub_1D9EDF1A8()
{
  result = qword_1ECB752B8;
  if (!qword_1ECB752B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752B8);
  }

  return result;
}

unint64_t sub_1D9EDF200()
{
  result = qword_1ECB752C0;
  if (!qword_1ECB752C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752C0);
  }

  return result;
}

unint64_t sub_1D9EDF258()
{
  result = qword_1ECB752C8;
  if (!qword_1ECB752C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752C8);
  }

  return result;
}

uint64_t sub_1D9EDF2AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xED0000657079546ELL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EDF41C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D8, &unk_1D9F2F590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9EDF484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

VisualActionPredictionSupport::VisualContentCategory_optional __swiftcall VisualContentCategory.init(category:)(Swift::String_optional category)
{
  v2 = v1;
  if (!category.value._object)
  {
    goto LABEL_144;
  }

  object = category.value._object;
  countAndFlagsBits = category.value._countAndFlagsBits;
  v6 = sub_1D9EE0C2C();
  v7 = v5;
  if ((v6 != 0xD000000000000016 || 0x80000001D9F47E30 != v5) && (sub_1D9F2BA1C() & 1) == 0)
  {
    if (v6 == 0xD000000000000015 && 0x80000001D9F47E50 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 22;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000012 && 0x80000001D9F47E70 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 23;
      goto LABEL_6;
    }

    if (v6 == 0x7473694C6F646F74 && v7 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 24;
      goto LABEL_6;
    }

    if (v6 == 0x676E6970706F6873 && v7 == 0xEC0000007473694CLL || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 25;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000014 && 0x80000001D9F47EA0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 26;
      goto LABEL_6;
    }

    if (v6 == 1970169197 && v7 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 27;
      goto LABEL_6;
    }

    if (v6 == 0x4C657369636E6F63 && v7 == 0xEB00000000747369 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 28;
      goto LABEL_6;
    }

    if (v6 == 1768319351 && v7 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 29;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000012 && 0x80000001D9F47ED0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 30;
      goto LABEL_6;
    }

    if (v6 == 0x74706965636572 && v7 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 31;
      goto LABEL_6;
    }

    if (v6 == 0xD000000000000010 && 0x80000001D9F47EF0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 32;
      goto LABEL_6;
    }

    if (v6 == 0x646567616B636170 && v7 == 0xEC000000646F6F46 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 33;
      goto LABEL_6;
    }

    if (v6 == 0x646567616B636170 && v7 == -1192218645498990000 || (sub_1D9F2BA1C() & 1) != 0)
    {
      goto LABEL_58;
    }

    if (v6 == 0x736C616D696E61 && v7 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 0;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000015 && 0x80000001D9F47CB0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 1;
      goto LABEL_145;
    }

    if (v6 == 7631457 && v7 == 0xE300000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 2;
      goto LABEL_145;
    }

    if (v6 == 0x736B6F6F62 && v7 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 3;
      goto LABEL_145;
    }

    if (v6 == 0x746E656D75636F64 && v7 == 0xE900000000000073 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 4;
      goto LABEL_145;
    }

    if (v6 == 0x6E6F727463656C65 && v7 == 0xEB00000000736369 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 5;
      goto LABEL_145;
    }

    if (v6 == 1685024614 && v7 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 6;
      goto LABEL_145;
    }

    if (v6 == 0x646F6F47656D6F68 && v7 == 0xE900000000000073 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 7;
      goto LABEL_145;
    }

    if (v6 == 0x6E616D7568 && v7 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 8;
      goto LABEL_145;
    }

    if (v6 == 0x6B72616D646E616CLL && v7 == 0xE900000000000073 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 9;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000012 && 0x80000001D9F47D10 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 10;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000010 && 0x80000001D9F47D30 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 11;
      goto LABEL_145;
    }

    if (v6 == 0x646567616B636170 && v7 == 0xED000073646F6F47 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 12;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000010 && 0x80000001D9F47D50 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {
LABEL_58:

      v8 = 13;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000010 && 0x80000001D9F47D70 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 14;
      goto LABEL_145;
    }

    if (v6 == 0x646E41736E676973 && v7 == 0xEF736C6F626D7953 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 15;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000023 && 0x80000001D9F47DA0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 16;
      goto LABEL_145;
    }

    if (v6 == 0x6967655274786574 && v7 == 0xEA00000000006E6FLL || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 17;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000011 && 0x80000001D9F47DD0 == v7 || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 18;
      goto LABEL_145;
    }

    if (v6 == 0x6174696769446432 && v7 == 0xEE00616964654D6CLL || (sub_1D9F2BA1C() & 1) != 0)
    {

      v8 = 19;
      goto LABEL_145;
    }

    if (v6 == 0xD000000000000015 && 0x80000001D9F47E10 == v7)
    {

LABEL_142:

      v8 = 20;
      goto LABEL_145;
    }

    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      goto LABEL_142;
    }

    v10._countAndFlagsBits = countAndFlagsBits;
    v10._object = object;
    LOBYTE(category.value._countAndFlagsBits) = VisualContentCategory.init(rawValue:)(v10);
    v8 = v12;
    if (v12 != 34)
    {
      goto LABEL_145;
    }

LABEL_144:
    v8 = 34;
    goto LABEL_145;
  }

  v8 = 21;
LABEL_6:

LABEL_145:
  *v2 = v8;
  return category.value._countAndFlagsBits;
}

VisualActionPredictionSupport::VisualContentCategory_optional __swiftcall VisualContentCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9F2BA3C();

  v5 = 0;
  v6 = 16;
  switch(v3)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v5 = 1;
      goto LABEL_26;
    case 2:
      v5 = 2;
      goto LABEL_26;
    case 3:
      v5 = 3;
      goto LABEL_26;
    case 4:
      v5 = 4;
      goto LABEL_26;
    case 5:
      v5 = 5;
      goto LABEL_26;
    case 6:
      v5 = 6;
      goto LABEL_26;
    case 7:
      v5 = 7;
      goto LABEL_26;
    case 8:
      v5 = 8;
      goto LABEL_26;
    case 9:
      v5 = 9;
      goto LABEL_26;
    case 10:
      v5 = 10;
      goto LABEL_26;
    case 11:
      v5 = 11;
      goto LABEL_26;
    case 12:
      v5 = 12;
      goto LABEL_26;
    case 13:
      v5 = 13;
      goto LABEL_26;
    case 14:
      v5 = 14;
      goto LABEL_26;
    case 15:
      v5 = 15;
LABEL_26:
      v6 = v5;
      break;
    case 16:
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    default:
      v6 = 34;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VisualContentCategory.rawValue.getter()
{
  result = 0x6C616D696E61;
  switch(*v0)
  {
    case 1:
    case 0x14:
    case 0x16:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 7631457;
      break;
    case 3:
      result = 0x736B6F6F62;
      break;
    case 4:
      result = 0x746E656D75636F64;
      break;
    case 5:
      result = 0x6E6F727463656C65;
      break;
    case 6:
      result = 1685024614;
      break;
    case 7:
      result = 0x646F6F47656D6F68;
      break;
    case 8:
      result = 0x6E616D7568;
      break;
    case 9:
      result = 0x6B72616D646E616CLL;
      break;
    case 0xA:
    case 0x17:
    case 0x1E:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 0xC:
    case 0x21:
      result = 0x646567616B636170;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0xD000000000000010;
      break;
    case 0xF:
      result = 0x646E41736E676973;
      break;
    case 0x10:
      result = 0xD000000000000023;
      break;
    case 0x11:
      result = 0x6967655274786574;
      break;
    case 0x12:
      result = 0xD000000000000011;
      break;
    case 0x13:
      result = 0xD000000000000010;
      break;
    case 0x15:
      result = 0xD000000000000016;
      break;
    case 0x18:
      result = 0x7473694C6F646F74;
      break;
    case 0x19:
      result = 0x676E6970706F6873;
      break;
    case 0x1A:
      result = 0xD000000000000014;
      break;
    case 0x1B:
      result = 1970169197;
      break;
    case 0x1C:
      result = 0x4C657369636E6F63;
      break;
    case 0x1D:
      result = 1768319351;
      break;
    case 0x1F:
      result = 0x74706965636572;
      break;
    case 0x20:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9EE05AC()
{
  v0 = VisualContentCategory.rawValue.getter();
  v2 = v1;
  if (v0 == VisualContentCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D9F2BA1C();
  }

  return v5 & 1;
}

uint64_t sub_1D9EE0648()
{
  sub_1D9F2BAFC();
  VisualContentCategory.rawValue.getter();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE06B0(uint64_t a1)
{
  VisualContentCategory.rawValue.getter();
  sub_1D9F2B18C();
}

uint64_t sub_1D9EE0714()
{
  sub_1D9F2BAFC();
  VisualContentCategory.rawValue.getter();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EE0784@<X0>(unint64_t *a1@<X8>)
{
  result = VisualContentCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D9EE086C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D9F2B1EC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D9F0C8CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D9F0C8CC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D9F2B1DC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D9F2B19C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D9F2B19C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D9F2B1EC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D9F0C8CC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D9F2B1EC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D9F0C8CC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D9F0C8CC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D9F2B19C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9EE0C2C()
{
  v1 = 0xE100000000000000;
  sub_1D9EE11DC();
  *&v31 = sub_1D9F2B5BC();
  *(&v31 + 1) = v2;
  strcpy(v36, "[^a-zA-Z0-9]+");
  HIWORD(v36[1]) = -4864;
  v3 = 32;
  v34 = 32;
  v35 = 0xE100000000000000;
  v4 = &v31;
  sub_1D9F2B5BC();

  v5 = sub_1D9F2B14C();
  v7 = v6;

  *&v31 = 32;
  *(&v31 + 1) = 0xE100000000000000;
  v30 = &v31;
  v9 = sub_1D9EE086C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D9E447C0, v29, v5, v7, v8);
  v10 = v9[2];
  if (v10)
  {
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1D9E947AC(0, v10, 0);
    v12 = v9[2];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v36[0];
    v15 = v9[6];
    v14 = v9[7];
    v17 = v9[4];
    v16 = v9[5];

    v3 = MEMORY[0x1DA742F50](v17, v16, v15, v14);
    v1 = v18;

    v0 = *(v13 + 16);
    v11 = *(v13 + 24);
    v4 = (v0 + 1);
    if (v0 >= v11 >> 1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      *(v13 + 16) = v4;
      v11 = v13 + 16 * v0;
      *(v11 + 32) = v3;
      *(v11 + 40) = v1;
      if (v10 == 1)
      {
        break;
      }

      v4 = v9 + 11;
      v0 = 1;
      v1 = MEMORY[0x1E69E67B0];
      while (v12 != v0)
      {
        v11 = v9[2];
        if (v0 >= v11)
        {
          goto LABEL_16;
        }

        v22 = *(v4 - 1);
        v21 = *v4;
        v31 = *(v4 - 3);
        v32 = v22;
        v33 = v21;
        sub_1D9EE1230();
        v23 = sub_1D9F2B5AC();
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        v36[0] = v13;
        v3 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v28 = v23;
          v27 = v24;
          sub_1D9E947AC((v25 > 1), v26 + 1, 1);
          v23 = v28;
          v24 = v27;
          v13 = v36[0];
        }

        ++v0;
        *(v13 + 16) = v3;
        v11 = v13 + 16 * v26;
        *(v11 + 32) = v23;
        *(v11 + 40) = v24;
        v4 += 4;
        if (v10 == v0)
        {
          goto LABEL_5;
        }
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_1D9E947AC((v11 > 1), v4, 1);
      v13 = v36[0];
    }

LABEL_5:
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  *&v31 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
  sub_1D9EAA40C(&qword_1EE0F2308, &qword_1ECB75480, &qword_1D9F2D000, MEMORY[0x1E69E6310]);
  v19 = sub_1D9F2B0FC();

  return v19;
}

unint64_t sub_1D9EE0FA0()
{
  result = qword_1EE0F2198;
  if (!qword_1EE0F2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualContentCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualContentCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9EE1188()
{
  result = qword_1ECB752E0;
  if (!qword_1ECB752E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752E0);
  }

  return result;
}

unint64_t sub_1D9EE11DC()
{
  result = qword_1EE0F2360;
  if (!qword_1EE0F2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2360);
  }

  return result;
}

unint64_t sub_1D9EE1230()
{
  result = qword_1EE0F11B8;
  if (!qword_1EE0F11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F11B8);
  }

  return result;
}

uint64_t sub_1D9EE12AC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 16))(a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18[0] = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata_unique();
  if (sub_1D9F2B2AC())
  {
    v8 = 0;
    v9 = v7 + 32;
    while (1)
    {
      v10 = sub_1D9F2B29C();
      result = sub_1D9F2B28C();
      if ((v10 & 1) == 0)
      {
        break;
      }

      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_16;
      }

      sub_1D9EE14D0(v9, v18);
      v13 = a1(v18);
      if (v4)
      {

        __swift_destroy_boxed_opaque_existential_1(v18);
        return v17 & 1;
      }

      if (v13 == 2 || (v13 & 1) != 0 && (v14 = v19, v15 = v20, __swift_project_boxed_opaque_existential_1(v18, v19), v16 = sub_1D9EE12AC(a1, a2, v14, v15), (v16 & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_1(v18);
        v17 = 0;
        return v17 & 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      v18[0] = AssociatedTypeWitness;
      swift_getExtendedExistentialTypeMetadata_unique();
      ++v8;
      v9 += 40;
      if (v12 == sub_1D9F2B2AC())
      {
        goto LABEL_12;
      }
    }

    result = sub_1D9F2B69C();
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_12:

    v17 = 1;
    return v17 & 1;
  }

  return result;
}

uint64_t sub_1D9EE14D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t PostalAddress.street.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PostalAddress.street.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PostalAddress.city.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PostalAddress.city.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PostalAddress.state.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PostalAddress.state.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PostalAddress.postalCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PostalAddress.postalCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PostalAddress.country.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PostalAddress.country.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall PostalAddress.init(street:city:state:postalCode:country:)(VisualActionPredictionSupport::PostalAddress *__return_ptr retstr, Swift::String_optional street, Swift::String_optional city, Swift::String_optional state, Swift::String_optional postalCode, Swift::String_optional country)
{
  retstr->street = street;
  retstr->city = city;
  retstr->state = state;
  retstr->postalCode = postalCode;
  retstr->country = country;
}

uint64_t sub_1D9EE17FC()
{
  v1 = *v0;
  v2 = 0x746565727473;
  v3 = 0x6574617473;
  v4 = 0x6F436C6174736F70;
  if (v1 != 3)
  {
    v4 = 0x7972746E756F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9EE188C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EE284C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EE18B4(uint64_t a1)
{
  v2 = sub_1D9EE2530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE18F0(uint64_t a1)
{
  v2 = sub_1D9EE2530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PostalAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB752E8, &qword_1D9F40870);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE2530();
  sub_1D9F2BB8C();
  v18 = 0;
  v11 = v13[9];
  sub_1D9F2B90C();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1D9F2B90C();
  v16 = 2;
  sub_1D9F2B90C();
  v15 = 3;
  sub_1D9F2B90C();
  v14 = 4;
  sub_1D9F2B90C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PostalAddress.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[9];
  if (v1[1])
  {
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D9F2BB1C();
    if (v2)
    {
LABEL_3:
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_1D9F2BB1C();
  if (v3)
  {
LABEL_4:
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_1D9F2BB1C();
    if (v5)
    {
      goto LABEL_6;
    }

    return sub_1D9F2BB1C();
  }

LABEL_11:
  sub_1D9F2BB1C();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_1D9F2BB1C();
  sub_1D9F2B18C();
  if (!v5)
  {
    return sub_1D9F2BB1C();
  }

LABEL_6:
  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t PostalAddress.hashValue.getter()
{
  sub_1D9F2BAFC();
  PostalAddress.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t PostalAddress.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB752F8, &qword_1D9F40878);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE2530();
  sub_1D9F2BB7C();
  if (v2)
  {
    v34 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = 0uLL;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  else
  {
    LOBYTE(v40) = 0;
    *&v33 = sub_1D9F2B7FC();
    *(&v33 + 1) = v10;
    LOBYTE(v40) = 1;
    v11 = sub_1D9F2B7FC();
    v30 = a2;
    v32 = v11;
    v31 = v12;
    LOBYTE(v40) = 2;
    v13 = sub_1D9F2B7FC();
    v15 = v14;
    LOBYTE(v40) = 3;
    v16 = sub_1D9F2B7FC();
    v18 = v17;
    v49 = 4;
    v19 = sub_1D9F2B7FC();
    v34 = 0;
    v20 = v19;
    v21 = v8;
    v23 = v22;
    (*(v6 + 8))(v21, v5);
    v24 = v33;
    v35 = v33;
    v25 = v31;
    *&v36 = v32;
    *(&v36 + 1) = v31;
    *&v37 = v13;
    *(&v37 + 1) = v15;
    *&v38 = v16;
    *(&v38 + 1) = v18;
    *&v39 = v20;
    *(&v39 + 1) = v23;
    v26 = v38;
    v27 = v30;
    v30[2] = v37;
    v27[3] = v26;
    v27[4] = v39;
    v28 = v36;
    *v27 = v35;
    v27[1] = v28;
    sub_1D9EE25B4(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = __PAIR128__(*(&v33 + 1), v24);
    v41 = v32;
    v42 = v25;
    v43 = v13;
    v44 = v15;
    v45 = v16;
    v46 = v18;
    v47 = v20;
    v48 = v23;
  }

  return sub_1D9EE2584(&v40);
}

uint64_t sub_1D9EE20EC()
{
  sub_1D9F2BAFC();
  PostalAddress.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE2130()
{
  sub_1D9F2BAFC();
  PostalAddress.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t PostalAddress.stringRepresentation.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[7];
  v7 = v0[9];
  v19 = v0[6];
  v20 = v0[8];
  if (v1)
  {
    v8 = *v0;
  }

  else
  {
    v8 = 0;
  }

  if (v1)
  {
    v9 = v0[1];
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v8, v9);

  MEMORY[0x1DA742F90](32, 0xE100000000000000);
  if (v2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v10, v11);

  MEMORY[0x1DA742F90](32, 0xE100000000000000);
  if (v4)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  if (v4)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v12, v13);

  MEMORY[0x1DA742F90](32, 0xE100000000000000);
  if (v6)
  {
    v14 = v19;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v14, v15);

  MEMORY[0x1DA742F90](32, 0xE100000000000000);
  if (v7)
  {
    v16 = v20;
  }

  else
  {
    v16 = 0;
  }

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x1DA742F90](v16, v17);

  return 0;
}

uint64_t _s29VisualActionPredictionSupport13PostalAddressV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_1D9F2BA1C();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_1D9F2BA1C();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_1D9F2BA1C();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_1D9F2BA1C();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_1D9F2BA1C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D9EE2530()
{
  result = qword_1ECB752F0;
  if (!qword_1ECB752F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB752F0);
  }

  return result;
}

unint64_t sub_1D9EE25F0()
{
  result = qword_1ECB75300;
  if (!qword_1ECB75300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75300);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D9EE2660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_1D9EE26BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D9EE2748()
{
  result = qword_1ECB75308;
  if (!qword_1ECB75308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75308);
  }

  return result;
}

unint64_t sub_1D9EE27A0()
{
  result = qword_1ECB75310;
  if (!qword_1ECB75310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75310);
  }

  return result;
}

unint64_t sub_1D9EE27F8()
{
  result = qword_1ECB75318;
  if (!qword_1ECB75318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75318);
  }

  return result;
}

uint64_t sub_1D9EE284C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE2A00(uint64_t a1)
{
  v2 = sub_1D9EE4648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2A3C(uint64_t a1)
{
  v2 = sub_1D9EE4648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EE2A78(uint64_t a1)
{
  v2 = sub_1D9EE45A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2AB4(uint64_t a1)
{
  v2 = sub_1D9EE45A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9EE2AF0()
{
  v1 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1D9EE2B60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EE4E4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EE2B88(uint64_t a1)
{
  v2 = sub_1D9EE44F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2BC4(uint64_t a1)
{
  v2 = sub_1D9EE44F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EE2C00(uint64_t a1)
{
  v2 = sub_1D9EE45F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2C3C(uint64_t a1)
{
  v2 = sub_1D9EE45F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EE2C78(uint64_t a1)
{
  v2 = sub_1D9EE454C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE2CB4(uint64_t a1)
{
  v2 = sub_1D9EE454C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageRegion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75320, &qword_1D9F40AF0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75328, &qword_1D9F40AF8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75330, &qword_1D9F40B00);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75338, &qword_1D9F40B08);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75340, &qword_1D9F40B10);
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = *(v1 + 8);
  v14 = *(v1 + 16);
  v31[0] = *(v1 + 24);
  v31[1] = v14;
  v15 = *(v1 + 32);
  v16 = a1[3];
  v17 = a1;
  v19 = v31 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_1D9EE44F8();
  sub_1D9F2BB8C();
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v45 = 2;
      sub_1D9EE45A0();
      v23 = v36;
      sub_1D9F2B8FC();
      v45 = 0;
      v24 = v38;
      v25 = v43;
      sub_1D9F2B99C();
      if (!v25)
      {
        v45 = 1;
        sub_1D9F2B99C();
        v45 = 2;
        sub_1D9F2B99C();
        v45 = 3;
        sub_1D9F2B99C();
      }

      v29 = v37;
    }

    else
    {
      v45 = 3;
      sub_1D9EE454C();
      v23 = v39;
      sub_1D9F2B8FC();
      v45 = 0;
      v24 = v41;
      v28 = v43;
      sub_1D9F2B97C();
      if (!v28)
      {
        v45 = 1;
        sub_1D9F2B97C();
        v45 = 2;
        sub_1D9F2B97C();
        v45 = 3;
        sub_1D9F2B97C();
      }

      v29 = v40;
    }

    (*(v29 + 8))(v23, v24);
    return (*(v44 + 8))(v19, v13);
  }

  else
  {
    if (v15)
    {
      v45 = 1;
      sub_1D9EE45F4();
      v20 = v13;
      sub_1D9F2B8FC();
      v45 = 0;
      v26 = v35;
      v27 = v43;
      sub_1D9F2B97C();
      if (!v27)
      {
        v45 = 1;
        sub_1D9F2B97C();
        v45 = 2;
        sub_1D9F2B97C();
        v45 = 3;
        sub_1D9F2B97C();
        (*(v34 + 8))(v9, v26);
        return (*(v44 + 8))(v19, v20);
      }

      (*(v34 + 8))(v9, v26);
    }

    else
    {
      v45 = 0;
      sub_1D9EE4648();
      v20 = v13;
      sub_1D9F2B8FC();
      v45 = 0;
      v21 = v33;
      v22 = v43;
      sub_1D9F2B99C();
      if (!v22)
      {
        v45 = 1;
        sub_1D9F2B99C();
        v45 = 2;
        sub_1D9F2B99C();
        v45 = 3;
        sub_1D9F2B99C();
      }

      (*(v32 + 8))(v12, v21);
    }

    return (*(v44 + 8))(v19, v20);
  }
}

uint64_t ImageRegion.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      v5 = 2;
      goto LABEL_6;
    }

    v7 = 3;
  }

  else
  {
    if (!*(v0 + 32))
    {
      v5 = 0;
LABEL_6:
      MEMORY[0x1DA7438F0](v5);
      MEMORY[0x1DA7438F0](v2);
      MEMORY[0x1DA7438F0](v1);
      MEMORY[0x1DA7438F0](v4);
      return MEMORY[0x1DA7438F0](v3);
    }

    v7 = 1;
  }

  MEMORY[0x1DA7438F0](v7);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1DA743920](v8);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1DA743920](v9);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1DA743920](v10);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1DA743920](v11);
}

uint64_t ImageRegion.hashValue.getter()
{
  sub_1D9F2BAFC();
  ImageRegion.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t ImageRegion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75370, &qword_1D9F40B18);
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v83 = &v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75378, &qword_1D9F40B20);
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v71 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75380, &qword_1D9F40B28);
  v76 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v8 = &v71 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75388, &qword_1D9F40B30);
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75390, &unk_1D9F40B38);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v71 - v14;
  v16 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D9EE44F8();
  v17 = v84;
  sub_1D9F2BB7C();
  if (!v17)
  {
    v73 = 0;
    v18 = v11;
    v72 = v9;
    v19 = v8;
    v21 = v81;
    v20 = v82;
    v22 = v83;
    v84 = v13;
    v23 = sub_1D9F2B8DC();
    v24 = (2 * *(v23 + 16)) | 1;
    v86 = v23;
    v87 = v23 + 32;
    v88 = 0;
    v89 = v24;
    v25 = sub_1D9E46188();
    v26 = v15;
    if (v25 == 4 || v88 != v89 >> 1)
    {
      v30 = sub_1D9F2B6BC();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v32 = &type metadata for ImageRegion;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
    }

    else
    {
      v27 = v15;
      v90 = v25;
      if (v25 > 1u)
      {
        v34 = v80;
        if (v25 == 2)
        {
          v91 = 2;
          sub_1D9EE45A0();
          v35 = v73;
          sub_1D9F2B7DC();
          v36 = v84;
          if (!v35)
          {
            v91 = 0;
            v37 = v77;
            v46 = v20;
            v64 = sub_1D9F2B88C();
            v91 = 1;
            v47 = sub_1D9F2B88C();
            v48 = v78;
            v81 = v47;
            v91 = 2;
            v79 = sub_1D9F2B88C();
            v91 = 3;
            v63 = sub_1D9F2B88C();
            (*(v48 + 8))(v46, v37);
            (*(v36 + 8))(v27, v12);
            swift_unknownObjectRelease();
            goto LABEL_20;
          }
        }

        else
        {
          v91 = 3;
          sub_1D9EE454C();
          v41 = v22;
          v42 = v73;
          sub_1D9F2B7DC();
          v36 = v84;
          if (!v42)
          {
            v91 = 0;
            v43 = v75;
            sub_1D9F2B86C();
            v57 = v56;
            v91 = 1;
            sub_1D9F2B86C();
            v58 = v79;
            v60 = v59;
            v91 = 2;
            sub_1D9F2B86C();
            v62 = v61;
            v91 = 3;
            sub_1D9F2B86C();
            v70 = v69;
            (*(v58 + 8))(v41, v43);
            (*(v36 + 8))(v27, v12);
            swift_unknownObjectRelease();
            v64 = v57;
            v67 = v60;
            v68 = v62;
            v63 = v70;
            goto LABEL_21;
          }
        }

        (*(v36 + 8))(v26, v12);
        goto LABEL_10;
      }

      if (!v25)
      {
        v91 = 0;
        sub_1D9EE4648();
        v28 = v73;
        sub_1D9F2B7DC();
        if (!v28)
        {
          v91 = 0;
          v29 = v72;
          v83 = sub_1D9F2B88C();
          v91 = 1;
          v44 = sub_1D9F2B88C();
          v45 = v74;
          v81 = v44;
          v91 = 2;
          v79 = sub_1D9F2B88C();
          v91 = 3;
          v63 = sub_1D9F2B88C();
          (*(v45 + 8))(v18, v29);
          (*(v84 + 8))(v27, v12);
          swift_unknownObjectRelease();
          v64 = v83;
LABEL_20:
          v34 = v80;
          v67 = v81;
          v68 = v79;
          goto LABEL_21;
        }

        goto LABEL_9;
      }

      v91 = 1;
      sub_1D9EE45F4();
      v38 = v19;
      v39 = v73;
      sub_1D9F2B7DC();
      if (!v39)
      {
        v91 = 0;
        sub_1D9F2B86C();
        v40 = v84;
        v50 = v49;
        v91 = 1;
        sub_1D9F2B86C();
        v51 = v76;
        v53 = v52;
        v91 = 2;
        sub_1D9F2B86C();
        v55 = v54;
        v91 = 3;
        sub_1D9F2B86C();
        v66 = v65;
        (*(v51 + 8))(v38, v21);
        (*(v40 + 8))(v27, v12);
        swift_unknownObjectRelease();
        v64 = v50;
        v67 = v53;
        v68 = v55;
        v63 = v66;
        v34 = v80;
LABEL_21:
        *v34 = v64;
        *(v34 + 8) = v67;
        *(v34 + 16) = v68;
        *(v34 + 24) = v63;
        *(v34 + 32) = v90;
        return __swift_destroy_boxed_opaque_existential_1(v85);
      }
    }

LABEL_9:
    (*(v84 + 8))(v26, v12);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_1D9EE3FA0()
{
  sub_1D9F2BAFC();
  ImageRegion.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE3FF8()
{
  sub_1D9F2BAFC();
  ImageRegion.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t ImageRegion.rectangle(in:)(uint64_t result)
{
  v2 = *(result + 8);
  if (v2 < 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(result + 8);
    goto LABEL_52;
  }

  v3 = *(result + 16);
  if (v3 < 1)
  {
    v13 = 0;
    v14 = 1;
    v15 = *(result + 16);
    goto LABEL_52;
  }

  v5 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v12 = *(v1 + 8);
      v4 = *v1;
      goto LABEL_40;
    }
  }

  else
  {
    if (!*(v1 + 32))
    {
      v8 = v2 - v4;
      if (__OFSUB__(v2, v4))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      *&v9 = v8 - *&v6;
      if (__OFSUB__(v8, *&v6))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v10 = v3 - *&v5;
      if (__OFSUB__(v3, *&v5))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v11 = __OFSUB__(v10, *&v7);
      *&v6 = v10 - *&v7;
      if (v11)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v12 = *(v1 + 16);
      v7 = v9;
LABEL_40:
      v11 = __OFADD__(v4, *&v7);
      v22 = v4 + *&v7;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        v15 = v4 & ~(v4 >> 63);
        if (v22 >= v2)
        {
          v13 = v2;
        }

        else
        {
          v13 = v22;
        }

        if (v13 <= v15)
        {
          v14 = 2;
          goto LABEL_52;
        }

        if (!__OFADD__(v12, *&v6))
        {
          if (v12 + *&v6 >= v3)
          {
            v13 = v3;
          }

          else
          {
            v13 = v12 + *&v6;
          }

          if (v13 > (v12 & ~(v12 >> 63)))
          {
            return v15;
          }

          v14 = 3;
          v15 = v12 & ~(v12 >> 63);
LABEL_52:
          sub_1D9EE469C();
          swift_allocError();
          *v23 = v15;
          *(v23 + 8) = v13;
          *(v23 + 16) = v14;
          swift_willThrow();
          return v15;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v16 = *(v1 + 8);
    v17 = v2 * *&v4;
    if (v17 <= -9.22337204e18)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v17 >= 9.22337204e18)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v18 = v3 * v7;
    if (v18 <= -9.22337204e18)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v18 >= 9.22337204e18)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v19 = (1.0 - v16 - v6) * v2;
    if (v19 <= -9.22337204e18)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v19 >= 9.22337204e18)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v5 = 1.79769313e308;
    *&v7 = COERCE_UNSIGNED_INT64(fabs(v3 * v7)) > 0x7FEFFFFFFFFFFFFFLL;
    v4 = COERCE_UNSIGNED_INT64(fabs(v2 * *&v4)) > 0x7FEFFFFFFFFFFFFFLL;
    v20 = (1.0 - *v1 - *(v1 + 16)) * v3;
    if (COERCE__INT64(fabs(v20)) > 0x7FEFFFFFFFFFFFFFLL || (v4 & 1) != 0 || (LOBYTE(v7) & 1) != 0 || COERCE_UNSIGNED_INT64(fabs((1.0 - v16 - v6) * v2)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_72;
    }

    if (v20 <= -9.22337204e18)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v6 = 9.22337204e18;
    if (v20 < 9.22337204e18)
    {
LABEL_39:
      v4 = v17;
      v12 = v18;
      *&v7 = v19;
      *&v6 = v20;
      goto LABEL_40;
    }

    __break(1u);
  }

  v17 = v2 * v5;
  if (v17 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v18 = v3 * *&v4;
  if (v18 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v19 = v2 * v7;
  if (v19 <= -9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v20 = v3 * v6;
  v21 = COERCE__INT64(fabs(v20)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE_UNSIGNED_INT64(fabs(v2 * v5)) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v2 * v7)) > 0x7FEFFFFFFFFFFFFFLL || v21)
  {
    goto LABEL_73;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v20 < 9.22337204e18)
  {
    goto LABEL_39;
  }

LABEL_76:
  __break(1u);
  return result;
}

BOOL _s29VisualActionPredictionSupport11ImageRegionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*(a1 + 32) <= 1u)
  {
    if (!*(a1 + 32))
    {
      if (*(a2 + 32))
      {
        return 0;
      }

      return *&v2 == *&v7 && *&v3 == *&v6 && *&v5 == *&v9 && *&v4 == *&v8;
    }

    if (v10 == 1)
    {
      if (v2 != v7 || v3 != v6 || v5 != v9)
      {
        return 0;
      }

      return v4 == v8;
    }

    return 0;
  }

  if (*(a1 + 32) != 2)
  {
    if (v10 == 3)
    {
      v17 = v2 == v7 && v3 == v6;
      if (v17 && v5 == v9)
      {
        return v4 == v8;
      }
    }

    return 0;
  }

  if (v10 != 2)
  {
    return 0;
  }

  return *&v2 == *&v7 && *&v3 == *&v6 && *&v5 == *&v9 && *&v4 == *&v8;
}

unint64_t sub_1D9EE44F8()
{
  result = qword_1ECB75348;
  if (!qword_1ECB75348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75348);
  }

  return result;
}

unint64_t sub_1D9EE454C()
{
  result = qword_1ECB75350;
  if (!qword_1ECB75350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75350);
  }

  return result;
}

unint64_t sub_1D9EE45A0()
{
  result = qword_1ECB75358;
  if (!qword_1ECB75358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75358);
  }

  return result;
}

unint64_t sub_1D9EE45F4()
{
  result = qword_1ECB75360;
  if (!qword_1ECB75360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75360);
  }

  return result;
}

unint64_t sub_1D9EE4648()
{
  result = qword_1ECB75368;
  if (!qword_1ECB75368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75368);
  }

  return result;
}

unint64_t sub_1D9EE469C()
{
  result = qword_1ECB75398;
  if (!qword_1ECB75398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75398);
  }

  return result;
}

unint64_t sub_1D9EE46F4()
{
  result = qword_1ECB753A0;
  if (!qword_1ECB753A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753A0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ImageRegion(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for ImageRegion(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ImageRegion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageRegion.Failure(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImageRegion.Failure(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9EE4928()
{
  result = qword_1ECB753A8;
  if (!qword_1ECB753A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753A8);
  }

  return result;
}

unint64_t sub_1D9EE4980()
{
  result = qword_1ECB753B0;
  if (!qword_1ECB753B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753B0);
  }

  return result;
}

unint64_t sub_1D9EE49D8()
{
  result = qword_1ECB753B8;
  if (!qword_1ECB753B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753B8);
  }

  return result;
}

unint64_t sub_1D9EE4A30()
{
  result = qword_1ECB753C0;
  if (!qword_1ECB753C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753C0);
  }

  return result;
}

unint64_t sub_1D9EE4A88()
{
  result = qword_1ECB753C8;
  if (!qword_1ECB753C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753C8);
  }

  return result;
}

unint64_t sub_1D9EE4AE0()
{
  result = qword_1ECB753D0;
  if (!qword_1ECB753D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753D0);
  }

  return result;
}

unint64_t sub_1D9EE4B38()
{
  result = qword_1ECB753D8;
  if (!qword_1ECB753D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753D8);
  }

  return result;
}

unint64_t sub_1D9EE4B90()
{
  result = qword_1ECB753E0;
  if (!qword_1ECB753E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753E0);
  }

  return result;
}

unint64_t sub_1D9EE4BE8()
{
  result = qword_1ECB753E8;
  if (!qword_1ECB753E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753E8);
  }

  return result;
}

unint64_t sub_1D9EE4C40()
{
  result = qword_1ECB753F0;
  if (!qword_1ECB753F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753F0);
  }

  return result;
}

unint64_t sub_1D9EE4C98()
{
  result = qword_1ECB753F8;
  if (!qword_1ECB753F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB753F8);
  }

  return result;
}

unint64_t sub_1D9EE4CF0()
{
  result = qword_1ECB75400;
  if (!qword_1ECB75400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75400);
  }

  return result;
}

unint64_t sub_1D9EE4D48()
{
  result = qword_1ECB75408;
  if (!qword_1ECB75408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75408);
  }

  return result;
}

unint64_t sub_1D9EE4DA0()
{
  result = qword_1ECB75410;
  if (!qword_1ECB75410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75410);
  }

  return result;
}

unint64_t sub_1D9EE4DF8()
{
  result = qword_1ECB75418;
  if (!qword_1ECB75418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75418);
  }

  return result;
}

uint64_t sub_1D9EE4E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001D9F49A30 == a2;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F49A50 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F49A70 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F49A90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE4FB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE5110(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ImageMetadata.init(hostTime:pixelWidth:pixelHeight:pixelFormatType:isHighQuality:isVideoStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void sub_1D9EE52A4()
{
  xmmword_1ECB75420 = 0uLL;
  dword_1ECB75438 = 0;
  qword_1ECB75430 = 0;
}

double static ImageMetadata.invalid.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECB72AC8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1ECB75430;
  v2 = dword_1ECB75438;
  result = *&xmmword_1ECB75420;
  *a1 = xmmword_1ECB75420;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_1D9EE5338()
{
  v1 = 0x656D695474736F68;
  v2 = 0x6965486C65786970;
  if (*v0 != 2)
  {
    v2 = 0x726F466C65786970;
  }

  if (*v0)
  {
    v1 = 0x6469576C65786970;
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

uint64_t sub_1D9EE53CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EE5D24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EE53F4(uint64_t a1)
{
  v2 = sub_1D9EE5AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE5430(uint64_t a1)
{
  v2 = sub_1D9EE5AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75440, &qword_1D9F41260);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  v11 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE5AEC();
  sub_1D9F2BB8C();
  v15 = 0;
  sub_1D9F2B9DC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_1D9F2B99C();
  v13 = 2;
  sub_1D9F2B99C();
  v12 = 3;
  sub_1D9F2B9CC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t ImageMetadata.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1DA743920](*v0);
  MEMORY[0x1DA7438F0](v1);
  MEMORY[0x1DA7438F0](v2);
  return sub_1D9F2BB2C();
}

uint64_t ImageMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  sub_1D9F2BB2C();
  return sub_1D9F2BB4C();
}

uint64_t ImageMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75450, &qword_1D9F41268);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE5AEC();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_1D9F2B8CC();
    v17 = 1;
    v10 = sub_1D9F2B88C();
    v16 = 2;
    v13 = sub_1D9F2B88C();
    v15 = 3;
    v14 = sub_1D9F2B8BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EE594C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  sub_1D9F2BB2C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE59D0()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1DA743920](*v0);
  MEMORY[0x1DA7438F0](v1);
  MEMORY[0x1DA7438F0](v2);
  return sub_1D9F2BB2C();
}

uint64_t sub_1D9EE5A2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  sub_1D9F2BB2C();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EE5AEC()
{
  result = qword_1ECB75448;
  if (!qword_1ECB75448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75448);
  }

  return result;
}

unint64_t sub_1D9EE5B44()
{
  result = qword_1ECB75458;
  if (!qword_1ECB75458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75458);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EE5BAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9EE5BCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 28) = v3;
  return result;
}

unint64_t sub_1D9EE5C20()
{
  result = qword_1ECB75460;
  if (!qword_1ECB75460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75460);
  }

  return result;
}

unint64_t sub_1D9EE5C78()
{
  result = qword_1ECB75468;
  if (!qword_1ECB75468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75468);
  }

  return result;
}

unint64_t sub_1D9EE5CD0()
{
  result = qword_1ECB75470;
  if (!qword_1ECB75470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75470);
  }

  return result;
}

uint64_t sub_1D9EE5D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695474736F68 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576C65786970 && a2 == 0xEA00000000006874 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6965486C65786970 && a2 == 0xEB00000000746867 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

unint64_t XPCFailure.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (!*(v0 + 16))
    {
      swift_getErrorValue();
      return sub_1D9F2BAAC();
    }

    if (v3 != 1)
    {
      sub_1D9F2B68C();

      v26 = 0xD00000000000001BLL;
      MEMORY[0x1DA742F90](v1, v2);
      v18 = 10530;
      v19 = 0xE200000000000000;
LABEL_21:
      MEMORY[0x1DA742F90](v18, v19);
      return v26;
    }

    sub_1D9F2B68C();

    v26 = 0xD000000000000015;
    xpc_type_get_name(v1);
    v4 = sub_1D9F2B1BC();
    MEMORY[0x1DA742F90](v4);

    MEMORY[0x1DA742F90](0x746365707865202CLL, 0xEB00000000203A73);
    v5 = *(v2 + 2);
    if (v5)
    {
      v24 = MEMORY[0x1E69E7CC0];
      sub_1D9E947AC(0, v5, 0);
      v6 = v24;
      v7 = (v2 + 32);
      do
      {
        xpc_type_get_name(*v7);
        v8 = sub_1D9F2B1BC();
        v25 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          v13 = v8;
          v14 = v9;
          sub_1D9E947AC((v10 > 1), v11 + 1, 1);
          v9 = v14;
          v8 = v13;
          v6 = v25;
        }

        *(v6 + 16) = v11 + 1;
        v12 = v6 + 16 * v11;
        *(v12 + 32) = v8;
        *(v12 + 40) = v9;
        ++v7;
        --v5;
      }

      while (v5);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E87DA8();
    v20 = sub_1D9F2B0FC();
    v22 = v21;

    MEMORY[0x1DA742F90](v20, v22);

LABEL_20:
    v18 = 41;
    v19 = 0xE100000000000000;
    goto LABEL_21;
  }

  if (v3 == 3)
  {
    v16 = MEMORY[0x1DA744500](*v0);
    if (v16 == sub_1D9F2AEDC())
    {
      v23 = sub_1D9F2AF4C();
      if (!xpc_dictionary_get_string(v1, v23))
      {
LABEL_17:
        swift_getObjectType();
        swift_unknownObjectRetain();
        return sub_1D9F2B13C();
      }
    }

    else
    {
      v17 = MEMORY[0x1DA744500](v1);
      if (v17 != sub_1D9F2AF3C() || !xpc_rich_error_copy_description(v1))
      {
        goto LABEL_17;
      }
    }

    return sub_1D9F2B1BC();
  }

  if (v3 == 4)
  {
    sub_1D9F2B68C();

    v26 = 0xD000000000000015;
    MEMORY[0x1DA742F90](v1, v2);
    goto LABEL_20;
  }

  if (v1 <= 1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport10XPCFailureO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D9EE629C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9EE62E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1D9EE6328(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D9EE63C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D9F2AF2C();
  result = MEMORY[0x1DA744500](a1);
  if (result == v6)
  {
    *a3 = a1;
  }

  else
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t SocialProfile.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SocialProfile.handle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SocialProfile.platform.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SocialProfile.platform.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

VisualActionPredictionSupport::SocialProfile __swiftcall SocialProfile.init(handle:platform:)(Swift::String handle, Swift::String platform)
{
  *v2 = handle;
  v2[1] = platform;
  result.platform = platform;
  result.handle = handle;
  return result;
}

uint64_t static SocialProfile.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

uint64_t sub_1D9EE6658()
{
  if (*v0)
  {
    return 0x6D726F6674616C70;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_1D9EE6690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE6768(uint64_t a1)
{
  v2 = sub_1D9EE6974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE67A4(uint64_t a1)
{
  v2 = sub_1D9EE6974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SocialProfile.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75488, &qword_1D9F41730);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE6974();
  sub_1D9F2BB8C();
  v12 = 0;
  v8 = v10[3];
  sub_1D9F2B95C();
  if (!v8)
  {
    v11 = 1;
    sub_1D9F2B95C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9EE6974()
{
  result = qword_1ECB75490;
  if (!qword_1ECB75490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75490);
  }

  return result;
}

uint64_t SocialProfile.hash(into:)(uint64_t a1)
{
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t SocialProfile.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t SocialProfile.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75498, &qword_1D9F41738);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE6974();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1D9F2B84C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1D9F2B84C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9EE6CB4()
{
  result = qword_1ECB754A0;
  if (!qword_1ECB754A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754A0);
  }

  return result;
}

unint64_t sub_1D9EE6D2C()
{
  result = qword_1ECB754A8;
  if (!qword_1ECB754A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754A8);
  }

  return result;
}

unint64_t sub_1D9EE6D84()
{
  result = qword_1ECB754B0;
  if (!qword_1ECB754B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754B0);
  }

  return result;
}

unint64_t sub_1D9EE6DDC()
{
  result = qword_1ECB754B8;
  if (!qword_1ECB754B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754B8);
  }

  return result;
}

uint64_t Book.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Book.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Book.series.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Book.series.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Book.author.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Book.author.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Book.genre.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Book.genre.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Book.url.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Book.url.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Book.adamID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Book.adamID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void __swiftcall Book.init(title:series:author:genre:url:adamID:purchasedDate:)(VisualActionPredictionSupport::Book *__return_ptr retstr, Swift::String title, Swift::String series, Swift::String author, Swift::String genre, Swift::String url, Swift::String adamID, Swift::Double purchasedDate)
{
  retstr->title = title;
  retstr->series = series;
  retstr->author = author;
  retstr->genre = genre;
  retstr->url = url;
  retstr->adamID = adamID;
  retstr->purchasedDate = purchasedDate;
}

uint64_t sub_1D9EE71BC()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x44496D616461;
  if (v1 != 5)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x65726E6567;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x736569726573;
  if (v1 != 1)
  {
    v5 = 0x726F68747561;
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

uint64_t sub_1D9EE7288@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EE81D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EE72B0(uint64_t a1)
{
  v2 = sub_1D9EE7F04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE72EC(uint64_t a1)
{
  v2 = sub_1D9EE7F04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Book.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB754C0, &qword_1D9F41980);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = v1[2];
  v14[8] = v1[3];
  v14[9] = v7;
  v8 = v1[4];
  v14[6] = v1[5];
  v14[7] = v8;
  v9 = v1[6];
  v14[4] = v1[7];
  v14[5] = v9;
  v10 = v1[8];
  v14[2] = v1[9];
  v14[3] = v10;
  v11 = v1[11];
  v14[0] = v1[10];
  v14[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE7F04();
  sub_1D9F2BB8C();
  v21 = 0;
  v12 = v14[10];
  sub_1D9F2B95C();
  if (!v12)
  {
    v20 = 1;
    sub_1D9F2B95C();
    v19 = 2;
    sub_1D9F2B95C();
    v18 = 3;
    sub_1D9F2B95C();
    v17 = 4;
    sub_1D9F2B95C();
    v16 = 5;
    sub_1D9F2B95C();
    v15 = 6;
    sub_1D9F2B97C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Book.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 96);
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x1DA743920](*&v3);
}

uint64_t Book.hashValue.getter()
{
  v1 = *(v0 + 96);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA743920](*&v2);
  return sub_1D9F2BB4C();
}

uint64_t Book.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB754D0, &qword_1D9F41988);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE7F04();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v46[0]) = 0;
  v9 = sub_1D9F2B84C();
  v38 = v10;
  LOBYTE(v46[0]) = 1;
  *&v37 = sub_1D9F2B84C();
  *(&v37 + 1) = v11;
  LOBYTE(v46[0]) = 2;
  v35 = sub_1D9F2B84C();
  v13 = v12;
  LOBYTE(v46[0]) = 3;
  v14 = sub_1D9F2B84C();
  v36 = v15;
  v31 = v14;
  LOBYTE(v46[0]) = 4;
  v34 = 0;
  v30 = sub_1D9F2B84C();
  v33 = v16;
  LOBYTE(v46[0]) = 5;
  v29 = sub_1D9F2B84C();
  v32 = v17;
  v47 = 6;
  sub_1D9F2B86C();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  *&v39 = v9;
  v20 = v38;
  *(&v39 + 1) = v38;
  v40 = v37;
  v21 = *(&v37 + 1);
  *&v41 = v35;
  *(&v41 + 1) = v13;
  v22 = v36;
  *&v42 = v31;
  *(&v42 + 1) = v36;
  v23 = v33;
  *&v43 = v30;
  *(&v43 + 1) = v33;
  *&v44 = v29;
  *(&v44 + 1) = v32;
  v45 = v19;
  v24 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v24;
  *(a2 + 96) = v45;
  v25 = v40;
  *a2 = v39;
  *(a2 + 16) = v25;
  v26 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v26;
  sub_1D9E51C04(&v39, v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46[0] = v9;
  v46[1] = v20;
  v46[2] = v37;
  v46[3] = v21;
  v46[4] = v35;
  v46[5] = v13;
  v46[6] = v31;
  v46[7] = v22;
  v46[8] = v30;
  v46[9] = v23;
  v46[10] = v29;
  v46[11] = v32;
  v46[12] = v19;
  return sub_1D9EE7F58(v46);
}

uint64_t sub_1D9EE7CE8()
{
  sub_1D9F2BAFC();
  Book.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EE7D2C()
{
  sub_1D9F2BAFC();
  Book.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

BOOL _s29VisualActionPredictionSupport4BookV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v5 = *(a1 + 5);
  v23 = *(a1 + 7);
  v24 = *(a1 + 6);
  v21 = *(a1 + 9);
  v22 = *(a1 + 8);
  v17 = *(a1 + 11);
  v18 = *(a1 + 10);
  v6 = a1[12];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v19 = *(a2 + 72);
  v20 = *(a2 + 64);
  v15 = *(a2 + 88);
  v16 = *(a2 + 80);
  v13 = *(a2 + 96);
  return (*a1 == *a2 && *(a1 + 1) == *(a2 + 8) || (sub_1D9F2BA1C() & 1) != 0) && (v2 == v8 && v4 == v7 || (sub_1D9F2BA1C() & 1) != 0) && (v3 == v10 && v5 == v9 || (sub_1D9F2BA1C() & 1) != 0) && (v24 == v12 && v23 == v11 || (sub_1D9F2BA1C() & 1) != 0) && (v22 == v20 && v21 == v19 || (sub_1D9F2BA1C() & 1) != 0) && (v18 == v16 && v17 == v15 || (sub_1D9F2BA1C() & 1) != 0) && v6 == v13;
}

unint64_t sub_1D9EE7F04()
{
  result = qword_1ECB754C8;
  if (!qword_1ECB754C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754C8);
  }

  return result;
}

unint64_t sub_1D9EE7F8C()
{
  result = qword_1ECB754D8;
  if (!qword_1ECB754D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754D8);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D9EE800C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D9EE8054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9EE80D0()
{
  result = qword_1ECB754E0;
  if (!qword_1ECB754E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754E0);
  }

  return result;
}

unint64_t sub_1D9EE8128()
{
  result = qword_1ECB754E8;
  if (!qword_1ECB754E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754E8);
  }

  return result;
}

unint64_t sub_1D9EE8180()
{
  result = qword_1ECB754F0;
  if (!qword_1ECB754F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB754F0);
  }

  return result;
}

uint64_t sub_1D9EE81D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736569726573 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xED00006574614464)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t ShipmentTrackingNumber.trackingNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShipmentTrackingNumber.trackingNumber.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ShipmentTrackingNumber.carrier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShipmentTrackingNumber.carrier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

VisualActionPredictionSupport::ShipmentTrackingNumber __swiftcall ShipmentTrackingNumber.init(trackingNumber:carrier:)(Swift::String trackingNumber, Swift::String carrier)
{
  *v2 = trackingNumber;
  v2[1] = carrier;
  result.carrier = carrier;
  result.trackingNumber = trackingNumber;
  return result;
}

uint64_t static ShipmentTrackingNumber.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

uint64_t sub_1D9EE85D0()
{
  if (*v0)
  {
    return 0x72656972726163;
  }

  else
  {
    return 0x676E696B63617274;
  }
}

uint64_t sub_1D9EE8618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656972726163 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE86FC(uint64_t a1)
{
  v2 = sub_1D9EE8908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE8738(uint64_t a1)
{
  v2 = sub_1D9EE8908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ShipmentTrackingNumber.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB754F8, &qword_1D9F41C00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE8908();
  sub_1D9F2BB8C();
  v12 = 0;
  v8 = v10[3];
  sub_1D9F2B95C();
  if (!v8)
  {
    v11 = 1;
    sub_1D9F2B95C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9EE8908()
{
  result = qword_1ECB75500;
  if (!qword_1ECB75500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75500);
  }

  return result;
}

uint64_t ShipmentTrackingNumber.hash(into:)(uint64_t a1)
{
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t ShipmentTrackingNumber.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t ShipmentTrackingNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75508, &qword_1D9F41C08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE8908();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1D9F2B84C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1D9F2B84C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9EE8C48()
{
  result = qword_1ECB75510;
  if (!qword_1ECB75510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75510);
  }

  return result;
}

unint64_t sub_1D9EE8CC0()
{
  result = qword_1ECB75518;
  if (!qword_1ECB75518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75518);
  }

  return result;
}

unint64_t sub_1D9EE8D18()
{
  result = qword_1ECB75520;
  if (!qword_1ECB75520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75520);
  }

  return result;
}

unint64_t sub_1D9EE8D70()
{
  result = qword_1ECB75528;
  if (!qword_1ECB75528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75528);
  }

  return result;
}

uint64_t GroundingData.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GroundingData.modelVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t GroundingData.objectEmbedding.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

void __swiftcall GroundingData.init(taxonomyEntry:categories:modelVersion:objectEmbedding:)(VisualActionPredictionSupport::GroundingData *__return_ptr retstr, Swift::String taxonomyEntry, Swift::OpaquePointer categories, Swift::String modelVersion, VisualActionPredictionSupport::ObjectEmbedding *objectEmbedding)
{
  modelName = objectEmbedding->modelName;
  countAndFlagsBits = objectEmbedding->modelVersion._countAndFlagsBits;
  retstr->label = taxonomyEntry;
  retstr->categories = categories;
  retstr->modelVersion = modelVersion;
  retstr->objectEmbedding.modelName = modelName;
  retstr->objectEmbedding.modelVersion._countAndFlagsBits = countAndFlagsBits;
  *&retstr->objectEmbedding.modelVersion._object = *&objectEmbedding->modelVersion._object;
  retstr->isDisplayable = 0;
}

void __swiftcall GroundingData.init(taxonomyEntry:categories:modelVersion:objectEmbedding:isDisplayable:)(VisualActionPredictionSupport::GroundingData *__return_ptr retstr, Swift::String taxonomyEntry, Swift::OpaquePointer categories, Swift::String modelVersion, VisualActionPredictionSupport::ObjectEmbedding *objectEmbedding, Swift::Bool isDisplayable)
{
  modelName = objectEmbedding->modelName;
  countAndFlagsBits = objectEmbedding->modelVersion._countAndFlagsBits;
  retstr->label = taxonomyEntry;
  retstr->categories = categories;
  retstr->modelVersion = modelVersion;
  retstr->objectEmbedding.modelName = modelName;
  retstr->objectEmbedding.modelVersion._countAndFlagsBits = countAndFlagsBits;
  *&retstr->objectEmbedding.modelVersion._object = *&objectEmbedding->modelVersion._object;
  retstr->isDisplayable = isDisplayable;
}

uint64_t sub_1D9EE8EE4()
{
  v1 = *v0;
  v2 = 0x6C6562616CLL;
  v3 = 0x7265566C65646F6DLL;
  v4 = 0x6D457463656A626FLL;
  if (v1 != 3)
  {
    v4 = 0x616C707369447369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69726F6765746163;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9EE8FA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EE9C10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EE8FC8(uint64_t a1)
{
  v2 = sub_1D9EE9984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EE9004(uint64_t a1)
{
  v2 = sub_1D9EE9984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroundingData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75530, &unk_1D9F41E60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = *(v1 + 16);
  v27 = *(v1 + 24);
  v28 = v8;
  v9 = *(v1 + 32);
  v25 = *(v1 + 40);
  v26 = v9;
  v10 = *(v1 + 48);
  v12 = *(v1 + 64);
  v11 = *(v1 + 72);
  v21 = *(v1 + 56);
  v22 = v12;
  v23 = v11;
  v24 = v10;
  v34 = *(v1 + 80);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D9EE9984();
  sub_1D9F2BB8C();
  LOBYTE(v29) = 0;
  sub_1D9F2B95C();
  if (!v2)
  {
    v18 = v24;
    v17 = v25;
    v29 = v28;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E441E4(&qword_1EE0F1120, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
    LOBYTE(v29) = 2;
    sub_1D9F2B95C();
    v29 = v17;
    v30 = v18;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v35 = 3;
    sub_1D9EE99D8();

    sub_1D9F2B9AC();

    LOBYTE(v29) = 4;
    sub_1D9F2B96C();
  }

  return (*(v5 + 8))(v7, v16);
}

uint64_t GroundingData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75538, &qword_1D9F41E70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EE9984();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34) = 0;
  v9 = sub_1D9F2B84C();
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
  LOBYTE(v28) = 1;
  sub_1D9E441E4(&qword_1EE0F1118, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  v26 = v34;
  LOBYTE(v34) = 2;
  v24 = sub_1D9F2B84C();
  v25 = v11;
  LOBYTE(v28) = 3;
  sub_1D9EE9A2C();
  sub_1D9F2B89C();
  v21 = v34;
  v22 = v35;
  v20 = v36;
  v23 = v37;
  v43 = 4;
  v12 = sub_1D9F2B85C();
  (*(v6 + 8))(v8, v5);
  *&v28 = v9;
  v13 = v27;
  v14 = v26;
  *(&v28 + 1) = v27;
  *&v29 = v26;
  v15 = v24;
  v16 = v25;
  *(&v29 + 1) = v24;
  *&v30 = v25;
  *(&v30 + 1) = v21;
  *&v31 = v22;
  *(&v31 + 1) = v20;
  v32 = v23;
  v12 &= 1u;
  v33 = v12;
  *(a2 + 80) = v12;
  v17 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v17;
  *(a2 + 64) = v32;
  v18 = v29;
  *a2 = v28;
  *(a2 + 16) = v18;
  sub_1D9EE9A80(&v28, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34 = v9;
  v35 = v13;
  v36 = v14;
  *&v37 = v15;
  *(&v37 + 1) = v16;
  v38 = v21;
  v39 = v22;
  v40 = v20;
  v41 = v23;
  v42 = v12;
  return sub_1D9EE9AB8(&v34);
}

uint64_t _s29VisualActionPredictionSupport13GroundingDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v19 = a1[8];
  v20 = a1[7];
  v15 = a1[9];
  v16 = *(a1 + 80);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v17 = *(a2 + 64);
  v18 = *(a2 + 56);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D9F2BA1C() & 1) == 0 || (sub_1D9E49670(v2, v8) & 1) == 0 || (v3 != v7 || v4 != v9) && (sub_1D9F2BA1C() & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_1D9F2BA1C() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  if (sub_1D9E4AEA8(v15, v13))
  {
    return v16 ^ v14 ^ 1u;
  }

  return 0;
}

unint64_t sub_1D9EE9984()
{
  result = qword_1EE0F2FC0[0];
  if (!qword_1EE0F2FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F2FC0);
  }

  return result;
}

unint64_t sub_1D9EE99D8()
{
  result = qword_1EE0F19E0;
  if (!qword_1EE0F19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F19E0);
  }

  return result;
}

unint64_t sub_1D9EE9A2C()
{
  result = qword_1EE0F19D8;
  if (!qword_1EE0F19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F19D8);
  }

  return result;
}

unint64_t sub_1D9EE9B0C()
{
  result = qword_1ECB75540;
  if (!qword_1ECB75540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75540);
  }

  return result;
}

unint64_t sub_1D9EE9B64()
{
  result = qword_1EE0F2FB0;
  if (!qword_1EE0F2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2FB0);
  }

  return result;
}

unint64_t sub_1D9EE9BBC()
{
  result = qword_1EE0F2FB8;
  if (!qword_1EE0F2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2FB8);
  }

  return result;
}

uint64_t sub_1D9EE9C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D457463656A626FLL && a2 == 0xEF676E6964646562 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C707369447369 && a2 == 0xED0000656C626179)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EE9DD8(void *a1, uint64_t a2)
{
  v4 = sub_1D9F2AECC();
  v5 = MEMORY[0x1DA744500](a1);
  if (v5 == v4)
  {
    if (xpc_uuid_get_bytes(a1))
    {
      sub_1D9F2AD4C();
    }

    else
    {
      *a2 = xmmword_1D9F3CFD0;
      *(a2 + 16) = 5;
      sub_1D9E56B78();
      swift_willThrowTypedImpl();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9F2F8F0;
    *(v7 + 32) = v4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return result;
}

double sub_1D9EE9F30(void *a1, uint64_t a2)
{
  sub_1D9EE9DD8(a1, &v6);
  if (v2)
  {
    v5 = v7;
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = v5;
  }

  return result;
}

uint64_t sub_1D9EE9FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CA0, &unk_1D9F35D60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - v11;
  v13 = sub_1D9F2B77C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3(a1, a2);
  sub_1D9F2B76C();
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    if (*(v17 + 16) && (v19 = sub_1D9EEA200(v16), (v20 & 1) != 0))
    {
      sub_1D9E722B0(*(v17 + 56) + 32 * v19, v23);
      (*(v14 + 8))(v16, v13);

      result = swift_dynamicCast();
      if (result)
      {
        v21 = v22[1];
        *(a5 + 24) = &type metadata for XPCValueContainer;
        *(a5 + 32) = a4;
        *a5 = v21;
        return result;
      }
    }

    else
    {

      result = (*(v14 + 8))(v16, v13);
    }

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1D9EEA200(uint64_t a1)
{
  sub_1D9F2B77C();
  v2 = sub_1D9F2B0DC();

  return sub_1D9EEA46C(a1, v2);
}

unint64_t sub_1D9EEA264(uint64_t a1)
{
  sub_1D9F2AD7C();
  sub_1D9EEAB00(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1D9F2B0DC();

  return sub_1D9EEA604(a1, v2);
}

unint64_t sub_1D9EEA2FC(uint64_t a1)
{
  sub_1D9F2BAFC();
  type metadata accessor for CFString(0);
  sub_1D9EEAB00(&qword_1ECB75548, type metadata accessor for CFString, &unk_1D9F2CA6C);
  sub_1D9F2AD9C();
  v2 = sub_1D9F2BB4C();

  return sub_1D9EEA7C4(a1, v2);
}

unint64_t sub_1D9EEA3B0(uint64_t a1)
{
  v2 = sub_1D9F2B63C();

  return sub_1D9EEA8D0(a1, v2);
}

unint64_t sub_1D9EEA3F4(uint64_t a1, uint64_t a2)
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v4 = sub_1D9F2BB4C();

  return sub_1D9EEA998(a1, a2, v4);
}

unint64_t sub_1D9EEA46C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1D9F2B77C();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_1D9F2B10C();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1D9EEA604(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1D9EEAB00(&qword_1ECB731E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1D9F2B10C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1D9EEA7C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D9EEAB00(&qword_1ECB75548, type metadata accessor for CFString, &unk_1D9F2CA6C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D9F2AD8C();

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

unint64_t sub_1D9EEA8D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D9EEAA50(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA743430](v9, a1);
      sub_1D9EEAAAC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D9EEA998(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D9F2BA1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1D9EEAB00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9EEAB4C()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_1D9EEAB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F49B90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EEAC68(uint64_t a1)
{
  v2 = sub_1D9EF08F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEACA4(uint64_t a1)
{
  v2 = sub_1D9EF08F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EEACE0(uint64_t a1)
{
  v2 = sub_1D9EF0948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEAD1C(uint64_t a1)
{
  v2 = sub_1D9EF0948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EEAD58(uint64_t a1)
{
  v2 = sub_1D9EF099C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEAD94(uint64_t a1)
{
  v2 = sub_1D9EF099C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.Identity.Person.Name.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75550, &qword_1D9F420B0);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v23 - v3;
  v4 = sub_1D9F2AB6C();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75558, &qword_1D9F420B8);
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Contact.Identity.Person.Name(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75560, &qword_1D9F420C0);
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF08F4();
  sub_1D9F2BB8C();
  sub_1D9EF11C8(v30, v11, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v26;
    v16 = v24;
    v17 = v11;
    v18 = v27;
    (*(v26 + 32))(v24, v17, v27);
    v33 = 1;
    sub_1D9EF0948();
    v19 = v25;
    v20 = v31;
    sub_1D9F2B8FC();
    sub_1D9EF09F0(&qword_1ECB75578, MEMORY[0x1E6968A70], MEMORY[0x1E6968A78]);
    v21 = v29;
    sub_1D9F2B9AC();
    (*(v28 + 8))(v19, v21);
    (*(v15 + 8))(v16, v18);
  }

  else
  {
    v32 = 0;
    sub_1D9EF099C();
    v20 = v31;
    sub_1D9F2B8FC();
    sub_1D9F2B95C();

    (*(v23 + 8))(v8, v6);
  }

  return (*(v12 + 8))(v14, v20);
}

uint64_t Contact.Identity.Person.Name.hash(into:)(uint64_t a1)
{
  v2 = sub_1D9F2AB6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Contact.Identity.Person.Name(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9EF11C8(v1, v8, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1DA7438F0](1);
    sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70], MEMORY[0x1E6968A80]);
    sub_1D9F2B0EC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
  }
}

uint64_t Contact.Identity.Person.Name.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D9F2AB6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Contact.Identity.Person.Name(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F2BAFC();
  sub_1D9EF11C8(v1, v8, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1DA7438F0](1);
    sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70], MEMORY[0x1E6968A80]);
    sub_1D9F2B0EC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t Contact.Identity.Person.Name.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75590, &qword_1D9F420C8);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v45 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75598, &qword_1D9F420D0);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v7 = &v45 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755A0, &unk_1D9F420D8);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Contact.Identity.Person.Name(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v19 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D9EF08F4();
  v20 = v57;
  sub_1D9F2BB7C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v46 = v16;
  v47 = v13;
  v21 = v7;
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v48 = v18;
  v57 = v10;
  v25 = v56;
  v26 = sub_1D9F2B8DC();
  v27 = (2 * *(v26 + 16)) | 1;
  v59 = v26;
  v60 = v26 + 32;
  v61 = 0;
  v62 = v27;
  v28 = sub_1D9E4618C();
  if (v28 == 2 || v61 != v62 >> 1)
  {
    v34 = sub_1D9F2B6BC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
    *v36 = v57;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v55 + 8))(v9, v22);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  if (v28)
  {
    v63 = 1;
    sub_1D9EF0948();
    sub_1D9F2B7DC();
    v29 = v48;
    sub_1D9F2AB6C();
    sub_1D9EF09F0(&qword_1ECB755A8, MEMORY[0x1E6968A70], MEMORY[0x1E6968A90]);
    v30 = v47;
    v31 = v50;
    sub_1D9F2B89C();
    (*(v51 + 8))(v24, v31);
    (*(v55 + 8))(v9, v22);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v32 = v30;
    v33 = v56;
  }

  else
  {
    v63 = 0;
    sub_1D9EF099C();
    sub_1D9F2B7DC();
    v38 = v9;
    v39 = sub_1D9F2B84C();
    v40 = v55;
    v41 = v39;
    v43 = v42;
    (*(v49 + 8))(v21, v23);
    (*(v40 + 8))(v38, v22);
    swift_unknownObjectRelease();
    v44 = v46;
    *v46 = v41;
    v44[1] = v43;
    swift_storeEnumTagMultiPayload();
    v32 = v44;
    v33 = v25;
    v29 = v48;
  }

  sub_1D9EF16D8(v32, v29, type metadata accessor for Contact.Identity.Person.Name);
  sub_1D9EF16D8(v29, v33, type metadata accessor for Contact.Identity.Person.Name);
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_1D9EEBCCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D9F2AB6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F2BAFC();
  sub_1D9EF11C8(v3, v10, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x1DA7438F0](1);
    sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70], MEMORY[0x1E6968A80]);
    sub_1D9F2B0EC();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t Contact.Identity.Person.jobTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Contact.Identity.Person(0) + 20));

  return v1;
}

uint64_t Contact.Identity.Person.jobTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Contact.Identity.Person(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Contact.Identity.Person.department.getter()
{
  v1 = *(v0 + *(type metadata accessor for Contact.Identity.Person(0) + 24));

  return v1;
}

uint64_t Contact.Identity.Person.department.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Contact.Identity.Person(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Contact.Identity.Person.organization.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Contact.Identity.Person(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D9EF0AC8(v4, v5);
}

uint64_t Contact.Identity.Person.organization.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Contact.Identity.Person(0) + 28));
  result = sub_1D9EF0ADC(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Contact.Identity.Person.init(name:jobTitle:department:organization:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a6[1];
  v20 = *a6;
  v14 = type metadata accessor for Contact.Identity.Person.Name(0);
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v15 = type metadata accessor for Contact.Identity.Person(0);
  v16 = (a7 + v15[5]);
  v17 = (a7 + v15[6]);
  v18 = (a7 + v15[7]);
  *v18 = xmmword_1D9F420A0;
  sub_1D9EF0A38(a1, a7);
  *v16 = a2;
  v16[1] = a3;
  *v17 = a4;
  v17[1] = a5;
  result = sub_1D9EF0ADC(*v18, v18[1]);
  *v18 = v20;
  v18[1] = v13;
  return result;
}

uint64_t sub_1D9EEC290()
{
  v1 = 1701667182;
  v2 = 0x656D747261706564;
  if (*v0 != 2)
  {
    v2 = 0x617A696E6167726FLL;
  }

  if (*v0)
  {
    v1 = 0x656C746954626F6ALL;
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

uint64_t sub_1D9EEC310@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EF3010(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EEC338(uint64_t a1)
{
  v2 = sub_1D9EF106C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEC374(uint64_t a1)
{
  v2 = sub_1D9EF106C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.Identity.Person.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B8, &qword_1D9F420F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF106C();
  sub_1D9F2BB8C();
  LOBYTE(v14) = 0;
  type metadata accessor for Contact.Identity.Person.Name(0);
  sub_1D9EF09F0(&qword_1ECB755C8, type metadata accessor for Contact.Identity.Person.Name, &protocol conformance descriptor for Contact.Identity.Person.Name);
  sub_1D9F2B94C();
  if (!v2)
  {
    v9 = type metadata accessor for Contact.Identity.Person(0);
    LOBYTE(v14) = 1;
    sub_1D9F2B90C();
    LOBYTE(v14) = 2;
    sub_1D9F2B90C();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 3;
    sub_1D9EF0AC8(v14, v11);
    sub_1D9EF10C0();
    sub_1D9F2B94C();
    sub_1D9EF0ADC(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Contact.Identity.Person.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D9F2AB6C();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Contact.Identity.Person.Name(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  sub_1D9E51E70(v2, &v21 - v14, &qword_1ECB755B0, &qword_1D9F420E8);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9EF16D8(v15, v12, type metadata accessor for Contact.Identity.Person.Name);
    sub_1D9F2BB1C();
    sub_1D9EF11C8(v12, v10, type metadata accessor for Contact.Identity.Person.Name);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = v21;
      v16 = v22;
      (*(v21 + 32))(v5, v10, v22);
      MEMORY[0x1DA7438F0](1);
      sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70], MEMORY[0x1E6968A80]);
      sub_1D9F2B0EC();
      (*(v17 + 8))(v5, v16);
    }

    else
    {
      MEMORY[0x1DA7438F0](0);
      sub_1D9F2B18C();
    }

    sub_1D9EF1114(v12, type metadata accessor for Contact.Identity.Person.Name);
  }

  v18 = type metadata accessor for Contact.Identity.Person(0);
  if (*(v2 + v18[5] + 8))
  {
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
  }

  else
  {
    sub_1D9F2BB1C();
  }

  if (*(v2 + v18[6] + 8))
  {
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
  }

  else
  {
    sub_1D9F2BB1C();
  }

  v19 = *(v2 + v18[7] + 8);
  if (v19 == 1)
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  if (!v19)
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  return sub_1D9F2B18C();
}

uint64_t Contact.Identity.Person.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v27 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755D8, &qword_1D9F420F8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Contact.Identity.Person(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Contact.Identity.Person.Name(0);
  v12 = *(*(v11 - 8) + 56);
  v29 = v11;
  v12(v10, 1, 1);
  v13 = &v10[v8[7]];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v10[v8[8]];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v10[v8[9]];
  *v15 = xmmword_1D9F420A0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF106C();
  v32 = v6;
  v16 = v34;
  sub_1D9F2BB7C();
  if (!v16)
  {
    v34 = v15;
    v17 = v30;
    LOBYTE(v35) = 0;
    sub_1D9EF09F0(&qword_1ECB755E0, type metadata accessor for Contact.Identity.Person.Name, &protocol conformance descriptor for Contact.Identity.Person.Name);
    v19 = v31;
    v18 = v32;
    sub_1D9F2B83C();
    sub_1D9EF0A38(v19, v10);
    LOBYTE(v35) = 1;
    *v13 = sub_1D9F2B7FC();
    v13[1] = v20;
    LOBYTE(v35) = 2;
    *v14 = sub_1D9F2B7FC();
    v14[1] = v22;
    v37 = 3;
    sub_1D9EF1174();
    v23 = v33;
    sub_1D9F2B83C();
    (*(v17 + 8))(v18, v23);
    v24 = v35;
    v25 = v36;
    v26 = v34;
    sub_1D9EF0ADC(*v34, v34[1]);
    *v26 = v24;
    v26[1] = v25;
    sub_1D9EF11C8(v10, v28, type metadata accessor for Contact.Identity.Person);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9EF1114(v10, type metadata accessor for Contact.Identity.Person);
}

uint64_t Contact.Identity.Organization.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Contact.Identity.Organization.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

VisualActionPredictionSupport::Contact::Identity::Organization __swiftcall Contact.Identity.Organization.init(name:)(Swift::String_optional name)
{
  object = name.value._object;
  countAndFlagsBits = name.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.name.value._object = v6;
  result.name.value._countAndFlagsBits = v5;
  return result;
}

uint64_t static Contact.Identity.Organization.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1D9F2BA1C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D9EECF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EECFFC(uint64_t a1)
{
  v2 = sub_1D9EF1230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EED038(uint64_t a1)
{
  v2 = sub_1D9EF1230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.Identity.Organization.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755F0, &qword_1D9F42100);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF1230();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Contact.Identity.Organization.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t Contact.Identity.Organization.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  if (v1)
  {
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t Contact.Identity.Organization.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75600, &qword_1D9F42108);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF1230();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v9 = sub_1D9F2B7FC();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EED424(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755F0, &qword_1D9F42100);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF1230();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D9EED564()
{
  if (*v0)
  {
    return 0x617A696E6167726FLL;
  }

  else
  {
    return 0x6E6F73726570;
  }
}

uint64_t sub_1D9EED5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EED680(uint64_t a1)
{
  v2 = sub_1D9EF1630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EED6BC(uint64_t a1)
{
  v2 = sub_1D9EF1630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EED6F8(uint64_t a1)
{
  v2 = sub_1D9EF1684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EED734(uint64_t a1)
{
  v2 = sub_1D9EF1684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EED770(uint64_t a1)
{
  v2 = sub_1D9EF1740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EED7AC(uint64_t a1)
{
  v2 = sub_1D9EF1740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.Identity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75608, &qword_1D9F42110);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v22 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75610, &qword_1D9F42118);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - v5;
  v22 = type metadata accessor for Contact.Identity.Person(0);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Contact.Identity(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75618, &qword_1D9F42120);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF1630();
  sub_1D9F2BB8C();
  sub_1D9EF11C8(v29, v10, type metadata accessor for Contact.Identity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v10;
    v15 = v10[1];
    LOBYTE(v30) = 1;
    sub_1D9EF1684();
    v17 = v24;
    sub_1D9F2B8FC();
    v30 = v16;
    v31 = v15;
    sub_1D9EF10C0();
    v18 = v28;
    sub_1D9F2B9AC();
    (*(v27 + 8))(v17, v18);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    sub_1D9EF16D8(v10, v7, type metadata accessor for Contact.Identity.Person);
    LOBYTE(v30) = 0;
    sub_1D9EF1740();
    v20 = v23;
    sub_1D9F2B8FC();
    sub_1D9EF09F0(&qword_1ECB75638, type metadata accessor for Contact.Identity.Person, &protocol conformance descriptor for Contact.Identity.Person);
    v21 = v26;
    sub_1D9F2B9AC();
    (*(v25 + 8))(v20, v21);
    sub_1D9EF1114(v7, type metadata accessor for Contact.Identity.Person);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t Contact.Identity.hash(into:)(uint64_t a1)
{
  v2 = sub_1D9F2AB6C();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Contact.Identity.Person.Name(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for Contact.Identity.Person(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Contact.Identity(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9EF11C8(v1, v18, type metadata accessor for Contact.Identity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v18 + 1);
    MEMORY[0x1DA7438F0](1);
    sub_1D9F2BB1C();
    if (v19)
    {
      sub_1D9F2B18C();
    }
  }

  else
  {
    sub_1D9EF16D8(v18, v15, type metadata accessor for Contact.Identity.Person);
    MEMORY[0x1DA7438F0](0);
    sub_1D9E51E70(v15, v12, &qword_1ECB755B0, &qword_1D9F420E8);
    if ((*(v5 + 48))(v12, 1, v4) == 1)
    {
      sub_1D9F2BB1C();
    }

    else
    {
      v20 = v12;
      v21 = v30;
      sub_1D9EF16D8(v20, v30, type metadata accessor for Contact.Identity.Person.Name);
      sub_1D9F2BB1C();
      sub_1D9EF11C8(v21, v8, type metadata accessor for Contact.Identity.Person.Name);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v27;
        v22 = v28;
        v24 = v29;
        (*(v28 + 32))(v27, v8, v29);
        MEMORY[0x1DA7438F0](1);
        sub_1D9EF09F0(&qword_1ECB75588, MEMORY[0x1E6968A70], MEMORY[0x1E6968A80]);
        sub_1D9F2B0EC();
        (*(v22 + 8))(v23, v24);
      }

      else
      {
        MEMORY[0x1DA7438F0](0);
        sub_1D9F2B18C();
      }

      sub_1D9EF1114(v21, type metadata accessor for Contact.Identity.Person.Name);
    }

    if (*&v15[v13[5] + 8])
    {
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
    }

    else
    {
      sub_1D9F2BB1C();
    }

    if (*&v15[v13[6] + 8])
    {
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
    }

    else
    {
      sub_1D9F2BB1C();
    }

    v26 = *&v15[v13[7] + 8];
    if (v26 == 1 || (sub_1D9F2BB1C(), !v26))
    {
      sub_1D9F2BB1C();
    }

    else
    {
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
    }

    return sub_1D9EF1114(v15, type metadata accessor for Contact.Identity.Person);
  }
}

uint64_t sub_1D9EEE1EC(uint64_t (*a1)(void *))
{
  sub_1D9F2BAFC();
  a1(v3);
  return sub_1D9F2BB4C();
}

uint64_t Contact.Identity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75640, &qword_1D9F42128);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75648, &qword_1D9F42130);
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75650, &qword_1D9F42138);
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for Contact.Identity(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D9EF1630();
  v20 = v52;
  sub_1D9F2BB7C();
  if (!v20)
  {
    v42 = v13;
    v43 = v18;
    v52 = v16;
    v22 = v49;
    v21 = v50;
    v23 = v51;
    v24 = sub_1D9F2B8DC();
    v25 = (2 * *(v24 + 16)) | 1;
    v54 = v24;
    v55 = v24 + 32;
    v56 = 0;
    v57 = v25;
    v26 = sub_1D9E4618C();
    v27 = v7;
    if (v26 == 2 || v56 != v57 >> 1)
    {
      v34 = sub_1D9F2B6BC();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v36 = v10;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v22 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        LOBYTE(v53) = 1;
        sub_1D9EF1684();
        v28 = v48;
        sub_1D9F2B7DC();
        v29 = v23;
        sub_1D9EF1174();
        v30 = v44;
        sub_1D9F2B89C();
        (*(v47 + 8))(v28, v30);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        v31 = v42;
        *v42 = v53;
        swift_storeEnumTagMultiPayload();
        v32 = v31;
        v33 = v43;
        sub_1D9EF16D8(v32, v43, type metadata accessor for Contact.Identity);
      }

      else
      {
        LOBYTE(v53) = 0;
        sub_1D9EF1740();
        v38 = v21;
        sub_1D9F2B7DC();
        type metadata accessor for Contact.Identity.Person(0);
        sub_1D9EF09F0(&qword_1ECB75658, type metadata accessor for Contact.Identity.Person, &protocol conformance descriptor for Contact.Identity.Person);
        v39 = v52;
        v40 = v45;
        sub_1D9F2B89C();
        (*(v46 + 8))(v38, v40);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v33 = v43;
        sub_1D9EF16D8(v39, v43, type metadata accessor for Contact.Identity);
        v29 = v51;
      }

      sub_1D9EF16D8(v33, v29, type metadata accessor for Contact.Identity);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_1D9EEE8D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D9F2BAFC();
  a3(v5);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EEE934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D9F2BAFC();
  a4(v6);
  return sub_1D9F2BB4C();
}

uint64_t Contact.emailAddresses.getter()
{
  type metadata accessor for Contact(0);
}

uint64_t Contact.emailAddresses.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Contact.phoneNumbers.getter()
{
  type metadata accessor for Contact(0);
}

uint64_t Contact.phoneNumbers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Contact.postalAddresses.getter()
{
  type metadata accessor for Contact(0);
}

uint64_t Contact.postalAddresses.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Contact.socialProfiles.getter()
{
  type metadata accessor for Contact(0);
}

uint64_t Contact.socialProfiles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Contact.links.getter()
{
  type metadata accessor for Contact(0);
}

uint64_t Contact.links.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Contact(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

int *Contact.init(identity:emailAddresses:phoneNumbers:postalAddresses:socialProfiles:links:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1D9EF16D8(a1, a7, type metadata accessor for Contact.Identity);
  result = type metadata accessor for Contact(0);
  *(a7 + result[5]) = a2;
  *(a7 + result[6]) = a3;
  *(a7 + result[7]) = a4;
  *(a7 + result[8]) = a5;
  *(a7 + result[9]) = a6;
  return result;
}

uint64_t sub_1D9EEEE18()
{
  v1 = *v0;
  v2 = 0x797469746E656469;
  v3 = 0x64416C6174736F70;
  v4 = 0x72506C6169636F73;
  if (v1 != 4)
  {
    v4 = 0x736B6E696CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6464416C69616D65;
  if (v1 != 1)
  {
    v5 = 0x6D754E656E6F6870;
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

uint64_t sub_1D9EEEEFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EF3180(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EEEF24(uint64_t a1)
{
  v2 = sub_1D9EF18D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EEEF60(uint64_t a1)
{
  v2 = sub_1D9EF18D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75660, &qword_1D9F42140);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EF18D8();
  sub_1D9F2BB8C();
  LOBYTE(v13) = 0;
  type metadata accessor for Contact.Identity(0);
  sub_1D9EF09F0(&qword_1ECB75670, type metadata accessor for Contact.Identity, &protocol conformance descriptor for Contact.Identity);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v9 = type metadata accessor for Contact(0);
    v13 = *(v3 + v9[5]);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75678, &qword_1D9F42148);
    sub_1D9EF1CD4(&qword_1ECB75680, &qword_1ECB75688, &protocol conformance descriptor for <A> LabeledContent<A>, MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
    v13 = *(v3 + v9[6]);
    v12 = 2;
    sub_1D9F2B9AC();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75698, &qword_1D9F42158);
    sub_1D9EF192C();
    sub_1D9F2B9AC();
    v13 = *(v3 + v9[8]);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756C0, &qword_1D9F42168);
    sub_1D9EF1A74();
    sub_1D9F2B9AC();
    v13 = *(v3 + v9[9]);
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756F0, &unk_1D9F42178);
    sub_1D9EF1C34();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Contact.hash(into:)(uint64_t a1)
{
  Contact.Identity.hash(into:)(a1);
  v3 = type metadata accessor for Contact(0);
  sub_1D9E4F0BC(a1, *(v1 + v3[5]));
  sub_1D9E4F0BC(a1, *(v1 + v3[6]));
  sub_1D9E4EEB4(a1, *(v1 + v3[7]));
  sub_1D9E4EDA4(a1, *(v1 + v3[8]));
  v4 = *(v1 + v3[9]);

  return sub_1D9E4EBD0(a1, v4);
}

uint64_t Contact.hashValue.getter()
{
  sub_1D9F2BAFC();
  Contact.Identity.hash(into:)(v3);
  v1 = type metadata accessor for Contact(0);
  sub_1D9E4F0BC(v3, *(v0 + v1[5]));
  sub_1D9E4F0BC(v3, *(v0 + v1[6]));
  sub_1D9E4EEB4(v3, *(v0 + v1[7]));
  sub_1D9E4EDA4(v3, *(v0 + v1[8]));
  sub_1D9E4EBD0(v3, *(v0 + v1[9]));
  return sub_1D9F2BB4C();
}

uint64_t Contact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for Contact.Identity(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75708, &qword_1D9F42188);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D9EF18D8();
  v22 = v8;
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v13 = v19;
  v14 = v20;
  v15 = v11;
  LOBYTE(v25) = 0;
  sub_1D9EF09F0(&qword_1ECB75710, type metadata accessor for Contact.Identity, &protocol conformance descriptor for Contact.Identity);
  v16 = v21;
  sub_1D9F2B89C();
  sub_1D9EF16D8(v6, v15, type metadata accessor for Contact.Identity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75678, &qword_1D9F42148);
  v24 = 1;
  sub_1D9EF1CD4(&qword_1ECB75718, &qword_1ECB75720, &protocol conformance descriptor for <A> LabeledContent<A>, MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  *(v15 + v9[5]) = v25;
  v24 = 2;
  v17 = v22;
  sub_1D9F2B89C();
  *(v15 + v9[6]) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75698, &qword_1D9F42158);
  v24 = 3;
  sub_1D9EF1DCC();
  sub_1D9F2B89C();
  *(v15 + v9[7]) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756C0, &qword_1D9F42168);
  v24 = 4;
  sub_1D9EF1EE4();
  sub_1D9F2B89C();
  *(v15 + v9[8]) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756F0, &unk_1D9F42178);
  v24 = 5;
  sub_1D9EF1F84();
  sub_1D9F2B89C();
  (*(v13 + 8))(v17, v16);
  *(v15 + v9[9]) = v25;
  sub_1D9EF11C8(v15, v14, type metadata accessor for Contact);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_1D9EF1114(v15, type metadata accessor for Contact);
}

uint64_t sub_1D9EEFA40(int *a1)
{
  sub_1D9F2BAFC();
  Contact.Identity.hash(into:)(v4);
  sub_1D9E4F0BC(v4, *(v1 + a1[5]));
  sub_1D9E4F0BC(v4, *(v1 + a1[6]));
  sub_1D9E4EEB4(v4, *(v1 + a1[7]));
  sub_1D9E4EDA4(v4, *(v1 + a1[8]));
  sub_1D9E4EBD0(v4, *(v1 + a1[9]));
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EEFAD4(uint64_t a1, int *a2)
{
  Contact.Identity.hash(into:)(a1);
  sub_1D9E4F0BC(a1, *(v2 + a2[5]));
  sub_1D9E4F0BC(a1, *(v2 + a2[6]));
  sub_1D9E4EEB4(a1, *(v2 + a2[7]));
  sub_1D9E4EDA4(a1, *(v2 + a2[8]));
  v5 = *(v2 + a2[9]);

  return sub_1D9E4EBD0(a1, v5);
}

uint64_t sub_1D9EEFB60(uint64_t a1, int *a2)
{
  sub_1D9F2BAFC();
  Contact.Identity.hash(into:)(v5);
  sub_1D9E4F0BC(v5, *(v2 + a2[5]));
  sub_1D9E4F0BC(v5, *(v2 + a2[6]));
  sub_1D9E4EEB4(v5, *(v2 + a2[7]));
  sub_1D9E4EDA4(v5, *(v2 + a2[8]));
  sub_1D9E4EBD0(v5, *(v2 + a2[9]));
  return sub_1D9F2BB4C();
}

uint64_t Contact.subentities.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v70 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v72 = &v68 - v3;
  v4 = type metadata accessor for DetectedEntity(0);
  v77 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v69 = &v68 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v68 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v68 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v68 - v15);
  v17 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
  v75 = type metadata accessor for Contact(0);
  v18 = *(v0 + *(v75 + 20));
  v19 = *(v18 + 16);
  v74 = v7;
  v73 = v0;
  v76 = v4;
  if (v19)
  {
    *&v79[0] = v17;
    sub_1D9E9482C(0, v19, 0);
    v17 = *&v79[0];
    v20 = (v18 + 56);
    do
    {
      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      v23 = *v20;
      *v16 = *(v20 - 3);
      v16[1] = v21;
      v16[2] = v22;
      v16[3] = v23;
      swift_storeEnumTagMultiPayload();
      *&v79[0] = v17;
      v24 = *(v17 + 16);
      v25 = *(v17 + 24);

      if (v24 >= v25 >> 1)
      {
        sub_1D9E9482C((v25 > 1), v24 + 1, 1);
        v17 = *&v79[0];
      }

      v20 += 4;
      *(v17 + 16) = v24 + 1;
      sub_1D9EF16D8(v16, v17 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v24, type metadata accessor for DetectedEntity);
      --v19;
    }

    while (v19);
    v7 = v74;
    v1 = v73;
  }

  sub_1D9EF0418(v17);
  v26 = *(v1 + *(v75 + 24));
  v27 = *(v26 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v79[0] = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v27, 0);
    v28 = *&v79[0];
    v29 = (v26 + 56);
    do
    {
      v30 = *(v29 - 2);
      v31 = *(v29 - 1);
      v32 = *v29;
      *v14 = *(v29 - 3);
      v14[1] = v30;
      v14[2] = v31;
      v14[3] = v32;
      swift_storeEnumTagMultiPayload();
      *&v79[0] = v28;
      v33 = *(v28 + 16);
      v34 = *(v28 + 24);

      if (v33 >= v34 >> 1)
      {
        sub_1D9E9482C((v34 > 1), v33 + 1, 1);
        v28 = *&v79[0];
      }

      v29 += 4;
      *(v28 + 16) = v33 + 1;
      sub_1D9EF16D8(v14, v28 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v33, type metadata accessor for DetectedEntity);
      --v27;
    }

    while (v27);
    v7 = v74;
    v1 = v73;
  }

  sub_1D9EF0418(v28);
  v35 = *(v1 + *(v75 + 28));
  v36 = *(v35 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v80 = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v36, 0);
    v37 = v80;
    v38 = (v35 + 32);
    v39 = v71;
    do
    {
      v40 = v38[1];
      v79[0] = *v38;
      v79[1] = v40;
      v41 = v38[2];
      v42 = v38[3];
      v43 = v38[5];
      v79[4] = v38[4];
      v79[5] = v43;
      v79[2] = v41;
      v79[3] = v42;
      memmove(v39, v38, 0x60uLL);
      swift_storeEnumTagMultiPayload();
      sub_1D9E51E70(v79, v78, &qword_1ECB731D0, &qword_1D9F42160);
      v80 = v37;
      v45 = *(v37 + 16);
      v44 = *(v37 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D9E9482C((v44 > 1), v45 + 1, 1);
        v39 = v71;
        v37 = v80;
      }

      *(v37 + 16) = v45 + 1;
      sub_1D9EF16D8(v39, v37 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v45, type metadata accessor for DetectedEntity);
      v38 += 6;
      --v36;
    }

    while (v36);
  }

  sub_1D9EF0418(v37);
  v46 = *(v1 + *(v75 + 32));
  v47 = *(v46 + 16);
  v48 = MEMORY[0x1E69E7CC0];
  if (v47)
  {
    *&v79[0] = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v47, 0);
    v48 = *&v79[0];
    v49 = (v46 + 72);
    v50 = v69;
    do
    {
      v51 = *(v49 - 4);
      v52 = *(v49 - 3);
      v53 = *(v49 - 2);
      v54 = *(v49 - 1);
      v55 = *v49;
      *v50 = *(v49 - 5);
      v50[1] = v51;
      v50[2] = v52;
      v50[3] = v53;
      v50[4] = v54;
      v50[5] = v55;
      swift_storeEnumTagMultiPayload();
      *&v79[0] = v48;
      v57 = *(v48 + 16);
      v56 = *(v48 + 24);

      if (v57 >= v56 >> 1)
      {
        sub_1D9E9482C((v56 > 1), v57 + 1, 1);
        v48 = *&v79[0];
      }

      v49 += 6;
      *(v48 + 16) = v57 + 1;
      sub_1D9EF16D8(v50, v48 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v57, type metadata accessor for DetectedEntity);
      --v47;
    }

    while (v47);
    v7 = v74;
    v1 = v73;
  }

  sub_1D9EF0418(v48);
  v58 = *(v1 + *(v75 + 36));
  v59 = *(v58 + 16);
  v60 = MEMORY[0x1E69E7CC0];
  if (v59)
  {
    *&v79[0] = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v59, 0);
    v60 = *&v79[0];
    v61 = v58 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v75 = *(v70 + 72);
    v62 = v72;
    do
    {
      sub_1D9E51E70(v61, v62, &qword_1ECB731B8, &unk_1D9F2F580);
      v63 = sub_1D9F2AC4C();
      (*(*(v63 - 8) + 16))(v7, v62, v63);
      sub_1D9E51FE8(v62, &qword_1ECB731B8, &unk_1D9F2F580);
      swift_storeEnumTagMultiPayload();
      *&v79[0] = v60;
      v64 = v7;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1D9E9482C((v65 > 1), v66 + 1, 1);
        v62 = v72;
        v60 = *&v79[0];
      }

      *(v60 + 16) = v66 + 1;
      sub_1D9EF16D8(v64, v60 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v66, type metadata accessor for DetectedEntity);
      v61 += v75;
      --v59;
      v7 = v64;
    }

    while (v59);
  }

  sub_1D9EF0418(v60);
  return v81;
}

uint64_t sub_1D9EF0418(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1D9F0C298(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for DetectedEntity(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV4NameO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = sub_1D9F2AB6C();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Contact.Identity.Person.Name(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75868, &qword_1D9F42FF8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  v17 = (&v26 + *(v14 + 56) - v15);
  sub_1D9EF11C8(a1, &v26 - v15, type metadata accessor for Contact.Identity.Person.Name);
  sub_1D9EF11C8(a2, v17, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9EF11C8(v16, v12, type metadata accessor for Contact.Identity.Person.Name);
    v22 = *v12;
    v21 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v17 && v21 == v17[1])
      {
      }

      else
      {
        v24 = sub_1D9F2BA1C();

        if ((v24 & 1) == 0)
        {
          sub_1D9EF1114(v16, type metadata accessor for Contact.Identity.Person.Name);
          goto LABEL_8;
        }
      }

      sub_1D9EF1114(v16, type metadata accessor for Contact.Identity.Person.Name);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_1D9E51FE8(v16, &qword_1ECB75868, &qword_1D9F42FF8);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_1D9EF11C8(v16, v10, type metadata accessor for Contact.Identity.Person.Name);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v10, v27);
    goto LABEL_7;
  }

  v18 = v27;
  (*(v4 + 32))(v6, v17, v27);
  v19 = sub_1D9F2AB5C();
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v10, v18);
  sub_1D9EF1114(v16, type metadata accessor for Contact.Identity.Person.Name);
  return v19 & 1;
}

unint64_t sub_1D9EF08F4()
{
  result = qword_1ECB75568;
  if (!qword_1ECB75568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75568);
  }

  return result;
}

unint64_t sub_1D9EF0948()
{
  result = qword_1ECB75570;
  if (!qword_1ECB75570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75570);
  }

  return result;
}

unint64_t sub_1D9EF099C()
{
  result = qword_1ECB75580;
  if (!qword_1ECB75580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75580);
  }

  return result;
}

uint64_t sub_1D9EF09F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9EF0A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EF0AC8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D9EF0ADC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact.Identity.Person.Name(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75860, &qword_1D9F42FF0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v48 - v13;
  v15 = *(v12 + 56);
  sub_1D9E51E70(a1, &v48 - v13, &qword_1ECB755B0, &qword_1D9F420E8);
  sub_1D9E51E70(a2, &v14[v15], &qword_1ECB755B0, &qword_1D9F420E8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D9E51E70(v14, v10, &qword_1ECB755B0, &qword_1D9F420E8);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D9EF16D8(&v14[v15], v7, type metadata accessor for Contact.Identity.Person.Name);
      v19 = _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV4NameO2eeoiySbAI_AItFZ_0(v10, v7);
      sub_1D9EF1114(v7, type metadata accessor for Contact.Identity.Person.Name);
      sub_1D9EF1114(v10, type metadata accessor for Contact.Identity.Person.Name);
      sub_1D9E51FE8(v14, &qword_1ECB755B0, &qword_1D9F420E8);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_1D9EF1114(v10, type metadata accessor for Contact.Identity.Person.Name);
LABEL_6:
    sub_1D9E51FE8(v14, &qword_1ECB75860, &qword_1D9F42FF0);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D9E51FE8(v14, &qword_1ECB755B0, &qword_1D9F420E8);
LABEL_10:
  v20 = type metadata accessor for Contact.Identity.Person(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v26 = v20;
      v27 = sub_1D9F2BA1C();
      v20 = v26;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v28 = v20[6];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v33 = v20;
      v34 = sub_1D9F2BA1C();
      v20 = v33;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_24:
    v35 = v20[7];
    v36 = a1 + v35;
    v37 = *(a1 + v35);
    v38 = *(v36 + 8);
    v39 = (a2 + v35);
    v40 = *v39;
    v41 = v39[1];
    if (v38 == 1)
    {
      sub_1D9EF0AC8(v37, 1);
      if (v41 == 1)
      {
        v17 = 1;
        sub_1D9EF0AC8(v40, 1);
        sub_1D9EF0ADC(v37, 1);
        return v17;
      }

      sub_1D9EF0AC8(v40, v41);
      goto LABEL_30;
    }

    if (v41 == 1)
    {
      sub_1D9EF0AC8(v37, *(v36 + 8));
      sub_1D9EF0AC8(v40, 1);
      sub_1D9EF0AC8(v37, v38);

LABEL_30:
      sub_1D9EF0ADC(v37, v38);
      v42 = v40;
      v43 = v41;
LABEL_42:
      sub_1D9EF0ADC(v42, v43);
      return 0;
    }

    if (v38)
    {
      if (v41)
      {
        if (v37 == v40 && v38 == v41)
        {
          sub_1D9EF0AC8(v37, *(v36 + 8));
          sub_1D9EF0AC8(v37, v38);
          sub_1D9EF0AC8(v37, v38);
          v44 = v37;
          v45 = v38;
LABEL_38:
          sub_1D9EF0ADC(v44, v45);
LABEL_44:

          sub_1D9EF0ADC(v37, v38);
          return 1;
        }

        v47 = sub_1D9F2BA1C();
        sub_1D9EF0AC8(v37, v38);
        sub_1D9EF0AC8(v40, v41);
        sub_1D9EF0AC8(v37, v38);
        sub_1D9EF0ADC(v40, v41);
        if (v47)
        {
          goto LABEL_44;
        }

LABEL_41:

        v42 = v37;
        v43 = v38;
        goto LABEL_42;
      }

      sub_1D9EF0AC8(v37, *(v36 + 8));
      v46 = v38;
    }

    else
    {
      sub_1D9EF0AC8(v37, 0);
      v46 = 0;
      if (!v41)
      {
        sub_1D9EF0AC8(v40, 0);
        sub_1D9EF0AC8(v37, 0);
        v44 = v40;
        v45 = 0;
        goto LABEL_38;
      }
    }

    sub_1D9EF0AC8(v40, v41);
    sub_1D9EF0AC8(v37, v46);
    sub_1D9EF0ADC(v40, v41);
    goto LABEL_41;
  }

  if (!v32)
  {
    goto LABEL_24;
  }

  return 0;
}

unint64_t sub_1D9EF106C()
{
  result = qword_1ECB755C0;
  if (!qword_1ECB755C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB755C0);
  }

  return result;
}

unint64_t sub_1D9EF10C0()
{
  result = qword_1ECB755D0;
  if (!qword_1ECB755D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB755D0);
  }

  return result;
}

uint64_t sub_1D9EF1114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9EF1174()
{
  result = qword_1ECB755E8;
  if (!qword_1ECB755E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB755E8);
  }

  return result;
}

uint64_t sub_1D9EF11C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9EF1230()
{
  result = qword_1ECB755F8;
  if (!qword_1ECB755F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB755F8);
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport7ContactV8IdentityO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact.Identity.Person(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Contact.Identity(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75858, &qword_1D9F42FE8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - v15;
  v17 = (&v25 + *(v14 + 56) - v15);
  sub_1D9EF11C8(a1, &v25 - v15, type metadata accessor for Contact.Identity);
  sub_1D9EF11C8(a2, v17, type metadata accessor for Contact.Identity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9EF11C8(v16, v10, type metadata accessor for Contact.Identity);
    v19 = *v10;
    v18 = v10[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v17[1];
      if (v18)
      {
        if (v20)
        {
          if (v19 != *v17 || v18 != v20)
          {
            v22 = sub_1D9F2BA1C();

            if (v22)
            {
              goto LABEL_25;
            }

            goto LABEL_20;
          }

LABEL_24:

LABEL_25:
          sub_1D9EF1114(v16, type metadata accessor for Contact.Identity);
          v23 = 1;
          return v23 & 1;
        }
      }

      else
      {

        if (!v20)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      sub_1D9EF1114(v16, type metadata accessor for Contact.Identity);
      goto LABEL_21;
    }

LABEL_14:
    sub_1D9E51FE8(v16, &qword_1ECB75858, &qword_1D9F42FE8);
LABEL_21:
    v23 = 0;
    return v23 & 1;
  }

  sub_1D9EF11C8(v16, v12, type metadata accessor for Contact.Identity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9EF1114(v12, type metadata accessor for Contact.Identity.Person);
    goto LABEL_14;
  }

  sub_1D9EF16D8(v17, v6, type metadata accessor for Contact.Identity.Person);
  v23 = _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV2eeoiySbAG_AGtFZ_0(v12, v6);
  sub_1D9EF1114(v6, type metadata accessor for Contact.Identity.Person);
  sub_1D9EF1114(v12, type metadata accessor for Contact.Identity.Person);
  sub_1D9EF1114(v16, type metadata accessor for Contact.Identity);
  return v23 & 1;
}

unint64_t sub_1D9EF1630()
{
  result = qword_1ECB75620;
  if (!qword_1ECB75620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75620);
  }

  return result;
}

unint64_t sub_1D9EF1684()
{
  result = qword_1ECB75628;
  if (!qword_1ECB75628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75628);
  }

  return result;
}

uint64_t sub_1D9EF16D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9EF1740()
{
  result = qword_1ECB75630;
  if (!qword_1ECB75630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75630);
  }

  return result;
}

uint64_t sub_1D9EF1794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact.Identity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s29VisualActionPredictionSupport7ContactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s29VisualActionPredictionSupport7ContactV8IdentityO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Contact(0);
  if ((sub_1D9E49FC4(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (sub_1D9E49FC4(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || (sub_1D9E4A0A4(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0 || (sub_1D9E4A370(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[9];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1D9E4A49C(v6, v7);
}

unint64_t sub_1D9EF18D8()
{
  result = qword_1ECB75668;
  if (!qword_1ECB75668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75668);
  }

  return result;
}

unint64_t sub_1D9EF192C()
{
  result = qword_1ECB756A0;
  if (!qword_1ECB756A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75698, &qword_1D9F42158);
    sub_1D9EF1E6C(&qword_1ECB756A8, &protocol conformance descriptor for <A> LabeledContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756A0);
  }

  return result;
}

unint64_t sub_1D9EF19CC()
{
  result = qword_1ECB756B0;
  if (!qword_1ECB756B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756B0);
  }

  return result;
}

unint64_t sub_1D9EF1A20()
{
  result = qword_1ECB756B8;
  if (!qword_1ECB756B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756B8);
  }

  return result;
}

unint64_t sub_1D9EF1A74()
{
  result = qword_1ECB756C8;
  if (!qword_1ECB756C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756C0, &qword_1D9F42168);
    sub_1D9EF1B14(&qword_1ECB756D0, &protocol conformance descriptor for <A> LabeledContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756C8);
  }

  return result;
}

uint64_t sub_1D9EF1B14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756D8, &qword_1D9F42170);
    sub_1D9EF1B8C();
    sub_1D9EF1BE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EF1B8C()
{
  result = qword_1ECB756E0;
  if (!qword_1ECB756E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756E0);
  }

  return result;
}

unint64_t sub_1D9EF1BE0()
{
  result = qword_1ECB756E8;
  if (!qword_1ECB756E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756E8);
  }

  return result;
}

unint64_t sub_1D9EF1C34()
{
  result = qword_1ECB756F8;
  if (!qword_1ECB756F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756F0, &unk_1D9F42178);
    sub_1D9EF2024(&qword_1ECB75700, &protocol conformance descriptor for <A> LabeledContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB756F8);
  }

  return result;
}

uint64_t sub_1D9EF1CD4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75678, &qword_1D9F42148);
    sub_1D9EF1D5C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9EF1D5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75690, &qword_1D9F42150);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EF1DCC()
{
  result = qword_1ECB75728;
  if (!qword_1ECB75728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75698, &qword_1D9F42158);
    sub_1D9EF1E6C(&qword_1ECB75730, &protocol conformance descriptor for <A> LabeledContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75728);
  }

  return result;
}

uint64_t sub_1D9EF1E6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB731D0, &qword_1D9F42160);
    sub_1D9EF19CC();
    sub_1D9EF1A20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EF1EE4()
{
  result = qword_1ECB75738;
  if (!qword_1ECB75738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756C0, &qword_1D9F42168);
    sub_1D9EF1B14(&qword_1ECB75740, &protocol conformance descriptor for <A> LabeledContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75738);
  }

  return result;
}

unint64_t sub_1D9EF1F84()
{
  result = qword_1ECB75748;
  if (!qword_1ECB75748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB756F0, &unk_1D9F42178);
    sub_1D9EF2024(&qword_1ECB75750, &protocol conformance descriptor for <A> LabeledContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75748);
  }

  return result;
}

uint64_t sub_1D9EF2024(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB731B8, &unk_1D9F2F580);
    v4 = MEMORY[0x1E6968FB0];
    sub_1D9EF09F0(&qword_1ECB743B8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1D9EF09F0(&qword_1ECB74390, v4, MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EF218C()
{
  result = qword_1ECB75768;
  if (!qword_1ECB75768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75768);
  }

  return result;
}

void sub_1D9EF2298(uint64_t a1)
{
  type metadata accessor for Contact.Identity(319);
  if (v1 <= 0x3F)
  {
    sub_1D9EF23C4(319, &qword_1EE0F2320, &qword_1ECB75690, &qword_1D9F42150);
    if (v2 <= 0x3F)
    {
      sub_1D9EF23C4(319, &qword_1EE0F2330, &qword_1ECB731D0, &qword_1D9F42160);
      if (v3 <= 0x3F)
      {
        sub_1D9EF23C4(319, &qword_1EE0F2328, &qword_1ECB756D8, &qword_1D9F42170);
        if (v4 <= 0x3F)
        {
          sub_1D9EF23C4(319, &qword_1EE0F2338, &qword_1ECB731B8, &unk_1D9F2F580);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}