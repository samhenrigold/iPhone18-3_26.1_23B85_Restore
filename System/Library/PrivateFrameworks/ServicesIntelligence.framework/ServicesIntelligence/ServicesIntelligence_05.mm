unint64_t sub_230D6C5AC()
{
  result = qword_2815661D8;
  if (!qword_2815661D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661D8);
  }

  return result;
}

unint64_t sub_230D6C604()
{
  result = qword_2815661E0;
  if (!qword_2815661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661E0);
  }

  return result;
}

unint64_t sub_230D6C65C()
{
  result = qword_2815661B8;
  if (!qword_2815661B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661B8);
  }

  return result;
}

unint64_t sub_230D6C6B4()
{
  result = qword_2815661C0;
  if (!qword_2815661C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661C0);
  }

  return result;
}

unint64_t sub_230D6C70C()
{
  result = qword_2815664E8;
  if (!qword_2815664E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664E8);
  }

  return result;
}

unint64_t sub_230D6C764()
{
  result = qword_2815664F0;
  if (!qword_2815664F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664F0);
  }

  return result;
}

uint64_t sub_230D6C7B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xEA00000000007372 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC00000065746152 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000230E82840 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80250 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230D6C9CC()
{
  result = qword_281566798;
  if (!qword_281566798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566798);
  }

  return result;
}

_BYTE *LogMetricsRequest.init(topic:events:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_230D6CAFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D6CBC0(char a1)
{
  if (a1)
  {
    return 0x73746E657665;
  }

  else
  {
    return 0x6369706F74;
  }
}

uint64_t sub_230D6CC24(uint64_t a1)
{
  sub_230E699B0();
  sub_230D098A8(v3, *v1);
  return sub_230E699D0();
}

uint64_t sub_230D6CC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D6CAFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D6CCAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230D0B1DC();
  *a1 = result;
  return result;
}

uint64_t sub_230D6CCD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_230D6CD2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LogMetricsRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  v18 = *(a2 + 16);
  v19 = v6;
  type metadata accessor for LogMetricsRequest.CodingKeys(255, v18, v6, a4);
  swift_getWitnessTable();
  v7 = sub_230E69870();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v16 - v9;
  v11 = *v4;
  v17 = *(v4 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v7;
  sub_230E69A50();
  LOBYTE(v23) = v11;
  v24 = 0;
  sub_230D6B124();
  v13 = v21;
  sub_230E69850();
  if (v13)
  {
    return (*(v20 + 8))(v10, v7);
  }

  v15 = v20;
  v23 = v17;
  v24 = 1;
  sub_230E692C0();
  v22 = *(v19 + 16);
  swift_getWitnessTable();
  sub_230E69850();
  return (*(v15 + 8))(v10, v12);
}

uint64_t LogMetricsRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  type metadata accessor for LogMetricsRequest.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v19 = sub_230E69790();
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E69A30();
  if (!v5)
  {
    v12 = v17;
    v11 = v18;
    v23 = 0;
    sub_230D6B420();
    v13 = v19;
    sub_230E69760();
    v22 = v21;
    sub_230E692C0();
    v23 = 1;
    v20 = *(a3 + 8);
    swift_getWitnessTable();
    sub_230E69760();
    (*(v12 + 8))(v10, v13);
    v15 = v21;
    *v11 = v22;
    *(v11 + 8) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LogOperationMetricsRequest.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LogOperationMetricsRequest.correlationID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall LogOperationMetricsRequest.init(eventType:eventVersion:subOperations:correlationID:)(ServicesIntelligence::LogOperationMetricsRequest *__return_ptr retstr, Swift::String eventType, Swift::Int eventVersion, Swift::OpaquePointer subOperations, Swift::String_optional correlationID)
{
  retstr->eventType = eventType;
  retstr->eventVersion = eventVersion;
  retstr->subOperations = subOperations;
  retstr->correlationID = correlationID;
}

uint64_t sub_230D6D2BC()
{
  v1 = 0x707954746E657665;
  v2 = 0x617265704F627573;
  if (*v0 != 2)
  {
    v2 = 0x74616C6572726F63;
  }

  if (*v0)
  {
    v1 = 0x726556746E657665;
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

uint64_t sub_230D6D35C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D6F4C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D6D384(uint64_t a1)
{
  v2 = sub_230D6D68C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6D3C0(uint64_t a1)
{
  v2 = sub_230D6D68C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogOperationMetricsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB08, &qword_230E72A80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v13 - v6;
  v8 = v1[2];
  v14 = v1[3];
  v15 = v8;
  v9 = v1[4];
  v13[0] = v1[5];
  v13[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6D68C();
  sub_230E69A50();
  v21 = 0;
  v10 = v16;
  sub_230E69810();
  if (!v10)
  {
    v12 = v14;
    v20 = 1;
    sub_230E69840();
    v17 = v12;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB18, &qword_230E72A88);
    sub_230D6DA34(&qword_27DB5BB20, sub_230D6D6E0, MEMORY[0x277D83948]);
    sub_230E69850();
    v18 = 3;
    sub_230E697B0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D6D68C()
{
  result = qword_27DB5BB10;
  if (!qword_27DB5BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB10);
  }

  return result;
}

unint64_t sub_230D6D6E0()
{
  result = qword_27DB5BB28;
  if (!qword_27DB5BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB28);
  }

  return result;
}

uint64_t LogOperationMetricsRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB30, &qword_230E72A90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6D68C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v13 = v10;
  v26 = 1;
  v22 = sub_230E69750();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB18, &qword_230E72A88);
  v25 = 2;
  sub_230D6DA34(&qword_27DB5BB38, sub_230D6DAAC, MEMORY[0x277D83978]);
  sub_230E69760();
  v21 = v23;
  v24 = 3;
  v15 = sub_230E696B0();
  v17 = v16;
  v18 = *(v6 + 8);
  v20 = v15;
  v18(v9, v5);
  *a2 = v13;
  a2[1] = v12;
  v19 = v21;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v20;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D6DA34(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BB18, &qword_230E72A88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D6DAAC()
{
  result = qword_27DB5BB40;
  if (!qword_27DB5BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB40);
  }

  return result;
}

uint64_t SubOperation.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SubOperation.init(action:executionDuration:memoryUsage:errors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_230D6DBB0()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D6DC78(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230D6DD2C(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

unint64_t sub_230D6DDF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_230D6F648(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_230D6DE20(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6E6F69746361;
  v4 = 0xEB00000000656761;
  v5 = 0x735579726F6D656DLL;
  if (*v1 != 2)
  {
    v5 = 0x73726F727265;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000230E80330;
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

unint64_t sub_230D6DEA4()
{
  v1 = 0x6E6F69746361;
  v2 = 0x735579726F6D656DLL;
  if (*v0 != 2)
  {
    v2 = 0x73726F727265;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_230D6DF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D6F648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D6DF4C(uint64_t a1)
{
  v2 = sub_230D6E3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6DF88(uint64_t a1)
{
  v2 = sub_230D6E3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D6DFC4()
{
  v1 = *v0;

  return v1;
}

uint64_t SubOperation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB48, &unk_230E72A98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6E3F4();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v42) = 0;
  v10 = sub_230E69720();
  v13 = v12;
  v38 = v10;
  LOBYTE(v42) = 1;
  v14 = sub_230E696D0();
  v35 = a2;
  v36 = v14;
  v16 = v15;
  v44 = v15 & 1;
  LOBYTE(v42) = 2;
  v34 = sub_230E696D0();
  v18 = v17;
  v43 = v17 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  v45 = 3;
  sub_230D46AD4(&qword_27DB5B170, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_230E69700();
  v19 = v42;
  if (v42)
  {
    v20 = *(v42 + 16);
    if (v20)
    {
      v33 = v13;
      v41 = v20;
      v42 = MEMORY[0x277D84F90];
      v21 = v19;
      sub_230D48E88(0, v20, 0);
      v22 = v42;
      v37 = sub_230D6ED8C();
      v32 = v21;
      v23 = (v21 + 40);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v26 = swift_allocError();
        *v27 = v25;
        v27[1] = v24;
        v42 = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        v39 = v26;
        v40 = v29 + 1;

        if (v29 >= v28 >> 1)
        {
          sub_230D48E88((v28 > 1), v40, 1);
          v22 = v42;
        }

        v30 = v39;
        *(v22 + 16) = v40;
        *(v22 + 8 * v29 + 32) = v30;
        v23 += 2;
        --v41;
      }

      while (v41);
      (*(v6 + 8))(v9, v5);

      v16 = v44;
      v18 = v43;
      v13 = v33;
    }

    else
    {

      (*(v6 + 8))(v9, v5);
      v22 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v22 = 0;
  }

  v31 = v35;
  *v35 = v38;
  v31[1] = v13;
  v31[2] = v36;
  *(v31 + 24) = v16 & 1;
  v31[4] = v34;
  *(v31 + 40) = v18 & 1;
  v31[6] = v22;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D6E3F4()
{
  result = qword_27DB5BB50;
  if (!qword_27DB5BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB50);
  }

  return result;
}

uint64_t SubOperation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB60, &unk_230E72AA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - v6;
  v27 = *(v1 + 16);
  LODWORD(v26) = *(v1 + 24);
  v25 = *(v1 + 32);
  v24 = *(v1 + 40);
  v23 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6E3F4();
  sub_230E69A50();
  LOBYTE(v30) = 0;
  v8 = v7;
  v9 = v28;
  sub_230E69810();
  if (v9)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v11 = v23;
  v28 = v4;
  LOBYTE(v30) = 1;
  sub_230E697C0();
  LOBYTE(v30) = 2;
  sub_230E697C0();
  v12 = v28;
  if (v11)
  {
    v27 = 0;
    v13 = *(v11 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v26 = v3;
      v32 = MEMORY[0x277D84F90];
      sub_230D48880(0, v13, 0);
      v14 = v32;
      v15 = (v11 + 32);
      do
      {
        v16 = *v15;
        v30 = 0;
        v31 = 0xE000000000000000;
        v29 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
        sub_230E695F0();
        v17 = v30;
        v18 = v31;
        v32 = v14;
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_230D48880((v19 > 1), v20 + 1, 1);
          v14 = v32;
        }

        *(v14 + 16) = v20 + 1;
        v21 = v14 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        ++v15;
        --v13;
      }

      while (v13);
      v3 = v26;
      v12 = v28;
    }

    v30 = v14;
    LOBYTE(v32) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D46AD4(&qword_27DB5B148, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_230E69850();
  }

  return (*(v12 + 8))(v8, v3);
}

uint64_t LogMetricsResponse.init(receivedCount:enqueuedCount:omittedFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_230D6E808()
{
  v1 = 0x6465756575716E65;
  if (*v0 != 1)
  {
    v1 = 0x4664657474696D6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465766965636572;
  }
}

uint64_t sub_230D6E878@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D6F694(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D6E8A0(uint64_t a1)
{
  v2 = sub_230D6EDE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6E8DC(uint64_t a1)
{
  v2 = sub_230D6EDE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogMetricsResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BB68, &qword_230E72AB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - v7;
  v9 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6EDE0();
  sub_230E69A50();
  v18 = 0;
  sub_230E69840();
  if (!v2)
  {
    v11 = v13;
    v17 = 1;
    sub_230E69840();
    v15 = v11;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    sub_230D0AD9C(&qword_27DB5A6C0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t LogMetricsResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DB5BB78, &qword_230E72AC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6EDE0();
  sub_230E69A30();
  if (!v2)
  {
    v17 = 0;
    v10 = sub_230E69750();
    v16 = 1;
    v12 = sub_230E69750();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    v15 = 2;
    sub_230D0AD9C(qword_27DB5A6C8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    v13 = v14[1];
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D6ED8C()
{
  result = qword_27DB5BB58;
  if (!qword_27DB5BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB58);
  }

  return result;
}

unint64_t sub_230D6EDE0()
{
  result = qword_27DB5BB70;
  if (!qword_27DB5BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB70);
  }

  return result;
}

uint64_t sub_230D6EE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LogMetricsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for LogMetricsError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_230D6F024(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_230D6F050(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

uint64_t sub_230D6F0A0(uint64_t a1, int a2)
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

uint64_t sub_230D6F0E8(uint64_t result, int a2, int a3)
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

unint64_t sub_230D6F17C()
{
  result = qword_27DB5BC80;
  if (!qword_27DB5BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BC80);
  }

  return result;
}

unint64_t sub_230D6F1D4()
{
  result = qword_27DB5BC88;
  if (!qword_27DB5BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BC88);
  }

  return result;
}

unint64_t sub_230D6F22C()
{
  result = qword_27DB5BC90;
  if (!qword_27DB5BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BC90);
  }

  return result;
}

unint64_t sub_230D6F284()
{
  result = qword_27DB5BC98;
  if (!qword_27DB5BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BC98);
  }

  return result;
}

unint64_t sub_230D6F2DC()
{
  result = qword_27DB5BCA0;
  if (!qword_27DB5BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCA0);
  }

  return result;
}

unint64_t sub_230D6F334()
{
  result = qword_27DB5BCA8;
  if (!qword_27DB5BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCA8);
  }

  return result;
}

unint64_t sub_230D6F38C()
{
  result = qword_27DB5BCB0;
  if (!qword_27DB5BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCB0);
  }

  return result;
}

unint64_t sub_230D6F3E4()
{
  result = qword_27DB5BCB8;
  if (!qword_27DB5BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCB8);
  }

  return result;
}

unint64_t sub_230D6F43C()
{
  result = qword_27DB5BCC0;
  if (!qword_27DB5BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCC0);
  }

  return result;
}

uint64_t sub_230D6F4C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556746E657665 && a2 == 0xEC0000006E6F6973 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617265704F627573 && a2 == 0xED0000736E6F6974 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616C6572726F63 && a2 == 0xED000044496E6F69)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230D6F648(uint64_t a1, uint64_t a2)
{
  v2 = sub_230E69680();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230D6F694(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766965636572 && a2 == 0xED0000746E756F43;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465756575716E65 && a2 == 0xED0000746E756F43 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4664657474696D6FLL && a2 == 0xED000073646C6569)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D6F7D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 96) = a2;
  *(v4 + 596) = a1;
  *(v4 + 120) = type metadata accessor for SQLDatabaseConfiguration(0);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v6 = sub_230E68D80();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D6F90C, a3, 0);
}

uint64_t sub_230D6F90C()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 596);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28[0] = v7;
    *v6 = 136315650;
    LOBYTE(v27) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v28);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v28);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v27 = 0x6C616E7265746E69;
    *(&v27 + 1) = 0xE90000000000002ELL;
    v26 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v28);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 596);
  *(v0 + 56) = *(v14 + 24);
  v27 = *(v14 + 24);
  v26 = v15;
  LOBYTE(v28[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v26, v28);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 168) = CFAbsoluteTimeGetCurrent();
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0;
    *(v0 + 588) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 216), (v0 + 588));
    *(v0 + 592) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 264);
      v20 = *(v0 + 336);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 192) = v18;
    v23 = *(v0 + 112);
    *(v0 + 88) = 0;
    v24 = sub_230D6FFB4;
  }

  else
  {
    v23 = *(v0 + 112);
    v24 = sub_230D6FC84;
  }

  return MEMORY[0x2822009F8](v24, v23, 0);
}

uint64_t sub_230D6FC84()
{
  v1 = v0[14];
  if (*(v1 + 136))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    if (qword_27DB5A478 != -1)
    {
      swift_once();
    }

    v4 = v0[17];
    v5 = __swift_project_value_buffer(v0[15], qword_27DB80B18);
    sub_230D1CF5C(v5, v4);
    type metadata accessor for SQLDatabaseClient(0);
    swift_allocObject();
    v6 = sub_230D3CAF0(v4);
    v0[22] = 0;
    v2 = v6;
    *(v1 + 136) = v6;
  }

  v0[23] = v2;
  v3 = v0[13];

  return MEMORY[0x2822009F8](sub_230D6FE0C, v3, 0);
}

uint64_t sub_230D6FE0C()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[23];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_230D6FEE4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D6FFB4()
{
  v1 = v0[14];
  if (*(v1 + 136))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    if (qword_27DB5A478 != -1)
    {
      swift_once();
    }

    v4 = v0[16];
    v5 = __swift_project_value_buffer(v0[15], qword_27DB80B18);
    sub_230D1CF5C(v5, v4);
    type metadata accessor for SQLDatabaseClient(0);
    swift_allocObject();
    v6 = sub_230D3CAF0(v4);
    v0[25] = 0;
    v2 = v6;
    *(v1 + 136) = v6;
  }

  v0[26] = v2;
  v3 = v0[13];

  return MEMORY[0x2822009F8](sub_230D70138, v3, 0);
}

uint64_t sub_230D70138()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  sub_230D34594(*(v0 + 596), *(v0 + 192), *(v0 + 592) != 0, *(v0 + 96), (v0 + 88), *(v0 + 168));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 208);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230D70244(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 168);
  v5 = *(v1 + 152);
  v6 = *(v1 + 144);
  v13 = *(v1 + 160);
  v7 = *(v1 + 96);
  v8 = *(v1 + 592) != 0;
  *(v1 + 88) = v3;
  v9 = *(v1 + 596);
  swift_willThrow();
  v10 = v3;
  sub_230D34594(v9, v2, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v3);
  (*(v5 + 8))(v13, v6);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D70398(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = a8;
  *(v8 + 152) = v13;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 612) = a2;
  *(v8 + 96) = a1;
  *(v8 + 104) = a3;
  v10 = sub_230E68D80();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D704A0, a4, 0);
}

uint64_t sub_230D704A0()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 612);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34[0] = v7;
    *v6 = 136315650;
    LOBYTE(v33) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v34);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v34);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v33 = 0x6C616E7265746E69;
    *(&v33 + 1) = 0xE90000000000002ELL;
    v32 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 612);
  *(v0 + 56) = *(v14 + 24);
  v33 = *(v14 + 24);
  v32 = v15;
  LOBYTE(v34[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v32, v34);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 600) = 0;
    *(v0 + 604) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 232), (v0 + 604));
    *(v0 + 608) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 280);
      v20 = *(v0 + 352);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 208) = v18;
    *(v0 + 88) = 0;
    v23 = swift_task_alloc();
    *(v0 + 216) = v23;
    *v23 = v0;
    v24 = sub_230D709E0;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D70888;
  }

  v23[1] = v24;
  v25 = *(v0 + 144);
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 136);
  v29 = *(v0 + 120);
  v30 = *(v0 + 96);

  return sub_230D4213C(v30, v29, v27, v28, v25, v26);
}

uint64_t sub_230D70888()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D70E94;
  }

  else
  {
    v4 = sub_230D70DB8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D709E0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D70C50;
  }

  else
  {
    v4 = sub_230D70B38;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D70B38()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_230D353D4(*(v0 + 612), *(v0 + 208), *(v0 + 608) != 0, *(v0 + 104), (v0 + 88), *(v0 + 184));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D70C50(uint64_t a1)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 208);
  v4 = *(v1 + 184);
  v5 = *(v1 + 168);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v6 = *(v1 + 104);
  v7 = *(v1 + 608) != 0;
  *(v1 + 88) = v2;
  v8 = *(v1 + 612);
  swift_willThrow();
  v9 = v2;
  sub_230D353D4(v8, v3, v7, v6, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v12);

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230D70DB8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D70E94()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D70F74(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 588) = a2;
  *(v6 + 96) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D71070, a4, 0);
}

uint64_t sub_230D71070()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 588);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 588);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 328);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    *(v0 + 88) = 0;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D715A4;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D7144C;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);
  v27 = *(v0 + 96);

  return sub_230D3F2A8(v27, v25, v26);
}

uint64_t sub_230D7144C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D71A08;
  }

  else
  {
    v4 = sub_230D71948;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D715A4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D717F8;
  }

  else
  {
    v4 = sub_230D716FC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D716FC()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_230D35894(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);
  sub_230D1D148(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_230D717F8(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);
  v13 = *(v1 + 152);
  v14 = *(v1 + 120);
  v7 = *(v1 + 104);
  v8 = *(v1 + 584) != 0;
  *(v1 + 88) = v2;
  v9 = *(v1 + 588);
  swift_willThrow();
  v10 = v2;
  sub_230D35894(v9, v3, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);
  sub_230D1D148(v14);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D71948()
{
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_230D1D148(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D71A08()
{
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_230D1D148(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D71ACC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = a8;
  *(v8 + 152) = v13;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 612) = a2;
  *(v8 + 96) = a1;
  *(v8 + 104) = a3;
  v10 = sub_230E68D80();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D71BD4, a4, 0);
}

uint64_t sub_230D71BD4()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 612);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34[0] = v7;
    *v6 = 136315650;
    LOBYTE(v33) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v34);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v34);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v33 = 0x6C616E7265746E69;
    *(&v33 + 1) = 0xE90000000000002ELL;
    v32 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 612);
  *(v0 + 56) = *(v14 + 24);
  v33 = *(v14 + 24);
  v32 = v15;
  LOBYTE(v34[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v32, v34);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 600) = 0;
    *(v0 + 604) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 232), (v0 + 604));
    *(v0 + 608) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 280);
      v20 = *(v0 + 352);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 208) = v18;
    *(v0 + 88) = 0;
    v23 = swift_task_alloc();
    *(v0 + 216) = v23;
    *v23 = v0;
    v24 = sub_230D72114;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D71FBC;
  }

  v23[1] = v24;
  v25 = *(v0 + 144);
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 136);
  v29 = *(v0 + 120);
  v30 = *(v0 + 96);

  return sub_230D41918(v30, v29, v27, v28, v25, v26);
}

uint64_t sub_230D71FBC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D725A8;
  }

  else
  {
    v4 = sub_230D724D4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D72114()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D72374;
  }

  else
  {
    v4 = sub_230D7226C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D7226C()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_230D35D54(*(v0 + 612), *(v0 + 208), *(v0 + 608) != 0, *(v0 + 104), (v0 + 88), *(v0 + 184));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D72374(uint64_t a1)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 208);
  v4 = *(v1 + 184);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);
  v13 = *(v1 + 176);
  v7 = *(v1 + 104);
  v8 = *(v1 + 608) != 0;
  *(v1 + 88) = v2;
  v9 = *(v1 + 612);
  swift_willThrow();
  v10 = v2;
  sub_230D35D54(v9, v3, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D724D4()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D725A8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D72678(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 112) = a3;
  *(v5 + 120) = a5;
  *(v5 + 581) = a4;
  *(v5 + 104) = a2;
  *(v5 + 580) = a1;
  v7 = sub_230E68D80();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D72774, a3, 0);
}

uint64_t sub_230D72774()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 580);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315650;
    LOBYTE(v29) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v30);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 580);
  *(v0 + 56) = *(v14 + 24);
  v29 = *(v14 + 24);
  v28 = v15;
  LOBYTE(v30[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0;
    *(v0 + 572) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 200), (v0 + 572));
    *(v0 + 576) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 248);
      v20 = *(v0 + 320);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 176) = v18;
    *(v0 + 96) = 0;
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v24 = sub_230D72CAC;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 160) = v23;
    *v23 = v0;
    v24 = sub_230D72B54;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 581);

  return sub_230D1D808(v0 + 88, v26, v25);
}

uint64_t sub_230D72B54()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D730F0;
  }

  else
  {
    v4 = sub_230D73038;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D72CAC()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D72EF8;
  }

  else
  {
    v4 = sub_230D72E04;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D72E04()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_230D36214(*(v0 + 580), *(v0 + 176), *(v0 + 576) != 0, *(v0 + 104), (v0 + 96), *(v0 + 152));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230D72EF8(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 176);
  v4 = *(v1 + 152);
  v5 = *(v1 + 136);
  v6 = *(v1 + 128);
  v13 = *(v1 + 144);
  v7 = *(v1 + 104);
  v8 = *(v1 + 576) != 0;
  *(v1 + 96) = v2;
  v9 = *(v1 + 580);
  swift_willThrow();
  v10 = v2;
  sub_230D36214(v9, v3, v8, v7, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D73038()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[11];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_230D730F0()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D731A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 596) = a2;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  v7 = sub_230E68860();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v8 = sub_230E68D80();
  *(v5 + 160) = v8;
  *(v5 + 168) = *(v8 - 8);
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D73308, a4, 0);
}

uint64_t sub_230D73308()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 596);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136315650;
    LOBYTE(v26) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v27);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v27);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v26 = 0x6C616E7265746E69;
    *(&v26 + 1) = 0xE90000000000002ELL;
    v25 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v27);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 596);
  *(v0 + 56) = *(v14 + 24);
  v26 = *(v14 + 24);
  v25 = v15;
  LOBYTE(v27[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v25, v27);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0;
    *(v0 + 588) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 216), (v0 + 588));
    *(v0 + 592) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 264);
      v20 = *(v0 + 336);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 200) = v18;
    *(v0 + 88) = 0;
    v23 = sub_230D7392C;
  }

  else
  {
    v23 = sub_230D7367C;
  }

  return MEMORY[0x2822009F8](v23, 0, 0);
}

uint64_t sub_230D7367C()
{
  VectorDatabaseConfiguration.path.getter(v0[19]);
  v0[24] = 0;
  v1 = v0[14];
  (*(v0[17] + 32))(v0[12], v0[19], v0[16]);

  return MEMORY[0x2822009F8](sub_230D7378C, v1, 0);
}

uint64_t sub_230D7378C()
{
  v1 = v0[15];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_230D7EBC8(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D7385C()
{
  v1 = v0[15];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_230D7EBC8(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D7392C()
{
  VectorDatabaseConfiguration.path.getter(v0[18]);
  v0[26] = 0;
  v1 = v0[14];
  (*(v0[17] + 32))(v0[12], v0[18], v0[16]);

  return MEMORY[0x2822009F8](sub_230D73A3C, v1, 0);
}

uint64_t sub_230D73A3C()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 120);
  sub_230D37514(*(v0 + 596), *(v0 + 200), *(v0 + 592) != 0, *(v0 + 104), (v0 + 88), *(v0 + 184));
  (*(v2 + 8))(v1, v3);
  sub_230D7EBC8(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_230D73B40(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  v4 = *(v1 + 184);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 120);
  v7 = *(v1 + 104);
  v8 = *(v1 + 592) != 0;
  *(v1 + 88) = v3;
  v9 = *(v1 + 596);
  swift_willThrow();
  v10 = v3;
  sub_230D37514(v9, v2, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v3);
  (*(v5 + 8))(v13, v6);
  sub_230D7EBC8(v14);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D73C94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 588) = a2;
  *(v6 + 96) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D73D90, a4, 0);
}

uint64_t sub_230D73D90()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 588);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 588);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 328);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    *(v0 + 88) = 0;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D742C4;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D7416C;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);
  v27 = *(v0 + 96);

  return sub_230D510BC(v27, v25, v26);
}

uint64_t sub_230D7416C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D74728;
  }

  else
  {
    v4 = sub_230D74668;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D742C4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D74518;
  }

  else
  {
    v4 = sub_230D7441C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D7441C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_230D379D4(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D74518(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);
  v13 = *(v1 + 152);
  v7 = *(v1 + 104);
  v8 = *(v1 + 584) != 0;
  *(v1 + 88) = v2;
  v9 = *(v1 + 588);
  swift_willThrow();
  v10 = v2;
  sub_230D379D4(v9, v3, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D74668()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D74728()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D747EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 588) = a2;
  *(v6 + 96) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D748E8, a4, 0);
}

uint64_t sub_230D748E8()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 588);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 588);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 328);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    *(v0 + 88) = 0;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D74E1C;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D74CC4;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);
  v27 = *(v0 + 96);

  return sub_230D517DC(v27, v25, v26);
}

uint64_t sub_230D74CC4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D75280;
  }

  else
  {
    v4 = sub_230D751C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D74E1C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D75070;
  }

  else
  {
    v4 = sub_230D74F74;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D74F74()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_230D37E94(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D75070(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);
  v13 = *(v1 + 152);
  v7 = *(v1 + 104);
  v8 = *(v1 + 584) != 0;
  *(v1 + 88) = v2;
  v9 = *(v1 + 588);
  swift_willThrow();
  v10 = v2;
  sub_230D37E94(v9, v3, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D751C0()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D75280()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D75344(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v13;
  *(v8 + 605) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 604) = a2;
  *(v8 + 96) = a1;
  v10 = sub_230E68D80();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D75450, a4, 0);
}

uint64_t sub_230D75450()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 604);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34[0] = v7;
    *v6 = 136315650;
    LOBYTE(v33) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v34);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v34);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v33 = 0x6C616E7265746E69;
    *(&v33 + 1) = 0xE90000000000002ELL;
    v32 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v34);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 604);
  *(v0 + 56) = *(v14 + 24);
  v33 = *(v14 + 24);
  v32 = v15;
  LOBYTE(v34[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v32, v34);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 176) = CFAbsoluteTimeGetCurrent();
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0;
    *(v0 + 596) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 224), (v0 + 596));
    *(v0 + 600) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 272);
      v20 = *(v0 + 344);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 200) = v18;
    v23 = *(v0 + 605);
    *(v0 + 88) = 0;
    v24 = swift_task_alloc();
    *(v0 + 208) = v24;
    *v24 = v0;
    v25 = sub_230D75994;
  }

  else
  {
    v23 = *(v0 + 605);
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v25 = sub_230D7583C;
  }

  v24[1] = v25;
  v26 = *(v0 + 136);
  v27 = *(v0 + 144);
  v28 = *(v0 + 120);
  v29 = *(v0 + 128);
  v30 = *(v0 + 96);

  return sub_230D520C8(v30, v28, v29, v26, v23 & 1, v27);
}

uint64_t sub_230D7583C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D75E10;
  }

  else
  {
    v4 = sub_230D75D44;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D75994()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D75BEC;
  }

  else
  {
    v4 = sub_230D75AEC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D75AEC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  sub_230D38354(*(v0 + 604), *(v0 + 200), *(v0 + 600) != 0, *(v0 + 104), (v0 + 88), *(v0 + 176));
  (*(v2 + 8))(v1, v3);
  sub_230D0F4A8(v5, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_230D75BEC(uint64_t a1)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 200);
  v4 = *(v1 + 176);
  v5 = *(v1 + 160);
  v6 = *(v1 + 152);
  v14 = *(v1 + 168);
  v15 = *(v1 + 128);
  v13 = *(v1 + 120);
  v7 = *(v1 + 104);
  v8 = *(v1 + 600) != 0;
  *(v1 + 88) = v2;
  v9 = *(v1 + 604);
  swift_willThrow();
  v10 = v2;
  sub_230D38354(v9, v3, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v14, v6);
  sub_230D0F4A8(v13, v15);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D75D44()
{
  v1 = v0[15];
  v2 = v0[16];
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_230D0F4A8(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_230D75E10()
{
  v2 = v0[15];
  v1 = v0[16];
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_230D0F4A8(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_230D75ED8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 588) = a1;
  v7 = sub_230E68D80();
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D75FD0, a3, 0);
}

uint64_t sub_230D75FD0()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 588);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315650;
    LOBYTE(v29) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v30);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 588);
  *(v0 + 56) = *(v14 + 24);
  v29 = *(v14 + 24);
  v28 = v15;
  LOBYTE(v30[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 328);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    *(v0 + 96) = 0;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D76500;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D763A8;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);

  return sub_230D64EE0(v0 + 88, v25, v26);
}

uint64_t sub_230D763A8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D7697C;
  }

  else
  {
    v4 = sub_230D768AC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D76500()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D7675C;
  }

  else
  {
    v4 = sub_230D76658;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D76658()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_230D38CD4(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 96), *(v0 + 160));
  (*(v2 + 8))(v1, v3);
  sub_230D57464(v4);
  v5 = *(v0 + 88);
  sub_230D1CE3C(*(v0 + 128));

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_230D7675C(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);
  v15 = *(v1 + 128);
  v13 = *(v1 + 152);
  v14 = *(v1 + 120);
  v7 = *(v1 + 104);
  v8 = *(v1 + 584) != 0;
  *(v1 + 96) = v2;
  v9 = *(v1 + 588);
  swift_willThrow();
  v10 = v2;
  sub_230D38CD4(v9, v3, v8, v7, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);
  sub_230D57464(v14);
  sub_230D1CE3C(v15);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D768AC()
{
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_230D57464(v1);
  v2 = v0[11];
  sub_230D1CE3C(v0[16]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_230D7697C()
{
  v1 = v0[16];
  v2 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_230D57464(v2);
  sub_230D1CE3C(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_230D76A40(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 588) = a1;
  v7 = sub_230E68D80();
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D76B38, a3, 0);
}

uint64_t sub_230D76B38()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 588);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315650;
    LOBYTE(v29) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v30);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 588);
  *(v0 + 56) = *(v14 + 24);
  v29 = *(v14 + 24);
  v28 = v15;
  LOBYTE(v30[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 328);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    *(v0 + 96) = 0;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D77068;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D76F10;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);

  return sub_230DBE07C(v0 + 88, v25, v26);
}

uint64_t sub_230D76F10()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D82894;
  }

  else
  {
    v4 = sub_230D82820;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D77068()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D8297C;
  }

  else
  {
    v4 = sub_230D827AC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D771C0(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 589) = a4;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 588) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D772BC, a3, 0);
}

uint64_t sub_230D772BC()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 588);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 588);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 328);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    *(v0 + 96) = 0;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D77698;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D76F10;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);
  v27 = *(v0 + 589);

  return sub_230DBEB9C(v0 + 88, v27, v25, v26);
}

uint64_t sub_230D77698()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D778F4;
  }

  else
  {
    v4 = sub_230D777F0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D777F0()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_230D39654(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 96), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 88);
  sub_230D1CE3C(*(v0 + 128));

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230D778F4(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);
  v14 = *(v1 + 128);
  v13 = *(v1 + 152);
  v7 = *(v1 + 104);
  v8 = *(v1 + 584) != 0;
  *(v1 + 96) = v2;
  v9 = *(v1 + 588);
  swift_willThrow();
  v10 = v2;
  sub_230D39654(v9, v3, v8, v7, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  sub_230D1CE3C(v14);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D77A44(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a2;
  *(v3 + 112) = a3;
  *(v3 + 572) = a1;
  v5 = sub_230E68D80();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D77B38, a3, 0);
}

uint64_t sub_230D77B38()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 572);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28[0] = v7;
    *v6 = 136315650;
    LOBYTE(v27) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v28);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v28);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v27 = 0x6C616E7265746E69;
    *(&v27 + 1) = 0xE90000000000002ELL;
    v26 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v28);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 572);
  *(v0 + 56) = *(v14 + 24);
  v27 = *(v14 + 24);
  v26 = v15;
  LOBYTE(v28[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v26, v28);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 144) = CFAbsoluteTimeGetCurrent();
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0;
    *(v0 + 564) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 192), (v0 + 564));
    *(v0 + 568) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 240);
      v20 = *(v0 + 312);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 168) = v18;
    *(v0 + 96) = 0;
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D78064;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 152) = v23;
    *v23 = v0;
    v24 = sub_230D77F0C;
  }

  v23[1] = v24;

  return sub_230DC071C(v0 + 88);
}

uint64_t sub_230D77F0C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D78488;
  }

  else
  {
    v4 = sub_230D783D8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D78064()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D782A0;
  }

  else
  {
    v4 = sub_230D781BC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D781BC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_230D39B14(*(v0 + 572), *(v0 + 168), *(v0 + 568) != 0, *(v0 + 104), (v0 + 96), *(v0 + 144));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230D782A0(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 168);
  v4 = *(v1 + 144);
  v5 = *(v1 + 128);
  v13 = *(v1 + 136);
  v6 = *(v1 + 120);
  v7 = *(v1 + 104);
  v8 = *(v1 + 568) != 0;
  *(v1 + 96) = v2;
  v9 = *(v1 + 572);
  swift_willThrow();
  v10 = v2;
  sub_230D39B14(v9, v3, v8, v7, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D783D8()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[11];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_230D78488()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D78530(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 581) = a1;
  v7 = sub_230E68D80();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D78628, a3, 0);
}

uint64_t sub_230D78628()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 581);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315650;
    LOBYTE(v29) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v30);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 581);
  *(v0 + 56) = *(v14 + 24);
  v29 = *(v14 + 24);
  v28 = v15;
  LOBYTE(v30[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0;
    *(v0 + 572) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 200), (v0 + 572));
    *(v0 + 576) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 248);
      v20 = *(v0 + 320);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 176) = v18;
    *(v0 + 88) = 0;
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v24 = sub_230D78B5C;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 160) = v23;
    *v23 = v0;
    v24 = sub_230D78A04;
  }

  v23[1] = v24;
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);

  return sub_230E1F040(v0 + 580, v25, v26);
}

uint64_t sub_230D78A04()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_230D78FDC;
  }

  else
  {
    v4 = sub_230D78F0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D78B5C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_230D78DB8;
  }

  else
  {
    v4 = sub_230D78CB4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D78CB4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_230D3A954(*(v0 + 581), *(v0 + 176), *(v0 + 576) != 0, *(v0 + 96), (v0 + 88), *(v0 + 152));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 580);
  sub_230D1CE3C(*(v0 + 120));

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230D78DB8(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 176);
  v4 = *(v1 + 152);
  v5 = *(v1 + 136);
  v6 = *(v1 + 128);
  v14 = *(v1 + 120);
  v13 = *(v1 + 144);
  v7 = *(v1 + 96);
  v8 = *(v1 + 576) != 0;
  *(v1 + 88) = v2;
  v9 = *(v1 + 581);
  swift_willThrow();
  v10 = v2;
  sub_230D3A954(v9, v3, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  sub_230D1CE3C(v14);

  v11 = *(v1 + 8);

  return v11(0);
}

uint64_t sub_230D78F0C()
{
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  v1 = *(v0 + 580);
  sub_230D1CE3C(*(v0 + 120));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_230D78FDC()
{
  v1 = v0[15];
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_230D1CE3C(v1);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_230D790A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 572) = a2;
  *(v4 + 96) = a1;
  v6 = sub_230E68D80();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D7919C, a4, 0);
}

uint64_t sub_230D7919C()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 572);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29[0] = v7;
    *v6 = 136315650;
    LOBYTE(v28) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v29);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v29);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v28 = 0x6C616E7265746E69;
    *(&v28 + 1) = 0xE90000000000002ELL;
    v27 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v29);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 572);
  *(v0 + 56) = *(v14 + 24);
  v28 = *(v14 + 24);
  v27 = v15;
  LOBYTE(v29[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v27, v29);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 144) = CFAbsoluteTimeGetCurrent();
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0;
    *(v0 + 564) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 192), (v0 + 564));
    *(v0 + 568) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 240);
      v20 = *(v0 + 312);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 168) = v18;
    *(v0 + 88) = 0;
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D796CC;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 152) = v23;
    *v23 = v0;
    v24 = sub_230D79574;
  }

  v23[1] = v24;
  v25 = *(v0 + 96);

  return sub_230E1F73C(v25);
}

uint64_t sub_230D79574()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D78488;
  }

  else
  {
    v4 = sub_230D79A38;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D796CC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D79900;
  }

  else
  {
    v4 = sub_230D79824;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D79824()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_230D3AE14(*(v0 + 572), *(v0 + 168), *(v0 + 568) != 0, *(v0 + 104), (v0 + 88), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D79900(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 168);
  v4 = *(v1 + 144);
  v5 = *(v1 + 128);
  v13 = *(v1 + 136);
  v6 = *(v1 + 120);
  v7 = *(v1 + 104);
  v8 = *(v1 + 568) != 0;
  *(v1 + 88) = v2;
  v9 = *(v1 + 572);
  swift_willThrow();
  v10 = v2;
  sub_230D3AE14(v9, v3, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D79A38()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D79AE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 588) = a2;
  *(v6 + 96) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D79BDC, a4, 0);
}

uint64_t sub_230D79BDC()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 588);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 588);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 328);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    *(v0 + 88) = 0;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D7A110;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D79FB8;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);
  v27 = *(v0 + 96);

  return sub_230E2DF10(v27, v25, v26);
}

uint64_t sub_230D79FB8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D7A574;
  }

  else
  {
    v4 = sub_230D7A4B4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D7A110()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D7A364;
  }

  else
  {
    v4 = sub_230D7A268;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D7A268()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_230D3B794(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  sub_230D1CE3C(*(v0 + 128));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D7A364(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);
  v14 = *(v1 + 128);
  v13 = *(v1 + 152);
  v7 = *(v1 + 104);
  v8 = *(v1 + 584) != 0;
  *(v1 + 88) = v2;
  v9 = *(v1 + 588);
  swift_willThrow();
  v10 = v2;
  sub_230D3B794(v9, v3, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  sub_230D1CE3C(v14);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D7A4B4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  sub_230D1CE3C(v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D7A574()
{
  v1 = v0[16];
  (*(v0[18] + 8))(v0[19], v0[17]);

  sub_230D1CE3C(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D7A638(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 588) = a1;
  v7 = sub_230E68D80();
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D7A730, a3, 0);
}

uint64_t sub_230D7A730()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 588);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315650;
    LOBYTE(v29) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v30);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 588);
  *(v0 + 56) = *(v14 + 24);
  v29 = *(v14 + 24);
  v28 = v15;
  LOBYTE(v30[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 328);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    *(v0 + 96) = 0;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D7AC60;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D7AB08;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);

  return sub_230E5653C(v0 + 88, v25, v26);
}

uint64_t sub_230D7AB08()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D7A574;
  }

  else
  {
    v4 = sub_230D7B00C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D7AC60()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D7AEBC;
  }

  else
  {
    v4 = sub_230D7ADB8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D7ADB8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_230D3C114(*(v0 + 588), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 104), (v0 + 96), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 88);
  sub_230D1CE3C(*(v0 + 128));

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230D7AEBC(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);
  v14 = *(v1 + 128);
  v13 = *(v1 + 152);
  v7 = *(v1 + 104);
  v8 = *(v1 + 584) != 0;
  *(v1 + 96) = v2;
  v9 = *(v1 + 588);
  swift_willThrow();
  v10 = v2;
  sub_230D3C114(v9, v3, v8, v7, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  sub_230D1CE3C(v14);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D7B00C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[11];
  sub_230D1CE3C(v0[16]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t PerformanceTrackable.trackPerformance<A>(requestType:requestContext:operation:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 136) = a1;
  *(v8 + 144) = a4;
  v11 = sub_230E68D80();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 272) = *a2;
  v12 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v12;
  *(v8 + 48) = *(a3 + 32);
  v14 = sub_230E692D0();
  *(v8 + 208) = v14;
  *(v8 + 216) = v13;

  return MEMORY[0x2822009F8](sub_230D7B1F0, v14, v13);
}

{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 128) = a1;
  *(v8 + 136) = a4;
  v11 = sub_230E68D80();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 248) = *a2;
  v12 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v12;
  *(v8 + 48) = *(a3 + 32);
  v14 = sub_230E692D0();
  *(v8 + 200) = v14;
  *(v8 + 208) = v13;

  return MEMORY[0x2822009F8](sub_230D7D620, v14, v13);
}

uint64_t sub_230D7B1F0()
{
  v24 = v0;
  sub_230E68D70();
  sub_230D1CDE0(v0 + 16, v0 + 56);
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  sub_230D1CE3C(v0 + 16);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 272);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315650;
    LOBYTE(v22) = v3;
    v6 = RequestType.rawValue.getter();
    v8 = sub_230D7E620(v6, v7, &v21);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_230D7E620(*(v0 + 24), *(v0 + 32), &v21);
    *(v4 + 22) = 2080;
    v9 = *(v0 + 16);
    *&v22 = 0x6C616E7265746E69;
    *(&v22 + 1) = 0xE90000000000002ELL;
    v23 = v9;
    v10 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v10);

    v11 = sub_230D7E620(v22, *(&v22 + 1), &v21);

    *(v4 + 24) = v11;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v5, -1, -1);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v12 = *(v0 + 272);
  *(v0 + 96) = *(v0 + 40);
  v22 = *(v0 + 40);
  v23 = v12;
  LOBYTE(v21) = *(v0 + 16);
  sub_230D1CE90(v0 + 96, v0 + 112);
  v13 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v23, &v21);

  if (v13)
  {
    v14 = *(v0 + 144);
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 232) = sub_230D7DD60();
    *(v0 + 273) = v15;
    *(v0 + 128) = 0;
    v20 = (v14 + *v14);
    v16 = swift_task_alloc();
    *(v0 + 240) = v16;
    *v16 = v0;
    v17 = sub_230D7B5D8;
  }

  else
  {
    v20 = (*(v0 + 144) + **(v0 + 144));
    v16 = swift_task_alloc();
    *(v0 + 256) = v16;
    *v16 = v0;
    v17 = sub_230D7B7C4;
  }

  v16[1] = v17;
  v18 = *(v0 + 136);

  return v20(v18);
}

uint64_t sub_230D7B5D8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_230D7B9F8;
  }

  else
  {
    v5 = sub_230D7B714;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_230D7B714()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_230D7DE44(*(v0 + 272), *(v0 + 232), *(v0 + 273) & 1, v0 + 16, (v0 + 128), *(v0 + 224));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D7B7C4()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_230D7B97C;
  }

  else
  {
    v5 = sub_230D7B900;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_230D7B900()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D7B97C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D7B9F8(uint64_t a1)
{
  v2 = *(v1 + 248);
  v3 = *(v1 + 273);
  v4 = *(v1 + 224);
  v5 = *(v1 + 192);
  v12 = *(v1 + 200);
  v10 = *(v1 + 232);
  v11 = *(v1 + 184);
  *(v1 + 128) = v2;
  v6 = *(v1 + 272);
  swift_willThrow();
  v7 = v2;
  sub_230D7DE44(v6, v10, v3 & 1, v1 + 16, (v1 + 128), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v12, v11);

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_230D7BB08(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 556) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  v7 = sub_230E68D80();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D7BC00, a4, 0);
}

uint64_t sub_230D7BC00()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 556);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315650;
    LOBYTE(v29) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v30);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 556);
  *(v0 + 56) = *(v14 + 24);
  v29 = *(v14 + 24);
  v28 = v15;
  LOBYTE(v30[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 144) = CFAbsoluteTimeGetCurrent();
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0;
    *(v0 + 548) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 176), (v0 + 548));
    *(v0 + 552) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 224);
      v20 = *(v0 + 296);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 160) = v18;
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D7C1CC;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 152) = v23;
    *v23 = v0;
    v24 = sub_230D7BFD8;
  }

  v23[1] = v24;
  v25 = *(v0 + 112);
  v26 = *(v0 + 88);

  return sub_230D63F6C(v26, v25);
}

uint64_t sub_230D7BFD8()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D7C114, v1, 0);
}

uint64_t sub_230D7C114()
{
  v1 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);
  sub_230D1CE3C(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D7C1CC()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D7C308, v1, 0);
}

uint64_t sub_230D7C308(__n128 a1)
{
  sub_230E4C0DC(*(v1 + 556), *(v1 + 160), *(v1 + 552) != 0, *(v1 + 96), *(v1 + 144));
  v2 = *(v1 + 112);
  (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
  sub_230D1CE3C(v2);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_230D7C3E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 564) = a2;
  *(v6 + 88) = a1;
  v8 = sub_230E68D80();
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D7C4DC, a4, 0);
}

uint64_t sub_230D7C4DC()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 564);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 564);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 304);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 168) = v18;
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D7C9F4;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 160) = v23;
    *v23 = v0;
    v24 = sub_230D7C8B8;
  }

  v23[1] = v24;
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v27 = *(v0 + 88);

  return sub_230DE7A24(v27, v25, v26);
}

uint64_t sub_230D7C8B8()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D82908, v1, 0);
}

uint64_t sub_230D7C9F4()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D7CB30, v1, 0);
}

uint64_t sub_230D7CB30(__n128 a1)
{
  sub_230E4C0DC(*(v1 + 564), *(v1 + 168), *(v1 + 560) != 0, *(v1 + 96), *(v1 + 152));
  v2 = *(v1 + 120);
  (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));

  sub_230D1CE3C(v2);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_230D7CC14(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 564) = a2;
  *(v6 + 88) = a1;
  v8 = sub_230E68D80();
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D7CD10, a4, 0);
}

uint64_t sub_230D7CD10()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 564);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 564);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 304);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 168) = v18;
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D7D2EC;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 160) = v23;
    *v23 = v0;
    v24 = sub_230D7D0EC;
  }

  v23[1] = v24;
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v27 = *(v0 + 88);

  return sub_230E36124(v27, v25, v26);
}

uint64_t sub_230D7D0EC()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D7D228, v1, 0);
}

uint64_t sub_230D7D228()
{
  v1 = v0[15];
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_230D1CE3C(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D7D2EC()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D7D428, v1, 0);
}

uint64_t sub_230D7D428(__n128 a1)
{
  sub_230E4CE38(*(v1 + 564), *(v1 + 168), *(v1 + 560) != 0, *(v1 + 96), *(v1 + 152));
  v2 = *(v1 + 120);
  (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));

  sub_230D1CE3C(v2);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_230D7D620()
{
  v24 = v0;
  sub_230E68D70();
  sub_230D1CDE0(v0 + 16, v0 + 56);
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  sub_230D1CE3C(v0 + 16);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 248);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315650;
    LOBYTE(v22) = v3;
    v6 = RequestType.rawValue.getter();
    v8 = sub_230D7E620(v6, v7, &v21);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_230D7E620(*(v0 + 24), *(v0 + 32), &v21);
    *(v4 + 22) = 2080;
    v9 = *(v0 + 16);
    *&v22 = 0x6C616E7265746E69;
    *(&v22 + 1) = 0xE90000000000002ELL;
    v23 = v9;
    v10 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v10);

    v11 = sub_230D7E620(v22, *(&v22 + 1), &v21);

    *(v4 + 24) = v11;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v5, -1, -1);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v12 = *(v0 + 248);
  *(v0 + 96) = *(v0 + 40);
  v22 = *(v0 + 40);
  v23 = v12;
  LOBYTE(v21) = *(v0 + 16);
  sub_230D1CE90(v0 + 96, v0 + 112);
  v13 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v23, &v21);

  if (v13)
  {
    v14 = *(v0 + 136);
    sub_230E68950();
    *(v0 + 216) = CFAbsoluteTimeGetCurrent();
    *(v0 + 224) = sub_230D7DD60();
    *(v0 + 249) = v15;
    v20 = (v14 + *v14);
    v16 = swift_task_alloc();
    *(v0 + 232) = v16;
    *v16 = v0;
    v17 = sub_230D7DA04;
  }

  else
  {
    v20 = (*(v0 + 136) + **(v0 + 136));
    v16 = swift_task_alloc();
    *(v0 + 240) = v16;
    *v16 = v0;
    v17 = sub_230D7DBC4;
  }

  v16[1] = v17;
  v18 = *(v0 + 128);

  return v20(v18);
}

uint64_t sub_230D7DA04()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_230D7DB24, v3, v2);
}

uint64_t sub_230D7DB24()
{
  sub_230D7E25C(*(v0 + 248), *(v0 + 224), *(v0 + 249) & 1, v0 + 16, *(v0 + 216));
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D7DBC4()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_230D7DCE4, v3, v2);
}

uint64_t sub_230D7DCE4()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D7DD60()
{
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *task_info_out = 0u;
  v4 = 0u;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  if (__CFADD__(v6, *(&v10 + 1)))
  {
    __break(1u);
  }

  return vcvtd_n_f64_u64(v6 + *(&v10 + 1), 0x14uLL);
}

uint64_t sub_230D7DE44(char a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void **a5, double a6)
{
  v40 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v41 = &v40 - v13;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  v43 = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  v15 = CFAbsoluteTimeGetCurrent() - a6;
  v16 = COERCE_DOUBLE(sub_230D7DD60());
  v18 = a3 | v17;
  if ((a3 | v17))
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v16 - *&a2;
  }

  sub_230E68950();
  LOBYTE(v44) = *a4;
  v20 = RequestType.rawValue.getter();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v23 = swift_allocObject();
  v42 = xmmword_230E6B3B0;
  *(v23 + 16) = xmmword_230E6B3B0;
  v44 = 0x6C616E7265746E69;
  v45 = 0xE90000000000002ELL;
  v43 = a1;
  v24 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v24);

  v25 = v44;
  v26 = v45;
  v27 = *v40;
  if (*v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v28 = swift_allocObject();
    *(v28 + 16) = v42;
    *(v28 + 32) = v27;
  }

  else
  {
    v28 = 0;
  }

  *(v23 + 32) = v25;
  *(v23 + 40) = v26;
  *(v23 + 48) = v15;
  *(v23 + 56) = 0;
  *(v23 + 64) = v19;
  *(v23 + 72) = v18 & 1;
  *(v23 + 80) = v28;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);
  v31 = v27;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v32 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v33 = swift_allocObject();
  *(v33 + 16) = v42;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v20;
  *(v34 + 32) = v22;
  *(v34 + 40) = 1;
  *(v34 + 48) = v23;
  *(v34 + 56) = v29;
  *(v34 + 64) = v30;
  *(v34 + 72) = 257;
  *(v34 + 80) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = &unk_230E73430;
  *(v35 + 24) = v34;
  *(v33 + 32) = &unk_230E6E4F0;
  *(v33 + 40) = v35;
  v36 = sub_230E69310();
  v37 = v41;
  (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v33;

  sub_230D8F204(0, 0, v37, &unk_230E73440, v38);
}

uint64_t sub_230D7E25C(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v36 = &v35 - v12;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  v37 = a1;
  v13 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v13);

  sub_230E68950();

  v14 = CFAbsoluteTimeGetCurrent() - a5;
  v15 = COERCE_DOUBLE(sub_230D7DD60());
  v17 = (a3 | v16) & 1;
  if (v17)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v15 - *&a2;
  }

  sub_230E68950();
  LOBYTE(v38) = *a4;
  v19 = RequestType.rawValue.getter();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v22 = swift_allocObject();
  v35 = xmmword_230E6B3B0;
  *(v22 + 16) = xmmword_230E6B3B0;
  v38 = 0x6C616E7265746E69;
  v39 = 0xE90000000000002ELL;
  v37 = a1;
  v23 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v23);

  v24 = v39;
  *(v22 + 32) = v38;
  *(v22 + 40) = v24;
  *(v22 + 48) = v14;
  *(v22 + 56) = 0;
  *(v22 + 64) = v18;
  *(v22 + 72) = v17;
  *(v22 + 80) = 0;
  v26 = *(a4 + 8);
  v25 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v27 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v28 = swift_allocObject();
  *(v28 + 16) = v35;
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v19;
  *(v29 + 32) = v21;
  *(v29 + 40) = 1;
  *(v29 + 48) = v22;
  *(v29 + 56) = v26;
  *(v29 + 64) = v25;
  *(v29 + 72) = 257;
  *(v29 + 80) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = &unk_230E73410;
  *(v30 + 24) = v29;
  *(v28 + 32) = &unk_230E6E478;
  *(v28 + 40) = v30;
  v31 = sub_230E69310();
  v32 = v36;
  (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v28;

  sub_230D8F204(0, 0, v32, &unk_230E73420, v33);
}

unint64_t sub_230D7E620(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_230D7E6EC(v11, 0, 0, 1, a1, a2);
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
    sub_230D82664(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_230D7E6EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_230D7E7F8(a5, a6);
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
    result = sub_230E69590();
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

void *sub_230D7E7F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_230D7E844(a1, a2);
  sub_230D7E974(&unk_2845A4B00);
  return v3;
}

void *sub_230D7E844(uint64_t a1, unint64_t a2)
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

  v6 = sub_230D7EA60(v5, 0);
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

  result = sub_230E69590();
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
        v10 = sub_230E69140();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_230D7EA60(v10, 0);
        result = sub_230E69530();
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

uint64_t sub_230D7E974(uint64_t result)
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

  result = sub_230D7EAD4(result, v11, 1, v3);
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

void *sub_230D7EA60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCC8, &qword_230E73428);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_230D7EAD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCC8, &qword_230E73428);
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

uint64_t sub_230D7EC1C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + 104) = a2;
  *(v6 + 596) = a1;
  v8 = sub_230E68D80();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D7ED18, a3, 0);
}

uint64_t sub_230D7ED18()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 596);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 596);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 168) = CFAbsoluteTimeGetCurrent();
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0;
    *(v0 + 588) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 216), (v0 + 588));
    *(v0 + 592) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 264);
      v20 = *(v0 + 336);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 192) = v18;
    *(v0 + 96) = 0;
    v23 = swift_task_alloc();
    *(v0 + 200) = v23;
    *v23 = v0;
    v24 = sub_230D7F250;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D7F0F8;
  }

  v23[1] = v24;
  v25 = *(v0 + 128);
  v26 = *(v0 + 136);
  v27 = *(v0 + 120);

  return sub_230DE6CB8(v0 + 88, v27, v25, v26);
}

uint64_t sub_230D7F0F8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D7F6CC;
  }

  else
  {
    v4 = sub_230D7F5FC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D7F250()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_230D7F4AC;
  }

  else
  {
    v4 = sub_230D7F3A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D7F3A8()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  sub_230D38CD4(*(v0 + 596), *(v0 + 192), *(v0 + 592) != 0, *(v0 + 104), (v0 + 96), *(v0 + 168));
  (*(v2 + 8))(v1, v3);
  sub_230D8151C(v4);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_230D7F4AC(uint64_t a1)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 192);
  v4 = *(v1 + 168);
  v5 = *(v1 + 152);
  v6 = *(v1 + 144);
  v13 = *(v1 + 160);
  v14 = *(v1 + 120);
  v7 = *(v1 + 104);
  v8 = *(v1 + 592) != 0;
  *(v1 + 96) = v2;
  v9 = *(v1 + 596);
  swift_willThrow();
  v10 = v2;
  sub_230D38CD4(v9, v3, v8, v7, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);
  sub_230D8151C(v14);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_230D7F5FC()
{
  v1 = v0[15];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_230D8151C(v1);
  v2 = v0[11];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_230D7F6CC()
{
  v1 = v0[15];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_230D8151C(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D7F790(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 112) = a4;
  *(v7 + 120) = a5;
  *(v7 + 96) = a2;
  *(v7 + 104) = a3;
  *(v7 + 580) = a1;
  v9 = sub_230E68D80();
  *(v7 + 144) = v9;
  *(v7 + 152) = *(v9 - 8);
  *(v7 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D7F88C, a3, 0);
}

uint64_t sub_230D7F88C()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 580);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32[0] = v7;
    *v6 = 136315650;
    LOBYTE(v31) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v32);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v32);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v31 = 0x6C616E7265746E69;
    *(&v31 + 1) = 0xE90000000000002ELL;
    v30 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 580);
  *(v0 + 56) = *(v14 + 24);
  v31 = *(v14 + 24);
  v30 = v15;
  LOBYTE(v32[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v32);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 168) = CFAbsoluteTimeGetCurrent();
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0;
    *(v0 + 572) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 200), (v0 + 572));
    *(v0 + 576) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 248);
      v20 = *(v0 + 320);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D7FE5C;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D7FC68;
  }

  v23[1] = v24;
  v25 = *(v0 + 128);
  v26 = *(v0 + 136);
  v27 = *(v0 + 112);
  v28 = *(v0 + 120);

  return sub_230D1AA80(v0 + 88, v27, v28, v25, v26);
}

uint64_t sub_230D7FC68()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D7FDA4, v1, 0);
}

uint64_t sub_230D7FDA4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[11];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_230D7FE5C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D7FF98, v1, 0);
}

uint64_t sub_230D7FF98(__n128 a1)
{
  sub_230E4B7F4(*(v1 + 580), *(v1 + 184), *(v1 + 576) != 0, *(v1 + 96), *(v1 + 168));
  (*(*(v1 + 152) + 8))(*(v1 + 160), *(v1 + 144));
  v2 = *(v1 + 88);

  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_230D80070(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 88) = a2;
  *(v6 + 565) = a1;
  v8 = sub_230E68D80();
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D8016C, a3, 0);
}

uint64_t sub_230D8016C()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 565);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 565);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 304);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 168) = v18;
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D8073C;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 160) = v23;
    *v23 = v0;
    v24 = sub_230D80548;
  }

  v23[1] = v24;
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v27 = *(v0 + 104);

  return sub_230E267B4(v0 + 564, v27, v25, v26);
}

uint64_t sub_230D80548()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230D80684, v1, 0);
}

uint64_t sub_230D80684()
{
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v1 = *(v0 + 564);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_230D8073C()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230D80878, v1, 0);
}

uint64_t sub_230D80878(__n128 a1)
{
  sub_230E4C550(*(v1 + 565), *(v1 + 168), *(v1 + 560) != 0, *(v1 + 88), *(v1 + 152));
  (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
  v2 = *(v1 + 564);

  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_230D80950(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 96) = a2;
  *(v6 + 589) = a1;
  v8 = sub_230E68D80();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D80A4C, a3, 0);
}

uint64_t sub_230D80A4C()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 589);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31[0] = v7;
    *v6 = 136315650;
    LOBYTE(v30) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v31);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v30 = 0x6C616E7265746E69;
    *(&v30 + 1) = 0xE90000000000002ELL;
    v29 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 589);
  *(v0 + 56) = *(v14 + 24);
  v30 = *(v14 + 24);
  v29 = v15;
  LOBYTE(v31[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v29, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 160) = CFAbsoluteTimeGetCurrent();
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0;
    *(v0 + 580) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 208), (v0 + 580));
    *(v0 + 584) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 256);
      v20 = *(v0 + 328);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 184) = v18;
    *(v0 + 88) = 0;
    v23 = swift_task_alloc();
    *(v0 + 192) = v23;
    *v23 = v0;
    v24 = sub_230D80F80;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D80E28;
  }

  v23[1] = v24;
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);
  v27 = *(v0 + 112);

  return sub_230E20734(v0 + 588, v27, v25, v26);
}

uint64_t sub_230D80E28()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_230D81400;
  }

  else
  {
    v4 = sub_230D81330;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D80F80()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_230D811DC;
  }

  else
  {
    v4 = sub_230D810D8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D810D8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_230D3A954(*(v0 + 589), *(v0 + 184), *(v0 + 584) != 0, *(v0 + 96), (v0 + 88), *(v0 + 160));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 588);
  sub_230D814C8(*(v0 + 120));

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230D811DC(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);
  v14 = *(v1 + 120);
  v13 = *(v1 + 152);
  v7 = *(v1 + 96);
  v8 = *(v1 + 584) != 0;
  *(v1 + 88) = v2;
  v9 = *(v1 + 589);
  swift_willThrow();
  v10 = v2;
  sub_230D3A954(v9, v3, v8, v7, (v1 + 88), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v13, v6);

  sub_230D814C8(v14);

  v11 = *(v1 + 8);

  return v11(0);
}

uint64_t sub_230D81330()
{
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v1 = *(v0 + 588);
  sub_230D814C8(*(v0 + 120));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_230D81400()
{
  v1 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  sub_230D814C8(v1);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_230D81570(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 564) = a1;
  v7 = sub_230E68D80();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D81668, a3, 0);
}

uint64_t sub_230D81668()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 564);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315650;
    LOBYTE(v29) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v30);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 564);
  *(v0 + 56) = *(v14 + 24);
  v29 = *(v14 + 24);
  v28 = v15;
  LOBYTE(v30[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 304);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 168) = v18;
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D81B7C;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 160) = v23;
    *v23 = v0;
    v24 = sub_230D81A40;
  }

  v23[1] = v24;
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);

  return sub_230D1B584(v0 + 88, v25, v26);
}

uint64_t sub_230D81A40()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D194C8, v1, 0);
}

uint64_t sub_230D81B7C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D81CB8, v1, 0);
}

uint64_t sub_230D81CB8(__n128 a1)
{
  sub_230E4B7F4(*(v1 + 564), *(v1 + 168), *(v1 + 560) != 0, *(v1 + 96), *(v1 + 152));
  (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
  v2 = *(v1 + 88);

  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_230D81D90(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
  *(v5 + 557) = a1;
  v7 = sub_230E68D80();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D81E88, a3, 0);
}

uint64_t sub_230D81E88()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 557);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315650;
    LOBYTE(v29) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v30);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v29 = 0x6C616E7265746E69;
    *(&v29 + 1) = 0xE90000000000002ELL;
    v28 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 557);
  *(v0 + 56) = *(v14 + 24);
  v29 = *(v14 + 24);
  v28 = v15;
  LOBYTE(v30[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v30);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 144) = CFAbsoluteTimeGetCurrent();
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0;
    *(v0 + 548) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 176), (v0 + 548));
    *(v0 + 552) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 224);
      v20 = *(v0 + 296);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 160) = v18;
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D82450;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 152) = v23;
    *v23 = v0;
    v24 = sub_230D8225C;
  }

  v23[1] = v24;
  v25 = *(v0 + 104);
  v26 = *(v0 + 112);

  return sub_230DBFC6C(v0 + 556, v25, v26);
}

uint64_t sub_230D8225C()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230D82398, v1, 0);
}

uint64_t sub_230D82398()
{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 556);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_230D82450()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230D8258C, v1, 0);
}

uint64_t sub_230D8258C(__n128 a1)
{
  sub_230E4C550(*(v1 + 557), *(v1 + 160), *(v1 + 552) != 0, *(v1 + 88), *(v1 + 144));
  (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
  v2 = *(v1 + 556);

  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_230D82664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_230D826C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230D1BF00;

  return sub_230DA3554(a1, v4, v5, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_230D827AC()
{

  return sub_230D777F0();
}

uint64_t sub_230D82820()
{

  return sub_230D7B00C();
}

uint64_t sub_230D82894()
{

  return sub_230D7A574();
}

uint64_t sub_230D82908()
{

  return sub_230D7D228();
}

uint64_t sub_230D8297C(uint64_t a1)
{

  return sub_230D778F4(a1);
}

BOOL sub_230D829F0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v25 = v2;
    v6 = v2 - 1;
    if (!v2)
    {
      break;
    }

    v7 = *v3;
    if (v7 > 4)
    {
      if (*v3 <= 6u)
      {
        if (v7 == 5)
        {
          v13 = 0xE800000000000000;
          v12 = 0x7374736163646F70;
        }

        else
        {
          v13 = 0xE500000000000000;
          v12 = 0x6F65646976;
        }
      }

      else if (v7 == 7)
      {
        v13 = 0xE600000000000000;
        v12 = 0x6E6F6D6D6F63;
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v7 == 8)
        {
          v12 = 0x65676175676E616CLL;
        }

        else
        {
          v12 = 0x7974697275636573;
        }
      }
    }

    else
    {
      if (v7 == 3)
      {
        v8 = 0x7373656E746966;
      }

      else
      {
        v8 = 0x636973756DLL;
      }

      if (v7 == 3)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (v7 == 2)
      {
        v8 = 0x736B6F6F62;
        v9 = 0xE500000000000000;
      }

      if (*v3)
      {
        v10 = 1936748641;
      }

      else
      {
        v10 = 0x6C616E7265746E69;
      }

      if (*v3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (*v3 <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }
    }

    v14 = 0x7974697275636573;
    if (v4 == 8)
    {
      v14 = 0x65676175676E616CLL;
    }

    v15 = 0xE800000000000000;
    if (v4 == 7)
    {
      v14 = 0x6E6F6D6D6F63;
      v15 = 0xE600000000000000;
    }

    v16 = 0x7374736163646F70;
    if (v4 == 5)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v16 = 0x6F65646976;
      v17 = 0xE500000000000000;
    }

    if (v4 <= 6)
    {
      v14 = v16;
      v15 = v17;
    }

    if (v4 == 3)
    {
      v18 = 0x7373656E746966;
    }

    else
    {
      v18 = 0x636973756DLL;
    }

    if (v4 == 3)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    if (v4 == 2)
    {
      v18 = 0x736B6F6F62;
      v19 = 0xE500000000000000;
    }

    if (v4)
    {
      v20 = 1936748641;
    }

    else
    {
      v20 = 0x6C616E7265746E69;
    }

    if (v4)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE800000000000000;
    }

    if (v4 <= 1)
    {
      v18 = v20;
      v19 = v21;
    }

    if (v4 <= 4)
    {
      v22 = v18;
    }

    else
    {
      v22 = v14;
    }

    if (v4 <= 4)
    {
      v23 = v19;
    }

    else
    {
      v23 = v15;
    }

    if (v12 == v22 && v13 == v23)
    {

      return v25 != 0;
    }

    v5 = sub_230E698C0();

    v2 = v6;
    ++v3;
  }

  while ((v5 & 1) == 0);
  return v25 != 0;
}

uint64_t ServicesIntelligenceProvider.logOperationMetrics(_:amsBag:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  v6 = sub_230E68910();
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  v7 = sub_230E68D80();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v4 + 136) = v8;
  *(v4 + 144) = v9;
  *(v4 + 152) = *(a2 + 1);
  *(v4 + 168) = a2[3];
  *(v4 + 176) = *(a2 + 2);

  return MEMORY[0x2822009F8](sub_230D82DD8, v3, 0);
}

uint64_t sub_230D82DD8()
{
  sub_230E68D70();
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][logOperationMetrics] Starting operation metrics request", v3, 2u);
    MEMORY[0x23191EAE0](v3, -1, -1);
  }

  v23 = v0[22];
  v24 = v0[23];
  v4 = v0[21];
  v5 = v0[19];
  v21 = v0[18];
  v22 = v0[20];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[13];

  (*(v6 + 8))(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCE0, &qword_230E73478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = 0x6F6974617265706FLL;
  *(inited + 40) = 0xEA0000000000736ELL;
  *(inited + 48) = v4;

  v13 = sub_230D0E3A4(inited);
  swift_setDeallocating();
  sub_230D2D9F8(inited + 32, &qword_27DB5BCE8, &qword_230E73480);

  sub_230E68900();
  sub_230E688D0();
  v15 = v14;
  (*(v11 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCF0, &qword_230E73488);
  v16 = swift_allocObject();
  v0[24] = v16;
  *(v16 + 16) = xmmword_230E6B3B0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v21;
  *(v16 + 48) = v5;
  *(v16 + 56) = v22;
  *(v16 + 64) = v15 * 1000.0;
  *(v16 + 72) = v23;
  *(v16 + 80) = v24;

  v17 = swift_task_alloc();
  v0[25] = v17;
  *v17 = v0;
  v17[1] = sub_230D830B8;
  v18 = v0[10];
  v19 = v0[9];

  return sub_230D8328C(v19, 0, v16, 0, 0, v18);
}

uint64_t sub_230D830B8()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    v3 = v2[11];

    return MEMORY[0x2822009F8](sub_230D83210, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_230D83210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D8328C(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v7 + 1200) = v6;
  *(v7 + 1192) = a6;
  *(v7 + 1864) = a5;
  *(v7 + 1863) = a4;
  *(v7 + 1184) = a3;
  *(v7 + 1862) = a2;
  *(v7 + 1176) = a1;
  v8 = sub_230E69A00();
  *(v7 + 1208) = v8;
  *(v7 + 1216) = *(v8 - 8);
  *(v7 + 1224) = swift_task_alloc();
  v9 = sub_230E68D80();
  *(v7 + 1232) = v9;
  *(v7 + 1240) = *(v9 - 8);
  *(v7 + 1248) = swift_task_alloc();
  *(v7 + 1256) = swift_task_alloc();
  *(v7 + 1264) = swift_task_alloc();
  *(v7 + 1272) = swift_task_alloc();
  *(v7 + 1280) = swift_task_alloc();
  *(v7 + 1288) = swift_task_alloc();
  *(v7 + 1296) = swift_task_alloc();
  *(v7 + 1304) = swift_task_alloc();
  *(v7 + 1312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D83454, v6, 0);
}

uint64_t sub_230D83454()
{
  v22 = v0;
  v21[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  v1 = sub_230E68D60();
  v2 = sub_230E693F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1862);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315394;
    v6 = 0x8000000230E802F0;
    v7 = 0xD00000000000001FLL;
    if (v3 != 1)
    {
      v7 = 0xD000000000000012;
      v6 = 0x8000000230E80310;
    }

    if (v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x6F5F706D615F7078;
    }

    if (v3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEE00676F6C5F7064;
    }

    v20 = *(v0 + 1312);
    v10 = *(v0 + 1240);
    v11 = *(v0 + 1232);
    v12 = *(v0 + 1184);
    v13 = sub_230D7E620(v8, v9, v21);

    *(v4 + 4) = v13;
    *(v4 + 12) = 2048;
    v14 = *(v12 + 16);

    *(v4 + 14) = v14;

    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][logMetrics] Starting with topic: %s and %ld events", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x23191EAE0](v5, -1, -1);
    MEMORY[0x23191EAE0](v4, -1, -1);

    (*(v10 + 8))(v20, v11);
  }

  else
  {
    v15 = *(v0 + 1312);
    v16 = *(v0 + 1240);
    v17 = *(v0 + 1232);
    swift_bridgeObjectRelease_n();

    (*(v16 + 8))(v15, v17);
  }

  *(v0 + 1860) = 39;
  v18 = swift_task_alloc();
  *(v0 + 1320) = v18;
  *v18 = v0;
  v18[1] = sub_230D83738;

  return static RequestContext.from(_:correlationID:)(v0 + 520, (v0 + 1860), 0, 0);
}

uint64_t sub_230D83738()
{
  v1 = *(*v0 + 1200);

  return MEMORY[0x2822009F8](sub_230D83874, v1, 0);
}

uint64_t sub_230D83874()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 528);
  v3 = *(v0 + 536);
  *(v0 + 1328) = v3;
  v4 = *(v0 + 544);
  v5 = *(v0 + 545);
  v6 = *(v0 + 552);
  *(v0 + 1336) = v6;
  *(v0 + 400) = v1;
  *(v0 + 408) = v2;
  *(v0 + 416) = v3;
  *(v0 + 424) = v4;
  *(v0 + 425) = v5;
  *(v0 + 432) = v6;

  v7 = swift_task_alloc();
  *(v0 + 1344) = v7;
  *v7 = v0;
  v7[1] = sub_230D83990;
  v8 = *(v0 + 1200);

  return sub_230D6F7D0(39, v0 + 400, v8, v8);
}

uint64_t sub_230D83990(uint64_t a1)
{
  v3 = *v2;
  v3[169] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[150];

    return MEMORY[0x2822009F8](sub_230D83BE0, v6, 0);
  }
}

uint64_t sub_230D83BE0()
{
  v1 = *(v0 + 1184);
  *(v0 + 1168) = MEMORY[0x277D84FA0];
  *(v0 + 1360) = *(v1 + 16);
  *(v0 + 1861) = 40;
  v2 = swift_task_alloc();
  *(v0 + 1368) = v2;
  *v2 = v0;
  v2[1] = sub_230D83CD0;

  return static RequestContext.from(_:correlationID:)(v0 + 440, (v0 + 1861), 0, 0);
}

uint64_t sub_230D83CD0()
{

  return MEMORY[0x2822009F8](sub_230D83DF8, 0, 0);
}

uint64_t sub_230D83DF8()
{
  v1 = *(v0 + 440);
  *(v0 + 1865) = v1;
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 1376) = v2;
  *(v0 + 1384) = v3;
  v4 = *(v0 + 464);
  *(v0 + 1866) = v4;
  v5 = *(v0 + 465);
  *(v0 + 1867) = v5;
  v6 = *(v0 + 472);
  *(v0 + 1392) = v6;
  *(v0 + 480) = v1;
  *(v0 + 488) = v2;
  *(v0 + 496) = v3;
  *(v0 + 504) = v4;
  *(v0 + 505) = v5;
  *(v0 + 512) = v6;
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v7 = qword_27DB5A438;
  *(v0 + 1400) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230D83F2C, v7, 0);
}

uint64_t sub_230D83F2C()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1384);
    v4 = *(v0 + 1376);
    v5 = *(v0 + 1865);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v28);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(v4, v3, v28);
    *(v6 + 22) = 2080;
    v26 = 0x6C616E7265746E69;
    v27 = 0xE90000000000002ELL;
    v25 = v5;
    v8 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v8);

    v9 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v28);

    *(v6 + 24) = v9;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 1392);
  v11 = *(v0 + 1867);
  v12 = *(v0 + 1865);
  LOBYTE(v26) = *(v0 + 1866);
  BYTE1(v26) = v11;
  v27 = v10;
  v25 = 40;
  LOBYTE(v28[0]) = v12;

  v13 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v25, v28);

  if (v13)
  {
    sub_230E68950();
    *(v0 + 1408) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1480) = 0u;
    *(v0 + 1496) = 0u;
    *(v0 + 1512) = 0u;
    *(v0 + 1528) = 0u;
    *(v0 + 1544) = 0u;
    *(v0 + 1560) = 0u;
    *(v0 + 1576) = 0u;
    *(v0 + 1592) = 0u;
    *(v0 + 1608) = 0u;
    *(v0 + 1624) = 0u;
    *(v0 + 1640) = 0u;
    *(v0 + 1656) = 0u;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 0u;
    *(v0 + 1720) = 0u;
    *(v0 + 1736) = 0u;
    *(v0 + 1752) = 0u;
    *(v0 + 1768) = 0u;
    *(v0 + 1784) = 0u;
    *(v0 + 1800) = 0u;
    *(v0 + 1816) = 0u;
    *(v0 + 1832) = 0u;
    *(v0 + 1848) = 0;
    *(v0 + 1852) = 93;
    v14 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1480), (v0 + 1852));
    *(v0 + 1856) = v14;
    v15 = 0.0;
    if (!v14)
    {
      v16 = *(v0 + 1528);
      v17 = *(v0 + 1600);
      v18 = __CFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        __break(1u);
      }

      v15 = vcvtd_n_f64_u64(v19, 0x14uLL);
    }

    *(v0 + 1432) = v15;
    *(v0 + 1160) = 0;
    v20 = swift_task_alloc();
    *(v0 + 1440) = v20;
    *v20 = v0;
    v21 = sub_230D84470;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 1416) = v20;
    *v20 = v0;
    v21 = sub_230D84318;
  }

  v20[1] = v21;
  v22 = *(v0 + 1352);
  v23 = *(v0 + 1862);

  return sub_230E41A9C(v0 + 256, v23, v22, v0 + 480);
}

uint64_t sub_230D84318()
{
  v2 = *v1;
  *(*v1 + 1424) = v0;

  v3 = *(v2 + 1400);
  if (v0)
  {
    v4 = sub_230D86570;
  }

  else
  {
    v4 = sub_230D86480;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D84470()
{
  v2 = *v1;
  *(*v1 + 1448) = v0;

  v3 = *(v2 + 1400);
  if (v0)
  {
    v4 = sub_230D846EC;
  }

  else
  {
    v4 = sub_230D845C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D845C8()
{
  v1 = *(v0 + 1304);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1232);
  sub_230D340D4(40, *(v0 + 1432), *(v0 + 1856) != 0, v0 + 480, (v0 + 1160), *(v0 + 1408));
  v4 = *(v2 + 8);
  v4(v1, v3);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = *(v0 + 1448);
  *(v0 + 1464) = v4;
  *(v0 + 1456) = v5;
  v6 = *(v0 + 1200);

  return MEMORY[0x2822009F8](sub_230D8484C, v6, 0);
}

uint64_t sub_230D846EC(uint64_t a1)
{
  v2 = *(v1 + 1448);
  v3 = *(v1 + 1432);
  v4 = *(v1 + 1408);
  v5 = *(v1 + 1304);
  v6 = *(v1 + 1240);
  v7 = *(v1 + 1232);
  v8 = *(v1 + 1856) != 0;
  *(v1 + 1160) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D340D4(40, v3, v8, v1 + 480, (v1 + 1160), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v1 + 1472) = *(v1 + 1448);
  v10 = *(v1 + 1200);

  return MEMORY[0x2822009F8](sub_230D90274, v10, 0);
}

uint64_t sub_230D8484C()
{
  v246 = v0;
  v245 = *MEMORY[0x277D85DE8];
  if (!*(v0 + 264))
  {
    v9 = *(v0 + 1862);
    sub_230D8FDD0();
    swift_allocError();
    *v10 = v9;
    swift_willThrow();
LABEL_9:

    v13 = *(v0 + 8);
LABEL_10:

    return v13();
  }

  v230 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 1456);
  sub_230DCB5D4(&v239);
  if (v6)
  {
    MEMORY[0x23191E910](v6);
    v7 = v1;
    v8 = v230;
LABEL_8:
    sub_230D8FE24(v7, v8, v2, v3, v5, v4);
    v11 = *(v0 + 1862) | 0x40;
    sub_230D8FDD0();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    goto LABEL_9;
  }

  if (!sub_230D829F0(v239, v230))
  {
    v7 = v1;
    v8 = v230;
    goto LABEL_8;
  }

  sub_230DCB5D4(&v239);
  v212 = v239;
  v234 = v1;
  if (*(v0 + 1192))
  {
    v15 = *(v0 + 1192);
  }

  else
  {
    v16 = sub_230E69030();
    v17 = sub_230E69030();
    v15 = [objc_opt_self() bagForProfile:v16 profileVersion:v17];
  }

  swift_unknownObjectRetain();
  v207 = v4;
  v208 = sub_230D8FE88(v15);
  v18 = *(v0 + 1360);
  swift_unknownObjectRelease();
  v231 = v5;
  if (!v18)
  {
    v209 = 0;
    v19 = *(v0 + 1360);
LABEL_171:
    v205 = *(v0 + 1176);

    sub_230D8FE24(v234, v230, v2, v3, v231, v207);

    v206 = *(v0 + 1168);
    *v205 = v19;
    v205[1] = v209;
    v205[2] = v206;

    v13 = *(v0 + 8);
    goto LABEL_10;
  }

  v209 = 0;
  v19 = 0;
  v219 = (v0 + 560);
  v210 = (*(v0 + 1216) + 8);
  v211 = *(v0 + 1184) + 32;
  v232 = v3;
  v233 = v2;
  while (1)
  {
    v20 = (v211 + 56 * v19);
    v21 = v20[1];
    v22 = v20[3];
    v23 = v20[4];
    v24 = v20[5];
    v217 = *v20;
    v218 = v20[6];
    v215 = v19;
    v216 = v20[2];
    if (*(v0 + 1862))
    {
      v25 = sub_230E698C0();

      if ((v25 & 1) == 0)
      {
        v26 = v216;

        v220 = v21;
        v222 = v216;
        goto LABEL_49;
      }
    }

    else
    {
    }

    v239 = 0;
    v240 = 0xE000000000000000;
    if (v212 > 4)
    {
      v31 = 0x65676175676E616CLL;
      if (v212 != 8)
      {
        v31 = 0x7974697275636573;
      }

      v32 = 0xE800000000000000;
      if (v212 == 7)
      {
        v31 = 0x6E6F6D6D6F63;
        v32 = 0xE600000000000000;
      }

      v33 = 0x7374736163646F70;
      if (v212 != 5)
      {
        v33 = 0x6F65646976;
      }

      v34 = 0xE500000000000000;
      if (v212 == 5)
      {
        v34 = 0xE800000000000000;
      }

      v29 = v212 <= 6 ? v33 : v31;
      v30 = v212 <= 6 ? v34 : v32;
    }

    else if (v212 <= 1)
    {
      if (v212)
      {
        v30 = 0xE400000000000000;
        v29 = 1936748641;
      }

      else
      {
        v30 = 0xE800000000000000;
        v29 = 0x6C616E7265746E69;
      }
    }

    else
    {
      v27 = 0x7373656E746966;
      if (v212 != 3)
      {
        v27 = 0x636973756DLL;
      }

      v28 = 0xE700000000000000;
      if (v212 != 3)
      {
        v28 = 0xE500000000000000;
      }

      v29 = v212 == 2 ? 0x736B6F6F62 : v27;
      v30 = v212 == 2 ? 0xE500000000000000 : v28;
    }

    MEMORY[0x23191DA00](v29, v30);

    MEMORY[0x23191DA00](46, 0xE100000000000000);
    v26 = v216;

    MEMORY[0x23191DA00](v21, v216);

    v220 = v239;
    v222 = v240;
LABEL_49:
    v35 = *(v0 + 1224);
    v36 = *(v0 + 1208);
    v224 = sub_230D0E264(MEMORY[0x277D84F90]);
    v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD58, &qword_230E73518);
    v37 = swift_allocObject();
    v239 = v37;
    v37[2] = v217;
    v37[3] = v21;
    v37[4] = v26;
    v37[5] = v22;
    v37[6] = v23;
    v37[7] = v24;
    v37[8] = v218;

    sub_230E699E0();
    sub_230E699F0();
    (*v210)(v35, v36);
    sub_230E695E0();

    sub_230E69660();
    v38 = *(v0 + 384);
    *(v0 + 176) = *(v0 + 368);
    *(v0 + 192) = v38;
    *(v0 + 160) = *(v0 + 352);
    if (*(v0 + 200))
    {
      v39 = v231;
      while (1)
      {
        v41 = *(v0 + 160);
        v40 = *(v0 + 168);
        sub_230D0E394((v0 + 176), (v0 + 936));
        if (!v40)
        {
          break;
        }

        sub_230E68D70();
        sub_230D82664(v0 + 936, v0 + 968);

        v42 = sub_230E68D60();
        v43 = sub_230E693F0();

        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v0 + 1464);
        v46 = *(v0 + 1296);
        v47 = *(v0 + 1232);
        if (v44)
        {
          v236 = v41;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v239 = v49;
          *v48 = 136315394;
          *(v48 + 4) = sub_230D7E620(v236, v40, &v239);
          *(v48 + 12) = 2080;
          sub_230D82664(v0 + 968, v0 + 744);
          v50 = sub_230E690C0();
          v226 = v45;
          v51 = v40;
          v53 = v52;
          __swift_destroy_boxed_opaque_existential_1((v0 + 968));
          v54 = sub_230D7E620(v50, v53, &v239);
          v40 = v51;

          *(v48 + 14) = v54;
          v39 = v231;
          _os_log_impl(&dword_230D02000, v42, v43, "[ServicesIntelligenceProvider][logMetrics] processing event with label: %s and value: %s", v48, 0x16u);
          swift_arrayDestroy();
          v55 = v49;
          v3 = v232;
          MEMORY[0x23191EAE0](v55, -1, -1);
          v56 = v48;
          v41 = v236;
          MEMORY[0x23191EAE0](v56, -1, -1);

          v226(v46, v47);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1((v0 + 968));
          v45(v46, v47);
        }

        v2 = v233;
        if (!*(v3 + 16) || (v63 = sub_230DA41A0(v41, v40), (v64 & 1) == 0))
        {
          sub_230E68D70();

          v68 = sub_230E68D60();
          v69 = sub_230E693E0();

          v70 = os_log_type_enabled(v68, v69);
          v71 = *(v0 + 1464);
          v72 = *(v0 + 1280);
          v73 = *(v0 + 1232);
          if (v70)
          {
            v74 = v40;
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v239 = v76;
            *v75 = 136315138;
            *(v75 + 4) = sub_230D7E620(v41, v74, &v239);
            _os_log_impl(&dword_230D02000, v68, v69, "[ServicesIntelligenceProvider][logMetrics] Field %s not found in schema, omitting", v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v76);
            v77 = v76;
            v2 = v233;
            MEMORY[0x23191EAE0](v77, -1, -1);
            v78 = v75;
            v40 = v74;
            v3 = v232;
            MEMORY[0x23191EAE0](v78, -1, -1);
          }

          v71(v72, v73);
          v39 = v231;
          sub_230D8F4B0(&v239, v41, v40);

LABEL_67:
          v79 = (v0 + 936);
          goto LABEL_68;
        }

        v65 = (*(v3 + 56) + 16 * v63);
        v66 = *v65;
        v67 = v65[1];
        if (v41 == 0x707954746E657665 && v40 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
        {
          *(v0 + 1024) = MEMORY[0x277D837D0];
          *(v0 + 1000) = v220;
          *(v0 + 1008) = v222;
        }

        else
        {
          sub_230D82664(v0 + 936, v0 + 1000);
        }

        if (*(v0 + 1863) == 1)
        {
          sub_230D8D4F8((v0 + 1000), (v0 + 1128));
          sub_230D0E394((v0 + 1128), (v0 + 680));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v239 = v224;
          v114 = sub_230DA41A0(v41, v40);
          v116 = *(v224 + 16);
          v117 = (v115 & 1) == 0;
          v118 = __OFADD__(v116, v117);
          v119 = v116 + v117;
          if (v118)
          {
            goto LABEL_178;
          }

          v120 = v115;
          if (*(v224 + 24) < v119)
          {
            sub_230DB7074(v119, isUniquelyReferenced_nonNull_native);
            v114 = sub_230DA41A0(v41, v40);
            if ((v120 & 1) != (v121 & 1))
            {
              goto LABEL_174;
            }

LABEL_98:
            v122 = v40;
            v80 = v234;
            if (v120)
            {
              goto LABEL_99;
            }

LABEL_109:
            v137 = v239;
            v239[(v114 >> 6) + 8] |= 1 << v114;
            v138 = (v137[6] + 16 * v114);
            *v138 = v41;
            v138[1] = v122;
            sub_230D0E394((v0 + 680), (v137[7] + 32 * v114));
            __swift_destroy_boxed_opaque_existential_1((v0 + 936));
            v139 = v137[2];
            v118 = __OFADD__(v139, 1);
            v140 = v139 + 1;
            if (v118)
            {
              goto LABEL_179;
            }

LABEL_114:
            v224 = v137;
            v137[2] = v140;
LABEL_115:
            __swift_destroy_boxed_opaque_existential_1((v0 + 1000));
            goto LABEL_70;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_98;
          }

          v122 = v40;
          v136 = v114;
          sub_230DBA17C();
          v114 = v136;
          v80 = v234;
          if ((v120 & 1) == 0)
          {
            goto LABEL_109;
          }

LABEL_99:
          v123 = v114;

          v224 = v239;
          v124 = (v239[7] + 32 * v123);
          __swift_destroy_boxed_opaque_existential_1(v124);
          v125 = (v0 + 680);
LABEL_107:
          sub_230D0E394(v125, v124);
          __swift_destroy_boxed_opaque_existential_1((v0 + 936));
          goto LABEL_115;
        }

        v237 = v41;

        v82 = sub_230E69680();
        if (v82 >= 5)
        {
          sub_230E68D70();

          v92 = sub_230E68D60();
          v93 = sub_230E693E0();

          v94 = os_log_type_enabled(v92, v93);
          v95 = *(v0 + 1464);
          v96 = *(v0 + 1264);
          v97 = *(v0 + 1232);
          if (v94)
          {
            v98 = swift_slowAlloc();
            v227 = v95;
            v99 = v40;
            v100 = swift_slowAlloc();
            v239 = v100;
            *v98 = 136315394;
            v101 = sub_230D7E620(v66, v67, &v239);

            *(v98 + 4) = v101;
            *(v98 + 12) = 2080;
            v102 = v237;
            *(v98 + 14) = sub_230D7E620(v237, v99, &v239);
            _os_log_impl(&dword_230D02000, v92, v93, "[ServicesIntelligenceProvider][logMetrics] Unknown type %s in schema for field %s, omitting", v98, 0x16u);
            swift_arrayDestroy();
            v103 = v100;
            v40 = v99;
            MEMORY[0x23191EAE0](v103, -1, -1);
            v104 = v98;
            v39 = v231;
            MEMORY[0x23191EAE0](v104, -1, -1);

            v227(v96, v97);
          }

          else
          {

            v95(v96, v97);
            v102 = v237;
          }

          sub_230D8F4B0(&v239, v102, v40);

          __swift_destroy_boxed_opaque_existential_1((v0 + 936));
          __swift_destroy_boxed_opaque_existential_1((v0 + 1000));
          v3 = v232;
          v2 = v233;
          goto LABEL_69;
        }

        v83 = v82;

        if (sub_230D8E084(v0 + 1000, v83))
        {
          sub_230D8D4F8((v0 + 1000), (v0 + 1096));
          v126 = swift_isUniquelyReferenced_nonNull_native();
          v239 = v224;
          v127 = sub_230DA41A0(v237, v40);
          v129 = *(v224 + 16);
          v130 = (v128 & 1) == 0;
          v118 = __OFADD__(v129, v130);
          v131 = v129 + v130;
          if (v118)
          {
            goto LABEL_180;
          }

          v132 = v128;
          if (*(v224 + 24) >= v131)
          {
            if (v126)
            {
              goto LABEL_105;
            }

            v134 = v40;
            v141 = v127;
            sub_230DBA17C();
            v127 = v141;
            v80 = v234;
            if (v132)
            {
LABEL_106:
              v135 = v127;

              v224 = v239;
              v124 = (v239[7] + 32 * v135);
              __swift_destroy_boxed_opaque_existential_1(v124);
              v125 = (v0 + 1096);
              goto LABEL_107;
            }
          }

          else
          {
            sub_230DB7074(v131, v126);
            v127 = sub_230DA41A0(v237, v40);
            if ((v132 & 1) != (v133 & 1))
            {
              goto LABEL_174;
            }

LABEL_105:
            v134 = v40;
            v80 = v234;
            if (v132)
            {
              goto LABEL_106;
            }
          }

          v137 = v239;
          v239[(v127 >> 6) + 8] |= 1 << v127;
          v142 = (v137[6] + 16 * v127);
          *v142 = v237;
          v142[1] = v134;
          sub_230D0E394((v0 + 1096), (v137[7] + 32 * v127));
          __swift_destroy_boxed_opaque_existential_1((v0 + 936));
          v143 = v137[2];
          v118 = __OFADD__(v143, 1);
          v140 = v143 + 1;
          if (v118)
          {
            goto LABEL_181;
          }

          goto LABEL_114;
        }

        sub_230E68D70();
        sub_230D82664(v0 + 1000, v0 + 1032);

        v84 = sub_230E68D60();
        v85 = sub_230E693E0();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v239 = v87;
          *v86 = 136315650;
          *(v86 + 4) = sub_230D7E620(v237, v40, &v239);
          *(v86 + 12) = 2080;
          v88 = v83;
          v89 = v40;
          if (v88 <= 1)
          {
            v90 = 0xE600000000000000;
            if (v88)
            {
              v91 = 0x7265626D756ELL;
            }

            else
            {
              v91 = 0x676E69727473;
            }
          }

          else if (v88 == 2)
          {
            v90 = 0xE400000000000000;
            v91 = 1819242338;
          }

          else if (v88 == 3)
          {
            v90 = 0xEA00000000007972;
            v91 = 0x616E6F6974636964;
          }

          else
          {
            v90 = 0xE500000000000000;
            v91 = 0x7961727261;
          }

          v228 = *(v0 + 1464);
          v213 = *(v0 + 1232);
          v214 = *(v0 + 1272);
          v108 = sub_230D7E620(v91, v90, &v239);

          *(v86 + 14) = v108;
          *(v86 + 22) = 2080;
          sub_230D82664(v0 + 1032, v0 + 1064);
          v109 = sub_230E690C0();
          v111 = v110;
          __swift_destroy_boxed_opaque_existential_1((v0 + 1032));
          v112 = sub_230D7E620(v109, v111, &v239);

          *(v86 + 24) = v112;
          _os_log_impl(&dword_230D02000, v84, v85, "[ServicesIntelligenceProvider][logMetrics] Field %s type mismatch. Expected: %s, got: %s", v86, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23191EAE0](v87, -1, -1);
          MEMORY[0x23191EAE0](v86, -1, -1);

          v228(v214, v213);
          v39 = v231;
          v2 = v233;
        }

        else
        {
          v89 = v40;
          v105 = *(v0 + 1464);
          v106 = *(v0 + 1272);
          v107 = *(v0 + 1232);

          __swift_destroy_boxed_opaque_existential_1((v0 + 1032));
          v105(v106, v107);
        }

        sub_230D8F4B0(&v239, v237, v89);

        __swift_destroy_boxed_opaque_existential_1((v0 + 936));
        v79 = (v0 + 1000);
LABEL_68:
        __swift_destroy_boxed_opaque_existential_1(v79);
LABEL_69:
        v80 = v234;
LABEL_70:
        sub_230E69660();
        v81 = *(v0 + 384);
        *(v0 + 176) = *(v0 + 368);
        *(v0 + 192) = v81;
        *(v0 + 160) = *(v0 + 352);
        if (!*(v0 + 200))
        {
          goto LABEL_117;
        }
      }

      sub_230E68D70();
      v57 = sub_230E68D60();
      v58 = sub_230E69400();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_230D02000, v57, v58, "[ServicesIntelligenceProvider][logMetrics] property without label.", v59, 2u);
        MEMORY[0x23191EAE0](v59, -1, -1);
      }

      v60 = *(v0 + 1464);
      v61 = *(v0 + 1288);
      v62 = *(v0 + 1232);

      v60(v61, v62);
      goto LABEL_67;
    }

    v39 = v231;
    v80 = v234;
LABEL_117:

    if (*(v224 + 16))
    {
      break;
    }

    sub_230E68D70();
    v144 = sub_230E68D60();
    v145 = sub_230E693E0();
    v146 = os_log_type_enabled(v144, v145);
    v147 = *(v0 + 1464);
    v148 = *(v0 + 1256);
    v149 = *(v0 + 1232);
    if (v146)
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_230D02000, v144, v145, "[ServicesIntelligenceProvider][logMetrics] No valid fields for event, skipping", v150, 2u);
      MEMORY[0x23191EAE0](v150, -1, -1);
    }

    else
    {
    }

    v147(v148, v149);
LABEL_163:
    v2 = v233;
LABEL_164:
    v19 = v215 + 1;
    if (v215 + 1 == *(v0 + 1360))
    {
      goto LABEL_171;
    }
  }

  if ((*(v0 + 1864) & 1) == 0)
  {
    LOBYTE(v239) = v80;
    v240 = v230;
    v241 = v2;
    v242 = v3;
    v243 = v39;
    v244 = v207;
    if (!sub_230D6BFA8(v220, v222))
    {

      goto LABEL_164;
    }
  }

  v151 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v152 = sub_230E69030();

  v153 = [v151 initWithTopic_];

  v154 = sub_230E69030();

  [v153 setEventType_];

  v229 = v153;
  [v153 setAnonymous_];
  v155 = 0;
  v156 = -1 << *(v224 + 32);
  if (-v156 < 64)
  {
    v157 = ~(-1 << -v156);
  }

  else
  {
    v157 = -1;
  }

  v158 = v157 & *(v224 + 64);
  v159 = (63 - v156) >> 6;
  if (v158)
  {
    while (1)
    {
      v160 = v155;
LABEL_137:
      v163 = __clz(__rbit64(v158));
      v158 &= v158 - 1;
      v164 = v163 | (v160 << 6);
      v165 = (*(v224 + 48) + 16 * v164);
      v167 = *v165;
      v166 = v165[1];
      sub_230D82664(*(v224 + 56) + 32 * v164, v0 + 712);
      *(v0 + 208) = v167;
      *(v0 + 216) = v166;
      sub_230D0E394((v0 + 712), (v0 + 224));

      v162 = v160;
LABEL_138:
      v168 = *(v0 + 224);
      *(v0 + 304) = *(v0 + 208);
      *(v0 + 320) = v168;
      *(v0 + 336) = *(v0 + 240);
      if (!*(v0 + 312))
      {
        break;
      }

      sub_230D0E394((v0 + 320), (v0 + 904));
      __swift_project_boxed_opaque_existential_1((v0 + 904), *(v0 + 928));
      v169 = sub_230E698B0();
      __swift_destroy_boxed_opaque_existential_1((v0 + 904));
      v170 = sub_230E69030();

      [v229 setProperty:v169 forBodyKey:v170];

      swift_unknownObjectRelease();
      v155 = v162;
      if (!v158)
      {
        goto LABEL_130;
      }
    }

    v171 = [v229 dictionaryForPosting];
    v172 = sub_230E68F50();

    v173 = 0;
    v175 = v172 + 64;
    v174 = *(v172 + 64);
    v221 = v172;
    v176 = -1 << *(v172 + 32);
    if (-v176 < 64)
    {
      v177 = ~(-1 << -v176);
    }

    else
    {
      v177 = -1;
    }

    v178 = v177 & v174;
    v179 = (63 - v176) >> 6;
    v180 = v0 + 600;
    if ((v177 & v174) == 0)
    {
LABEL_149:
      if (v179 <= v173 + 1)
      {
        v182 = v173 + 1;
      }

      else
      {
        v182 = v179;
      }

      v183 = v182 - 1;
      while (1)
      {
        v181 = v173 + 1;
        if (__OFADD__(v173, 1))
        {
          goto LABEL_173;
        }

        if (v181 >= v179)
        {
          break;
        }

        v178 = *(v175 + 8 * v181);
        ++v173;
        if (v178)
        {
          goto LABEL_156;
        }
      }

      v178 = 0;
      *(v0 + 80) = 0;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      goto LABEL_157;
    }

    while (1)
    {
      v181 = v173;
LABEL_156:
      v184 = __clz(__rbit64(v178));
      v178 &= v178 - 1;
      v185 = v184 | (v181 << 6);
      sub_230D8FF88(*(v221 + 48) + 40 * v185, v219);
      sub_230D82664(*(v221 + 56) + 32 * v185, v0 + 776);
      v186 = *(v0 + 576);
      *(v0 + 16) = *v219;
      *(v0 + 32) = v186;
      *(v0 + 48) = *(v0 + 592);
      sub_230D0E394((v0 + 776), (v0 + 56));
      v183 = v181;
      v180 = v0 + 600;
LABEL_157:
      *(v0 + 152) = *(v0 + 80);
      v187 = *(v0 + 48);
      *(v0 + 136) = *(v0 + 64);
      *(v0 + 120) = v187;
      v188 = *(v0 + 16);
      *(v0 + 104) = *(v0 + 32);
      *(v0 + 88) = v188;
      if (!*(v0 + 112))
      {
        break;
      }

      v189 = *(v0 + 104);
      *v180 = *(v0 + 88);
      *(v180 + 16) = v189;
      *(v180 + 32) = *(v0 + 120);
      sub_230D0E394((v0 + 128), (v0 + 808));
      sub_230E68D70();
      sub_230D8FF88(v180, v0 + 640);
      sub_230D82664(v0 + 808, v0 + 840);
      v190 = sub_230E68D60();
      v191 = sub_230E693E0();
      v192 = os_log_type_enabled(v190, v191);
      v193 = *(v0 + 1464);
      v235 = *(v0 + 1232);
      v238 = *(v0 + 1248);
      if (v192)
      {
        v225 = v183;
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v239 = v195;
        *v194 = 136315394;
        v223 = v193;
        v196 = sub_230E694F0();
        v198 = v197;
        sub_230D8FFE4(v0 + 640);
        v199 = sub_230D7E620(v196, v198, &v239);

        *(v194 + 4) = v199;
        *(v194 + 12) = 2080;
        sub_230D82664(v0 + 840, v0 + 872);
        v200 = sub_230E690C0();
        v202 = v201;
        __swift_destroy_boxed_opaque_existential_1((v0 + 840));
        v203 = sub_230D7E620(v200, v202, &v239);
        v180 = v0 + 600;

        *(v194 + 14) = v203;
        _os_log_impl(&dword_230D02000, v190, v191, "[ServicesIntelligenceProvider] Field: %s = %s", v194, 0x16u);
        swift_arrayDestroy();
        v204 = v195;
        v3 = v232;
        MEMORY[0x23191EAE0](v204, -1, -1);
        MEMORY[0x23191EAE0](v194, -1, -1);

        v223(v238, v235);
        __swift_destroy_boxed_opaque_existential_1((v0 + 808));
        sub_230D8FFE4(v0 + 600);
        v173 = v225;
        if (!v178)
        {
          goto LABEL_149;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1((v0 + 840));
        sub_230D8FFE4(v0 + 640);
        v193(v238, v235);
        __swift_destroy_boxed_opaque_existential_1((v0 + 808));
        sub_230D8FFE4(v180);
        v173 = v183;
        if (!v178)
        {
          goto LABEL_149;
        }
      }
    }

    [v208 enqueueEvent_];

    v118 = __OFADD__(v209++, 1);
    if (v118)
    {
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
    }

    goto LABEL_163;
  }

LABEL_130:
  if (v159 <= v155 + 1)
  {
    v161 = v155 + 1;
  }

  else
  {
    v161 = v159;
  }

  v162 = v161 - 1;
  while (1)
  {
    v160 = v155 + 1;
    if (__OFADD__(v155, 1))
    {
      break;
    }

    if (v160 >= v159)
    {
      v158 = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 208) = 0u;
      goto LABEL_138;
    }

    v158 = *(v224 + 64 + 8 * v160);
    ++v155;
    if (v158)
    {
      goto LABEL_137;
    }
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:

  return sub_230E69950();
}

uint64_t sub_230D86480()
{
  v1 = *(v0[155] + 8);
  v1(v0[163], v0[154]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v2 = v0[178];
  v0[183] = v1;
  v0[182] = v2;
  v3 = v0[150];

  return MEMORY[0x2822009F8](sub_230D8484C, v3, 0);
}

uint64_t sub_230D86570()
{
  (*(v0[155] + 8))(v0[163], v0[154]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[184] = v0[178];
  v1 = v0[150];

  return MEMORY[0x2822009F8](sub_230D90274, v1, 0);
}

uint64_t sub_230D86654(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v7 + 1200) = v6;
  *(v7 + 1192) = a6;
  *(v7 + 1864) = a5;
  *(v7 + 1863) = a4;
  *(v7 + 1184) = a3;
  *(v7 + 1862) = a2;
  *(v7 + 1176) = a1;
  v8 = sub_230E69A00();
  *(v7 + 1208) = v8;
  *(v7 + 1216) = *(v8 - 8);
  *(v7 + 1224) = swift_task_alloc();
  v9 = sub_230E68D80();
  *(v7 + 1232) = v9;
  *(v7 + 1240) = *(v9 - 8);
  *(v7 + 1248) = swift_task_alloc();
  *(v7 + 1256) = swift_task_alloc();
  *(v7 + 1264) = swift_task_alloc();
  *(v7 + 1272) = swift_task_alloc();
  *(v7 + 1280) = swift_task_alloc();
  *(v7 + 1288) = swift_task_alloc();
  *(v7 + 1296) = swift_task_alloc();
  *(v7 + 1304) = swift_task_alloc();
  *(v7 + 1312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D8681C, v6, 0);
}

uint64_t sub_230D8681C()
{
  v22 = v0;
  v21[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  v1 = sub_230E68D60();
  v2 = sub_230E693F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1862);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315394;
    v6 = 0x8000000230E802F0;
    v7 = 0xD00000000000001FLL;
    if (v3 != 1)
    {
      v7 = 0xD000000000000012;
      v6 = 0x8000000230E80310;
    }

    if (v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x6F5F706D615F7078;
    }

    if (v3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEE00676F6C5F7064;
    }

    v20 = *(v0 + 1312);
    v10 = *(v0 + 1240);
    v11 = *(v0 + 1232);
    v12 = *(v0 + 1184);
    v13 = sub_230D7E620(v8, v9, v21);

    *(v4 + 4) = v13;
    *(v4 + 12) = 2048;
    v14 = *(v12 + 16);

    *(v4 + 14) = v14;

    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][logMetrics] Starting with topic: %s and %ld events", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x23191EAE0](v5, -1, -1);
    MEMORY[0x23191EAE0](v4, -1, -1);

    (*(v10 + 8))(v20, v11);
  }

  else
  {
    v15 = *(v0 + 1312);
    v16 = *(v0 + 1240);
    v17 = *(v0 + 1232);
    swift_bridgeObjectRelease_n();

    (*(v16 + 8))(v15, v17);
  }

  *(v0 + 1860) = 39;
  v18 = swift_task_alloc();
  *(v0 + 1320) = v18;
  *v18 = v0;
  v18[1] = sub_230D86B00;

  return static RequestContext.from(_:correlationID:)(v0 + 520, (v0 + 1860), 0, 0);
}

uint64_t sub_230D86B00()
{
  v1 = *(*v0 + 1200);

  return MEMORY[0x2822009F8](sub_230D86C3C, v1, 0);
}

uint64_t sub_230D86C3C()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 528);
  v3 = *(v0 + 536);
  *(v0 + 1328) = v3;
  v4 = *(v0 + 544);
  v5 = *(v0 + 545);
  v6 = *(v0 + 552);
  *(v0 + 1336) = v6;
  *(v0 + 400) = v1;
  *(v0 + 408) = v2;
  *(v0 + 416) = v3;
  *(v0 + 424) = v4;
  *(v0 + 425) = v5;
  *(v0 + 432) = v6;

  v7 = swift_task_alloc();
  *(v0 + 1344) = v7;
  *v7 = v0;
  v7[1] = sub_230D86D58;
  v8 = *(v0 + 1200);

  return sub_230D6F7D0(39, v0 + 400, v8, v8);
}

uint64_t sub_230D86D58(uint64_t a1)
{
  v3 = *v2;
  v3[169] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[150];

    return MEMORY[0x2822009F8](sub_230D86FA8, v6, 0);
  }
}